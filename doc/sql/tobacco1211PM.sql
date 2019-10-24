/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tobacco

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-12-11 16:08:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for machine
-- ----------------------------
DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` text COMMENT '描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  `item` longtext COMMENT '规格属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='机器表';

-- ----------------------------
-- Records of machine
-- ----------------------------
INSERT INTO `machine` VALUES ('1', null, '', '0', '1544082253', '1544410713', '0', '0', '{\"jx\":\"FX\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"bzjx\":\"53\",\"yzpl\":\"63\"}');
INSERT INTO `machine` VALUES ('2', null, '', '0', '1544151105', '1544411089', '0', '0', '{\"jx\":\"350\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"bzjx\":\"54\",\"yzpl\":\"64\"}');
INSERT INTO `machine` VALUES ('3', null, '', '0', '1544003178', '1544003178', '0', '0', '{\"jx\":\"350-\\u7ec6\\u652f100mm\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"bzjx\":\"54\",\"yzpl\":\"65\"}');
INSERT INTO `machine` VALUES ('4', null, null, '0', '1544057379', null, '0', '0', '{\"jx\":\"FXS\",\"cj\":\"66\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"bzjx\":\"55\",\"yzpl\":\"63\"}');
INSERT INTO `machine` VALUES ('5', null, null, '0', '1544411321', '1544411645', '0', '0', '{\"jx\":\"FX-\\u7ec6\\u652f84mm\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"bzjx\":\"53\",\"yzpl\":\"65\"}');
INSERT INTO `machine` VALUES ('6', null, null, '0', '1544411491', '1544411759', '0', '0', '{\"jx\":\"FX-\\u7ec6\\u652f100mm\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"33\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"48\",\"bzjx\":\"53\",\"yzpl\":\"65\"}');
INSERT INTO `machine` VALUES ('7', null, null, '0', '1544412196', null, '0', '0', '{\"jx\":\"700\\uff085\\u53f7\\u673a\\uff09\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"bzjx\":\"56\",\"yzpl\":\"64\"}');
INSERT INTO `machine` VALUES ('8', null, null, '0', '1544412289', null, '0', '0', '{\"jx\":\"700\\uff084\\u53f7\\u673a\\uff09\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"bzjx\":\"56\",\"yzpl\":\"64\"}');
INSERT INTO `machine` VALUES ('9', null, null, '0', '1544412474', null, '0', '0', '{\"jx\":\"700(3\\u53f7\\u673a)\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"bzjx\":\"56\",\"yzpl\":\"64\"}');
INSERT INTO `machine` VALUES ('10', null, null, '0', '1544412963', null, '0', '0', '{\"jx\":\"700(2\\u53f7\\u673a)\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"bzjx\":\"56\",\"yzpl\":\"64\"}');
INSERT INTO `machine` VALUES ('11', null, null, '0', '1544413024', null, '0', '0', '{\"jx\":\"700(1\\u53f7\\u673a)\",\"cj\":\"66\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"bzjx\":\"56\",\"yzpl\":\"64\"}');

-- ----------------------------
-- Table structure for machine_item
-- ----------------------------
DROP TABLE IF EXISTS `machine_item`;
CREATE TABLE `machine_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '属性值名称',
  `spec_id` int(11) DEFAULT NULL COMMENT '属性id',
  `desc` text COMMENT '描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='属性值表';

