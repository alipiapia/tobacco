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
        $this->machineSpec = model('common/MachineSpec');
        $this->machineItem = model('common/MachineItem');
        $this->product = model('common/Product');
        $this->productSpec = model('common/ProductSpec');
        $this->productItem = model('common/ProductItem');
        $this->factory = model('common/Factory');
        $this->memberCollection = model('common/MemberCollection');
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
                    $mMap = [
                        'status' => 0,
                        'is_deleted' => '0',
                    ];
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

    //根据产品名称机台ids
    private function _getPMids($pname){
        $pMap = [
            'title' => ['like', "%{$pname}%"],
            'status' => 0,
            'is_deleted' => '0',
        ];
        $pids = $this->product->getColumn($pMap, 'id');
        halt($pids);
        $mMap['pid'] = [
            ['eq', $pid],
            ['like', "{$pid},%"],
            ['like', "%,{$pid}"],
            ['like', "%,{$pid},%"],
            'or'
        ];
        // halt($map);
        $mMap = new Where($mMap);
        $mids = $this->machine->getColumn($mMap, 'type');
        return array_unique($mids);
    }

    //根据产品名称模糊查询机型列表
    public function list(){
        if(!input('pname')){
            $this->error('产品参数错误');
        }
        $param = $this->request->param();
        // halt($param['pname']);
        $pMap = [
            'title' => ['like', "%{$param['pname']}%"],
            'status' => 0,
            'is_deleted' => '0',
        ];
        $pMap = new Where($pMap);
        $pids = $this->product->getColumn($pMap, 'id');
        // halt($pids);
        $mMap = $map = [
            // 'status' => 0,
            // 'is_deleted' => '0',
            // 'pid' => ['or'],
        ];
        $list = [];
        foreach ($pids as $k => $v) {
            // $mMap['pid'][$k] = [
            //     ['eq', $v],
            //     ['like', "{$v}%"],
            //     ['like', "%,{$v}"],
            //     ['like', "%,{$v},%"],
            // ];

            $mMap[$k] = [
            'status' => 0,
            'is_deleted' => '0',
            ];

            $mMap[$k]['pid'] = [
                ['eq', $v],
                ['like', "{$v},%"],
                ['like', "%,{$v}"],
                ['like', "%,{$v},%"],
                'or'
            ];

            // array_push($mMap['pid'], ['eq', $v]);
            // array_push($mMap['pid'], ['like', "{$v}%"]);
            // array_push($mMap['pid'], ['like', "%,{$v}"]);
            // array_push($mMap['pid'], ['like', "%,{$v},%"]);
            
            $mMap[$k] = new Where($mMap[$k]);
            $macs = $this->machine->getColumn($mMap[$k], 'type as id,type,id as mid');
            foreach ($macs as $kk => $vv) {
                unset($macs[$kk]['type']);
                unset($macs[$kk]['mid']);
                $macs[$kk]['pid'] = $v;
                $macs[$kk]['title'] = $this->type->getValue(['id' => $vv['type']], 'title');
                if(empty($list)){
                    $list = [$macs[$kk]];
                }else{
                    array_push($list, $macs[$kk]);
                }
            }
            // halt($macs);
            // array_push($list, $macs);
            // $map['id'] = ['in', $mids];
            // $list[$k] = $this->type->getColumn($map,'id,title');
            // $list[$k]['pid'] = $v;
        }
        // halt($list);
        $ret = a2p($list, $this->page, $this->size);
        $this->success('请求成功', $ret);
        // foreach ($list as $k => $v) {
            // $list[$k]['pid'] = input('pid');
        // }
        // $list = $list ? $list : null;
        // halt($list);
        // array_shift($mMap['pid']);
        // array_push($mMap['pid'], 'or');
        // halt($mMap['pid']);
        // $mMap = new Where($mMap);
        // $mids = $this->machine->getColumn($mMap, 'type');
        // halt($mids);
        // return array_unique($mids);
    }

    //钢印号搜索
    public function check()
    {
        $sn = input('sn');
        $pid = input('pid');
        $uid = input('uid');
        if(!$sn){
            $this->error('钢印号参数错误');
        }
        if(!$pid){
            $this->error('产品参数错误');
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
        $tids = $this->machine->getColumn($map22, 'type');
        $newPids  =[];
        foreach ($tids as $k => $v) {
            if($v){
                $newPids = array_unique(array_merge($newPids, [$v]));
            }
        }
        $map['id'] = ['in', $newPids];
        $map = new Where($map);
        $list = $this->type->getColumn($map, 'id');
        $list = $list ? $list[0] : null;
        if($list){
            $list = $this->formatItem($pid, $uid, $list, $mids[0]);
        }
        // halt($list);
        $this->success('请求成功', $list);
    }

    //机型参数详情
    public function info(){
        $id = input('id');
        $pid = input('pid');
        $uid = input('uid');
        $title = input('title','title');
        if(!$id){
            $this->error('机型参数错误');
        }
        if(!$pid){
            $this->error('产品参数错误');
        }
        if(!$uid){
            $this->error('用户参数错误');
        }
        $info = $this->formatItem($pid, $uid, $id, '');
        $this->success('请求成功', $info);
    }

    //根据钢印号查询机型
    private function getMids($sn){
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

    //item
    private function formatItem($pid, $uid, $id, $mid){

        if(!$mid){
            $mMaplist = ['type' => $id];
            $macs = $this->machine->getLists($mMaplist, 'id,title,type,item');
            foreach ($macs as $k => $v) {
                $macs[$k]['item'] = json_decode($v['item'], true);
                if(count($macs[$k]['item']) > 1){
                    $mid = $macs[$k]['id'];
                }else{
                    $mid = $macs[0]['id'];
                }
            }
            // halt($macs);
            if(empty($mid)){
                $this->error('找不到相关机型');
            }            
        }
            // halt($mid);
        
        $mMap = ['id' => $mid];
        $pMap = ['id' => $pid];
        $info = $this->product->getOneDarry($pMap);
        $machinInfo = $this->machine->getOneDarry($mMap, 'id,title,fid,type,item');
        $item = json_decode($info['item'], true);
        $mItem = json_decode($machinInfo['item'], true);
        $ht = $ht1 = $this->hHead;
        $factoryName = $this->factory->getValue(['id' => $machinInfo['fid']], 'title');
        $ht1 .= '<tr><td>生产机构</td><td>'.$factoryName.'</td></tr>';//生产机构
        $thii = $xhii = $yzii = 1;
        // halt($item);
        if($item){
            foreach ($item as $k => $v) {
                $item[$k] = $v;

                //属性值
                $itemInfo = $this->productItem->getValue(['id' => $v], 'title');
                $item[$k] = $itemInfo ? $itemInfo : ($item[$k] ? $item[$k] : '');

                //多图拆解
                $specInfo = $this->productSpec->getValue(['mark' => $k], 'type');
                //缩略图+实际图
                $exp = explode('|', $v);
                $exv = explode('-', $k);//机型id
                // unset($item[$k]);
                // $item[$k] = $exp;
                // halt($item[$k]);
                // halt($k);
                
                if((strpos($k, 'fwtjthgyh') !== false) || (strpos($k, 'fwtjthjd') !== false) || (strpos($k, 'fwtjthldt') !== false)){//防伪分组条盒
                    // halt($exv);
                    if(($exv[1] == $id)){//机型匹配
                        foreach ($exp as $kk => $vv) {
                             if($vv){
                                $item['th'][] = $vv;
                            }
                        }
                    }
                }elseif((strpos($k, 'fwtjxhgyh') !== false) || (strpos($k, 'fwtjxhjd') !== false) || (strpos($k, 'fwtjxhldt') !== false)){//防伪分组小盒
                    if(($exv[1] == $id)){//机型匹配
                        foreach ($exp as $kk => $vv) {
                             if($vv){
                                $item['xh'][] = $vv;
                            }
                        }                        
                    }
                }
                unset($item[$k]);
            }

            if(empty($item['th'])){
                $item['th'] = null;
            }
            if(empty($item['xh'])){
                $item['xh'] = null;
            }
        }else{
            // $ht .= '未设置产品参数';
        }
        // $ht .= $this->hFoot;
        // $item['detail'] = $ht;

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
                $ht1 .= '未配置机型参数';            
            }
            
        }
        $ht1 .= '</table></div></body></html>';
        $item['machine'] = $ht1;
        $info = array_merge($info, $item);
        unset($info['item']);
        return $info;
    }
}
