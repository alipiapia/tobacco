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
        $this->memberMessage = model('common/MemberMessage');
        $this->memberCollection = model('common/MemberCollection');
        $this->SmsLog = model('common/SmsLog');
    }

    //列表
    public function index()
    {
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        foreach (['username', 'nickname', 'role', 'phone'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                if($key == 'role'){
                    $map[$key] = $param[$key];
                }else{
                    $map[$key] = ['like', "%{$param[$key]}%"];
                }
            }
        }
        $map = new Where($map);
        $list = $this->member->getLists($map, '', 'id,username,nickname,role,phone,status,avatar');
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
            $this->error('找不到验证码');
        }
        $timeDiff = floor(time() - $codeInfo['create_at']);
        // if(($timeDiff / 60) >= 5){
        //     $this->error('验证码超时');
        // }
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

    //发送验证码
    public function send_code(){
        $phone = input('phone');
        if(!is_mobile($phone)){
            $this->error('请输入正确手机号码');
        }
        $code = create_code();
        // $send = send_sms($phone, $code);
        // halt($send);

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
                $this->success('发送成功');            
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
                 $this->success('发送成功');
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
        $names = ['avatar', $uid];
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
        $list = $this->memberCollection->getLists($map);
        // halt($map);
        $this->success('请求成功', $list);
    }

    //添加收藏
    public function addc(){        
        $uid = input('uid');
        $pid = input('pid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        if(!$pid){
            $this->error('产品参数错误');
        }
        $data = [
            'uid' => $uid,
            'pid' => $pid,
            'create_at' => time(),
        ];
        $insert = $this->memberCollection->insert($data);
        if($insert){
            $this->success('收藏成功');
        }else{
            $this->error('收藏失败');
        }
    }

    //我的消息
    public function mlist(){
        $uid = input('uid');
        if(!$uid){
            $this->error('用户参数错误');
        }
        $map = [
            'uid' => $uid,
        ];
        $map = new Where($map);
        $list = $this->memberMessage->getLists($map);
        // halt($map);
        $this->success('请求成功', $list);
    }
}
