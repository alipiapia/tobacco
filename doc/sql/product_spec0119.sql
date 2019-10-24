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

 Date: 21/01/2019 09:10:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product_spec
-- ----------------------------
DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE `product_spec`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标识',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `type` tinyint(2) NULL DEFAULT 0 COMMENT '类型 0 input 1 select 2 editor 默认0',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `create_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规格表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_spec
-- ----------------------------
INSERT INTO `product_spec` VALUES (1, '产品名称', 'cpmc', '产品名称', 1, 1, 1544085851, 1544085851, 0, 1);
INSERT INTO `product_spec` VALUES (2, '条条形码', 'ttxm', '条条形码', 1, 2, 1544004709, 1544004709, 0, 0);
INSERT INTO `product_spec` VALUES (3, '盒条形码', 'htxm', '盒条形码', 1, 3, 1544004425, 1544004425, 0, 0);
INSERT INTO `product_spec` VALUES (4, '拉带材质文字图案及其他', 'ldczwzta', '拉带材质文字图案及其他', 3, 4, 1544004729, 1544004729, 0, 0);
INSERT INTO `product_spec` VALUES (5, '条商标纸材质', 'dsbzcz', '条商标纸材质', 3, 5, 1544004736, 1544004736, 0, 0);
INSERT INTO `product_spec` VALUES (6, '条印刷方式', 'tysfs', '条印刷方式', 3, 6, 1544063382, 1544063382, 0, 0);
INSERT INTO `product_spec` VALUES (7, '条有无防伪', 'tywfw', '条有无防伪', 3, 7, 1544063472, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (8, '条防伪位置', 'tfwwz', '条防伪位置', 3, 8, 1544064011, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (9, '条防伪特征描述及识别方法', 'tfwtzms', '条防伪特征描述及识别方法', 3, 9, 1544065901, 1544065901, 0, 0);
INSERT INTO `product_spec` VALUES (10, '盒拉带特征描述', 'hldtz', '盒拉带特征描述', 3, 10, 1544064231, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (11, '盒拉带头位置', 'hldtwz', '盒拉带头位置', 3, 11, 1544064374, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (12, '盒商标纸材质', 'hsbzcz', '盒商标纸材质', 3, 12, 1544064394, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (13, '盒商标纸印刷方式', 'hsbzysfs', '盒商标纸印刷方式', 3, 13, 1544064434, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (14, '铝箔纸材质', 'lbzcz', '铝箔纸材质', 3, 14, 1544065692, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (15, '铝箔纸特征描述', 'lbztzms', '铝箔纸特征描述', 3, 15, 1544065858, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (16, '滤嘴类型', 'lzlx', '滤嘴类型', 3, 16, 1544065928, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (17, '滤嘴长度', 'lzcd', '滤嘴长度', 3, 17, 1544065951, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (18, '接装纸特征', 'jzzztz', '接装纸特征', 3, 18, 1544065974, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (19, '接装纸长度', 'jzzcd', '接装纸长度', 3, 19, 1544065998, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (20, '接装纸有无打孔', 'jzzywdk', '接装纸有无打孔', 3, 20, 1544066139, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (21, '接装纸打孔方式', 'jzzdkfs', '接装纸打孔方式', 3, 21, 1544066187, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (22, '打孔排数', 'dkps', '打孔排数', 3, 22, 1544066218, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (23, '卷烟纸颜色', 'jyzys', '卷烟纸颜色', 3, 23, 1544066258, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (24, '卷烟纸罗纹', 'jyzlw', '卷烟纸罗纹', 3, 24, 1544066508, 1547110487, 0, 0);
INSERT INTO `product_spec` VALUES (25, '成形纸类型', 'cxzlx', '成形纸类型', 3, 25, 1544066542, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (26, '烟丝组成', 'yszc', '烟丝组成', 3, 26, 1544066558, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (27, '再造烟叶', 'zzyy', '再造烟叶', 3, 27, 1544066576, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (28, '产品视频', 'cpsp', '产品视频', 7, 32, 1544434620, 1544497298, 0, 1);
INSERT INTO `product_spec` VALUES (29, '产品logo', 'logo', '产品logo', 5, 30, 1544508714, 1545641062, 0, 1);
INSERT INTO `product_spec` VALUES (30, '条盒描述', 'thms', '条盒描述', 4, 33, 1544509599, NULL, 0, 1);
INSERT INTO `product_spec` VALUES (31, '小盒描述', 'xhms', '小盒描述', 4, 34, 1544509621, NULL, 0, 1);
INSERT INTO `product_spec` VALUES (32, '烟支描述', 'yzms', '烟支描述', 4, 35, 1544509650, NULL, 0, 1);
INSERT INTO `product_spec` VALUES (33, '产品图片', 'cptps', '产品图片', 6, 31, 1544511390, NULL, 0, 1);
INSERT INTO `product_spec` VALUES (34, '防伪图解条盒正面', 'fwtjthzm', '防伪图解条盒正面', 6, 555, 1545033723, 1545037852, 0, 0);
INSERT INTO `product_spec` VALUES (35, '防伪图解条盒背面', 'fwtjthbm', '防伪图解条盒背面', 6, 555, 1545033756, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (36, '防伪图解条盒左侧', 'fwtjthzc', '防伪图解条盒左侧', 6, 555, 1545033809, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (37, '防伪图解条盒右侧', 'fwtjthyc', '防伪图解条盒右侧', 6, 555, 1545033887, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (38, '防伪图解条盒顶部', 'fwtjthdb', '防伪图解条盒顶部', 6, 555, 1545033911, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (39, '防伪图解条盒底部', 'fwtjthdb2', '防伪图解条盒底部', 6, 555, 1545033963, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (40, '防伪图解条盒钢印号', 'fwtjthgyh', '防伪图解条盒钢印号', 6, 555, 1545033998, 1548032851, 0, 0);
INSERT INTO `product_spec` VALUES (41, '防伪图解小盒正面', 'fwtjxhzm', '防伪图解小盒正面', 6, 555, 1545034040, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (42, '防伪图解小盒背面', 'fwtjxhbm', '防伪图解小盒背面', 6, 555, 1545034066, 1545038399, 0, 0);
INSERT INTO `product_spec` VALUES (43, '防伪图解小盒左侧', 'fwtjxhzc', '防伪图解小盒左侧', 6, 555, 1545034179, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (44, '防伪图解小盒右侧', 'fwtjxhyc', '防伪图解小盒右侧', 6, 555, 1545034204, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (45, '防伪图解小盒顶部', 'fwtjxhdb', '防伪图解小盒顶部', 6, 555, 1545034271, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (46, '防伪图解小盒底部', 'fwtjxhdb2', '防伪图解小盒底部', 6, 555, 1545034289, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (47, '防伪图解小盒钢印号', 'fwtjxhgyh', '防伪图解小盒钢印号', 6, 555, 1545034309, 1548032872, 0, 0);
INSERT INTO `product_spec` VALUES (48, '防伪图解烟支正面', 'fwtjyzzm', '防伪图解烟支正面', 6, 555, 1545034354, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (49, '防伪图解烟支背面', 'fwtjyzbm', '防伪图解烟支背面', 6, 555, 1545034377, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (50, '防伪图解烟支左侧', 'fwtjyzzc', '防伪图解烟支左侧', 6, 555, 1545034396, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (51, '防伪图解烟支右侧', 'fwtjyzyc', '防伪图解烟支右侧', 6, 555, 1545034419, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (52, '防伪图解烟支顶部', 'fwtjyzdb', '防伪图解烟支顶部', 6, 555, 1545034436, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (53, '防伪图解烟支底部', 'fwtjyzdb2', '防伪图解烟支底部', 6, 555, 1545034458, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (54, '防伪图解烟支其它', 'fwtjyzqt', '防伪图解烟支其它', 6, 555, 1545034489, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (55, '盒防伪位置', 'hfwwz', '盒防伪位置', 3, 15, 1545817952, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (56, '盒防伪特征描述及识别方法', 'hfwtzms', '盒防伪特征描述及识别方法', 3, 15, 1545817980, 1545818395, 0, 0);
INSERT INTO `product_spec` VALUES (57, '防伪图解条盒胶点', 'fwtjthjd', '防伪图解条盒胶点', 6, 555, 1548032908, NULL, 0, 0);
INSERT INTO `product_spec` VALUES (58, '防伪图解小盒胶点', 'fwtjxhjd', '防伪图解小盒胶点', 6, 555, 1548032931, NULL, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
