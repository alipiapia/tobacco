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
 * 规格属性 控制器
 * Class MachineItem
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class MachineItem extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'MachineItem';
    public $machineSpec;

    function __construct(){
        parent::__construct();
        $this->machineSpec = model('common/MachineSpec');
        $this->specs = $this->machineSpec->getColumn(['status' => 0, 'is_deleted' => 0], 'id,title,desc');
        $this->assign('specs',$this->specs);
        // halt($this->specs);
    }

    /**
     * 规格列表
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    public function index()
    {
        $this->title = '机器规格属性管理';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['title', 'desc'] as $key) {
            (isset($get[$key]) && $get[$key] !== '') && $db->whereLike($key, "%{$get[$key]}%");
        }
        if (isset($get['spec_id']) && $get['spec_id'] !== '') {
            $db->where('spec_id', $get['spec_id']);
        }
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            // $db->whereBetween('login_at', ["{$start} 00:00:00", "{$end} 23:59:59"]);
            $db->whereBetween('create_at', [strtotime("{$start} 00:00:00"), strtotime("{$end} 23:59:59")]);
        }
        return parent::_list($db->where(['is_deleted' => '0']));
    }

    /**
     * 列表数据处理
     * @param array $data
     */
    protected function _index_data_filter(&$data)
    {
        // foreach ($data as &$vo) {
        //     $vo['ids'] = join(',', ToolsService::getArrSubIds($data, $vo['id']));
        // }
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
            // if (isset($data['type']) && is_array($data['type'])) {
            //     $data['type'] = join(',', $data['type']);
            // } else {
            //     $data['type'] = '';
            // }
            
            if(!isset($data['id'])){
                $data['create_at'] = time();
            }
            if (isset($data['id'])) {
                // unset($data['title']);
                $data['update_at'] = time();
            } elseif (Db::name($this->table)->where(['title' => $data['title'], 'spec_id' => $data['spec_id']])->count() > 0) {
                $this->error('名称已经存在，请使用其它名称！');
            }
        } else {
            // $data['type'] = explode(',', isset($data['type']) ? $data['type'] : '');
            // $this->assign('spec_type', $this->spec_type);
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