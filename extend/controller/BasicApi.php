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

namespace controller;

use service\ToolsService;

/**
 * 基础接口类
 * Class BasicApi
 * @package controller
 */
class BasicApi
{

    /**
     * 当前请求对象
     * @var \think\Request
     */
    protected $request;
    protected $hHead =  '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no"><title>烟草</title><meta name="keywords" content="烟草" /><meta name="description" content="烟草" /><style>body {margin:0 auto;padding:0;font-family:"微软雅黑", Arial, Helvetica, sans-serif;font-size:13px;color:#333;text-align:center;background:#FFF;background-size:100% 100%;-moz-background-size: cover;background-size: cover;}div, form, img, ul, ol, li, dl, dt, dd, p {margin: 0;padding: 0;border: 0;list-style:none;}table, td, tr, th, input, select, textarea {font-size:13px;font-family:"微软雅黑";}.productdiv{width:96%;overflow:hidden;padding: 2%;background:#FFF;}.product_table{border-top:1px solid #ffe6cc;border-left:1px solid #ffe6cc;}.product_table td{border-bottom:1px solid #ffe6cc;border-right:1px solid #ffe6cc;padding:5px 10px;line-height:18px;text-align:left;}.product_font{background:#ffe6cc; color:#fe8100;font-weight:bold;font-size:15px;}</style></head><body><div class="productdiv"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="product_table">';
    protected $hFoot = '</table></div></body></html>';

    /**
     * 构造方法
     * BasicApi constructor.
     */
    public function __construct()
    {
        ToolsService::corsOptionsHandler();
        $this->request = app('request');
    }

    /**
     * 返回成功的操作
     * @param mixed $msg 消息内容
     * @param array $data 返回数据
     * @param integer $code 返回代码
     */
    protected function success($msg, $data = null, $code = 1)
    {
        ToolsService::success($msg, $data, $code);
    }

    /**
     * 返回失败的请求
     * @param mixed $msg 消息内容
     * @param array $data 返回数据
     * @param integer $code 返回代码
     */
    protected function error($msg, $data = null, $code = 0)
    {
        ToolsService::error($msg, $data, $code);
    }

}