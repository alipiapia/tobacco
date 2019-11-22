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

namespace app\admin\controller;

use controller\BasicAdmin;
use service\DataService;
use service\ToolsService;
use service\HxService;
use think\Db;
use think\db\Where;

/**
 * 前台用户管理控制器
 * Class Member
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Member extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Member';
    public $member;
    public $hx;
    public $area;

    public function __construct(){
        parent::__construct();
        $this->member = model('common/Member');
        $this->area = model('common/Area');
        $this->hx = new HxService();
        $this->assign('roles', config('pp.role_type'));
        $this->assign('is_advisor', config('pp.is_advisor'));

        //获取地区
        $this->areaList = $this->_getAreaTrees('Area', ['area_open' => 1]);
        $this->assign('areaList', $this->areaList);
        // halt($this->areaList);
    }

    /**
     * 用户列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        // halt(join_area_name(3089));
        // $f = $this->hx->hx_chat_messages('2019012111');
        // $f = $this->hx->downContent('2019012111', '../../../static');
        // halt($f);
        $this->title = '用户管理';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['username', 'nickname', 'role', 'phone', 'mail', 'aid', 'is_advisor'] as $key) {
            if(isset($get[$key]) && $get[$key] !== ''){
                if($key == 'role'){
                    $db->where($key, $get[$key]);
                }elseif($key == 'is_advisor'){
                    $db->where($key, $get[$key]);
                }elseif($key == 'aid'){
                    $areas = $this->area->order('area_id asc')->select();
                    $aids = ToolsService::getArrSubIds($areas,$get[$key],'area_id','area_parent_id');//当前区域下地区Ids
                    $db->where($key, 'in', $aids);
                }else{
                    $db->whereLike($key, "%{$get[$key]}%");
                }
            }
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('login_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->where(['is_deleted' => 0]));
    }

    /**
     * 授权管理
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function auth()
    {
        if ($this->request->isGet()) {
            // $this->assign('roles', config('pp.role_type'));
            return $this->_form($this->table, 'auth');
        }
        $post = $this->request->post();
        if(!isset($post['role'])){
            $this->error('请选择角色');                
        }
        $data = ['id' => $post['id'], 'role' => $post['role']];
        if (DataService::save($this->table, $data, 'id')) {
            $this->success('修改成功');
        }
        $this->error('修改失败！');
    }

    /**
     * 用户添加
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function add()
    {
        // $rs = $this->hx->hx_register("pp".mt_rand(10000,99999), '111111', '123');
        // $ret  = json_decode($rs, true);
        // halt($ret);
        return $this->_form($this->table, 'form');
    }

    /**
     * 用户编辑
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function edit()
    {
        // $rs = $this->hx->hx_user_info($this->request->post('id'));
        // $ret  = json_decode($rs, true);
        // halt($ret);
        // if($ret['error'] == 'service_resource_not_found'){
        //     $this->error('找不到用户信息');
        // }
        return $this->_form($this->table, 'form');
    }

    /**
     * 用户密码修改
     * @return array|string
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function pass()
    {
        if ($this->request->isGet()) {
            $this->assign('verify', false);
            return $this->_form($this->table, 'pass');
        }
        $post = $this->request->post();
        if ($post['password'] !== $post['repassword']) {
            $this->error('两次输入的密码不一致！');
        }
        $username = get_model_value($post['id'], 'Member','username');
        $data = ['id' => $post['id'], 'password' => $post['password']];
        if (DataService::save($this->table, $data, 'id')) {
            // $rs = $this->hx->hx_user_update_password($username, $data['password']);
            // $ret  = json_decode($rs, true);
            // if(isset($ret['error'])){
            //     if($ret['error'] == 'duplicate_unique_property_exists'){
            //         $this->error("用户已存在");
            //     }else{
            //         $this->error($ret['error']);
            //     }
            // }
            $this->success('密码修改成功，下次请使用新密码登录！', '');
        }
        $this->error('密码修改失败，请稍候再试！');
    }

    /**
     * 表单数据默认处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function _form_filter(&$data)
    {
        if ($this->request->isPost()) {
            // if (isset($data['authorize']) && is_array($data['authorize'])) {
            //     $data['authorize'] = join(',', $data['authorize']);
            // } else {
            //     $data['authorize'] = '';
            // }
            
            // if(!isset($data['role'])){
            //     $this->error('请选择角色');                
            // }

            if (isset($data['id'])) {
                // halt($data);
                $data['update_at'] = time();
                // $oldNickname = Db::name($this->table)->where('id', 'eq', $data['id'])->value('nickname');
                // if(isset($data['nickname']) && $oldNickname != $data['nickname']){
                //     $rs = $this->hx->hx_user_update_nickname($data['username'], $data['nickname']);
                //     $ret  = json_decode($rs, true);
                //     if(isset($ret['error'])){
                //         if($ret['error'] == 'duplicate_unique_property_exists'){
                //             $this->error("用户已存在");
                //         }else{
                //             $this->error($ret['error']);
                //         }
                //     }
                // }

                if(isset($data['phone'])){
                    $editMap = ['phone' => $data['phone'], 'id' => ['neq', $data['id']]];
                    $editMap = new Where($editMap);
                    if (Db::name($this->table)->where($editMap)->count() > 0) {
                        $this->error('手机号码已经存在，请使用其它手机号码！');
                    }                    
                }
                unset($data['username']);
            } elseif (Db::name($this->table)->where(['username' => $data['username']])->count() > 0) {
                $this->error('用户账号已经存在，请使用其它账号！');
            } elseif (Db::name($this->table)->where(['phone' => $data['phone']])->count() > 0) {
                $this->error('手机号码已经存在，请使用其它手机号码！');
            }
            // if(!isset($data['aid']) || $data['aid'] == ''){
            //     $this->error('请选择地区');
            // }
            if(!isset($data['id'])){
                //环信注册验证
                $data['password'] = '111111';//默认密码
                // $this->hxReg($data);
                $data['create_at'] = time();
            }
        } else {
            // $data['authorize'] = explode(',', isset($data['authorize']) ? $data['authorize'] : '');
            // $this->assign('authorizes', Db::name('SystemAuth')->where(['status' => '1'])->select());
            // $this->assign('roles', config('pp.role_type'));
        }
    }

    //环信注册验证
    private function hxReg($data){
        // halt($data);
        $rs = $this->hx->hx_register($data['username'], $data['password'], $data['nickname'] );
        $ret  = json_decode($rs, true);
        if(isset($ret['error'])){
            if($ret['error'] == 'duplicate_unique_property_exists'){
                $this->error("用户已存在");
            }else{
                $this->error($ret['error']);
            }
        }else{
            // $data['uuid'] = $ret['entities'][0]['uuid'];
            if($ret['entities'][0]['activated'] === false){
                $data['status'] = 1;
            }
        }
    }

    /**
     * 删除用户
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del()
    {
        $ids = explode(',', $this->request->post('id'));
        // if (in_array('10000', explode(',', $this->request->post('id')))) {
        //     $this->error('系统超级账号禁止删除！');
        // }
        
        // halt($this->hx->hx_user_delete('pp0005'));
        // halt($this->member::get($this->request->post('id'))->delete());
        foreach($ids as $k => $v){
            $username = get_model_value($v, 'Member','username');
            // if (DataService::update($this->table)) {
            if ($this->member::get($v)->delete()) {
                // $hx_delete = $this->hx->hx_user_delete($username);
                // if($hx_delete){
                    $this->success("用户删除成功！", '');
                // }
            }
        }
        $this->success("用户删除成功！", '');
        // $this->error("用户删除失败，请稍候再试！");
    }

    /**
     * 用户禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid()
    {
        // if (in_array('10000', explode(',', $this->request->post('id')))) {
        //     $this->error('系统超级账号禁止操作！');
        // }
        $username = get_model_value($this->request->post('id'), 'Member','username');
        if (DataService::update($this->table)) {
            // $hx_deactivate = $this->hx->hx_user_deactivate($username);
            // if($hx_deactivate){
                $this->success("用户禁用成功！", '');
            // }
        }
        $this->error("用户禁用失败，请稍候再试！");
    }

    /**
     * 用户禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        $username = get_model_value($this->request->post('id'), 'Member','username');
        if (DataService::update($this->table)) {
            // $hx_activate = $this->hx->hx_user_activate($username);
            // if($hx_activate){
                $this->success("用户启用成功！", '');
            // }
        }
        $this->error("用户启用失败，请稍候再试！");
    }

}
