<?php


namespace app\admin\controller;

use service\DataService;
use service\ToolsService;
use controller\BasicAdmin;
use think\Db;

/**
 * 地区管理
 * Class Area
 * @package app\admin\controller
 */
class Area extends BasicAdmin
{
    /**
     * 指定当前数据表
     * @var string
     */
    public $table = 'Area';

    /**
     * 显示地区列表
     */
    public function index() {
        $alert = [
            'type'    => 'info',
            'title'   => '操作提示',
            'content' => '
                全站所有涉及的地区均来源于此处，强烈建议对此处谨慎操作。<br/>
                所属大区为默认的全国性的几大区域，只有省级地区才需要填写大区域，目前全国几大区域有：华北、东北、华东、华南、华中、西南、西北、港澳台、海外<br/>
                所在层级为该地区的所在的层级深度，如北京>北京市>朝阳区,其中北京层级为1，北京市层级为2，朝阳区层级为3<br/>
                点击地区名前“+”符号，显示当前地区的下级地区<br/>
                对地区作任何更改后，都会直接更新地区缓存<br/>
                在“地区管理”模块中删除数据时同时将“商家配送范围”关联的数据删除'
        ];
        $this->assign('alert', $alert);

        $this->title = '网站栏目管理';

        $map['area_parent_id'] = $this->request->param('pid', 0); // 默认获取一级地区
        $db = Db::name($this->table)->order('area_sort asc, area_id asc')->where($map);
        return parent::_list($db, false);
    }

    /**
     * 保存节点变更
     */
    public function save() {
        if ($this->request->isPost()) {
            $post = $this->request->post();
            if (isset($post['name']) && isset($post['value'])) {
                $nameattr = explode('.', $post['name']);
                $field = array_shift($nameattr);
                $data = ['area_id' => join(',', $nameattr), $field => $post['value']];

                DataService::save($this->table, $data, 'area_id');
                $this->success('参数保存成功！', '');
            }
        } else {
            $this->error('访问异常，请重新进入...');
        }
    }

    /**
     * 列表数据处理
     * @param array $data
     */
    protected function _index_data_filter(&$data) {
        foreach ($data as &$vo) {
            $vo['ids'] = join(',', ToolsService::getArrSubIds($data, $vo['area_id'], 'area_id', 'area_parent_id'));
        }
    }

    /**
     * 添加地区
     */
    public function add() {
        return $this->_form($this->table, 'form', 'area_id');
    }

    /**
     * 编辑地区
     */
    public function edit() {
        return $this->add();
    }

    /**
     * 删除地区
     */
    public function del() {
        if (DataService::update($this->table)) {
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }

    /**
     * 地区 表单数据前缀方法
     * @param array $vo
     */
    protected function _form_filter(&$vo) {

        $pid = $this->request->param('area_parent_id');

        if ($this->request->isGet()) {
            // 地区处理
            $areaList = Db::name($this->table)->order('area_sort asc, area_id asc')->whereBetween('area_deep', [1,2])->select();
            $areaList = ToolsService::arr2table($areaList, 'area_id', 'area_parent_id');
            $this->assign('areaList', $areaList);

            if($pid){
                $vo['area_parent_id'] = $pid;
            }
        }

        if($this->request->isPost()) {
            $area_deep = get_level_pid($this->table, $pid, 'area_id','area_deep');
            $vo['area_deep'] = $area_deep + 1;
        }
    }

    public function ajaxGetArea()
    {
        $map['area_parent_id'] = $this->request->param('area_parent_id'); // 默认获取一级地区
        $datas = Db::name($this->table)->order('area_sort asc, area_id asc')->where($map)->select();

        foreach ($datas as $key=>$data) {
            // 判断region是否为null
            if($data['area_region'] == null) {
                $datas[$key]['area_region'] = '';
            }

            $datas[$key]['add_url'] = url('/').'admin.html#'.url('add').'?area_parent_id='.$data['area_id'];
            $datas[$key]['edit_url'] = url('/').'admin.html#'.url('edit').'?area_id='.$data['area_id'].'&area_parent_id='.$data['area_parent_id'];
            $datas[$key]['delete_url'] = url('/').'admin.html#'.url('del');
            $datas[$key]['auth_add'] = auth("admin/area/add");
            $datas[$key]['auth_close'] = auth("admin/area/close");
            $datas[$key]['close_url'] = url('#/Area/close');
            $datas[$key]['auth_open'] = auth("admin/area/open");
            $datas[$key]['open_url'] = url('#/Area/open');

            $datas[$key]['auth_edit'] = auth("admin/area/edit");
            $datas[$key]['auth_del'] = auth("admin/area/del");
            $datas[$key]['auth_save'] = auth("admin/area/save");

            $datas[$key]['save_url'] = url('/').'admin.html#'.url('save');


            // 查找是否有下级地区
            $hasChild = Db::name($this->table)->where('area_parent_id', $data['area_id'])->count();

            if($hasChild > 0){
                $datas[$key]['have_child'] = 1;
            }
        }

       return json($datas);
    }

    /**
     * 关闭地区
     */
    public function close() {
        if (DataService::update($this->table)) {
            $this->success("关闭成功！", '');
        }
        $this->error("关闭失败，请稍候再试！");
    }

    /**
     * 开启地区
     */
    public function open() {
        if (DataService::update($this->table)) {
            $this->success("开启成功！", '');
        }
        $this->error("开启失败，请稍候再试！");
    }

}
