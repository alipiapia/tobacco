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

use service\DataService;
use service\NodeService;
use think\Db;
use service\SmsService;

/**
 * 打印输出数据到文件
 * @param mixed $data 输出的数据
 * @param bool $force 强制替换
 * @param string|null $file
 */
function p($data, $force = false, $file = null)
{
    is_null($file) && $file = env('runtime_path') . date('Ymd') . '.txt';
    $str = (is_string($data) ? $data : (is_array($data) || is_object($data)) ? print_r($data, true) : var_export($data, true)) . PHP_EOL;
    $force ? file_put_contents($file, $str) : file_put_contents($file, $str, FILE_APPEND);
}

/**
 * RBAC节点权限验证
 * @param string $node
 * @return bool
 */
function auth($node)
{
    return NodeService::checkAuthNode($node);
}

/**
 * 设备或配置系统参数
 * @param string $name 参数名称
 * @param bool $value 默认是null为获取值，否则为更新
 * @return string|bool
 * @throws \think\Exception
 * @throws \think\exception\PDOException
 */
function sysconf($name, $value = null)
{
    static $config = [];
    if ($value !== null) {
        list($config, $data) = [[], ['name' => $name, 'value' => $value]];
        return DataService::save('SystemConfig', $data, 'name');
    }
    if (empty($config)) {
        $config = Db::name('SystemConfig')->column('name,value');
    }
    return isset($config[$name]) ? $config[$name] : '';
}

/**
 * 日期格式标准输出
 * @param string $datetime 输入日期
 * @param string $format 输出格式
 * @return false|string
 */
function format_datetime($datetime, $format = 'Y年m月d日 H:i:s')
{
    return date($format, strtotime($datetime));
}

/**
 * UTF8字符串加密
 * @param string $string
 * @return string
 */
function encode($string)
{
    list($chars, $length) = ['', strlen($string = iconv('utf-8', 'gbk', $string))];
    for ($i = 0; $i < $length; $i++) {
        $chars .= str_pad(base_convert(ord($string[$i]), 10, 36), 2, 0, 0);
    }
    return $chars;
}

/**
 * UTF8字符串解密
 * @param string $string
 * @return string
 */
function decode($string)
{
    $chars = '';
    foreach (str_split($string, 2) as $char) {
        $chars .= chr(intval(base_convert($char, 36, 10)));
    }
    return iconv('gbk', 'utf-8', $chars);
}

/**
 * 下载远程文件到本地
 * @param string $url 远程图片地址
 * @return string
 */
function local_image($url)
{
    return \service\FileService::download($url)['url'];
}

//快捷访问某字段
function get_model_value($where, $m, $field){
    $maps = [];
    if(is_array($where)){
        $maps = $where;
    }else{
        $maps['id'] = (int)$where;
        // if(strtolower($m) == "area"){
        //     $maps = ['area_id' => $where];
        // }elseif(strtolower($m) == "businesscompany"){
        //     if((int)$where == 0){
        //         return '';                
        //     }
        // }
    }
    $db = db($m);

    // if(strtolower($m) == "systemuser"){
    //     $db = Db::connect(config('dbx.SU'))->name($m);       
    // }

    // if(strtolower($m) == "area"){
    //     $db = Db::connect(config('dbx.SU'))->name($m);       
    // }

    return $db->where($maps)->value($field);
}

//根据id获取规格属性
function get_p_item($id)
{
    return db::name("ProductItem")->where(['id' => $id])->value('title');
}

//反序列化
function mb_unserialize($str) {
    return preg_replace_callback('#s:(\d+):"(.*?)";#s',function($match){return 's:'.strlen($match[2]).':"'.$match[2].'";';},$str);
}

//生成随机验证码
function create_smscode($length = 4){
    $min = pow(10 , ($length - 1));
    $max = pow(10, $length) - 1;
    return rand($min, $max);
}

/**
 * 生成短信验证码
 *  - 默认长度 6
 * @param int $length
 * @return string
 */
