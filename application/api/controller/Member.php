<?php

// +----------------------------------------------------------------------
// | ThinkAdmin
// +----------------------------------------------------------------------
// | 版权所有 2014~2017 广州楚才信息科技有限公司 [ http://www.cuci.cc ]
// +----------------------------------------------------------------------
// | 官方网站: http://think.ctolog.com
// +----------------------------------------------------------------------
// | 开源协议 ( https://mit-license.org )
// +----------------------------------------------------------------------
// | github开源项目：https://github.com/zoujingli/ThinkAdmin
// +----------------------------------------------------------------------

namespace app\api\controller;

use controller\BasicApi;
use service\DataService;
use service\FileService;
use think\Db;
use think\db\Where;
use service\HxService;
use service\SmsService;

/**
 * 通知公告 控制器
 * Class Member
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Member extends BasicApi
{
    public function __construct(){
        parent::__construct();
        $this->hx = new HxService();
        $this->table = 'Member';
        $this->member = model('common/Member');
        $this->product = model('common/Product');
        $this->brand = model('common/Brand');
        $this->machine = model('common/Machine');
        $this->memberMessage = model('common/MemberMessage');
        $this->memberCollection = model('common/MemberCollection');
        $this->SmsLog = model('common/SmsLog');
        $param = $this->request->param();
        $this->page = isset($param['page']) ? $param['page'] : 1;
        $this->size = isset($param['size']) ? $param['size'] : 10;
        // halt($param);
    }

    //列表
    public function index()
    {
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        if(empty($param['uid'])){
            $this->error('用户参数错误');
        }
        foreach (['username', 'nickname', 'role', 'phone'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                if($key == 'role'){
                    $map[$key] = $param[$key];
                    if($param[$key] == 1){
                        $map['id'] = ['neq', $param['uid']];
                    }
                }else{
                    $map[$key] = ['like', "%{$param[$key]}%"];
                }
            }
        }
        $map = new Where($map);
        $list = $this->member->getNewPageLists($map, 'id desc', 'id,username,nickname,role,phone,status,avatar', $this->page, $this->size);
        $list = $list ? $list : null;
        // halt($map);
        $this->success('请求成功', $list);
    }

    //用户详情
    public function info(){
        $id = input('id');
        if(!$id){
            $this->error('用户参数错误');
        }
        $map = [
            'id' => $id,
        ];
        $map = new Where($map);
        $info = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        $info = $info ? $info : null;
        // halt($map);
        $this->success('请求成功', $info);
    }

    //登录
    public function login(){
        // halt(time());
        $phone = input('phone');
        $password = input('password');
        $code = input('code');
        $role = input('role');

        if(!$phone || !is_mobile($phone)){
            $this->error('请输入正确手机号码');
        }
        if(!$password){
            $this->error('请输入密码');
        }
        if(!$code){
            $this->error('请输入验证码');
        }
        if(!$role){
            $this->error('请选择用户角色');
        }

        $map = [
            'phone' => ['eq', $phone],
        ];
        $map = new Where($map);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        if(!$mem){
            $this->error('登录账号不存在，请重新输入');            
        }
        if($mem['status'] == 1){
            $this->error('账号已经被禁用，请联系管理员');            
        }
        if($mem['role'] != $role){
            $this->error('账号角色不匹配，请重试');            
        }
        if($mem['password'] != $password){
            $this->error('登录密码错误，请重新输入');            
        }

        $codeInfo = $this->SmsLog->getOneDarry($map, 'code,create_at');
        if(!$codeInfo){
            $this->error('验证码错误');
        }
        $timeDiff = floor(time() - $codeInfo['create_at']);
        if(($timeDiff / 60) >= 60){
            $this->error('验证码已过期');
        }
        if($codeInfo['code'] != $code){
            $this->error('验证码错误');
        }
        // halt($code);

        // 更新登录信息
        $up = $this->member->where($map)->update([
            'login_at'  => Db::raw('now()'),
            'login_num' => Db::raw('login_num+1'),
        ]);
        if($up){
            $this->success('登录成功', $mem);
        }
    }

    //修改密码
    public function uppass(){
        $phone = input('phone');
        $password = input('password');
        $code = input('code');

        if(!$phone || !is_mobile($phone)){
            $this->error('请输入正确手机号码');
        }
        if(!$password){
            $this->error('请输入密码');
        }
        if(!$code){
            $this->error('请输入验证码');
        }

        $map = [
            'phone' => ['eq', $phone],
        ];
        $map = new Where($map);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        if(!$mem){
            $this->error('账号不存在，请重新输入');            
        }
        if($mem['password'] == $password){
            $this->error('新密码不能与原密码一致，请重新输入');            
        }

        $codeInfo = $this->SmsLog->getOneDarry($map, 'code,create_at');
        if(!$codeInfo){
            $this->error('验证码错误');
        }
        $timeDiff = floor(time() - $codeInfo['create_at']);
        if(($timeDiff / 60) >= 60){
            $this->error('验证码已过期');
        }
        if($codeInfo['code'] != $code){
            $this->error('验证码错误');
        }
        // halt($code);

        // 更新登录信息
        $up = $this->member->where($map)->update([
            'password'  => $password,
        ]);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        $rs = $this->hx->hx_user_update_password($mem['username'], $password);
        $ret  = json_decode($rs, true);
        if(isset($ret['error'])){
            if($ret['error'] == 'duplicate_unique_property_exists'){
                $this->error("用户已存在");
            }else{
                $this->error($ret['error']);
            }
        }
        if($up){
            $this->success('密码修改成功', $mem);
        }
    }

    //忘记密码
    public function forgetpass(){
        // $mid = input('mid');
        $phone = input('phone');
        $oldpassword = input('oldpassword');
        $password = input('password');
        $code = input('code');

        if(!$phone || !is_mobile($phone)){
            $this->error('请输入正确手机号码');
        }
        if(!$oldpassword){
            $this->error('请输入原密码');
        }
        if(!$password){
            $this->error('请输入新密码');
        }
        if(!$code){
            $this->error('请输入验证码');
        }

        $map = [
            'phone' => ['eq', $phone],
        ];
        $map = new Where($map);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        if(!$mem){
            $this->error('账号不存在，请重新输入');            
        }
        if($mem['password'] != $oldpassword){
            $this->error('原密码错误');  
        }
        if($mem['password'] == $password){
            $this->error('新密码不能与原密码一致，请重新输入');            
        }

        $codeInfo = $this->SmsLog->getOneDarry($map, 'code,create_at');
        if(!$codeInfo){
            $this->error('验证码错误');
        }
        $timeDiff = floor(time() - $codeInfo['create_at']);
        if(($timeDiff / 60) >= 60){
            $this->error('验证码已过期');
        }
        if($codeInfo['code'] != $code){
            $this->error('验证码错误');
        }
        // halt($code);

        // 更新登录信息
        $up = $this->member->where($map)->update([
            'password'  => $password,
        ]);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        $rs = $this->hx->hx_user_update_password($mem['username'], $password);
        $ret  = json_decode($rs, true);
        if(isset($ret['error'])){
            if($ret['error'] == 'duplicate_unique_property_exists'){
                $this->error("用户已存在");
            }else{
                $this->error($ret['error']);
            }
        }
        if($up){
            $this->success('密码找回成功，请重新登录', $mem);
        }
    }

    //发送验证码
    public function send_code(){
        // $send = send_sms('18208702258', '111111', '1', []);
        // $send = send_sms('18208702258', '111111');
        // halt($send);
        $phone = input('phone');
        if(!is_mobile($phone)){
            $this->error('请输入正确手机号码');
        }
        $code = create_code();
        // $send = send_sms($phone, $code);
        // halt($send);
        // $this->success('发送成功', '111111');

        $map = [
            'phone' => ['eq', $phone],
        ];
        $map = new Where($map);
        $isE = $this->SmsLog->getOneDarry($map);

        if($isE){
            if(floor(time()-intval($isE['create_at'])) <= 60){
                $this->error("一分钟内只允许发送一条短信");
            }
            $send = send_sms($phone, $code);
            if($send['code'] == 0){
                $isE['code'] = $code;
                $isE['create_at'] = time();
                $this->SmsLog->allowField(true)->isUpdate(true)->save($isE);    
                $this->success('发送成功', $code);            
            }else{
                $this->error($send['message']);
            }
        }else{
            $send = send_sms($phone, $code);
            if($send['code'] == 0){
                $data = [
                    'phone' => $phone,
                    'code' => $code,
                    'create_at' => time()
                ];
                 $this->SmsLog->insert($data);
                 $this->success('发送成功', $code);
             }else{
                $this->error($send['message']);
             }
        }
    }

    //图片上传
    public function upfile()
    {
        $file = $this->request->file('avatar');
        $uid = $this->request->param('uid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        if (!$file->checkExt(strtolower(sysconf('storage_local_exts')))) {
            $this->error('文件上传类型受限');
        }
        $names = ['avatar/'.$uid.'/'.date('Ymd'), md5(time())];
        $ext = strtolower(pathinfo($file->getInfo('name'), 4));
        $ext = $ext ? $ext : 'tmp';
        $filename = "{$names[0]}/{$names[1]}.{$ext}";
        // 文件上传处理
        if (($info = $file->move("static/upload/{$names[0]}", "{$names[1]}.{$ext}", true))) {
            if (($site_url = FileService::getFileUrl($filename, 'local'))) {
                $map = [
                    'id' => ['eq', $uid],
                ];
                $map = new Where($map);
                $up = $this->member->where($map)->update([
                    'avatar'  => $site_url,
                ]);
                $this->success('上传成功',$site_url);
            }
        }
        $this->error('上传失败');
    }

    //修改信息
    public function upinfo(){
        $param = $this->request->param();
        array_shift($param);
        if(!$param['id']){
            $this->error('用户参数错误');
        }
        // halt($param);
        // $parry = ['id', 'nickname', 'password', 'phone', 'role', 'avatar'];
        // foreach ($param as $key => $v) {
        //     if(!in_array($key, $parry)){
        //         unset($param[$key]);
        //     }
        // }
        
        $map = [
            'id' => $param['id'],
        ];
        $map = new Where($map);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        if(empty($mem['username'])){
            $this->error('用户名不能为空');
        }

        //昵称
        if(isset($param['nickname'])){
            if(empty($param['nickname'])){
                $this->error('昵称不能为空');
            }
            $rs = $this->hx->hx_user_update_nickname($mem['username'], $param['nickname']);
            $ret  = json_decode($rs, true);
            if(isset($ret['error'])){
                $this->error($ret['error']);
            }
        }

        //密码
        if(isset($param['password'])){
            if(empty($param['password'])){
                $this->error('密码不能为空');
            }
            $rs = $this->hx->hx_user_update_password($mem['username'], $param['password']);
            $ret  = json_decode($rs, true);
            if(isset($ret['error'])){
                $this->error($ret['error']);
            }
        }
        // halt($param);
        $info = $this->member->allowField(true)->isUpdate(true)->save($param);
        // halt($info);
        $this->success('请求成功', $info);
    }

    //我的收藏
    public function clist(){
        $uid = input('uid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        $map = [
            'uid' => $uid,
        ];
        $map = new Where($map);
        $list = $this->memberCollection->getNewPageLists($map, 'id desc', '', $this->page, $this->size);
        $list = $list ? $list : null;
        if($list){
            foreach ($list as $k => $v) {
                $proInfo = $this->product->getOneDarry(['id' => $v['pid']], 'title,logo,brand');
                $brandInfo = $this->brand->getOneDarry(['id' => $proInfo['brand']], 'title,logo');
                $list[$k]['title'] = $proInfo['title'];
                $list[$k]['logo'] = $proInfo['logo'];
                $list[$k]['brand'] = $brandInfo['logo'];
                $list[$k]['mid'] = $v['mid'];
                $list[$k]['mtitle'] = $this->machine->getValue(['id' => $v['mid']], 'title');
            }
        }
        // halt($map);
        $this->success('请求成功', $list);
    }

    //添加收藏
    public function addc(){        
        $uid = input('uid');
        $pid = input('pid');
        $mid = input('mid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        if(!$pid){
            $this->error('产品参数错误');
        }
        if(!$mid){
            $this->error('机型参数错误');
        }
        $data = [
            'uid' => $uid,
            'pid' => $pid,
            'mid' => $mid,
        ];
        $map = new Where($data);
        $isE = $this->memberCollection->getOneDarry($map);
        if($isE){
            // $this->error('已经收藏过');
            $del = $this->memberCollection->where($data)->delete();
            if($del){
                $this->success('取消收藏成功', 2);
            }else{
                $this->error('取消收藏失败');
            }
        }else{
            $data['create_at'] = time();
            $insert = $this->memberCollection->insert($data);
            if($insert){
                $this->success('收藏成功', 1);
            }else{
                $this->error('收藏失败');
            }
        }
    }

    //取消收藏
    public function delc(){        
        $uid = input('uid');
        $pid = input('pid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        if(!$pid){
            $this->error('产品参数错误');
        }
        $pids = explode(',', $pid);
        // foreach ($pids as $k => $v) {
        //     $data[$k]['pid'] = $v,
        //     $data[$k]['uid'] => $uid,
        //     $data[$k]['create_at'] => time(),
        // }
        $data = [
            'uid' => $uid,
            'pid' => ['in', $pids],
        ];
        // halt($data);
        $map = new Where($data);
        $del = $this->memberCollection->where($map)->delete();
        if($del){
            $this->success('取消收藏成功');
        }else{
            $this->error('取消收藏失败');
        }
    }

    //我的消息
    public function mlist(){
        // halt(juhesms('18208702258', '9527'));
        $uid = input('uid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        $map = [
            'uid' => $uid,
        ];
        $map = new Where($map);
        $list = $this->memberMessage->getNewPageLists($map, 'id desc', '', $this->page, $this->size);
        $list = $list ? $list : null;
        // halt($map);
        $this->success('请求成功', $list);
    }

    //聊天室
    public function chat(){
        // halt(send_sms('18208702258', '1314111'));
        $create_by = input('create_by');
        $uid = input('uid');
        if(!$create_by){
            $this->error('发送用户参数错误');
        }
        if(!$uid){
            $this->error('接收用户参数错误');
        }
        $map = [
            'create_by' => $create_by,
            'uid' => $uid,
        ];
        $map = new Where($map);
        $list = $this->memberMessage->getNewPageLists($map, 'id desc', 'id,uid,create_by,title,desc,content,create_at', $this->page, $this->size);
        $list = $list ? $list : null;
        // halt($list);
        if($list){
            foreach ($list as $k => $v) {
                $list[$k]['uid'] = $this->member->getOneDarry(['id' => $v['uid']], 'id,username,avatar');
                $list[$k]['create_by'] = $this->member->getOneDarry(['id' => $v['create_by']], 'id,username,avatar');
            }
        }
        // halt($list);
        $this->success('请求成功', $list);
    }

    //发送消息
    public function addm(){
        $create_by = input('create_by');
        $uid = input('uid');
        $content = input('content');
        if(!$create_by){
            $this->error('发送用户参数错误');
        }
        if(!$uid){
            $this->error('接收用户参数错误');
        }
        if(!$content){
            $this->error('消息内容不能为空');
        }
        $data = [
            'create_by' => $create_by,
            'uid' => $uid,
            'content' => $content,
            'create_at' => time(),
        ];
        $insert = $this->memberMessage->insert($data);
        if($insert){
            $this->success('发送成功', $insert);
        }else{
            $this->error('发送失败');
        }
    }

    //关于我们
    public function aboutus(){
        $aboutus = sysconf('aboutus');
        $this->success('请求成功', $aboutus);
    }
}
