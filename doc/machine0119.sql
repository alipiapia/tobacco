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

 Date: 19/01/2019 20:30:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for machine
-- ----------------------------
DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` int(11) NULL DEFAULT NULL COMMENT '机型',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品ids',
  `tpattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条盒钢印号匹配规则',
  `xpattern` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小盒钢印号匹配规则',
  `item` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格属性',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `create_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机台表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of machine
-- ----------------------------
INSERT INTO `machine` VALUES (1, '1号机', 1, '1', '/^11[1-3]{1}01$/', '/^11[1-3]{1}1[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 1, 1544082253, 1547892148, 0, 0);
INSERT INTO `machine` VALUES (2, '2号机', 1, '1', '/^11[1-3]{1}02$/', '/^11[1-3]{1}2[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 2, 1544151105, 1546677157, 0, 0);
INSERT INTO `machine` VALUES (3, '3号机', 1, '1', '/^11[1-3]{1}03$/', '/^11[1-3]{1}3[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 3, 1544003178, 1545974764, 0, 0);
INSERT INTO `machine` VALUES (4, '4号机', 1, '1', '/^11[1-3]{1}04$/', '/^11[1-3]{1}4[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 4, 1544057379, 1545791883, 0, 0);
INSERT INTO `machine` VALUES (5, '5号机', 1, '1', '/^11[1-3]{1}05$/', '/^11[1-3]{1}5[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 5, 1544411321, 1545791896, 0, 0);
INSERT INTO `machine` VALUES (6, '6号机', 2, '1', '/^11[1-3]{1}06$/', '/^11[1-3]{1}06(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 6, 1544411491, 1547895589, 0, 0);
INSERT INTO `machine` VALUES (7, '7号机', 2, '1', '/^11[1-3]{1}07$/', '/^11[1-3]{1}07(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 7, 1544412196, 1545801127, 0, 0);
INSERT INTO `machine` VALUES (8, '8号机', 2, '1', '/^11[1-3]{1}08$/', '/^11[1-3]{1}08(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 8, 1544412289, 1545801135, 0, 0);
INSERT INTO `machine` VALUES (9, '9号机', 2, '1', '/^11[1-3]{1}09$/', '/^11[1-3]{1}09(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 9, 1544412474, 1545801145, 0, 0);
INSERT INTO `machine` VALUES (10, '10号机', 2, '1', '/^11[1-3]{1}10$/', '/^11[1-3]{1}10(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', 10, 1544412963, 1545801152, 0, 0);
INSERT INTO `machine` VALUES (11, '16号机', 4, '1', '/^06[1-3]{1}16$/', '/^06[1-3]{1}6[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 16, 1544413024, 1547898517, 0, 0);
INSERT INTO `machine` VALUES (12, '17号机', 4, '1', '/^06[1-3]{1}17$/', '/^06[1-3]{1}7[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 17, 1544413024, 1545793186, 0, 0);
INSERT INTO `machine` VALUES (13, '18号机', 4, '1', '/^06[1-3]{1}18$/', '/^06[1-3]{1}8[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 18, 1544413024, 1545793479, 0, 0);
INSERT INTO `machine` VALUES (14, '19号机', 4, '1', '/^06[1-3]{1}19$/', '/^06[1-3]{1}9[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 19, 1544413024, 1545793490, 0, 0);
INSERT INTO `machine` VALUES (15, '20号机', 5, '1,2,28', '/^06[1-3]{1}20$/', '/^06[1-3]{1}20(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 20, 1544413024, 1547898593, 0, 0);
INSERT INTO `machine` VALUES (16, '21号机', 5, '1,2,28', '/^06[1-3]{1}21$/', '/^06[1-3]{1}21(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 21, 1544413024, 1546676094, 0, 0);
INSERT INTO `machine` VALUES (17, '22号机', 5, '4', '/^06[1-3]{1}22$/', '/^06[1-3]{1}22(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 22, 1544413024, 1547899691, 0, 0);
INSERT INTO `machine` VALUES (18, '56号机', 10, '1', '/^06[1-3]{1}56$/', '/^06[1-3]{1}56(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', 56, 1544413024, 1547899034, 0, 0);
INSERT INTO `machine` VALUES (19, '57号机', 10, '1', '/^06[1-3]{1}57$/', '/^06[1-3]{1}57(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', 57, 1544413024, 1545801107, 0, 0);
INSERT INTO `machine` VALUES (20, '11号机', 3, '3', '/^09[1-3]{1}11$/', '/^[1-3]{1}11(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 11, 1544412963, 1547898437, 0, 0);
INSERT INTO `machine` VALUES (21, '12号机', 3, '3', '/^09[1-3]{1}12$/', '/^[1-3]{1}12(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 12, 1544412963, 1545803846, 0, 0);
INSERT INTO `machine` VALUES (22, '13号机', 3, '3', '/^09[1-3]{1}13$/', '/^[1-3]{1}13(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 13, 1544412963, 1545804110, 0, 0);
INSERT INTO `machine` VALUES (23, '14号机', 3, '3', '/^09[1-3]{1}14$/', '/^[1-3]{1}14(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 14, 1544412963, 1545804125, 0, 0);
INSERT INTO `machine` VALUES (24, '15号机', 3, '3', '/^09[1-3]{1}15$/', '/^[1-3]{1}15(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 15, 1544412963, 1545804140, 0, 0);
INSERT INTO `machine` VALUES (25, '23号机', 5, '23', '/^06[1-4]{1}23$/', '/^06[1-4]{1}23(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 23, 1544412963, 1545815868, 0, 0);
INSERT INTO `machine` VALUES (26, '24号机', 5, '23', '/^06[1-4]{1}24$/', '/^06[1-4]{1}24(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 24, 1544412963, 1545804350, 0, 0);
INSERT INTO `machine` VALUES (27, '25号机', 5, '1,28', '/^06[1-3]{1}25$/', '/^06[1-3]{1}25(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 25, 1544412963, 1546676394, 0, 0);
INSERT INTO `machine` VALUES (28, '26号机', 5, '1,28', '/^06[1-3]{1}27$/', '/^06[1-3]{1}27(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 27, 1544412963, 1545804421, 0, 0);
INSERT INTO `machine` VALUES (29, '28号机', 5, '1,28', '/^06[1-3]{1}28$/', '/^06[1-3]{1}28(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 28, 1544412963, 1545804453, 0, 0);
INSERT INTO `machine` VALUES (30, '36号机', 6, '12,31', '/^09[1-3]{1}36$/', '/^[1-3]{1}36(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 36, 1544412963, 1547898753, 0, 0);
INSERT INTO `machine` VALUES (31, '37号机', 6, '12,27,31', '/^09[1-3]{1}37$/', '/^[1-3]{1}37(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 37, 1544412963, 1545804750, 0, 0);
INSERT INTO `machine` VALUES (32, '39号机', 6, '12,14,22', '/^09[1-3]{1}39$/', '/^[1-3]{1}39(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 39, 1544412963, 1545804788, 0, 0);
INSERT INTO `machine` VALUES (33, '40号机', 6, '12,14,22', '/^09[1-3]{1}40$/', '/^[1-3]{1}40(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 40, 1544412963, 1545804871, 0, 0);
INSERT INTO `machine` VALUES (34, '41号机', 7, '13,37,48', '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', 41, 1544412963, 1547898821, 0, 0);
INSERT INTO `machine` VALUES (35, '47号机', 5, '42,45,46,47,54', '/^06[1-3]{1}47$/', '/^06[1-3]{1}47(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"22\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"35\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', 47, 1544412963, 1547898873, 0, 0);
INSERT INTO `machine` VALUES (36, '48号机', 4, '23,25,26,29', '/^06[1-4]{1}48$/', '/^06[1-4]{1}48(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 48, 1544412963, 1547898906, 0, 0);
INSERT INTO `machine` VALUES (37, '49号机', 4, '32,33,44', '/^06[1-4]{1}49$/', '/^06[1-4]{1}49(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', 49, 1544412963, 1545812235, 0, 0);
INSERT INTO `machine` VALUES (38, '50号机', 8, '3', '/^09[1-3]{1}50$/', '/^[1-3]{1}50(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 50, 1544412963, 1547898940, 0, 0);
INSERT INTO `machine` VALUES (39, '51号机', 8, '3', '/^09[1-3]{1}51$/', '/^[1-3]{1}51(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 51, 1544412963, 1545812448, 0, 0);
INSERT INTO `machine` VALUES (40, '52号机', 9, '3', '/^09[1-3]{1}52$/', '/^[1-3]{1}52(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 52, 1544412963, 1547898984, 0, 0);
INSERT INTO `machine` VALUES (41, '53号机', 9, '3', '/^09[1-3]{1}53$/', '/^[1-3]{1}53(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 53, 1544412963, 1545812600, 0, 0);
INSERT INTO `machine` VALUES (42, '54号机', 9, '3', '/^09[1-3]{1}54$/', '/^[1-3]{1}54(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 54, 1544412963, 1545812693, 0, 0);
INSERT INTO `machine` VALUES (43, '55号机', 9, '3', '/^09[1-3]{1}55$/', '/^[1-3]{1}55(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', 55, 1544412963, 1545812715, 0, 0);
INSERT INTO `machine` VALUES (44, '58号机', 11, '23,25', '/^06[1-4]{1}58$/', '/^06[1-4]{1}58(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 58, 1544412963, 1547899093, 0, 0);
INSERT INTO `machine` VALUES (45, '59号机', 11, '23,25,26', '/^06[1-4]{1}59$/', '/^06[1-4]{1}59(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 59, 1544412963, 1545812811, 0, 0);
INSERT INTO `machine` VALUES (46, '60号机', 11, '23,25', '/^06[1-4]{1}60$/', '/^06[1-4]{1}60(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 60, 1544412963, 1545812836, 0, 0);
INSERT INTO `machine` VALUES (47, '61号机', 11, '43', '/^06[1-3]{1}61$/', '/^06[1-3]{1}61(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', 61, 1544412963, 1545817338, 0, 0);
INSERT INTO `machine` VALUES (48, '26号机', 5, '23', '/^06[1-4]{1}26$/', '/^06[1-4]{1}26(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 26, 1544412963, 1546676394, 0, 0);
INSERT INTO `machine` VALUES (49, '31号机', 5, '23', '/^06[1-4]{1}31$/', '/^06[1-4]{1}31(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', 31, 1544412963, 1546676394, 0, 0);
INSERT INTO `machine` VALUES (50, '46号机', 6, NULL, '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', 46, 1544412963, 1545816241, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色与节点绑定' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------
INSERT INTO `system_auth_node` VALUES (153, 1, 'admin');
INSERT INTO `system_auth_node` VALUES (154, 1, 'admin/auth');
INSERT INTO `system_auth_node` VALUES (155, 1, 'admin/auth/index');
INSERT INTO `system_auth_node` VALUES (156, 1, 'admin/auth/apply');
INSERT INTO `system_auth_node` VALUES (157, 1, 'admin/auth/add');
INSERT INTO `system_auth_node` VALUES (158, 1, 'admin/auth/edit');
INSERT INTO `system_auth_node` VALUES (159, 1, 'admin/auth/forbid');
INSERT INTO `system_auth_node` VALUES (160, 1, 'admin/auth/resume');
INSERT INTO `system_auth_node` VALUES (161, 1, 'admin/auth/del');
INSERT INTO `system_auth_node` VALUES (162, 1, 'admin/brand');
INSERT INTO `system_auth_node` VALUES (163, 1, 'admin/brand/index');
INSERT INTO `system_auth_node` VALUES (164, 1, 'admin/brand/add');
INSERT INTO `system_auth_node` VALUES (165, 1, 'admin/brand/edit');
INSERT INTO `system_auth_node` VALUES (166, 1, 'admin/brand/del');
INSERT INTO `system_auth_node` VALUES (167, 1, 'admin/brand/forbid');
INSERT INTO `system_auth_node` VALUES (168, 1, 'admin/brand/resume');
INSERT INTO `system_auth_node` VALUES (169, 1, 'admin/config');
INSERT INTO `system_auth_node` VALUES (170, 1, 'admin/config/index');
INSERT INTO `system_auth_node` VALUES (171, 1, 'admin/config/file');
INSERT INTO `system_auth_node` VALUES (172, 1, 'admin/log');
INSERT INTO `system_auth_node` VALUES (173, 1, 'admin/log/index');
INSERT INTO `system_auth_node` VALUES (174, 1, 'admin/log/del');
INSERT INTO `system_auth_node` VALUES (175, 1, 'admin/machine');
INSERT INTO `system_auth_node` VALUES (176, 1, 'admin/machine/index');
INSERT INTO `system_auth_node` VALUES (177, 1, 'admin/machine/add');
INSERT INTO `system_auth_node` VALUES (178, 1, 'admin/machine/edit');
INSERT INTO `system_auth_node` VALUES (179, 1, 'admin/machine/del');
INSERT INTO `system_auth_node` VALUES (180, 1, 'admin/machine/forbid');
INSERT INTO `system_auth_node` VALUES (181, 1, 'admin/machine/resume');
INSERT INTO `system_auth_node` VALUES (182, 1, 'admin/machine_item');
INSERT INTO `system_auth_node` VALUES (183, 1, 'admin/machine_item/index');
INSERT INTO `system_auth_node` VALUES (184, 1, 'admin/machine_item/add');
INSERT INTO `system_auth_node` VALUES (185, 1, 'admin/machine_item/edit');
INSERT INTO `system_auth_node` VALUES (186, 1, 'admin/machine_item/del');
INSERT INTO `system_auth_node` VALUES (187, 1, 'admin/machine_item/forbid');
INSERT INTO `system_auth_node` VALUES (188, 1, 'admin/machine_item/resume');
INSERT INTO `system_auth_node` VALUES (189, 1, 'admin/machine_spec');
INSERT INTO `system_auth_node` VALUES (190, 1, 'admin/machine_spec/index');
INSERT INTO `system_auth_node` VALUES (191, 1, 'admin/machine_spec/add');
INSERT INTO `system_auth_node` VALUES (192, 1, 'admin/machine_spec/edit');
INSERT INTO `system_auth_node` VALUES (193, 1, 'admin/machine_spec/del');
INSERT INTO `system_auth_node` VALUES (194, 1, 'admin/machine_spec/forbid');
INSERT INTO `system_auth_node` VALUES (195, 1, 'admin/machine_spec/resume');
INSERT INTO `system_auth_node` VALUES (196, 1, 'admin/member');
INSERT INTO `system_auth_node` VALUES (197, 1, 'admin/member/index');
INSERT INTO `system_auth_node` VALUES (198, 1, 'admin/member/auth');
INSERT INTO `system_auth_node` VALUES (199, 1, 'admin/member/add');
INSERT INTO `system_auth_node` VALUES (200, 1, 'admin/member/edit');
INSERT INTO `system_auth_node` VALUES (201, 1, 'admin/member/pass');
INSERT INTO `system_auth_node` VALUES (202, 1, 'admin/member/del');
INSERT INTO `system_auth_node` VALUES (203, 1, 'admin/member/forbid');
INSERT INTO `system_auth_node` VALUES (204, 1, 'admin/member/resume');
INSERT INTO `system_auth_node` VALUES (205, 1, 'admin/menu');
INSERT INTO `system_auth_node` VALUES (206, 1, 'admin/menu/index');
INSERT INTO `system_auth_node` VALUES (207, 1, 'admin/menu/add');
INSERT INTO `system_auth_node` VALUES (208, 1, 'admin/menu/edit');
INSERT INTO `system_auth_node` VALUES (209, 1, 'admin/menu/del');
INSERT INTO `system_auth_node` VALUES (210, 1, 'admin/menu/forbid');
INSERT INTO `system_auth_node` VALUES (211, 1, 'admin/menu/resume');
INSERT INTO `system_auth_node` VALUES (212, 1, 'admin/node');
INSERT INTO `system_auth_node` VALUES (213, 1, 'admin/node/index');
INSERT INTO `system_auth_node` VALUES (214, 1, 'admin/node/clear');
INSERT INTO `system_auth_node` VALUES (215, 1, 'admin/node/save');
INSERT INTO `system_auth_node` VALUES (216, 1, 'admin/notice');
INSERT INTO `system_auth_node` VALUES (217, 1, 'admin/notice/index');
INSERT INTO `system_auth_node` VALUES (218, 1, 'admin/notice/add');
INSERT INTO `system_auth_node` VALUES (219, 1, 'admin/notice/edit');
INSERT INTO `system_auth_node` VALUES (220, 1, 'admin/notice/del');
INSERT INTO `system_auth_node` VALUES (221, 1, 'admin/notice/forbid');
INSERT INTO `system_auth_node` VALUES (222, 1, 'admin/notice/resume');
INSERT INTO `system_auth_node` VALUES (223, 1, 'admin/product');
INSERT INTO `system_auth_node` VALUES (224, 1, 'admin/product/index');
INSERT INTO `system_auth_node` VALUES (225, 1, 'admin/product/add');
INSERT INTO `system_auth_node` VALUES (226, 1, 'admin/product/edit');
INSERT INTO `system_auth_node` VALUES (227, 1, 'admin/product/del');
INSERT INTO `system_auth_node` VALUES (228, 1, 'admin/product/forbid');
INSERT INTO `system_auth_node` VALUES (229, 1, 'admin/product/resume');
INSERT INTO `system_auth_node` VALUES (230, 1, 'admin/product_item');
INSERT INTO `system_auth_node` VALUES (231, 1, 'admin/product_item/index');
INSERT INTO `system_auth_node` VALUES (232, 1, 'admin/product_item/add');
INSERT INTO `system_auth_node` VALUES (233, 1, 'admin/product_item/edit');
INSERT INTO `system_auth_node` VALUES (234, 1, 'admin/product_item/del');
INSERT INTO `system_auth_node` VALUES (235, 1, 'admin/product_item/forbid');
INSERT INTO `system_auth_node` VALUES (236, 1, 'admin/product_item/resume');
INSERT INTO `system_auth_node` VALUES (237, 1, 'admin/product_spec');
INSERT INTO `system_auth_node` VALUES (238, 1, 'admin/product_spec/index');
INSERT INTO `system_auth_node` VALUES (239, 1, 'admin/product_spec/add');
INSERT INTO `system_auth_node` VALUES (240, 1, 'admin/product_spec/edit');
INSERT INTO `system_auth_node` VALUES (241, 1, 'admin/product_spec/del');
INSERT INTO `system_auth_node` VALUES (242, 1, 'admin/product_spec/forbid');
INSERT INTO `system_auth_node` VALUES (243, 1, 'admin/product_spec/resume');
INSERT INTO `system_auth_node` VALUES (244, 1, 'admin/user');
INSERT INTO `system_auth_node` VALUES (245, 1, 'admin/user/index');
INSERT INTO `system_auth_node` VALUES (246, 1, 'admin/user/auth');
INSERT INTO `system_auth_node` VALUES (247, 1, 'admin/user/add');
INSERT INTO `system_auth_node` VALUES (248, 1, 'admin/user/edit');
INSERT INTO `system_auth_node` VALUES (249, 1, 'admin/user/pass');
INSERT INTO `system_auth_node` VALUES (250, 1, 'admin/user/del');
INSERT INTO `system_auth_node` VALUES (251, 1, 'admin/user/forbid');
INSERT INTO `system_auth_node` VALUES (252, 1, 'admin/user/resume');

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
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES (1, 0, '系统设置', '', '', '#', '', '_self', 2000, 1, 10000, '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES (2, 10, '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', 20, 1, 10000, '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES (3, 10, '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', 10, 1, 10000, '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES (4, 11, '角色管理', '', 'fa fa-group', 'admin/auth/index', '', '_self', 20, 1, 10000, '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES (5, 11, '管理员管理', '', 'fa fa-user', 'admin/user/index', '', '_self', 10, 1, 0, '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES (6, 11, '节点管理', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', 30, 1, 0, '2018-01-23 12:36:54');
INSERT INTO `system_menu` VALUES (7, 0, '后台首页', '', '', 'admin/index/main', '', '_self', 1000, 0, 0, '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES (8, 16, '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', 10, 1, 0, '2018-01-24 13:52:58');
INSERT INTO `system_menu` VALUES (9, 10, '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', 30, 1, 0, '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES (10, 1, '系统管理', '', '', '#', '', '_self', 200, 1, 0, '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES (11, 1, '权限管理', '', '', '#', '', '_self', 300, 1, 0, '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES (16, 1, '日志管理', '', '', '#', '', '_self', 400, 1, 0, '2018-02-10 16:31:15');
INSERT INTO `system_menu` VALUES (32, 0, '产品管理', '', '', '#', '', '_self', 3000, 1, 0, '2018-03-20 16:46:07');
INSERT INTO `system_menu` VALUES (33, 32, '产品管理', '', '', '#', '', '_self', 0, 1, 0, '2018-03-20 16:46:21');
INSERT INTO `system_menu` VALUES (34, 33, '产品管理', '', 'fa fa-modx', 'admin/product/index', '', '_self', 1, 1, 0, '2018-03-20 16:46:45');
INSERT INTO `system_menu` VALUES (35, 33, '产品规格管理', '', 'fa fa-hashtag', 'admin/product_spec/index', '', '_self', 2, 1, 0, '2018-03-20 16:47:08');
INSERT INTO `system_menu` VALUES (36, 33, '产品规格属性管理', '', 'fa fa-product-hunt', 'admin/product_item/index', '', '_self', 3, 1, 0, '2018-03-20 16:47:50');
INSERT INTO `system_menu` VALUES (37, 0, '机台管理', '', '', '#', '', '_self', 4000, 1, 0, '2018-03-20 16:48:05');
INSERT INTO `system_menu` VALUES (38, 37, '机台管理', '', '', '#', '', '_self', 0, 1, 0, '2018-04-21 15:07:36');
INSERT INTO `system_menu` VALUES (39, 38, '机台管理', '', 'fa fa-adjust', 'admin/machine/index', '', '_self', 1, 1, 0, '2018-04-21 15:07:54');
INSERT INTO `system_menu` VALUES (40, 38, '机型规格管理', '', 'fa fa-scribd', 'admin/machine_spec/index', '', '_self', 2, 1, 0, '2018-04-21 15:08:17');
INSERT INTO `system_menu` VALUES (41, 38, '机型规格属性管理', '', 'fa fa-mixcloud', 'admin/machine_item/index', '', '_self', 3, 1, 0, '2018-04-21 15:08:25');
INSERT INTO `system_menu` VALUES (42, 33, '品牌管理', '', 'fa fa-shopping-bag', 'admin/brand/index', '', '_self', 4, 1, 0, '2018-12-20 13:59:07');
INSERT INTO `system_menu` VALUES (43, 10, '通知公告管理', '', 'layui-icon layui-icon-notice', 'admin/notice/index', '', '_self', 2, 1, 0, '2018-12-21 15:44:16');
INSERT INTO `system_menu` VALUES (44, 10, '用户管理', '', 'fa fa-user-circle-o', 'admin/member/index', '', '_self', 1, 1, 0, '2018-12-21 15:55:30');
INSERT INTO `system_menu` VALUES (45, 38, '机型管理', '', 'fa fa-inbox', 'admin/type/index', '', '_self', 4, 1, 0, '2019-01-19 17:46:26');

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
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统节点表' ROW_FORMAT = Compact;

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
INSERT INTO `system_node` VALUES (49, 'admin/machine', '机型管理', 0, 1, 1, '2018-12-11 16:02:21');
INSERT INTO `system_node` VALUES (50, 'admin/machine/index', '列表', 0, 0, 0, '2018-12-11 16:02:34');
INSERT INTO `system_node` VALUES (51, 'admin/machine/add', '添加', 0, 0, 0, '2018-12-11 16:02:41');
INSERT INTO `system_node` VALUES (52, 'admin/machine/edit', '编辑', 0, 0, 0, '2018-12-11 16:02:41');
INSERT INTO `system_node` VALUES (53, 'admin/machine/del', '删除', 0, 0, 0, '2018-12-11 16:02:43');
INSERT INTO `system_node` VALUES (54, 'admin/machine/forbid', '禁用', 0, 0, 0, '2018-12-11 16:02:44');
INSERT INTO `system_node` VALUES (55, 'admin/machine/resume', '开启', 0, 0, 0, '2018-12-11 16:02:48');
INSERT INTO `system_node` VALUES (56, 'admin/machine_item', '机型规格属性', 0, 1, 1, '2018-12-11 16:03:09');
INSERT INTO `system_node` VALUES (57, 'admin/machine_spec', '机型规格', 0, 1, 1, '2018-12-11 16:03:16');
INSERT INTO `system_node` VALUES (58, 'admin/product', '产品', 0, 1, 1, '2018-12-11 16:03:24');
INSERT INTO `system_node` VALUES (59, 'admin/product_item', '产品规格属性', 0, 1, 1, '2018-12-11 16:03:30');
INSERT INTO `system_node` VALUES (60, 'admin/product_spec', '产品规格', 0, 1, 1, '2018-12-11 16:03:34');
INSERT INTO `system_node` VALUES (61, 'admin/product_spec/index', '列表', 0, 0, 0, '2018-12-11 16:03:38');
INSERT INTO `system_node` VALUES (62, 'admin/product_spec/add', '添加', 0, 0, 0, '2018-12-11 16:03:46');
INSERT INTO `system_node` VALUES (63, 'admin/product_item/index', '列表', 0, 0, 0, '2018-12-11 16:03:51');
INSERT INTO `system_node` VALUES (64, 'admin/product/index', '列表', 0, 0, 0, '2018-12-11 16:03:56');
INSERT INTO `system_node` VALUES (65, 'admin/machine_spec/index', '列表', 0, 0, 0, '2018-12-11 16:04:12');
INSERT INTO `system_node` VALUES (66, 'admin/machine_item/index', '列表', 0, 0, 0, '2018-12-11 16:04:22');
INSERT INTO `system_node` VALUES (67, 'admin/product_spec/edit', '编辑', 0, 0, 0, '2018-12-11 16:04:29');
INSERT INTO `system_node` VALUES (68, 'admin/machine_item/add', '添加', 0, 0, 0, '2018-12-11 16:04:35');
INSERT INTO `system_node` VALUES (69, 'admin/machine_spec/add', '添加', 0, 0, 0, '2018-12-11 16:04:39');
INSERT INTO `system_node` VALUES (70, 'admin/product/add', '添加', 0, 0, 0, '2018-12-11 16:04:40');
INSERT INTO `system_node` VALUES (71, 'admin/product_item/add', '添加', 0, 0, 0, '2018-12-11 16:04:46');
INSERT INTO `system_node` VALUES (72, 'admin/machine_item/edit', '编辑', 0, 0, 0, '2018-12-11 16:04:50');
INSERT INTO `system_node` VALUES (73, 'admin/machine_spec/edit', '编辑', 0, 0, 0, '2018-12-11 16:04:53');
INSERT INTO `system_node` VALUES (74, 'admin/product_item/edit', '编辑', 0, 0, 0, '2018-12-11 16:04:54');
INSERT INTO `system_node` VALUES (75, 'admin/product/edit', '编辑', 0, 0, 0, '2018-12-11 16:05:02');
INSERT INTO `system_node` VALUES (76, 'admin/machine_item/del', '删除', 0, 0, 0, '2018-12-11 16:05:05');
INSERT INTO `system_node` VALUES (77, 'admin/machine_spec/del', '删除', 0, 0, 0, '2018-12-11 16:05:08');
INSERT INTO `system_node` VALUES (78, 'admin/product/del', '删除', 0, 0, 0, '2018-12-11 16:05:10');
INSERT INTO `system_node` VALUES (79, 'admin/product_item/del', '删除', 0, 0, 0, '2018-12-11 16:05:11');
INSERT INTO `system_node` VALUES (80, 'admin/product_spec/del', '删除', 0, 0, 0, '2018-12-11 16:05:16');
INSERT INTO `system_node` VALUES (81, 'admin/machine_item/forbid', '禁用', 0, 0, 0, '2018-12-11 16:05:18');
INSERT INTO `system_node` VALUES (82, 'admin/machine_spec/forbid', '禁用', 0, 0, 0, '2018-12-11 16:05:21');
INSERT INTO `system_node` VALUES (83, 'admin/product/forbid', '禁用', 0, 0, 0, '2018-12-11 16:05:23');
INSERT INTO `system_node` VALUES (84, 'admin/product_item/forbid', '禁用', 0, 0, 0, '2018-12-11 16:05:25');
INSERT INTO `system_node` VALUES (85, 'admin/product_spec/forbid', '禁用', 0, 0, 0, '2018-12-11 16:05:30');
INSERT INTO `system_node` VALUES (86, 'admin/machine_item/resume', '开启', 0, 0, 0, '2018-12-11 16:05:34');
INSERT INTO `system_node` VALUES (87, 'admin/machine_spec/resume', '开启', 0, 0, 0, '2018-12-11 16:05:43');
INSERT INTO `system_node` VALUES (88, 'admin/product/resume', '开启', 0, 0, 0, '2018-12-11 16:05:46');
INSERT INTO `system_node` VALUES (89, 'admin/product_item/resume', '开启', 0, 0, 0, '2018-12-11 16:05:47');
INSERT INTO `system_node` VALUES (90, 'admin/product_spec/resume', '开启', 0, 0, 0, '2018-12-11 16:05:51');
INSERT INTO `system_node` VALUES (91, 'api', 'API', 0, 1, 1, '2018-12-17 15:07:03');
INSERT INTO `system_node` VALUES (92, 'api/product', '', 0, 1, 1, '2018-12-17 15:07:21');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `create_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, 'FK700', '', 'FK700', 0, 1547891548, NULL, 0, 0);
INSERT INTO `type` VALUES (2, 'GDX2000', '', 'GDX2000', 0, 1547891587, NULL, 0, 0);
INSERT INTO `type` VALUES (3, 'GDS1000', '', 'GDS1000', 0, 1547891605, NULL, 0, 0);
INSERT INTO `type` VALUES (4, 'FOCKE-FX', '', 'FOCKE-FX', 0, 1547891621, NULL, 0, 0);
INSERT INTO `type` VALUES (5, 'FOCKE350', '', 'FOCKE350', 0, 1547891634, NULL, 0, 0);
INSERT INTO `type` VALUES (6, 'GDX1', '', 'GDX1', 0, 1547891649, NULL, 0, 0);
INSERT INTO `type` VALUES (7, 'ZB45', '', 'ZB45', 0, 1547891661, NULL, 0, 0);
INSERT INTO `type` VALUES (8, 'ZB28', '', 'ZB28', 0, 1547891679, NULL, 0, 0);
INSERT INTO `type` VALUES (9, 'FOCKE-FXS', '', 'FOCKE-FXS', 0, 1547891688, NULL, 0, 0);
INSERT INTO `type` VALUES (10, 'ZB48', '', 'ZB48', 0, 1547891697, NULL, 0, 0);
INSERT INTO `type` VALUES (11, 'ZB45', '', 'ZB45', 0, 1547891711, NULL, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
