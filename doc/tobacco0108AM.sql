/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tobacco

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-08 15:00:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='品牌表';

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '云烟', 'http://1.ynncp.com/static/upload/cf856ff3d676e67b/22c1a021fe798b6c.png', '云烟品牌', '1', '1544082253', '1546843040', '0', '0');
INSERT INTO `brand` VALUES ('2', '红河', 'http://1.ynncp.com/static/upload/3ea59110d13233e9/6ef920b4074065e5.png', '红河', '4', '1545641520', '1546843110', '0', '0');
INSERT INTO `brand` VALUES ('3', '玉溪', 'http://1.ynncp.com/static/upload/5d0a9a5314f957ca/411eedbee5be4d4c.png', '玉溪', '2', '1546667671', '1546843077', '0', '0');
INSERT INTO `brand` VALUES ('4', '红塔山', 'http://1.ynncp.com/static/upload/7c222762fe390892/bd14609485f228eb.png', '红塔山', '3', '1546667698', '1546843090', '0', '0');
INSERT INTO `brand` VALUES ('5', '钓鱼台', '', '钓鱼台', '6', '1546667725', null, '1', '0');
INSERT INTO `brand` VALUES ('6', '呼伦贝尔', '', '呼伦贝尔', '7', '1546667736', null, '1', '0');
INSERT INTO `brand` VALUES ('7', '雪莲', '', '雪莲', '11', '1546667748', null, '1', '0');
INSERT INTO `brand` VALUES ('8', '小熊猫', '', '小熊猫', '8', '1546667758', null, '1', '0');
INSERT INTO `brand` VALUES ('9', '阿诗玛', '', '阿诗玛', '5', '1546667767', null, '1', '0');
INSERT INTO `brand` VALUES ('10', '茶花', '', '茶花', '9', '1546667777', null, '1', '0');
INSERT INTO `brand` VALUES ('11', '红山茶', '', '红山茶', '10', '1546667791', null, '1', '0');
INSERT INTO `brand` VALUES ('12', '马宝', '', '马宝', '12', '1546667804', null, '1', '0');
INSERT INTO `brand` VALUES ('13', '新兴', '', '新兴', '13', '1546667815', null, '1', '0');
INSERT INTO `brand` VALUES ('14', '其他', 'http://1.ynncp.com/static/upload/3541175dba3ca6b5/f3f5b2c82072e0ad.png', '其他品牌', '5', '1546843148', null, '0', '0');

-- ----------------------------
-- Table structure for machine
-- ----------------------------
DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `pid` varchar(255) DEFAULT NULL COMMENT '产品ids',
  `tpattern` varchar(255) DEFAULT NULL COMMENT '条盒钢印号匹配规则',
  `xpattern` varchar(255) DEFAULT NULL COMMENT '小盒钢印号匹配规则',
  `item` longtext COMMENT '规格属性',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='机器表';

