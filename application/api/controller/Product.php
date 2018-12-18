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
        // $this->success('请求成功',$specs);
    }

    //列表
    public function index()
    {
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        foreach (['title', 'type', 'desc'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                $map['title'] = ['like', "%{$param[$key]}%"];
            }
        }
        $list = $this->product->getLists($map, '', 'id,title');
        // halt($map);
        $this->success('请求成功', $list);
    }

    //列表
    public function list()
    {
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
        $list = $db->getLists();
        // halt($db);
        foreach ($list as $k => $v) {
            $mItem = $this->formatItem($v['item']);
            $list[$k] = array_merge($list[$k], $mItem);
            unset($list[$k]['item']);
        }
        // halt($list);
        $this->success('请求成功', $list);
    }

    //详情
    public function info(){
        if(!input('id')){
            $this->error('参数错误');
        }
        $map = ['id' => input('id')];
        $info = $this->product->getOneDarry($map, 'id,title,item');
        $mItem = $this->formatItem($info['item']);
        $info = array_merge($info, $mItem);
        unset($info['item']);
        $this->success('请求成功', $info);
    }

    //item
    private function formatItem($item, $title = 'title'){
        $item = json_decode($item, true);
        // halt($item);
        foreach ($item as $k => $v) {
            $item[$k] = $v;

            //属性值
            $itemInfo = $this->productItem->getValue(['id' => $v], $title);
            // if($itemInfo){
                $item[$k] = $itemInfo ? $itemInfo : ($item[$k] ? $item[$k] : '');
            // }

            //多图拆解
            $specInfo = $this->productSpec->getValue(['mark' => $k], 'type');
            // if($specInfo == 6){
                //缩略图+实际图
                $exp = explode('|', $v);
                // unset($item[$k]);
                // $item[$k] = $exp;
                // halt($item[$k]);
                $itemExp['thumb'] = !empty($exp[0]) ? $exp[0] : '';
                $itemExp['image'] = !empty($exp[1]) ? $exp[1] : '';

                //其它
                $itemExpQt1['thumb'] = !empty($exp[0]) ? $exp[0] : '';
                $itemExpQt1['image'] = !empty($exp[1]) ? $exp[1] : '';
                $itemExpQt2['thumb'] = !empty($exp[2]) ? $exp[2] : '';
                $itemExpQt2['image'] = !empty($exp[3]) ? $exp[3] : '';
                // $itemExp['thumb'] = $exp[0];
                // $itemExp['image'] = $exp[1];
                // halt($item[$k]);
                // halt($k);
                
                //防伪分组条盒
                if($specInfo == 6 && strpos($k, 'fwtjth') !== false){
                    // $item['fwtjth'][$k] = $item[$k];
                    if(in_array($k, ['fwtjthzm', 'fwtjthbm'])){
                        $item['fwtjth']['fwtjthzmbm'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjthzc', 'fwtjthyc'])){
                        $item['fwtjth']['fwtjthzcyc'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjthdb', 'fwtjthdb2'])){
                        $item['fwtjth']['fwtjthdbdb2'][] = $itemExp;
                    }
                    if($k == 'fwtjthqt'){
                        $item['fwtjth']['fwtjthqt'][] = $itemExpQt1;
                        $item['fwtjth']['fwtjthqt'][] = $itemExpQt2;
                    }
                }elseif($specInfo == 6 && strpos($k, 'fwtjxh') !== false){
                //防伪分组小盒
                    // $item['fwtjxh'][$k] = $item[$k];
                    if(in_array($k, ['fwtjxhzm', 'fwtjxhbm'])){
                        $item['fwtjxh']['fwtjxhzmbm'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjxhzc', 'fwtjxhyc'])){
                        $item['fwtjxh']['fwtjxhzcyc'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjxhdb', 'fwtjxhdb2'])){
                        $item['fwtjxh']['fwtjxhdbdb2'][] = $itemExp;
                    }
                    if($k == 'fwtjxhqt'){
                        $item['fwtjxh']['fwtjxhqt'][] = $itemExpQt1;
                        $item['fwtjxh']['fwtjxhqt'][] = $itemExpQt2;
                    }
                }elseif($specInfo == 6 && strpos($k, 'fwtjyz') !== false){
                //防伪分组烟支
                    // $item['fwtjyz'][$k] = $item[$k];
                    if(in_array($k, ['fwtjyzzm', 'fwtjyzbm'])){
                        $item['fwtjyz']['fwtjyzzmbm'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjyzzc', 'fwtjyzyc'])){
                        $item['fwtjyz']['fwtjyzzcyc'][] = $itemExp;
                    }
                    if(in_array($k, ['fwtjyzdb', 'fwtjyzdb2'])){
                        $item['fwtjyz']['fwtjyzdbdb2'][] = $itemExp;
                    }
                    if($k == 'fwtjyzqt'){
                        $item['fwtjyz']['fwtjyzqt'][] = $itemExpQt1;
                        $item['fwtjyz']['fwtjyzqt'][] = $itemExpQt2;
                    }
                }else{
                    $item['product_params'][$k] = $item[$k];
                }
                // unset($item[$k]);
            // }
            //其他详细参数
            // $item['product_params'][$k] = $item[$k];
            unset($item[$k]);
        }
        //机型参数
        $item['machine_params'] = '';
        return $item;
    }

    //spec
    private function formatSpec($spec, $title = 'title'){
        $spec = json_decode($spec, true);
        foreach ($spec as $k => $v) {
            $spec[$k] = $k;
            $specInfo = $this->productSpec->getValue(['mark' => $k], $title);
            if($specInfo){
                $spec[$k] = $specInfo;
            }
        }
        return $spec;
    }

    //columns
    public function doc(){
        $map = ['id' => 1];
        $info = $this->product->getOneDarry($map);
        $mItem = $this->formatSpec($info['item']);
        $info = array_merge($info, $mItem);
        unset($info['item']);
        $this->success('请求成功', $info);
    }

}
