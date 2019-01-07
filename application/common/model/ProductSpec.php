<?php
/**
 * 规格 模型
 *
 * Class ProductSpec
 * @Space app\common\model
 * @Author pp <124910168@qq.com>
 * @Date 27th Sept. 2018
 */
namespace app\common\model;
use think\Db;
use think\Model;

class ProductSpec extends Model { 

    /** 返回某个字段的值
     * @param $where 查询条件
     * @param string $field 查询字段
     * @return mixed
     */
    public function getValue($where, $field="*"){
        return $this->where($where)->value($field);
    }

    /** 查询某一列的值 返回数组
     * @param $where 查询条件
     * @param string $field 指定索引
     * @return mixed
     */
    public function getColumn($where, $field="*"){
        return $this->where($where)->column($field);
    }

  /**查询一条数据
     * @param $where
     * @param string $field
     * @return array|false|\PDOStatement|string|Model
     */
  public function getOneDarry($where, $field="*"){
      $returndata = [];
      $data = $this->where($where)->field($field)->find();
      if(!empty($data)){
          $returndata = $data->toArray();
      }
      return $returndata;
  }
  
  //列表数据
  public function getLists($where = 1, $order = ['id'], $field = "*", $limit = 10){
     $lists = $this->where($where)->order($order)->field($field)->limit($limit)->select();
     $return_lists = [];
     foreach ($lists as $k => $v){
         $return_lists[$k] = $v->toArray();
     }
     return $return_lists;
  }

  //分页数据
  public function getPageLists($where = 1, $order = ['id'], $field = "*", $p = 10){
    $lists = $this->where($where)->order($order)->paginate($p,false,['query' => request()->get()]);
    $page = $lists->render();
    $return_lists = [];
   foreach ($lists as $k => $v){
       $return_lists[$k] = $v->toArray();
   }
   return [$return_lists, $page];
  }

  //分页数据/接口用
  public function getNewPageLists($where = 1, $order = ['id'], $field = "*", $page = 1, $size = 10){
    $lists = $this->where($where)->order($order)->page($page, $size)->select();
    $return_lists = [];
   foreach ($lists as $k => $v){
       $return_lists[$k] = $v->toArray();
   }
   return $return_lists;
  }
}
