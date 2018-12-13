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

/**
 * 产品 控制器
 * Class Product
 * @package app\api\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Product extends BasicApi
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Product';
    public $specs;

    public function __construct(){
        parent::__construct();
        // halt($this->request);
        $this->product = model('common/Product');
        $this->productSpec = model('common/ProductSpec');
        $this->productItem = model('common/ProductItem');
        // $specs = $this->productSpec->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,type,mark',0);
        // foreach ($specs as $k => $v) {
        //     $specs[$k]['items'] = $this->productItem->getLists(['status' => 0, 'is_deleted' => 0, 'spec_id' => $v['id']], 'sort asc,id asc', 'id,title,desc',0);
        // }
        // halt($specs);
        // $this->success('成功',$specs);
    }

    //列表
    public function index()
    {
        $this->title = '产品管理';
        list($get, $db) = [$this->request->get(), $this->product];
        // halt($get);
        $db->where(['status' => 0, 'is_deleted' => '0']);
        foreach (['title', 'type', 'desc'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            // $db->whereBetween('login_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
            $db->whereBetween('create_at', [strtotime("{$start} 00:00:00"), strtotime("{$end} 23:59:59")]);
        }
        $list = $db->select();
        // halt($db);
        foreach ($list as $k => $v) {
            $v['item'] = $this->formatItem($v['item']);
        }
        $this->success('成功',$list);
    }

    //详情
    public function info(){
        if(!input('id')){
            $this->error('参数错误');
        }
        $map = ['id' => input('id')];
        $info = $this->product->getOneDarry($map);
        $info = $this->formatItem($info['item']);
        $this->success('', $info);
    }

    //item
    private function formatItem($item){
        $item = json_decode($item, true);
        foreach ($item as $k => $v) {
            $item[$k] = $v;
            $itemInfo = $this->productItem->getValue(['id' => $v], 'title');
            if($itemInfo){
                $item[$k] = $itemInfo;
            }
        }
        return $item;
    }

}
