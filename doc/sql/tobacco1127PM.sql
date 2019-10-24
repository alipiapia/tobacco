/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : tobacco

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 27/11/2018 18:12:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for store_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_goods`;
CREATE TABLE `store_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '品牌ID',
  `cate_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类id',
  `unit_id` bigint(20) NULL DEFAULT NULL COMMENT '商品单位ID',
  `spec_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '规格ID',
  `tags_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品标签ID',
  `is_code` bigint(1) NULL DEFAULT 1 COMMENT '是否有码商品',
  `goods_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品标签',
  `goods_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品内容',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品LOGO',
  `goods_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片地址',
  `goods_video` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品视频URL',
  `goods_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品描述',
  `package_stock` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '总库存数量',
  `package_sale` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '已销售数量',
  `favorite_num` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '收藏次数',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_brand`;
CREATE TABLE `store_goods_brand`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_logo` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌logo',
  `brand_cover` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '品牌封面',
  `brand_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品品牌名称',
  `brand_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品品牌描述',
  `brand_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '品牌图文信息',
  `sort` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类排序',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品品牌' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_cate`;
CREATE TABLE `store_goods_cate`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '上级分类编号',
  `brand_id` bigint(20) NULL DEFAULT 0 COMMENT '品牌ID',
  `cate_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品分类名称',
  `cate_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品分类',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品分类排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_list`;
CREATE TABLE `store_goods_list`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品ID',
  `goods_spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格名称',
  `goods_number` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品礼品-商品数量',
  `market_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '销售价格',
  `selling_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品价格',
  `goods_stock` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品库存统计',
  `goods_sale` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '已销售数量',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_goods_spec
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_spec`;
CREATE TABLE `store_goods_spec`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mch_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商户ID',
  `spec_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格名称',
  `spec_param` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格参数',
  `spec_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格描述',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品规格排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_store_goods_spec_mch_id`(`mch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品规格' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `store_goods_stock`;
CREATE TABLE `store_goods_stock`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品ID',
  `goods_spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品属性',
  `goods_stock` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '商品库存',
  `stock_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品库存描述',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城商品库存' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_member
-- ----------------------------
DROP TABLE IF EXISTS `store_member`;
CREATE TABLE `store_member`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员微信OPENID',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员手机号',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员昵称',
  `headimg` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员头像',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '性别',
  `level` tinyint(2) UNSIGNED NULL DEFAULT 1 COMMENT '会员级别',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '会员个性签名',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '会员状态(1有效,0无效)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_store_member_openid`(`openid`) USING BTREE,
  INDEX `index_store_member_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城会员信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_member_address
-- ----------------------------
DROP TABLE IF EXISTS `store_member_address`;
CREATE TABLE `store_member_address`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址区域',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0无效, 1新快递)',
  `is_default` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '默认收货地址',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城会员收货地址' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_order
-- ----------------------------
DROP TABLE IF EXISTS `store_order`;
CREATE TABLE `store_order`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '订单类型(1普通订单,2积分订单)',
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `order_no` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单号',
  `freight_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '快递费',
  `goods_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品总金额(不含快递费)',
  `real_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '真实支付金额(商品金额+快递金额)',
  `is_pay` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '订单支付状态(0.未支付,1.已支付)',
  `pay_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '支付方式 (wechat微信支付, alipay支付宝支付)',
  `pay_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商户交易号',
  `pay_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '实际支付金额',
  `pay_at` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '订单描述',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '订单状态(0.无效,1.新订单,2.待发货,3.已发货,4.已收货,5.已完成,6.已退货及退款)',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_store_order_order_no`(`order_no`) USING BTREE,
  INDEX `index_store_order_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城订单主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_order_express
-- ----------------------------
DROP TABLE IF EXISTS `store_order_express`;
CREATE TABLE `store_order_express`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `type` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '快递类型(0.订单快递,1.退货快递)',
  `order_no` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `company_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流公司名称',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '物流公司编码',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货手机号',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址省份',
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址城市',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货地址区域',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '收货详细地址',
  `send_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际物流公司单号',
  `send_company_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际发货快递公司',
  `send_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实际发货快递代码',
  `send_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人名称',
  `send_phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人手机号',
  `send_province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址省份',
  `send_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址城市',
  `send_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人地址区域',
  `send_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '寄件人详细地址',
  `send_at` datetime NULL DEFAULT NULL COMMENT '快递发货时间',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发货描述',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(0.无效,1.新快递,2.已签收,3.签收失败)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城订单快递' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for store_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `store_order_goods`;
CREATE TABLE `store_order_goods`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '会员ID',
  `order_no` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `goods_id` bigint(20) NULL DEFAULT 0 COMMENT '商品ID',
  `goods_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品标签',
  `goods_spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格',
  `goods_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品LOGO',
  `goods_image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片地址',
  `market_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '市场价格',
  `selling_price` decimal(20, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '商品销售价格',
  `price_field` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'selling_price' COMMENT '计价字段',
  `number` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '订单商品数量',
  `status` bigint(1) UNSIGNED NULL DEFAULT 1 COMMENT '商品状态(1有效,0无效)',
  `is_deleted` bigint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1删除,0未删除)',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_store_order_list_order_no`(`order_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城订单关联商品' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) UNSIGNED NULL DEFAULT 0 COMMENT '排序权重',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) UNSIGNED NULL DEFAULT 0 COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_system_auth_title`(`title`) USING BTREE,
  INDEX `index_system_auth_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES (1, '超级管理员', 1, 0, '超级管理员', 0, '2018-11-27 16:52:04');
