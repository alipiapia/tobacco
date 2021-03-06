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

namespace app\admin\controller;

use controller\BasicAdmin;
use service\DataService;
use service\ToolsService;
use think\Db;
use think\db\Where;

/**
 * 产品 控制器
 * Class Product
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Product extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Product';
    public $specs;

    public function __construct(){
        parent::__construct();
        $this->brand = model('common/Brand');
        $this->product = model('common/Product');
        $this->productSpec = model('common/ProductSpec');
        $this->productItem = model('common/ProductItem');
        $this->machine = model('common/Machine');
        $this->type = model('common/Type');
        $this->factory = model('common/Factory');
        $brands = $this->brand->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,sort',0);
        $factories = $this->factory->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,sort',0);
        // $machines = $this->machine->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,sort',0);
        $specs = $this->productSpec->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,type,mark,sort',0);
        foreach ($specs as $k => $v) {
            $specs[$k]['items'] = $this->productItem->getLists(['status' => 0, 'is_deleted' => 0, 'spec_id' => $v['id']], 'sort asc,id asc', 'id,title,desc',0);
        }
        // halt($specs);
        $this->specs = $specs;
        $this->assign('specs',$this->specs);
        $this->assign('brands',$brands);
        $this->assign('factories',$factories);
        // $this->assign('machines',$machines);
    }

    /**
     * 产品列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        $this->title = '产品管理';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['title', 'brand', 'fid', 'htxm', 'ttxm', 'status'] as $key) {
            if(isset($get[$key]) && $get[$key] !== ''){
                if($key == 'brand' || $key == 'fid' || $key == 'status'){
                    $db->where($key, $get[$key]);
                }else{
                    $db->whereLike($key, "%{$get[$key]}%");
                }
            }
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            // $db->whereBetween('login_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
            $db->whereBetween('create_at', [strtotime("{$start} 00:00:00"), strtotime("{$end} 23:59:59")]);
        }
        // halt($db);
        return parent::_list($db->where(['is_deleted' => 0]));
    }

    /**
     * 列表数据处理
     * @param array $data
     */
    protected function _index_data_filter(&$data)
    {
        // halt($data);
        foreach ($data as &$vo) {
            // halt(strlen($vo['item']));
            // $vo['item'] = unserialize(base64_decode($vo['item']));
            $vo['item'] = json_decode($vo['item'], true);
        }
         //halt($data);
        // $data = ToolsService::arr2table($data);
    }

    /**
     * 添加
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function add()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 编辑
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function edit()
    {
        return $this->_form($this->table, 'form');
    }

    /**
     * 表单数据默认处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function _form_filter(&$data)
    {
        if ($this->request->isPost()) {
            // halt($data);
            // if (isset($data['mid']) && is_array($data['mid'])) {
            //     $data['mid'] = join(',', $data['mid']);
            // } else {
            //     $data['mid'] = '';
            // }
            if (isset($data['item']) && is_array($data['item'])) {
                if(isset($data['item']['ttxm'])){
                    $data['ttxm'] = $data['item']['ttxm'];
                    // array_unshift($data['item'], ['ttxm' => $data['ttxm']]);
                }
                if(isset($data['item']['htxm'])){
                    $data['htxm'] = $data['item']['htxm'];
                    // array_unshift($data['item'], ['htxm' => $data['htxm']]);
                }
                // $data['item'] = base64_encode(serialize($data['item']));
                $data['item'] = json_encode($data['item']);
            } else {
                $data['item'] = '';
            }
            // halt($data);
            if (isset($data['id'])) {
                // unset($data['title']);
                $data['update_at'] = time();
            } else{
                $data['create_at'] = time();
            }
            //  elseif ($this->productItem->getValue(['title' => $data['cpmc']],'title') > 0) {
            //     $this->error('名称已经存在，请使用其它名称！');
            // }
        } else {
            // halt($data);
            // $data['item'] = unserialize(base64_decode(isset($data['item']) ? $data['item'] : ''));
            // $data['mid'] = explode(',', isset($data['mid']) ? $data['mid'] : '');
            $data['item'] = json_decode(isset($data['item']) ? $data['item'] : '', true);
            if(isset($data['id'])){
                $mMap = [
                        'status' => 0,
                        'is_deleted' => '0',
                        'pid' => [
                            ['eq', $data['id']],
                            ['like', "{$data['id']},%"],
                            ['like', "%,{$data['id']}"],
                            ['like', "%,{$data['id']},%"],
                            'or'
                        ]
                    ];
                $mMap = new Where($mMap);
                $mids = $this->machine->getColumn($mMap, 'type');
                $map['id'] = ['in', $mids];
                $map = new Where($map);
                // $mitem = $this->machine->getLists($map, '', 'id,title');
                $mitem = $this->type->getColumn($map,'id,title');
                $data['mitem'] = $mitem;
                // halt($mitem);
            }else{                
                $data['mitem'] = [];
            }
            // halt($data);
        }
    }

    /**
     * 删除
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del()
    {
        if (DataService::update($this->table)) {
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid()
    {
        if (DataService::update($this->table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        if (DataService::update($this->table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    //获取对应生产机构下产品
    public function _get_pros(){
        $fid = input('fid/d', 1);
        return $this->product->getLists(['status' => 0, 'is_deleted' => 0, 'fid' => $fid], 'sort asc,id asc', 'id,title',0);
    }

    //获取对应生产机构下产品html
    public function _get_pros_html(){
        $fid = input('fid/d', 0);
        $id = input('id/s');
        $pid = $this->machine->getValue(['id' => $id], 'pid');
        $pros = $this->product->getLists(['status' => 0, 'is_deleted' => 0, 'fid' => $fid], 'sort asc,id asc', 'id,title',0);
        // return $pid;
        $html = '';
        if($pros){
            foreach ($pros as $k => $v) {
                $html .= '<label class="think-checkbox">';
                if(in_array($v['id'], explode(',', $pid))){
                    $html .= '<input type="checkbox" checked name="pid[]" value="'.$v['id'].'" lay-ignore> '.$v['title'];
                }else{
                    $html .= '<input type="checkbox" name="pid[]" value="'.$v['id'].'" lay-ignore> '.$v['title'];
                }
                $html .= '</label>';
            }
        }else{
            $html = '<span class="color-desc" style="line-height:36px">暂无相关产品</span>';
        }
        return $html;
    }

}