-- ----------------------------
-- Records of machine_item
-- ----------------------------
INSERT INTO `machine_item` VALUES ('1', '侧面', '3', '侧面', '1', '1544077027', '1544172379', '0', '0');
INSERT INTO `machine_item` VALUES ('2', '底部', '3', '底部', '2', '1544077120', '1544172946', '0', '0');
INSERT INTO `machine_item` VALUES ('3', '半圆', '4', '半圆', '3', '1544077133', '1544172977', '0', '0');
INSERT INTO `machine_item` VALUES ('4', '上开盖', '5', '上开盖', '4', '1543893032', '1544173010', '0', '0');
INSERT INTO `machine_item` VALUES ('5', '侧开盖', '5', '侧开盖', '5', '1543893055', '1544173036', '0', '0');
INSERT INTO `machine_item` VALUES ('6', '对开式上开盖', '5', '对开式上开盖', '6', '1543893074', '1544173055', '0', '0');
INSERT INTO `machine_item` VALUES ('7', '热熔胶', '6', '热熔胶', '7', '1544173392', '1544173392', '0', '0');
INSERT INTO `machine_item` VALUES ('8', '白乳胶', '6', '白乳胶', '8', '1544173676', '1544176086', '0', '0');
INSERT INTO `machine_item` VALUES ('9', '无', '6', '无', '9', '1543990110', '1544176111', '0', '0');
INSERT INTO `machine_item` VALUES ('10', '点状2点', '7', '点状2点', '10', '1543990123', '1544176135', '0', '0');
INSERT INTO `machine_item` VALUES ('11', '无', '7', '无', '11', '1544175294', '1544176150', '0', '0');
INSERT INTO `machine_item` VALUES ('12', '钢印', '8', '钢印', '12', '1544067363', '1544176168', '0', '0');
INSERT INTO `machine_item` VALUES ('13', '左侧', '9', '左侧', '13', '1544067385', '1544176206', '0', '0');
INSERT INTO `machine_item` VALUES ('14', '右侧', '9', '右侧', '14', '1544067421', '1544176226', '0', '0');
INSERT INTO `machine_item` VALUES ('15', '06-班次（1位）-机台（2位）', '10', '06-班次（1位）-机台（2位）', '15', '1544067438', '1544176242', '0', '0');
INSERT INTO `machine_item` VALUES ('16', '09-班次（1位）-机台（2位）', '10', '09-班次（1位）-机台（2位）', '16', '1544077150', '1544176266', '0', '0');
INSERT INTO `machine_item` VALUES ('17', '11-班次（1位）-机台（2位）', '10', '11-班次（1位）-机台（2位）', '17', '1544077268', '1544176284', '0', '0');
INSERT INTO `machine_item` VALUES ('18', '正面左侧', '11', '正面左侧', '18', '1544077386', '1544176298', '0', '0');
INSERT INTO `machine_item` VALUES ('19', '正面右侧', '11', '正面右侧', '19', '1544077464', '1544176355', '0', '0');
INSERT INTO `machine_item` VALUES ('20', '半椭圆', '12', '半椭圆', '20', '1544077530', '1544176445', '0', '0');
INSERT INTO `machine_item` VALUES ('21', '半圆', '12', '半圆', '21', '1544077542', '1544176463', '0', '0');
INSERT INTO `machine_item` VALUES ('22', '方形', '12', '方形', '22', '1544077831', '1544176482', '0', '0');
INSERT INTO `machine_item` VALUES ('23', '不干胶', '13', '不干胶', '23', '1544077842', '1544176565', '0', '0');
INSERT INTO `machine_item` VALUES ('24', '条状', '14', '条状', '24', '1544077858', '1544176583', '0', '0');
INSERT INTO `machine_item` VALUES ('25', '点阵', '14', '点阵', '25', '1544077868', '1544176613', '0', '0');
INSERT INTO `machine_item` VALUES ('26', '长边点状6点', '14', '长边点状6点', '26', '1544078005', '1544176634', '0', '0');
INSERT INTO `machine_item` VALUES ('27', '长边条状3条', '14', '长边条状3条', '27', '1544078029', '1544176656', '0', '0');
INSERT INTO `machine_item` VALUES ('28', '直包装', '15', '直包装', '28', '1544078039', '1544178495', '0', '0');
INSERT INTO `machine_item` VALUES ('29', '横包装', '15', '横包装', '29', '1544078116', '1544178515', '0', '0');
INSERT INTO `machine_item` VALUES ('30', '后部', '16', '后部', '29', '1544078142', '1544178538', '0', '0');
INSERT INTO `machine_item` VALUES ('31', '前、后部', '16', '前、后部', '31', '1544078168', '1544178591', '0', '0');
INSERT INTO `machine_item` VALUES ('32', '侧、后部', '16', '侧、后部', '32', '1544078238', '1544178610', '0', '0');
INSERT INTO `machine_item` VALUES ('33', '左、右、后部', '16', '左、右、后部', '33', '1544078266', '1544178639', '0', '0');
INSERT INTO `machine_item` VALUES ('34', '前、后、左、右部', '16', '前、后、左、右部', '34', '1544078306', '1544178660', '0', '0');
INSERT INTO `machine_item` VALUES ('35', '前、侧、后部', '16', '前、侧、后部', '35', '1544078322', '1544178674', '0', '0');
INSERT INTO `machine_item` VALUES ('36', '前、后、右部', '16', '前、后、右部', '36', '1544078345', '1544178700', '0', '0');
INSERT INTO `machine_item` VALUES ('37', '无', '16', '无', '37', '1544078513', '1544178771', '0', '0');
INSERT INTO `machine_item` VALUES ('38', '白乳胶', '17', '白乳胶', '38', '1544078618', '1544178796', '0', '0');
INSERT INTO `machine_item` VALUES ('39', '无', '17', '无', '39', '1544078667', '1544178811', '0', '0');
INSERT INTO `machine_item` VALUES ('40', '有', '18', '有', '40', '1544078687', '1544178829', '0', '0');
INSERT INTO `machine_item` VALUES ('41', '无', '18', '无', '41', '1544078770', '1544178844', '0', '0');
INSERT INTO `machine_item` VALUES ('42', '侧面', '19', '侧面', '42', '1544078968', '1544178867', '0', '0');
INSERT INTO `machine_item` VALUES ('43', '背面', '19', '背面', '43', '1544079018', '1544178888', '0', '0');
INSERT INTO `machine_item` VALUES ('44', '正面', '19', '正面', '44', '1544079047', '1544178903', '0', '0');
INSERT INTO `machine_item` VALUES ('45', '右侧', '19', '右侧', '45', '1544079067', '1544178934', '0', '0');
INSERT INTO `machine_item` VALUES ('46', '拉线', '19', '拉线', '46', '1544079102', '1544178949', '0', '0');
INSERT INTO `machine_item` VALUES ('47', '无', '19', '无', '47', '1544079132', '1544178980', '0', '0');
INSERT INTO `machine_item` VALUES ('48', '06-班次（1位）-机台通道号（2位）-月份（2位）', '20', '06-班次（1位）-机台通道号（2位）-月份（2位）', '48', '1544079147', '1544178995', '0', '0');
INSERT INTO `machine_item` VALUES ('49', '06-班次（1位）-机台号（2位）-月份（2位）', '20', '06-班次（1位）-机台号（2位）-月份（2位）', '49', '1544079247', '1544179007', '0', '0');
INSERT INTO `machine_item` VALUES ('50', '06-班次（1位）-机台号（2位）-月份（2位）', '20', '06-班次（1位）-机台号（2位）-月份（2位）', '50', '1544079257', '1544179023', '0', '1');
INSERT INTO `machine_item` VALUES ('51', '班次（1位）-机台（2位）-月份（2位）-日期（2位）', '20', '班次（1位）-机台（2位）-月份（2位）-日期（2位）', '51', '1544079354', '1544179035', '0', '0');
INSERT INTO `machine_item` VALUES ('52', '11-班次（1位）-机台通道号（2位）-月份（2位）', '20', '11-班次（1位）-机台通道号（2位）-月份（2位）', '52', '1544079366', '1544179058', '0', '0');
INSERT INTO `machine_item` VALUES ('53', 'FX', '21', 'FX', '53', '1544079405', '1544179129', '0', '0');
INSERT INTO `machine_item` VALUES ('54', 'FK350', '21', 'FK350', '54', '1544079428', '1544179141', '0', '0');
INSERT INTO `machine_item` VALUES ('55', 'FXS', '21', 'FXS', '55', '1544079461', '1544179160', '0', '0');
INSERT INTO `machine_item` VALUES ('56', 'FK700', '21', 'FK700', '56', '1544079486', '1544179177', '0', '0');
INSERT INTO `machine_item` VALUES ('57', 'GDS1000', '21', 'GDS1000', '57', '1544079498', '1544179191', '0', '0');
INSERT INTO `machine_item` VALUES ('58', 'GDX2000', '21', 'GDX2000', '58', '1544079534', '1544179205', '0', '0');
INSERT INTO `machine_item` VALUES ('59', 'GDX1软包硬化', '21', 'GDX1软包硬化', '59', '1544079547', '1544179216', '0', '0');
INSERT INTO `machine_item` VALUES ('60', 'ZB28', '21', 'ZB28', '60', '1544079564', '1544179234', '0', '0');
INSERT INTO `machine_item` VALUES ('61', 'ZB45', '21', 'ZB45', '61', '1544082410', '1544179254', '0', '0');
INSERT INTO `machine_item` VALUES ('62', 'ZB48', '21', 'ZB48', '62', '1544079597', '1544179269', '0', '0');
INSERT INTO `machine_item` VALUES ('63', '767', '22', '767', '63', '1544079617', '1544179289', '0', '0');
INSERT INTO `machine_item` VALUES ('64', '776', '22', '776', '64', '1544079633', '1544179310', '0', '0');
INSERT INTO `machine_item` VALUES ('65', '10、10', '22', '10、10', '65', '1544079633', '1544179324', '0', '0');
INSERT INTO `machine_item` VALUES ('66', 'FOCKE', '2', 'FOCKE', '0', '1544179921', null, '0', '0');
INSERT INTO `machine_item` VALUES ('67', 'GD', '2', 'GD', '0', '1544179936', null, '0', '0');
INSERT INTO `machine_item` VALUES ('68', 'ZB', '2', 'ZB', '0', '1544179947', null, '0', '0');

