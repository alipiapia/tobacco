<?php

namespace service;

use think\Db;
use think\db\Query;

class HxService
{
    

    private $app_key = '1104181224107438#ynht-kunming-chinesetobacco';

    private $client_id = 'YXA6rxK6sAcnEemQ6hlR-flPGw';

    private $client_secret = 'YXA6N0Iwerta1yTfmts69ikU7XOYkXQ';

    private $url = "https://a1.easemob.com/1104181224107438/ynht-kunming-chinesetobacco";
    /*
     * 获取APP管理员Token
     */
    function __construct()
    {
        $url = $this->url . "/token";
        $data = array(
            'grant_type' => 'client_credentials',
            'client_id' => $this->client_id,
            'client_secret' => $this->client_secret
        );
        $rs = json_decode($this->curl($url, $data), true);
        $this->token = $rs['access_token'];
        // halt($this->token);
    }
    /*
     * 注册IM用户(授权注册)
     */
    public function hx_register($username, $password, $nickname)
    {
        $url = $this->url . "/users";
        $data = array(
            'username' => $username,
            'password' => $password,
            'nickname' => $nickname
        );
        $header = array(
            'Content-Type: application/json',
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, $data, $header, "POST");
    }
    /*
     * 给IM用户的添加好友
     */
    public function hx_contacts($owner_username, $friend_username)
    {
        $url = $this->url . "/users/${owner_username}/contacts/users/${friend_username}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "POST");
    }
    /*
     * 解除IM用户的好友关系
     */
    public function hx_contacts_delete($owner_username, $friend_username)
    {
        $url = $this->url . "/users/${owner_username}/contacts/users/${friend_username}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "DELETE");
    }
    /*
     * 查看好友
     */
    public function hx_contacts_user($owner_username)
    {
        $url = $this->url . "/users/${owner_username}/contacts/users";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "GET");
    }
    
    /* 发送文本消息 */
    public function hx_send($sender, $receiver, $msg)
    {
        $url = $this->url . "/messages";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        $data = array(
            'target_type' => 'users',
            'target' => array(
                '0' => $receiver
            ),
            'msg' => array(
                'type' => "txt",
                'msg' => $msg
            ),
            'from' => $sender,
            'ext' => array(
                'attr1' => 'v1',
                'attr2' => "v2"
            )
        );
        return $this->curl($url, $data, $header, "POST");
    }
    /* 查询离线消息数 获取一个IM用户的离线消息数 */
    public function hx_msg_count($owner_username)
    {
        $url = $this->url . "/users/${owner_username}/offline_msg_count";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "GET");
    }
    
    /*
     * 获取IM用户[单个]
     */
    public function hx_user_info($username)
    {
        $url = $this->url . "/users/${username}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "GET");
    }
    /*
     * 获取IM用户[批量]
     */
    public function hx_user_infos($limit)
    {
        $url = $this->url . "/users?${limit}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "GET");
    }
    /*
     * 重置IM用户密码
     */
    public function hx_user_update_password($username, $newpassword)
    {
        $url = $this->url . "/users/${username}/password";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        $data['newpassword'] = $newpassword;
        return $this->curl($url, $data, $header, "PUT");
    }
    
    /*
     * 删除IM用户[单个]
     */
    public function hx_user_delete($username)
    {
        $url = $this->url . "/users/${username}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "DELETE");
    }
    /*
     * 修改用户昵称
     */
    public function hx_user_update_nickname($username, $nickname)
    {
        $url = $this->url . "/users/${username}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        $data['nickname'] = $nickname;
        return $this->curl($url, $data, $header, "PUT");
    }
    /*
     * 账号禁用
     */
    public function hx_user_deactivate($username)
    {
        $url = $this->url . "/users/${username}/deactivate";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "POST");
    }
    /*
     * 账号解禁
     */
    public function hx_user_activate($username)
    {
        $url = $this->url . "/users/${username}/activate";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "POST");
    }
    /*
     * 历史消息文件
     */
    public function hx_chat_messages($time)
    {
        $url = $this->url . "/chatmessages/${time}";
        $header = array(
            'Authorization: Bearer ' . $this->token
        );
        return $this->curl($url, "", $header, "GET");
    }

    // public function getChatTime($time){
    //    $url=$this->url.'chatmessages/'.$time;
    //    $header=array($this->getToken());
    //    $result=$this->postCurl($url,'',$header,"GET");
    //    return $result;
    // }
 
    /*
     * 下载聊天文件
     * 目录补充
     * 2018-01-31
     * mzj
     * @parem : $time 2018013014   时间
     * @parem : $path   保存的路径
     * */
    public function downContent($time,$path){
        $result = $this->hx_chat_messages($time);//调用下载方法
        $result = json_decode($result,true);
        // return $result;
        //设置路径
        $path = $path ? $path : '../../../static';
        if(isset($result['error'])) return '该时段暂无数据1';
        if(!isset($result['data'][0]['url'])) return '该时段暂无数据2';
        $downData = $this->httpcopy($result['data'][0]['url'],$path);
        if($downData == 'fail') return '下载失败';
        $ungz = $this->unzipGz($downData);
        if($ungz == 'fail') return '解压失败';
        if(!file_exists($path.''.$ungz)) return '文件不存在';
        $txt = file_get_contents($path.''.$ungz);
        if(empty(trim($txt))) return '该时段暂无数据';
        $aa = explode("\n",trim($txt));
        foreach($aa as $key => $val){
            $info[$key] = json_decode($val,true);
        }
        return $info;
        echo "<pre>";
        print_r($info);die;
    }
 
    /*
     * 下载远程文件
     * mzj
     * 2018-01-31
     * */
    public function httpcopy($url,$path, $files="", $timeout=60) {
        $path = $path ? $path : '../down/';
        $file_a = empty($files) ? pathinfo($url,PATHINFO_BASENAME) : $files;
        //分割
        $file = explode('?',$file_a)[0];
        $dir = pathinfo($file,PATHINFO_DIRNAME);
        !is_dir($dir) && @mkdir($dir,0755,true);
        $url = str_replace(" ","%20",$url);
 
        if(!function_exists('curl_init')) {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            $temp = curl_exec($ch);
            if(@file_put_contents($path.''.$file, $temp) && !curl_error($ch)) {
                return $path.''.$file;
            } else {
                return 'fail';
            }
        } else {
            $opts = array(
                "http"=>array(
                    "method"=>"GET",
                    "header"=>"",
                    "timeout"=>$timeout
                )
            );
            $context = stream_context_create($opts);
            if(@copy($url, $path.''.$file, $context)) {
                //$http_response_header
                return $path.''.$file;
            } else {
                return 'fail';
            }
        }
    }
 
    /*
     * 解压gz压缩包
     * mzj
     * 2018-01-31
     * @parem:gz_file   文件路径
     * */
    public function unzipGz($gz_file){
        $buffer_size = 4096; // read 4kb at a time
        $out_file_name = str_replace('.gz', '', $gz_file);
        $file = gzopen($gz_file, 'rb');
        $out_file = fopen($out_file_name, 'wb');
        $str='';
        if(!gzeof($file)) {
            fwrite($out_file, gzread($file, $buffer_size));
            fclose($out_file);
            gzclose($file);
            return $out_file_name;
        } else {
            return 'fail';
        }
    }
    /*
     *
     * curl
     */
    private function curl($url, $data, $header = false, $method = "POST")
    {
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        if ($header) {
            curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        }
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, $method);
        if ($data) {
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        }
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        $ret = curl_exec($ch);
        return $ret;
    }
}

// $rs = new HxService();
// 注册的用户
//echo $rs->hx_register('qwerasd', 'qazwsx', '福州123' );
// 给IM用户的添加好友
// echo $rs->hx_contacts('admin888', 'qwerasd');
/* 发送文本消息 */
// echo $rs->hx_send('213123','admin888','dfadsr214wefaedf');
/* 消息数统计 */
// echo $rs->hx_msg_count('admin888');
/* 获取IM用户[单个] */
// echo $rs->hx_user_info('admin888');
/* 获取IM用户[批量] */
 // echo $rs->hx_user_infos('20');
/* 删除IM用户[单个] */
// echo $rs->hx_user_delete('wwwwww');
/* 修改用户昵称 */
// echo $rs->hx_user_update_nickname('asaxcfasdd','网络科技');
/* 重置IM用户密码 */
// echo $rs->hx_user_update_password('asaxcfasdd','asdad');
/* 解除IM用户的好友关系 */
// echo $rs->hx_contacts_delete('admin888', 'qqqqqqqq');
/* 查看好友 */
//echo $rs->hx_contacts_user('admin888');