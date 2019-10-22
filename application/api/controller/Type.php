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
        $this->size = isset($param['size']) ? $param['size'] : 50;
        // halt($param);
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
        foreach (['title', 'pid'] as $k => $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                if($key == 'pid'){
                    $mMap[$key] = [
                        ['eq', $param[$key]],
                        ['like', "{$param[$key]},%"],
                        ['like', "%,{$param[$key]}"],
                        ['like', "%,{$param[$key]},%"],
                        'or'
                    ];
                    // $map1 = ['eq', $param[$key]];
                    // $map2 = ['like', "%,{$param[$key]}"];
                    // $map3 = ['like', "%,{$param[$key]},%"];
                    // $map[$key]['_complex'] = [
                    //     $map1,
                    //     $map2,
                    //     '_logic' => 'or'
                    // ];
                    // halt($map);
                    $mMap = new Where($mMap);
                    $mids = $this->machine->getColumn($mMap, 'type');
                    $map['id'] = ['in', $mids];
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
        $pids = $this->product->getColumn($pMap, 'id');
        halt($pids);
        $mMap['pid'] = [
            ['eq', $pid],
            ['like', "{$ppid,%"],
            ['like', "%,{$pid}"],
            ['like', "%,{$pid},%"],
            'or'
        ];
        // halt($map);
        $mMap = new Where($mMap);
        $mids = $this->machine->getColumn($mMap, 'type');
    }
}