INSERT INTO `system_auth` VALUES (2, '管理员1', 1, 0, '管理员1', 0, '2018-11-27 17:49:19');
INSERT INTO `system_auth` VALUES (3, '管理员2', 1, 0, '管理员2', 0, '2018-11-27 17:49:31');

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_auth_auth`(`auth`) USING BTREE,
  INDEX `index_system_auth_node`(`node`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色与节点绑定' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES (1, 1, 'admin');
INSERT INTO `system_auth_node` VALUES (2, 1, 'admin/auth');
INSERT INTO `system_auth_node` VALUES (3, 1, 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES (4, 1, 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES (5, 1, 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES (6, 1, 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES (7, 1, 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES (8, 1, 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES (9, 1, 'admin/auth/del');
INSERT INTO `system_auth_node` VALUES (10, 1, 'admin/config');
INSERT INTO `system_auth_node` VALUES (11, 1, 'admin/config/index');
INSERT INTO `system_auth_node` VALUES (12, 1, 'admin/config/file');
INSERT INTO `system_auth_node` VALUES (13, 1, 'admin/log');
INSERT INTO `system_auth_node` VALUES (14, 1, 'admin/log/index');
INSERT INTO `system_auth_node` VALUES (15, 1, 'admin/log/del');
INSERT INTO `system_auth_node` VALUES (16, 1, 'admin/menu');
INSERT INTO `system_auth_node` VALUES (17, 1, 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES (18, 1, 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES (19, 1, 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES (20, 1, 'admin/menu/del');
INSERT INTO `system_auth_node` VALUES (21, 1, 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES (22, 1, 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES (23, 1, 'admin/node');
INSERT INTO `system_auth_node` VALUES (24, 1, 'admin/node/index');
INSERT INTO `system_auth_node` VALUES (25, 1, 'admin/node/clear');
INSERT INTO `system_auth_node` VALUES (26, 1, 'admin/node/save');
INSERT INTO `system_auth_node` VALUES (27, 1, 'admin/user');
INSERT INTO `system_auth_node` VALUES (28, 1, 'admin/user/index');
INSERT INTO `system_auth_node` VALUES (29, 1, 'admin/user/auth');
INSERT INTO `system_auth_node` VALUES (30, 1, 'admin/user/add');
INSERT INTO `system_auth_node` VALUES (31, 1, 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES (32, 1, 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES (33, 1, 'admin/user/del');
INSERT INTO `system_auth_node` VALUES (34, 1, 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES (35, 1, 'admin/user/resume');
INSERT INTO `system_auth_node` VALUES (36, 1, 'store');
INSERT INTO `system_auth_node` VALUES (37, 1, 'store/express');
INSERT INTO `system_auth_node` VALUES (38, 1, 'store/express/index');
INSERT INTO `system_auth_node` VALUES (39, 1, 'store/express/add');
INSERT INTO `system_auth_node` VALUES (40, 1, 'store/express/edit');
INSERT INTO `system_auth_node` VALUES (41, 1, 'store/express/del');
INSERT INTO `system_auth_node` VALUES (42, 1, 'store/express/forbid');
INSERT INTO `system_auth_node` VALUES (43, 1, 'store/express/resume');
INSERT INTO `system_auth_node` VALUES (44, 1, 'store/goods');
INSERT INTO `system_auth_node` VALUES (45, 1, 'store/goods/index');
INSERT INTO `system_auth_node` VALUES (46, 1, 'store/goods/add');
INSERT INTO `system_auth_node` VALUES (47, 1, 'store/goods/edit');
INSERT INTO `system_auth_node` VALUES (48, 1, 'store/goods/stock');
INSERT INTO `system_auth_node` VALUES (49, 1, 'store/goods/del');
INSERT INTO `system_auth_node` VALUES (50, 1, 'store/goods/forbid');
INSERT INTO `system_auth_node` VALUES (51, 1, 'store/goods/resume');
INSERT INTO `system_auth_node` VALUES (52, 1, 'store/goods_brand');
INSERT INTO `system_auth_node` VALUES (53, 1, 'store/goods_brand/index');
INSERT INTO `system_auth_node` VALUES (54, 1, 'store/goods_brand/add');
INSERT INTO `system_auth_node` VALUES (55, 1, 'store/goods_brand/edit');
INSERT INTO `system_auth_node` VALUES (56, 1, 'store/goods_brand/del');
INSERT INTO `system_auth_node` VALUES (57, 1, 'store/goods_brand/forbid');
INSERT INTO `system_auth_node` VALUES (58, 1, 'store/goods_brand/resume');
INSERT INTO `system_auth_node` VALUES (59, 1, 'store/goods_cate');
INSERT INTO `system_auth_node` VALUES (60, 1, 'store/goods_cate/index');
INSERT INTO `system_auth_node` VALUES (61, 1, 'store/goods_cate/add');
INSERT INTO `system_auth_node` VALUES (62, 1, 'store/goods_cate/edit');
INSERT INTO `system_auth_node` VALUES (63, 1, 'store/goods_cate/del');
INSERT INTO `system_auth_node` VALUES (64, 1, 'store/goods_cate/forbid');
INSERT INTO `system_auth_node` VALUES (65, 1, 'store/goods_cate/resume');
INSERT INTO `system_auth_node` VALUES (66, 1, 'store/goods_spec');
INSERT INTO `system_auth_node` VALUES (67, 1, 'store/goods_spec/index');
INSERT INTO `system_auth_node` VALUES (68, 1, 'store/goods_spec/add');
INSERT INTO `system_auth_node` VALUES (69, 1, 'store/goods_spec/edit');
INSERT INTO `system_auth_node` VALUES (70, 1, 'store/goods_spec/del');
INSERT INTO `system_auth_node` VALUES (71, 1, 'store/goods_spec/forbid');
INSERT INTO `system_auth_node` VALUES (72, 1, 'store/goods_spec/resume');
INSERT INTO `system_auth_node` VALUES (73, 1, 'store/order');
INSERT INTO `system_auth_node` VALUES (74, 1, 'store/order/index');
INSERT INTO `system_auth_node` VALUES (75, 1, 'store/order/address');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_config_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统参数配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES (1, 'app_name', 'ThinkAdmin');
INSERT INTO `system_config` VALUES (2, 'site_name', 'ThinkAdmin');
INSERT INTO `system_config` VALUES (3, 'app_version', '3.0 dev');
INSERT INTO `system_config` VALUES (4, 'site_copy', '©版权所有 2014-2018 楚才科技');
INSERT INTO `system_config` VALUES (5, 'browser_icon', 'http://localhost/ThinkAdmin/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES (6, 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES (7, 'miitbeian', '粤ICP备16006642号-2');
INSERT INTO `system_config` VALUES (8, 'storage_type', 'local');
INSERT INTO `system_config` VALUES (9, 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4');
INSERT INTO `system_config` VALUES (10, 'storage_qiniu_bucket', '');
INSERT INTO `system_config` VALUES (11, 'storage_qiniu_domain', '');
INSERT INTO `system_config` VALUES (12, 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES (13, 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES (14, 'storage_oss_bucket', 'cuci');
INSERT INTO `system_config` VALUES (15, 'storage_oss_endpoint', 'oss-cn-beijing.aliyuncs.com');
INSERT INTO `system_config` VALUES (16, 'storage_oss_domain', 'cuci.oss-cn-beijing.aliyuncs.com');
INSERT INTO `system_config` VALUES (17, 'storage_oss_keyid', '用你自己的吧');
INSERT INTO `system_config` VALUES (18, 'storage_oss_secret', '用你自己的吧');
INSERT INTO `system_config` VALUES (34, 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (35, 'wechat_appkey', '9890a0d7c91801a609d151099e95b61a');
INSERT INTO `system_config` VALUES (36, 'storage_oss_is_https', 'http');
INSERT INTO `system_config` VALUES (37, 'wechat_type', 'thr');
INSERT INTO `system_config` VALUES (38, 'wechat_token', 'test');
INSERT INTO `system_config` VALUES (39, 'wechat_appsecret', 'a041bec98ed015d52b99acea5c6a16ef');
INSERT INTO `system_config` VALUES (40, 'wechat_encodingaeskey', 'BJIUzE0gqlWy0GxfPp4J1oPTBmOrNDIGPNav1YFH5Z5');
INSERT INTO `system_config` VALUES (41, 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES (42, 'wechat_thr_appkey', '05db2aa335382c66ab56d69b1a9ad0ee');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统操作日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES (1, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-27 16:14:45');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_menu_node`(`node`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES (1, 0, '系统设置', '', '', '#', '', '_self', 2000, 1, 10000, '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES (2, 10, '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', 10, 1, 10000, '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES (3, 10, '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', 20, 1, 10000, '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES (4, 11, '角色管理', '', 'fa fa-group', 'admin/auth/index', '', '_self', 20, 1, 10000, '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES (5, 11, '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', 10, 1, 0, '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES (6, 11, '节点管理', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', 30, 1, 0, '2018-01-23 12:36:54');
INSERT INTO `system_menu` VALUES (7, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 1000, 0, 0, '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES (8, 16, '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', 10, 1, 0, '2018-01-24 13:52:58');
INSERT INTO `system_menu` VALUES (9, 10, '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', 30, 1, 0, '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES (10, 1, '系统管理', '', '', '#', '', '_self', 200, 1, 0, '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES (11, 1, '权限管理', '', '', '#', '', '_self', 300, 1, 0, '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES (16, 1, '日志管理', '', '', '#', '', '_self', 400, 1, 0, '2018-02-10 16:31:15');
INSERT INTO `system_menu` VALUES (32, 0, '产品管理', '', '', '#', '', '_self', 2000, 1, 0, '2018-03-20 16:46:07');
INSERT INTO `system_menu` VALUES (33, 32, '商品管理', '', '', '#', '', '_self', 0, 1, 0, '2018-03-20 16:46:21');
INSERT INTO `system_menu` VALUES (34, 33, '产品管理', '', 'fa fa-modx', 'store/goods/index', '', '_self', 0, 1, 0, '2018-03-20 16:46:45');
INSERT INTO `system_menu` VALUES (35, 33, '规格管理', '', 'fa fa-hashtag', 'store/goods_spec/index', '', '_self', 0, 1, 0, '2018-03-20 16:47:08');
INSERT INTO `system_menu` VALUES (36, 33, '分类管理', '', 'fa fa-product-hunt', 'store/goods_cate/index', '', '_self', 0, 1, 0, '2018-03-20 16:47:50');
INSERT INTO `system_menu` VALUES (37, 33, '品牌管理', '', 'fa fa-scribd', 'store/goods_brand/index', '', '_self', 0, 1, 0, '2018-03-20 16:48:05');
INSERT INTO `system_menu` VALUES (38, 32, '订单管理', '', '', '#', '', '_self', 0, 0, 0, '2018-04-21 15:07:36');
INSERT INTO `system_menu` VALUES (39, 38, '订单列表', '', 'fa fa-adjust', 'store/order/index', '', '_self', 0, 0, 0, '2018-04-21 15:07:54');
INSERT INTO `system_menu` VALUES (40, 32, '商城配置', '', '', '#', '', '_self', 0, 0, 0, '2018-04-21 15:08:17');
INSERT INTO `system_menu` VALUES (41, 40, '参数管理', '', '', '#', '', '_self', 0, 0, 0, '2018-04-21 15:08:25');
INSERT INTO `system_menu` VALUES (42, 40, '快递公司', '', 'fa fa-mixcloud', 'store/express/index', '', '_self', 0, 0, 0, '2018-04-21 15:08:50');

-- ----------------------------
-- Table structure for system_node
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `node` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_system_node_node`(`node`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 145 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES (13, 'admin', '系统设置', 0, 1, 1, '2018-05-04 11:02:34');
INSERT INTO `system_node` VALUES (14, 'admin/auth', '权限管理', 0, 1, 1, '2018-05-04 11:06:55');
INSERT INTO `system_node` VALUES (15, 'admin/auth/index', '权限列表', 1, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (16, 'admin/auth/apply', '权限配置', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (17, 'admin/auth/add', '添加权限', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (18, 'admin/auth/edit', '编辑权限', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (19, 'admin/auth/forbid', '禁用权限', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (20, 'admin/auth/resume', '启用权限', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (21, 'admin/auth/del', '删除权限', 0, 1, 1, '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES (22, 'admin/config', '系统配置', 0, 1, 1, '2018-05-04 11:08:18');
INSERT INTO `system_node` VALUES (23, 'admin/config/index', '系统参数', 1, 1, 1, '2018-05-04 11:08:25');
INSERT INTO `system_node` VALUES (24, 'admin/config/file', '文件存储', 1, 1, 1, '2018-05-04 11:08:27');
INSERT INTO `system_node` VALUES (25, 'admin/log', '日志管理', 0, 1, 1, '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES (26, 'admin/log/index', '日志管理', 1, 1, 1, '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES (28, 'admin/log/del', '日志删除', 0, 1, 1, '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES (29, 'admin/menu', '系统菜单', 0, 1, 1, '2018-05-04 11:09:54');
INSERT INTO `system_node` VALUES (30, 'admin/menu/index', '菜单列表', 1, 1, 1, '2018-05-04 11:09:54');
INSERT INTO `system_node` VALUES (31, 'admin/menu/add', '添加菜单', 0, 1, 1, '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES (32, 'admin/menu/edit', '编辑菜单', 0, 1, 1, '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES (33, 'admin/menu/del', '删除菜单', 0, 1, 1, '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES (34, 'admin/menu/forbid', '禁用菜单', 0, 1, 1, '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES (35, 'admin/menu/resume', '启用菜单', 0, 1, 1, '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES (36, 'admin/node', '节点管理', 0, 1, 1, '2018-05-04 11:10:20');
INSERT INTO `system_node` VALUES (37, 'admin/node/index', '节点列表', 1, 1, 1, '2018-05-04 11:10:20');
INSERT INTO `system_node` VALUES (38, 'admin/node/clear', '清理节点', 0, 1, 1, '2018-05-04 11:10:21');
INSERT INTO `system_node` VALUES (39, 'admin/node/save', '更新节点', 0, 1, 1, '2018-05-04 11:10:21');
INSERT INTO `system_node` VALUES (40, 'admin/user', '系统用户', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (41, 'admin/user/index', '用户列表', 1, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (42, 'admin/user/auth', '用户授权', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (43, 'admin/user/add', '添加用户', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (44, 'admin/user/edit', '编辑用户', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (45, 'admin/user/pass', '修改密码', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (46, 'admin/user/del', '删除用户', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (47, 'admin/user/forbid', '禁用启用', 0, 1, 1, '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES (48, 'admin/user/resume', '启用用户', 0, 1, 1, '2018-05-04 11:10:44');
INSERT INTO `system_node` VALUES (49, 'store', '产品管理', 0, 1, 1, '2018-05-04 11:11:28');
INSERT INTO `system_node` VALUES (50, 'store/express', '快递公司管理', 0, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (51, 'store/express/index', '快递公司列表', 1, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (52, 'store/express/add', '添加快递公司', 0, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (53, 'store/express/edit', '编辑快递公司', 0, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (54, 'store/express/del', '删除快递公司', 0, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (55, 'store/express/forbid', '禁用快递公司', 0, 1, 1, '2018-05-04 11:11:39');
INSERT INTO `system_node` VALUES (56, 'store/express/resume', '启用快递公司', 0, 1, 1, '2018-05-04 11:11:40');
INSERT INTO `system_node` VALUES (57, 'store/order', '订单管理', 0, 1, 1, '2018-05-04 11:12:14');
INSERT INTO `system_node` VALUES (58, 'store/order/index', '订单列表', 1, 1, 1, '2018-05-04 11:12:17');
INSERT INTO `system_node` VALUES (59, 'store/order/address', '修改地址', 0, 1, 1, '2018-05-04 11:12:19');
INSERT INTO `system_node` VALUES (117, 'store/goods', '产品管理', 0, 1, 1, '2018-05-04 11:29:55');
INSERT INTO `system_node` VALUES (118, 'store/goods/index', '产品列表', 1, 1, 1, '2018-05-04 11:29:56');
INSERT INTO `system_node` VALUES (119, 'store/goods/add', '添加产品', 0, 1, 1, '2018-05-04 11:29:56');
INSERT INTO `system_node` VALUES (120, 'store/goods/edit', '编辑产品', 0, 1, 1, '2018-05-04 11:29:56');
INSERT INTO `system_node` VALUES (121, 'store/goods/del', '删除产品', 0, 1, 1, '2018-05-04 11:29:56');
INSERT INTO `system_node` VALUES (122, 'store/goods/forbid', '下架产品', 0, 1, 1, '2018-05-04 11:29:56');
INSERT INTO `system_node` VALUES (123, 'store/goods/resume', '上架产品', 0, 1, 1, '2018-05-04 11:29:57');
INSERT INTO `system_node` VALUES (124, 'store/goods_brand', '产品品牌管理', 0, 1, 1, '2018-05-04 11:30:44');
INSERT INTO `system_node` VALUES (125, 'store/goods_brand/index', '产品品牌列表', 1, 1, 1, '2018-05-04 11:30:52');
INSERT INTO `system_node` VALUES (126, 'store/goods_brand/add', '添加产品品牌', 0, 1, 1, '2018-05-04 11:30:55');
INSERT INTO `system_node` VALUES (127, 'store/goods_brand/edit', '编辑产品品牌', 0, 1, 1, '2018-05-04 11:30:56');
INSERT INTO `system_node` VALUES (128, 'store/goods_brand/del', '删除产品品牌', 0, 1, 1, '2018-05-04 11:30:56');
INSERT INTO `system_node` VALUES (129, 'store/goods_brand/forbid', '禁用产品品牌', 0, 1, 1, '2018-05-04 11:30:56');
INSERT INTO `system_node` VALUES (130, 'store/goods_brand/resume', '启用产品品牌', 0, 1, 1, '2018-05-04 11:30:56');
INSERT INTO `system_node` VALUES (131, 'store/goods_cate', '产品分类管理', 0, 1, 1, '2018-05-04 11:31:19');
INSERT INTO `system_node` VALUES (132, 'store/goods_cate/index', '产品分类列表', 1, 1, 1, '2018-05-04 11:31:23');
INSERT INTO `system_node` VALUES (133, 'store/goods_cate/add', '添加产品分类', 0, 1, 1, '2018-05-04 11:31:23');
INSERT INTO `system_node` VALUES (134, 'store/goods_cate/edit', '编辑产品分类', 0, 1, 1, '2018-05-04 11:31:23');
INSERT INTO `system_node` VALUES (135, 'store/goods_cate/del', '删除产品分类', 0, 1, 1, '2018-05-04 11:31:24');
INSERT INTO `system_node` VALUES (136, 'store/goods_cate/forbid', '禁用产品分类', 0, 1, 1, '2018-05-04 11:31:24');
INSERT INTO `system_node` VALUES (137, 'store/goods_cate/resume', '启用产品分类', 0, 1, 1, '2018-05-04 11:31:24');
INSERT INTO `system_node` VALUES (138, 'store/goods_spec', '产品规格管理', 0, 1, 1, '2018-05-04 11:31:47');
INSERT INTO `system_node` VALUES (139, 'store/goods_spec/index', '产品规格列表', 1, 1, 1, '2018-05-04 11:31:47');
INSERT INTO `system_node` VALUES (140, 'store/goods_spec/add', '添加产品规格', 0, 1, 1, '2018-05-04 11:31:47');
INSERT INTO `system_node` VALUES (141, 'store/goods_spec/edit', '编辑产品规格', 0, 1, 1, '2018-05-04 11:31:48');
INSERT INTO `system_node` VALUES (142, 'store/goods_spec/del', '删除产品规格', 0, 1, 1, '2018-05-04 11:31:48');
INSERT INTO `system_node` VALUES (143, 'store/goods_spec/forbid', '禁用产品规格', 0, 1, 1, '2018-05-04 11:31:48');
INSERT INTO `system_node` VALUES (144, 'store/goods_spec/resume', '启用产品规格', 0, 1, 1, '2018-05-04 11:31:48');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_system_sequence_unique`(`type`, `sequence`) USING BTREE,
  INDEX `index_system_sequence_type`(`type`) USING BTREE,
  INDEX `index_system_sequence_number`(`sequence`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统序号表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '登录次数',
  `login_at` datetime NULL DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_system_user_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (10000, 'admin', '0192023a7bbd73250516f069df18b500', '22222222', '', '', '', 22974, '2018-11-27 16:14:44', 1, '1', 0, NULL, '2015-11-13 15:14:22');

SET FOREIGN_KEY_CHECKS = 1;
