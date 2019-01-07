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
 * 机型 控制器
 * Class Machine
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Machine extends BasicApi
{
    public function __construct(){
        parent::__construct();
        $this->machine = model('common/Machine');
    }

    //列表
    public function index()
    {
        if(!input('pid')){
            $this->error('产品参数错误');
        }
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        foreach (['title', 'pid'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                $map[$key] = ['like', "%{$param[$key]}%"];
            }
        }
        $map = new Where($map);
        $list = $this->machine->getLists($map, '', 'id as mid,title', 1000);
        foreach ($list as $k => $v) {
            $list[$k]['pid'] = input('pid');
        }
        $list = $list ? $list : null;
        // halt($map);
        $this->success('请求成功', $list);
    }
}
