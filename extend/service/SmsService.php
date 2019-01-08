<?php

// +----------------------------------------------------------------------
// | Apprh.Shop
// +----------------------------------------------------------------------
// | Copyright (c) 2017-2027 http://www.apprh.com All rights reserved.
// +----------------------------------------------------------------------
// | Notice: This code is not open source, it is strictly prohibited
// |         to distribute the copy, otherwise it will pursue its
// |         legal responsibility.
// +----------------------------------------------------------------------
// | Author: 雲溪荏苒 <290648237@qq.com>
// +----------------------------------------------------------------------

namespace service;

class SmsService
{

    /**
     * 短信宝接口
     * @param int $mobile 手机号
     * @param string $smsContent 短信内容
     * @return array
     */
    public static function sms_bao($mobile, $smsContent)
    {
        $statusStr = array(
            "0" => "短信发送成功",
            "-1" => "参数不全",
            "-2" => "服务器空间不支持,请确认支持curl或者fsocket，联系您的空间商解决或者更换空间！",
            "30" => "密码错误",
            "40" => "账号不存在",
            "41" => "余额不足",
            "42" => "帐户已过期",
            "43" => "IP地址限制",
            "50" => "内容含有敏感词"
        );

        $smsapi = "http://www.smsbao.com/"; //短信网关
        $user = sysconf('sms_uid'); //短信平台帐号
        $pass = md5(sysconf('sms_pwd')); //短信平台密码
        $phone = $mobile;
        $sendurl = $smsapi."sms?u=".$user."&p=".$pass."&m=".$phone."&c=".urlencode($smsContent);
        $result = file_get_contents($sendurl) ;

        $data = [
            'code' => $result,
            'message' => $statusStr[$result]
        ];

        return $data;
    }

    /**
     * 微米接口1
     * @param int $m 手机号
     * @param string $p1 短信内容1
     * @param string $p2 短信内容2
     * @return array
     */
    public static function sms_weimi1($m, $p1, $p2)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "http://api.weimi.cc/2/sms/send.html");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        /*
        短信接口一，自写短信内容。该接口提交的短信均由人工审核，下发后请联系在线客服。适合：节假日祝福、会员营销群发等。
        1、设定微米账号的接口UID和接口密码
        2、传入目标手机号码，多个以“,”分隔，一次性调用最多100个号码，示例：139********,138********
        3、传入短信内容。必须设置好短信签名，签名规范：
            1）短信内容一定要带签名，签名放在短信内容的最前面；
            2）签名格式：【***】，签名内容为三个汉字以上（包括三个）；
            3）短信内容不允许双签名，即短信内容里只有一个“【】”
        */
        curl_setopt($ch, CURLOPT_POSTFIELDS, 'uid='.sysconf('sms_uid').'&pas='.sysconf('sms_pwd').'&mob='.$m.'&cid=LfPb0wlle0XF&p1='.$p1.'&p2='.$p2.'&type=json');
        $res = curl_exec( $ch );
        curl_close( $ch );
        // echo($res);

        return $res;
    }

    /**
     * 微米接口2
     * @param int $m 手机号
     * @param string $p1 短信内容1
     * @param string $p2 短信内容2
     * @param string $p3 短信内容3
     * @return array
     */
    public static function sms_weimi2($m, $p1, $p2, $p3)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "http://api.weimi.cc/2/sms/send.html");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, 'uid='.sysconf('sms_uid').'&pas='.sysconf('sms_pwd').'&mob='.$m.'&cid=rXiUfU0ttBWV&p1='.$p1.'&p2='.$p2.'&p3='.$p3.'&type=json');
        $res = curl_exec( $ch );
        curl_close( $ch );
        // echo($res);

        return $res;
    }

    //聚合短信
    function sms_juhe($m, $code){
            /*
            ***聚合数据（JUHE.CN）短信API服务接口PHP请求示例源码
            ***DATE:2015-05-25
        */
        header('content-type:text/html;charset=utf-8');
          
        $sendUrl = 'http://v.juhe.cn/sms/send'; //短信接口的URL
          
        $smsConf = array(
            'key'   => sysconf('sms_juhe_key'), //您申请的APPKEY
            'mobile'    => $m, //接受短信的用户手机号码
            'tpl_id'    => sysconf('sms_juhe_tpl_id'), //您申请的短信模板ID，根据实际情况修改
            'tpl_value' =>'#code#='.$code //您设置的模板变量，根据实际情况修改
        );
         
        $content = juhecurl($sendUrl,$smsConf,1); //请求发送短信
         
        if($content){
            $result = json_decode($content,true);
            $error_code = $result['error_code'];
            if($error_code == 0){
                //状态为0，说明短信发送成功
                return ['code' => $error_code, 'data' => $result['result']['sid'], 'msg' => "短信发送成功"];
            }else{
                //状态非0，说明失败
                $msg = $result['reason'];
                return ['code' => $error_code, 'data' => $msg, 'msg' => "短信发送失败"];
            }
        }else{
            //返回内容异常，以下可根据业务逻辑自行修改
            return ['code' => $error_code, 'data' => null, 'msg' => "请求发送短信失败"];
        }
    }
     
    /**
     * 请求接口返回内容
     * @param  string $url [请求的URL地址]
     * @param  string $params [请求的参数]
     * @param  int $ipost [是否采用POST形式]
     * @return  string
     */
    function juhecurl($url,$params=false,$ispost=0){
        $httpInfo = array();
        $ch = curl_init();
        curl_setopt( $ch, CURLOPT_HTTP_VERSION , CURL_HTTP_VERSION_1_1 );
        curl_setopt( $ch, CURLOPT_USERAGENT , 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22' );
        curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT , 30 );
        curl_setopt( $ch, CURLOPT_TIMEOUT , 30);
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER , true );
        if( $ispost )
        {
            curl_setopt( $ch , CURLOPT_POST , true );
            curl_setopt( $ch , CURLOPT_POSTFIELDS , $params );
            curl_setopt( $ch , CURLOPT_URL , $url );
        }
        else
        {
            if($params){
                curl_setopt( $ch , CURLOPT_URL , $url.'?'.$params );
            }else{
                curl_setopt( $ch , CURLOPT_URL , $url);
            }
        }
        $response = curl_exec( $ch );
        if ($response === FALSE) {
            //echo "cURL Error: " . curl_error($ch);
            return false;
        }
        $httpCode = curl_getinfo( $ch , CURLINFO_HTTP_CODE );
        $httpInfo = array_merge( $httpInfo , curl_getinfo( $ch ) );
        curl_close( $ch );
        return $response;
    }
}




