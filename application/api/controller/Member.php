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
// use service\ToolsService;
use think\Db;
use think\db\Where;

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
        $this->member = model('common/Member');
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
        $list = $this->member->getLists($map, '', 'id,username,nickname,password,role,phone,status,avatar');
        // halt($map);
        $this->success('请求成功', $list);
    }

    //登录
    public function login(){
        $username = input('username');
        $password = input('password');
        if(!$username){
            $this->error('请输入账号');
        }
        if(!$password){
            $this->error('请输入密码');
        }
        $map = [
            'username|phone' => ['eq', $username],
        ];
        $map = new Where($map);
        $mem = $this->member->getOneDarry($map, 'id,username,nickname,password,role,phone,status,avatar');
        if(!$mem){
            $this->error('登录账号不存在，请重新输入');            
        }
        if($mem['status'] == 1){
            $this->error('账号已经被禁用，请联系管理员');            
        }
        if($mem['password'] != $password){
            $this->error('登录密码错误，请重新输入');            
        }
        // 更新登录信息
        $up = $this->member->where($map)->update([
            'login_at'  => Db::raw('now()'),
            'login_num' => Db::raw('login_num+1'),
        ]);
        if($up){
            $this->success('登录成功', $mem);
        }
    }
}
