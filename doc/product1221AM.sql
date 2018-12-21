/*
 Navicat Premium Data Transfer

 Source Server         : dlepsc
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : 47.92.161.159:3306
 Source Schema         : tobacco

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 21/12/2018 17:36:32
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '产品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '云烟（紫）', 0, '6901028046893', '6901028046893', 'http://1.ynncp.com/static/upload/79079cc0a8e6c6c3/7c05cb46bf1e961f.mp4', '{\"ttxm\":\"6901028046893\",\"htxm\":\"6901028046893\",\"ldczwzta\":\"6\",\"dsbzcz\":\"8\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"22\",\"tfwtzms\":\"29\",\"hldtz\":\"37\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/87baeb2e1fdc202f\\/bdce9884e47242e6.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a6e7e962d27acea\\/3f03bdd92395f952.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/09592bdba690b2ea\\/382dd7ec7d956474.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/96192d3d0288172b\\/029b8a471e6ae3af.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d883e7af17652b19\\/2a7820059df10853.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/04b30db3137d5f93\\/cb2c40f11c028bd7.png\",\"fwtjthqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb5c1e22d1571cac\\/163e7ea0e93d64d1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb5c1e22d1571cac\\/163e7ea0e93d64d1.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7af6332ec323a859\\/c1feb035b464002f.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0e72692bbd6677b8\\/a4cdc68c29ade394.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/59a223c0db1d9bcb\\/f98620a1048e4df9.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b3dd9dce3d40439a\\/122fd91b11b0fa66.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/485b44bd75bc400d\\/e4a23e4c42bd891c.jpg|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21361e00faf22994\\/3ef66ff67f8128c6.png\",\"fwtjxhqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1d757f71e4d2b2e3\\/1a73f8c0e2314b31.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1d757f71e4d2b2e3\\/1a73f8c0e2314b31.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f132725f2052cf7a\\/5f0fce27d69a88e7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f132725f2052cf7a\\/5f0fce27d69a88e7.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png\",\"fwtjyzdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png\"}', 0, 1544082253, 1545353465, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
