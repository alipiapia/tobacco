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
 * 文件资料 控制器
 * Class Document
 * @package app\admin\controller
 * @author Anyon <zoujingli@qq.com>
 * @date 2017/02/15 18:12
 */
class Document extends BasicAdmin
{

    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Document';
    public $specs;

    public function __construct(){
        parent::__construct();
        $this->assign('roles', config('pp.role_type'));
        $this->assign('docs', config('pp.doc_type'));
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
        $this->title = '文件资料';
        list($get, $db) = [$this->request->get(), Db::name($this->table)];
        foreach (['type', 'title', 'desc'] as $key) {
            if(isset($get[$key]) && $get[$key] !== ''){                
                if($key == 'type'){
                    $db->where($key, $get[$key]);
                }else{
                    $db->whereLike($key, "%{$get[$key]}%");
                }
            };
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
            // halt(strlen($vo['item']));
            // $vo['item'] = unserialize(base64_decode($vo['item']));
            // $vo['item'] = json_decode($vo['item'], true);
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
            if(!($data['file'])){
                $this->error('请上传文件');
            }else{
                $ext = strtolower(pathinfo($data['file'], 4));
                $data['ext'] = $ext;
                // halt($ext);
            }
            if(!isset($data['type'])){
                $this->error('请选择文件类型');
            }
            if (isset($data['role']) && is_array($data['role'])) {
                $data['role'] = join(',', $data['role']);
            } else {
                // $data['role'] = '';
                $this->error('请选择接收角色');
            }
            if (isset($data['id'])) {
                // unset($data['title']);
                $data['update_at'] = time();
            } else{
                $data['create_at'] = time();
                $data['create_by'] = session('user')['id'];
            }
            //  elseif ($this->productItem->getValue(['title' => $data['cpmc']],'title') > 0) {
            //     $this->error('名称已经存在，请使用其它名称！');
            // }
        } else {
            // halt($data);
            $data['role'] = explode(',', isset($data['role']) ? $data['role'] : '');
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
