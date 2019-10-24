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
 * Class Type
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Type extends BasicApi
{
    public function __construct(){
        parent::__construct();
        $this->type = model('common/Type');
        $this->machine = model('common/Machine');
        $this->product = model('common/Product');
        $param = $this->request->param();
        $this->page = isset($param['page']) ? $param['page'] : 1;
        $this->size = isset($param['size']) ? $param['size'] : 5;
        // halt($param);
    }

    //列表
    public function index()
    {
        if(!input('pname')){
            $this->error('产品参数错误');
        }
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        foreach (['title', 'pname'] as $k => $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                if($key == 'pname'){
                    $tids = $this->getPMids($param[$key]);
                    $map['id'] = ['in', $tids];
                }else{
                    $map[$key] = ['like', "%{$param[$key]}%"];
                }
            }
        }
        $map = new Where($map);
        $list = $this->type->getNewPageLists($map, 'sort', 'id,title', $this->page, $this->size);
        foreach ($list as $k => $v) {
            $list[$k]['pid'] = input('pid');
        }
        $list = $list ? $list : null;
        // halt($map);
        $this->success('请求成功', $list);
    }

    public function getPMids($pname){
        $pMap = [
            'title' => ['like', "%{$pname}%"],
            'status' => 0,
            'is_deleted' => '0',
        ];
        $pMap = new Where($pMap);
        $pids = $this->product->getColumn($pMap, 'id');
        // halt($pids);
        $mMap = [
            'status' => 0,
            'is_deleted' => '0',
            'pid' => ['or'],
        ];
        foreach ($pids as $k => $v) {
            // $mMap['pid'][$k] = [
            //     ['eq', $v],
            //     ['like', "{$v}%"],
            //     ['like', "%,{$v}"],
            //     ['like', "%,{$v},%"],
            // ];
            // $mMap['pid'] = [
            //     ['eq', $pid],
            //     ['like', "{$pid}%"],
            //     ['like', "%,{$pid}"],
            //     ['like', "%,{$pid},%"],
            //     'or'
            // ];
            array_push($mMap['pid'], ['eq', $v]);
            array_push($mMap['pid'], ['like', "{$v}%"]);
            array_push($mMap['pid'], ['like', "%,{$v}"]);
            array_push($mMap['pid'], ['like', "%,{$v},%"]);
        }
        array_shift($mMap['pid']);
        array_push($mMap['pid'], 'or');
        // halt($mMap['pid']);
        $mMap = new Where($mMap);
        $mids = $this->machine->getColumn($mMap, 'type');
        // halt($mids);
        return array_unique($mids);
    }
}
