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
 * 聊天记录 控制器
 * Class Chat
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Chat extends BasicApi
{
    public function __construct(){
        parent::__construct();
        $this->chat = model('common/Chat');
        $this->member = model('common/Member');
        $param = $this->request->param();
        $this->page = isset($param['page']) ? $param['page'] : 1;
        $this->size = isset($param['size']) ? $param['size'] : 10;
        // halt($param);
    }

    //列表
    public function index()
    {
        $param = $this->request->param();
        if(!isset($param['uid'])){
            $this->error('用户参数错误');
        }
        $role = $this->member->getValue(['id' => $param['uid']], 'role');
        if(!$role){
            $this->error('找不到用户或用户角色未设置');
        }
        // halt($role);
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        if($role){
            $map['role'] = [
                ['eq', $role],
                ['like', "{$role},%"],
                ['like', "%,{$role}"],
                ['like', "%,{$role},%"],
                'or',
            ];
        }
        foreach (['title', 'desc', 'content'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                $map['title'] = ['like', "%{$param[$key]}%"];
            }
        }
        $map = new Where($map);
        $list = $this->chat->getNewPageLists($map, '', 'id,title,content,create_at,create_by,receive_by', $this->page, $this->size);
        foreach ($list as $k => $v) {
            $list[$k]['create_at'] = date('Y-m-d', $v['create_at']);
        }
        // halt($map);
        $this->success('请求成功', $list);
    }

    //详情
    public function info(){
        $id = input('id');
        $uid = input('uid');
        if(!$id){
            $this->error('参数错误');
        }
        if(!$uid){
            $this->error('用户参数错误');
        }
        $role = $this->member->getValue(['id' => $uid], 'role');
        if(!$role){
            $this->error('找不到用户或用户角色未设置');
        }
        $info = $this->chat->getOneDarry(['id' => $id], 'id,title,content,create_at,create_by,receive_by');
        if(!$info){
            $this->error('找不到记录');
        }
        $roleArr = explode(',',$info['role']);
        if(!in_array($role, $roleArr)){
            $this->error('无权访问');
        }
        $info['create_at'] = date('Y-m-d', $info['create_at']);
        // halt($info);
        $this->success('', $info);
    }

    //添加消息
    public function send(){
        $param = $this->request->param();
        array_shift($param);
        // halt($param);
        if(empty($param['content'])){
            $this->error('内容不能为空');
        }
        if(empty($param['create_by'])){
            $this->error('发送者不能为空');
        }
        if(empty($param['receive_by'])){
            $this->error('接收者不能为空');
        }
        $param['create_at'] = time();
        $insert = $this->chat->insert($param);
        if($insert){
            $this->success('发送成功');
        }else{
            $this->error('发送失败');
        }
    }
}
