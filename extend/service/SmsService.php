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
    public static function smsBao($mobile, $smsContent)
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
    public static function smswm1($m, $p1, $p2)
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
    public static function smswm2($m, $p1, $p2, $p3)
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
}




