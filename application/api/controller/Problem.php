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
 * 常见问题 控制器
 * Class Problem
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Problem extends BasicApi
{
    public function __construct(){
        parent::__construct();
        $this->problem = model('common/Problem');
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
        $list = $this->problem->getNewPageLists($map, 'sort', 'id,title,desc,content,role,create_at', $this->page, $this->size);
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
        $info = $this->problem->getOneDarry(['id' => $id], 'id,title,desc,content,role,create_at');
        if(!$info){
            $this->error('找不到问题');
        }
        $roleArr = explode(',',$info['role']);
        if(!in_array($role, $roleArr)){
            $this->error('无权访问');
        }
        $info['create_at'] = date('Y-m-d', $info['create_at']);
        // halt($info);
        $this->success('', $info);
    }
}
