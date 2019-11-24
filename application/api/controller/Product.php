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
        $this->factory = model('common/Factory');
        $param = $this->request->param();
        $this->page = isset($param['page']) ? $param['page'] : 1;
        $this->size = isset($param['size']) ? $param['size'] : 10;
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
                    $mids = $this->getMids($param[$key]);
                    if($mids){//如果匹配到钢印号
                        $pmids = $this->getMPids($mids);
                        // halt($pmids);
                        $map['id'] = ['in', $pmids];
                    }else{//否则匹配产品名称条盒小盒条形码
                        $map['title|ttxm|htxm'] = ['like', "%{$param[$key]}%"];
                    }
                }else{
                    $map[$key] = ['like', "%{$param[$key]}%"];                    
                }
            }
        }
        $map = new Where($map);
        // halt($map);
        $list = $this->product->getNewPageLists($map, 'title', 'sort', 'id,title,logo', $this->page, $this->size);
        $list = $list ? $list : null;
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
        if(!$mids){
            $this->error('找不到机型');
        }
        $map22 = ['id' => ['in', $mids]];
        $map22 = new Where($map22);
        $pids = $this->machine->getColumn($map22, 'pid');
        $newPids  =[];
        foreach ($pids as $k => $v) {
            if($v){
                $newPids = array_unique(array_merge($newPids, explode(',', $v)));
            }
        }
        $map['id'] = ['in', $newPids];
        $map['htxm|ttxm'] = ['eq', $txm];
        $map = new Where($map);
        $list = $this->product->getLists($map, '', 'id,title,logo');
        $list = $list ? $list[0] : null;
        if($list){
            $list = $this->formatItem($list['id'], $mids[0], input('uid'));
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
        $info = $this->formatItem(input('pid'), input('mid'), input('uid'));
        $this->success('请求成功', $info);
    }

    //根据钢印号查询机型
    public function getMids($sn){
        // $sn = input('sn');
        $map = [
            'status' => 0,
            'is_deleted' => '0',
        ];
        $mids = [];
        $mPatterns = $this->machine->getColumn($map, 'id,title,tpattern,xpattern');
        // halt($mPatterns);
        foreach ($mPatterns as $k => $v) {            
            //UP. 20190818 By pp
            //条/盒规则更新：由之前固定5位条+7位盒修改为不区分位数自动匹配
            if(($v['tpattern'] && @preg_match($v['tpattern'], $sn, $matches)) || ($v['xpattern'] && @preg_match($v['xpattern'], $sn, $matches))){
                $mids[] = $v['id'];
            }
            // if($v['xpattern'] && preg_match($v['xpattern'], $sn, $matches)){
            //     $mids[] = $v['id'];  
            // }
        }
        // halt($mids);
        return $mids;
    }

    //根据机台ids查询产品ids
    public function getMPids($mids){
        // $mids = input('mids');
        $mpMap = [
            'id' => ['in', $mids],
            'status' => 0,
            'is_deleted' => '0',
        ];
        $mpMap = new Where($mpMap);
        $mpids = $this->machine->getColumn($mpMap, 'pid');
        $mpidss = [];
        foreach ($mpids as $k => $v) {
            if($v){
                // $mpidss[$k] = $v;
                $mpidss = array_merge($mpidss, explode(',', $v));
            }
        }
        $mpidss = array_unique($mpidss);
        // halt($mpidss);
        return $mpidss;
    }

    //item
    private function formatItem($pid, $mid, $uid, $title = 'title'){
        $pMap = ['id' => $pid];
        $mMap = ['id' => $mid];
        $info = $this->product->getOneDarry($pMap, 'id as pid,title,ttxm,htxm,brand,fid,video,video_thumb,item');
        $machinInfo = $this->machine->getOneDarry($mMap, 'id,title,type,item');
        $tid = $machinInfo['type'];
        $item = json_decode($info['item'], true);
        $mItem = json_decode($machinInfo['item'], true);
        $ht = $ht1 = $this->hHead;
        $factoryName = $this->factory->getValue(['id' => $info['fid']], 'title');
        $ht .= '<tr><td>生产机构</td><td>'.$factoryName.'</td></tr>';//生产机构
        $thii = $xhii = $yzii = 1;
        // halt($item);
        if($item){
            foreach ($item as $k => $v) {
                $item[$k] = $v;

                //属性值
                $itemInfo = $this->productItem->getValue(['id' => $v], $title);
                $item[$k] = $itemInfo ? $itemInfo : ($item[$k] ? $item[$k] : '');

                //多图拆解
                $specInfo = $this->productSpec->getValue(['mark' => $k], 'type');
                //缩略图+实际图
                $exp = explode('|', $v);
                // unset($item[$k]);
                // $item[$k] = $exp;
                // halt($item[$k]);
                // halt($k);
                
                if((strpos($k, 'fwtjth') !== false)){//防伪分组条盒
                    //6面
                    if((strpos($k, 'fwtjthgyh') !== false) || (strpos($k, 'fwtjthjd') !== false) || (strpos($k, 'fwtjthldt') !== false)){
                        unset($item[$k]);
                        continue;
                    }
                    foreach ($exp as $kk => $vv) {
                         if($vv){
                            $item['fwtj']['th'][] = $vv;
                        }
                    }
                }elseif(strpos($k, 'fwtjxh') !== false){//防伪分组小盒
                    //6面
                    if((strpos($k, 'fwtjxhgyh') !== false) || (strpos($k, 'fwtjxhjd') !== false) || (strpos($k, 'fwtjxhldt') !== false)){
                        unset($item[$k]);
                        continue;
                    }
                    foreach ($exp as $kk => $vv) {
                         if($vv){
                            $item['fwtj']['xh'][] = $vv;
                        }
                    }
                }elseif(strpos($k, 'fwtjyz') !== false){//防伪分组烟支
                    if(strpos($k, 'fwtjyzqt') !== false){
                        //烟支其它-列表
                        foreach ($exp as $kk => $vv) {
                             if($vv){
                                $item['fwtj']['yz'][] = $vv;
                            }
                        }
                    }
                }else{//其他详细参数
                    $proSpecInfo = $this->productSpec->getOneDarry(['mark' => $k]);
                    if($proSpecInfo['status'] != 1){
                        $ht .= '<tr><td>'.$proSpecInfo['title'].'</td><td>'.$item[$k].'</td></tr>';//产品参数
                    }
                }
                unset($item[$k]);
            }
        }else{
            $ht .= '未设置产品参数';
        }
        $ht .= $this->hFoot;
        $item['detail'] = $ht;

        //机型参数
        if($mid == 51){
            $ht1 .= '手工包装';  
        }else{
            if($mItem){
                foreach ($mItem as $k => $v) {
                    $mItem[$k] = $v;

                    //属性值
                    $mItemInfo = $this->machineItem->getValue(['id' => $v], 'title');
                    $mItem[$k] = $mItemInfo ? $mItemInfo : ($mItem[$k] ? $mItem[$k] : '');

                    //多图拆解
                    // $macSpecInfo = $this->machineSpec->getValue(['mark' => $k], 'type');
                    $macSpecInfo = $this->machineSpec->getOneDarry(['mark' => $k]);
                    if($macSpecInfo['status'] != 1){
                        $ht1 .= '<tr><td>'.$macSpecInfo['title'].'</td><td>'.$mItem[$k].'</td></tr>';
                    }
                }
            }else{
                $ht1 .= '未设置机台参数';            
            }
            
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
