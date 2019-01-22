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
        $this->brand = model('common/Brand');
        $this->machine = model('common/Machine');
        $this->machineSpec = model('common/MachineSpec');
        $this->machineItem = model('common/MachineItem');
        $this->memberCollection = model('common/MemberCollection');
        $param = $this->request->param();
        $this->page = isset($param['page']) ? $param['page'] : 1;
        $this->size = isset($param['size']) ? $param['size'] : 10;
        // halt($param);
        // $specs = $this->productSpec->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,type,mark',0);
        // foreach ($specs as $k => $v) {
        //     $specs[$k]['items'] = $this->productItem->getLists(['status' => 0, 'is_deleted' => 0, 'spec_id' => $v['id']], 'sort asc,id asc', 'id,title,desc',0);
        // }
        // halt($specs);
        // $this->success('请求成功',$specs);
    }

    //列表+搜索1
    public function index()
    {
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $param = $this->request->param();
        foreach (['title', 'ttxm', 'htxm', 'brand', 'keyword'] as $key) {
            if(isset($param[$key]) && $param[$key] !== ''){
                // halt($key);
                if($key == 'brand'){
                    $bMap = [
                        'status' => 0,
                        'is_deleted' => '0',
                        'title' => ['like', "%{$param[$key]}%"]
                    ];
                    $bMap = new Where($bMap);
                    $bids = $this->brand->getColumn($bMap, 'id');
                    $map[$key] = ['in', $bids];
                }elseif($key == 'keyword'){
                    $map['title|ttxm|htxm'] = ['like', "%{$param[$key]}%"]; 
                }else{
                    $map[$key] = ['like', "%{$param[$key]}%"];                    
                }
            }
        }
        $map = new Where($map);
        // halt($map);
        $list = $this->product->getNewPageLists($map, '', 'id,title,logo', $this->page, $this->size);
        $list = $list ? $list : null;
        // foreach ($list as $k => $v) {
        //     $map = ['id' => $v['id']];
        //     $machinInfo = $this->machine->getOneDarry($map, 'id,title,item');
        //     $mItem = $this->formatItem($v['item'], $machinInfo['item']);
        //     $list[$k] = array_merge($list[$k], $mItem);
        //     unset($list[$k]['item']);
        // }
        // halt($list);
        $this->success('请求成功', $list);
    }

    //条码+钢印号搜索
    public function check()
    {
        $txm = input('txm');
        $sn = input('sn');
        $uid = input('uid');
        if(!$txm){
            $this->error('条码参数错误');
        }
        if(!$sn){
            $this->error('钢印号参数错误');
        }
        if(!$uid){
            $this->error('用户参数错误');
        }
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];        
        $mids = $this->getMids($sn);
        $map22 = ['id' => ['in', $mids]];
        $map22 = new Where($map22);
        $pids = $this->machine->getColumn($map22, 'pid');
        $newPids  =[];
        foreach ($pids as $k => $v) {
            if($v){
                $newPids = array_unique(array_merge($newPids, explode(',', $v)));
            }
        }
        // halt($newPids);
        // if($mids){
            $map['id'] = ['in', $newPids];
        // }
        // $map['htxm|ttxm'] = ['like', "%{$txm}%"];
        $map['htxm|ttxm'] = ['eq', $txm];
        $map = new Where($map);
        // halt($map);
        $list = $this->product->getLists($map, '', 'id,title,logo');
        $list = $list ? $list[0] : null;
        if($list){
            // $pMap = ['id' => $list['id']];
            // $mMap = ['id' => $newPids[0]];
            // $info = $this->product->getOneDarry($pMap, 'id as pid,title,ttxm,htxm,brand,video,video_thumb,item');
            // $machinInfo = $this->machine->getOneDarry($mMap, 'id,title,item');
            // $mItem = $this->formatItem($info['item'], $machinInfo['item']);
            // $info = array_merge($info, $mItem);
            // unset($info['item']);
            // $collect = $this->memberCollection->getOneDarry(['uid' => input('uid'), 'pid' => $newPids[0], 'mid' => $mids[0]]);
            // $info['is_collect'] = $collect ? 1 : 0;
            // $info['mid'] = $mids[0];
            // $list = $info;
            $mid = $this->machine->getValue(['id' => $newPids[0]], 'type');
            $list = $this->formatItem($list['id'], $mid, input('uid'));
        }
        // halt($list);
        $this->success('请求成功', $list);
    }

    //详情
    public function info(){
        if(!input('pid')){
            $this->error('产品参数错误');
        }
        if(!input('mid')){
            $this->error('机型参数错误');
        }
        if(!input('uid')){
            $this->error('用户参数错误');
        }
        $mid = $this->machine->getValue(['id' => input('mid')], 'type');
        $info = $this->formatItem(input('pid'), $mid, input('uid'));
        // $pMap = ['id' => input('pid')];
        // $mMap = ['id' => input('mid')];
        // $info = $this->product->getOneDarry($pMap, 'id as pid,title,ttxm,htxm,brand,video,video_thumb,item');
        // $machinInfo = $this->machine->getOneDarry($mMap, 'id,title,item');
        // $mItem = $this->formatItem($info['item'], $machinInfo['item']);
        // $info = array_merge($info, $mItem);
        // unset($info['item']);
        // $collect = $this->memberCollection->getOneDarry(['uid' => input('uid'), 'pid' => input('pid'), 'mid' => input('mid')]);
        // $info['is_collect'] = $collect ? 1 : 0;
        // $info['mid'] = input('mid');
        $this->success('请求成功', $info);
    }

    //根据钢印号查询机型
    public function getMids(){
        $sn = input('sn');
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $mids = [];
        $mPatterns = $this->machine->getColumn($map, 'id,title,tpattern,xpattern');
        // halt($mPatterns);
        foreach ($mPatterns as $k => $v) {
            if((strlen($sn) == 5) && $v['tpattern']){
                $match = preg_match($v['tpattern'], $sn, $matches);
                // halt($match);
                if($match){
                    $mids[] = $v['id'];
                }                
            }
            if((strlen($sn) == 7) && $v['xpattern']){
                $match = preg_match($v['xpattern'], $sn, $matches);
                // halt($match);
                if($match){
                    $mids[] = $v['id'];
                }                
            }
        }
        // halt($mids);
        return $mids;
    }

    //item
    private function formatItem($pid, $mid, $uid, $title = 'title'){
        $pMap = ['id' => $pid];
        $mMap = ['id' => $mid];
        $info = $this->product->getOneDarry($pMap, 'id as pid,title,ttxm,htxm,brand,video,video_thumb,item');
        $machinInfo = $this->machine->getOneDarry($mMap, 'id,title,item');
        $item = json_decode($info['item'], true);
        $mItem = json_decode($machinInfo['item'], true);
        // halt($item);
        // halt($mItem);
        // $ht = "<table class='GeneratedTable'<thead><tr><th>Header</th><th>Header</th></tr></thead><tbody>";
        $ht = $ht1 = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no"><title>烟草</title><meta name="keywords" content="烟草" /><meta name="description" content="烟草" /><style>body {margin:0 auto;padding:0;font-family:"微软雅黑", Arial, Helvetica, sans-serif;font-size:13px;color:#333;text-align:center;background:#FFF;background-size:100% 100%;-moz-background-size: cover;background-size: cover;}div, form, img, ul, ol, li, dl, dt, dd, p {margin: 0;padding: 0;border: 0;list-style:none;}table, td, tr, th, input, select, textarea {font-size:13px;font-family:"微软雅黑";}.productdiv{width:96%;overflow:hidden;padding: 2%;background:#FFF;}.product_table{border-top:1px solid #ffe6cc;border-left:1px solid #ffe6cc;}.product_table td{border-bottom:1px solid #ffe6cc;border-right:1px solid #ffe6cc;padding:5px 10px;line-height:18px;text-align:left;}.product_font{background:#ffe6cc; color:#fe8100;font-weight:bold;font-size:15px;}</style></head><body><div class="productdiv"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="product_table">';
        foreach ($item as $k => $v) {
            $item[$k] = $v;

            //属性值
            $itemInfo = $this->productItem->getValue(['id' => $v], $title);
            $item[$k] = $itemInfo ? $itemInfo : ($item[$k] ? $item[$k] : '');

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

                //烟支其它
                // foreach ($exp as $kk => $vv) {
                //     // halt($vv);
                //     if($kk%2 == 0){
                //         $itemExpQt01[$kk]['thumb'] = $vv;
                //         $itemExpQt01[$kk]['image'] = isset($exp[$kk+1]) ? $exp[$kk+1] : '';
                //     }else{
                //         $itemExpQt01[$kk]['thumb'] = isset($exp[$kk-1]) ? $exp[$kk-1] : '';
                //         $itemExpQt01[$kk]['image'] = $vv;
                //     }
                // }
                // for ($i=0; $i < count($exp); $i++) { 
                //         $itemExpQt01[]['thumb'] = isset($exp[$i]) ? $exp[$i] : '';
                //         $itemExpQt01[]['image'] = isset($exp[$i+1]) ? $exp[$i+1] : '';
                // }
                // halt($itemExpQt01);

                //钢印号
                $itemExpQt1['thumb'] = !empty($exp[0]) ? $exp[0] : '';
                $itemExpQt1['image'] = !empty($exp[1]) ? $exp[1] : '';

                //胶点图
                $itemExpQt2['thumb'] = !empty($exp[2]) ? $exp[2] : '';
                $itemExpQt2['image'] = !empty($exp[3]) ? $exp[3] : '';
                // $itemExp['thumb'] = $exp[0];
                // $itemExp['image'] = $exp[1];
                // halt($item[$k]);
                // halt($k);
                
                if(strpos($k, 'fwtjth') !== false){//防伪分组条盒
                    if($specInfo == 6){
                        // $item['fwtjth'][$k] = $item[$k];
                        if(in_array($k, ['fwtjthzm', 'fwtjthbm'])){
                            $item['fwtj']['th']['zmbm'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjthzc', 'fwtjthyc'])){
                            $item['fwtj']['th']['zcyc'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjthdb', 'fwtjthdb2'])){
                            $item['fwtj']['th']['dbdb2'][] = $itemExp;
                        }
                        // if(in_array($k, ['fwtjthgyh'])){
                        //     $item['fwtj']['th']['gyh'][] = $itemExp;
                        // } 
                        // if($k=='fwtjthjd'){
                        //     $item['fwtj']['th']['jd'][] = $itemExp;
                        // }                           
                    }
                    // if(strpos($k, 'fwtjthqt') !== false){
                    //     $exprr = explode('-', $k);
                    //     // halt($exprr);
                    //     if($exprr[1] == $mid){
                    //         // halt($mid);
                    //         $item['fwtj']['th']['qt'][] = $itemExpQt1;
                    //         $item['fwtj']['th']['qt'][] = $itemExpQt2;
                    //     }
                    // }
                    if(strpos($k, 'fwtjthgyh') !== false){
                        $exprr = explode('-', $k);
                        if(isset($exprr[1]) && $exprr[1] == $mid){
                            $item['fwtj']['th']['gyh'] = $itemExp;
                        }
                        // $item['fwtj']['th']['gyh'] =  (isset($exprr[1]) && $exprr[1] == $mid) ? $itemExp : $itemExp;
                    }
                    if(strpos($k, 'fwtjthjd') !== false){
                        $exprr = explode('-', $k);
                        if(isset($exprr[1]) && $exprr[1] == $mid){
                            $item['fwtj']['th']['jd'] = $itemExp;
                        }
                        // $item['fwtj']['th']['jd'] =  (isset($exprr[1]) && $exprr[1] == $mid) ? $itemExp : $itemExp;
                    }
                }elseif(strpos($k, 'fwtjxh') !== false){//防伪分组小盒
                    if($specInfo == 6){
                        // $item['fwtjxh'][$k] = $item[$k];
                        if(in_array($k, ['fwtjxhzm', 'fwtjxhbm'])){
                            $item['fwtj']['xh']['zmbm'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjxhzc', 'fwtjxhyc'])){
                            $item['fwtj']['xh']['zcyc'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjxhdb', 'fwtjxhdb2'])){
                            $item['fwtj']['xh']['dbdb2'][] = $itemExp;
                        }
                        // if(in_array($k, ['fwtjxhgyh'])){
                        //     $item['fwtj']['xh']['gyh'][] = $itemExp;
                        // } 
                        // if(in_array($k, ['fwtjxhjd'])){
                        //     $item['fwtj']['xh']['jd'][] = $itemExp;
                        // } 
                    }
                    // if(strpos($k, 'fwtjxhqt') !== false){
                    //     $exprr = explode('-', $k);
                    //     if($exprr[1] == $mid){
                    //         $item['fwtj']['xh']['qt'][] = $itemExpQt1;
                    //         $item['fwtj']['xh']['qt'][] = $itemExpQt2;
                    //     }
                    // }
                    if(strpos($k, 'fwtjxhgyh') !== false){
                        $exprr = explode('-', $k);
                        if(isset($exprr[1]) && $exprr[1] == $mid){
                            $item['fwtj']['xh']['gyh'] = $itemExp;
                        }
                        // $item['fwtj']['xh']['gyh'] =  (isset($exprr[1]) && $exprr[1] == $mid) ? $itemExp : $itemExp;
                    }
                    if(strpos($k, 'fwtjxhjd') !== false){
                        $exprr = explode('-', $k);
                        if(isset($exprr[1]) && $exprr[1] == $mid){
                            $item['fwtj']['xh']['jd'] = $itemExp;
                        }
                        // $item['fwtj']['xh']['jd'] =  (isset($exprr[1]) && $exprr[1] == $mid) ? $itemExp : $itemExp;
                    }
                }elseif(strpos($k, 'fwtjyz') !== false){//防伪分组烟支
                    if($specInfo == 6){
                        // $item['fwtjyz'][$k] = $item[$k];
                        if(in_array($k, ['fwtjyzzm', 'fwtjyzbm'])){
                            $item['fwtj']['yz']['zmbm'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjyzzc', 'fwtjyzyc'])){
                            $item['fwtj']['yz']['zcyc'][] = $itemExp;
                        }
                        if(in_array($k, ['fwtjyzdb', 'fwtjyzdb2'])){
                            $item['fwtj']['yz']['dbdb2'][] = $itemExp;
                        }  
                        // if(in_array($k, ['fwtjyzgyh'])){
                        //     $item['fwtj']['yz']['gyh'][] = $itemExp;
                        // } 
                        // if(in_array($k, ['fwtjyzjd'])){
                        //     $item['fwtj']['yz']['jd'][] = $itemExp;
                        // }                       
                    }
                    if(strpos($k, 'fwtjyzqt') !== false){
                        for ($i=0; $i < count($exp); $i++) { 
                            $it = [
                                'thumb' => isset($exp[$i]) ? $exp[$i] : '',
                                'image' => isset($exp[$i+1]) ? $exp[$i+1] : '',
                            ];
                                // $itemExpQt[]['thumb'] = isset($exp[$i]) ? $exp[$i] : '';
                                // $itemExpQt[]['image'] = isset($exp[$i+1]) ? $exp[$i+1] : '';
                                $itemExpQt[] = $it;
                                $i++;
                        }
                        // halt($itemExpQt);
                        // $exprr = explode('-', $k);
                        // if(isset($exprr[1]) && $exprr[1] == $mid){
                            $item['fwtj']['yz']['qt'] = $itemExpQt;
                            // $item['fwtj']['yz']['qt'][] = $itemExpQt02;
                        // }
                    }
                }else{//其他详细参数
                    // $item['detail'][$k] = $item[$k];
                    $specName = $this->productSpec->getValue(['mark' => $k], 'title');
                    $ht .= '<tr><td>'.$specName.'</td><td>'.$item[$k].'</td></tr>';
                    // if($k == 'cpsp'){
                    //     $cpsp = $item[$k];
                    //     unset($item['detail'][$k]);
                    // }
                }
                // unset($item[$k]);
            // }
            //其他详细参数
            // $item['product_params'][$k] = $item[$k];
            unset($item[$k]);
        }
        $ht .= '</table></div></body></html>';
        $item['detail'] = $ht;

        //机型参数
        foreach ($mItem as $k => $v) {
            $mItem[$k] = $v;

            //属性值
            $mItemInfo = $this->machineItem->getValue(['id' => $v], 'title');
            $mItem[$k] = $mItemInfo ? $mItemInfo : ($mItem[$k] ? $mItem[$k] : '');

            //多图拆解
            // $specInfo = $this->machineSpec->getValue(['mark' => $k], 'type');
            $specName1 = $this->machineSpec->getValue(['mark' => $k], 'title');
            $ht1 .= '<tr><td>'.$specName1.'</td><td>'.$mItem[$k].'</td></tr>';
        }
        $ht1 .= '</table></div></body></html>';
        $item['machine'] = $ht1;

        $info = array_merge($info, $item);
        unset($info['item']);
        $collect = $this->memberCollection->getOneDarry(['uid' => $uid, 'pid' => $pid, 'mid' => $mid]);
        $info['is_collect'] = $collect ? 1 : 0;
        $info['mid'] = $mid;
        // halt($item);
        return $info;
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