-- ----------------------------
-- Records of machine
-- ----------------------------
INSERT INTO `machine` VALUES ('1', 'FOCKE700(1号机)', '1', '/^11[1-3]{1}01$/', '/^11[1-3]{1}1[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '1', '1544082253', '1546677112', '0', '0');
INSERT INTO `machine` VALUES ('2', 'FOCKE700(2号机)', '1', '/^11[1-3]{1}02$/', '/^11[1-3]{1}2[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '2', '1544151105', '1546677157', '0', '0');
INSERT INTO `machine` VALUES ('3', 'FOCKE700(3号机)', '1', '/^11[1-3]{1}03$/', '/^11[1-3]{1}3[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '3', '1544003178', '1545974764', '0', '0');
INSERT INTO `machine` VALUES ('4', 'FOCKE700(4号机)', '1', '/^11[1-3]{1}04$/', '/^11[1-3]{1}4[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '4', '1544057379', '1545791883', '0', '0');
INSERT INTO `machine` VALUES ('5', 'FOCKE700(5号机)', '1', '/^11[1-3]{1}05$/', '/^11[1-3]{1}5[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '5', '1544411321', '1545791896', '0', '0');
INSERT INTO `machine` VALUES ('6', 'GD X2000(6号机）', '1', '/^11[1-3]{1}06$/', '/^11[1-3]{1}06(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '6', '1544411491', '1545815091', '0', '0');
INSERT INTO `machine` VALUES ('7', 'GD X2000(7号机）', '1', '/^11[1-3]{1}07$/', '/^11[1-3]{1}07(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '7', '1544412196', '1545801127', '0', '0');
INSERT INTO `machine` VALUES ('8', 'GD X2000(8号机）', '1', '/^11[1-3]{1}08$/', '/^11[1-3]{1}08(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '8', '1544412289', '1545801135', '0', '0');
INSERT INTO `machine` VALUES ('9', 'GD X2000(9号机）', '1', '/^11[1-3]{1}09$/', '/^11[1-3]{1}09(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '9', '1544412474', '1545801145', '0', '0');
INSERT INTO `machine` VALUES ('10', 'GD X2000(10号机）', '1', '/^11[1-3]{1}10$/', '/^11[1-3]{1}10(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '10', '1544412963', '1545801152', '0', '0');
INSERT INTO `machine` VALUES ('11', 'FOCKE FX(16号机）', '1', '/^06[1-3]{1}16$/', '/^06[1-3]{1}6[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '16', '1544413024', '1545815246', '0', '0');
INSERT INTO `machine` VALUES ('12', 'FOCKE FX(17号机）', '1', '/^06[1-3]{1}17$/', '/^06[1-3]{1}7[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '17', '1544413024', '1545793186', '0', '0');
INSERT INTO `machine` VALUES ('13', 'FOCKE FX(18号机）', '1', '/^06[1-3]{1}18$/', '/^06[1-3]{1}8[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '18', '1544413024', '1545793479', '0', '0');
INSERT INTO `machine` VALUES ('14', 'FOCKE FX(19号机）', '1', '/^06[1-3]{1}19$/', '/^06[1-3]{1}9[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '19', '1544413024', '1545793490', '0', '0');
INSERT INTO `machine` VALUES ('15', 'FOCKE 350(20号机）', '1,2,28', '/^06[1-3]{1}20$/', '/^06[1-3]{1}20(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '20', '1544413024', '1546676056', '0', '0');
INSERT INTO `machine` VALUES ('16', 'FOCKE 350(21号机）', '1,2,28', '/^06[1-3]{1}21$/', '/^06[1-3]{1}21(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '21', '1544413024', '1546676094', '0', '0');
INSERT INTO `machine` VALUES ('17', 'FOCKE 350(22号机）', '4,34', '/^06[1-3]{1}22$/', '/^06[1-3]{1}22(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '22', '1544413024', '1546848133', '0', '0');
INSERT INTO `machine` VALUES ('18', 'ZB48(56号机）', '1', '/^06[1-3]{1}56$/', '/^06[1-3]{1}56(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '56', '1544413024', '1545817124', '0', '0');
INSERT INTO `machine` VALUES ('19', 'ZB48(57号机）', '1', '/^06[1-3]{1}57$/', '/^06[1-3]{1}57(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '57', '1544413024', '1545801107', '0', '0');
INSERT INTO `machine` VALUES ('20', 'GD S1000(11号机）', '3', '/^09[1-3]{1}11$/', '/^[1-3]{1}11(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '11', '1544412963', '1546844876', '0', '0');
INSERT INTO `machine` VALUES ('21', 'GD S1000(12号机）', '3', '/^09[1-3]{1}12$/', '/^[1-3]{1}12(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '12', '1544412963', '1546844939', '0', '0');
INSERT INTO `machine` VALUES ('22', 'GD S1000(13号机）', '3', '/^09[1-3]{1}13$/', '/^[1-3]{1}13(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '13', '1544412963', '1546844964', '0', '0');
INSERT INTO `machine` VALUES ('23', 'GD S1000(14号机）', '3', '/^09[1-3]{1}14$/', '/^[1-3]{1}14(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '14', '1544412963', '1546844978', '0', '0');
INSERT INTO `machine` VALUES ('24', 'GD S1000(15号机）', '3', '/^09[1-3]{1}15$/', '/^[1-3]{1}15(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '15', '1544412963', '1546845070', '0', '0');
INSERT INTO `machine` VALUES ('25', 'FOCKE 350-细支100mm(23号机）', '23', '/^06[1-4]{1}23$/', '/^06[1-4]{1}23(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '23', '1544412963', '1546848177', '0', '0');
INSERT INTO `machine` VALUES ('26', 'FOCKE 350-细支100mm(24号机）', '23', '/^06[1-4]{1}24$/', '/^06[1-4]{1}24(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '24', '1544412963', '1546848195', '0', '0');
INSERT INTO `machine` VALUES ('27', 'FOCKE 350(25号机）', '1,28', '/^06[1-3]{1}25$/', '/^06[1-3]{1}25(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '25', '1544412963', '1546676394', '0', '0');
INSERT INTO `machine` VALUES ('28', 'FOCKE 350(27号机）', '1,28', '/^06[1-3]{1}27$/', '/^06[1-3]{1}27(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '27', '1544412963', '1545804421', '0', '0');
INSERT INTO `machine` VALUES ('29', 'FOCKE 350(28号机）', '1,28', '/^06[1-3]{1}28$/', '/^06[1-3]{1}28(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '28', '1544412963', '1545804453', '0', '0');
INSERT INTO `machine` VALUES ('30', 'GD X1软包硬化(36号机）', '12,31', '/^09[1-3]{1}36$/', '/^[1-3]{1}36(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '36', '1544412963', '1546848469', '0', '0');
INSERT INTO `machine` VALUES ('31', 'GD X1软包硬化(37号机）', '12,27,31', '/^09[1-3]{1}37$/', '/^[1-3]{1}37(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '37', '1544412963', '1546826679', '0', '0');
INSERT INTO `machine` VALUES ('32', 'GD X1软包硬化(39号机）', '12,14,22', '/^09[1-3]{1}39$/', '/^[1-3]{1}39(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '39', '1544412963', '1546848520', '0', '0');
INSERT INTO `machine` VALUES ('33', 'GD X1软包硬化(40号机）', '12,14,22', '/^09[1-3]{1}40$/', '/^[1-3]{1}40(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '40', '1544412963', '1545804871', '0', '0');
INSERT INTO `machine` VALUES ('34', 'ZB45-短支74mm(41号机）', '13,37,48', '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '41', '1544412963', '1546848610', '0', '0');
INSERT INTO `machine` VALUES ('35', 'FOCKE 350-94mm(47号机）', '42,45,46,47,54', '/^06[1-3]{1}47$/', '/^06[1-3]{1}47(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"22\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"35\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '47', '1544412963', '1546848714', '0', '0');
INSERT INTO `machine` VALUES ('36', 'FOCKE FX(48号机）', '23,25,26,29', '/^06[1-4]{1}48$/', '/^06[1-4]{1}48(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '48', '1544412963', '1546848771', '0', '0');
INSERT INTO `machine` VALUES ('37', 'FOCKE FX(49号机）', '32,33,44', '/^06[1-4]{1}49$/', '/^06[1-4]{1}49(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '49', '1544412963', '1546849014', '0', '0');
INSERT INTO `machine` VALUES ('38', 'ZB28(50号机）', '3', '/^09[1-3]{1}50$/', '/^[1-3]{1}50(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '50', '1544412963', '1546679902', '0', '0');
INSERT INTO `machine` VALUES ('39', 'ZB28(51号机）', '3', '/^09[1-3]{1}51$/', '/^[1-3]{1}51(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '51', '1544412963', '1545812448', '0', '0');
INSERT INTO `machine` VALUES ('40', 'FOCKE FXS(52号机）', '3', '/^09[1-3]{1}52$/', '/^[1-3]{1}52(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '52', '1544412963', '1545816962', '0', '0');
INSERT INTO `machine` VALUES ('41', 'FOCKE FXS(53号机）', '3', '/^09[1-3]{1}53$/', '/^[1-3]{1}53(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '53', '1544412963', '1545812600', '0', '0');
INSERT INTO `machine` VALUES ('42', 'FOCKE FXS(54号机）', '3', '/^09[1-3]{1}54$/', '/^[1-3]{1}54(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '54', '1544412963', '1545812693', '0', '0');
INSERT INTO `machine` VALUES ('43', 'FOCKE FXS(55号机）', '3', '/^09[1-3]{1}55$/', '/^[1-3]{1}55(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '55', '1544412963', '1545812715', '0', '0');
INSERT INTO `machine` VALUES ('44', 'ZB45-细支100mm(58号机）', '23,25', '/^06[1-4]{1}58$/', '/^06[1-4]{1}58(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '58', '1544412963', '1546849136', '0', '0');
INSERT INTO `machine` VALUES ('45', 'ZB45-细支100mm(59号机）', '23,25,26', '/^06[1-4]{1}59$/', '/^06[1-4]{1}59(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '59', '1544412963', '1546849170', '0', '0');
INSERT INTO `machine` VALUES ('46', 'ZB45-细支100mm(60号机）', '23,25', '/^06[1-4]{1}60$/', '/^06[1-4]{1}60(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '60', '1544412963', '1546849190', '0', '0');
INSERT INTO `machine` VALUES ('47', 'ZB45-中支(61号机）', '43', '/^06[1-3]{1}61$/', '/^06[1-3]{1}61(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '61', '1544412963', '1546849204', '0', '0');
INSERT INTO `machine` VALUES ('48', 'FOCKE 350(26号机）', '28', '/^06[1-4]{1}26$/', '/^06[1-4]{1}26(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '26', '1544412963', '1546676394', '0', '0');
INSERT INTO `machine` VALUES ('49', 'FOCKE 350(31号机）', '23', '/^06[1-4]{1}31$/', '/^06[1-4]{1}31(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '31', '1544412963', '1546848430', '0', '0');
INSERT INTO `machine` VALUES ('50', 'GD X1软包硬化(46号机）', null, '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '46', '1544412963', '1545816241', '0', '0');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='属性值表';

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
INSERT INTO `machine_item` VALUES ('69', 'PROTOS2', '23', 'PROTOS2', '1', '1545622576', null, '0', '0');
INSERT INTO `machine_item` VALUES ('70', 'GD121', '23', 'GD121', '1', '1545622696', null, '0', '0');
INSERT INTO `machine_item` VALUES ('71', 'GD121P', '23', 'GD121P', '1', '1545622770', null, '0', '0');
INSERT INTO `machine_item` VALUES ('72', 'PROTOS-M5', '23', 'PROTOS-M5', '1', '1545622794', null, '0', '0');
INSERT INTO `machine_item` VALUES ('73', 'PROTOS70', '23', 'PROTOS70', '1', '1545622915', null, '0', '0');
INSERT INTO `machine_item` VALUES ('74', 'ZJ17', '23', 'ZJ17', '1', '1545622942', null, '0', '0');
INSERT INTO `machine_item` VALUES ('75', 'ZJ112', '23', 'ZJ112', '1', '1545622955', null, '0', '0');
INSERT INTO `machine_item` VALUES ('76', 'ZJ116', '23', 'ZJ116', '1', '1545622972', null, '0', '0');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='规格表';

-- ----------------------------
-- Records of machine_spec
-- ----------------------------
INSERT INTO `machine_spec` VALUES ('1', '机型名称', 'jxmc', '机型名称', '1', '1', '1544168170', '1545632695', '0', '1');
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
INSERT INTO `machine_spec` VALUES ('21', '包装机型', 'bzjx', '包装机型', '3', '2', '1544066187', '1544170359', '0', '0');
INSERT INTO `machine_spec` VALUES ('22', '烟支排列', 'yzpl', '烟支排列', '3', '22', '1544066218', '1544170375', '0', '0');
INSERT INTO `machine_spec` VALUES ('23', '卷烟机型', 'jyjx', '卷烟机型', '3', '2', '1545621710', null, '0', '0');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `role` tinyint(2) DEFAULT NULL COMMENT '角色',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '状态(0:启用,1:禁用)',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('10001', 'pp0001', '111111', 'dggd', '1', 'http://1.ynncp.com/static/upload/avatar/2019-01-07/d89f3a35931c386956c1a402a8e09941.png', '', '', '15888888888', '', '161', '2019-01-08 14:41:47', '0', '0', null, '2015-11-13 15:14:22');
INSERT INTO `member` VALUES ('10006', 'pp0002', '111111', '222222', '2', null, null, '', '15999999999', '', '22', '2019-01-08 14:39:14', '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10007', 'pp0003', '111111', '5678', '2', null, null, '', '15333333333', '', '0', null, '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10008', 'pp0004', '111111', 'mmm1', '1', null, null, '', '15444444444', '', '0', null, '0', '0', null, '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for member_collection
-- ----------------------------
DROP TABLE IF EXISTS `member_collection`;
CREATE TABLE `member_collection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '收藏用户',
  `pid` int(11) DEFAULT NULL COMMENT '产品',
  `mid` int(11) DEFAULT NULL COMMENT '机型',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户收藏表';

-- ----------------------------
-- Records of member_collection
-- ----------------------------

-- ----------------------------
-- Table structure for member_message
-- ----------------------------
DROP TABLE IF EXISTS `member_message`;
CREATE TABLE `member_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布人',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户消息表';

-- ----------------------------
-- Records of member_message
-- ----------------------------
INSERT INTO `member_message` VALUES ('1', '10006', '云烟', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '云烟品牌', '10001', '1544082253', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('2', '10006', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10001', '1544082254', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('3', '10006', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10001', '1544082252', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('4', '10001', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10006', '1544082251', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('5', '10001', '聊天室1', null, '哈哈哈哈哈', '10006', '1546830128', null, '0', '0');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布人',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='通知公告表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '通知1', '通知1', '内容1', null, '0', '1544082253', '1545641717', '0', '0');
INSERT INTO `notice` VALUES ('2', '通知2', '通知2', '红河2', null, '0', '1545641708', null, '0', '0');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `brand` int(11) DEFAULT NULL COMMENT '品牌',
  `ttxm` varchar(255) DEFAULT NULL COMMENT '条条形码',
  `htxm` varchar(255) DEFAULT NULL COMMENT '盒条形码',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `video` varchar(255) DEFAULT NULL COMMENT '视频',
  `video_thumb` varchar(255) DEFAULT NULL COMMENT '视频封面',
  `item` longtext COMMENT '规格属性',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='产品表';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '云烟（紫）', '1', '6901028046893', '6901028046886', 'http://1.ynncp.com/static/upload/0d09b9fccbdc6a01/af70d31628cb4381.png', 'http://1.ynncp.com/static/upload/79079cc0a8e6c6c3/7c05cb46bf1e961f.mp4', 'http://1.ynncp.com/static/upload/0d09b9fccbdc6a01/af70d31628cb4381.png', '{\"ttxm\":\"6901028046893\",\"htxm\":\"6901028046886\",\"ldczwzta\":\"1\",\"dsbzcz\":\"8\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"22\",\"tfwtzms\":\"29\",\"hldtz\":\"37\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a6e7e962d27acea\\/3f03bdd92395f952.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4a6234faa12e42bc\\/66529d3c10afff72.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96192d3d0288172b\\/029b8a471e6ae3af.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f28f3c7f6a7a5bfe\\/bd5d89310b93764d.jpg\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/04b30db3137d5f93\\/cb2c40f11c028bd7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac7f35ef85fa329d\\/79348526957ab39b.jpg\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/86a0e08345c12e89\\/74c845f91a9ef0a1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/86a0e08345c12e89\\/74c845f91a9ef0a1.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0e72692bbd6677b8\\/a4cdc68c29ade394.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4fd70d03685a3941\\/5d5f5e76c5ef2a97.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b3dd9dce3d40439a\\/122fd91b11b0fa66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5f9c296d72b3dc55\\/99ec8ba5ccbe42fc.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/21361e00faf22994\\/3ef66ff67f8128c6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5b5da189909b58a0\\/d02b8785cbc335b2.jpg\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3725d3bfca14bd97\\/802cfc9885d6edda.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3725d3bfca14bd97\\/802cfc9885d6edda.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png\",\"fwtjyzdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9ae2d41f542a8e03\\/c86ae6897233cef5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9ae2d41f542a8e03\\/c86ae6897233cef5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fbf1598af800d10a\\/6089eb5abb65e443.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fbf1598af800d10a\\/6089eb5abb65e443.png\"}', '1', '1544082253', '1546845808', '0', '0');
INSERT INTO `product` VALUES ('2', '云烟（印象）', '2', '6901028310444', '6901028310437', 'http://1.ynncp.com/static/upload/209090f83963451b/dc30a3aa99fae5dd.png', '', 'http://1.ynncp.com/static/upload/209090f83963451b/dc30a3aa99fae5dd.png', '{\"ttxm\":\"6901028310444\",\"htxm\":\"6901028310437\",\"ldczwzta\":\"6\",\"dsbzcz\":\"10\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"24\",\"tfwtzms\":\"31\",\"hldtz\":\"39\",\"hldtwz\":\"47\",\"hsbzcz\":\"51\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"65\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"128\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4d377069655711ae\\/b3a279989ee9aeeb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/293c589d6c6d0509\\/d389245fada20937.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/797e7d2a7d093256\\/889a66f17ac7cfe8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2045f66a40090df7\\/027d9a81735d23dd.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/baf3b91012b150a0\\/3375cc6c4358b806.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/baf3b91012b150a0\\/3375cc6c4358b806.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f634bb98bd455458\\/00dba6b8faaa4d8a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f634bb98bd455458\\/00dba6b8faaa4d8a.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/06aaa1e031ed51d5\\/9580e8452ab64891.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06aaa1e031ed51d5\\/9580e8452ab64891.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31b985929bbccb80\\/55c30eb010786c42.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31b985929bbccb80\\/55c30eb010786c42.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/afaeb02ec42f4700\\/dcd7a626361ad7b6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afaeb02ec42f4700\\/dcd7a626361ad7b6.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2d44354cc21c2259\\/5aa8ac328466d18a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7625e375c9525ce6\\/0aa93710b1e7ec23.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/abd63a34fb74f652\\/84c64a023a9fe2dc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/333534871480ad60\\/a3bab30131cec29a.jpg\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f2292947a86b407e\\/70af6b3766da311e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f2292947a86b407e\\/70af6b3766da311e.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7a3117a4e8867b72\\/e9a393d39ffc7273.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7a3117a4e8867b72\\/e9a393d39ffc7273.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/08a3659f442781c3\\/8ee85023a3988157.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/08a3659f442781c3\\/8ee85023a3988157.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/54e0b470c6c2e101\\/19aabee3290cfd0f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/54e0b470c6c2e101\\/19aabee3290cfd0f.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/320a1f25aa5508d4\\/c94100d032cce74e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/320a1f25aa5508d4\\/c94100d032cce74e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6d03e2859407971\\/376eb456e387a8cc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6d03e2859407971\\/376eb456e387a8cc.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c16a0e26765a00b2\\/59cdeccc42be4b87.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c16a0e26765a00b2\\/59cdeccc42be4b87.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf0a758969a376c9\\/7bd4e59288e6ba99.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf0a758969a376c9\\/7bd4e59288e6ba99.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/69f3e4c1bc7a6cc8\\/64b32ac10ddaf92b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/69f3e4c1bc7a6cc8\\/64b32ac10ddaf92b.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f01971478d595f9\\/1b5d8d4f83ac9c00.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f01971478d595f9\\/1b5d8d4f83ac9c00.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '2', '1545645219', '1546843562', '0', '0');
INSERT INTO `product` VALUES ('3', '云烟（软珍品）', '1', '6901028045919 ', '6901028045902 ', 'http://1.ynncp.com/static/upload/3a24a1e935f825de/22bceecbd73cf2de.png', '', 'http://1.ynncp.com/static/upload/3a24a1e935f825de/22bceecbd73cf2de.png', '{\"ttxm\":\"6901028045919 \",\"htxm\":\"6901028045902 \",\"ldczwzta\":\"5\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"23\",\"tfwtzms\":\"30\",\"hldtz\":\"38\",\"hldtwz\":\"48\",\"hsbzcz\":\"50\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"64\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/39441cf2e3297a6b\\/7a839507c48dbb34.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0081ec2f55c618a8\\/2d6278a6f0cfd2fa.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6bbdde7bc27ffdf1\\/1f6e1e5c79a6b442.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6bbdde7bc27ffdf1\\/1f6e1e5c79a6b442.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2d1b0ae60db406d0\\/88efffbfe6e79c88.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2d1b0ae60db406d0\\/88efffbfe6e79c88.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/67b1cae25de90981\\/d3aa6a1486d5e159.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/67b1cae25de90981\\/d3aa6a1486d5e159.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e010223096b0a9c2\\/6066b91ff9b699c2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e010223096b0a9c2\\/6066b91ff9b699c2.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/89b5f834b21fb3c3\\/8cf466d6d719cd2c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c80dc86734fadadb\\/633d0ca3811af46e.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d063488fbe010370\\/e94da471104a01ea.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f2833d553c194ec\\/88018c3f3e074ea2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f2833d553c194ec\\/88018c3f3e074ea2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d063488fbe010370\\/e94da471104a01ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d063488fbe010370\\/e94da471104a01ea.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b7105db5cb861ca3\\/6f07e69f5b02fbce.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a85a502fb536dcea\\/c6f9ee725bb8562a.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde623af3eeabde4\\/f9eeb9eece3d711f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde623af3eeabde4\\/f9eeb9eece3d711f.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0d1ad9212c4f50ac\\/198c39fe0890153c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1cf37729252ff5c5\\/2b761fcf3f6cc220.jpg\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3052b84497136ea\\/c97a1074743ef517.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3052b84497136ea\\/c97a1074743ef517.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b40292e43e7e5ca\\/e8fcf8a9aacc9104.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b40292e43e7e5ca\\/e8fcf8a9aacc9104.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e27314e2b72b0380\\/a6555210f6674289.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e27314e2b72b0380\\/a6555210f6674289.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e088263ccb171579\\/58f0001b6e8be0da.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e088263ccb171579\\/58f0001b6e8be0da.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06043a5a7973d99e\\/ba74e678b5e06167.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06043a5a7973d99e\\/ba74e678b5e06167.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/396d289ac5fc60aa\\/97bb4df4372b05e0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/396d289ac5fc60aa\\/97bb4df4372b05e0.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b9da91644b8f64b\\/60cab81a237abe28.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b9da91644b8f64b\\/60cab81a237abe28.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/79b62fffd98f226d\\/641472aab6f4d170.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/79b62fffd98f226d\\/641472aab6f4d170.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c1085bda801c29f7\\/ea4b252b3de63b6c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c1085bda801c29f7\\/ea4b252b3de63b6c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fbf1598af800d10a\\/6089eb5abb65e443.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fbf1598af800d10a\\/6089eb5abb65e443.png\"}', '3', '1545977095', '1546847029', '0', '0');
INSERT INTO `product` VALUES ('4', '云烟（大重九9+1）', '1', '6901028311939 ', '6901028311922 ', 'http://1.ynncp.com/static/upload/a2a21117df88778c/5410ce6cbc7c883e.png', '', 'http://1.ynncp.com/static/upload/a2a21117df88778c/5410ce6cbc7c883e.png', '{\"ttxm\":\"6901028311939 \",\"htxm\":\"6901028311922 \",\"ldczwzta\":\"18\",\"hldtz\":\"46\",\"hldtwz\":\"48\",\"lbzcz\":\"61\",\"lbztzms\":\"81\",\"lzlx\":\"93\",\"lzcd\":\"96\",\"jzzztz\":\"111\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2cd4bdcecb981263\\/3f50812544429e1b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2cd4bdcecb981263\\/3f50812544429e1b.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2c852a6d778baa0\\/6222f1175031b93a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2c852a6d778baa0\\/6222f1175031b93a.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/532ccb1e4239b73a\\/e22a5399d0d84103.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/532ccb1e4239b73a\\/e22a5399d0d84103.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/85555322ea3458d0\\/ba7d65b8a8834cf1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/85555322ea3458d0\\/ba7d65b8a8834cf1.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/65a23174bba1a5a3\\/5d6b3ae8997c9b62.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/65a23174bba1a5a3\\/5d6b3ae8997c9b62.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff56575857a1c470\\/9e004c7d279d19e9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff56575857a1c470\\/9e004c7d279d19e9.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbcaebf28500af0\\/0de262307a69ef89.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbcaebf28500af0\\/0de262307a69ef89.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/09c4efd50a96ed19\\/e7d546376ba49abd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/09c4efd50a96ed19\\/e7d546376ba49abd.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e779b9fe7546f23\\/ed68b4825c43866d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e779b9fe7546f23\\/ed68b4825c43866d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/edc1bcaa9f6c506c\\/1e80df68f8b7e52b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/edc1bcaa9f6c506c\\/1e80df68f8b7e52b.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5483e5bfa405ded5\\/110e4568611dc5a4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5483e5bfa405ded5\\/110e4568611dc5a4.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/56bc465fb25b7030\\/49d4c73e79a5591f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/56bc465fb25b7030\\/49d4c73e79a5591f.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bf35c8d9cbe77f5d\\/bd057e525ca71390.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bf35c8d9cbe77f5d\\/bd057e525ca71390.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ef501a93a337cc1\\/a76ad6df32d015d1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ef501a93a337cc1\\/a76ad6df32d015d1.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/97ca25a02c41690f\\/c103ea780b1b922b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/97ca25a02c41690f\\/c103ea780b1b922b.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb778180eef437fe\\/e1a1bbca4d908d9c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb778180eef437fe\\/e1a1bbca4d908d9c.png\",\"fwtjyzdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc715d95e184cd50\\/160659b7fc9ed5f4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc715d95e184cd50\\/160659b7fc9ed5f4.png\",\"fwtjyzdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4048e44a8875e812\\/254417008e6743ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4048e44a8875e812\\/254417008e6743ac.png\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/618e3f3a44bd41eb\\/4e6370933aa812d2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/618e3f3a44bd41eb\\/4e6370933aa812d2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '4', '1545991777', '1546847803', '0', '0');
INSERT INTO `product` VALUES ('5', '云烟（呼伦贝尔碧草云天）', '1', '6901028340434', '6901028340427', '', '', '', '{\"ttxm\":\"6901028340434\",\"htxm\":\"6901028340427\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '5', '1546667316', null, '0', '0');
INSERT INTO `product` VALUES ('6', '云烟（软如意）', '1', '6901028310628', '6901028310611', '', '', '', '{\"ttxm\":\"6901028310628\",\"htxm\":\"6901028310611\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '6', '1546668073', null, '0', '0');
INSERT INTO `product` VALUES ('7', '云烟(硬大重九出口CNDF)', '1', '6901028056472', '6901028056007', '', '', '', '{\"ttxm\":\"6901028056472\",\"htxm\":\"6901028056007\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '7', '1546668107', null, '0', '0');
INSERT INTO `product` VALUES ('8', '云烟(软印象烟庄)', '1', '6901028051163', '6901028051156', '', '', '', '{\"ttxm\":\"6901028051163\",\"htxm\":\"6901028051156\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '8', '1546668131', null, '0', '0');
INSERT INTO `product` VALUES ('9', '云烟(印象烟庄)', '1', '6901028051613', '6901028051606', '', '', '', '{\"ttxm\":\"6901028051613\",\"htxm\":\"6901028051606\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '9', '1546668152', null, '0', '0');
INSERT INTO `product` VALUES ('10', '云烟(红)', '1', '6901028045582', '6901028045575', '', '', '', '{\"ttxm\":\"6901028045582\",\"htxm\":\"6901028045575\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '10', '1546668175', null, '0', '0');
INSERT INTO `product` VALUES ('11', '云烟(软紫)', '1', '6901028311168', '6901028311151', '', '', '', '{\"ttxm\":\"6901028311168\",\"htxm\":\"6901028311151\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '11', '1546668196', null, '0', '0');
INSERT INTO `product` VALUES ('12', '云烟（软大重九）', '1', '6901028051989', '6901028051996', 'http://1.ynncp.com/static/upload/73891c9055ee8af6/4f100a6d7c6e3dc3.png', '', 'http://1.ynncp.com/static/upload/73891c9055ee8af6/4f100a6d7c6e3dc3.png', '{\"ttxm\":\"6901028051989\",\"htxm\":\"6901028051996\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8cbdd5598c091e7\\/819b789e8cead3cf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8cbdd5598c091e7\\/819b789e8cead3cf.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/82e8aa13fdb881d7\\/14fbfbef51221c64.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/431519117acd2083\\/9531e54dd1603343.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b81807a82a46e563\\/086094abee962c2e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4f1ab87bf03f5640\\/4af5b31498a6557d.jpg\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb4ab0f8a16f366f\\/7c9034c7b736a440.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb4ab0f8a16f366f\\/7c9034c7b736a440.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5e8140ec87cefb0c\\/71441b54199f0f0a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2722a4b13c189d06\\/2205d552566bc211.jpg\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e49858b909fe5642\\/7e423e66a5c8a695.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/315c85be51ab93ae\\/bdb2b9e9bdff1478.jpg\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e1fb7830552a3b53\\/3be183f0afa6e8cf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6980291df12668b\\/d14a5b3937b97517.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e82b3cbbbf59c7dc\\/958912f1c4286d9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e82b3cbbbf59c7dc\\/958912f1c4286d9a.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85b14dd508f516a\\/b7ab1de7601276f8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d2125684f695ff4\\/98b1a65563c9c9af.jpg\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecb40da185f5f417\\/f1c65935504b9894.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f1ee2e14ebfee40\\/0e0ab2a448f0bad4.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/27cbaa9b1967ddf7\\/2edc12376412edbe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b6548868f22660b\\/f2cbd333741dc17e.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2274292836629c3\\/1af7fab6b011187b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2274292836629c3\\/1af7fab6b011187b.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/93ce76bdbf171174\\/ad1c5cb92afa2ac4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/93ce76bdbf171174\\/ad1c5cb92afa2ac4.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4598fea725974ed1\\/15e431d364417c34.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4598fea725974ed1\\/15e431d364417c34.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ad41b84d6ae7412\\/fd0ccbff307b94f1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ad41b84d6ae7412\\/fd0ccbff307b94f1.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cd0cf4bede3ce216\\/4a022dbeeed27ad9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cd0cf4bede3ce216\\/4a022dbeeed27ad9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '12', '1546668225', '1546849853', '0', '0');
INSERT INTO `product` VALUES ('13', '云烟（74mm大团结）', '1', '6901028313827', '6901028313810', 'http://1.ynncp.com/static/upload/e13a9f20d6e9f272/73435dfcffd2f809.png', '', 'http://1.ynncp.com/static/upload/e13a9f20d6e9f272/73435dfcffd2f809.png', '{\"ttxm\":\"6901028313827\",\"htxm\":\"6901028313810\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/91ca899a5804c72d\\/ed31b0086e69cdd8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/406b663e2bf12981\\/3876f59fec7eb9d7.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c6512114dad95e7\\/82d1046986a3d597.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c6512114dad95e7\\/82d1046986a3d597.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f2d424141e44808\\/98c032fd4b9645ec.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f2d424141e44808\\/98c032fd4b9645ec.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/329b7d74ab3e3dba\\/2011942c182276d4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/329b7d74ab3e3dba\\/2011942c182276d4.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8bda84999c91aae1\\/35da7eb8e26fd027.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8bda84999c91aae1\\/35da7eb8e26fd027.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc2316f61a242b1c\\/637c1045dbb471e9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc2316f61a242b1c\\/637c1045dbb471e9.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc278e3aa6704258\\/187155a56d7d220d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc278e3aa6704258\\/187155a56d7d220d.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/696570ea49a02669\\/75f25133e8ceb4b1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3bf0aa51105af6c\\/a0e3b0c323e23ab9.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17bd52d8d3dd5e2f\\/49b0fad9bc95c456.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17bd52d8d3dd5e2f\\/49b0fad9bc95c456.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff6cf02b4544b5e0\\/c1a8e0bb0f2e9c87.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff6cf02b4544b5e0\\/c1a8e0bb0f2e9c87.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7fdf7855de19e387\\/e431583aa612ea88.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7fdf7855de19e387\\/e431583aa612ea88.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/698daf5851b9e699\\/c8175d2f4cc2bbbf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/698daf5851b9e699\\/c8175d2f4cc2bbbf.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/20866eebe069d689\\/0d63efcc4f6ba02c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/20866eebe069d689\\/0d63efcc4f6ba02c.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/34dbd16b288d4d53\\/eae5929ec5573f61.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/34dbd16b288d4d53\\/eae5929ec5573f61.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bbe5a84bb33f12c\\/193b28b54674bc1a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bbe5a84bb33f12c\\/193b28b54674bc1a.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4538060ae499f59c\\/d652a90d43c4d9c5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4538060ae499f59c\\/d652a90d43c4d9c5.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d45e977cffdab287\\/86ed664aee2372b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d45e977cffdab287\\/86ed664aee2372b7.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b1d28daf312f0b67\\/309914d626cb2257.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b1d28daf312f0b67\\/309914d626cb2257.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '13', '1546668249', '1546848249', '0', '0');
INSERT INTO `product` VALUES ('14', '云烟（软珍品红韵）', '1', '6901028313766', '6901028313759', '', '', '', '{\"ttxm\":\"6901028313766\",\"htxm\":\"6901028313759\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '14', '1546668281', null, '0', '0');
INSERT INTO `product` VALUES ('15', '云烟（印象出口）（免税版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '15', '1546668309', null, '0', '0');
INSERT INTO `product` VALUES ('16', '云烟（印象出口）（免税版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '16', '1546668328', null, '0', '1');
INSERT INTO `product` VALUES ('17', '云烟（印象出口）（普通英文版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '17', '1546668689', null, '0', '0');
INSERT INTO `product` VALUES ('18', '云烟（印象出口）（TW版）', '1', '6901028312059', '6901028312042', '', '', '', '{\"ttxm\":\"6901028312059\",\"htxm\":\"6901028312042\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '18', '1546668716', null, '0', '0');
INSERT INTO `product` VALUES ('19', '云烟(小熊猫)', '1', '6901028313551', '6901028313544', '', '', '', '{\"ttxm\":\"6901028313551\",\"htxm\":\"6901028313544\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '19', '1546668733', null, '0', '0');
INSERT INTO `product` VALUES ('20', '云烟(雪域)', '1', '6901028312929', '6901028312912', '', '', '', '{\"ttxm\":\"6901028312929\",\"htxm\":\"6901028312912\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '20', '1546668758', null, '0', '0');
INSERT INTO `product` VALUES ('21', '云烟(福)', '1', '6901028310987', '6901028310970', '', '', '', '{\"ttxm\":\"6901028310987\",\"htxm\":\"6901028310970\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '21', '1546668780', null, '0', '0');
INSERT INTO `product` VALUES ('22', '云烟（软珍品zj）', '1', '6901028046657', '6901028046640', '', '', '', '{\"ttxm\":\"6901028046657\",\"htxm\":\"6901028046640\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '22', '1546668799', null, '0', '0');
INSERT INTO `product` VALUES ('23', '云烟（细支云龙）', '1', '6901028339957', '6901028339940', 'http://1.ynncp.com/static/upload/7dd37802ba868da1/be0425a842c71f86.png', '', 'http://1.ynncp.com/static/upload/7dd37802ba868da1/be0425a842c71f86.png', '{\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a7714cd549b494dc\\/eae4b9eb38aa05f9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c5068465a37239b2\\/bae34cf0736e28df.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/52e444d73c5a31b8\\/f80fc80b4a1065c0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/52e444d73c5a31b8\\/f80fc80b4a1065c0.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1a8cf1b142b2e217\\/594d6f1acc8e9153.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1a8cf1b142b2e217\\/594d6f1acc8e9153.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc84a8918906d570\\/a6c7fde60d8d9033.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc84a8918906d570\\/a6c7fde60d8d9033.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5987125395e5d2d7\\/3e9a4058b7224251.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5987125395e5d2d7\\/3e9a4058b7224251.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab4c13dae03d5837\\/e6118effede2f804.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab4c13dae03d5837\\/e6118effede2f804.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8c6032efe1933c80\\/1d2047dc7ec3947b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8c6032efe1933c80\\/1d2047dc7ec3947b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d94ab58e1699ad97\\/ae63ed84921f4a9c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d94ab58e1699ad97\\/ae63ed84921f4a9c.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b5bd1d41b792889f\\/d0b0931a9afaebeb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fec6e3868d18166b\\/f109b49a07335640.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd6ad6b671ff61f6\\/d30e2b4bb7c4cfdd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd6ad6b671ff61f6\\/d30e2b4bb7c4cfdd.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3f3a4f8685508b92\\/783c72c4e12dee77.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3f3a4f8685508b92\\/783c72c4e12dee77.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdf2e7ee745a6b0\\/bf5410830b286214.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdf2e7ee745a6b0\\/bf5410830b286214.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2954e652a7a45f6f\\/197a36fd69bf0b79.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2954e652a7a45f6f\\/197a36fd69bf0b79.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c34fb542d693e68e\\/22113e7ec4bae57e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c34fb542d693e68e\\/22113e7ec4bae57e.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbcae9c194208e00\\/533a5d1c2e241030.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbcae9c194208e00\\/533a5d1c2e241030.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f06a9f95d0ef27e8\\/82cd35a56c500f12.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f06a9f95d0ef27e8\\/82cd35a56c500f12.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ea3b2b7d8f8fbc7\\/87495d125b08e636.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ea3b2b7d8f8fbc7\\/87495d125b08e636.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ff7b7e070a1c8cc\\/587b042f4f7ec979.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ff7b7e070a1c8cc\\/587b042f4f7ec979.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/91c77f219df4e599\\/f9818aa0b0c78c66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/91c77f219df4e599\\/f9818aa0b0c78c66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b96ff6177d072868\\/ab9b52a826c047ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b96ff6177d072868\\/ab9b52a826c047ea.png\"}', '23', '1546668873', '1546852185', '0', '0');
INSERT INTO `product` VALUES ('24', '云烟（细支云龙）ZB45', '1', '6901028339957', '6901028339940', '', '', '', '{\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '24', '1546668893', null, '0', '1');
INSERT INTO `product` VALUES ('25', '云烟（细支珍品）', '1', '6901028339537', '6901028339520', 'http://1.ynncp.com/static/upload/b36a28bdbf6d2aa3/8a4f2963a404a64d.png', '', '', '{\"ttxm\":\"6901028339537\",\"htxm\":\"6901028339520\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/39e896a9d3bf79df\\/a76bf4ab5eb4eb5c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/39e896a9d3bf79df\\/a76bf4ab5eb4eb5c.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/969f189825f30e6c\\/ad80d9bbbda4a9e7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/969f189825f30e6c\\/ad80d9bbbda4a9e7.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a45c65cc8e99cf79\\/3fb90e25b0257416.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a45c65cc8e99cf79\\/3fb90e25b0257416.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/61157b8215dbe471\\/e78c0769efa1f3ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/61157b8215dbe471\\/e78c0769efa1f3ac.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/19c7f9262bcd7878\\/28967adea2c7e8eb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/19c7f9262bcd7878\\/28967adea2c7e8eb.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/82261b1dba2f5d04\\/0a234d6e2f179291.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/82261b1dba2f5d04\\/0a234d6e2f179291.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbb80108dbf0a207\\/fdab28ab53e911b0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbb80108dbf0a207\\/fdab28ab53e911b0.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/14bcf34630370099\\/e8b33c4df195f902.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/14bcf34630370099\\/e8b33c4df195f902.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7403cdf4d1b9ace5\\/a804e14bf52a87ab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7403cdf4d1b9ace5\\/a804e14bf52a87ab.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/29a57be52fadf635\\/7848641b3a24a21a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/29a57be52fadf635\\/7848641b3a24a21a.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4e83f36fdf87865\\/ae9a757b3de23ae3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4e83f36fdf87865\\/ae9a757b3de23ae3.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb3b3e97fd36fb3c\\/705cc0df1427b4a3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb3b3e97fd36fb3c\\/705cc0df1427b4a3.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b8f0487d8d936c6\\/83937685767d623d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b8f0487d8d936c6\\/83937685767d623d.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb8c63c4576095ad\\/637cae283b76a132.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb8c63c4576095ad\\/637cae283b76a132.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b76950a96f2a3a74\\/a73da69175522e0e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b76950a96f2a3a74\\/a73da69175522e0e.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/75358f3aea2348bf\\/a0046f5c124a7b16.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/75358f3aea2348bf\\/a0046f5c124a7b16.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b96ff6177d072868\\/ab9b52a826c047ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b96ff6177d072868\\/ab9b52a826c047ea.png\"}', '25', '1546668912', '1546853086', '0', '0');
INSERT INTO `product` VALUES ('26', '云烟（细支大重九）', '1', '6901028312356', '6901028312349', 'http://1.ynncp.com/static/upload/b5f9b3b0a3aee001/58e51f45be39a7d5.png', '', 'http://1.ynncp.com/static/upload/b5f9b3b0a3aee001/58e51f45be39a7d5.png', '{\"ttxm\":\"6901028312356\",\"htxm\":\"6901028312349\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b53e1ea95e6626a2\\/38d31861110b6d66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b53e1ea95e6626a2\\/38d31861110b6d66.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f7642774b64d1519\\/96345d8bc010abff.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f7642774b64d1519\\/96345d8bc010abff.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/afc370fc5e44f7d1\\/61bbd75221d796f8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afc370fc5e44f7d1\\/61bbd75221d796f8.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6927b73640c9be86\\/c3cacc2bde1e5b88.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6927b73640c9be86\\/c3cacc2bde1e5b88.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a218443aec434baa\\/2d3d62a6e26a5053.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a218443aec434baa\\/2d3d62a6e26a5053.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d04518e05a0198e\\/16973f16fcfcc2cd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d04518e05a0198e\\/16973f16fcfcc2cd.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e295eb8f9c167d68\\/0cd5be602f91f730.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e295eb8f9c167d68\\/0cd5be602f91f730.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/94218ad8b7565e50\\/ac37b618ec1c8a9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/94218ad8b7565e50\\/ac37b618ec1c8a9a.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d1e90ae4cf7e6ef6\\/796f032fec68790d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d1e90ae4cf7e6ef6\\/796f032fec68790d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7315ab75e04ab389\\/d584504f845565b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7315ab75e04ab389\\/d584504f845565b7.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecc660cbfe6c2d0c\\/729c0cda57495009.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecc660cbfe6c2d0c\\/729c0cda57495009.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ad1c6abd316ac80\\/860df3107e10fe9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ad1c6abd316ac80\\/860df3107e10fe9a.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc10fa9725df79a3\\/5c6184ea2d336bba.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc10fa9725df79a3\\/5c6184ea2d336bba.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/43c4b5e61dd2fa10\\/3860e092d76a4be6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/43c4b5e61dd2fa10\\/3860e092d76a4be6.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31c7d6778ecb81e9\\/10d5d246d3d8a9ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31c7d6778ecb81e9\\/10d5d246d3d8a9ac.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/57e7940ede6faaf9\\/73f48c5ac9cc4e16.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/57e7940ede6faaf9\\/73f48c5ac9cc4e16.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '26', '1546668983', '1546852491', '0', '0');
INSERT INTO `product` VALUES ('27', '云烟（百味人生）', '1', '6901028056618', '6901028056601', 'http://1.ynncp.com/static/upload/c7ffd2feb105bb33/9833d3fbc4535ea8.png', '', 'http://1.ynncp.com/static/upload/c7ffd2feb105bb33/9833d3fbc4535ea8.png', '{\"ttxm\":\"6901028056618\",\"htxm\":\"6901028056601\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e711da5c4cc6b0c3\\/cd1e5edd44bc42d1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e711da5c4cc6b0c3\\/cd1e5edd44bc42d1.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9f77c0038b4f29a\\/f37d4bd5346897ad.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c091cb3842a006a2\\/a0d48296d4244bf9.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0b67e527578e649\\/b26f98272efbf8ba.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0b67e527578e649\\/b26f98272efbf8ba.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb7ba6d577e3a37e\\/3c932a643b0656ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb7ba6d577e3a37e\\/3c932a643b0656ea.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cdcb98cb6df27556\\/e37bb1a0b271ba59.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cdcb98cb6df27556\\/e37bb1a0b271ba59.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c3af968a233db781\\/921a90c4732b3d99.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c3af968a233db781\\/921a90c4732b3d99.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e6b606fde35d3942\\/3282b40c5b34eb8c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e6b606fde35d3942\\/3282b40c5b34eb8c.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/162fbfe30c62ec8d\\/ec2b470ce1d1f3e4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/162fbfe30c62ec8d\\/ec2b470ce1d1f3e4.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/41ca0755bc13411a\\/bc26910de3166c31.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/41ca0755bc13411a\\/bc26910de3166c31.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c8ae2ed962172d2\\/efaa2587183839c4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1ccfe6bfc2fdfeea\\/0d08c72906e98ba3.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6f324fc17f208d3c\\/77b076209c0d71b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e471b209d246cd6c\\/8c40f993887104d9.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd4843d92b30a46c\\/5989e11b04e3d024.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd4843d92b30a46c\\/5989e11b04e3d024.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f23c9f033bbbd32f\\/02977b91c6c62bbe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f23c9f033bbbd32f\\/02977b91c6c62bbe.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ea9e3d501339a5cc\\/8c47bf0837e84827.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ea9e3d501339a5cc\\/8c47bf0837e84827.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3ec21321833c24c\\/bd5b6aead5d1f401.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3ec21321833c24c\\/bd5b6aead5d1f401.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b38e66b7e64117e1\\/4ac7be139d867aea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b38e66b7e64117e1\\/4ac7be139d867aea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '27', '1546669005', '1546849397', '0', '0');
INSERT INTO `product` VALUES ('28', '云烟（硬云龙）', '1', '6901028339896', '6901028339889', 'http://1.ynncp.com/static/upload/3fca7ddbfecbf18b/0f402dd81103c05d.png', '', 'http://1.ynncp.com/static/upload/3fca7ddbfecbf18b/0f402dd81103c05d.png', '{\"ttxm\":\"6901028339896\",\"htxm\":\"6901028339889\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ebc4ca65e531033\\/3fed08d12256db98.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ebc4ca65e531033\\/3fed08d12256db98.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/47af50bb6ffb9699\\/2825dec46456aa8f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b477f5e4b7ead4c\\/817c1f17fcb6c8fc.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9814e03c78a1f14f\\/e0f05a81cde51091.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9814e03c78a1f14f\\/e0f05a81cde51091.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6de60faa01cb0f3e\\/554867a7e1ed8a97.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6de60faa01cb0f3e\\/554867a7e1ed8a97.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2a723d1e054c2749\\/8650da2ccac97030.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab943e852d52cd9c\\/878601a266ff2d47.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/762414f5f3655997\\/4dd3c13010287b0d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/762414f5f3655997\\/4dd3c13010287b0d.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4bbe0f240a82111\\/4990760db889563c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4bbe0f240a82111\\/4990760db889563c.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3a9c44016b3914fe\\/531970eeb2c8f57c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3a9c44016b3914fe\\/531970eeb2c8f57c.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/06bd16ce4e804b6b\\/ae45726aaf3adc1a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06bd16ce4e804b6b\\/ae45726aaf3adc1a.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31741e85bf23a6ac\\/58b49a4d5a1ebde8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31741e85bf23a6ac\\/58b49a4d5a1ebde8.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/46680e8de3226a54\\/558a0405fc0c1ec7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/46680e8de3226a54\\/558a0405fc0c1ec7.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8d20f02091b5462e\\/d1cdfd288630b01c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8d20f02091b5462e\\/d1cdfd288630b01c.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/40a7cf74a96ec9fe\\/86dbbf7bd5fa8b06.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/40a7cf74a96ec9fe\\/86dbbf7bd5fa8b06.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '28', '1546669063', '1546853968', '0', '0');
INSERT INTO `product` VALUES ('29', '云烟（神秘花园）', '1', '6901028051880', '6901028051873', 'http://1.ynncp.com/static/upload/3d9671d411159e57/f820eeb9c3ae4627.png', '', 'http://1.ynncp.com/static/upload/3d9671d411159e57/f820eeb9c3ae4627.png', '{\"ttxm\":\"6901028051880\",\"htxm\":\"6901028051873\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3337a2018265c424\\/44e8a3c7ee127c0f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3337a2018265c424\\/44e8a3c7ee127c0f.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9686ea6e93dbfd0\\/c556160d6877bbc8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9686ea6e93dbfd0\\/c556160d6877bbc8.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6d4adc3632d51d59\\/1cc555d75169115f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6d4adc3632d51d59\\/1cc555d75169115f.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e758d82e1e93d1\\/f70646b823f19eca.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e758d82e1e93d1\\/f70646b823f19eca.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/319d59a6d2a52de1\\/38ee8a62ed93dc7b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/319d59a6d2a52de1\\/38ee8a62ed93dc7b.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbfdf60507cd352a\\/ddc3e95ac1945937.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbfdf60507cd352a\\/ddc3e95ac1945937.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/50c9a03963e71de9\\/176e9f569e69e535.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/50c9a03963e71de9\\/176e9f569e69e535.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a2d001a39eebed49\\/c10e99098997f7d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a2d001a39eebed49\\/c10e99098997f7d8.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/950e53f4a7900175\\/e51822a485cafdcc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/950e53f4a7900175\\/e51822a485cafdcc.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2681b254a851b3fa\\/a63480d583807b7d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2681b254a851b3fa\\/a63480d583807b7d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f5206b857f25b5b4\\/7660fcffbe42e420.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f5206b857f25b5b4\\/7660fcffbe42e420.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/de0de118d297b6fe\\/cb007298994325ff.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/de0de118d297b6fe\\/cb007298994325ff.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cfb372b316dd4e6\\/7dac0e67e030aa25.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cfb372b316dd4e6\\/7dac0e67e030aa25.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c5734f8665aa795\\/44935752212e5e83.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c5734f8665aa795\\/44935752212e5e83.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2633d507641a4d3a\\/15e103c9e00d81e9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2633d507641a4d3a\\/15e103c9e00d81e9.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/14117486a4681166\\/aaf75aa3e9cd07b3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/14117486a4681166\\/aaf75aa3e9cd07b3.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f164e95ac055d7e4\\/e0ab54db80932a55.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f164e95ac055d7e4\\/e0ab54db80932a55.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6b42ff4f4badd0ee\\/9eb778e9292a9ccf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6b42ff4f4badd0ee\\/9eb778e9292a9ccf.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b9851b5dc4926c91\\/f5a11efa2d6b33ed.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b9851b5dc4926c91\\/f5a11efa2d6b33ed.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '29', '1546669090', '1546847526', '0', '0');
INSERT INTO `product` VALUES ('30', '云烟（软珍品ZJ）', '1', '6901028046657', '6901028046640', '', '', '', '{\"ttxm\":\"6901028046657\",\"htxm\":\"6901028046640\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '30', '1546669148', null, '0', '1');
INSERT INTO `product` VALUES ('31', '云烟（软礼印象）', '1', '6901028310833', '6901028310826', 'http://1.ynncp.com/static/upload/dcd8e3b3c13d08c3/122b4fdb91fc97cc.png', '', 'http://1.ynncp.com/static/upload/dcd8e3b3c13d08c3/122b4fdb91fc97cc.png', '{\"ttxm\":\"6901028310833\",\"htxm\":\"6901028310826\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c3cb6787f73663a5\\/8286d8d023f82cf9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bc236884f19c2ac9\\/036eee4563423ccb.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8037893e9c381d7\\/0b2d5d483e9a168c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a720401b09bc2c83\\/7be31d262fad4b83.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f99bfc2505a8855\\/2bbaf9163372ebed.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f703a9deb122b519\\/2b39309208cf74a5.jpg\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3212132fbeb9ea41\\/09e2f7d7c7442ffb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3212132fbeb9ea41\\/09e2f7d7c7442ffb.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7543eccd224ceb77\\/14a245ec81d05085.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7543eccd224ceb77\\/14a245ec81d05085.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc9a0c9f7b16fcaa\\/33dcb22f97a12f96.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc9a0c9f7b16fcaa\\/33dcb22f97a12f96.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/63bc381bbb0338c2\\/5e12bcc6062adfd5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/63bc381bbb0338c2\\/5e12bcc6062adfd5.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b4f3cd9f2c29fd36\\/0955d76f27c8a199.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/01e303af26bcce2e\\/55937a27cdc7562c.jpg\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a5b7e7c930ab498\\/25f78d2c24c0ab15.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a5b7e7c930ab498\\/25f78d2c24c0ab15.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/32c956eb6fe39901\\/c0ececcb1b5a187a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/159ba09edc5493c0\\/df146d4162ef7fea.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/61e5a6bde94c3f20\\/f584aaf6b2a86184.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/625360e7e770b452\\/311b93dc55380776.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4dd65171eb042be\\/8bed09457b7a073a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4dd65171eb042be\\/8bed09457b7a073a.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6c34a3a8cb8eb9f4\\/e98d200e7cf37033.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6c34a3a8cb8eb9f4\\/e98d200e7cf37033.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/13ed6872f4134298\\/01fc240001820be4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/13ed6872f4134298\\/01fc240001820be4.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a1696848b02ba898\\/28696bcfd48fc32b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a1696848b02ba898\\/28696bcfd48fc32b.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/912c583604360ed3\\/1499153b6c647850.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/912c583604360ed3\\/1499153b6c647850.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/106d3550983b5061\\/d2ae96fea09964de.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/106d3550983b5061\\/d2ae96fea09964de.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '31', '1546669170', '1546851748', '0', '0');
INSERT INTO `product` VALUES ('32', '云烟（84mm细支祥瑞）', '1', '6901028312622', '6901028312615', 'http://1.ynncp.com/static/upload/af594b50755b9e0c/f8f31fb4322f30e8.png', '', 'http://1.ynncp.com/static/upload/af594b50755b9e0c/f8f31fb4322f30e8.png', '{\"ttxm\":\"6901028312622\",\"htxm\":\"6901028312615\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4570a0052a9627cf\\/8ca44dbf98f304ca.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8928a05461ff1799\\/dcf783462c3411dd.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/902b032ea5f0647d\\/b4c7312397f7c4a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/902b032ea5f0647d\\/b4c7312397f7c4a5.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e31fe4a7e00720fc\\/1fde4c209a094a7f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e31fe4a7e00720fc\\/1fde4c209a094a7f.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/da22090cec437317\\/1c91b0c6c57d6720.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/da22090cec437317\\/1c91b0c6c57d6720.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cff54ef054eedbc\\/d69b68e9ecea4f01.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cff54ef054eedbc\\/d69b68e9ecea4f01.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb4eb47475618223\\/2a52b457957c3ea7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb4eb47475618223\\/2a52b457957c3ea7.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/473a5aa2135ee500\\/7580fb1a06cf37a8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/29dcfcd48df17157\\/5114bfec7b60ce63.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00748e51cc7bb5b\\/7cc2e06c2b65870d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00748e51cc7bb5b\\/7cc2e06c2b65870d.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b65e3af0873d18c\\/1ca3cac9924a2bf7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b65e3af0873d18c\\/1ca3cac9924a2bf7.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e014f6f651c4dc7f\\/ad892cbbe8952d2e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e014f6f651c4dc7f\\/ad892cbbe8952d2e.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c22cd88893b9955\\/65ca9f8deb07895e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c22cd88893b9955\\/65ca9f8deb07895e.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d5c7035236fbe4c\\/988c584bd8b7d30e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d5c7035236fbe4c\\/988c584bd8b7d30e.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1facc40e492bd128\\/6deea75a01d78de2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1facc40e492bd128\\/6deea75a01d78de2.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b15e69d791edfdea\\/9fabadb94f1721c1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b15e69d791edfdea\\/9fabadb94f1721c1.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/752f370a8bc12258\\/62c411b9ca4a73a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/752f370a8bc12258\\/62c411b9ca4a73a5.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e253c971d934c37f\\/4a1b417441689a64.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e253c971d934c37f\\/4a1b417441689a64.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '32', '1546669189', '1546852809', '0', '0');
INSERT INTO `product` VALUES ('33', '云烟（84mm细支雪域）', '1', '6901028313469', '6901028313452', 'http://1.ynncp.com/static/upload/8996b4e41b869e4a/058c2f2968d29f1c.png', '', 'http://1.ynncp.com/static/upload/8996b4e41b869e4a/058c2f2968d29f1c.png', '{\"ttxm\":\"6901028313469\",\"htxm\":\"6901028313452\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a4787fdf91d2731b\\/d085e14645faf311.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/62849ca9f7c1103c\\/63a3f53fd07cf9c7.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/826a948b9b926e22\\/b9c1ea2942fedc74.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/826a948b9b926e22\\/b9c1ea2942fedc74.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0f19905c8c17c916\\/1412c06fa0b60574.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0f19905c8c17c916\\/1412c06fa0b60574.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7038ab1111f13425\\/159cda245070d540.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7038ab1111f13425\\/159cda245070d540.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e43b8f2a63fcdd50\\/df5dacf01ab0c2a4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e43b8f2a63fcdd50\\/df5dacf01ab0c2a4.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac1dffa1dbfeb778\\/b18b7476b1eeb326.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac1dffa1dbfeb778\\/b18b7476b1eeb326.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/05781bf31ff9f087\\/018e3c1a5508a680.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4eeae7746ec766c\\/4e663a7139a2f50c.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/457aa525dda5810f\\/1d774b35de276604.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/457aa525dda5810f\\/1d774b35de276604.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb0300ea7c8e2b6c\\/5e780029d3a1a008.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb0300ea7c8e2b6c\\/5e780029d3a1a008.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/88c12d4e66e07b8b\\/7adf5640e681c14e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/88c12d4e66e07b8b\\/7adf5640e681c14e.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/aae7ea1952321c46\\/17588f28ab0c9459.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/aae7ea1952321c46\\/17588f28ab0c9459.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8138411439383c71\\/21107663f7acda20.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8138411439383c71\\/21107663f7acda20.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d79d262a12ad6f9\\/3ad8555aff8d9f18.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d79d262a12ad6f9\\/3ad8555aff8d9f18.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6a350802ed7af049\\/a7e97e80d9f90abe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6a350802ed7af049\\/a7e97e80d9f90abe.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e2b8b20cdc9df625\\/e27319b3b1f41eee.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e2b8b20cdc9df625\\/e27319b3b1f41eee.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/602a35cee338ffdb\\/6943fd1ffbd72340.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/602a35cee338ffdb\\/6943fd1ffbd72340.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '33', '1546669209', '1546848920', '0', '0');
INSERT INTO `product` VALUES ('34', '云烟（乌镇之恋）', '1', '6901028313018', '6901028313001', '', '', '', '{\"ttxm\":\"6901028313018\",\"htxm\":\"6901028313001\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '34', '1546669243', null, '0', '0');
INSERT INTO `product` VALUES ('35', '云烟（小云端）', '1', '6901028313858', '6901028313841', 'http://1.ynncp.com/static/upload/fe018e6cf8340d1d/1116dc6ccb30c23a.png', '', 'http://1.ynncp.com/static/upload/fe018e6cf8340d1d/1116dc6ccb30c23a.png', '{\"ttxm\":\"6901028313858\",\"htxm\":\"6901028313841\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/598531e93cb71c91\\/5a72191848d6ea21.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/598531e93cb71c91\\/5a72191848d6ea21.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a9ab16c9ca306f95\\/d222084489ee8aa8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a9ab16c9ca306f95\\/d222084489ee8aa8.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3be47e67e388971c\\/d74120976284bcc9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3be47e67e388971c\\/d74120976284bcc9.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/36e6061e8af15474\\/24136304c68cd54e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/36e6061e8af15474\\/24136304c68cd54e.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/33897b4897ebbd21\\/39ed2b951fb0696f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/33897b4897ebbd21\\/39ed2b951fb0696f.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ee7d9c75b831897b\\/afb2d10f544afa6f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ee7d9c75b831897b\\/afb2d10f544afa6f.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2519393a23b1c065\\/42577660e8fef0b6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2519393a23b1c065\\/42577660e8fef0b6.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a182e3c007b68683\\/5bce32bf09c15534.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a182e3c007b68683\\/5bce32bf09c15534.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/679895e3fbb0666c\\/df3d3fe39d9a0291.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/679895e3fbb0666c\\/df3d3fe39d9a0291.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4f850f2c2e287e\\/d4c1d33b8fa588e1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4f850f2c2e287e\\/d4c1d33b8fa588e1.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/829c263e0c458702\\/c0d1ddb5fe654864.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/829c263e0c458702\\/c0d1ddb5fe654864.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2de5c2dbfb9c613d\\/cad874f1f54a319d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2de5c2dbfb9c613d\\/cad874f1f54a319d.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b627ec078399a96a\\/78a58a520665dcc6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b627ec078399a96a\\/78a58a520665dcc6.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f57b271b2b69fe9c\\/ee5f3cb7baa0fafa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f57b271b2b69fe9c\\/ee5f3cb7baa0fafa.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/53548a15b80af9ce\\/a3943b81c955af66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/53548a15b80af9ce\\/a3943b81c955af66.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '35', '1546669260', '1546853687', '0', '0');
INSERT INTO `product` VALUES ('36', '云烟（塞上好江南）', '1', '6901028312981', '6901028312974', '', '', '', '{\"ttxm\":\"6901028312981\",\"htxm\":\"6901028312974\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '36', '1546669277', null, '0', '0');
INSERT INTO `product` VALUES ('37', '云烟（74mm香格里拉）', '1', '6901028313735', '6901028313728', 'http://1.ynncp.com/static/upload/374e5af1f3ce2bff/4ae226dc0c967359.png', '', 'http://1.ynncp.com/static/upload/374e5af1f3ce2bff/4ae226dc0c967359.png', '{\"ttxm\":\"6901028313735\",\"htxm\":\"6901028313728\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d38d7cf36c8744fd\\/bef946bbc6cc9979.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d38d7cf36c8744fd\\/bef946bbc6cc9979.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5be37e7d244ebda8\\/e093a0713c6a4992.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/329e534d7ac5dd45\\/50f6f451d502214b.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0990641d781688a1\\/7c051591a75f5d50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0990641d781688a1\\/7c051591a75f5d50.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d13c9989a959aef6\\/4fc4ec8953ecba56.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d13c9989a959aef6\\/4fc4ec8953ecba56.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/23b4c04a9c10974c\\/fd226a9041eddd3a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/23b4c04a9c10974c\\/fd226a9041eddd3a.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b794a6108f5838d\\/dc8200e88f844661.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b794a6108f5838d\\/dc8200e88f844661.png\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3156e3096ed917eb\\/d15bb30e15343a86.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8067d54d9e07c094\\/7163f2b968a2fa60.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e613b81911967f48\\/b31883cac62b8705.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e613b81911967f48\\/b31883cac62b8705.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85e4c59e094bc8a\\/2d06c2e99ee40276.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85e4c59e094bc8a\\/2d06c2e99ee40276.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e0c3b064d1bdc4ee\\/c7b1596261a74fc2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e0c3b064d1bdc4ee\\/c7b1596261a74fc2.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4290d3aa8f010ef0\\/0d4b822dd8cdf779.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4290d3aa8f010ef0\\/0d4b822dd8cdf779.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab57bdae15f7635d\\/26cc19cd05bfff0e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab57bdae15f7635d\\/26cc19cd05bfff0e.png\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/24357a22aca669f2\\/e4fe93dac675d8c9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/24357a22aca669f2\\/e4fe93dac675d8c9.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9994d1c7e0f4ef26\\/4638ce9f68bda18c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9994d1c7e0f4ef26\\/4638ce9f68bda18c.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6dfff69fe19c6a3a\\/e4f04290fff18f04.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6dfff69fe19c6a3a\\/e4f04290fff18f04.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/892d77bb5fa9d43f\\/470d74aa21b5c48c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/892d77bb5fa9d43f\\/470d74aa21b5c48c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '37', '1546669303', '1546848592', '0', '0');
INSERT INTO `product` VALUES ('38', '呼伦贝尔（草原情）', '14', '6901028313612', '6901028313605', '', '', '', '{\"ttxm\":\"6901028313612\",\"htxm\":\"6901028313605\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '38', '1546669454', null, '0', '0');
INSERT INTO `product` VALUES ('39', '呼伦贝尔（金戈铁马）', '14', '6901028312530', '6901028312523', '', '', '', '{\"ttxm\":\"6901028312530\",\"htxm\":\"6901028312523\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '39', '1546669484', null, '0', '0');
INSERT INTO `product` VALUES ('40', '呼伦贝尔（金帐汗）', '14', '6901028313193', '6901028313186', '', '', '', '{\"ttxm\":\"6901028313193\",\"htxm\":\"6901028313186\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '40', '1546669509', null, '0', '0');
INSERT INTO `product` VALUES ('41', '呼伦贝尔（天堂草原）', '14', '6901028056670', '6901028056663', '', '', '', '{\"ttxm\":\"6901028056670\",\"htxm\":\"6901028056663\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '41', '1546669528', null, '0', '0');
INSERT INTO `product` VALUES ('42', '茶花（94mm）', '14', '6901028045490', '6901028045483', '', '', '', '{\"ttxm\":\"6901028045490\",\"htxm\":\"6901028045483\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '42', '1546669552', null, '0', '0');
INSERT INTO `product` VALUES ('43', '钓鱼台（中支）', '14', '6901028340649', '6901028340632', '', '', '', '{\"ttxm\":\"6901028340649\",\"htxm\":\"6901028340632\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '43', '1546669582', null, '0', '0');
INSERT INTO `product` VALUES ('44', '钓鱼台（84mm细支）', '14', '6901028056854', '6901028056847', '', '', '', '{\"ttxm\":\"6901028056854\",\"htxm\":\"6901028056847\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '44', '1546669600', null, '0', '0');
INSERT INTO `product` VALUES ('45', '钓鱼台（硬景泰蓝94mm）', '14', '6901028310086', '6901028310079', '', '', '', '{\"ttxm\":\"6901028310086\",\"htxm\":\"6901028310079\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '45', '1546669839', null, '0', '0');
INSERT INTO `product` VALUES ('46', '钓鱼台（黄景泰蓝出口）（SG版）', '14', '6901028056731', '6901028056724', '', '', '', '{\"ttxm\":\"6901028056731\",\"htxm\":\"6901028056724\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '46', '1546669858', null, '0', '0');
INSERT INTO `product` VALUES ('47', '钓鱼台（黄景泰蓝出口）（MAC版）', '14', '6901028311618', '6901028311601', '', '', '', '{\"ttxm\":\"6901028311618\",\"htxm\":\"6901028311601\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '47', '1546669891', null, '0', '0');
INSERT INTO `product` VALUES ('48', '雪莲（74mm天韵）', '14', '6901028340793', '6901028340786', '', '', '', '{\"ttxm\":\"6901028340793\",\"htxm\":\"6901028340786\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '48', '1546669919', null, '0', '0');
INSERT INTO `product` VALUES ('49', '雪莲（3000）', '14', '6901028313100', '6901028313094', '', '', '', '{\"ttxm\":\"6901028313100\",\"htxm\":\"6901028313094\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '49', '1546669941', '1546850891', '0', '0');
INSERT INTO `product` VALUES ('50', '雪莲(岁月)', '14', '6901028331111', '6901028331104', '', '', '', '{\"ttxm\":\"6901028331111\",\"htxm\":\"6901028331104\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '50', '1546669973', null, '0', '0');
INSERT INTO `product` VALUES ('51', '雪莲(尚禧)', '14', '6901028023054', '6901028023047', '', '', '', '{\"ttxm\":\"6901028023054\",\"htxm\":\"6901028023047\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '51', '1546670059', null, '0', '0');
INSERT INTO `product` VALUES ('52', '雪莲(软蓝)', '14', '6901028331029', '6901028331012', '', '', '', '{\"ttxm\":\"6901028331029\",\"htxm\":\"6901028331012\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '52', '1546670077', null, '0', '0');
INSERT INTO `product` VALUES ('53', '雪莲(蓝精品)', '14', '6901028022965', '6901028022958', '', '', '', '{\"ttxm\":\"6901028022965\",\"htxm\":\"6901028022958\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '53', '1546670095', null, '0', '0');
INSERT INTO `product` VALUES ('54', '红河（去野）', '2', '6901028313919', '6901028313902', '', '', '', '{\"ttxm\":\"6901028313919\",\"htxm\":\"6901028313902\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '54', '1546670138', null, '0', '0');
INSERT INTO `product` VALUES ('55', '红河（道）', '2', '6901028055482', '6901028055185', '', '', '', '{\"ttxm\":\"6901028055482\",\"htxm\":\"6901028055185\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '55', '1546670236', null, '0', '0');
INSERT INTO `product` VALUES ('56', '红河（软88）', '2', '6901028055383', '6901028055086', '', '', '', '{\"ttxm\":\"6901028055383\",\"htxm\":\"6901028055086\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '56', '1546670265', null, '0', '0');
INSERT INTO `product` VALUES ('57', '红河（软99）', '2', '6901028055390', '6901028055093', '', '', '', '{\"ttxm\":\"6901028055390\",\"htxm\":\"6901028055093\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '57', '1546670288', null, '0', '0');
INSERT INTO `product` VALUES ('58', '红河（小熊猫世纪风）', '2', '6901028311465', '6901028311458', '', '', '', '{\"ttxm\":\"6901028311465\",\"htxm\":\"6901028311458\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '58', '1546670316', null, '0', '0');
INSERT INTO `product` VALUES ('59', '红河（硬）', '2', '6901028055338', '6901028055031', '', '', '', '{\"ttxm\":\"6901028055338\",\"htxm\":\"6901028055031\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '59', '1546670336', null, '0', '0');
INSERT INTO `product` VALUES ('60', '红河（硬88）', '2', '6901028055352', '6901028055055', '', '', '', '{\"ttxm\":\"6901028055352\",\"htxm\":\"6901028055055\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '60', '1546670356', null, '0', '0');
INSERT INTO `product` VALUES ('61', '红河（硬99）', '2', '6901028055369', '6901028055062', '', '', '', '{\"ttxm\":\"6901028055369\",\"htxm\":\"6901028055062\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '61', '1546670390', null, '0', '0');
INSERT INTO `product` VALUES ('62', '红河（硬V8）', '2', '6901028055376', '6901028055079', '', '', '', '{\"ttxm\":\"6901028055376\",\"htxm\":\"6901028055079\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '62', '1546670406', null, '0', '0');
INSERT INTO `product` VALUES ('63', '红河（软甲）', '2', '6901028055314', '6901028055024', '', '', '', '{\"ttxm\":\"6901028055314\",\"htxm\":\"6901028055024\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '63', '1546670426', null, '0', '0');
INSERT INTO `product` VALUES ('64', '红河（硬66）', '2', '6901028055475', '6901028055178', '', '', '', '{\"ttxm\":\"6901028055475\",\"htxm\":\"6901028055178\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '64', '1546670445', null, '0', '0');
INSERT INTO `product` VALUES ('65', '小熊猫（软珍品出口）', '14', '6901028337823', '6901028337816', '', '', '', '{\"ttxm\":\"6901028337823\",\"htxm\":\"6901028337816\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '65', '1546670464', null, '0', '0');
INSERT INTO `product` VALUES ('66', '小熊猫(精品出口)', '14', '6901028337649', '6901028337656', '', '', '', '{\"ttxm\":\"6901028337649\",\"htxm\":\"6901028337656\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '66', '1546670488', null, '0', '0');
INSERT INTO `product` VALUES ('67', '玉溪(合和)', '3', '6901028054140', '6901028054133', '', '', '', '{\"ttxm\":\"6901028054140\",\"htxm\":\"6901028054133\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '67', '1546670519', '1546670532', '0', '0');
INSERT INTO `product` VALUES ('68', '玉溪(软小庄园DF)', '3', '6901028047166', '6901028047111', '', '', '', '{\"ttxm\":\"6901028047166\",\"htxm\":\"6901028047111\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '68', '1546670556', null, '0', '0');
INSERT INTO `product` VALUES ('69', '玉溪(软小庄园出口MO)', '3', '6901028052634', '6901028052627', '', '', '', '{\"ttxm\":\"6901028052634\",\"htxm\":\"6901028052627\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '69', '1546670584', null, '0', '0');
INSERT INTO `product` VALUES ('70', '玉溪(软小庄园出口TWDF)', '3', '6901028052665', '6901028052658', '', '', '', '{\"ttxm\":\"6901028052665\",\"htxm\":\"6901028052658\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '70', '1546670617', null, '0', '0');
INSERT INTO `product` VALUES ('71', '玉溪(硬DF)', '3', '6901028316217', '6901028316200', '', '', '', '{\"ttxm\":\"6901028316217\",\"htxm\":\"6901028316200\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '71', '1546670638', null, '0', '0');
INSERT INTO `product` VALUES ('72', '玉溪(硬出口)', '3', '6901028047968', '6901028047951', '', '', '', '{\"ttxm\":\"6901028047968\",\"htxm\":\"6901028047951\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '72', '1546670655', null, '0', '0');
INSERT INTO `product` VALUES ('73', '玉溪(硬金DF)', '3', '6901028316255', '6901028316248', '', '', '', '{\"ttxm\":\"6901028316255\",\"htxm\":\"6901028316248\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '73', '1546670718', null, '0', '0');
INSERT INTO `product` VALUES ('74', '玉溪(硬金US)', '3', '6901028315715', '6901028315708', '', '', '', '{\"ttxm\":\"6901028315715\",\"htxm\":\"6901028315708\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '74', '1546670740', null, '0', '0');
INSERT INTO `product` VALUES ('75', '玉溪(硬庄园16支DF)', '3', '6901028048200', '6901028048194', '', '', '', '{\"ttxm\":\"6901028048200\",\"htxm\":\"6901028048194\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '75', '1546670763', null, '0', '0');
INSERT INTO `product` VALUES ('76', '玉溪(硬扁铂金出口)', '3', '6901028316729', '6901028316712', '', '', '', '{\"ttxm\":\"6901028316729\",\"htxm\":\"6901028316712\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '76', '1546670783', null, '0', '0');
INSERT INTO `product` VALUES ('77', '玉溪(硬扁出口TWDF)', '3', '6901028052085', '6901028052078', '', '', '', '{\"ttxm\":\"6901028052085\",\"htxm\":\"6901028052078\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '77', '1546670804', null, '0', '0');
INSERT INTO `product` VALUES ('78', '玉溪(硬扁DF)', '3', '6901028316484', '6901028316453', '', '', '', '{\"ttxm\":\"6901028316484\",\"htxm\":\"6901028316453\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '78', '1546670830', null, '0', '0');
INSERT INTO `product` VALUES ('79', '玉溪(硬扁MO)', '3', '6901028048484', '6901028048477', '', '', '', '{\"ttxm\":\"6901028048484\",\"htxm\":\"6901028048477\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '79', '1546670851', null, '0', '0');
INSERT INTO `product` VALUES ('80', '玉溪(硬扁铂金DF)', '3', '6901028316545', '6901028316538', '', '', '', '{\"ttxm\":\"6901028316545\",\"htxm\":\"6901028316538\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '80', '1546670871', null, '0', '0');
INSERT INTO `product` VALUES ('81', '玉溪(硬扁出口)', '3', '6901028314510', '6901028314503', '', '', '', '{\"ttxm\":\"6901028314510\",\"htxm\":\"6901028314503\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '81', '1546670890', null, '0', '0');
INSERT INTO `product` VALUES ('82', '玉溪(硬扁和谐DF)', '3', '6901028317870', '6901028317863', '', '', '', '{\"ttxm\":\"6901028317870\",\"htxm\":\"6901028317863\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '82', '1546671083', null, '0', '0');
INSERT INTO `product` VALUES ('83', '玉溪(华叶)', '3', '6901028054980', '6901028054973', '', '', '', '{\"ttxm\":\"6901028054980\",\"htxm\":\"6901028054973\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '83', '1546671101', null, '0', '0');
INSERT INTO `product` VALUES ('84', '玉溪(软境界)', '3', '6901028316125', '6901028316002', '', '', '', '{\"ttxm\":\"6901028316125\",\"htxm\":\"6901028316002\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '84', '1546671148', null, '0', '0');
INSERT INTO `product` VALUES ('85', '玉溪(软小庄园)', '3', '6901028048682', '6901028048675', '', '', '', '{\"ttxm\":\"6901028048682\",\"htxm\":\"6901028048675\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '85', '1546671183', null, '0', '0');
INSERT INTO `product` VALUES ('86', '玉溪(透明)', '3', '6901028052726', '6901028052719', '', '', '', '{\"ttxm\":\"6901028052726\",\"htxm\":\"6901028052719\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '86', '1546671203', null, '0', '0');
INSERT INTO `product` VALUES ('87', '玉溪(细支庄园)', '3', '6901028052788', '6901028052771', '', '', '', '{\"ttxm\":\"6901028052788\",\"htxm\":\"6901028052771\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '87', '1546671224', null, '0', '0');
INSERT INTO `product` VALUES ('88', '玉溪(细支清香世家)', '3', '6901028054447', '6901028054430', '', '', '', '{\"ttxm\":\"6901028054447\",\"htxm\":\"6901028054430\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '88', '1546671242', null, '0', '0');
INSERT INTO `product` VALUES ('89', '玉溪(硬金出口)', '3', '6901028047906', '6901028047890', '', '', '', '{\"ttxm\":\"6901028047906\",\"htxm\":\"6901028047890\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '89', '1546671320', null, '0', '0');
INSERT INTO `product` VALUES ('90', '玉溪(田园)', '3', '6901028052306', '6901028052290', '', '', '', '{\"ttxm\":\"6901028052306\",\"htxm\":\"6901028052290\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '90', '1546671340', null, '0', '0');
INSERT INTO `product` VALUES ('91', '玉溪(软尚善)', '3', '6901028315197', '6901028315180', '', '', '', '{\"ttxm\":\"6901028315197\",\"htxm\":\"6901028315180\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '91', '1546671459', null, '0', '0');
INSERT INTO `product` VALUES ('92', '玉溪(软)', '3', '6901028317177', '6901028317122', '', '', '', '{\"ttxm\":\"6901028317177\",\"htxm\":\"6901028317122\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '92', '1546671478', null, '0', '0');
INSERT INTO `product` VALUES ('93', '玉溪(清香世家)', '3', '6901028054201', '6901028054195', '', '', '', '{\"ttxm\":\"6901028054201\",\"htxm\":\"6901028054195\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '93', '1546671500', null, '0', '0');
INSERT INTO `product` VALUES ('94', '玉溪(硬庄园16支)', '3', '6901028317672', '6901028317641', '', '', '', '{\"ttxm\":\"6901028317672\",\"htxm\":\"6901028317641\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '94', '1546671532', null, '0', '0');
INSERT INTO `product` VALUES ('95', '玉溪(创客)', '3', '6901028054898', '6901028054881', '', '', '', '{\"ttxm\":\"6901028054898\",\"htxm\":\"6901028054881\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '95', '1546671563', null, '0', '0');
INSERT INTO `product` VALUES ('96', '玉溪(硬和谐)', '3', '6901028314459', '6901028314442', '', '', '', '{\"ttxm\":\"6901028314459\",\"htxm\":\"6901028314442\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '96', '1546671581', null, '0', '0');
INSERT INTO `product` VALUES ('97', '玉溪(硬庄园16支)', '3', '6901028317672', '6901028317641', '', '', '', '{\"ttxm\":\"6901028317672\",\"htxm\":\"6901028317641\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '97', '1546671599', null, '0', '0');
INSERT INTO `product` VALUES ('98', '玉溪(硬)', '3', '6901028316866', '6901028316989', '', '', '', '{\"ttxm\":\"6901028316866\",\"htxm\":\"6901028316989\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '98', '1546671619', null, '0', '0');
INSERT INTO `product` VALUES ('99', '红塔山(大师DF)', '4', '6901028047012', '6901028047005', '', '', '', '{\"ttxm\":\"6901028047012\",\"htxm\":\"6901028047005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '99', '1546671684', null, '0', '0');
INSERT INTO `product` VALUES ('100', '红塔山(硬DF)', '4', '6901028316330', '6901028316309', '', '', '', '{\"ttxm\":\"6901028316330\",\"htxm\":\"6901028316309\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '100', '1546671703', null, '0', '0');
INSERT INTO `product` VALUES ('101', '红塔山(硬出口)', '4', '6901028048309', '6901028048293', '', '', '', '{\"ttxm\":\"6901028048309\",\"htxm\":\"6901028048293\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '101', '1546671918', null, '0', '0');
INSERT INTO `product` VALUES ('102', '红塔山(硬金DF)', '4', '6901028316286', '6901028316279', '', '', '', '{\"ttxm\":\"6901028316286\",\"htxm\":\"6901028316279\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '102', '1546671935', null, '0', '0');
INSERT INTO `product` VALUES ('103', '红塔山(硬金出口)', '4', '6901028048248', '6901028048231', '', '', '', '{\"ttxm\":\"6901028048248\",\"htxm\":\"6901028048231\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '103', '1546672042', null, '0', '0');
INSERT INTO `product` VALUES ('104', '红塔山(硬扁经典100DF)', '4', '6901028047333', '6901028047326', '', '', '', '{\"ttxm\":\"6901028047333\",\"htxm\":\"6901028047326\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '104', '1546672065', null, '0', '0');
INSERT INTO `product` VALUES ('105', '红塔山(硬扁经典100出口)', '4', '6901028047609', '6901028047593', '', '', '', '{\"ttxm\":\"6901028047609\",\"htxm\":\"6901028047593\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '105', '1546672137', null, '0', '0');
INSERT INTO `product` VALUES ('106', '红塔山(传奇)', '4', '6901028326469', '6901028326452', '', '', '', '{\"ttxm\":\"6901028326469\",\"htxm\":\"6901028326452\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '106', '1546672161', null, '0', '0');
INSERT INTO `product` VALUES ('107', '红塔山(英雄)', '4', '6901028054928', '6901028054911', '', '', '', '{\"ttxm\":\"6901028054928\",\"htxm\":\"6901028054911\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '107', '1546672178', null, '0', '0');
INSERT INTO `product` VALUES ('108', '红塔山(硬恭贺新禧)', '4', '6901028053112', '6901028053105', '', '', '', '{\"ttxm\":\"6901028053112\",\"htxm\":\"6901028053105\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '108', '1546672226', null, '0', '0');
INSERT INTO `product` VALUES ('109', '红塔山(硬新势力)', '4', '6901028314176', '6901028314169', '', '', '', '{\"ttxm\":\"6901028314176\",\"htxm\":\"6901028314169\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '109', '1546672271', null, '0', '0');
INSERT INTO `product` VALUES ('110', '红塔山(细支传奇)', '4', '6901028326490', '6901028326483', '', '', '', '{\"ttxm\":\"6901028326490\",\"htxm\":\"6901028326483\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '110', '1546672290', null, '0', '0');
INSERT INTO `product` VALUES ('111', '红塔山(硬欣经典)', '4', '6901028047784', '6901028047777', '', '', '', '{\"ttxm\":\"6901028047784\",\"htxm\":\"6901028047777\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '111', '1546672452', null, '0', '0');
INSERT INTO `product` VALUES ('112', '红塔山(硬经典)', '4', '6901028314985', '6901028314978', '', '', '', '{\"ttxm\":\"6901028314985\",\"htxm\":\"6901028314978\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '112', '1546672472', null, '0', '0');
INSERT INTO `product` VALUES ('113', '红塔山(软经典)', '4', '6901028315012', '6901028315005', '', '', '', '{\"ttxm\":\"6901028315012\",\"htxm\":\"6901028315005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '113', '1546672489', null, '0', '0');
INSERT INTO `product` VALUES ('114', '红塔山(硬经典100)', '4', '6901028315432', '6901028315425', '', '', '', '{\"ttxm\":\"6901028315432\",\"htxm\":\"6901028315425\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '114', '1546672527', null, '0', '0');
INSERT INTO `product` VALUES ('115', '红塔山(软新)', '4', '6901028047364', '6901028047357', '', '', '', '{\"ttxm\":\"6901028047364\",\"htxm\":\"6901028047357\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '115', '1546672596', null, '0', '0');
INSERT INTO `product` VALUES ('116', '红塔山(软经典)', '4', '6901028315012', '6901028315005', '', '', '', '{\"ttxm\":\"6901028315012\",\"htxm\":\"6901028315005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '116', '1546672612', null, '0', '0');
INSERT INTO `product` VALUES ('117', '红塔山(硬经典100)', '4', '6901028315432', '6901028315425', '', '', '', '{\"ttxm\":\"6901028315432\",\"htxm\":\"6901028315425\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '117', '1546672659', null, '0', '0');
INSERT INTO `product` VALUES ('118', '红塔山(硬经典)', '4', '6901028314985', '6901028314978', '', '', '', '{\"ttxm\":\"6901028314985\",\"htxm\":\"6901028314978\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '118', '1546672676', null, '0', '0');
INSERT INTO `product` VALUES ('119', '红塔山(硬世纪)', '4', '6901028316316', '6901028316156', '', '', '', '{\"ttxm\":\"6901028316316\",\"htxm\":\"6901028316156\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '119', '1546672698', null, '0', '0');
INSERT INTO `product` VALUES ('120', '红山茶(软)', '14', '6901028310710', '6901028310703', '', '', '', '{\"ttxm\":\"6901028310710\",\"htxm\":\"6901028310703\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '120', '1546672723', null, '0', '0');
INSERT INTO `product` VALUES ('121', '阿诗玛(硬94mmCH)', '14', '7640107511196', '7640107513190', '', '', '', '{\"ttxm\":\"7640107511196\",\"htxm\":\"7640107513190\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '121', '1546672741', null, '0', '0');
INSERT INTO `product` VALUES ('122', '阿诗玛(硬94mm出口IR)', '14', '6901028054775', '6901028054768', '', '', '', '{\"ttxm\":\"6901028054775\",\"htxm\":\"6901028054768\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '122', '1546672795', null, '0', '0');
INSERT INTO `product` VALUES ('123', '阿诗玛(硬94mm出口IR1)', '14', '6901028054805', '6901028054799', '', '', '', '{\"ttxm\":\"6901028054805\",\"htxm\":\"6901028054799\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '123', '1546672833', null, '0', '0');
INSERT INTO `product` VALUES ('124', '阿诗玛(硬扁出口DF)', '14', '6901028053020', '6901028053013', '', '', '', '{\"ttxm\":\"6901028053020\",\"htxm\":\"6901028053013\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '124', '1546672849', null, '0', '0');
INSERT INTO `product` VALUES ('125', '马宝(硬MM)', '14', '7640107510618', '7640107516016', '', '', '', '{\"ttxm\":\"7640107510618\",\"htxm\":\"7640107516016\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '125', '1546672882', null, '0', '0');
INSERT INTO `product` VALUES ('126', '新兴(软94mm)', '14', '6901028047173', '6901028048170', '', '', '', '{\"ttxm\":\"6901028047173\",\"htxm\":\"6901028048170\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '126', '1546672906', null, '0', '0');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='属性值表';

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
INSERT INTO `product_item` VALUES ('145', '无', '55', '无', '1', '1545818036', null, '0', '0');
INSERT INTO `product_item` VALUES ('146', '拉线、背面', '55', '拉线、背面', '2', '1545818053', null, '0', '0');
INSERT INTO `product_item` VALUES ('147', '盒内表面', '55', '盒内表面', '3', '1545818067', null, '0', '0');
INSERT INTO `product_item` VALUES ('148', '侧面', '55', '侧面', '4', '1545818080', null, '0', '0');
INSERT INTO `product_item` VALUES ('149', '右侧', '55', '右侧', '5', '1545818093', null, '0', '0');
INSERT INTO `product_item` VALUES ('150', '拉带', '55', '拉带', '6', '1545818105', null, '0', '0');
INSERT INTO `product_item` VALUES ('151', '正面', '55', '正面', '7', '1545818118', null, '0', '0');
INSERT INTO `product_item` VALUES ('152', '拉线、小盒背面', '55', '拉线、小盒背面', '8', '1545818130', null, '0', '0');
INSERT INTO `product_item` VALUES ('153', '无', '56', '无', '1', '1545818154', null, '0', '0');
INSERT INTO `product_item` VALUES ('154', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '56', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '2', '1545818191', null, '0', '0');
INSERT INTO `product_item` VALUES ('155', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。背面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果 ', '56', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。背面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果 ', '3', '1545818204', null, '0', '0');
INSERT INTO `product_item` VALUES ('156', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '56', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '4', '1545818262', null, '0', '0');
INSERT INTO `product_item` VALUES ('157', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '56', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '5', '1545818282', null, '0', '0');
INSERT INTO `product_item` VALUES ('158', '印有“云烟 yunYan”镭射防伪字图', '56', '印有“云烟 yunYan”镭射防伪字图', '6', '1545818305', null, '0', '0');
INSERT INTO `product_item` VALUES ('159', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '56', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '7', '1545818316', null, '0', '0');
INSERT INTO `product_item` VALUES ('160', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '56', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '8', '1545818329', null, '0', '0');
INSERT INTO `product_item` VALUES ('161', '金色定位烫“双龙抱珠”图案，明显的层次感', '56', '金色定位烫“双龙抱珠”图案，明显的层次感', '9', '1545818353', null, '0', '0');
INSERT INTO `product_item` VALUES ('162', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '56', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '10', '1545818368', null, '0', '0');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='规格表';

-- ----------------------------
-- Records of product_spec
-- ----------------------------
INSERT INTO `product_spec` VALUES ('1', '产品名称', 'cpmc', '产品名称', '1', '1', '1544085851', '1544085851', '0', '1');
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
INSERT INTO `product_spec` VALUES ('28', '产品视频', 'cpsp', '产品视频', '7', '32', '1544434620', '1544497298', '0', '1');
INSERT INTO `product_spec` VALUES ('29', '产品logo', 'logo', '产品logo', '5', '30', '1544508714', '1545641062', '0', '1');
INSERT INTO `product_spec` VALUES ('30', '条盒描述', 'thms', '条盒描述', '4', '33', '1544509599', null, '0', '1');
INSERT INTO `product_spec` VALUES ('31', '小盒描述', 'xhms', '小盒描述', '4', '34', '1544509621', null, '0', '1');
INSERT INTO `product_spec` VALUES ('32', '烟支描述', 'yzms', '烟支描述', '4', '35', '1544509650', null, '0', '1');
INSERT INTO `product_spec` VALUES ('33', '产品图片', 'cptps', '产品图片', '6', '31', '1544511390', null, '0', '1');
INSERT INTO `product_spec` VALUES ('34', '防伪图解条盒正面', 'fwtjthzm', '防伪图解条盒正面', '6', '555', '1545033723', '1545037852', '0', '0');
INSERT INTO `product_spec` VALUES ('35', '防伪图解条盒背面', 'fwtjthbm', '防伪图解条盒背面', '6', '555', '1545033756', null, '0', '0');
INSERT INTO `product_spec` VALUES ('36', '防伪图解条盒左侧', 'fwtjthzc', '防伪图解条盒左侧', '6', '555', '1545033809', null, '0', '0');
INSERT INTO `product_spec` VALUES ('37', '防伪图解条盒右侧', 'fwtjthyc', '防伪图解条盒右侧', '6', '555', '1545033887', null, '0', '0');
INSERT INTO `product_spec` VALUES ('38', '防伪图解条盒顶部', 'fwtjthdb', '防伪图解条盒顶部', '6', '555', '1545033911', null, '0', '0');
INSERT INTO `product_spec` VALUES ('39', '防伪图解条盒底部', 'fwtjthdb2', '防伪图解条盒底部', '6', '555', '1545033963', null, '0', '0');
INSERT INTO `product_spec` VALUES ('40', '防伪图解条盒其它', 'fwtjthqt', '防伪图解条盒其它', '6', '555', '1545033998', null, '0', '0');
INSERT INTO `product_spec` VALUES ('41', '防伪图解小盒正面', 'fwtjxhzm', '防伪图解小盒正面', '6', '555', '1545034040', null, '0', '0');
INSERT INTO `product_spec` VALUES ('42', '防伪图解小盒背面', 'fwtjxhbm', '防伪图解小盒背面', '6', '555', '1545034066', '1545038399', '0', '0');
INSERT INTO `product_spec` VALUES ('43', '防伪图解小盒左侧', 'fwtjxhzc', '防伪图解小盒左侧', '6', '555', '1545034179', null, '0', '0');
INSERT INTO `product_spec` VALUES ('44', '防伪图解小盒右侧', 'fwtjxhyc', '防伪图解小盒右侧', '6', '555', '1545034204', null, '0', '0');
INSERT INTO `product_spec` VALUES ('45', '防伪图解小盒顶部', 'fwtjxhdb', '防伪图解小盒顶部', '6', '555', '1545034271', null, '0', '0');
INSERT INTO `product_spec` VALUES ('46', '防伪图解小盒底部', 'fwtjxhdb2', '防伪图解小盒底部', '6', '555', '1545034289', null, '0', '0');
INSERT INTO `product_spec` VALUES ('47', '防伪图解小盒其它', 'fwtjxhqt', '防伪图解小盒其它', '6', '555', '1545034309', null, '0', '0');
INSERT INTO `product_spec` VALUES ('48', '防伪图解烟支正面', 'fwtjyzzm', '防伪图解烟支正面', '6', '555', '1545034354', null, '0', '0');
INSERT INTO `product_spec` VALUES ('49', '防伪图解烟支背面', 'fwtjyzbm', '防伪图解烟支背面', '6', '555', '1545034377', null, '0', '0');
INSERT INTO `product_spec` VALUES ('50', '防伪图解烟支左侧', 'fwtjyzzc', '防伪图解烟支左侧', '6', '555', '1545034396', null, '0', '0');
INSERT INTO `product_spec` VALUES ('51', '防伪图解烟支右侧', 'fwtjyzyc', '防伪图解烟支右侧', '6', '555', '1545034419', null, '0', '0');
INSERT INTO `product_spec` VALUES ('52', '防伪图解烟支顶部', 'fwtjyzdb', '防伪图解烟支顶部', '6', '555', '1545034436', null, '0', '0');
INSERT INTO `product_spec` VALUES ('53', '防伪图解烟支底部', 'fwtjyzdb2', '防伪图解烟支底部', '6', '555', '1545034458', null, '0', '0');
INSERT INTO `product_spec` VALUES ('54', '防伪图解烟支其它', 'fwtjyzqt', '防伪图解烟支其它', '6', '555', '1545034489', null, '0', '0');
INSERT INTO `product_spec` VALUES ('55', '盒防伪位置', 'hfwwz', '盒防伪位置', '3', '15', '1545817952', null, '0', '0');
INSERT INTO `product_spec` VALUES ('56', '盒防伪特征描述及识别方法', 'hfwtzms', '盒防伪特征描述及识别方法', '3', '15', '1545817980', '1545818395', '0', '0');

-- ----------------------------
-- Table structure for sms_log
-- ----------------------------
DROP TABLE IF EXISTS `sms_log`;
CREATE TABLE `sms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `code` varchar(6) DEFAULT NULL COMMENT '验证码',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sms_log
-- ----------------------------
INSERT INTO `sms_log` VALUES ('1', '15888888888', '111111', '1546495918');
INSERT INTO `sms_log` VALUES ('2', '15999999999', '111111', '1546498666');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统权限表';

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES ('153', '1', 'admin');
INSERT INTO `system_auth_node` VALUES ('154', '1', 'admin/auth');
INSERT INTO `system_auth_node` VALUES ('155', '1', 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES ('156', '1', 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES ('157', '1', 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES ('158', '1', 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES ('159', '1', 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES ('160', '1', 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES ('161', '1', 'admin/auth/del');
INSERT INTO `system_auth_node` VALUES ('162', '1', 'admin/brand');
INSERT INTO `system_auth_node` VALUES ('163', '1', 'admin/brand/index');
INSERT INTO `system_auth_node` VALUES ('164', '1', 'admin/brand/add');
INSERT INTO `system_auth_node` VALUES ('165', '1', 'admin/brand/edit');
INSERT INTO `system_auth_node` VALUES ('166', '1', 'admin/brand/del');
INSERT INTO `system_auth_node` VALUES ('167', '1', 'admin/brand/forbid');
INSERT INTO `system_auth_node` VALUES ('168', '1', 'admin/brand/resume');
INSERT INTO `system_auth_node` VALUES ('169', '1', 'admin/config');
INSERT INTO `system_auth_node` VALUES ('170', '1', 'admin/config/index');
INSERT INTO `system_auth_node` VALUES ('171', '1', 'admin/config/file');
INSERT INTO `system_auth_node` VALUES ('172', '1', 'admin/log');
INSERT INTO `system_auth_node` VALUES ('173', '1', 'admin/log/index');
INSERT INTO `system_auth_node` VALUES ('174', '1', 'admin/log/del');
INSERT INTO `system_auth_node` VALUES ('175', '1', 'admin/machine');
INSERT INTO `system_auth_node` VALUES ('176', '1', 'admin/machine/index');
INSERT INTO `system_auth_node` VALUES ('177', '1', 'admin/machine/add');
INSERT INTO `system_auth_node` VALUES ('178', '1', 'admin/machine/edit');
INSERT INTO `system_auth_node` VALUES ('179', '1', 'admin/machine/del');
INSERT INTO `system_auth_node` VALUES ('180', '1', 'admin/machine/forbid');
INSERT INTO `system_auth_node` VALUES ('181', '1', 'admin/machine/resume');
INSERT INTO `system_auth_node` VALUES ('182', '1', 'admin/machine_item');
INSERT INTO `system_auth_node` VALUES ('183', '1', 'admin/machine_item/index');
INSERT INTO `system_auth_node` VALUES ('184', '1', 'admin/machine_item/add');
INSERT INTO `system_auth_node` VALUES ('185', '1', 'admin/machine_item/edit');
INSERT INTO `system_auth_node` VALUES ('186', '1', 'admin/machine_item/del');
INSERT INTO `system_auth_node` VALUES ('187', '1', 'admin/machine_item/forbid');
INSERT INTO `system_auth_node` VALUES ('188', '1', 'admin/machine_item/resume');
INSERT INTO `system_auth_node` VALUES ('189', '1', 'admin/machine_spec');
INSERT INTO `system_auth_node` VALUES ('190', '1', 'admin/machine_spec/index');
INSERT INTO `system_auth_node` VALUES ('191', '1', 'admin/machine_spec/add');
INSERT INTO `system_auth_node` VALUES ('192', '1', 'admin/machine_spec/edit');
INSERT INTO `system_auth_node` VALUES ('193', '1', 'admin/machine_spec/del');
INSERT INTO `system_auth_node` VALUES ('194', '1', 'admin/machine_spec/forbid');
INSERT INTO `system_auth_node` VALUES ('195', '1', 'admin/machine_spec/resume');
INSERT INTO `system_auth_node` VALUES ('196', '1', 'admin/member');
INSERT INTO `system_auth_node` VALUES ('197', '1', 'admin/member/index');
INSERT INTO `system_auth_node` VALUES ('198', '1', 'admin/member/auth');
INSERT INTO `system_auth_node` VALUES ('199', '1', 'admin/member/add');
INSERT INTO `system_auth_node` VALUES ('200', '1', 'admin/member/edit');
INSERT INTO `system_auth_node` VALUES ('201', '1', 'admin/member/pass');
INSERT INTO `system_auth_node` VALUES ('202', '1', 'admin/member/del');
INSERT INTO `system_auth_node` VALUES ('203', '1', 'admin/member/forbid');
INSERT INTO `system_auth_node` VALUES ('204', '1', 'admin/member/resume');
INSERT INTO `system_auth_node` VALUES ('205', '1', 'admin/menu');
INSERT INTO `system_auth_node` VALUES ('206', '1', 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES ('207', '1', 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES ('208', '1', 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES ('209', '1', 'admin/menu/del');
INSERT INTO `system_auth_node` VALUES ('210', '1', 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES ('211', '1', 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES ('212', '1', 'admin/node');
INSERT INTO `system_auth_node` VALUES ('213', '1', 'admin/node/index');
INSERT INTO `system_auth_node` VALUES ('214', '1', 'admin/node/clear');
INSERT INTO `system_auth_node` VALUES ('215', '1', 'admin/node/save');
INSERT INTO `system_auth_node` VALUES ('216', '1', 'admin/notice');
INSERT INTO `system_auth_node` VALUES ('217', '1', 'admin/notice/index');
INSERT INTO `system_auth_node` VALUES ('218', '1', 'admin/notice/add');
INSERT INTO `system_auth_node` VALUES ('219', '1', 'admin/notice/edit');
INSERT INTO `system_auth_node` VALUES ('220', '1', 'admin/notice/del');
INSERT INTO `system_auth_node` VALUES ('221', '1', 'admin/notice/forbid');
INSERT INTO `system_auth_node` VALUES ('222', '1', 'admin/notice/resume');
INSERT INTO `system_auth_node` VALUES ('223', '1', 'admin/product');
INSERT INTO `system_auth_node` VALUES ('224', '1', 'admin/product/index');
INSERT INTO `system_auth_node` VALUES ('225', '1', 'admin/product/add');
INSERT INTO `system_auth_node` VALUES ('226', '1', 'admin/product/edit');
INSERT INTO `system_auth_node` VALUES ('227', '1', 'admin/product/del');
INSERT INTO `system_auth_node` VALUES ('228', '1', 'admin/product/forbid');
INSERT INTO `system_auth_node` VALUES ('229', '1', 'admin/product/resume');
INSERT INTO `system_auth_node` VALUES ('230', '1', 'admin/product_item');
INSERT INTO `system_auth_node` VALUES ('231', '1', 'admin/product_item/index');
INSERT INTO `system_auth_node` VALUES ('232', '1', 'admin/product_item/add');
INSERT INTO `system_auth_node` VALUES ('233', '1', 'admin/product_item/edit');
INSERT INTO `system_auth_node` VALUES ('234', '1', 'admin/product_item/del');
INSERT INTO `system_auth_node` VALUES ('235', '1', 'admin/product_item/forbid');
INSERT INTO `system_auth_node` VALUES ('236', '1', 'admin/product_item/resume');
INSERT INTO `system_auth_node` VALUES ('237', '1', 'admin/product_spec');
INSERT INTO `system_auth_node` VALUES ('238', '1', 'admin/product_spec/index');
INSERT INTO `system_auth_node` VALUES ('239', '1', 'admin/product_spec/add');
INSERT INTO `system_auth_node` VALUES ('240', '1', 'admin/product_spec/edit');
INSERT INTO `system_auth_node` VALUES ('241', '1', 'admin/product_spec/del');
INSERT INTO `system_auth_node` VALUES ('242', '1', 'admin/product_spec/forbid');
INSERT INTO `system_auth_node` VALUES ('243', '1', 'admin/product_spec/resume');
INSERT INTO `system_auth_node` VALUES ('244', '1', 'admin/user');
INSERT INTO `system_auth_node` VALUES ('245', '1', 'admin/user/index');
INSERT INTO `system_auth_node` VALUES ('246', '1', 'admin/user/auth');
INSERT INTO `system_auth_node` VALUES ('247', '1', 'admin/user/add');
INSERT INTO `system_auth_node` VALUES ('248', '1', 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES ('249', '1', 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES ('250', '1', 'admin/user/del');
INSERT INTO `system_auth_node` VALUES ('251', '1', 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES ('252', '1', 'admin/user/resume');

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_config_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', '卷烟真伪鉴别系统');
INSERT INTO `system_config` VALUES ('2', 'site_name', '卷烟真伪鉴别系统');
INSERT INTO `system_config` VALUES ('3', 'app_version', 'R');
INSERT INTO `system_config` VALUES ('4', 'site_copy', '©版权所有 2018-2019 云南省烟草质量监督检测站');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://localhost/ThinkAdmin/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '滇ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', 'myrom');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', 'pjib9g3e7.bkt.clouddn.com');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', 'Sv5mhHnH0SnKyDV3mOuT3jDl4SYriK_yZ98HJjOl');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', '0sqbR0gkFioHiUF4B_jy1-8QFm9o3Gbjl2iTPLX0');
INSERT INTO `system_config` VALUES ('14', 'storage_oss_bucket', 'myrom');
INSERT INTO `system_config` VALUES ('15', 'storage_oss_endpoint', 'oss-cn-shenzhen.aliyuncs.com');
INSERT INTO `system_config` VALUES ('16', 'storage_oss_domain', 'myrom.oss-cn-shenzhen.aliyuncs.com');
INSERT INTO `system_config` VALUES ('17', 'storage_oss_keyid', 'LTAIrXjT50Nsi9Nt');
INSERT INTO `system_config` VALUES ('18', 'storage_oss_secret', 'xlGB2xyr1Ox7VjYi6P4qy34bZgopnl');
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
INSERT INTO `system_config` VALUES ('44', 'storage_qiniu_is_https', 'http');
INSERT INTO `system_config` VALUES ('45', 'sms_uid', 'alipiapia');
INSERT INTO `system_config` VALUES ('46', 'sms_pwd', '952788');
INSERT INTO `system_config` VALUES ('47', 'sms_juhe_key', 'a9a54637eecb631c85c72e77a545ef4f');
INSERT INTO `system_config` VALUES ('48', 'sms_juhe_tpl_id', '128594');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统操作日志表';

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
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-12 09:02:19');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-13 09:07:34');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-13 09:37:06');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-13 09:42:28');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-14 08:55:10');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-15 09:12:39');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-15 10:17:34');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-15 10:24:03');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-15 10:39:35');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-15 10:45:31');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-15 11:55:33');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-17 08:39:26');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 09:18:56');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-18 09:19:29');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 08:54:42');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-19 09:31:22');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-19 09:32:41');
INSERT INTO `system_log` VALUES ('39', '116.249.63.207', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-12-19 16:22:34');
INSERT INTO `system_log` VALUES ('40', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 17:48:44');
INSERT INTO `system_log` VALUES ('41', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 18:04:12');
INSERT INTO `system_log` VALUES ('42', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 08:51:12');
INSERT INTO `system_log` VALUES ('43', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:08:56');
INSERT INTO `system_log` VALUES ('44', '116.249.63.207', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-12-20 09:09:35');
INSERT INTO `system_log` VALUES ('45', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:10:35');
INSERT INTO `system_log` VALUES ('46', '116.249.63.207', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 10:45:57');
INSERT INTO `system_log` VALUES ('47', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-20 13:48:31');
INSERT INTO `system_log` VALUES ('48', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 08:55:29');
INSERT INTO `system_log` VALUES ('49', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 13:57:31');
INSERT INTO `system_log` VALUES ('50', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 08:53:04');
INSERT INTO `system_log` VALUES ('51', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 09:07:25');
INSERT INTO `system_log` VALUES ('52', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 09:59:51');
INSERT INTO `system_log` VALUES ('53', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 09:08:19');
INSERT INTO `system_log` VALUES ('54', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 14:17:27');
INSERT INTO `system_log` VALUES ('55', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 08:27:03');
INSERT INTO `system_log` VALUES ('56', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-29 08:13:00');
INSERT INTO `system_log` VALUES ('57', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-29 08:35:42');
INSERT INTO `system_log` VALUES ('58', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-02 08:34:10');
INSERT INTO `system_log` VALUES ('59', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-03 08:54:02');
INSERT INTO `system_log` VALUES ('60', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 08:43:54');
INSERT INTO `system_log` VALUES ('61', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-05 08:33:01');
INSERT INTO `system_log` VALUES ('62', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-05 13:46:38');
INSERT INTO `system_log` VALUES ('63', '42.243.32.99', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-05 18:28:32');
INSERT INTO `system_log` VALUES ('64', '116.54.82.39', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-07 10:03:32');
INSERT INTO `system_log` VALUES ('65', '116.54.82.39', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-07 17:29:43');
INSERT INTO `system_log` VALUES ('66', '112.115.183.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-08 09:21:10');

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '20', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('3', '10', '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES ('4', '11', '角色管理', '', 'fa fa-group', 'admin/auth/index', '', '_self', '20', '1', '10000', '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES ('5', '11', '管理员管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '10', '1', '0', '2018-01-23 12:15:12');
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
INSERT INTO `system_menu` VALUES ('37', '0', '机型管理', '', '', '#', '', '_self', '4000', '1', '0', '2018-03-20 16:48:05');
INSERT INTO `system_menu` VALUES ('38', '37', '机型管理', '', '', '#', '', '_self', '0', '1', '0', '2018-04-21 15:07:36');
INSERT INTO `system_menu` VALUES ('39', '38', '机型管理', '', 'fa fa-adjust', 'admin/machine/index', '', '_self', '0', '1', '0', '2018-04-21 15:07:54');
INSERT INTO `system_menu` VALUES ('40', '38', '机型规格管理', '', 'fa fa-scribd', 'admin/machine_spec/index', '', '_self', '0', '1', '0', '2018-04-21 15:08:17');
INSERT INTO `system_menu` VALUES ('41', '38', '机型规格属性管理', '', 'fa fa-mixcloud', 'admin/machine_item/index', '', '_self', '0', '1', '0', '2018-04-21 15:08:25');
INSERT INTO `system_menu` VALUES ('42', '33', '品牌管理', '', 'fa fa-shopping-bag', 'admin/brand/index', '', '_self', '0', '1', '0', '2018-12-20 13:59:07');
INSERT INTO `system_menu` VALUES ('43', '10', '通知公告管理', '', 'layui-icon layui-icon-notice', 'admin/notice/index', '', '_self', '0', '1', '0', '2018-12-21 15:44:16');
INSERT INTO `system_menu` VALUES ('44', '10', '用户管理', '', 'fa fa-user-circle-o', 'admin/member/index', '', '_self', '0', '1', '0', '2018-12-21 15:55:30');

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
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统节点表';

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
INSERT INTO `system_node` VALUES ('91', 'api', 'API', '0', '1', '1', '2018-12-17 15:07:03');
INSERT INTO `system_node` VALUES ('92', 'api/product', '', '0', '1', '1', '2018-12-17 15:07:21');
INSERT INTO `system_node` VALUES ('93', 'admin/brand', '品牌管理', '0', '1', '1', '2019-01-07 17:26:25');
INSERT INTO `system_node` VALUES ('94', 'admin/brand/index', '列表', '0', '0', '0', '2019-01-07 17:26:44');
INSERT INTO `system_node` VALUES ('95', 'admin/brand/add', '添加', '0', '0', '0', '2019-01-07 17:26:48');
INSERT INTO `system_node` VALUES ('96', 'admin/brand/edit', '编辑', '0', '0', '0', '2019-01-07 17:26:55');
INSERT INTO `system_node` VALUES ('97', 'admin/brand/del', '删除', '0', '0', '0', '2019-01-07 17:26:59');
INSERT INTO `system_node` VALUES ('98', 'admin/brand/forbid', '禁用', '0', '0', '0', '2019-01-07 17:27:02');
INSERT INTO `system_node` VALUES ('99', 'admin/brand/resume', '开启', '0', '0', '0', '2019-01-07 17:27:04');
INSERT INTO `system_node` VALUES ('100', 'admin/member', '用户管理', '0', '1', '1', '2019-01-07 17:27:21');
INSERT INTO `system_node` VALUES ('101', 'admin/member/resume', '开启', '0', '0', '0', '2019-01-07 17:27:25');
INSERT INTO `system_node` VALUES ('102', 'admin/member/forbid', '禁用', '0', '0', '0', '2019-01-07 17:27:27');
INSERT INTO `system_node` VALUES ('103', 'admin/member/del', '删除', '0', '0', '0', '2019-01-07 17:27:28');
INSERT INTO `system_node` VALUES ('104', 'admin/member/pass', '密码', '0', '0', '0', '2019-01-07 17:27:30');
INSERT INTO `system_node` VALUES ('105', 'admin/member/edit', '编辑', '0', '0', '0', '2019-01-07 17:27:35');
INSERT INTO `system_node` VALUES ('106', 'admin/member/add', '添加', '0', '0', '0', '2019-01-07 17:27:35');
INSERT INTO `system_node` VALUES ('107', 'admin/member/auth', '授权', '0', '0', '0', '2019-01-07 17:27:54');
INSERT INTO `system_node` VALUES ('108', 'admin/member/index', '列表', '0', '0', '0', '2019-01-07 17:27:57');
INSERT INTO `system_node` VALUES ('109', 'admin/notice', '公告', '0', '1', '1', '2019-01-07 17:28:09');
INSERT INTO `system_node` VALUES ('110', 'admin/notice/index', '列表', '0', '0', '0', '2019-01-07 17:28:10');
INSERT INTO `system_node` VALUES ('111', 'admin/notice/add', '添加', '0', '0', '0', '2019-01-07 17:28:12');
INSERT INTO `system_node` VALUES ('112', 'admin/notice/edit', '编辑', '0', '0', '0', '2019-01-07 17:28:15');
INSERT INTO `system_node` VALUES ('113', 'admin/notice/del', '删除', '0', '0', '0', '2019-01-07 17:28:17');
INSERT INTO `system_node` VALUES ('114', 'admin/notice/forbid', '禁用', '0', '0', '0', '2019-01-07 17:28:19');
INSERT INTO `system_node` VALUES ('115', 'admin/notice/resume', '开启', '0', '0', '0', '2019-01-07 17:28:23');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`) USING BTREE,
  KEY `index_system_sequence_number` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统序号表';

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
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态(1:禁用,0:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', null, '0192023a7bbd73250516f069df18b500', '22222222', '', '', '', '23015', '2019-01-08 09:21:10', '0', '1', '0', null, '2015-11-13 15:14:22');