-- ----------------------------
-- Table structure for machine_spec
-- ----------------------------
DROP TABLE IF EXISTS `machine_spec`;
CREATE TABLE `machine_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '规格名称',
  `mark` varchar(255) DEFAULT NULL COMMENT '标识',
  `desc` text COMMENT '描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型 0 input 1 select 2 editor 默认0',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='规格表';

-- ----------------------------
-- Records of machine_spec
-- ----------------------------
INSERT INTO `machine_spec` VALUES ('1', '机型', 'jx', '机型', '1', '1', '1544168170', '1544168170', '0', '0');
INSERT INTO `machine_spec` VALUES ('2', '厂家', 'cj', '厂家', '3', '2', '1544168183', '1544168183', '0', '0');
INSERT INTO `machine_spec` VALUES ('3', '拉带头位置', 'ldtwz', '拉带头位置', '3', '3', '1544168193', '1544168193', '0', '0');
INSERT INTO `machine_spec` VALUES ('4', '拉带头形状', 'ldtxz', '拉带头形状', '3', '4', '1544168216', '1544168216', '0', '0');
INSERT INTO `machine_spec` VALUES ('5', '条盒开盖方式', 'thkgfs', '条盒开盖方式', '3', '5', '1544168664', '1544168664', '0', '0');
INSERT INTO `machine_spec` VALUES ('6', '胶粘剂类型', 'jzjlx', '胶粘剂类型', '3', '6', '1544168703', '1544168703', '0', '0');
INSERT INTO `machine_spec` VALUES ('7', '条盒长边端部胶点形状数量', 'thcbdb', '条盒长边端部胶点形状数量', '3', '7', '1544168754', '1544168754', '0', '0');
INSERT INTO `machine_spec` VALUES ('8', '条盒标记类型', 'thbjlx', '条盒标记类型', '3', '8', '1544168775', '1544168775', '0', '0');
INSERT INTO `machine_spec` VALUES ('9', '条标记位置', 'tbjwz', '条标记位置', '3', '9', '1544168994', '1544168994', '0', '0');
INSERT INTO `machine_spec` VALUES ('10', '标记含义', 'bjhy', '标记含义', '3', '10', '1544064231', '1544169352', '0', '0');
INSERT INTO `machine_spec` VALUES ('11', '盒拉带头位置', 'hldtwz', '盒拉带头位置', '3', '11', '1544064374', '1544169847', '0', '0');
INSERT INTO `machine_spec` VALUES ('12', '盒拉带头形状', 'hldtxz', '盒拉带头形状', '3', '12', '1544064394', '1544169862', '0', '0');
INSERT INTO `machine_spec` VALUES ('13', '盒拉带头粘连方式', 'hldtzlfs', '盒拉带头粘连方式', '3', '13', '1544064434', '1544169979', '0', '0');
INSERT INTO `machine_spec` VALUES ('14', '盒两侧胶点形状', 'hlcjdxz', '盒两侧胶点形状', '3', '14', '1544065692', '1544170006', '0', '0');
INSERT INTO `machine_spec` VALUES ('15', '铝箔纸包装方式', 'lbzbzfs', '铝箔纸包装方式', '3', '15', '1544065858', '1544170052', '0', '0');
INSERT INTO `machine_spec` VALUES ('16', '铝箔纸与烟标粘连方式', 'lbzyybzlfs', '铝箔纸与烟标粘连方式', '3', '16', '1544065928', '1544170078', '0', '0');
INSERT INTO `machine_spec` VALUES ('17', '胶粘剂类型2', 'jzjlx2', '胶粘剂类型2', '3', '17', '1544065951', '1544170284', '0', '0');
INSERT INTO `machine_spec` VALUES ('18', '盒有无防伪', 'hywfw', '盒有无防伪', '3', '18', '1544065974', '1544170307', '0', '0');
INSERT INTO `machine_spec` VALUES ('19', '盒防伪位置', 'hfwwz', '盒防伪位置', '3', '19', '1544065998', '1544170324', '0', '0');
INSERT INTO `machine_spec` VALUES ('20', '小盒标记含义', 'xhbjhy', '小盒标记含义', '3', '20', '1544066139', '1544170343', '0', '0');
INSERT INTO `machine_spec` VALUES ('21', '包装机型', 'bzjx', '包装机型', '3', '21', '1544066187', '1544170359', '0', '0');
INSERT INTO `machine_spec` VALUES ('22', '烟支排列', 'yzpl', '烟支排列', '3', '22', '1544066218', '1544170375', '0', '0');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` text COMMENT '描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  `item` longtext COMMENT '规格属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', null, '', '0', '1544082253', '1544514898', '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u7d2b\\uff09\",\"ttxm\":\"6901028046893\",\"htxm\":\"6901028046886\",\"ldczwzta\":\"1\",\"dsbzcz\":\"8\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"22\",\"tfwtzms\":\"29\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"cptp\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/\\/f58a052a8e826a04\\/d575a87b78485f48.jpg\",\"cptps\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/66d1a4e6717c0945\\/c182cb1befd326be.jpg|\\/\\/pjib9g3e7.bkt.clouddn.com\\/\\/49603fbfb3aec37e\\/77dee66d170b372c.jpg\",\"cpsp\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/bb028310341ead83\\/9f340aa904f70f1a.mp4\",\"thms\":\"<p>11<\\/p>\\r\\n\",\"xhms\":\"<p>22<\\/p>\\r\\n\",\"yzms\":\"<p>33<img border=\\\"0\\\" src=\\\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/461b55074a00a8e7\\/363617d5c609e8d1.jpg\\\" title=\\\"image\\\" \\/><\\/p>\\r\\n\\r\\n<p><img border=\\\"0\\\" src=\\\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/\\/9ed86499088802e1\\/fe3e1fb2c3c58c69.jpg\\\" title=\\\"image\\\" \\/><\\/p>\\r\\n\"}');
INSERT INTO `product` VALUES ('2', null, '', '0', '1544151105', '1544151105', '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u8f6f\\u73cd\\u54c1\\uff09\",\"ttxm\":\"6901028045919\",\"htxm\":\"6901028045902\",\"ldczwzta\":\"5\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"23\",\"tfwtzms\":\"30\",\"hldtz\":\"38\",\"hldtwz\":\"48\",\"hsbzcz\":\"50\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"64\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('3', null, '', '0', '1544003178', '1544403626', '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u5370\\u8c61\\uff09\",\"ttxm\":\"6901028310444\",\"htxm\":\"6901028310437\",\"ldczwzta\":\"6\",\"dsbzcz\":\"10\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"24\",\"tfwtzms\":\"31\",\"hldtz\":\"39\",\"hldtwz\":\"47\",\"hsbzcz\":\"51\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"65\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"128\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('4', null, null, '0', '1544057379', '1544403859', '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff0874mm\\u5927\\u56e2\\u7ed3\\uff09\",\"ttxm\":\"6901028313827\",\"htxm\":\"6901028313810\",\"ldczwzta\":\"7\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"66\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"98\",\"jzzcd\":\"114\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('5', null, null, '0', '1544404100', null, '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u8f6f\\u5927\\u91cd\\u4e5d\\uff09\",\"ttxm\":\"6901028051989\",\"htxm\":\"6901028051996\",\"ldczwzta\":\"2\",\"dsbzcz\":\"11\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"26\",\"tfwtzms\":\"33\",\"hldtz\":\"41\",\"hldtwz\":\"48\",\"hsbzcz\":\"53\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"75\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"99\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('6', null, null, '0', '1544404351', null, '0', '0', '{\"cpmc\":\"\\u8336\\u82b1\\uff0894mm\\uff09\",\"ttxm\":\"6901028045490\",\"htxm\":\"6901028045483\",\"ldczwzta\":\"3\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"42\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"100\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('7', null, null, '0', '1544404693', null, '0', '0', '{\"cpmc\":\"\\u9493\\u9c7c\\u53f0\\uff08\\u4e2d\\u652f\\uff09\",\"ttxm\":\"6901028340649\",\"htxm\":\"6901028340632\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"68\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"97\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('8', null, null, '0', '1544406515', null, '0', '0', '{\"cpmc\":\"\\u9493\\u9c7c\\u53f0\\uff0884mm\\u7ec6\\u652f\\uff09\",\"ttxm\":\"6901028056854\",\"htxm\":\"6901028056847\",\"ldczwzta\":\"16\",\"dsbzcz\":\"19\",\"tysfs\":\"13\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"54\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"69\",\"lzlx\":\"89\",\"lzcd\":\"95\",\"jzzztz\":\"101\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"132\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('9', null, null, '0', '1544408011', '1544408274', '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u7ec6\\u652f\\u4e91\\u9f99\\uff09FK350\",\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"102\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('10', null, null, '0', '1544408609', null, '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u7ec6\\u652f\\u4e91\\u9f99\\uff09ZB45\",\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"102\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('11', null, null, '0', '1544409096', null, '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u795e\\u79d8\\u82b1\\u56ed\\uff09\",\"ttxm\":\"6901028051880\",\"htxm\":\"6901028051873\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"71\",\"lzlx\":\"88\",\"lzcd\":\"96\",\"jzzztz\":\"103\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}');
INSERT INTO `product` VALUES ('12', null, null, '0', '1544409533', null, '0', '0', '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u786c\\u4e91\\u9f99\\uff09\",\"ttxm\":\"6901028339896\",\"htxm\":\"6901028339889\",\"ldczwzta\":\"7\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}');

-- ----------------------------
-- Table structure for product_item
-- ----------------------------
DROP TABLE IF EXISTS `product_item`;
CREATE TABLE `product_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '属性值名称',
  `spec_id` int(11) DEFAULT NULL COMMENT '属性id',
  `desc` text COMMENT '描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='属性值表';

-- ----------------------------
-- Records of product_item
-- ----------------------------
INSERT INTO `product_item` VALUES ('1', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '1544077027', '1544077027', '0', '0');
INSERT INTO `product_item` VALUES ('2', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '4', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '7', '1544077120', '1544077120', '0', '0');
INSERT INTO `product_item` VALUES ('3', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '4', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '5', '1544077133', '1544077133', '0', '0');
INSERT INTO `product_item` VALUES ('4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '1543893032', null, '0', '1');
INSERT INTO `product_item` VALUES ('5', '无字透明不干胶拉线', '4', '无字透明不干胶拉线', '6', '1543893055', null, '0', '0');
INSERT INTO `product_item` VALUES ('6', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '4', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '2', '1543893074', null, '0', '0');
INSERT INTO `product_item` VALUES ('7', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '4', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '3', '1543893085', null, '0', '0');
INSERT INTO `product_item` VALUES ('8', '转移卡纸', '5', '转移卡纸', '0', '1543990100', null, '0', '0');
INSERT INTO `product_item` VALUES ('9', '卡纸', '5', '卡纸', '0', '1543990110', null, '0', '0');
INSERT INTO `product_item` VALUES ('10', '覆膜转移卡纸', '5', '覆膜转移卡纸', '0', '1543990123', null, '0', '0');
INSERT INTO `product_item` VALUES ('11', '礼盒', '5', '礼盒', '0', '1543990135', null, '0', '0');
INSERT INTO `product_item` VALUES ('12', '凹印', '6', '凹印', '0', '1544067363', null, '0', '0');
INSERT INTO `product_item` VALUES ('13', '胶印', '6', '胶印', '0', '1544067385', null, '0', '0');
INSERT INTO `product_item` VALUES ('14', '丝网印刷', '6', '丝网印刷', '0', '1544067421', null, '0', '0');
INSERT INTO `product_item` VALUES ('15', '凹印、丝网印刷', '6', '凹印、丝网印刷', '0', '1544067438', null, '0', '0');
INSERT INTO `product_item` VALUES ('16', '透明不干胶拉线', '4', '透明不干胶拉线', '1', '1544077150', '1544407168', '0', '0');
INSERT INTO `product_item` VALUES ('17', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '4', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '8', '1544077268', null, '0', '0');
INSERT INTO `product_item` VALUES ('18', '蓝色拉线', '4', '蓝色拉线', '9', '1544077386', null, '0', '0');
INSERT INTO `product_item` VALUES ('19', '镭射转移卡纸', '5', '镭射转移卡纸', '0', '1544077464', null, '0', '0');
INSERT INTO `product_item` VALUES ('20', '有', '7', '有', '0', '1544077530', null, '0', '0');
INSERT INTO `product_item` VALUES ('21', '无', '7', '无', '0', '1544077542', null, '0', '0');
INSERT INTO `product_item` VALUES ('22', '侧面', '8', '侧面', '0', '1544077831', '1544077831', '0', '0');
INSERT INTO `product_item` VALUES ('23', '正面', '8', '正面', '0', '1544077842', '1544077842', '0', '0');
INSERT INTO `product_item` VALUES ('24', '背面', '8', '背面', '0', '1544077858', null, '0', '0');
INSERT INTO `product_item` VALUES ('25', '拉线', '8', '拉线', '0', '1544077868', null, '0', '0');
INSERT INTO `product_item` VALUES ('26', '左端、封签', '8', '左端、封签', '0', '1544078005', null, '0', '0');
INSERT INTO `product_item` VALUES ('27', '封签', '8', '封签', '0', '1544078029', null, '0', '0');
INSERT INTO `product_item` VALUES ('28', '无', '8', '无', '0', '1544078039', null, '0', '0');
INSERT INTO `product_item` VALUES ('29', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '9', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '0', '1544078116', null, '0', '0');
INSERT INTO `product_item` VALUES ('30', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '9', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '0', '1544078142', null, '0', '0');
INSERT INTO `product_item` VALUES ('31', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '9', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '0', '1544078168', null, '0', '0');
INSERT INTO `product_item` VALUES ('32', '印有“云烟 yunYan”镭射防伪字图', '9', '印有“云烟 yunYan”镭射防伪字图', '0', '1544078238', null, '0', '0');
INSERT INTO `product_item` VALUES ('33', '左端：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。封签：加热字体颜色发生变化', '9', '左端：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。封签：加热字体颜色发生变化', '0', '1544078266', null, '0', '0');
INSERT INTO `product_item` VALUES ('34', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '9', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '0', '1544078306', null, '0', '0');
INSERT INTO `product_item` VALUES ('35', '1、团花防伪：线条图文清晰流畅。2、微缩文字：放大镜下能够显示 “YUNYAN”图文信息。3、防伪标签纸：揭开标签有方形图文残留痕迹。', '9', '1、团花防伪：线条图文清晰流畅。2、微缩文字：放大镜下能够显示 “YUNYAN”图文信息。3、防伪标签纸：揭开标签有方形图文残留痕迹。', '0', '1544078322', null, '0', '0');
INSERT INTO `product_item` VALUES ('36', '无', '9', '无', '0', '1544078345', null, '0', '0');
INSERT INTO `product_item` VALUES ('37', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '10', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '1544078513', null, '0', '0');
INSERT INTO `product_item` VALUES ('38', '烫红哑光不干胶拉线', '10', '烫红哑光不干胶拉线', '6', '1544078618', null, '0', '0');
INSERT INTO `product_item` VALUES ('39', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '10', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '2', '1544078667', null, '0', '0');
INSERT INTO `product_item` VALUES ('40', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '10', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '3', '1544078687', null, '0', '0');
INSERT INTO `product_item` VALUES ('41', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '10', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '7', '1544078770', '1544078770', '0', '0');
INSERT INTO `product_item` VALUES ('42', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '10', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '5', '1544078968', null, '0', '0');
INSERT INTO `product_item` VALUES ('43', '透明不干胶拉线', '10', '透明不干胶拉线', '1', '1544079018', null, '0', '0');
INSERT INTO `product_item` VALUES ('44', '镭射银字母拉线（拉线上印有“云烟印象烟庄”字样）', '10', '镭射银字母拉线（拉线上印有“云烟印象烟庄”字样）', '8', '1544079047', null, '0', '0');
INSERT INTO `product_item` VALUES ('45', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '10', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '9', '1544079067', null, '0', '0');
INSERT INTO `product_item` VALUES ('46', '蓝色拉线', '10', '蓝色拉线', '10', '1544079102', null, '0', '0');
INSERT INTO `product_item` VALUES ('47', '正面左侧', '11', '正面左侧', '0', '1544079132', null, '0', '0');
INSERT INTO `product_item` VALUES ('48', '正面右侧', '11', '正面右侧', '0', '1544079147', null, '0', '0');
INSERT INTO `product_item` VALUES ('49', '转移卡纸', '12', '转移卡纸', '0', '1544079247', null, '0', '0');
INSERT INTO `product_item` VALUES ('50', '铜版纸', '12', '铜版纸', '0', '1544079257', null, '0', '0');
INSERT INTO `product_item` VALUES ('51', '覆膜转移卡纸', '12', '覆膜转移卡纸', '0', '1544079354', null, '0', '0');
INSERT INTO `product_item` VALUES ('52', '卡纸', '12', '卡纸', '0', '1544079366', null, '0', '0');
INSERT INTO `product_item` VALUES ('53', '转移纸', '12', '转移纸', '0', '1544079405', null, '0', '0');
INSERT INTO `product_item` VALUES ('54', '镭射转移卡纸', '12', '镭射转移卡纸', '0', '1544079428', null, '0', '0');
INSERT INTO `product_item` VALUES ('55', '镭射转移纸', '12', '镭射转移纸', '0', '1544079461', null, '0', '0');
INSERT INTO `product_item` VALUES ('56', '凹印', '13', '凹印', '0', '1544079486', null, '0', '0');
INSERT INTO `product_item` VALUES ('57', '胶印', '13', '胶印', '0', '1544079498', null, '0', '0');
INSERT INTO `product_item` VALUES ('58', '丝网印刷', '13', '丝网印刷', '0', '1544079534', null, '0', '0');
INSERT INTO `product_item` VALUES ('59', '凹印、丝网印刷', '13', '凹印、丝网印刷', '0', '1544079547', null, '0', '0');
INSERT INTO `product_item` VALUES ('60', '无', '13', '无', '0', '1544079564', null, '0', '0');
INSERT INTO `product_item` VALUES ('61', '复合铝箔', '14', '复合铝箔', '0', '1544082410', '1544082410', '0', '0');
INSERT INTO `product_item` VALUES ('62', '硫酸纸', '14', '硫酸纸', '0', '1544079597', null, '0', '0');
INSERT INTO `product_item` VALUES ('63', '金色压纹', '15', '金色压纹', '0', '1544079617', null, '0', '0');
INSERT INTO `product_item` VALUES ('64', '金色印字复合铝箔纸或金色印字直镀铝箔纸', '15', '金色印字复合铝箔纸或金色印字直镀铝箔纸', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('65', '银色压纹带“YunYan”水印', '15', '银色压纹带“YunYan”水印', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('66', '古铜金色压纹', '15', '古铜金色压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('67', '金色压纹（带“9.9”字样）', '15', '金色压纹（带“9.9”字样）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('68', '金色回文', '15', '金色回文', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('69', '银色压纹', '15', '银色压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('70', '金色满版如意云图', '15', '金色满版如意云图', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('71', '深蓝色压纹', '15', '深蓝色压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('72', '金色压云烟中英文', '15', '金色压云烟中英文', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('73', '金色印字', '15', '金色印字', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('74', '金色印字（带“yunYan”水印）', '15', '金色印字（带“yunYan”水印）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('75', '金色压“9.9”字样', '15', '金色压“9.9”字样', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('76', '印有“对应胶囊颜色和口味图文”', '15', '印有“对应胶囊颜色和口味图文”', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('77', '银色压纹（带“YunYan”水印）', '15', '银色压纹（带“YunYan”水印）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('78', '黑、黄、银三色印刷压纹', '15', '黑、黄、银三色印刷压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('79', '带水印', '15', '带水印', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('80', '哑金色压纹', '15', '哑金色压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('81', '金色压纹（带“大重九”字样及标志）', '15', '金色压纹（带“大重九”字样及标志）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('82', '橘红金色压纹', '15', '橘红金色压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('83', '浅金色压纹（印有“乌镇之恋”字样）', '15', '浅金色压纹（印有“乌镇之恋”字样）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('84', '专用金色保鲜膜', '15', '专用金色保鲜膜', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('85', '金色压纹（预压“塞上好江南”字样）', '15', '金色压纹（预压“塞上好江南”字样）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('86', '彩色图文压纹', '15', '彩色图文压纹', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('87', '金色（印有“香格里拉”图文）', '15', '金色（印有“香格里拉”图文）', '0', '1544079633', null, '0', '0');
INSERT INTO `product_item` VALUES ('88', '单一普通', '16', '单一普通', '0', '1544080111', null, '0', '0');
INSERT INTO `product_item` VALUES ('89', '复合', '16', '复合', '0', '1544080122', null, '0', '0');
INSERT INTO `product_item` VALUES ('90', '中空复合', '16', '中空复合', '0', '1544080134', null, '0', '0');
INSERT INTO `product_item` VALUES ('91', '可视空腔胶囊复合滤棒', '16', '可视空腔胶囊复合滤棒', '0', '1544080153', null, '0', '0');
INSERT INTO `product_item` VALUES ('92', '爆珠滤棒', '16', '爆珠滤棒', '0', '1544080202', null, '0', '0');
INSERT INTO `product_item` VALUES ('93', '“9”：复合；“1”：五角星滤棒', '16', '“9”：复合；“1”：五角星滤棒', '0', '1544080219', null, '0', '0');
INSERT INTO `product_item` VALUES ('94', '无', '16', '无', '0', '1544080231', null, '0', '0');
INSERT INTO `product_item` VALUES ('95', '25', '17', '25', '0', '1544080307', '1544080307', '0', '0');
INSERT INTO `product_item` VALUES ('96', '30', '17', '30', '0', '1544080297', null, '0', '0');
INSERT INTO `product_item` VALUES ('97', '红色、金色双色烫金', '18', '红色、金色双色烫金', '0', '1544080374', null, '0', '0');
INSERT INTO `product_item` VALUES ('98', '单色烫金', '18', '单色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('99', '红色、镭射金双色烫金', '18', '红色、镭射金双色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('100', '印刷接装纸', '18', '印刷接装纸', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('101', '金色单色烫金', '18', '金色单色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('102', '金色', '18', '金色', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('103', '白色烫银', '18', '白色烫银', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('104', '金色烫金', '18', '金色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('105', '银色烫金', '18', '银色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('106', '红色、金色烫金', '18', '红色、金色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('107', '红色金色双色烫金', '18', '红色金色双色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('108', '定位镂空烫红色单色金接装纸', '18', '定位镂空烫红色单色金接装纸', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('109', '三色烫金', '18', '三色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('110', '镭射金、棕红色双色烫金', '18', '镭射金、棕红色双色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('111', '“9”：金色、棕色、古铜金三色烫金；“1”：镭射金、镭射红双色烫金', '18', '“9”：金色、棕色、古铜金三色烫金；“1”：镭射金、镭射红双色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('112', '蓝色印花烫金', '18', '蓝色印花烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('113', '铜色单色烫金', '18', '铜色单色烫金', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('114', '30', '19', '30', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('115', '32', '19', '32', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('116', '35', '19', '35', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('117', '37', '19', '37', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('118', '有', '20', '有', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('119', '无', '20', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('120', '激光打孔预打孔', '21', '激光打孔预打孔', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('121', '在线激光打孔', '21', '在线激光打孔', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('122', '无', '21', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('123', '1排', '22', '1排', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('124', '2排', '22', '2排', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('125', '4排', '22', '4排', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('126', '无', '22', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('127', '白色', '23', '白色', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('128', '棕色', '23', '棕色', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('129', '无', '23', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('130', '竖纹', '24', '竖纹', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('131', '横纹', '24', '横纹', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('132', '无纹', '24', '无纹', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('133', '普通6000CU', '25', '普通6000CU', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('134', '高透10000CU', '25', '高透10000CU', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('135', '高透15000CU', '25', '高透15000CU', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('136', '透明纤维成型纸0CU', '25', '透明纤维成型纸0CU', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('137', '无', '25', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('138', '叶丝、气流丝、梗丝、再造烟叶薄片', '26', '叶丝、气流丝、梗丝、再造烟叶薄片', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('139', '叶丝、梗丝、再造烟叶薄片', '26', '叶丝、梗丝、再造烟叶薄片', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('140', '叶丝、再造烟叶薄片', '26', '叶丝、再造烟叶薄片', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('141', '造纸法', '27', '造纸法', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('142', '无', '26', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('143', '无', '27', '无', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('144', '无', '6', '无', '0', '1544404495', null, '0', '0');

-- ----------------------------
-- Table structure for product_spec
-- ----------------------------
DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE `product_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '规格名称',
  `mark` varchar(255) DEFAULT NULL COMMENT '标识',
  `desc` text COMMENT '描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型 0 input 1 select 2 editor 默认0',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='规格表';

-- ----------------------------
-- Records of product_spec
-- ----------------------------
INSERT INTO `product_spec` VALUES ('1', '产品名称', 'cpmc', '产品名称', '1', '1', '1544085851', '1544085851', '0', '0');
INSERT INTO `product_spec` VALUES ('2', '条条形码', 'ttxm', '条条形码', '1', '2', '1544004709', '1544004709', '0', '0');
INSERT INTO `product_spec` VALUES ('3', '盒条形码', 'htxm', '盒条形码', '1', '3', '1544004425', '1544004425', '0', '0');
INSERT INTO `product_spec` VALUES ('4', '拉带材质文字图案及其他', 'ldczwzta', '拉带材质文字图案及其他', '3', '4', '1544004729', '1544004729', '0', '0');
INSERT INTO `product_spec` VALUES ('5', '条商标纸材质', 'dsbzcz', '条商标纸材质', '3', '5', '1544004736', '1544004736', '0', '0');
INSERT INTO `product_spec` VALUES ('6', '条印刷方式', 'tysfs', '条印刷方式', '3', '6', '1544063382', '1544063382', '0', '0');
INSERT INTO `product_spec` VALUES ('7', '条有无防伪', 'tywfw', '条有无防伪', '3', '7', '1544063472', null, '0', '0');
INSERT INTO `product_spec` VALUES ('8', '条防伪位置', 'tfwwz', '条防伪位置', '3', '8', '1544064011', null, '0', '0');
INSERT INTO `product_spec` VALUES ('9', '条防伪特征描述及识别方法', 'tfwtzms', '条防伪特征描述及识别方法', '3', '9', '1544065901', '1544065901', '0', '0');
INSERT INTO `product_spec` VALUES ('10', '盒拉带特征描述', 'hldtz', '盒拉带特征描述', '3', '10', '1544064231', null, '0', '0');
INSERT INTO `product_spec` VALUES ('11', '盒拉带头位置', 'hldtwz', '盒拉带头位置', '3', '11', '1544064374', null, '0', '0');
INSERT INTO `product_spec` VALUES ('12', '盒商标纸材质', 'hsbzcz', '盒商标纸材质', '3', '12', '1544064394', null, '0', '0');
INSERT INTO `product_spec` VALUES ('13', '盒商标纸印刷方式', 'hsbzysfs', '盒商标纸印刷方式', '3', '13', '1544064434', null, '0', '0');
INSERT INTO `product_spec` VALUES ('14', '铝箔纸材质', 'lbzcz', '铝箔纸材质', '3', '14', '1544065692', null, '0', '0');
INSERT INTO `product_spec` VALUES ('15', '铝箔纸特征描述', 'lbztzms', '铝箔纸特征描述', '3', '15', '1544065858', null, '0', '0');
INSERT INTO `product_spec` VALUES ('16', '滤嘴类型', 'lzlx', '滤嘴类型', '3', '16', '1544065928', null, '0', '0');
INSERT INTO `product_spec` VALUES ('17', '滤嘴长度', 'lzcd', '滤嘴长度', '3', '17', '1544065951', null, '0', '0');
INSERT INTO `product_spec` VALUES ('18', '接装纸特征', 'jzzztz', '接装纸特征', '3', '18', '1544065974', null, '0', '0');
INSERT INTO `product_spec` VALUES ('19', '接装纸长度', 'jzzcd', '接装纸长度', '3', '19', '1544065998', null, '0', '0');
INSERT INTO `product_spec` VALUES ('20', '接装纸有无打孔', 'jzzywdk', '接装纸有无打孔', '3', '20', '1544066139', null, '0', '0');
INSERT INTO `product_spec` VALUES ('21', '接装纸打孔方式', 'jzzdkfs', '接装纸打孔方式', '3', '21', '1544066187', null, '0', '0');
INSERT INTO `product_spec` VALUES ('22', '打孔排数', 'dkps', '打孔排数', '3', '22', '1544066218', null, '0', '0');
INSERT INTO `product_spec` VALUES ('23', '卷烟纸颜色', 'jyzys', '卷烟纸颜色', '3', '23', '1544066258', null, '0', '0');
INSERT INTO `product_spec` VALUES ('24', '卷烟纸罗文', 'jyzlw', '卷烟纸罗文', '3', '24', '1544066508', null, '0', '0');
INSERT INTO `product_spec` VALUES ('25', '成形纸类型', 'cxzlx', '成形纸类型', '3', '25', '1544066542', null, '0', '0');
INSERT INTO `product_spec` VALUES ('26', '烟丝组成', 'yszc', '烟丝组成', '3', '26', '1544066558', null, '0', '0');
INSERT INTO `product_spec` VALUES ('27', '再造烟叶', 'zzyy', '再造烟叶', '3', '27', '1544066576', null, '0', '0');
INSERT INTO `product_spec` VALUES ('28', '产品视频', 'cpsp', '产品视频', '7', '32', '1544434620', '1544497298', '0', '0');
INSERT INTO `product_spec` VALUES ('29', '产品logo', 'cptp', '产品logo', '5', '30', '1544508714', null, '0', '0');
INSERT INTO `product_spec` VALUES ('30', '条盒描述', 'thms', '条盒描述', '4', '33', '1544509599', null, '0', '0');
INSERT INTO `product_spec` VALUES ('31', '小盒描述', 'xhms', '小盒描述', '4', '34', '1544509621', null, '0', '0');
INSERT INTO `product_spec` VALUES ('32', '烟支描述', 'yzms', '烟支描述', '4', '35', '1544509650', null, '0', '0');
INSERT INTO `product_spec` VALUES ('33', '产品图片', 'cptps', '产品图片', '6', '31', '1544511390', null, '0', '0');

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES ('1', '超级管理员', '1', '0', '超级管理员', '0', '2018-11-27 16:52:04');
INSERT INTO `system_auth` VALUES ('2', '管理员1', '1', '0', '管理员1', '0', '2018-11-27 17:49:19');
INSERT INTO `system_auth` VALUES ('3', '管理员2', '1', '0', '管理员2', '0', '2018-11-27 17:49:31');

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`),
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES ('76', '1', 'admin');
INSERT INTO `system_auth_node` VALUES ('77', '1', 'admin/auth');
INSERT INTO `system_auth_node` VALUES ('78', '1', 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES ('79', '1', 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES ('80', '1', 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES ('81', '1', 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES ('82', '1', 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES ('83', '1', 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES ('84', '1', 'admin/auth/del');
INSERT INTO `system_auth_node` VALUES ('85', '1', 'admin/config');
INSERT INTO `system_auth_node` VALUES ('86', '1', 'admin/config/index');
INSERT INTO `system_auth_node` VALUES ('87', '1', 'admin/config/file');
INSERT INTO `system_auth_node` VALUES ('88', '1', 'admin/log');
INSERT INTO `system_auth_node` VALUES ('89', '1', 'admin/log/index');
INSERT INTO `system_auth_node` VALUES ('90', '1', 'admin/log/del');
INSERT INTO `system_auth_node` VALUES ('91', '1', 'admin/machine');
INSERT INTO `system_auth_node` VALUES ('92', '1', 'admin/machine/index');
INSERT INTO `system_auth_node` VALUES ('93', '1', 'admin/machine/add');
INSERT INTO `system_auth_node` VALUES ('94', '1', 'admin/machine/edit');
INSERT INTO `system_auth_node` VALUES ('95', '1', 'admin/machine/del');
INSERT INTO `system_auth_node` VALUES ('96', '1', 'admin/machine/forbid');
INSERT INTO `system_auth_node` VALUES ('97', '1', 'admin/machine/resume');
INSERT INTO `system_auth_node` VALUES ('98', '1', 'admin/machine_item');
INSERT INTO `system_auth_node` VALUES ('99', '1', 'admin/machine_item/index');
INSERT INTO `system_auth_node` VALUES ('100', '1', 'admin/machine_item/add');
INSERT INTO `system_auth_node` VALUES ('101', '1', 'admin/machine_item/edit');
INSERT INTO `system_auth_node` VALUES ('102', '1', 'admin/machine_item/del');
INSERT INTO `system_auth_node` VALUES ('103', '1', 'admin/machine_item/forbid');
INSERT INTO `system_auth_node` VALUES ('104', '1', 'admin/machine_item/resume');
INSERT INTO `system_auth_node` VALUES ('105', '1', 'admin/machine_spec');
INSERT INTO `system_auth_node` VALUES ('106', '1', 'admin/machine_spec/index');
INSERT INTO `system_auth_node` VALUES ('107', '1', 'admin/machine_spec/add');
INSERT INTO `system_auth_node` VALUES ('108', '1', 'admin/machine_spec/edit');
INSERT INTO `system_auth_node` VALUES ('109', '1', 'admin/machine_spec/del');
INSERT INTO `system_auth_node` VALUES ('110', '1', 'admin/machine_spec/forbid');
INSERT INTO `system_auth_node` VALUES ('111', '1', 'admin/machine_spec/resume');
INSERT INTO `system_auth_node` VALUES ('112', '1', 'admin/menu');
INSERT INTO `system_auth_node` VALUES ('113', '1', 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES ('114', '1', 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES ('115', '1', 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES ('116', '1', 'admin/menu/del');
INSERT INTO `system_auth_node` VALUES ('117', '1', 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES ('118', '1', 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES ('119', '1', 'admin/node');
INSERT INTO `system_auth_node` VALUES ('120', '1', 'admin/node/index');
INSERT INTO `system_auth_node` VALUES ('121', '1', 'admin/node/clear');
INSERT INTO `system_auth_node` VALUES ('122', '1', 'admin/node/save');
INSERT INTO `system_auth_node` VALUES ('123', '1', 'admin/product');
INSERT INTO `system_auth_node` VALUES ('124', '1', 'admin/product/index');
INSERT INTO `system_auth_node` VALUES ('125', '1', 'admin/product/add');
INSERT INTO `system_auth_node` VALUES ('126', '1', 'admin/product/edit');
INSERT INTO `system_auth_node` VALUES ('127', '1', 'admin/product/del');
INSERT INTO `system_auth_node` VALUES ('128', '1', 'admin/product/forbid');
INSERT INTO `system_auth_node` VALUES ('129', '1', 'admin/product/resume');
INSERT INTO `system_auth_node` VALUES ('130', '1', 'admin/product_item');
INSERT INTO `system_auth_node` VALUES ('131', '1', 'admin/product_item/index');
INSERT INTO `system_auth_node` VALUES ('132', '1', 'admin/product_item/add');
INSERT INTO `system_auth_node` VALUES ('133', '1', 'admin/product_item/edit');
INSERT INTO `system_auth_node` VALUES ('134', '1', 'admin/product_item/del');
INSERT INTO `system_auth_node` VALUES ('135', '1', 'admin/product_item/forbid');
INSERT INTO `system_auth_node` VALUES ('136', '1', 'admin/product_item/resume');
INSERT INTO `system_auth_node` VALUES ('137', '1', 'admin/product_spec');
INSERT INTO `system_auth_node` VALUES ('138', '1', 'admin/product_spec/index');
INSERT INTO `system_auth_node` VALUES ('139', '1', 'admin/product_spec/add');
INSERT INTO `system_auth_node` VALUES ('140', '1', 'admin/product_spec/edit');
INSERT INTO `system_auth_node` VALUES ('141', '1', 'admin/product_spec/del');
INSERT INTO `system_auth_node` VALUES ('142', '1', 'admin/product_spec/forbid');
INSERT INTO `system_auth_node` VALUES ('143', '1', 'admin/product_spec/resume');
INSERT INTO `system_auth_node` VALUES ('144', '1', 'admin/user');
INSERT INTO `system_auth_node` VALUES ('145', '1', 'admin/user/index');
INSERT INTO `system_auth_node` VALUES ('146', '1', 'admin/user/auth');
INSERT INTO `system_auth_node` VALUES ('147', '1', 'admin/user/add');
INSERT INTO `system_auth_node` VALUES ('148', '1', 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES ('149', '1', 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES ('150', '1', 'admin/user/del');
INSERT INTO `system_auth_node` VALUES ('151', '1', 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES ('152', '1', 'admin/user/resume');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  KEY `index_system_config_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', '卷烟产品识别系统');
INSERT INTO `system_config` VALUES ('2', 'site_name', '卷烟产品识别系统');
INSERT INTO `system_config` VALUES ('3', 'app_version', 'R');
INSERT INTO `system_config` VALUES ('4', 'site_copy', '©版权所有 2014-2018 云南环拓');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://localhost/ThinkAdmin/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '滇ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'qiniu');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', 'myrom');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', 'pjib9g3e7.bkt.clouddn.com');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', 'Sv5mhHnH0SnKyDV3mOuT3jDl4SYriK_yZ98HJjOl');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', '0sqbR0gkFioHiUF4B_jy1-8QFm9o3Gbjl2iTPLX0');
INSERT INTO `system_config` VALUES ('14', 'storage_oss_bucket', 'myrom');
INSERT INTO `system_config` VALUES ('15', 'storage_oss_endpoint', 'oss-cn-shenzhen.aliyuncs.com');
INSERT INTO `system_config` VALUES ('16', 'storage_oss_domain', 'myrom.oss-cn-shenzhen.aliyuncs.com');
INSERT INTO `system_config` VALUES ('17', 'storage_oss_keyid', 'LTAITcaTNIyqTFCN');
INSERT INTO `system_config` VALUES ('18', 'storage_oss_secret', '9gelTGAOwsCILXBtDioR7RtweOdrZc');
INSERT INTO `system_config` VALUES ('34', 'wechat_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('35', 'wechat_appkey', '9890a0d7c91801a609d151099e95b61a');
INSERT INTO `system_config` VALUES ('36', 'storage_oss_is_https', 'auto');
INSERT INTO `system_config` VALUES ('37', 'wechat_type', 'thr');
INSERT INTO `system_config` VALUES ('38', 'wechat_token', 'test');
INSERT INTO `system_config` VALUES ('39', 'wechat_appsecret', 'a041bec98ed015d52b99acea5c6a16ef');
INSERT INTO `system_config` VALUES ('40', 'wechat_encodingaeskey', 'BJIUzE0gqlWy0GxfPp4J1oPTBmOrNDIGPNav1YFH5Z5');
INSERT INTO `system_config` VALUES ('41', 'wechat_thr_appid', 'wx60a43dd8161666d4');
INSERT INTO `system_config` VALUES ('42', 'wechat_thr_appkey', '05db2aa335382c66ab56d69b1a9ad0ee');
INSERT INTO `system_config` VALUES ('43', 'storage_qiniu_region', '华南');
INSERT INTO `system_config` VALUES ('44', 'storage_qiniu_is_https', 'auto');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-27 16:14:45');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-29 08:56:52');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-29 08:58:17');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-29 08:59:58');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-29 10:09:37');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-30 09:13:17');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-03 09:43:07');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-04 08:32:18');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-05 08:49:50');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-06 08:46:27');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-07 09:26:31');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-10 08:44:37');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-10 14:04:07');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-10 16:03:47');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-10 16:04:25');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-10 16:04:35');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-11 08:48:16');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-11 12:34:52');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-11 12:34:58');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-11 12:35:04');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-11 16:07:10');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '20', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('3', '10', '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES ('4', '11', '角色管理', '', 'fa fa-group', 'admin/auth/index', '', '_self', '20', '1', '10000', '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES ('5', '11', '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '10', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('6', '11', '节点管理', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '30', '1', '0', '2018-01-23 12:36:54');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '0', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('8', '16', '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', '10', '1', '0', '2018-01-24 13:52:58');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '30', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', '', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '权限管理', '', '', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('16', '1', '日志管理', '', '', '#', '', '_self', '400', '1', '0', '2018-02-10 16:31:15');
INSERT INTO `system_menu` VALUES ('32', '0', '产品管理', '', '', '#', '', '_self', '3000', '1', '0', '2018-03-20 16:46:07');
INSERT INTO `system_menu` VALUES ('33', '32', '产品管理', '', '', '#', '', '_self', '0', '1', '0', '2018-03-20 16:46:21');
INSERT INTO `system_menu` VALUES ('34', '33', '产品管理', '', 'fa fa-modx', 'admin/product/index', '', '_self', '0', '1', '0', '2018-03-20 16:46:45');
INSERT INTO `system_menu` VALUES ('35', '33', '产品规格管理', '', 'fa fa-hashtag', 'admin/product_spec/index', '', '_self', '0', '1', '0', '2018-03-20 16:47:08');
INSERT INTO `system_menu` VALUES ('36', '33', '产品规格属性管理', '', 'fa fa-product-hunt', 'admin/product_item/index', '', '_self', '0', '1', '0', '2018-03-20 16:47:50');
INSERT INTO `system_menu` VALUES ('37', '0', '机器管理', '', '', '#', '', '_self', '4000', '1', '0', '2018-03-20 16:48:05');
INSERT INTO `system_menu` VALUES ('38', '37', '机器管理', '', '', '#', '', '_self', '0', '1', '0', '2018-04-21 15:07:36');
INSERT INTO `system_menu` VALUES ('39', '38', '机器管理', '', 'fa fa-adjust', 'admin/machine/index', '', '_self', '0', '1', '0', '2018-04-21 15:07:54');
INSERT INTO `system_menu` VALUES ('40', '38', '机器规格管理', '', 'fa fa-scribd', 'admin/machine_spec/index', '', '_self', '0', '1', '0', '2018-04-21 15:08:17');
INSERT INTO `system_menu` VALUES ('41', '38', '机器规格属性管理', '', 'fa fa-mixcloud', 'admin/machine_item/index', '', '_self', '0', '1', '0', '2018-04-21 15:08:25');

-- ----------------------------
-- Table structure for system_node
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('13', 'admin', '系统设置', '0', '1', '1', '2018-05-04 11:02:34');
INSERT INTO `system_node` VALUES ('14', 'admin/auth', '权限管理', '0', '1', '1', '2018-05-04 11:06:55');
INSERT INTO `system_node` VALUES ('15', 'admin/auth/index', '权限列表', '1', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('16', 'admin/auth/apply', '权限配置', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('17', 'admin/auth/add', '添加权限', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('18', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('19', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('20', 'admin/auth/resume', '启用权限', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('21', 'admin/auth/del', '删除权限', '0', '1', '1', '2018-05-04 11:06:56');
INSERT INTO `system_node` VALUES ('22', 'admin/config', '系统配置', '0', '1', '1', '2018-05-04 11:08:18');
INSERT INTO `system_node` VALUES ('23', 'admin/config/index', '系统参数', '1', '1', '1', '2018-05-04 11:08:25');
INSERT INTO `system_node` VALUES ('24', 'admin/config/file', '文件存储', '1', '1', '1', '2018-05-04 11:08:27');
INSERT INTO `system_node` VALUES ('25', 'admin/log', '日志管理', '0', '1', '1', '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES ('26', 'admin/log/index', '日志管理', '1', '1', '1', '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES ('28', 'admin/log/del', '日志删除', '0', '1', '1', '2018-05-04 11:08:43');
INSERT INTO `system_node` VALUES ('29', 'admin/menu', '系统菜单', '0', '1', '1', '2018-05-04 11:09:54');
INSERT INTO `system_node` VALUES ('30', 'admin/menu/index', '菜单列表', '1', '1', '1', '2018-05-04 11:09:54');
INSERT INTO `system_node` VALUES ('31', 'admin/menu/add', '添加菜单', '0', '1', '1', '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES ('32', 'admin/menu/edit', '编辑菜单', '0', '1', '1', '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES ('33', 'admin/menu/del', '删除菜单', '0', '1', '1', '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES ('34', 'admin/menu/forbid', '禁用菜单', '0', '1', '1', '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES ('35', 'admin/menu/resume', '启用菜单', '0', '1', '1', '2018-05-04 11:09:55');
INSERT INTO `system_node` VALUES ('36', 'admin/node', '节点管理', '0', '1', '1', '2018-05-04 11:10:20');
INSERT INTO `system_node` VALUES ('37', 'admin/node/index', '节点列表', '1', '1', '1', '2018-05-04 11:10:20');
INSERT INTO `system_node` VALUES ('38', 'admin/node/clear', '清理节点', '0', '1', '1', '2018-05-04 11:10:21');
INSERT INTO `system_node` VALUES ('39', 'admin/node/save', '更新节点', '0', '1', '1', '2018-05-04 11:10:21');
INSERT INTO `system_node` VALUES ('40', 'admin/user', '系统用户', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('41', 'admin/user/index', '用户列表', '1', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('42', 'admin/user/auth', '用户授权', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('43', 'admin/user/add', '添加用户', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('44', 'admin/user/edit', '编辑用户', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('45', 'admin/user/pass', '修改密码', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('46', 'admin/user/del', '删除用户', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('47', 'admin/user/forbid', '禁用启用', '0', '1', '1', '2018-05-04 11:10:43');
INSERT INTO `system_node` VALUES ('48', 'admin/user/resume', '启用用户', '0', '1', '1', '2018-05-04 11:10:44');
INSERT INTO `system_node` VALUES ('49', 'admin/machine', '机型管理', '0', '1', '1', '2018-12-11 16:02:21');
INSERT INTO `system_node` VALUES ('50', 'admin/machine/index', '列表', '0', '0', '0', '2018-12-11 16:02:34');
INSERT INTO `system_node` VALUES ('51', 'admin/machine/add', '添加', '0', '0', '0', '2018-12-11 16:02:41');
INSERT INTO `system_node` VALUES ('52', 'admin/machine/edit', '编辑', '0', '0', '0', '2018-12-11 16:02:41');
INSERT INTO `system_node` VALUES ('53', 'admin/machine/del', '删除', '0', '0', '0', '2018-12-11 16:02:43');
INSERT INTO `system_node` VALUES ('54', 'admin/machine/forbid', '禁用', '0', '0', '0', '2018-12-11 16:02:44');
INSERT INTO `system_node` VALUES ('55', 'admin/machine/resume', '开启', '0', '0', '0', '2018-12-11 16:02:48');
INSERT INTO `system_node` VALUES ('56', 'admin/machine_item', '机型规格属性', '0', '1', '1', '2018-12-11 16:03:09');
INSERT INTO `system_node` VALUES ('57', 'admin/machine_spec', '机型规格', '0', '1', '1', '2018-12-11 16:03:16');
INSERT INTO `system_node` VALUES ('58', 'admin/product', '产品', '0', '1', '1', '2018-12-11 16:03:24');
INSERT INTO `system_node` VALUES ('59', 'admin/product_item', '产品规格属性', '0', '1', '1', '2018-12-11 16:03:30');
INSERT INTO `system_node` VALUES ('60', 'admin/product_spec', '产品规格', '0', '1', '1', '2018-12-11 16:03:34');
INSERT INTO `system_node` VALUES ('61', 'admin/product_spec/index', '列表', '0', '0', '0', '2018-12-11 16:03:38');
INSERT INTO `system_node` VALUES ('62', 'admin/product_spec/add', '添加', '0', '0', '0', '2018-12-11 16:03:46');
INSERT INTO `system_node` VALUES ('63', 'admin/product_item/index', '列表', '0', '0', '0', '2018-12-11 16:03:51');
INSERT INTO `system_node` VALUES ('64', 'admin/product/index', '列表', '0', '0', '0', '2018-12-11 16:03:56');
INSERT INTO `system_node` VALUES ('65', 'admin/machine_spec/index', '列表', '0', '0', '0', '2018-12-11 16:04:12');
INSERT INTO `system_node` VALUES ('66', 'admin/machine_item/index', '列表', '0', '0', '0', '2018-12-11 16:04:22');
INSERT INTO `system_node` VALUES ('67', 'admin/product_spec/edit', '编辑', '0', '0', '0', '2018-12-11 16:04:29');
INSERT INTO `system_node` VALUES ('68', 'admin/machine_item/add', '添加', '0', '0', '0', '2018-12-11 16:04:35');
INSERT INTO `system_node` VALUES ('69', 'admin/machine_spec/add', '添加', '0', '0', '0', '2018-12-11 16:04:39');
INSERT INTO `system_node` VALUES ('70', 'admin/product/add', '添加', '0', '0', '0', '2018-12-11 16:04:40');
INSERT INTO `system_node` VALUES ('71', 'admin/product_item/add', '添加', '0', '0', '0', '2018-12-11 16:04:46');
INSERT INTO `system_node` VALUES ('72', 'admin/machine_item/edit', '编辑', '0', '0', '0', '2018-12-11 16:04:50');
INSERT INTO `system_node` VALUES ('73', 'admin/machine_spec/edit', '编辑', '0', '0', '0', '2018-12-11 16:04:53');
INSERT INTO `system_node` VALUES ('74', 'admin/product_item/edit', '编辑', '0', '0', '0', '2018-12-11 16:04:54');
INSERT INTO `system_node` VALUES ('75', 'admin/product/edit', '编辑', '0', '0', '0', '2018-12-11 16:05:02');
INSERT INTO `system_node` VALUES ('76', 'admin/machine_item/del', '删除', '0', '0', '0', '2018-12-11 16:05:05');
INSERT INTO `system_node` VALUES ('77', 'admin/machine_spec/del', '删除', '0', '0', '0', '2018-12-11 16:05:08');
INSERT INTO `system_node` VALUES ('78', 'admin/product/del', '删除', '0', '0', '0', '2018-12-11 16:05:10');
INSERT INTO `system_node` VALUES ('79', 'admin/product_item/del', '删除', '0', '0', '0', '2018-12-11 16:05:11');
INSERT INTO `system_node` VALUES ('80', 'admin/product_spec/del', '删除', '0', '0', '0', '2018-12-11 16:05:16');
INSERT INTO `system_node` VALUES ('81', 'admin/machine_item/forbid', '禁用', '0', '0', '0', '2018-12-11 16:05:18');
INSERT INTO `system_node` VALUES ('82', 'admin/machine_spec/forbid', '禁用', '0', '0', '0', '2018-12-11 16:05:21');
INSERT INTO `system_node` VALUES ('83', 'admin/product/forbid', '禁用', '0', '0', '0', '2018-12-11 16:05:23');
INSERT INTO `system_node` VALUES ('84', 'admin/product_item/forbid', '禁用', '0', '0', '0', '2018-12-11 16:05:25');
INSERT INTO `system_node` VALUES ('85', 'admin/product_spec/forbid', '禁用', '0', '0', '0', '2018-12-11 16:05:30');
INSERT INTO `system_node` VALUES ('86', 'admin/machine_item/resume', '开启', '0', '0', '0', '2018-12-11 16:05:34');
INSERT INTO `system_node` VALUES ('87', 'admin/machine_spec/resume', '开启', '0', '0', '0', '2018-12-11 16:05:43');
INSERT INTO `system_node` VALUES ('88', 'admin/product/resume', '开启', '0', '0', '0', '2018-12-11 16:05:46');
INSERT INTO `system_node` VALUES ('89', 'admin/product_item/resume', '开启', '0', '0', '0', '2018-12-11 16:05:47');
INSERT INTO `system_node` VALUES ('90', 'admin/product_spec/resume', '开启', '0', '0', '0', '2018-12-11 16:05:51');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '0192023a7bbd73250516f069df18b500', '22222222', '', '', '', '22984', '2018-12-11 08:48:15', '1', '1', '0', null, '2015-11-13 15:14:22');
