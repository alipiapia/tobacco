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

 Date: 22/01/2019 14:10:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_by` int(11) NULL DEFAULT NULL COMMENT '发布者',
  `receive_by` int(11) NULL DEFAULT NULL COMMENT '接收者',
  `sort` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '数据排序',
  `create_at` int(11) NULL DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1, '通知1', '内容1', NULL, 0, 0, 1544082253, 1548063560, 0, 0);
INSERT INTO `chat` VALUES (2, '通知2', '红河2', NULL, 0, 0, 1545641708, 1548063187, 0, 0);
INSERT INTO `chat` VALUES (3, '通知3', '通知3', NULL, NULL, 0, 1548063225, NULL, 0, 0);
INSERT INTO `chat` VALUES (4, '通知4', '通知4', 10000, NULL, 0, 1548063484, 1548063522, 0, 0);
INSERT INTO `chat` VALUES (5, NULL, '哈哈哈', 10002, 10005, 0, 1548135191, NULL, 0, 0);
INSERT INTO `chat` VALUES (6, NULL, '哈哈哈1', 10002, 10005, 0, 1548137341, NULL, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
