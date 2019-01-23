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
// | Author: alipiapia <124910168@qq.com>
// +----------------------------------------------------------------------

return [

    //当前应用编码
    'cur_app' => 1,

    //用户中心数据连接
    'SU' => 'mysql://root:root@127.0.0.1:3306/ggzq#utf8',
    // 'ZQ' => 'mysql://root:root@127.0.0.1:3306/ggzq#utf8',
    'FW' => 'mysql://root:root@127.0.0.1:3306/ggfw#utf8',
    'PP' => 'mysql://root:root@127.0.0.1:3306/ggpp#utf8',
    'PX' => 'mysql://root:root@127.0.0.1:3306/ggpx#utf8',
    'FP' => 'mysql://root:root@127.0.0.1:3306/ggfp#utf8',

    //站群管理系统1
    'ggzq' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggzq',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //公共服务站点2
    'ggfw' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggfw',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //公共品牌3
    'ggpp' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggpp',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //人才培训4
    'ggpx' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggpx',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //扶贫管理5
    'ggfp' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggfp',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //物流管理6
    'ggwl' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggwl',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //农产品追溯7
    'ggzs' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggzs',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //大数据8
    'ggdsj' => [
            'type'           => 'mysql',
            'hostname'       => 'localhost',
            'database'       => 'ggdsj',
            'username'       => 'root',
            'password'       => 'root',
            'hostport'       => '3306'
    ],

    //推荐
    'push' => [
        ['id' => 1, 'title' => '头条'],
        ['id' => 2, 'title' => '置顶'],
        ['id' => 3, 'title' => '热门'],
        ['id' => 4, 'title' => '幻灯片'],
    ],
];
