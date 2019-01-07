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

/**
 * 机型 控制器
 * Class Machine
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Machine extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Machine';
    public $specs;

    function __construct(){
        parent::__construct();
        // $e  =json_encode([1,2]);
        // halt($e);
        $this->machineSpec = model('common/MachineSpec');
        $this->machineItem = model('common/MachineItem');
        $this->product = model('common/Product');
        $products = $this->product->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,sort',0);
        $specs = $this->machineSpec->getLists(['status' => 0, 'is_deleted' => 0], 'sort asc,id asc', 'id,title,desc,type,mark',0);
        foreach ($specs as $k => $v) {
            $specs[$k]['items'] = $this->machineItem->getLists(['status' => 0, 'is_deleted' => 0, 'spec_id' => $v['id']], 'sort asc,id asc', 'id,title,desc',0);
        }
        // halt($products);
        $this->specs = $specs;
        $this->assign('specs',$this->specs);
        $this->assign('products',$products);
    }

    /**
     * 机型列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        // $pattern = '/^11[1-4]{1}1[A-B]{1}(0[1-9]|1[0-2]){1}$/';//FK700(1)
        // $m = preg_match($pattern, '1141A12', $matches);
        
        // $pattern = '/^11[1-4]{1}06(0[1-9]|1[0-2]){1}$/';//GDX2000(6)
        // $m = preg_match($pattern, '1140601', $matches);
        
        // $pattern = '/^06[1-4]{1}6[A-B]{1}(0[1-9]|1[0-2]){1}$/';//FX(16)
        // $m = preg_match($pattern, '0646A01', $matches);
        
        // $pattern = '/^06[1-4]{1}21(0[1-9]|1[0-2]){1}$/';//FK350(21)
        // $m = preg_match($pattern, '0642101', $matches);
        
        // $pattern = '/^06[1-4]{1}56(0[1-9]|1[0-2]){1}$/';//ZB48(56)
        // $m = preg_match($pattern, '0645601', $matches);
        
        // $pattern = '/^[1-4]{1}11(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/';//GDX2000(11)
        // $m = preg_match($pattern, '4110131', $matches);
        // halt($matches);
        
        // $d = Db::name('machine')->select();
        // foreach ($d as $k => $v) {
        //     Db::name('machine')->where(['id' => $v['id']])->update(['pattern' => '/'.$v['pattern'].'/']);
        // }
        // halt($d);
        $this->title = '机型管理';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['title', 'type', 'desc'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            // $db->whereBetween('login_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
            $db->whereBetween('create_at', [strtotime("{$start} 00:00:00"), strtotime("{$end} 23:59:59")]);
        }
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
            // $vo['item'] = unserialize(base64_decode($vo['item']));
            $vo['item'] = json_decode($vo['item'], true);
        }
        // halt($data);
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
            if (isset($data['pid']) && is_array($data['pid'])) {
                $data['pid'] = join(',', $data['pid']);
            } else {
                $data['pid'] = '';
            }
            if (isset($data['item']) && is_array($data['item'])) {
                // if(isset($data['item']['cj'])){
                //     $data['cj'] = $data['item']['cj'];
                // }
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
            //  elseif ($this->machineItem->getValue(['title' => $data['cpmc']],'title') > 0) {
            //     $this->error('名称已经存在，请使用其它名称！');
            // }
        } else {
            // halt($data);
            // $data['item'] = unserialize(base64_decode(isset($data['item']) ? $data['item'] : ''));
            $data['pid'] = explode(',', isset($data['pid']) ? $data['pid'] : '');
            $data['item'] = json_decode(isset($data['item']) ? $data['item'] : '', true);
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

}