function create_code($length = 6) {
    return str_pad(mt_rand(0, pow(10, $length) - 1), $length, '0', STR_PAD_LEFT);
}

/**
 * 验证手机号是否正确
 * @author honfei
 * @param number $mobile
 */
function is_mobile($mobile) {
    if (!is_numeric($mobile)) {
        return false;
    }
    $p = '#^13[\d]{9}$|^14[5,7]{1}\d{8}$|^15[^4]{1}\d{8}$|^17[0,6,7,8]{1}\d{8}$|^18[\d]{9}$|^19[\d]{9}$#';
    return preg_match($p, $mobile) ? true : false;
}

//短信发送
function send_sms($phone, $code){
    // return ['code' => 0, 'msg' => '发送成功'];
    // return SmsService::sms_bao($phone, $code);
    // return SmsService::sms_juhe($phone, $code);
    return SmsService::sms_sub($phone, $code);
}

//地区名称查询上级+拼接
if (!function_exists('join_area_name')) {
    // function join_area_name($area_id){
    //     $cur_area = db("Area")->where(['area_id' => $area_id])->find();
    //     $cur_name = $cur_area['area_name'];
    //     if(isset($cur_area['area_parent_id'])){
    //        $cur_name = join_area_name($cur_area['area_parent_id']).' '.$cur_name;
    //     }
    //     return $cur_name;
    // }
    
    function join_area_name($area_id){
        $cur_area = Db::name("Area")->where(['area_id' => $area_id])->field('area_id,area_name,area_parent_id')->find();
        $cur_name = $cur_area['area_name'];
        if(isset($cur_area['area_parent_id'])){
            $cur_area1 = Db::name("Area")->where(['area_id' => $cur_area['area_parent_id']])->field('area_id,area_name,area_parent_id')->find();
            $cur_name = $cur_area1['area_name'].' '.$cur_name;
            if(isset($cur_area1['area_parent_id'])){
                $cur_area2 = Db::name("Area")->where(['area_id' => $cur_area1['area_parent_id']])->field('area_id,area_name,area_parent_id')->find();
                $cur_name = $cur_area2['area_name'].' '.$cur_name;
                if(isset($cur_area2['area_parent_id'])){
                    $cur_area3 = Db::name("Area")->where(['area_id' => $cur_area2['area_parent_id']])->field('area_id,area_name,area_parent_id')->find();
                    $cur_name = $cur_area3['area_name'].' '.$cur_name;
                }
            }
        }
        return $cur_name;
    }
}

if (!function_exists('get_level_pid')) {
    /**
     * 获取联动等级和父级id
     * @param string $table 表名
     * @param int $id 主键值
     * @param string $id_field 主键名
     * @param string $pid_field pid字段名
     * @return mixed
     * @author andy <290648237@qq.com>
     */
    function get_level_pid($table = '', $id = 1, $id_field = 'id', $pid_field = 'pid')
    {
        return Db::name($table)->where($id_field, $id)->value($pid_field);
    }
}

if (!function_exists('get_level_key_data')) {
    /**
     * 反向获取联动数据
     * @param string $table 表名
     * @param string $id 主键值
     * @param string $id_field 主键名
     * @param string $name_field name字段名
     * @param string $pid_field pid字段名
     * @param int $level 级别
     * @return array
     * @author andy <290648237@qq.com>
     */
    function get_level_key_data($table = '', $id = '', $id_field = 'id', $name_field = 'name', $pid_field = 'pid', $level = 1)
    {
        $result = [];
        $level_pid = get_level_pid($table, $id, $id_field, $pid_field);
        $level_key[$level] = $level_pid;
        $level_data[$level] = get_level_data($table, $level_pid, $pid_field);

        if ($level_pid != 0) {
            $data = get_level_key_data($table, $level_pid, $id_field, $name_field, $pid_field, $level + 1);
            $level_key = $level_key + $data['key'];
            $level_data = $level_data + $data['data'];
        }
        $result['key'] = $level_key;
        $result['data'] = $level_data;

        return $result;
    }
}