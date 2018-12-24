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
        foreach (['username', 'phone'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                $map['username'] = ['like', "%{$param[$key]}%"];
            }
        }
        $map = new Where($map);
        $list = $this->member->getLists($map, '', 'id,username,phone');
        // halt($map);
        $this->success('请求成功', $list);
    }
}
