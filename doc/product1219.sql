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

 Date: 19/12/2018 14:01:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `brand` int(11) NULL DEFAULT NULL COMMENT '品牌',
  `ttxm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条条形码',
  `htxm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盒条形码',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频',
  `item` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格属性',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `create_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '云烟（紫）', NULL, '6901028046893', '6901028046893', '//pjib9g3e7.bkt.clouddn.com/bb028310341ead83/9f340aa904f70f1a.mp4', '{\"ldczwzta\":\"6\",\"dsbzcz\":\"8\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"22\",\"tfwtzms\":\"29\",\"hldtz\":\"37\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"cptp\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/\\/f58a052a8e826a04\\/d575a87b78485f48.jpg\",\"fwtjthzm\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/7d5060a4e341352c\\/cc6d5b5fa5d0938b.jpg|\\/\\/pjib9g3e7.bkt.clouddn.com\\/1bd7602558e3e24e\\/0ae79d7ce0be223e.jpg\",\"fwtjthbm\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/1bd7602558e3e24e\\/0ae79d7ce0be223e.jpg|\\/\\/pjib9g3e7.bkt.clouddn.com\\/1bd7602558e3e24e\\/0ae79d7ce0be223e.jpg\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', 0, 1544082253, 1545198324, 0, 0);
INSERT INTO `product` VALUES (2, '', NULL, NULL, NULL, NULL, '{\"ttxm\":\"6901028045919\",\"htxm\":\"6901028045902\",\"ldczwzta\":\"5\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"23\",\"tfwtzms\":\"30\",\"hldtz\":\"38\",\"hldtwz\":\"48\",\"hsbzcz\":\"50\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"64\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"cptp\":\"\\/\\/pjib9g3e7.bkt.clouddn.com\\/bc33d51fd15eb6da\\/4379185aeb4ec766.jpg\",\"cpsp\":\"\",\"fwtjthzm\":\"http:\\/\\/tobacco\\/static\\/upload\\/d93197bf414707bd\\/c97af0e2d4c1c8aa.jpg|http:\\/\\/pjib9g3e7.bkt.clouddn.com\\/\\/a1bd84f5d4841c0e\\/d1571f76324aa840.jpg\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', 0, 1544151105, 1545183178, 0, 0);
INSERT INTO `product` VALUES (3, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u5370\\u8c61\\uff09\",\"ttxm\":\"6901028310444\",\"htxm\":\"6901028310437\",\"ldczwzta\":\"6\",\"dsbzcz\":\"10\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"24\",\"tfwtzms\":\"31\",\"hldtz\":\"39\",\"hldtwz\":\"47\",\"hsbzcz\":\"51\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"65\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"128\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544003178, 1544403626, 0, 0);
INSERT INTO `product` VALUES (4, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff0874mm\\u5927\\u56e2\\u7ed3\\uff09\",\"ttxm\":\"6901028313827\",\"htxm\":\"6901028313810\",\"ldczwzta\":\"7\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"66\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"98\",\"jzzcd\":\"114\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544057379, 1544403859, 0, 0);
INSERT INTO `product` VALUES (5, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u8f6f\\u5927\\u91cd\\u4e5d\\uff09\",\"ttxm\":\"6901028051989\",\"htxm\":\"6901028051996\",\"ldczwzta\":\"2\",\"dsbzcz\":\"11\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"26\",\"tfwtzms\":\"33\",\"hldtz\":\"41\",\"hldtwz\":\"48\",\"hsbzcz\":\"53\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"75\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"99\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544404100, NULL, 0, 0);
INSERT INTO `product` VALUES (6, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u8336\\u82b1\\uff0894mm\\uff09\",\"ttxm\":\"6901028045490\",\"htxm\":\"6901028045483\",\"ldczwzta\":\"3\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"42\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"100\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544404351, NULL, 0, 0);
INSERT INTO `product` VALUES (7, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u9493\\u9c7c\\u53f0\\uff08\\u4e2d\\u652f\\uff09\",\"ttxm\":\"6901028340649\",\"htxm\":\"6901028340632\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"68\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"97\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}', 0, 1544404693, NULL, 0, 0);
INSERT INTO `product` VALUES (8, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u9493\\u9c7c\\u53f0\\uff0884mm\\u7ec6\\u652f\\uff09\",\"ttxm\":\"6901028056854\",\"htxm\":\"6901028056847\",\"ldczwzta\":\"16\",\"dsbzcz\":\"19\",\"tysfs\":\"13\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"54\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"69\",\"lzlx\":\"89\",\"lzcd\":\"95\",\"jzzztz\":\"101\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"132\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544406515, NULL, 0, 0);
INSERT INTO `product` VALUES (9, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u7ec6\\u652f\\u4e91\\u9f99\\uff09FK350\",\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"102\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}', 0, 1544408011, 1544408274, 0, 0);
INSERT INTO `product` VALUES (10, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u7ec6\\u652f\\u4e91\\u9f99\\uff09ZB45\",\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"102\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\"}', 0, 1544408609, NULL, 0, 0);
INSERT INTO `product` VALUES (11, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u795e\\u79d8\\u82b1\\u56ed\\uff09\",\"ttxm\":\"6901028051880\",\"htxm\":\"6901028051873\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"71\",\"lzlx\":\"88\",\"lzcd\":\"96\",\"jzzztz\":\"103\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544409096, NULL, 0, 0);
INSERT INTO `product` VALUES (12, NULL, NULL, NULL, NULL, NULL, '{\"cpmc\":\"\\u4e91\\u70df\\uff08\\u786c\\u4e91\\u9f99\\uff09\",\"ttxm\":\"6901028339896\",\"htxm\":\"6901028339889\",\"ldczwzta\":\"7\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\"}', 0, 1544409533, NULL, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
