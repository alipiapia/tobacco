/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tobacco

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-22 18:22:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `area_name` varchar(50) NOT NULL COMMENT '地区名称',
  `area_parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区父ID',
  `area_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `area_deep` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '地区深度，从1开始',
  `area_region` varchar(3) DEFAULT NULL COMMENT '大区名称',
  `area_open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '地区是否开启',
  PRIMARY KEY (`area_id`) USING BTREE,
  KEY `area_parent_id` (`area_parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45057 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='andy - 地区表';

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '北京市', '0', '0', '1', '华北', '1');
INSERT INTO `area` VALUES ('2', '天津市', '0', '0', '1', '华北', '1');
INSERT INTO `area` VALUES ('3', '河北省', '0', '0', '1', '华北', '1');
INSERT INTO `area` VALUES ('4', '山西省', '0', '0', '1', '华北', '1');
INSERT INTO `area` VALUES ('5', '内蒙古省', '0', '0', '1', '华北', '1');
INSERT INTO `area` VALUES ('6', '辽宁省', '0', '0', '1', '东北', '1');
INSERT INTO `area` VALUES ('7', '吉林省', '0', '0', '1', '东北', '1');
INSERT INTO `area` VALUES ('8', '黑龙江省', '0', '0', '1', '东北', '1');
INSERT INTO `area` VALUES ('9', '上海市', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('10', '江苏省', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('11', '浙江省', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('12', '安徽省', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('13', '福建省', '0', '0', '1', '华南', '1');
INSERT INTO `area` VALUES ('14', '江西省', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('15', '山东省', '0', '0', '1', '华东', '1');
INSERT INTO `area` VALUES ('16', '河南省', '0', '0', '1', '华中', '1');
INSERT INTO `area` VALUES ('17', '湖北省', '0', '0', '1', '华中', '1');
INSERT INTO `area` VALUES ('18', '湖南省', '0', '0', '1', '华中', '1');
INSERT INTO `area` VALUES ('19', '广东省', '0', '0', '1', '华南', '1');
INSERT INTO `area` VALUES ('20', '广西省', '0', '0', '1', '华南', '1');
INSERT INTO `area` VALUES ('21', '海南省', '0', '0', '1', '华南', '1');
INSERT INTO `area` VALUES ('22', '重庆市', '0', '0', '1', '西南', '1');
INSERT INTO `area` VALUES ('23', '四川省', '0', '0', '1', '西南', '1');
INSERT INTO `area` VALUES ('24', '贵州省', '0', '0', '1', '西南', '1');
INSERT INTO `area` VALUES ('25', '云南省', '0', '0', '1', '西南', '1');
INSERT INTO `area` VALUES ('26', '西藏', '0', '0', '1', '西南', '1');
INSERT INTO `area` VALUES ('27', '陕西省', '0', '0', '1', '西北', '1');
INSERT INTO `area` VALUES ('28', '甘肃省', '0', '0', '1', '西北', '1');
INSERT INTO `area` VALUES ('29', '青海', '0', '0', '1', '西北', '1');
INSERT INTO `area` VALUES ('30', '宁夏', '0', '0', '1', '西北', '1');
INSERT INTO `area` VALUES ('31', '新疆', '0', '0', '1', '西北', '1');
INSERT INTO `area` VALUES ('32', '台湾', '0', '0', '1', '港澳台', '1');
INSERT INTO `area` VALUES ('33', '香港', '0', '0', '1', '港澳台', '1');
INSERT INTO `area` VALUES ('34', '澳门', '0', '0', '1', '港澳台', '1');
INSERT INTO `area` VALUES ('35', '海外', '0', '0', '1', '海外', '1');
INSERT INTO `area` VALUES ('36', '北京市', '1', '0', '2', '编辑', '1');
INSERT INTO `area` VALUES ('37', '东城区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('38', '西城区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('39', '上海市', '9', '0', '2', null, '1');
INSERT INTO `area` VALUES ('40', '天津市', '2', '0', '2', null, '1');
INSERT INTO `area` VALUES ('41', '朝阳区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('42', '丰台区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('43', '石景山区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('44', '海淀区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('45', '门头沟区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('46', '房山区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('47', '通州区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('48', '顺义区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('49', '昌平区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('50', '大兴区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('51', '怀柔区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('52', '平谷区', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('53', '密云县', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('54', '延庆县', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('55', '和平区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('56', '河东区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('57', '河西区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('58', '南开区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('59', '河北区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('60', '红桥区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('61', '塘沽区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('62', '重庆市', '22', '0', '2', null, '1');
INSERT INTO `area` VALUES ('64', '东丽区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('65', '西青区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('66', '津南区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('67', '北辰区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('68', '武清区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('69', '宝坻区', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('70', '宁河县', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('71', '静海县', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('72', '蓟县', '40', '0', '3', null, '1');
INSERT INTO `area` VALUES ('73', '石家庄市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('74', '唐山市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('75', '秦皇岛市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('76', '邯郸市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('77', '邢台市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('78', '保定市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('79', '张家口市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('80', '承德市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('81', '衡水市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('82', '廊坊市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('83', '沧州市', '3', '0', '2', null, '1');
INSERT INTO `area` VALUES ('84', '太原市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('85', '大同市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('86', '阳泉市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('87', '长治市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('88', '晋城市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('89', '朔州市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('90', '晋中市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('91', '运城市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('92', '忻州市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('93', '临汾市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('94', '吕梁市', '4', '0', '2', null, '1');
INSERT INTO `area` VALUES ('95', '呼和浩特市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('96', '包头市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('97', '乌海市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('98', '赤峰市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('99', '通辽市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('100', '鄂尔多斯市', '5', '55', '2', null, '1');
INSERT INTO `area` VALUES ('101', '呼伦贝尔市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('102', '巴彦淖尔市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('103', '乌兰察布市', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('104', '兴安盟', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('105', '锡林郭勒盟', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('106', '阿拉善盟', '5', '0', '2', null, '1');
INSERT INTO `area` VALUES ('107', '沈阳市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('108', '大连市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('109', '鞍山市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('110', '抚顺市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('111', '本溪市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('112', '丹东市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('113', '锦州市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('114', '营口市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('115', '阜新市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('116', '辽阳市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('117', '盘锦市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('118', '铁岭市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('119', '朝阳市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('120', '葫芦岛市', '6', '0', '2', null, '1');
INSERT INTO `area` VALUES ('121', '长春市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('122', '吉林市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('123', '四平市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('124', '辽源市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('125', '通化市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('126', '白山市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('127', '松原市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('128', '白城市', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('129', '延边朝鲜族自治州', '7', '0', '2', null, '1');
INSERT INTO `area` VALUES ('130', '哈尔滨市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('131', '齐齐哈尔市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('132', '鸡西市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('133', '鹤岗市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('134', '双鸭山市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('135', '大庆市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('136', '伊春市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('137', '佳木斯市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('138', '七台河市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('139', '牡丹江市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('140', '黑河市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('141', '绥化市', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('142', '大兴安岭地区', '8', '0', '2', null, '1');
INSERT INTO `area` VALUES ('143', '黄浦区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('144', '卢湾区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('145', '徐汇区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('146', '长宁区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('147', '静安区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('148', '普陀区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('149', '闸北区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('150', '虹口区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('151', '杨浦区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('152', '闵行区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('153', '宝山区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('154', '嘉定区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('155', '浦东新区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('156', '金山区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('157', '松江区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('158', '青浦区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('159', '南汇区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('160', '奉贤区', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('161', '崇明县', '39', '0', '3', null, '1');
INSERT INTO `area` VALUES ('162', '南京市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('163', '无锡市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('164', '徐州市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('165', '常州市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('166', '苏州市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('167', '南通市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('168', '连云港市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('169', '淮安市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('170', '盐城市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('171', '扬州市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('172', '镇江市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('173', '泰州市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('174', '宿迁市', '10', '0', '2', null, '1');
INSERT INTO `area` VALUES ('175', '杭州市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('176', '宁波市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('177', '温州市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('178', '嘉兴市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('179', '湖州市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('180', '绍兴市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('181', '舟山市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('182', '衢州市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('183', '金华市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('184', '台州市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('185', '丽水市', '11', '0', '2', null, '1');
INSERT INTO `area` VALUES ('186', '合肥市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('187', '芜湖市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('188', '蚌埠市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('189', '淮南市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('190', '马鞍山市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('191', '淮北市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('192', '铜陵市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('193', '安庆市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('194', '黄山市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('195', '滁州市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('196', '阜阳市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('197', '宿州市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('198', '巢湖市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('199', '六安市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('200', '亳州市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('201', '池州市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('202', '宣城市', '12', '0', '2', null, '1');
INSERT INTO `area` VALUES ('203', '福州市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('204', '厦门市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('205', '莆田市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('206', '三明市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('207', '泉州市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('208', '漳州市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('209', '南平市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('210', '龙岩市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('211', '宁德市', '13', '0', '2', null, '1');
INSERT INTO `area` VALUES ('212', '南昌市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('213', '景德镇市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('214', '萍乡市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('215', '九江市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('216', '新余市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('217', '鹰潭市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('218', '赣州市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('219', '吉安市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('220', '宜春市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('221', '抚州市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('222', '上饶市', '14', '0', '2', null, '1');
INSERT INTO `area` VALUES ('223', '济南市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('224', '青岛市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('225', '淄博市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('226', '枣庄市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('227', '东营市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('228', '烟台市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('229', '潍坊市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('230', '济宁市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('231', '泰安市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('232', '威海市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('233', '日照市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('234', '莱芜市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('235', '临沂市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('236', '德州市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('237', '聊城市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('238', '滨州市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('239', '菏泽市', '15', '0', '2', null, '1');
INSERT INTO `area` VALUES ('240', '郑州市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('241', '开封市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('242', '洛阳市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('243', '平顶山市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('244', '安阳市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('245', '鹤壁市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('246', '新乡市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('247', '焦作市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('248', '濮阳市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('249', '许昌市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('250', '漯河市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('251', '三门峡市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('252', '南阳市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('253', '商丘市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('254', '信阳市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('255', '周口市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('256', '驻马店市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('257', '济源市', '16', '0', '2', null, '1');
INSERT INTO `area` VALUES ('258', '武汉市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('259', '黄石市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('260', '十堰市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('261', '宜昌市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('262', '襄樊市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('263', '鄂州市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('264', '荆门市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('265', '孝感市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('266', '荆州市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('267', '黄冈市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('268', '咸宁市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('269', '随州市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('270', '恩施土家族苗族自治州', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('271', '仙桃市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('272', '潜江市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('273', '天门市', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('274', '神农架林区', '17', '0', '2', null, '1');
INSERT INTO `area` VALUES ('275', '长沙市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('276', '株洲市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('277', '湘潭市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('278', '衡阳市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('279', '邵阳市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('280', '岳阳市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('281', '常德市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('282', '张家界市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('283', '益阳市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('284', '郴州市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('285', '永州市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('286', '怀化市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('287', '娄底市', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('288', '湘西土家族苗族自治州', '18', '0', '2', null, '1');
INSERT INTO `area` VALUES ('289', '广州市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('290', '韶关市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('291', '深圳市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('292', '珠海市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('293', '汕头市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('294', '佛山市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('295', '江门市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('296', '湛江市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('297', '茂名市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('298', '肇庆市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('299', '惠州市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('300', '梅州市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('301', '汕尾市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('302', '河源市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('303', '阳江市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('304', '清远市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('305', '东莞市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('306', '中山市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('307', '潮州市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('308', '揭阳市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('309', '云浮市', '19', '0', '2', null, '1');
INSERT INTO `area` VALUES ('310', '南宁市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('311', '柳州市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('312', '桂林市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('313', '梧州市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('314', '北海市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('315', '防城港市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('316', '钦州市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('317', '贵港市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('318', '玉林市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('319', '百色市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('320', '贺州市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('321', '河池市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('322', '来宾市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('323', '崇左市', '20', '0', '2', null, '1');
INSERT INTO `area` VALUES ('324', '海口市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('325', '三亚市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('326', '五指山市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('327', '琼海市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('328', '儋州市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('329', '文昌市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('330', '万宁市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('331', '东方市', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('332', '定安县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('333', '屯昌县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('334', '澄迈县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('335', '临高县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('336', '白沙黎族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('337', '昌江黎族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('338', '乐东黎族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('339', '陵水黎族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('340', '保亭黎族苗族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('341', '琼中黎族苗族自治县', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('342', '西沙群岛', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('343', '南沙群岛', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('344', '中沙群岛的岛礁及其海域', '21', '0', '2', null, '1');
INSERT INTO `area` VALUES ('345', '万州区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('346', '涪陵区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('347', '渝中区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('348', '大渡口区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('349', '江北区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('350', '沙坪坝区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('351', '九龙坡区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('352', '南岸区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('353', '北碚区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('354', '双桥区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('355', '万盛区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('356', '渝北区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('357', '巴南区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('358', '黔江区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('359', '长寿区', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('360', '綦江县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('361', '潼南县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('362', '铜梁县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('363', '大足县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('364', '荣昌县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('365', '璧山县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('366', '梁平县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('367', '城口县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('368', '丰都县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('369', '垫江县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('370', '武隆县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('371', '忠县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('372', '开县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('373', '云阳县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('374', '奉节县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('375', '巫山县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('376', '巫溪县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('377', '石柱土家族自治县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('378', '秀山土家族苗族自治县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('379', '酉阳土家族苗族自治县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('380', '彭水苗族土家族自治县', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('381', '江津市', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('382', '合川市', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('383', '永川市', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('384', '南川市', '62', '0', '3', null, '1');
INSERT INTO `area` VALUES ('385', '成都市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('386', '自贡市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('387', '攀枝花市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('388', '泸州市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('389', '德阳市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('390', '绵阳市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('391', '广元市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('392', '遂宁市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('393', '内江市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('394', '乐山市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('395', '南充市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('396', '眉山市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('397', '宜宾市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('398', '广安市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('399', '达州市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('400', '雅安市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('401', '巴中市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('402', '资阳市', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('403', '阿坝藏族羌族自治州', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('404', '甘孜藏族自治州', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('405', '凉山彝族自治州', '23', '0', '2', null, '1');
INSERT INTO `area` VALUES ('406', '贵阳市', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('407', '六盘水市', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('408', '遵义市', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('409', '安顺市', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('410', '铜仁地区', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('411', '黔西南布依族苗族自治州', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('412', '毕节地区', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('413', '黔东南苗族侗族自治州', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('414', '黔南布依族苗族自治州', '24', '0', '2', null, '1');
INSERT INTO `area` VALUES ('415', '昆明市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('416', '曲靖市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('417', '玉溪市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('418', '保山市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('419', '昭通市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('420', '丽江市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('421', '思茅市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('422', '临沧市', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('423', '楚雄彝族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('424', '红河哈尼族彝族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('425', '文山壮族苗族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('426', '西双版纳傣族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('427', '大理白族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('428', '德宏傣族景颇族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('429', '怒江傈僳族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('430', '迪庆藏族自治州', '25', '0', '2', null, '1');
INSERT INTO `area` VALUES ('431', '拉萨市', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('432', '昌都地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('433', '山南地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('434', '日喀则地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('435', '那曲地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('436', '阿里地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('437', '林芝地区', '26', '0', '2', null, '1');
INSERT INTO `area` VALUES ('438', '西安市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('439', '铜川市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('440', '宝鸡市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('441', '咸阳市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('442', '渭南市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('443', '延安市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('444', '汉中市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('445', '榆林市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('446', '安康市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('447', '商洛市', '27', '0', '2', null, '1');
INSERT INTO `area` VALUES ('448', '兰州市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('449', '嘉峪关市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('450', '金昌市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('451', '白银市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('452', '天水市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('453', '武威市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('454', '张掖市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('455', '平凉市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('456', '酒泉市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('457', '庆阳市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('458', '定西市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('459', '陇南市', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('460', '临夏回族自治州', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('461', '甘南藏族自治州', '28', '0', '2', null, '1');
INSERT INTO `area` VALUES ('462', '西宁市', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('463', '海东地区', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('464', '海北藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('465', '黄南藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('466', '海南藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('467', '果洛藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('468', '玉树藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('469', '海西蒙古族藏族自治州', '29', '0', '2', null, '1');
INSERT INTO `area` VALUES ('470', '银川市', '30', '0', '2', null, '1');
INSERT INTO `area` VALUES ('471', '石嘴山市', '30', '0', '2', null, '1');
INSERT INTO `area` VALUES ('472', '吴忠市', '30', '0', '2', null, '1');
INSERT INTO `area` VALUES ('473', '固原市', '30', '0', '2', null, '1');
INSERT INTO `area` VALUES ('474', '中卫市', '30', '0', '2', null, '1');
INSERT INTO `area` VALUES ('475', '乌鲁木齐市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('476', '克拉玛依市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('477', '吐鲁番地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('478', '哈密地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('479', '昌吉回族自治州', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('480', '博尔塔拉蒙古自治州', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('481', '巴音郭楞蒙古自治州', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('482', '阿克苏地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('483', '克孜勒苏柯尔克孜自治州', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('484', '喀什地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('485', '和田地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('486', '伊犁哈萨克自治州', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('487', '塔城地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('488', '阿勒泰地区', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('489', '石河子市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('490', '阿拉尔市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('491', '图木舒克市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('492', '五家渠市', '31', '0', '2', null, '1');
INSERT INTO `area` VALUES ('493', '台北市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('494', '高雄市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('495', '基隆市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('496', '台中市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('497', '台南市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('498', '新竹市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('499', '嘉义市', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('500', '台北县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('501', '宜兰县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('502', '桃园县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('503', '新竹县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('504', '苗栗县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('505', '台中县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('506', '彰化县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('507', '南投县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('508', '云林县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('509', '嘉义县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('510', '台南县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('511', '高雄县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('512', '屏东县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('513', '澎湖县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('514', '台东县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('515', '花莲县', '32', '0', '2', null, '1');
INSERT INTO `area` VALUES ('516', '中西区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('517', '东区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('518', '九龙城区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('519', '观塘区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('520', '南区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('521', '深水埗区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('522', '黄大仙区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('523', '湾仔区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('524', '油尖旺区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('525', '离岛区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('526', '葵青区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('527', '北区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('528', '西贡区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('529', '沙田区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('530', '屯门区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('531', '大埔区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('532', '荃湾区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('533', '元朗区', '33', '0', '2', null, '1');
INSERT INTO `area` VALUES ('534', '澳门特别行政区', '34', '0', '2', null, '1');
INSERT INTO `area` VALUES ('535', '美国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('536', '加拿大', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('537', '澳大利亚', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('538', '新西兰', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('539', '英国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('540', '法国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('541', '德国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('542', '捷克', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('543', '荷兰', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('544', '瑞士', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('545', '希腊', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('546', '挪威', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('547', '瑞典', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('548', '丹麦', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('549', '芬兰', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('550', '爱尔兰', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('551', '奥地利', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('552', '意大利', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('553', '乌克兰', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('554', '俄罗斯', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('555', '西班牙', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('556', '韩国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('557', '新加坡', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('558', '马来西亚', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('559', '印度', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('560', '泰国', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('561', '日本', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('562', '巴西', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('563', '阿根廷', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('564', '南非', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('565', '埃及', '45055', '0', '3', null, '1');
INSERT INTO `area` VALUES ('566', '其他', '36', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1126', '井陉县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1127', '井陉矿区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1128', '元氏县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1129', '平山县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1130', '新乐市', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1131', '新华区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1132', '无极县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1133', '晋州市', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1134', '栾城县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1135', '桥东区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1136', '桥西区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1137', '正定县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1138', '深泽县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1139', '灵寿县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1140', '藁城市', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1141', '行唐县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1142', '裕华区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1143', '赞皇县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1144', '赵县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1145', '辛集市', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1146', '长安区', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1147', '高邑县', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1148', '鹿泉市', '73', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1149', '丰南区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1150', '丰润区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1151', '乐亭县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1152', '古冶区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1153', '唐海县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1154', '开平区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1155', '滦南县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1156', '滦县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1157', '玉田县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1158', '路北区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1159', '路南区', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1160', '迁安市', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1161', '迁西县', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1162', '遵化市', '74', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1163', '北戴河区', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1164', '卢龙县', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1165', '山海关区', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1166', '抚宁县', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1167', '昌黎县', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1168', '海港区', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1169', '青龙满族自治县', '75', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1170', '丛台区', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1171', '临漳县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1172', '复兴区', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1173', '大名县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1174', '峰峰矿区', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1175', '广平县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1176', '成安县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1177', '曲周县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1178', '武安市', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1179', '永年县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1180', '涉县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1181', '磁县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1182', '肥乡县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1183', '邯山区', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1184', '邯郸县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1185', '邱县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1186', '馆陶县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1187', '魏县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1188', '鸡泽县', '76', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1189', '临城县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1190', '临西县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1191', '任县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1192', '内丘县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1193', '南和县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1194', '南宫市', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1195', '威县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1196', '宁晋县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1197', '巨鹿县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1198', '平乡县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1199', '广宗县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1200', '新河县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1201', '柏乡县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1202', '桥东区', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1203', '桥西区', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1204', '沙河市', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1205', '清河县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1206', '邢台县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1207', '隆尧县', '77', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1208', '北市区', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1209', '南市区', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1210', '博野县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1211', '唐县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1212', '安国市', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1213', '安新县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1214', '定兴县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1215', '定州市', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1216', '容城县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1217', '徐水县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1218', '新市区', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1219', '易县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1220', '曲阳县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1221', '望都县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1222', '涞水县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1223', '涞源县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1224', '涿州市', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1225', '清苑县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1226', '满城县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1227', '蠡县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1228', '阜平县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1229', '雄县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1230', '顺平县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1231', '高碑店市', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1232', '高阳县', '78', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1233', '万全县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1234', '下花园区', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1235', '宣化区', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1236', '宣化县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1237', '尚义县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1238', '崇礼县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1239', '康保县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1240', '张北县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1241', '怀安县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1242', '怀来县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1243', '桥东区', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1244', '桥西区', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1245', '沽源县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1246', '涿鹿县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1247', '蔚县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1248', '赤城县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1249', '阳原县', '79', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1250', '丰宁满族自治县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1251', '兴隆县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1252', '双桥区', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1253', '双滦区', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1254', '围场满族蒙古族自治县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1255', '宽城满族自治县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1256', '平泉县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1257', '承德县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1258', '滦平县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1259', '隆化县', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1260', '鹰手营子矿区', '80', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1261', '冀州市', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1262', '安平县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1263', '故城县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1264', '景县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1265', '枣强县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1266', '桃城区', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1267', '武强县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1268', '武邑县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1269', '深州市', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1270', '阜城县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1271', '饶阳县', '81', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1272', '三河市', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1273', '固安县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1274', '大厂回族自治县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1275', '大城县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1276', '安次区', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1277', '广阳区', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1278', '文安县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1279', '永清县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1280', '霸州市', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1281', '香河县', '82', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1282', '东光县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1283', '任丘市', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1284', '南皮县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1285', '吴桥县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1286', '孟村回族自治县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1287', '新华区', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1288', '沧县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1289', '河间市', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1290', '泊头市', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1291', '海兴县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1292', '献县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1293', '盐山县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1294', '肃宁县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1295', '运河区', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1296', '青县', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1297', '黄骅市', '83', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1298', '万柏林区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1299', '古交市', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1300', '娄烦县', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1301', '小店区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1302', '尖草坪区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1303', '晋源区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1304', '杏花岭区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1305', '清徐县', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1306', '迎泽区', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1307', '阳曲县', '84', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1308', '南郊区', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1309', '城区', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1310', '大同县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1311', '天镇县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1312', '左云县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1313', '广灵县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1314', '新荣区', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1315', '浑源县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1316', '灵丘县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1317', '矿区', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1318', '阳高县', '85', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1319', '城区', '86', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1320', '平定县', '86', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1321', '盂县', '86', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1322', '矿区', '86', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1323', '郊区', '86', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1324', '城区', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1325', '壶关县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1326', '屯留县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1327', '平顺县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1328', '武乡县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1329', '沁县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1330', '沁源县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1331', '潞城市', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1332', '襄垣县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1333', '郊区', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1334', '长子县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1335', '长治县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1336', '黎城县', '87', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1337', '城区', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1338', '沁水县', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1339', '泽州县', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1340', '阳城县', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1341', '陵川县', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1342', '高平市', '88', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1343', '右玉县', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1344', '山阴县', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1345', '平鲁区', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1346', '应县', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1347', '怀仁县', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1348', '朔城区', '89', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1349', '介休市', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1350', '和顺县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1351', '太谷县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1352', '寿阳县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1353', '左权县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1354', '平遥县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1355', '昔阳县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1356', '榆次区', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1357', '榆社县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1358', '灵石县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1359', '祁县', '90', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1360', '万荣县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1361', '临猗县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1362', '垣曲县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1363', '夏县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1364', '平陆县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1365', '新绛县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1366', '永济市', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1367', '河津市', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1368', '盐湖区', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1369', '稷山县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1370', '绛县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1371', '芮城县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1372', '闻喜县', '91', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1373', '五台县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1374', '五寨县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1375', '代县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1376', '保德县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1377', '偏关县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1378', '原平市', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1379', '宁武县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1380', '定襄县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1381', '岢岚县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1382', '忻府区', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1383', '河曲县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1384', '神池县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1385', '繁峙县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1386', '静乐县', '92', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1387', '乡宁县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1388', '侯马市', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1389', '古县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1390', '吉县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1391', '大宁县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1392', '安泽县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1393', '尧都区', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1394', '曲沃县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1395', '永和县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1396', '汾西县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1397', '洪洞县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1398', '浮山县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1399', '翼城县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1400', '蒲县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1401', '襄汾县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1402', '隰县', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1403', '霍州市', '93', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1404', '中阳县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1405', '临县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1406', '交口县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1407', '交城县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1408', '兴县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1409', '孝义市', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1410', '岚县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1411', '文水县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1412', '方山县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1413', '柳林县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1414', '汾阳市', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1415', '石楼县', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1416', '离石区', '94', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1417', '和林格尔县', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1418', '回民区', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1419', '土默特左旗', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1420', '托克托县', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1421', '新城区', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1422', '武川县', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1423', '清水河县', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1424', '玉泉区', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1425', '赛罕区', '95', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1426', '东河区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1427', '九原区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1428', '固阳县', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1429', '土默特右旗', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1430', '昆都仑区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1431', '白云矿区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1432', '石拐区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1433', '达尔罕茂明安联合旗', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1434', '青山区', '96', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1435', '乌达区', '97', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1436', '海勃湾区', '97', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1437', '海南区', '97', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1438', '元宝山区', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1439', '克什克腾旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1440', '喀喇沁旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1441', '宁城县', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1442', '巴林右旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1443', '巴林左旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1444', '敖汉旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1445', '松山区', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1446', '林西县', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1447', '红山区', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1448', '翁牛特旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1449', '阿鲁科尔沁旗', '98', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1450', '奈曼旗', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1451', '库伦旗', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1452', '开鲁县', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1453', '扎鲁特旗', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1454', '科尔沁区', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1455', '科尔沁左翼中旗', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1456', '科尔沁左翼后旗', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1457', '霍林郭勒市', '99', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1458', '东胜区', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1459', '乌审旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1460', '伊金霍洛旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1461', '准格尔旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1462', '杭锦旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1463', '达拉特旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1464', '鄂东胜区', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1465', '鄂托克前旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1466', '鄂托克旗', '100', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1467', '扎兰屯市', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1468', '新巴尔虎右旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1469', '新巴尔虎左旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1470', '根河市', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1471', '海拉尔区', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1472', '满洲里市', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1473', '牙克石市', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1475', '鄂伦春自治旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1476', '鄂温克族自治旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1477', '阿荣旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1478', '陈巴尔虎旗', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1479', '额尔古纳市', '101', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1480', '临河区', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1481', '乌拉特中旗', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1482', '乌拉特前旗', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1483', '乌拉特后旗', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1484', '五原县', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1485', '杭锦后旗', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1486', '磴口县', '102', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1487', '丰镇市', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1488', '兴和县', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1489', '凉城县', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1490', '化德县', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1491', '卓资县', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1492', '商都县', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1493', '四子王旗', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1494', '察哈尔右翼中旗', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1495', '察哈尔右翼前旗', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1496', '察哈尔右翼后旗', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1497', '集宁区', '103', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1498', '乌兰浩特市', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1499', '扎赉特旗', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1500', '科尔沁右翼中旗', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1501', '科尔沁右翼前旗', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1502', '突泉县', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1503', '阿尔山市', '104', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1504', '东乌珠穆沁旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1505', '二连浩特市', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1506', '多伦县', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1507', '太仆寺旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1508', '正蓝旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1509', '正镶白旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1510', '苏尼特右旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1511', '苏尼特左旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1512', '西乌珠穆沁旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1513', '锡林浩特市', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1514', '镶黄旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1515', '阿巴嘎旗', '105', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1516', '阿拉善右旗', '106', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1517', '阿拉善左旗', '106', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1518', '额济纳旗', '106', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1519', '东陵区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1520', '于洪区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1521', '和平区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1522', '大东区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1523', '康平县', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1524', '新民市', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1525', '沈北新区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1526', '沈河区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1527', '法库县', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1528', '皇姑区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1529', '苏家屯区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1530', '辽中县', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1531', '铁西区', '107', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1532', '中山区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1533', '庄河市', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1534', '旅顺口区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1535', '普兰店市', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1536', '沙河口区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1537', '瓦房店市', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1538', '甘井子区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1539', '西岗区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1540', '金州区', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1541', '长海县', '108', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1542', '千山区', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1543', '台安县', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1544', '岫岩满族自治县', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1545', '海城市', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1546', '立山区', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1547', '铁东区', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1548', '铁西区', '109', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1549', '东洲区', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1550', '抚顺县', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1551', '新宾满族自治县', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1552', '新抚区', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1553', '望花区', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1554', '清原满族自治县', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1555', '顺城区', '110', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1556', '南芬区', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1557', '平山区', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1558', '明山区', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1559', '本溪满族自治县', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1560', '桓仁满族自治县', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1561', '溪湖区', '111', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1562', '东港市', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1563', '元宝区', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1564', '凤城市', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1565', '宽甸满族自治县', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1566', '振兴区', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1567', '振安区', '112', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1568', '义县', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1569', '凌河区', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1570', '凌海市', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1571', '北镇市', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1572', '古塔区', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1573', '太和区', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1574', '黑山县', '113', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1575', '大石桥市', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1576', '盖州市', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1577', '站前区', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1578', '老边区', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1579', '西市区', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1580', '鲅鱼圈区', '114', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1581', '太平区', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1582', '彰武县', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1583', '新邱区', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1584', '海州区', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1585', '清河门区', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1586', '细河区', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1587', '蒙古族自治县', '115', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1588', '太子河区', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1589', '宏伟区', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1590', '弓长岭区', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1591', '文圣区', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1592', '灯塔市', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1593', '白塔区', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1594', '辽阳县', '116', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1595', '兴隆台区', '117', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1596', '双台子区', '117', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1597', '大洼县', '117', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1598', '盘山县', '117', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1599', '开原市', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1600', '昌图县', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1601', '清河区', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1602', '西丰县', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1603', '调兵山市', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1604', '铁岭县', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1605', '银州区', '118', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1606', '凌源市', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1607', '北票市', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1608', '双塔区', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1610', '建平县', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1611', '朝阳县', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1612', '龙城区', '119', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1613', '兴城市', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1614', '南票区', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1615', '建昌县', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1616', '绥中县', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1617', '连山区', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1618', '龙港区', '120', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1619', '九台市', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1620', '二道区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1621', '农安县', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1622', '南关区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1623', '双阳区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1624', '宽城区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1625', '德惠市', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1626', '朝阳区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1627', '榆树市', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1628', '绿园区', '121', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1629', '丰满区', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1630', '昌邑区', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1631', '桦甸市', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1632', '永吉县', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1633', '磐石市', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1634', '舒兰市', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1635', '船营区', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1636', '蛟河市', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1637', '龙潭区', '122', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1638', '伊通满族自治县', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1639', '公主岭市', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1640', '双辽市', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1641', '梨树县', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1642', '铁东区', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1643', '铁西区', '123', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1644', '东丰县', '124', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1645', '东辽县', '124', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1646', '西安区', '124', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1647', '龙山区', '124', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1648', '东昌区', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1649', '二道江区', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1650', '柳河县', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1651', '梅河口市', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1652', '辉南县', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1653', '通化县', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1654', '集安市', '125', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1655', '临江市', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1656', '八道江区', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1657', '抚松县', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1658', '江源区', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1659', '长白朝鲜族自治县', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1660', '靖宇县', '126', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1661', '干安县', '127', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '127', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1663', '宁江区', '127', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1664', '扶余县', '127', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1665', '长岭县', '127', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1666', '大安市', '128', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1667', '洮北区', '128', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1668', '洮南市', '128', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1669', '通榆县', '128', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1670', '镇赉县', '128', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1671', '和龙市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1672', '图们市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1673', '安图县', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1674', '延吉市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1675', '敦化市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1676', '汪清县', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1677', '珲春市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1678', '龙井市', '129', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1679', '五常市', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1680', '依兰县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1681', '南岗区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1682', '双城市', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1683', '呼兰区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1684', '哈尔滨市道里区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1685', '宾县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1686', '尚志市', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1687', '巴彦县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1688', '平房区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1689', '延寿县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1690', '方正县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1691', '木兰县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1692', '松北区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1693', '通河县', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1694', '道外区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1695', '阿城区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1696', '香坊区', '130', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1697', '依安县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1698', '克东县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1699', '克山县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1700', '富拉尔基区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1701', '富裕县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1702', '建华区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1703', '拜泉县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1704', '昂昂溪区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1705', '梅里斯达斡尔族区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1706', '泰来县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1707', '甘南县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1708', '碾子山区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1709', '讷河市', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1710', '铁锋区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1711', '龙江县', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1712', '龙沙区', '131', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1713', '城子河区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1714', '密山市', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1715', '恒山区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1716', '梨树区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1717', '滴道区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1718', '虎林市', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1719', '鸡东县', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1720', '鸡冠区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1721', '麻山区', '132', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1722', '东山区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1723', '兴安区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1724', '兴山区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1725', '南山区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1726', '向阳区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1727', '工农区', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1728', '绥滨县', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1729', '萝北县', '133', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1730', '友谊县', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1731', '四方台区', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1732', '宝山区', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1733', '宝清县', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1734', '尖山区', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1735', '岭东区', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1736', '集贤县', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1737', '饶河县', '134', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1738', '大同区', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1739', '杜尔伯特蒙古族自治县', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1740', '林甸县', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1741', '红岗区', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1742', '肇州县', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1743', '肇源县', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1744', '胡路区', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1745', '萨尔图区', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1746', '龙凤区', '135', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1747', '上甘岭区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1748', '乌伊岭区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1749', '乌马河区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1750', '五营区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1751', '伊春区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1752', '南岔区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1753', '友好区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1754', '嘉荫县', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1755', '带岭区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1756', '新青区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1757', '汤旺河区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1758', '红星区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1759', '美溪区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1760', '翠峦区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1761', '西林区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1762', '金山屯区', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1763', '铁力市', '136', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1764', '东风区', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1765', '前进区', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1766', '同江市', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1767', '向阳区', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1768', '富锦市', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1769', '抚远县', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1770', '桦南县', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1771', '桦川县', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1772', '汤原县', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1773', '郊区', '137', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1774', '勃利县', '138', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1775', '新兴区', '138', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1776', '桃山区', '138', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1777', '茄子河区', '138', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1778', '东宁县', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1779', '东安区', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1780', '宁安市', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1781', '林口县', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1782', '海林市', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1783', '爱民区', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1784', '穆棱市', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1785', '绥芬河市', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1786', '西安区', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1787', '阳明区', '139', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1788', '五大连池市', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1789', '北安市', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1790', '嫩江县', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1791', '孙吴县', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1792', '爱辉区', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1793', '车逊克县', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1794', '逊克县', '140', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1795', '兰西县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1796', '安达市', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1797', '庆安县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1798', '明水县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1799', '望奎县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1800', '海伦市', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1801', '绥化市北林区', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1802', '绥棱县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1803', '肇东市', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1804', '青冈县', '141', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1805', '呼玛县', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1806', '塔河县', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1807', '大兴安岭地区加格达奇区', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1808', '大兴安岭地区呼中区', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1809', '大兴安岭地区新林区', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1810', '大兴安岭地区松岭区', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('1811', '漠河县', '142', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2027', '下关区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2028', '六合区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2029', '建邺区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2030', '栖霞区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2031', '江宁区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2032', '浦口区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2033', '溧水县', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2034', '玄武区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2035', '白下区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2036', '秦淮区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2037', '雨花台区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2038', '高淳县', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2039', '鼓楼区', '162', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2040', '北塘区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2041', '南长区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2042', '宜兴市', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2043', '崇安区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2044', '惠山区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2045', '江阴市', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2046', '滨湖区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2047', '锡山区', '163', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2048', '丰县', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2049', '九里区', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2050', '云龙区', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2051', '新沂市', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2052', '沛县', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2053', '泉山区', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2054', '睢宁县', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2055', '贾汪区', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2056', '邳州市', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2057', '铜山县', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2058', '鼓楼区', '164', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2059', '天宁区', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2060', '戚墅堰区', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2061', '新北区', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2062', '武进区', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2063', '溧阳市', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2064', '金坛市', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2065', '钟楼区', '165', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2066', '吴中区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2067', '吴江市', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2068', '太仓市', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2069', '常熟市', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2070', '平江区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2071', '张家港市', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2072', '昆山市', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2073', '沧浪区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2074', '相城区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2075', '苏州工业园区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2076', '虎丘区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2077', '金阊区', '166', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2078', '启东市', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2079', '如东县', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2080', '如皋市', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2081', '崇川区', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2082', '海安县', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2083', '海门市', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2084', '港闸区', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2085', '通州市', '167', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2086', '东海县', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2087', '新浦区', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2088', '海州区', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2089', '灌云县', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2090', '灌南县', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2091', '赣榆县', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2092', '连云区', '168', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2093', '楚州区', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2094', '洪泽县', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2095', '涟水县', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2096', '淮阴区', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2097', '清河区', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2098', '清浦区', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2099', '盱眙县', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2100', '金湖县', '169', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2101', '东台市', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2102', '亭湖区', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2103', '响水县', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2104', '大丰市', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2105', '射阳县', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2106', '建湖县', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2107', '滨海县', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2108', '盐都区', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2109', '阜宁县', '170', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2110', '仪征市', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2111', '宝应县', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2112', '广陵区', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2113', '江都市', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2114', '维扬区', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2115', '邗江区', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2116', '高邮市', '171', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2117', '丹徒区', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2118', '丹阳市', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2119', '京口区', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2120', '句容市', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2121', '扬中市', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2122', '润州区', '172', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2123', '兴化市', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2124', '姜堰市', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2125', '泰兴市', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2126', '海陵区', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2127', '靖江市', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2128', '高港区', '173', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2129', '宿城区', '174', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2130', '宿豫区', '174', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2131', '沭阳县', '174', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2132', '泗洪县', '174', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2133', '泗阳县', '174', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2134', '上城区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2135', '下城区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2136', '临安市', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2137', '余杭区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2138', '富阳市', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2139', '建德市', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2140', '拱墅区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2141', '桐庐县', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2142', '江干区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2143', '淳安县', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2144', '滨江区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2145', '萧山区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2146', '西湖区', '175', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2147', '余姚市', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2148', '北仑区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2149', '奉化市', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2150', '宁海县', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2151', '慈溪市', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2152', '江东区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2153', '江北区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2154', '海曙区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2155', '象山县', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2156', '鄞州区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2157', '镇海区', '176', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2158', '乐清市', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2159', '平阳县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2160', '文成县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2161', '永嘉县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2162', '泰顺县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2163', '洞头县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2164', '瑞安市', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2165', '瓯海区', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2166', '苍南县', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2167', '鹿城区', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2168', '龙湾区', '177', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2169', '南湖区', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2170', '嘉善县', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2171', '平湖市', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2172', '桐乡市', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2173', '海宁市', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2174', '海盐县', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2175', '秀洲区', '178', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2176', '南浔区', '179', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2177', '吴兴区', '179', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2178', '安吉县', '179', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2179', '德清县', '179', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2180', '长兴县', '179', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2181', '上虞市', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2182', '嵊州市', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2183', '新昌县', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2184', '绍兴县', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2185', '诸暨市', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2186', '越城区', '180', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2187', '定海区', '181', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2188', '岱山县', '181', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2189', '嵊泗县', '181', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2190', '普陀区', '181', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2191', '常山县', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2192', '开化县', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2193', '柯城区', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2194', '江山市', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2195', '衢江区', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2196', '龙游县', '182', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2197', '东阳市', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2198', '义乌市', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2199', '兰溪市', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2200', '婺城区', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2201', '武义县', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2202', '永康市', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2203', '浦江县', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2204', '磐安县', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2205', '金东区', '183', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2206', '三门县', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2207', '临海市', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2208', '仙居县', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2209', '天台县', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2210', '椒江区', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2211', '温岭市', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2212', '玉环县', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2213', '路桥区', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2214', '黄岩区', '184', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2215', '云和县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2216', '庆元县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2217', '景宁畲族自治县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2218', '松阳县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2219', '缙云县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2220', '莲都区', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2221', '遂昌县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2222', '青田县', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2223', '龙泉市', '185', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2224', '包河区', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2225', '庐阳区', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2226', '瑶海区', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2227', '肥东县', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2228', '肥西县', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2229', '蜀山区', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2230', '长丰县', '186', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2231', '三山区', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2232', '南陵县', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2233', '弋江区', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2234', '繁昌县', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2235', '芜湖县', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2236', '镜湖区', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2237', '鸠江区', '187', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2238', '五河县', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2239', '固镇县', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2240', '怀远县', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2241', '淮上区', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2242', '禹会区', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2243', '蚌山区', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2244', '龙子湖区', '188', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2245', '八公山区', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2246', '凤台县', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2247', '大通区', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2248', '潘集区', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2249', '田家庵区', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2250', '谢家集区', '189', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2251', '当涂县', '190', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2252', '花山区', '190', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2253', '金家庄区', '190', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2254', '雨山区', '190', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2255', '杜集区', '191', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2256', '濉溪县', '191', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2257', '烈山区', '191', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2258', '相山区', '191', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2259', '狮子山区', '192', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2260', '郊区', '192', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2261', '铜官山区', '192', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2262', '铜陵县', '192', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2263', '大观区', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2264', '太湖县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2265', '宜秀区', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2266', '宿松县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2267', '岳西县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2268', '怀宁县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2269', '望江县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2270', '枞阳县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2271', '桐城市', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2272', '潜山县', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2273', '迎江区', '193', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2274', '休宁县', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2275', '屯溪区', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2276', '徽州区', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2277', '歙县', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2278', '祁门县', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2279', '黄山区', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2280', '黟县', '194', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2281', '全椒县', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2282', '凤阳县', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2283', '南谯区', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2284', '天长市', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2285', '定远县', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2286', '明光市', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2287', '来安县', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2288', '琅玡区', '195', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2289', '临泉县', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2290', '太和县', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2291', '界首市', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2292', '阜南县', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2293', '颍东区', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2294', '颍州区', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2295', '颍泉区', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2296', '颖上县', '196', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2297', '埇桥区', '197', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2298', '泗县辖', '197', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2299', '灵璧县', '197', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2300', '砀山县', '197', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2301', '萧县', '197', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2302', '含山县', '198', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2303', '和县', '198', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2304', '居巢区', '198', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2305', '庐江县', '198', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2306', '无为县', '198', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2307', '寿县', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2308', '舒城县', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2309', '裕安区', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2310', '金安区', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2311', '金寨县', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2312', '霍山县', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2313', '霍邱县', '199', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2314', '利辛县', '200', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2315', '涡阳县', '200', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2316', '蒙城县', '200', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2317', '谯城区', '200', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2318', '东至县', '201', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2319', '石台县', '201', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2320', '贵池区', '201', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2321', '青阳县', '201', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2322', '宁国市', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2323', '宣州区', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2324', '广德县', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2325', '旌德县', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2326', '泾县', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2327', '绩溪县', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2328', '郎溪县', '202', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2329', '仓山区', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2330', '台江区', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2331', '平潭县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2332', '晋安区', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2333', '永泰县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2334', '福清市', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2335', '罗源县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2336', '连江县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2337', '长乐市', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2338', '闽侯县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2339', '闽清县', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2340', '马尾区', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2341', '鼓楼区', '203', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2342', '同安区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2343', '思明区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2344', '海沧区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2345', '湖里区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2346', '翔安区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2347', '集美区', '204', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2348', '仙游县', '205', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2349', '城厢区', '205', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2350', '涵江区', '205', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2351', '秀屿区', '205', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2352', '荔城区', '205', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2353', '三元区', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2354', '大田县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2355', '宁化县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2356', '将乐县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2357', '尤溪县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2358', '建宁县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2359', '明溪县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2360', '梅列区', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2361', '永安市', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2362', '沙县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2363', '泰宁县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2364', '清流县', '206', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2365', '丰泽区', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2366', '南安市', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2367', '安溪县', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2368', '德化县', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2369', '惠安县', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2370', '晋江市', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2371', '永春县', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2372', '泉港区', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2373', '洛江区', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2374', '石狮市', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2375', '金门县', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2376', '鲤城区', '207', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2377', '东山县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2378', '云霄县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2379', '华安县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2380', '南靖县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2381', '平和县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2382', '漳浦县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2383', '芗城区', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2384', '诏安县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2385', '长泰县', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2386', '龙文区', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2387', '龙海市', '208', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2388', '光泽县', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2389', '延平区', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2390', '建瓯市', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2391', '建阳市', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2392', '政和县', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2393', '松溪县', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2394', '武夷山市', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2395', '浦城县', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2396', '邵武市', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2397', '顺昌县', '209', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2398', '上杭县', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2399', '新罗区', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2400', '武平县', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2401', '永定县', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2402', '漳平市', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2403', '连城县', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2404', '长汀县', '210', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2405', '古田县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2406', '周宁县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2407', '寿宁县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2408', '屏南县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2409', '柘荣县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2410', '福安市', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2411', '福鼎市', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2412', '蕉城区', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2413', '霞浦县', '211', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2414', '东湖区', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2415', '南昌县', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2416', '安义县', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2417', '新建县', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2418', '湾里区', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2419', '西湖区', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2420', '进贤县', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2421', '青云谱区', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2422', '青山湖区', '212', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2423', '乐平市', '213', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2424', '昌江区', '213', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2425', '浮梁县', '213', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2426', '珠山区', '213', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2427', '上栗县', '214', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2428', '安源区', '214', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2429', '湘东区', '214', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2430', '芦溪县', '214', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2431', '莲花县', '214', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2432', '九江县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2433', '修水县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2434', '庐山区', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2435', '彭泽县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2436', '德安县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2437', '星子县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2438', '武宁县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2439', '永修县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2440', '浔阳区', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2441', '湖口县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2442', '瑞昌市', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2443', '都昌县', '215', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2444', '分宜县', '216', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2445', '渝水区', '216', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2446', '余江县', '217', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2447', '月湖区', '217', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2448', '贵溪市', '217', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2449', '上犹县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2450', '于都县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2451', '会昌县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2452', '信丰县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2453', '全南县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2454', '兴国县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2455', '南康市', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2456', '大余县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2457', '宁都县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2458', '安远县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2459', '定南县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2460', '寻乌县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2461', '崇义县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2462', '瑞金市', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2463', '石城县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2464', '章贡区', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2465', '赣县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2466', '龙南县', '218', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2467', '万安县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2468', '井冈山市', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2469', '吉安县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2470', '吉州区', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2471', '吉水县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2472', '安福县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2473', '峡江县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2474', '新干县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2475', '永丰县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2476', '永新县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2477', '泰和县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2478', '遂川县', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2479', '青原区', '219', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2480', '万载县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2481', '上高县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2482', '丰城市', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2483', '奉新县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2484', '宜丰县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2485', '樟树市', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2486', '袁州区', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2487', '铜鼓县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2488', '靖安县', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2489', '高安市', '220', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2490', '东乡县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2491', '临川区', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2492', '乐安县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2493', '南丰县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2494', '南城县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2495', '宜黄县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2496', '崇仁县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2497', '广昌县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2498', '资溪县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2499', '金溪县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2500', '黎川县', '221', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2501', '万年县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2502', '上饶县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2503', '余干县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2504', '信州区', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2505', '婺源县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2506', '广丰县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2507', '弋阳县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2508', '德兴市', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2509', '横峰县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2510', '玉山县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2511', '鄱阳县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2512', '铅山县', '222', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2513', '历下区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2514', '历城区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2515', '商河县', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2516', '天桥区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2517', '市中区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2518', '平阴县', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2519', '槐荫区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2520', '济阳县', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2521', '章丘市', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2522', '长清区', '223', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2523', '即墨市', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2524', '四方区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2525', '城阳区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2526', '崂山区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2527', '市北区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2528', '市南区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2529', '平度市', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2530', '李沧区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2531', '胶南市', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2532', '胶州市', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2533', '莱西市', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2534', '黄岛区', '224', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2535', '临淄区', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2536', '博山区', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2537', '周村区', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2538', '张店区', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2539', '桓台县', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2540', '沂源县', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2541', '淄川区', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2542', '高青县', '225', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2543', '台儿庄区', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2544', '山亭区', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2545', '峄城区', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2546', '市中区', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2547', '滕州市', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2548', '薛城区', '226', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2549', '东营区', '227', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2550', '利津县', '227', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2551', '垦利县', '227', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2552', '广饶县', '227', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2553', '河口区', '227', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2554', '招远市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2555', '栖霞市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2556', '海阳市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2557', '牟平区', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2558', '福山区', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2559', '芝罘区', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2560', '莱山区', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2561', '莱州市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2562', '莱阳市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2563', '蓬莱市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2564', '长岛县', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2565', '龙口市', '228', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2566', '临朐县', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2567', '坊子区', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2568', '奎文区', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2569', '安丘市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2570', '寒亭区', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2571', '寿光市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2572', '昌乐县', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2573', '昌邑市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2574', '潍城区', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2575', '诸城市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2576', '青州市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2577', '高密市', '229', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2578', '任城区', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2579', '兖州市', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2580', '嘉祥县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2581', '市中区', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2582', '微山县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2583', '曲阜市', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2584', '梁山县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2585', '汶上县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2586', '泗水县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2587', '邹城市', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2588', '金乡县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2589', '鱼台县', '230', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2590', '东平县', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2591', '宁阳县', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2592', '岱岳区', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2593', '新泰市', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2594', '泰山区', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2595', '肥城市', '231', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2596', '乳山市', '232', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2597', '文登市', '232', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2598', '环翠区', '232', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2599', '荣成市', '232', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2600', '东港区', '233', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2601', '五莲县', '233', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2602', '岚山区', '233', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2603', '莒县', '233', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2604', '莱城区', '234', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2605', '钢城区', '234', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2606', '临沭县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2607', '兰山区', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2608', '平邑县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2609', '沂南县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2610', '沂水县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2611', '河东区', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2612', '罗庄区', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2613', '苍山县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2614', '莒南县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2615', '蒙阴县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2616', '费县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2617', '郯城县', '235', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2618', '临邑县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2619', '乐陵市', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2620', '夏津县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2621', '宁津县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2622', '平原县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2623', '庆云县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2624', '德城区', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2625', '武城县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2626', '禹城市', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2627', '陵县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2628', '齐河县', '236', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2629', '东昌府区', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2630', '东阿县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2631', '临清市', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2632', '冠县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2633', '茌平县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2634', '莘县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2635', '阳谷县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2636', '高唐县', '237', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2637', '博兴县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2638', '惠民县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2639', '无棣县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2640', '沾化县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2641', '滨城区', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2642', '邹平县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2643', '阳信县', '238', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2644', '东明县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2645', '单县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2646', '定陶县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2647', '巨野县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2648', '成武县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2649', '曹县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2650', '牡丹区', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2651', '郓城县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2652', '鄄城县', '239', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2653', '上街区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2654', '中原区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2655', '中牟县', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2656', '二七区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2657', '巩义市', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2658', '惠济区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2659', '新密市', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2660', '新郑市', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2661', '登封市', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2662', '管城回族区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2663', '荥阳市', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2664', '金水区', '240', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2665', '兰考县', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2666', '尉氏县', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2667', '开封县', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2668', '杞县', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2669', '禹王台区', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2670', '通许县', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2671', '金明区', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2672', '顺河回族区', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2673', '鼓楼区', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2674', '龙亭区', '241', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2675', '伊川县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2676', '偃师市', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2677', '吉利区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2678', '孟津县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2679', '宜阳县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2680', '嵩县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2681', '新安县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2682', '栾川县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2683', '汝阳县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2684', '洛宁县', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2685', '洛龙区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2686', '涧西区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2687', '瀍河回族区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2688', '老城区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2689', '西工区', '242', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2690', '卫东区', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2691', '叶县', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2692', '宝丰县', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2693', '新华区', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2694', '汝州市', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2695', '湛河区', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2696', '石龙区', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2697', '舞钢市', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2698', '郏县', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2699', '鲁山县', '243', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2700', '内黄县', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2701', '北关区', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2702', '安阳县', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2703', '文峰区', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2704', '林州市', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2705', '殷都区', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2706', '汤阴县', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2707', '滑县', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2708', '龙安区', '244', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2709', '山城区', '245', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2710', '浚县', '245', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2711', '淇县', '245', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2712', '淇滨区', '245', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2713', '鹤山区', '245', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2714', '凤泉区', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2715', '卫滨区', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2716', '卫辉市', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2717', '原阳县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2718', '封丘县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2719', '延津县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2720', '新乡县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2721', '牧野区', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2722', '红旗区', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2723', '获嘉县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2724', '辉县市', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2725', '长垣县', '246', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2726', '中站区', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2727', '修武县', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2728', '博爱县', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2729', '孟州市', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2730', '山阳区', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2731', '武陟县', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2732', '沁阳市', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2733', '温县', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2734', '解放区', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2735', '马村区', '247', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2736', '华龙区', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2737', '南乐县', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2738', '台前县', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2739', '清丰县', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2740', '濮阳县', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2741', '范县', '248', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2742', '禹州市', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2743', '襄城县', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2744', '许昌县', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2745', '鄢陵县', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2746', '长葛市', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2747', '魏都区', '249', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2748', '临颍县', '250', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2749', '召陵区', '250', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2750', '源汇区', '250', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2751', '舞阳县', '250', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2752', '郾城区', '250', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2753', '义马市', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2754', '卢氏县', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2755', '渑池县', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2756', '湖滨区', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2757', '灵宝市', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2758', '陕县', '251', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2759', '内乡县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2760', '南召县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2761', '卧龙区', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2762', '唐河县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2763', '宛城区', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2764', '新野县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2765', '方城县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2766', '桐柏县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2767', '淅川县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2768', '社旗县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2769', '西峡县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2770', '邓州市', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2771', '镇平县', '252', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2772', '夏邑县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2773', '宁陵县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2774', '柘城县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2775', '民权县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2776', '永城市', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2777', '睢县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2778', '睢阳区', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2779', '粱园区', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2780', '虞城县', '253', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2781', '光山县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2782', '商城县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2783', '固始县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2784', '平桥区', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2785', '息县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2786', '新县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2787', '浉河区', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2788', '淮滨县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2789', '潢川县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2790', '罗山县', '254', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2791', '商水县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2792', '太康县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2793', '川汇区', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2794', '扶沟县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2795', '沈丘县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2796', '淮阳县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2797', '西华县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2798', '郸城县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2799', '项城市', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2800', '鹿邑县', '255', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2801', '上蔡县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2802', '平舆县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2803', '新蔡县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2804', '正阳县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2805', '汝南县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2806', '泌阳县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2807', '确山县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2808', '西平县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2809', '遂平县', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2810', '驿城区', '256', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2811', '济源市', '257', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2812', '东西湖区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2813', '新洲区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2814', '武昌区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2815', '汉南区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2816', '汉阳区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2817', '江夏区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2818', '江岸区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2819', '江汉区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2820', '洪山区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2821', '硚口区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2822', '蔡甸区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2823', '青山区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2824', '黄陂区', '258', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2825', '下陆区', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2826', '大冶市', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2827', '西塞山区', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2828', '铁山区', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2829', '阳新县', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2830', '黄石港区', '259', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2831', '丹江口市', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2832', '张湾区', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2833', '房县', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2834', '竹山县', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2835', '竹溪县', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2836', '茅箭区', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2837', '郧县', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2838', '郧西县', '260', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2839', '五峰土家族自治县', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2840', '伍家岗区', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2841', '兴山县', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2842', '夷陵区', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2843', '宜都市', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2844', '当阳市', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2845', '枝江市', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2846', '点军区', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2847', '秭归县', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2848', '虢亭区', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2849', '西陵区', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2850', '远安县', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2851', '长阳土家族自治县', '261', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2852', '保康县', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2853', '南漳县', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2854', '宜城市', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2855', '枣阳市', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2856', '樊城区', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2857', '老河口市', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2858', '襄城区', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2859', '襄阳区', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2860', '谷城县', '262', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2861', '华容区', '263', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2862', '粱子湖', '263', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2863', '鄂城区', '263', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2864', '东宝区', '264', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2865', '京山县', '264', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2866', '掇刀区', '264', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2867', '沙洋县', '264', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2868', '钟祥市', '264', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2869', '云梦县', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2870', '大悟县', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2871', '孝南区', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2872', '孝昌县', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2873', '安陆市', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2874', '应城市', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2875', '汉川市', '265', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2876', '公安县', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2877', '松滋市', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2878', '江陵县', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2879', '沙市区', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2880', '洪湖市', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2881', '监利县', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2882', '石首市', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2883', '荆州区', '266', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2884', '团风县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2885', '武穴市', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2886', '浠水县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2887', '红安县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2888', '罗田县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2889', '英山县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2890', '蕲春县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2891', '麻城市', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2892', '黄州区', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2893', '黄梅县', '267', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2894', '咸安区', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2895', '嘉鱼县', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2896', '崇阳县', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2897', '赤壁市', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2898', '通城县', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2899', '通山县', '268', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2900', '广水市', '269', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2901', '曾都区', '269', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2902', '利川市', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2903', '咸丰县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2904', '宣恩县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2905', '巴东县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2906', '建始县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2907', '恩施市', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2908', '来凤县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2909', '鹤峰县', '270', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2910', '仙桃市', '271', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2911', '潜江市', '272', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2912', '天门市', '273', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2913', '神农架林区', '274', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2914', '天心区', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2915', '宁乡县', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2916', '岳麓区', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2917', '开福区', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2918', '望城县', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2919', '浏阳市', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2920', '芙蓉区', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2921', '长沙县', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2922', '雨花区', '275', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2923', '天元区', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2924', '攸县', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2925', '株洲县', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2926', '炎陵县', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2927', '石峰区', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2928', '芦淞区', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2929', '茶陵县', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2930', '荷塘区', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2931', '醴陵市', '276', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2932', '岳塘区', '277', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2933', '湘乡市', '277', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2934', '湘潭县', '277', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2935', '雨湖区', '277', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2936', '韶山市', '277', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2937', '南岳区', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2938', '常宁市', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2939', '珠晖区', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2940', '石鼓区', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2941', '祁东县', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2942', '耒阳市', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2943', '蒸湘区', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2944', '衡东县', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2945', '衡南县', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2946', '衡山县', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2947', '衡阳县', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2948', '雁峰区', '278', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2949', '北塔区', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2950', '双清区', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2951', '城步苗族自治县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2952', '大祥区', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2953', '新宁县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2954', '新邵县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2955', '武冈市', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2956', '洞口县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2957', '绥宁县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2958', '邵东县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2959', '邵阳县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2960', '隆回县', '279', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2961', '临湘市', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2962', '云溪区', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2963', '华容县', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2964', '君山区', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2965', '岳阳县', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2966', '岳阳楼区', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2967', '平江县', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2968', '汨罗市', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2969', '湘阴县', '280', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2970', '临澧县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2971', '安乡县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2972', '桃源县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2973', '武陵区', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2974', '汉寿县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2975', '津市市', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2976', '澧县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2977', '石门县', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2978', '鼎城区', '281', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2979', '慈利县', '282', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2980', '桑植县', '282', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2981', '武陵源区', '282', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2982', '永定区', '282', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2983', '南县', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2984', '安化县', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2985', '桃江县', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2986', '沅江市', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2987', '资阳区', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2988', '赫山区', '283', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2989', '临武县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2990', '北湖区', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2991', '嘉禾县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2992', '安仁县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2993', '宜章县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2994', '桂东县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2995', '桂阳县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2996', '永兴县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2997', '汝城县', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2998', '苏仙区', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('2999', '资兴市', '284', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3000', '东安县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3001', '冷水滩区', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3002', '双牌县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3003', '宁远县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3004', '新田县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3005', '江华瑶族自治县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3006', '江永县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3007', '祁阳县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3008', '蓝山县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3009', '道县', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3010', '零陵区', '285', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3011', '中方县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3012', '会同县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3013', '新晃侗族自治县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3014', '沅陵县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3015', '洪江市/洪江区', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3016', '溆浦县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3017', '芷江侗族自治县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3018', '辰溪县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3019', '通道侗族自治县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3020', '靖州苗族侗族自治县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3021', '鹤城区', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3022', '麻阳苗族自治县', '286', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3023', '冷水江市', '287', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3024', '双峰县', '287', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3025', '娄星区', '287', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3026', '新化县', '287', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3027', '涟源市', '287', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3028', '保靖县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3029', '凤凰县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3030', '古丈县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3031', '吉首市', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3032', '永顺县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3033', '泸溪县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3034', '花垣县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3035', '龙山县', '288', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3036', '萝岗区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3037', '南沙区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3038', '从化市', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3039', '增城市', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3040', '天河区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3041', '海珠区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3042', '番禺区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3043', '白云区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3044', '花都区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3045', '荔湾区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3046', '越秀区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3047', '黄埔区', '289', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3048', '乐昌市', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3049', '乳源瑶族自治县', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3050', '仁化县', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3051', '南雄市', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3052', '始兴县', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3053', '新丰县', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3054', '曲江区', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3055', '武江区', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3056', '浈江区', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3057', '翁源县', '290', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3058', '南山区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3059', '宝安区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3060', '盐田区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3061', '福田区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3062', '罗湖区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3063', '龙岗区', '291', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3064', '斗门区', '292', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3065', '金湾区', '292', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3066', '香洲区', '292', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3067', '南澳县', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3068', '潮南区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3069', '潮阳区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3070', '澄海区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3071', '濠江区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3072', '金平区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3073', '龙湖区', '293', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3074', '三水区', '294', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3075', '南海区', '294', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3076', '禅城区', '294', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3077', '顺德区', '294', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3078', '高明区', '294', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3079', '台山市', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3080', '开平市', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3081', '恩平市', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3082', '新会区', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3083', '江海区', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3084', '蓬江区', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3085', '鹤山市', '295', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3086', '吴川市', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3087', '坡头区', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3088', '廉江市', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3089', '徐闻县', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3090', '赤坎区', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3091', '遂溪县', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3092', '雷州市', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3093', '霞山区', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3094', '麻章区', '296', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3095', '信宜市', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3096', '化州市', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3097', '电白县', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3098', '茂南区', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3099', '茂港区', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3100', '高州市', '297', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3101', '四会市', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3102', '封开县', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3103', '广宁县', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3104', '德庆县', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3105', '怀集县', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3106', '端州区', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3107', '高要市', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3108', '鼎湖区', '298', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3109', '博罗县', '299', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3110', '惠东县', '299', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3111', '惠城区', '299', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3112', '惠阳区', '299', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3113', '龙门县', '299', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3114', '丰顺县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3115', '五华县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3116', '兴宁市', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3117', '大埔县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3118', '平远县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3119', '梅县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3120', '梅江区', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3121', '蕉岭县', '300', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3122', '城区', '301', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3123', '海丰县', '301', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3124', '陆丰市', '301', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3125', '陆河县', '301', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3126', '东源县', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3127', '和平县', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3128', '源城区', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3129', '紫金县', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3130', '连平县', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3131', '龙川县', '302', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3132', '江城区', '303', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3133', '阳东县', '303', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3134', '阳春市', '303', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3135', '阳西县', '303', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3136', '佛冈县', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3137', '清城区', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3138', '清新县', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3139', '英德市', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3140', '连南瑶族自治县', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3141', '连山壮族瑶族自治县', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3142', '连州市', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3143', '阳山县', '304', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3144', '东莞市', '305', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3145', '中山市', '306', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3146', '湘桥区', '307', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3147', '潮安县', '307', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3148', '饶平县', '307', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3149', '惠来县', '308', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3150', '揭东县', '308', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3151', '揭西县', '308', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3152', '普宁市', '308', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3153', '榕城区', '308', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3154', '云城区', '309', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3155', '云安县', '309', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3156', '新兴县', '309', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3157', '罗定市', '309', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3158', '郁南县', '309', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3159', '上林县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3160', '兴宁区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3161', '宾阳县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3162', '横县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3163', '武鸣县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3164', '江南区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3165', '良庆区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3166', '西乡塘区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3167', '邕宁区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3168', '隆安县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3169', '青秀区', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3170', '马山县', '310', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3171', '三江侗族自治县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3172', '城中区', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3173', '柳北区', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3174', '柳南区', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3175', '柳城县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3176', '柳江县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3177', '融安县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3178', '融水苗族自治县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3179', '鱼峰区', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3180', '鹿寨县', '311', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3181', '七星区', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3182', '临桂县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3183', '全州县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3184', '兴安县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3185', '叠彩区', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3186', '平乐县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3187', '恭城瑶族自治县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3188', '永福县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3189', '灌阳县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3190', '灵川县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3191', '秀峰区', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3192', '荔浦县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3193', '象山区', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3194', '资源县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3195', '阳朔县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3196', '雁山区', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3197', '龙胜各族自治县', '312', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3198', '万秀区', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3199', '岑溪市', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3200', '苍梧县', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3201', '蒙山县', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3202', '藤县', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3203', '蝶山区', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3204', '长洲区', '313', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3205', '合浦县', '314', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3206', '海城区', '314', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3207', '铁山港区', '314', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3208', '银海区', '314', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3209', '上思县', '315', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3210', '东兴市', '315', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3211', '港口区', '315', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3212', '防城区', '315', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3213', '浦北县', '316', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3214', '灵山县', '316', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3215', '钦北区', '316', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3216', '钦南区', '316', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3217', '平南县', '317', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3218', '桂平市', '317', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3219', '港北区', '317', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3220', '港南区', '317', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3221', '覃塘区', '317', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3222', '兴业县', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3223', '北流市', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3224', '博白县', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3225', '容县', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3226', '玉州区', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3227', '陆川县', '318', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3228', '乐业县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3229', '凌云县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3230', '右江区', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3231', '平果县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3232', '德保县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3233', '田东县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3234', '田林县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3235', '田阳县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3236', '西林县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3237', '那坡县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3238', '隆林各族自治县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3239', '靖西县', '319', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3240', '八步区', '320', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3241', '富川瑶族自治县', '320', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3242', '昭平县', '320', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3243', '钟山县', '320', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3244', '东兰县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3245', '凤山县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3246', '南丹县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3247', '大化瑶族自治县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3248', '天峨县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3249', '宜州市', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3250', '巴马瑶族自治县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3251', '环江毛南族自治县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3252', '罗城仫佬族自治县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3253', '都安瑶族自治县', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3254', '金城江区', '321', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3255', '兴宾区', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3256', '合山市', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3257', '忻城县', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3258', '武宣县', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3259', '象州县', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3260', '金秀瑶族自治县', '322', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3261', '凭祥市', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3262', '大新县', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3263', '天等县', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3264', '宁明县', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3265', '扶绥县', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3266', '江州区', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3267', '龙州县', '323', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3268', '琼山区', '324', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3269', '秀英区', '324', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3270', '美兰区', '324', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3271', '龙华区', '324', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3272', '三亚市', '325', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3273', '五指山市', '326', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3274', '琼海市', '327', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3275', '儋州市', '328', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3276', '文昌市', '329', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3277', '万宁市', '330', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3278', '东方市', '331', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3279', '定安县', '332', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3280', '屯昌县', '333', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3281', '澄迈县', '334', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3282', '临高县', '335', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3283', '白沙黎族自治县', '336', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3284', '昌江黎族自治县', '337', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3285', '乐东黎族自治县', '338', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3286', '陵水黎族自治县', '339', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3287', '保亭黎族苗族自治县', '340', '0', '3', null, '1');
INSERT INTO `area` VALUES ('3288', '琼中黎族苗族自治县', '341', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4209', '双流县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4210', '大邑县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4211', '崇州市', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4212', '彭州市', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4213', '成华区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4214', '新津县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4215', '新都区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4216', '武侯区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4217', '温江区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4218', '蒲江县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4219', '邛崃市', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4220', '郫县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4221', '都江堰市', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4222', '金堂县', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4223', '金牛区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4224', '锦江区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4225', '青白江区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4226', '青羊区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4227', '龙泉驿区', '385', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4228', '大安区', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4229', '富顺县', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4230', '沿滩区', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4231', '自流井区', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4232', '荣县', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4233', '贡井区', '386', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4234', '东区', '387', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4235', '仁和区', '387', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4236', '盐边县', '387', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4237', '米易县', '387', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4238', '西区', '387', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4239', '叙永县', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4240', '古蔺县', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4241', '合江县', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4242', '江阳区', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4243', '泸县', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4244', '纳溪区', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4245', '龙马潭区', '388', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4246', '中江县', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4247', '什邡市', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4248', '广汉市', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4249', '旌阳区', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4250', '绵竹市', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4251', '罗江县', '389', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4252', '三台县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4253', '北川羌族自治县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4254', '安县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4255', '平武县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4256', '梓潼县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4257', '江油市', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4258', '涪城区', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4259', '游仙区', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4260', '盐亭县', '390', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4261', '元坝区', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4262', '利州区', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4263', '剑阁县', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4264', '旺苍县', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4265', '朝天区', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4266', '苍溪县', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4267', '青川县', '391', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4268', '大英县', '392', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4269', '安居区', '392', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4270', '射洪县', '392', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4271', '船山区', '392', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4272', '蓬溪县', '392', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4273', '东兴区', '393', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4274', '威远县', '393', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4275', '市中区', '393', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4276', '资中县', '393', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4277', '隆昌县', '393', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4278', '五通桥区', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4279', '井研县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4280', '夹江县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4281', '峨眉山市', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4282', '峨边彝族自治县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4283', '市中区', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4284', '沐川县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4285', '沙湾区', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4286', '犍为县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4287', '金口河区', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4288', '马边彝族自治县', '394', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4289', '仪陇县', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4290', '南充市嘉陵区', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4291', '南部县', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4292', '嘉陵区', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4293', '营山县', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4294', '蓬安县', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4295', '西充县', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4296', '阆中市', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4297', '顺庆区', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4298', '高坪区', '395', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4299', '东坡区', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4300', '丹棱县', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4301', '仁寿县', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4302', '彭山县', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4303', '洪雅县', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4304', '青神县', '396', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4305', '兴文县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4306', '南溪县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4307', '宜宾县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4308', '屏山县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4309', '江安县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4310', '珙县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4311', '筠连县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4312', '翠屏区', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4313', '长宁县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4314', '高县', '397', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4315', '华蓥市', '398', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4316', '岳池县', '398', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4317', '广安区', '398', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4318', '武胜县', '398', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4319', '邻水县', '398', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4320', '万源市', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4321', '大竹县', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4322', '宣汉县', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4323', '开江县', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4324', '渠县', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4325', '达县', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4326', '通川区', '399', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4327', '名山县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4328', '天全县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4329', '宝兴县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4330', '汉源县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4331', '石棉县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4332', '芦山县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4333', '荥经县', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4334', '雨城区', '400', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4335', '南江县', '401', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4336', '巴州区', '401', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4337', '平昌县', '401', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4338', '通江县', '401', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4339', '乐至县', '402', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4340', '安岳县', '402', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4341', '简阳市', '402', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4342', '雁江区', '402', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4343', '九寨沟县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4344', '壤塘县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4345', '小金县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4346', '松潘县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4347', '汶川县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4348', '理县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4349', '红原县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4350', '若尔盖县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4351', '茂县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4352', '金川县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4353', '阿坝县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4354', '马尔康县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4355', '黑水县', '403', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4356', '丹巴县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4357', '乡城县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4358', '巴塘县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4359', '康定县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4360', '得荣县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4361', '德格县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4362', '新龙县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4363', '泸定县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4364', '炉霍县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4365', '理塘县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4366', '甘孜县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4367', '白玉县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4368', '石渠县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4369', '稻城县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4370', '色达县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4371', '道孚县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4372', '雅江县', '404', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4373', '会东县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4374', '会理县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4375', '冕宁县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4376', '喜德县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4377', '宁南县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4378', '布拖县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4379', '德昌县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4380', '昭觉县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4381', '普格县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4382', '木里藏族自治县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4383', '甘洛县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4384', '盐源县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4385', '美姑县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4386', '西昌', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4387', '越西县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4388', '金阳县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4389', '雷波县', '405', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4390', '乌当区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4391', '云岩区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4392', '修文县', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4393', '南明区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4394', '小河区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4395', '开阳县', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4396', '息烽县', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4397', '清镇市', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4398', '白云区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4399', '花溪区', '406', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4400', '六枝特区', '407', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4401', '水城县', '407', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4402', '盘县', '407', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4403', '钟山区', '407', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4404', '习水县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4405', '仁怀市', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4406', '余庆县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4407', '凤冈县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4408', '务川仡佬族苗族自治县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4409', '桐梓县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4410', '正安县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4411', '汇川区', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4412', '湄潭县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4413', '红花岗区', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4414', '绥阳县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4415', '赤水市', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4416', '道真仡佬族苗族自治县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4417', '遵义县', '408', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4418', '关岭布依族苗族自治县', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4419', '平坝县', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4420', '普定县', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4421', '紫云苗族布依族自治县', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4422', '西秀区', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4423', '镇宁布依族苗族自治县', '409', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4424', '万山特区', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4425', '印江土家族苗族自治县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4426', '德江县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4427', '思南县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4428', '松桃苗族自治县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4429', '江口县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4430', '沿河土家族自治县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4431', '玉屏侗族自治县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4432', '石阡县', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4433', '铜仁市', '410', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4434', '兴义市', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4435', '兴仁县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4436', '册亨县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4437', '安龙县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4438', '普安县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4439', '晴隆县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4440', '望谟县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4441', '贞丰县', '411', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4442', '大方县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4443', '威宁彝族回族苗族自治县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4444', '毕节市', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4445', '纳雍县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4446', '织金县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4447', '赫章县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4448', '金沙县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4449', '黔西县', '412', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4450', '三穗县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4451', '丹寨县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4452', '从江县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4453', '凯里市', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4454', '剑河县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4455', '台江县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4456', '天柱县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4457', '岑巩县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4458', '施秉县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4459', '榕江县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4460', '锦屏县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4461', '镇远县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4462', '雷山县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4463', '麻江县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4464', '黄平县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4465', '黎平县', '413', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4466', '三都水族自治县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4467', '平塘县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4468', '惠水县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4469', '独山县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4470', '瓮安县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4471', '福泉市', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4472', '罗甸县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4473', '荔波县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4474', '贵定县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4475', '都匀市', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4476', '长顺县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4477', '龙里县', '414', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4478', '东川区', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4479', '五华区', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4480', '呈贡县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4481', '安宁市', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4482', '官渡区', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4483', '宜良县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4484', '富民县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4485', '寻甸回族彝族自治县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4486', '嵩明县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4487', '晋宁县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4488', '盘龙区', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4489', '石林彝族自治县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4490', '禄劝彝族苗族自治县', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4491', '西山区', '415', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4492', '会泽县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4493', '宣威市', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4494', '富源县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4495', '师宗县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4496', '沾益县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4497', '罗平县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4498', '陆良县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4499', '马龙县', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4500', '麒麟区', '416', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4501', '元江哈尼族彝族傣族自治县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4502', '华宁县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4503', '峨山彝族自治县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4504', '新平彝族傣族自治县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4505', '易门县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4506', '江川县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4507', '澄江县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4508', '红塔区', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4509', '通海县', '417', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4510', '施甸县', '418', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4511', '昌宁县', '418', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4512', '腾冲县', '418', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4513', '隆阳区', '418', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4514', '龙陵县', '418', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4515', '大关县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4516', '威信县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4517', '巧家县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4518', '彝良县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4519', '昭阳区', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4520', '水富县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4521', '永善县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4522', '盐津县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4523', '绥江县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4524', '镇雄县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4525', '鲁甸县', '419', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4526', '华坪县', '420', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4527', '古城区', '420', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4528', '宁蒗彝族自治县', '420', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4529', '永胜县', '420', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4530', '玉龙纳西族自治县', '420', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4531', '临翔区', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4532', '云县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4533', '凤庆县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4534', '双江拉祜族佤族布朗族傣族自治县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4535', '永德县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4536', '沧源佤族自治县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4537', '耿马傣族佤族自治县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4538', '镇康县', '422', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4539', '元谋县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4540', '南华县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4541', '双柏县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4542', '大姚县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4543', '姚安县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4544', '楚雄市', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4545', '武定县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4546', '永仁县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4547', '牟定县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4548', '禄丰县', '423', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4549', '个旧市', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4550', '元阳县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4551', '屏边苗族自治县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4552', '建水县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4553', '开远市', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4554', '弥勒县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4555', '河口瑶族自治县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4556', '泸西县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4557', '石屏县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4558', '红河县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4559', '绿春县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4560', '蒙自县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4561', '金平苗族瑶族傣族自治县', '424', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4562', '丘北县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4563', '富宁县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4564', '广南县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4565', '文山县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4566', '砚山县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4567', '西畴县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4568', '马关县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4569', '麻栗坡县', '425', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4570', '勐海县', '426', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4571', '勐腊县', '426', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4572', '景洪市', '426', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4573', '云龙县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4574', '剑川县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4575', '南涧彝族自治县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4576', '大理市', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4577', '宾川县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4578', '巍山彝族回族自治县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4579', '弥渡县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4580', '永平县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4581', '洱源县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4582', '漾濞彝族自治县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4583', '祥云县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4584', '鹤庆县', '427', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4585', '梁河县', '428', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4586', '潞西市', '428', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4587', '瑞丽市', '428', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4588', '盈江县', '428', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4589', '陇川县', '428', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4590', '德钦县', '430', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4591', '维西傈僳族自治县', '430', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4592', '香格里拉县', '430', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4593', '城关区', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4594', '堆龙德庆县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4595', '墨竹工卡县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4596', '尼木县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4597', '当雄县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4598', '曲水县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4599', '林周县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4600', '达孜县', '431', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4601', '丁青县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4602', '八宿县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4603', '察雅县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4604', '左贡县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4605', '昌都县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4606', '江达县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4607', '洛隆县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4608', '类乌齐县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4609', '芒康县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4610', '贡觉县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4611', '边坝县', '432', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4612', '乃东县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4613', '加查县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4614', '扎囊县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4615', '措美县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4616', '曲松县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4617', '桑日县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4618', '洛扎县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4619', '浪卡子县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4620', '琼结县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4621', '贡嘎县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4622', '错那县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4623', '隆子县', '433', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4624', '亚东县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4625', '仁布县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4626', '仲巴县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4627', '南木林县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4628', '吉隆县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4629', '定日县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4630', '定结县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4631', '岗巴县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4632', '康马县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4633', '拉孜县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4634', '日喀则市', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4635', '昂仁县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4636', '江孜县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4637', '白朗县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4638', '聂拉木县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4639', '萨嘎县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4640', '萨迦县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4641', '谢通门县', '434', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4642', '嘉黎县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4643', '安多县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4644', '尼玛县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4645', '巴青县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4646', '比如县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4647', '班戈县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4648', '申扎县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4649', '索县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4650', '聂荣县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4651', '那曲县', '435', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4652', '噶尔县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4653', '措勤县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4654', '改则县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4655', '日土县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4656', '普兰县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4657', '札达县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4658', '革吉县', '436', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4659', '墨脱县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4660', '察隅县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4661', '工布江达县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4662', '朗县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4663', '林芝县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4664', '波密县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4665', '米林县', '437', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4666', '临潼区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4667', '周至县', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4668', '户县', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4669', '新城区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4670', '未央区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4671', '灞桥区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4672', '碑林区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4673', '莲湖区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4674', '蓝田县', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4675', '长安区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4676', '阎良区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4677', '雁塔区', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4678', '高陵县', '438', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4679', '印台区', '439', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4680', '宜君县', '439', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4681', '王益区', '439', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4682', '耀州区', '439', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4683', '凤县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4684', '凤翔县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4685', '千阳县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4686', '太白县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4687', '岐山县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4688', '扶风县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4689', '渭滨区', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4690', '眉县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4691', '金台区', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4692', '陇县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4693', '陈仓区', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4694', '麟游县', '440', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4695', '三原县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4696', '干县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4697', '兴平市', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4698', '彬县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4699', '旬邑县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4700', '杨陵区', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4701', '武功县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4702', '永寿县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4703', '泾阳县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4704', '淳化县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4705', '渭城区', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4706', '礼泉县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4707', '秦都区', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4708', '长武县', '441', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4709', '临渭区', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4710', '华县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4711', '华阴市', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4712', '合阳县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4713', '大荔县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4714', '富平县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4715', '潼关县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4716', '澄城县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4717', '白水县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4718', '蒲城县', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4719', '韩城市', '442', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4720', '吴起县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4721', '子长县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4722', '安塞县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4723', '宜川县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4724', '宝塔区', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4725', '富县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4726', '延川县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4727', '延长县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4728', '志丹县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4729', '洛川县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4730', '甘泉县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4731', '黄陵县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4732', '黄龙县', '443', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4733', '佛坪县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4734', '勉县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4735', '南郑县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4736', '城固县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4737', '宁强县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4738', '汉台区', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4739', '洋县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4740', '留坝县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4741', '略阳县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4742', '西乡县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4743', '镇巴县', '444', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4744', '佳县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4745', '吴堡县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4746', '子洲县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4747', '定边县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4748', '府谷县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4749', '榆林市榆阳区', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4750', '横山县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4751', '清涧县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4752', '神木县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4753', '米脂县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4754', '绥德县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4755', '靖边县', '445', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4756', '宁陕县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4757', '岚皋县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4758', '平利县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4759', '旬阳县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4760', '汉滨区', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4761', '汉阴县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4762', '白河县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4763', '石泉县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4764', '紫阳县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4765', '镇坪县', '446', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4766', '丹凤县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4767', '商南县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4768', '商州区', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4769', '山阳县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4770', '柞水县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4771', '洛南县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4772', '镇安县', '447', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4773', '七里河区', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4774', '城关区', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4775', '安宁区', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4776', '榆中县', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4777', '永登县', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4778', '皋兰县', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4779', '红古区', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4780', '西固区', '448', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4781', '嘉峪关市', '449', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4782', '永昌县', '450', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4783', '金川区', '450', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4784', '会宁县', '451', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4785', '平川区', '451', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4786', '景泰县', '451', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4787', '白银区', '451', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4788', '靖远县', '451', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4789', '张家川回族自治县', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4790', '武山县', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4791', '清水县', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4792', '甘谷县', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4793', '秦安县', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4794', '秦州区', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4795', '麦积区', '452', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4796', '凉州区', '453', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4797', '古浪县', '453', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4798', '天祝藏族自治县', '453', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4799', '民勤县', '453', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4800', '临泽县', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4801', '山丹县', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4802', '民乐县', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4803', '甘州区', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4804', '肃南裕固族自治县', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4805', '高台县', '454', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4806', '华亭县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4807', '崆峒区', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4808', '崇信县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4809', '庄浪县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4810', '泾川县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4811', '灵台县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4812', '静宁县', '455', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4813', '敦煌市', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4814', '玉门市', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4815', '瓜州县（原安西县）', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4816', '肃北蒙古族自治县', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4817', '肃州区', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4818', '金塔县', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4819', '阿克塞哈萨克族自治县', '456', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4820', '华池县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4821', '合水县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4822', '宁县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4823', '庆城县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4824', '正宁县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4825', '环县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4826', '西峰区', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4827', '镇原县', '457', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4828', '临洮县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4829', '安定区', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4830', '岷县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4831', '渭源县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4832', '漳县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4833', '通渭县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4834', '陇西县', '458', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4835', '两当县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4836', '宕昌县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4837', '康县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4838', '徽县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4839', '成县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4840', '文县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4841', '武都区', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4842', '礼县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4843', '西和县', '459', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4844', '东乡族自治县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4845', '临夏县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4846', '临夏市', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4847', '和政县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4848', '广河县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4849', '康乐县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4850', '永靖县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4851', '积石山保安族东乡族撒拉族自治县', '460', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4852', '临潭县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4853', '卓尼县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4854', '合作市', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4855', '夏河县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4856', '玛曲县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4857', '碌曲县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4858', '舟曲县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4859', '迭部县', '461', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4860', '城东区', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4861', '城中区', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4862', '城北区', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4863', '城西区', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4864', '大通回族土族自治县', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4865', '湟中县', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4866', '湟源县', '462', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4867', '乐都县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4868', '互助土族自治县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4869', '化隆回族自治县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4870', '平安县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4871', '循化撒拉族自治县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4872', '民和回族土族自治县', '463', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4873', '刚察县', '464', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4874', '海晏县', '464', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4875', '祁连县', '464', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4876', '门源回族自治县', '464', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4877', '同仁县', '465', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4878', '尖扎县', '465', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4879', '河南蒙古族自治县', '465', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4880', '泽库县', '465', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4881', '共和县', '466', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4882', '兴海县', '466', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4883', '同德县', '466', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4884', '贵南县', '466', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4885', '贵德县', '466', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4886', '久治县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4887', '玛多县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4888', '玛沁县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4889', '班玛县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4890', '甘德县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4891', '达日县', '467', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4892', '囊谦县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4893', '曲麻莱县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4894', '杂多县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4895', '治多县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4896', '玉树县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4897', '称多县', '468', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4898', '乌兰县', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4899', '冷湖行委', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4900', '大柴旦行委', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4901', '天峻县', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4902', '德令哈市', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4903', '格尔木市', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4904', '茫崖行委', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4905', '都兰县', '469', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4906', '兴庆区', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4907', '永宁县', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4908', '灵武市', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4909', '西夏区', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4910', '贺兰县', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4911', '金凤区', '470', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4912', '大武口区', '471', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4913', '平罗县', '471', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4914', '惠农区', '471', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4915', '利通区', '472', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4916', '同心县', '472', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4917', '盐池县', '472', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4918', '青铜峡市', '472', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4919', '原州区', '473', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4920', '彭阳县', '473', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4921', '泾源县', '473', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4922', '西吉县', '473', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4923', '隆德县', '473', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4924', '中宁县', '474', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4925', '沙坡头区', '474', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4926', '海原县', '474', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4927', '东山区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4928', '乌鲁木齐县', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4929', '天山区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4930', '头屯河区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4931', '新市区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4932', '水磨沟区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4933', '沙依巴克区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4934', '达坂城区', '475', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4935', '乌尔禾区', '476', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4936', '克拉玛依区', '476', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4937', '独山子区', '476', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4938', '白碱滩区', '476', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4939', '吐鲁番市', '477', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4940', '托克逊县', '477', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4941', '鄯善县', '477', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4942', '伊吾县', '478', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4943', '哈密市', '478', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4944', '巴里坤哈萨克自治县', '478', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4945', '吉木萨尔县', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4946', '呼图壁县', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4947', '奇台县', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4948', '昌吉市', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4949', '木垒哈萨克自治县', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4950', '玛纳斯县', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4951', '米泉市', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4952', '阜康市', '479', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4953', '博乐市', '480', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4954', '温泉县', '480', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4955', '精河县', '480', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4956', '博湖县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4957', '和硕县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4958', '和静县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4959', '尉犁县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4960', '库尔勒市', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4961', '焉耆回族自治县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4962', '若羌县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4963', '轮台县', '481', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4964', '乌什县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4965', '库车县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4966', '拜城县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4967', '新和县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4968', '柯坪县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4969', '沙雅县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4970', '温宿县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4971', '阿克苏市', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4972', '阿瓦提县', '482', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4973', '乌恰县', '483', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4974', '阿克陶县', '483', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4975', '阿合奇县', '483', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4976', '阿图什市', '483', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4977', '伽师县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4978', '叶城县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4979', '喀什市', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4980', '塔什库尔干塔吉克自治县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4981', '岳普湖县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4982', '巴楚县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4983', '泽普县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4984', '疏勒县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4985', '疏附县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4986', '英吉沙县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4987', '莎车县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4988', '麦盖提县', '484', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4989', '于田县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4990', '和田县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4991', '和田市', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4992', '墨玉县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4993', '民丰县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4994', '洛浦县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4995', '皮山县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4996', '策勒县', '485', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4997', '伊宁县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4998', '伊宁市', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('4999', '奎屯市', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5000', '察布查尔锡伯自治县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5001', '尼勒克县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5002', '巩留县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5003', '新源县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5004', '昭苏县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5005', '特克斯县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5006', '霍城县', '486', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5007', '乌苏市', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5008', '和布克赛尔蒙古自治县', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5009', '塔城市', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5010', '托里县', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5011', '沙湾县', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5012', '裕民县', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5013', '额敏县', '487', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5014', '吉木乃县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5015', '哈巴河县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5016', '富蕴县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5017', '布尔津县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5018', '福海县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5019', '阿勒泰市', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5020', '青河县', '488', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5021', '石河子市', '489', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5022', '阿拉尔市', '490', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5023', '图木舒克市', '491', '0', '3', null, '1');
INSERT INTO `area` VALUES ('5024', '五家渠市', '492', '0', '3', null, '1');
INSERT INTO `area` VALUES ('45055', '海外', '35', '0', '2', null, '1');
INSERT INTO `area` VALUES ('45056', '大理州', '25', '100', '2', '', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='品牌表';

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
INSERT INTO `brand` VALUES ('15', '123', '', '123', '0', '1548056602', null, '1', '1');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布者',
  `receive_by` int(11) DEFAULT NULL COMMENT '接收者',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='聊天记录表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '通知1', '内容1', null, '0', '0', '1544082253', '1548063560', '0', '0');
INSERT INTO `chat` VALUES ('2', '通知2', '红河2', null, '0', '0', '1545641708', '1548063187', '0', '0');
INSERT INTO `chat` VALUES ('3', '通知3', '通知3', null, null, '0', '1548063225', null, '0', '0');
INSERT INTO `chat` VALUES ('4', '通知4', '通知4', '10000', null, '0', '1548063484', '1548063522', '0', '0');
INSERT INTO `chat` VALUES ('5', null, '哈哈哈', '10002', '10005', '0', '1548135191', null, '0', '0');
INSERT INTO `chat` VALUES ('6', null, '哈哈哈1', '10002', '10005', '0', '1548137341', null, '0', '0');
INSERT INTO `chat` VALUES ('7', null, '你好a1', '10002', '10005', '0', '1548137910', null, '0', '0');

-- ----------------------------
-- Table structure for chat_log
-- ----------------------------
DROP TABLE IF EXISTS `chat_log`;
CREATE TABLE `chat_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布人',
  `role` varchar(255) DEFAULT NULL COMMENT '接收角色',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='聊天记录表';

-- ----------------------------
-- Records of chat_log
-- ----------------------------
INSERT INTO `chat_log` VALUES ('1', '通知1', '通知1', '内容1', null, '1', '0', '1544082253', '1548063560', '0', '0');
INSERT INTO `chat_log` VALUES ('2', '通知2', '通知2', '红河2', null, '2,3', '0', '1545641708', '1548063187', '0', '0');
INSERT INTO `chat_log` VALUES ('3', '通知3', null, '通知3', null, '2', '0', '1548063225', null, '0', '0');
INSERT INTO `chat_log` VALUES ('4', '通知4', null, '通知4', '10000', '2', '0', '1548063484', '1548063522', '0', '0');

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `file` varchar(255) DEFAULT NULL COMMENT '文件url',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布人',
  `type` int(11) DEFAULT NULL COMMENT '文件类型',
  `role` varchar(255) DEFAULT NULL COMMENT '接收角色',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='文件资料表';

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO `document` VALUES ('1', '通知1', 'http://tobacco/static/upload/963d5af377c38f81/56da77babc1b3a7b.doc', '通知1', '内容1', null, '2', '1', '0', '1544082253', '1548123568', '0', '0');
INSERT INTO `document` VALUES ('2', '通知2', null, '通知2', '红河2', null, '2', '2,3', '0', '1545641708', '1548063187', '0', '0');
INSERT INTO `document` VALUES ('3', '通知3', null, null, '通知3', null, '3', '2', '0', '1548063225', null, '0', '0');
INSERT INTO `document` VALUES ('4', '通知4', null, null, '通知4', '10000', '1', '2', '0', '1548063484', '1548063522', '0', '0');
INSERT INTO `document` VALUES ('5', '666', 'http://tobacco/static/upload/963d5af377c38f81/56da77babc1b3a7b.doc', null, null, '10000', '1', '1', '0', '1548121028', null, '0', '0');

-- ----------------------------
-- Table structure for machine
-- ----------------------------
DROP TABLE IF EXISTS `machine`;
CREATE TABLE `machine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT NULL COMMENT '机型',
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='机台表';

-- ----------------------------
-- Records of machine
-- ----------------------------
INSERT INTO `machine` VALUES ('1', '1号机', '1', '1', '/^11[1-3]{1}01$/', '/^11[1-3]{1}1[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '1', '1544082253', '1547892148', '0', '0');
INSERT INTO `machine` VALUES ('2', '2号机', '1', '1', '/^11[1-3]{1}02$/', '/^11[1-3]{1}2[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '2', '1544151105', '1546677157', '0', '0');
INSERT INTO `machine` VALUES ('3', '3号机', '1', '1', '/^11[1-3]{1}03$/', '/^11[1-3]{1}3[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '3', '1544003178', '1545974764', '0', '0');
INSERT INTO `machine` VALUES ('4', '4号机', '1', '1', '/^11[1-3]{1}04$/', '/^11[1-3]{1}4[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '4', '1544057379', '1545791883', '0', '0');
INSERT INTO `machine` VALUES ('5', '5号机', '1', '1', '/^11[1-3]{1}05$/', '/^11[1-3]{1}5[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"56\",\"jyjx\":\"69\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"34\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '5', '1544411321', '1545791896', '0', '0');
INSERT INTO `machine` VALUES ('6', '6号机', '2', '1', '/^11[1-3]{1}06$/', '/^11[1-3]{1}06(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '6', '1544411491', '1547895589', '0', '0');
INSERT INTO `machine` VALUES ('7', '7号机', '2', '1', '/^11[1-3]{1}07$/', '/^11[1-3]{1}07(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '7', '1544412196', '1545801127', '0', '0');
INSERT INTO `machine` VALUES ('8', '8号机', '2', '1', '/^11[1-3]{1}08$/', '/^11[1-3]{1}08(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '8', '1544412289', '1545801135', '0', '0');
INSERT INTO `machine` VALUES ('9', '9号机', '2', '1', '/^11[1-3]{1}09$/', '/^11[1-3]{1}09(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '9', '1544412474', '1545801145', '0', '0');
INSERT INTO `machine` VALUES ('10', '10号机', '2', '1', '/^11[1-3]{1}10$/', '/^11[1-3]{1}10(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"58\",\"jyjx\":\"70\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"52\",\"yzpl\":\"64\"}', '10', '1544412963', '1545801152', '0', '0');
INSERT INTO `machine` VALUES ('11', '16号机', '4', '1', '/^06[1-3]{1}16$/', '/^06[1-3]{1}6[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '16', '1544413024', '1547898517', '0', '0');
INSERT INTO `machine` VALUES ('12', '17号机', '4', '1', '/^06[1-3]{1}17$/', '/^06[1-3]{1}7[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '17', '1544413024', '1545793186', '0', '0');
INSERT INTO `machine` VALUES ('13', '18号机', '4', '1', '/^06[1-3]{1}18$/', '/^06[1-3]{1}8[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '18', '1544413024', '1545793479', '0', '0');
INSERT INTO `machine` VALUES ('14', '19号机', '4', '1', '/^06[1-3]{1}19$/', '/^06[1-3]{1}9[A-B]{1}(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '19', '1544413024', '1545793490', '0', '0');
INSERT INTO `machine` VALUES ('15', '20号机', '5', '1,2,28', '/^06[1-3]{1}20$/', '/^06[1-3]{1}20(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '20', '1544413024', '1547898593', '0', '0');
INSERT INTO `machine` VALUES ('16', '21号机', '5', '1,2,28', '/^06[1-3]{1}21$/', '/^06[1-3]{1}21(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '21', '1544413024', '1546676094', '0', '0');
INSERT INTO `machine` VALUES ('17', '22号机', '5', '4', '/^06[1-3]{1}22$/', '/^06[1-3]{1}22(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '22', '1544413024', '1547899691', '0', '0');
INSERT INTO `machine` VALUES ('18', '56号机', '10', '1', '/^06[1-3]{1}56$/', '/^06[1-3]{1}56(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '56', '1544413024', '1547899034', '0', '0');
INSERT INTO `machine` VALUES ('19', '57号机', '10', '1', '/^06[1-3]{1}57$/', '/^06[1-3]{1}57(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"62\",\"jyjx\":\"76\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '57', '1544413024', '1545801107', '0', '0');
INSERT INTO `machine` VALUES ('20', '11号机', '3', '3', '/^09[1-3]{1}11$/', '/^[1-3]{1}11(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '11', '1544412963', '1547898437', '0', '0');
INSERT INTO `machine` VALUES ('21', '12号机', '3', '3', '/^09[1-3]{1}12$/', '/^[1-3]{1}12(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '12', '1544412963', '1545803846', '0', '0');
INSERT INTO `machine` VALUES ('22', '13号机', '3', '3', '/^09[1-3]{1}13$/', '/^[1-3]{1}13(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '13', '1544412963', '1545804110', '0', '0');
INSERT INTO `machine` VALUES ('23', '14号机', '3', '3', '/^09[1-3]{1}14$/', '/^[1-3]{1}14(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '14', '1544412963', '1545804125', '0', '0');
INSERT INTO `machine` VALUES ('24', '15号机', '3', '3', '/^09[1-3]{1}15$/', '/^[1-3]{1}15(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"57\",\"jyjx\":\"71\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '15', '1544412963', '1545804140', '0', '0');
INSERT INTO `machine` VALUES ('25', '23号机', '5', '23', '/^06[1-4]{1}23$/', '/^06[1-4]{1}23(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '23', '1544412963', '1545815868', '0', '0');
INSERT INTO `machine` VALUES ('26', '24号机', '5', '23', '/^06[1-4]{1}24$/', '/^06[1-4]{1}24(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"32\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '24', '1544412963', '1545804350', '0', '0');
INSERT INTO `machine` VALUES ('27', '25号机', '5', '1,28', '/^06[1-3]{1}25$/', '/^06[1-3]{1}25(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '25', '1544412963', '1546676394', '0', '0');
INSERT INTO `machine` VALUES ('28', '26号机', '5', '1,28', '/^06[1-3]{1}27$/', '/^06[1-3]{1}27(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '27', '1544412963', '1545804421', '0', '0');
INSERT INTO `machine` VALUES ('29', '28号机', '5', '1,28', '/^06[1-3]{1}28$/', '/^06[1-3]{1}28(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '28', '1544412963', '1545804453', '0', '0');
INSERT INTO `machine` VALUES ('30', '36号机', '6', '12,31', '/^09[1-3]{1}36$/', '/^[1-3]{1}36(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '36', '1544412963', '1547898753', '0', '0');
INSERT INTO `machine` VALUES ('31', '37号机', '6', '12,27,31', '/^09[1-3]{1}37$/', '/^[1-3]{1}37(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '37', '1544412963', '1545804750', '0', '0');
INSERT INTO `machine` VALUES ('32', '39号机', '6', '12,14,22', '/^09[1-3]{1}39$/', '/^[1-3]{1}39(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '39', '1544412963', '1545804788', '0', '0');
INSERT INTO `machine` VALUES ('33', '40号机', '6', '12,14,22', '/^09[1-3]{1}40$/', '/^[1-3]{1}40(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"67\",\"bzjx\":\"59\",\"jyjx\":\"73\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"6\",\"jzjlx\":\"9\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"45\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '40', '1544412963', '1545804871', '0', '0');
INSERT INTO `machine` VALUES ('34', '41号机', '7', '13,37,48', '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '41', '1544412963', '1547898821', '0', '0');
INSERT INTO `machine` VALUES ('35', '47号机', '5', '42,45,46,47,54', '/^06[1-3]{1}47$/', '/^06[1-3]{1}47(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"22\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"35\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '47', '1544412963', '1547898873', '0', '0');
INSERT INTO `machine` VALUES ('36', '48号机', '4', '23,25,26,29', '/^06[1-4]{1}48$/', '/^06[1-4]{1}48(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '48', '1544412963', '1547898906', '0', '0');
INSERT INTO `machine` VALUES ('37', '49号机', '4', '32,33,44', '/^06[1-4]{1}49$/', '/^06[1-4]{1}49(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"53\",\"jyjx\":\"72\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"7\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"17\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"24\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"30\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"42\",\"xhbjhy\":\"48\",\"yzpl\":\"63\"}', '49', '1544412963', '1545812235', '0', '0');
INSERT INTO `machine` VALUES ('38', '50号机', '8', '3', '/^09[1-3]{1}50$/', '/^[1-3]{1}50(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '50', '1544412963', '1547898940', '0', '0');
INSERT INTO `machine` VALUES ('39', '51号机', '8', '3', '/^09[1-3]{1}51$/', '/^[1-3]{1}51(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"60\",\"jyjx\":\"75\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"8\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"27\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '51', '1544412963', '1545812448', '0', '0');
INSERT INTO `machine` VALUES ('40', '52号机', '9', '3', '/^09[1-3]{1}52$/', '/^[1-3]{1}52(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '52', '1544412963', '1547898984', '0', '0');
INSERT INTO `machine` VALUES ('41', '53号机', '9', '3', '/^09[1-3]{1}53$/', '/^[1-3]{1}53(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '53', '1544412963', '1545812600', '0', '0');
INSERT INTO `machine` VALUES ('42', '54号机', '9', '3', '/^09[1-3]{1}54$/', '/^[1-3]{1}54(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '54', '1544412963', '1545812693', '0', '0');
INSERT INTO `machine` VALUES ('43', '55号机', '9', '3', '/^09[1-3]{1}55$/', '/^[1-3]{1}55(0[1-9]|1[0-2]){1}(0[1-9]|1[0-9]|2[0-9]|3[0-1]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"55\",\"jyjx\":\"72\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"5\",\"jzjlx\":\"7\",\"thcbdb\":\"10\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"16\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"26\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"37\",\"jzjlx2\":\"39\",\"hywfw\":\"40\",\"hfwwz\":\"44\",\"xhbjhy\":\"51\",\"yzpl\":\"63\"}', '55', '1544412963', '1545812715', '0', '0');
INSERT INTO `machine` VALUES ('44', '58号机', '11', '23,25', '/^06[1-4]{1}58$/', '/^06[1-4]{1}58(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '58', '1544412963', '1547899093', '0', '0');
INSERT INTO `machine` VALUES ('45', '59号机', '11', '23,25,26', '/^06[1-4]{1}59$/', '/^06[1-4]{1}59(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '59', '1544412963', '1545812811', '0', '0');
INSERT INTO `machine` VALUES ('46', '60号机', '11', '23,25', '/^06[1-4]{1}60$/', '/^06[1-4]{1}60(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"36\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '60', '1544412963', '1545812836', '0', '0');
INSERT INTO `machine` VALUES ('47', '61号机', '11', '43', '/^06[1-3]{1}61$/', '/^06[1-3]{1}61(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"19\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"41\",\"hfwwz\":\"47\",\"xhbjhy\":\"49\",\"yzpl\":\"65\"}', '61', '1544412963', '1545817338', '0', '0');
INSERT INTO `machine` VALUES ('48', '26号机', '5', '23', '/^06[1-4]{1}26$/', '/^06[1-4]{1}26(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '26', '1544412963', '1546676394', '0', '0');
INSERT INTO `machine` VALUES ('49', '31号机', '5', '23', '/^06[1-4]{1}31$/', '/^06[1-4]{1}31(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"66\",\"bzjx\":\"54\",\"jyjx\":\"73\",\"ldtwz\":\"1\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"13\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"21\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"28\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"43\",\"xhbjhy\":\"49\",\"yzpl\":\"64\"}', '31', '1544412963', '1546676394', '0', '0');
INSERT INTO `machine` VALUES ('50', '46号机', '6', null, '/^09[1-3]{1}46$/', '/^06[1-3]{1}41(0[1-9]|1[0-2]){1}$/', '{\"cj\":\"68\",\"bzjx\":\"61\",\"jyjx\":\"74\",\"ldtwz\":\"2\",\"ldtxz\":\"3\",\"thkgfs\":\"4\",\"jzjlx\":\"8\",\"thcbdb\":\"11\",\"thbjlx\":\"12\",\"tbjwz\":\"14\",\"bjhy\":\"15\",\"hldtwz\":\"18\",\"hldtxz\":\"20\",\"hldtzlfs\":\"23\",\"hlcjdxz\":\"25\",\"lbzbzfs\":\"29\",\"lbzyybzlfs\":\"31\",\"jzjlx2\":\"38\",\"hywfw\":\"40\",\"hfwwz\":\"46\",\"xhbjhy\":\"49\",\"yzpl\":\"63\"}', '46', '1544412963', '1545816241', '0', '0');

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
  `role` tinyint(2) NOT NULL COMMENT '角色',
  `aid` int(11) NOT NULL COMMENT '地区',
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
INSERT INTO `member` VALUES ('10001', 'shishang', '111111', '史上0001', '1', '0', 'http://1.ynncp.com/static/upload/avatar/10001/20190111/1cf77b42d5551dfe244143279c468428.jpg', null, '', '18347944063', '', '319', '2019-01-21 08:52:29', '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10002', 'pengpu', '111111', '彭普0001', '1', '0', 'http://1.ynncp.com/static/upload/avatar/10002/20190121/aa45581dde0914215d0013387377d686.jpg', null, '', '18208702258', '', '333', '2019-01-22 15:35:56', '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10003', 'test0001', '111111', '监测站0001', '1', '0', null, null, '', '15888888888', '', '4', '2019-01-19 20:28:41', '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10004', 'wangxinhai', '111111', '王新海0001', '2', '0', null, null, '', '18214552124', '', '55', '2019-01-17 09:19:45', '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10005', 'test0002', '111111', '监测站0002', '1', '0', null, null, '', '15999999999', '', '0', null, '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10006', '15987103964', '111111', '15987103964', '1', '0', null, null, '111111@qq.com', '15987103964', '你好大哥', '0', null, '0', '0', null, '0000-00-00 00:00:00');
INSERT INTO `member` VALUES ('10008', 'tiantian', '123456', '田tian', '2', '0', null, null, '', '13759437459', '', '0', null, '0', '0', null, '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户收藏表';

-- ----------------------------
-- Records of member_collection
-- ----------------------------
INSERT INTO `member_collection` VALUES ('16', '10001', '3', '17', '1546933947');
INSERT INTO `member_collection` VALUES ('17', '10001', '1', '3', '1546933951');
INSERT INTO `member_collection` VALUES ('18', '10009', '1', '1', '1547017310');
INSERT INTO `member_collection` VALUES ('20', '10001', '4', '32', '1547092195');
INSERT INTO `member_collection` VALUES ('24', '10001', '3', '20', '1547437088');
INSERT INTO `member_collection` VALUES ('29', '10001', '1', '19', '1547736757');
INSERT INTO `member_collection` VALUES ('30', '10001', '42', '35', '1547736862');
INSERT INTO `member_collection` VALUES ('31', '10002', '1', '2', '1547779630');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户消息表';

-- ----------------------------
-- Records of member_message
-- ----------------------------
INSERT INTO `member_message` VALUES ('1', '10006', '云烟', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '云烟品牌', '10001', '1544082253', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('2', '10006', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10001', '1544082254', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('3', '10006', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10001', '1544082252', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('4', '10001', '聊天室1', 'http://tobacco/static/upload/0e72692bbd6677b8/a4cdc68c29ade394.png', '聊天内容1', '10006', '1544082251', '1545288541', '0', '0');
INSERT INTO `member_message` VALUES ('5', '10001', '聊天室1', null, '哈哈哈哈哈', '10006', '1546830128', null, '0', '0');
INSERT INTO `member_message` VALUES ('6', '10006', null, null, '%E5%9C%A8%E5%AE%B6%E5%B9%B2%E5%90%97%E4%BA%86%E3%80%82%E5%9C%A8%E4%B8%80%E8%B5%B7%E7%9A%84%E6%97%B6%E5%80%99%F0%9F%98%AD%F0%9F%98%9E%F0%9F%98%AD%F0%9F%98%AD%F0%9F%98%AD%F0%9F%98%9E%F0%9F%98%98', '10001', '1547011702', null, '0', '0');

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
  `role` varchar(255) DEFAULT NULL COMMENT '接收角色',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='通知公告表';

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '通知1', '通知1', '内容1', null, '1', '0', '1544082253', '1548063560', '0', '0');
INSERT INTO `notice` VALUES ('2', '通知2', '通知2', '红河2', null, '2,3', '0', '1545641708', '1548063187', '0', '0');
INSERT INTO `notice` VALUES ('3', '通知3', null, '通知3', null, '2', '0', '1548063225', null, '0', '0');
INSERT INTO `notice` VALUES ('4', '通知4', null, '通知4', '10000', '2', '0', '1548063484', '1548063522', '0', '0');

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `create_by` int(11) DEFAULT NULL COMMENT '发布人',
  `role` varchar(255) DEFAULT NULL COMMENT '接收角色',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '数据排序',
  `create_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态 0正常 1禁用 默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='常见问题表';

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '通知1', '通知1', '内容1', null, '1', '0', '1544082253', '1548063560', '0', '0');
INSERT INTO `problem` VALUES ('2', '通知2', '通知2', '红河2', null, '2,3', '0', '1545641708', '1548063187', '0', '0');
INSERT INTO `problem` VALUES ('3', '通知3', null, '通知3', null, '2', '0', '1548063225', null, '0', '0');
INSERT INTO `problem` VALUES ('4', '通知4', null, '通知4', '10000', '2', '0', '1548063484', '1548063522', '0', '0');

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
INSERT INTO `product` VALUES ('1', '云烟（紫）', '1', '6901028046893', '6901028046886', 'http://1.ynncp.com/static/upload/0d09b9fccbdc6a01/af70d31628cb4381.png', 'http://1.ynncp.com/static/upload/79079cc0a8e6c6c3/7c05cb46bf1e961f.mp4', 'http://1.ynncp.com/static/upload/0d09b9fccbdc6a01/af70d31628cb4381.png', '{\"ttxm\":\"6901028046893\",\"htxm\":\"6901028046886\",\"ldczwzta\":\"1\",\"dsbzcz\":\"8\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"22\",\"tfwtzms\":\"29\",\"hldtz\":\"37\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c7c5714ff1f79687\\/7fd3eb4a723a5cbf.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a6e7e962d27acea\\/3f03bdd92395f952.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9238449114c5cb08\\/3830f4a8a1cf7a65.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/96e26ce253b25bf9\\/18d172c51b20dcb5.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96192d3d0288172b\\/029b8a471e6ae3af.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f28f3c7f6a7a5bfe\\/bd5d89310b93764d.jpg\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/af34f8d2d489f90d\\/4897f033bc159a4f.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/04b30db3137d5f93\\/cb2c40f11c028bd7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac7f35ef85fa329d\\/79348526957ab39b.jpg\",\"fwtjthgyh-1\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0e72692bbd6677b8\\/a4cdc68c29ade394.png\",\"fwtjthgyh-2\":\"\",\"fwtjthgyh-4\":\"\",\"fwtjthgyh-5\":\"\",\"fwtjthgyh-10\":\"\",\"fwtjthjd-1\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png\",\"fwtjthjd-2\":\"\",\"fwtjthjd-4\":\"\",\"fwtjthjd-5\":\"\",\"fwtjthjd-10\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0e72692bbd6677b8\\/a4cdc68c29ade394.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4fd70d03685a3941\\/5d5f5e76c5ef2a97.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d44772513c2a0c37\\/2519b6e010f5c3f1.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17fcb7b9c4eebb6a\\/3674b8ba16303a4a.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b3dd9dce3d40439a\\/122fd91b11b0fa66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5f9c296d72b3dc55\\/99ec8ba5ccbe42fc.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/704c4b2d4a689a88\\/3e9fed833c7a45a5.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/21361e00faf22994\\/3ef66ff67f8128c6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5b5da189909b58a0\\/d02b8785cbc335b2.jpg\",\"fwtjxhgyh-1\":\"\",\"fwtjxhgyh-2\":\"\",\"fwtjxhgyh-4\":\"\",\"fwtjxhgyh-5\":\"\",\"fwtjxhgyh-10\":\"\",\"fwtjxhjd-1\":\"\",\"fwtjxhjd-2\":\"\",\"fwtjxhjd-4\":\"\",\"fwtjxhjd-5\":\"\",\"fwtjxhjd-10\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/426b185c26b0a36e\\/09ea081e8945fab8.png\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2b90fb0015f87ac4\\/9fc7b1eabe087b50.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f797c28d5777ce2e\\/3d9e82aa18b9c5b7.png\",\"fwtjyzdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/92bb637498299845\\/ae66649f40fca142.png\",\"fwtjyzqt\":\"\"}', '1', '1544082253', '1548122726', '0', '0');
INSERT INTO `product` VALUES ('2', '云烟（印象）', '1', '6901028310444', '6901028310437', 'http://1.ynncp.com/static/upload/209090f83963451b/dc30a3aa99fae5dd.png', '', 'http://1.ynncp.com/static/upload/209090f83963451b/dc30a3aa99fae5dd.png', '{\"ttxm\":\"6901028310444\",\"htxm\":\"6901028310437\",\"ldczwzta\":\"6\",\"dsbzcz\":\"10\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"24\",\"tfwtzms\":\"31\",\"hldtz\":\"39\",\"hldtwz\":\"47\",\"hsbzcz\":\"51\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"65\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"128\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4d377069655711ae\\/b3a279989ee9aeeb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/293c589d6c6d0509\\/d389245fada20937.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/797e7d2a7d093256\\/889a66f17ac7cfe8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2045f66a40090df7\\/027d9a81735d23dd.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/baf3b91012b150a0\\/3375cc6c4358b806.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/baf3b91012b150a0\\/3375cc6c4358b806.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f634bb98bd455458\\/00dba6b8faaa4d8a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f634bb98bd455458\\/00dba6b8faaa4d8a.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/06aaa1e031ed51d5\\/9580e8452ab64891.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06aaa1e031ed51d5\\/9580e8452ab64891.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31b985929bbccb80\\/55c30eb010786c42.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31b985929bbccb80\\/55c30eb010786c42.png\",\"fwtjthgyh-5\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/06f0c8e54764d691\\/c740ae1563f5a6c2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06f0c8e54764d691\\/c740ae1563f5a6c2.png\",\"fwtjthjd-5\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2d44354cc21c2259\\/5aa8ac328466d18a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7625e375c9525ce6\\/0aa93710b1e7ec23.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/abd63a34fb74f652\\/84c64a023a9fe2dc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/333534871480ad60\\/a3bab30131cec29a.jpg\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f2292947a86b407e\\/70af6b3766da311e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f2292947a86b407e\\/70af6b3766da311e.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7a3117a4e8867b72\\/e9a393d39ffc7273.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7a3117a4e8867b72\\/e9a393d39ffc7273.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/08a3659f442781c3\\/8ee85023a3988157.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/08a3659f442781c3\\/8ee85023a3988157.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/54e0b470c6c2e101\\/19aabee3290cfd0f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/54e0b470c6c2e101\\/19aabee3290cfd0f.png\",\"fwtjxhgyh-5\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/19ba478eb8ecf642\\/fe6c27dde03c849d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/19ba478eb8ecf642\\/fe6c27dde03c849d.png\",\"fwtjxhjd-5\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6d03e2859407971\\/376eb456e387a8cc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6d03e2859407971\\/376eb456e387a8cc.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c16a0e26765a00b2\\/59cdeccc42be4b87.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c16a0e26765a00b2\\/59cdeccc42be4b87.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf0a758969a376c9\\/7bd4e59288e6ba99.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf0a758969a376c9\\/7bd4e59288e6ba99.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/69f3e4c1bc7a6cc8\\/64b32ac10ddaf92b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/69f3e4c1bc7a6cc8\\/64b32ac10ddaf92b.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f01971478d595f9\\/1b5d8d4f83ac9c00.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f01971478d595f9\\/1b5d8d4f83ac9c00.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9978b06551809b7d\\/e68d6eefecc605bf.png\"}', '2', '1545645219', '1548056164', '0', '0');
INSERT INTO `product` VALUES ('3', '云烟（软珍品）', '1', '6901028045919 ', '6901028045902 ', 'http://1.ynncp.com/static/upload/3a24a1e935f825de/22bceecbd73cf2de.png', '', 'http://1.ynncp.com/static/upload/3a24a1e935f825de/22bceecbd73cf2de.png', '{\"ttxm\":\"6901028045919 \",\"htxm\":\"6901028045902 \",\"ldczwzta\":\"5\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"23\",\"tfwtzms\":\"30\",\"hldtz\":\"38\",\"hldtwz\":\"48\",\"hsbzcz\":\"50\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"64\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"138\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a08ae5a96923b5fd\\/882ffe4694988e20.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0081ec2f55c618a8\\/2d6278a6f0cfd2fa.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2ab6d60155094a61\\/7379c586106a59ae.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2ab6d60155094a61\\/7379c586106a59ae.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4ce96a2328687609\\/ff382e5423638ecd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4ce96a2328687609\\/ff382e5423638ecd.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/857d172cd7759e7e\\/35aa8a7851532880.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/857d172cd7759e7e\\/35aa8a7851532880.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/302f5fb73c35084a\\/b4edd71a7c29f94d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/302f5fb73c35084a\\/b4edd71a7c29f94d.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ccc64a50b65223d3\\/ece92f86f5b1af3d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c80dc86734fadadb\\/633d0ca3811af46e.jpg\",\"fwtjthqt-20\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4efbccb80c3d1720\\/f64414e6e8297569.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4efbccb80c3d1720\\/f64414e6e8297569.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d063488fbe010370\\/e94da471104a01ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d063488fbe010370\\/e94da471104a01ea.png\",\"fwtjthqt-21\":\"\",\"fwtjthqt-22\":\"\",\"fwtjthqt-23\":\"\",\"fwtjthqt-24\":\"\",\"fwtjthqt-38\":\"\",\"fwtjthqt-39\":\"\",\"fwtjthqt-40\":\"\",\"fwtjthqt-41\":\"\",\"fwtjthqt-42\":\"\",\"fwtjthqt-43\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b7105db5cb861ca3\\/6f07e69f5b02fbce.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a85a502fb536dcea\\/c6f9ee725bb8562a.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde623af3eeabde4\\/f9eeb9eece3d711f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde623af3eeabde4\\/f9eeb9eece3d711f.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0d1ad9212c4f50ac\\/198c39fe0890153c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1cf37729252ff5c5\\/2b761fcf3f6cc220.jpg\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3052b84497136ea\\/c97a1074743ef517.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3052b84497136ea\\/c97a1074743ef517.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b40292e43e7e5ca\\/e8fcf8a9aacc9104.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b40292e43e7e5ca\\/e8fcf8a9aacc9104.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e27314e2b72b0380\\/a6555210f6674289.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e27314e2b72b0380\\/a6555210f6674289.png\",\"fwtjxhqt-20\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/25e7277bd21e76e2\\/8efcc35018d3a755.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/25e7277bd21e76e2\\/8efcc35018d3a755.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5213d949834983b8\\/8ff4dfea361f1e36.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5213d949834983b8\\/8ff4dfea361f1e36.png\",\"fwtjxhqt-21\":\"\",\"fwtjxhqt-22\":\"\",\"fwtjxhqt-23\":\"\",\"fwtjxhqt-24\":\"\",\"fwtjxhqt-38\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a7615647a51c270\\/c300a0126ff4d157.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a7615647a51c270\\/c300a0126ff4d157.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b95e5de1f50bffd\\/8b39114b7fe755d5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b95e5de1f50bffd\\/8b39114b7fe755d5.png\",\"fwtjxhqt-39\":\"\",\"fwtjxhqt-40\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9f558b536bec53fb\\/4c5bae666ddaf26b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9f558b536bec53fb\\/4c5bae666ddaf26b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06043a5a7973d99e\\/ba74e678b5e06167.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06043a5a7973d99e\\/ba74e678b5e06167.png\",\"fwtjxhqt-41\":\"\",\"fwtjxhqt-42\":\"\",\"fwtjxhqt-43\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/396d289ac5fc60aa\\/97bb4df4372b05e0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/396d289ac5fc60aa\\/97bb4df4372b05e0.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b9da91644b8f64b\\/60cab81a237abe28.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1b9da91644b8f64b\\/60cab81a237abe28.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/79b62fffd98f226d\\/641472aab6f4d170.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/79b62fffd98f226d\\/641472aab6f4d170.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-20\":\"\",\"fwtjyzqt-21\":\"\",\"fwtjyzqt-22\":\"\",\"fwtjyzqt-23\":\"\",\"fwtjyzqt-24\":\"\",\"fwtjyzqt-38\":\"\",\"fwtjyzqt-39\":\"\",\"fwtjyzqt-40\":\"\",\"fwtjyzqt-41\":\"\",\"fwtjyzqt-42\":\"\",\"fwtjyzqt-43\":\"\"}', '3', '1545977095', '1547706119', '0', '0');
INSERT INTO `product` VALUES ('4', '云烟（大重九9+1）', '1', '6901028311939 ', '6901028311922 ', 'http://1.ynncp.com/static/upload/a2a21117df88778c/5410ce6cbc7c883e.png', '', 'http://1.ynncp.com/static/upload/a2a21117df88778c/5410ce6cbc7c883e.png', '{\"ttxm\":\"6901028311939 \",\"htxm\":\"6901028311922 \",\"ldczwzta\":\"18\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"46\",\"hldtwz\":\"48\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"81\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"93\",\"lzcd\":\"96\",\"jzzztz\":\"111\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ca7eb5aaf72eab74\\/3637f7324e389e96.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ca7eb5aaf72eab74\\/3637f7324e389e96.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c670c34fab8f817\\/e6fc164ed433f526.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c670c34fab8f817\\/e6fc164ed433f526.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ffdd7e86ec74b1f5\\/4a1eb950753421c1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ffdd7e86ec74b1f5\\/4a1eb950753421c1.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ef0794a423e53ca\\/0294e7e6ae7bcd55.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ef0794a423e53ca\\/0294e7e6ae7bcd55.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2e58d8e60f971698\\/0a725930085df123.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2e58d8e60f971698\\/0a725930085df123.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9d886746b076f4d1\\/3f63e1207c816c7f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9d886746b076f4d1\\/3f63e1207c816c7f.png\",\"fwtjthqt-17\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbcaebf28500af0\\/0de262307a69ef89.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbcaebf28500af0\\/0de262307a69ef89.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/09c4efd50a96ed19\\/e7d546376ba49abd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/09c4efd50a96ed19\\/e7d546376ba49abd.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e779b9fe7546f23\\/ed68b4825c43866d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e779b9fe7546f23\\/ed68b4825c43866d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/edc1bcaa9f6c506c\\/1e80df68f8b7e52b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/edc1bcaa9f6c506c\\/1e80df68f8b7e52b.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5483e5bfa405ded5\\/110e4568611dc5a4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5483e5bfa405ded5\\/110e4568611dc5a4.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/56bc465fb25b7030\\/49d4c73e79a5591f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/56bc465fb25b7030\\/49d4c73e79a5591f.png\",\"fwtjxhqt-17\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bf35c8d9cbe77f5d\\/bd057e525ca71390.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bf35c8d9cbe77f5d\\/bd057e525ca71390.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ef501a93a337cc1\\/a76ad6df32d015d1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ef501a93a337cc1\\/a76ad6df32d015d1.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/97ca25a02c41690f\\/c103ea780b1b922b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/97ca25a02c41690f\\/c103ea780b1b922b.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb778180eef437fe\\/e1a1bbca4d908d9c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb778180eef437fe\\/e1a1bbca4d908d9c.png\",\"fwtjyzdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc715d95e184cd50\\/160659b7fc9ed5f4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cc715d95e184cd50\\/160659b7fc9ed5f4.png\",\"fwtjyzdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4048e44a8875e812\\/254417008e6743ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4048e44a8875e812\\/254417008e6743ac.png\",\"fwtjyzqt-17\":\"\"}', '4', '1545991777', '1547703346', '0', '0');
INSERT INTO `product` VALUES ('5', '云烟（呼伦贝尔碧草云天）', '1', '6901028340434', '6901028340427', '', '', '', '{\"ttxm\":\"6901028340434\",\"htxm\":\"6901028340427\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '5', '1546667316', null, '0', '1');
INSERT INTO `product` VALUES ('6', '云烟（软如意）', '1', '6901028310628', '6901028310611', '', '', '', '{\"ttxm\":\"6901028310628\",\"htxm\":\"6901028310611\",\"ldczwzta\":\"168\",\"dsbzcz\":\"9\",\"tysfs\":\"15\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"50\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"74\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"106\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '6', '1546668073', '1547091407', '0', '1');
INSERT INTO `product` VALUES ('7', '云烟(硬大重九出口CNDF)', '1', '6901028056472', '6901028056007', '', '', '', '{\"ttxm\":\"6901028056472\",\"htxm\":\"6901028056007\",\"ldczwzta\":\"2\",\"dsbzcz\":\"169\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"27\",\"tfwtzms\":\"194\",\"hldtz\":\"44\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"220\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"99\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"221\",\"zzyy\":\"141\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '7', '1546668107', '1547098830', '0', '1');
INSERT INTO `product` VALUES ('8', '云烟(软印象烟庄)', '1', '6901028051163', '6901028051156', '', '', '', '{\"ttxm\":\"6901028051163\",\"htxm\":\"6901028051156\",\"ldczwzta\":\"222\",\"dsbzcz\":\"170\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"242\",\"tfwtzms\":\"195\",\"hldtwz\":\"48\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"hfwwz\":\"146\",\"hfwtzms\":\"154\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"yszc\":\"221\",\"zzyy\":\"141\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '8', '1546668131', '1547101143', '0', '1');
INSERT INTO `product` VALUES ('9', '云烟(印象烟庄)', '1', '6901028051613', '6901028051606', '', '', '', '{\"ttxm\":\"6901028051613\",\"htxm\":\"6901028051606\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '9', '1546668152', null, '0', '1');
INSERT INTO `product` VALUES ('10', '云烟(红)', '1', '6901028045582', '6901028045575', '', '', '', '{\"ttxm\":\"6901028045582\",\"htxm\":\"6901028045575\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '10', '1546668175', null, '0', '1');
INSERT INTO `product` VALUES ('11', '云烟(软紫)', '1', '6901028311168', '6901028311151', '', '', '', '{\"ttxm\":\"6901028311168\",\"htxm\":\"6901028311151\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '11', '1546668196', null, '0', '1');
INSERT INTO `product` VALUES ('12', '云烟（软大重九）', '1', '6901028051989', '6901028051996', 'http://1.ynncp.com/static/upload/73891c9055ee8af6/4f100a6d7c6e3dc3.png', '', 'http://1.ynncp.com/static/upload/73891c9055ee8af6/4f100a6d7c6e3dc3.png', '{\"ttxm\":\"6901028051989\",\"htxm\":\"6901028051996\",\"ldczwzta\":\"2\",\"dsbzcz\":\"11\",\"tysfs\":\"13\",\"tywfw\":\"20\",\"tfwwz\":\"26\",\"tfwtzms\":\"33\",\"hldtz\":\"41\",\"hldtwz\":\"48\",\"hsbzcz\":\"53\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"67\",\"hfwwz\":\"149\",\"hfwtzms\":\"157\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"405\",\"jzzcd\":\"115\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"463\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"221\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1874f28f55b4bfe5\\/077daa627489512f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1874f28f55b4bfe5\\/077daa627489512f.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/579eebdba09a01d0\\/aaa67827ef321c50.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/431519117acd2083\\/9531e54dd1603343.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3805e3b090fb574\\/7b3b6897fb4a518f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4f1ab87bf03f5640\\/4af5b31498a6557d.jpg\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf29e90e5c16c54f\\/af6fcab13e1737dc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf29e90e5c16c54f\\/af6fcab13e1737dc.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/32cedabfda94a1f8\\/a80d719b4a80a236.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2722a4b13c189d06\\/2205d552566bc211.jpg\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3c1d28d69f8a3f04\\/3316e40b0ff386e9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/315c85be51ab93ae\\/bdb2b9e9bdff1478.jpg\",\"fwtjthqt-30\":\"\",\"fwtjthqt-31\":\"\",\"fwtjthqt-32\":\"\",\"fwtjthqt-33\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e1fb7830552a3b53\\/3be183f0afa6e8cf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f6980291df12668b\\/d14a5b3937b97517.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e82b3cbbbf59c7dc\\/958912f1c4286d9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e82b3cbbbf59c7dc\\/958912f1c4286d9a.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85b14dd508f516a\\/b7ab1de7601276f8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d2125684f695ff4\\/98b1a65563c9c9af.jpg\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecb40da185f5f417\\/f1c65935504b9894.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f1ee2e14ebfee40\\/0e0ab2a448f0bad4.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/27cbaa9b1967ddf7\\/2edc12376412edbe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b6548868f22660b\\/f2cbd333741dc17e.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2274292836629c3\\/1af7fab6b011187b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d2274292836629c3\\/1af7fab6b011187b.png\",\"fwtjxhqt-30\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8735f9f60903cc2b\\/38c80cf1d68275cc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8735f9f60903cc2b\\/38c80cf1d68275cc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png\",\"fwtjxhqt-31\":\"\",\"fwtjxhqt-32\":\"\",\"fwtjxhqt-33\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/93ce76bdbf171174\\/ad1c5cb92afa2ac4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/93ce76bdbf171174\\/ad1c5cb92afa2ac4.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4598fea725974ed1\\/15e431d364417c34.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4598fea725974ed1\\/15e431d364417c34.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ad41b84d6ae7412\\/fd0ccbff307b94f1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ad41b84d6ae7412\\/fd0ccbff307b94f1.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-30\":\"\",\"fwtjyzqt-31\":\"\",\"fwtjyzqt-32\":\"\",\"fwtjyzqt-33\":\"\"}', '12', '1546668225', '1547705267', '0', '0');
INSERT INTO `product` VALUES ('13', '云烟（74mm大团结）', '1', '6901028313827', '6901028313810', 'http://1.ynncp.com/static/upload/e13a9f20d6e9f272/73435dfcffd2f809.png', '', 'http://1.ynncp.com/static/upload/e13a9f20d6e9f272/73435dfcffd2f809.png', '{\"ttxm\":\"6901028313827\",\"htxm\":\"6901028313810\",\"ldczwzta\":\"7\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"66\",\"hfwwz\":\"150\",\"hfwtzms\":\"158\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"98\",\"jzzcd\":\"114\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8bcd1f06fabd030e\\/79413c39d158a08b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/406b663e2bf12981\\/3876f59fec7eb9d7.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/150e0b267bc3be97\\/a2f93a4570332e04.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/150e0b267bc3be97\\/a2f93a4570332e04.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/efc4fde7beb45113\\/772852ced1be1d46.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/efc4fde7beb45113\\/772852ced1be1d46.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17a2145bdb858530\\/e3415986adaf963d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17a2145bdb858530\\/e3415986adaf963d.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b1b3c6a95e1979d0\\/859bd9c5a0118d3b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b1b3c6a95e1979d0\\/859bd9c5a0118d3b.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/982dfbbcd12d4583\\/94377ffc47bd2168.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/982dfbbcd12d4583\\/94377ffc47bd2168.png\",\"fwtjthqt-34\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b465b57f4f5bdbf9\\/3aa238666768797a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b465b57f4f5bdbf9\\/3aa238666768797a.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/696570ea49a02669\\/75f25133e8ceb4b1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3bf0aa51105af6c\\/a0e3b0c323e23ab9.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17bd52d8d3dd5e2f\\/49b0fad9bc95c456.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/17bd52d8d3dd5e2f\\/49b0fad9bc95c456.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff6cf02b4544b5e0\\/c1a8e0bb0f2e9c87.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ff6cf02b4544b5e0\\/c1a8e0bb0f2e9c87.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7fdf7855de19e387\\/e431583aa612ea88.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7fdf7855de19e387\\/e431583aa612ea88.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/698daf5851b9e699\\/c8175d2f4cc2bbbf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/698daf5851b9e699\\/c8175d2f4cc2bbbf.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/20866eebe069d689\\/0d63efcc4f6ba02c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/20866eebe069d689\\/0d63efcc4f6ba02c.png\",\"fwtjxhqt-34\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/896af847f4c4e333\\/2f05ccea4b302c7e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/896af847f4c4e333\\/2f05ccea4b302c7e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bbe5a84bb33f12c\\/193b28b54674bc1a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bbe5a84bb33f12c\\/193b28b54674bc1a.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4538060ae499f59c\\/d652a90d43c4d9c5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4538060ae499f59c\\/d652a90d43c4d9c5.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d45e977cffdab287\\/86ed664aee2372b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d45e977cffdab287\\/86ed664aee2372b7.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-34\":\"\"}', '13', '1546668249', '1547704746', '0', '0');
INSERT INTO `product` VALUES ('14', '云烟（软珍品红韵）', '1', '6901028313766', '6901028313759', '', '', '', '{\"ttxm\":\"6901028313766\",\"htxm\":\"6901028313759\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '14', '1546668281', null, '0', '1');
INSERT INTO `product` VALUES ('15', '云烟（印象出口）（免税版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '15', '1546668309', null, '0', '1');
INSERT INTO `product` VALUES ('16', '云烟（印象出口）（免税版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '16', '1546668328', null, '1', '1');
INSERT INTO `product` VALUES ('17', '云烟（印象出口）（普通英文版）', '1', '6901028310956', '6901028310949', '', '', '', '{\"ttxm\":\"6901028310956\",\"htxm\":\"6901028310949\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '17', '1546668689', null, '0', '1');
INSERT INTO `product` VALUES ('18', '云烟（印象出口）（TW版）', '1', '6901028312059', '6901028312042', '', '', '', '{\"ttxm\":\"6901028312059\",\"htxm\":\"6901028312042\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '18', '1546668716', null, '0', '1');
INSERT INTO `product` VALUES ('19', '云烟(小熊猫)', '1', '6901028313551', '6901028313544', '', '', '', '{\"ttxm\":\"6901028313551\",\"htxm\":\"6901028313544\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '19', '1546668733', null, '0', '1');
INSERT INTO `product` VALUES ('20', '云烟(雪域)', '1', '6901028312929', '6901028312912', '', '', '', '{\"ttxm\":\"6901028312929\",\"htxm\":\"6901028312912\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '20', '1546668758', null, '0', '1');
INSERT INTO `product` VALUES ('21', '云烟(福)', '1', '6901028310987', '6901028310970', '', '', '', '{\"ttxm\":\"6901028310987\",\"htxm\":\"6901028310970\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '21', '1546668780', null, '0', '1');
INSERT INTO `product` VALUES ('22', '云烟（软珍品zj）', '1', '6901028046657', '6901028046640', '', '', '', '{\"ttxm\":\"6901028046657\",\"htxm\":\"6901028046640\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '22', '1546668799', null, '0', '1');
INSERT INTO `product` VALUES ('23', '云烟（细支云龙）', '1', '6901028339957', '6901028339940', 'http://1.ynncp.com/static/upload/7dd37802ba868da1/be0425a842c71f86.png', '', 'http://1.ynncp.com/static/upload/7dd37802ba868da1/be0425a842c71f86.png', '{\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"102\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a7714cd549b494dc\\/eae4b9eb38aa05f9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c5068465a37239b2\\/bae34cf0736e28df.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/52e444d73c5a31b8\\/f80fc80b4a1065c0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/52e444d73c5a31b8\\/f80fc80b4a1065c0.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1a8cf1b142b2e217\\/594d6f1acc8e9153.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1a8cf1b142b2e217\\/594d6f1acc8e9153.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc84a8918906d570\\/a6c7fde60d8d9033.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fc84a8918906d570\\/a6c7fde60d8d9033.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5987125395e5d2d7\\/3e9a4058b7224251.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5987125395e5d2d7\\/3e9a4058b7224251.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab4c13dae03d5837\\/e6118effede2f804.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab4c13dae03d5837\\/e6118effede2f804.png\",\"fwtjthqt-25\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/395a0d28841a4c3b\\/6699522504c081bd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/395a0d28841a4c3b\\/6699522504c081bd.png\",\"fwtjthqt-26\":\"\",\"fwtjthqt-36\":\"\",\"fwtjthqt-44\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/76db976ff7590a69\\/c0e234f014960b5f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/76db976ff7590a69\\/c0e234f014960b5f.png\",\"fwtjthqt-45\":\"\",\"fwtjthqt-46\":\"\",\"fwtjthqt-48\":\"\",\"fwtjthqt-49\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b5bd1d41b792889f\\/d0b0931a9afaebeb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fec6e3868d18166b\\/f109b49a07335640.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd6ad6b671ff61f6\\/d30e2b4bb7c4cfdd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd6ad6b671ff61f6\\/d30e2b4bb7c4cfdd.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3f3a4f8685508b92\\/783c72c4e12dee77.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3f3a4f8685508b92\\/783c72c4e12dee77.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdf2e7ee745a6b0\\/bf5410830b286214.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdf2e7ee745a6b0\\/bf5410830b286214.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2954e652a7a45f6f\\/197a36fd69bf0b79.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2954e652a7a45f6f\\/197a36fd69bf0b79.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c34fb542d693e68e\\/22113e7ec4bae57e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c34fb542d693e68e\\/22113e7ec4bae57e.png\",\"fwtjxhqt-25\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/451a8c089390fb19\\/f138866cb830474b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/451a8c089390fb19\\/f138866cb830474b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png\",\"fwtjxhqt-26\":\"\",\"fwtjxhqt-36\":\"\",\"fwtjxhqt-44\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/451a8c089390fb19\\/f138866cb830474b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/451a8c089390fb19\\/f138866cb830474b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png\",\"fwtjxhqt-45\":\"\",\"fwtjxhqt-46\":\"\",\"fwtjxhqt-48\":\"\",\"fwtjxhqt-49\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f06a9f95d0ef27e8\\/82cd35a56c500f12.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f06a9f95d0ef27e8\\/82cd35a56c500f12.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ea3b2b7d8f8fbc7\\/87495d125b08e636.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ea3b2b7d8f8fbc7\\/87495d125b08e636.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ff7b7e070a1c8cc\\/587b042f4f7ec979.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0ff7b7e070a1c8cc\\/587b042f4f7ec979.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-25\":\"\",\"fwtjyzqt-26\":\"\",\"fwtjyzqt-36\":\"\",\"fwtjyzqt-44\":\"\",\"fwtjyzqt-45\":\"\",\"fwtjyzqt-46\":\"\",\"fwtjyzqt-48\":\"\",\"fwtjyzqt-49\":\"\"}', '23', '1546668873', '1547708354', '0', '0');
INSERT INTO `product` VALUES ('24', '云烟（细支云龙）ZB45', '1', '6901028339957', '6901028339940', '', '', '', '{\"ttxm\":\"6901028339957\",\"htxm\":\"6901028339940\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\"}', '24', '1546668893', '1547485100', '1', '1');
INSERT INTO `product` VALUES ('25', '云烟（细支珍品）', '1', '6901028339537', '6901028339520', 'http://1.ynncp.com/static/upload/b36a28bdbf6d2aa3/8a4f2963a404a64d.png', '', '', '{\"ttxm\":\"6901028339537\",\"htxm\":\"6901028339520\",\"ldczwzta\":\"16\",\"dsbzcz\":\"8\",\"tysfs\":\"13\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"72\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"90\",\"lzcd\":\"96\",\"jzzztz\":\"104\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4e3a64d562e8ff\\/de3468f8720e8f7f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4e3a64d562e8ff\\/de3468f8720e8f7f.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/969f189825f30e6c\\/ad80d9bbbda4a9e7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/969f189825f30e6c\\/ad80d9bbbda4a9e7.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a45c65cc8e99cf79\\/3fb90e25b0257416.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a45c65cc8e99cf79\\/3fb90e25b0257416.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/61157b8215dbe471\\/e78c0769efa1f3ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/61157b8215dbe471\\/e78c0769efa1f3ac.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/19c7f9262bcd7878\\/28967adea2c7e8eb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/19c7f9262bcd7878\\/28967adea2c7e8eb.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/82261b1dba2f5d04\\/0a234d6e2f179291.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/82261b1dba2f5d04\\/0a234d6e2f179291.png\",\"fwtjthqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/be4ba7d2a62ef3c6\\/42c90a9d980e12e2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/be4ba7d2a62ef3c6\\/42c90a9d980e12e2.png\",\"fwtjthqt-44\":\"\",\"fwtjthqt-45\":\"\",\"fwtjthqt-46\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbb80108dbf0a207\\/fdab28ab53e911b0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbb80108dbf0a207\\/fdab28ab53e911b0.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/14bcf34630370099\\/e8b33c4df195f902.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/14bcf34630370099\\/e8b33c4df195f902.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7403cdf4d1b9ace5\\/a804e14bf52a87ab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7403cdf4d1b9ace5\\/a804e14bf52a87ab.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/29a57be52fadf635\\/7848641b3a24a21a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/29a57be52fadf635\\/7848641b3a24a21a.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4e83f36fdf87865\\/ae9a757b3de23ae3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4e83f36fdf87865\\/ae9a757b3de23ae3.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb3b3e97fd36fb3c\\/705cc0df1427b4a3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb3b3e97fd36fb3c\\/705cc0df1427b4a3.png\",\"fwtjxhqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/56acf7c5fc5923ee\\/abd1c21cc46a0bab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/56acf7c5fc5923ee\\/abd1c21cc46a0bab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e0ac4c30994a6a\\/80b74ee1bdcfc540.png\",\"fwtjxhqt-44\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/56acf7c5fc5923ee\\/abd1c21cc46a0bab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/56acf7c5fc5923ee\\/abd1c21cc46a0bab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00debef51ecd459\\/c2b76da5ffb67968.png\",\"fwtjxhqt-45\":\"\",\"fwtjxhqt-46\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b8f0487d8d936c6\\/83937685767d623d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8b8f0487d8d936c6\\/83937685767d623d.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb8c63c4576095ad\\/637cae283b76a132.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb8c63c4576095ad\\/637cae283b76a132.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b76950a96f2a3a74\\/a73da69175522e0e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b76950a96f2a3a74\\/a73da69175522e0e.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-36\":\"\",\"fwtjyzqt-44\":\"\",\"fwtjyzqt-45\":\"\",\"fwtjyzqt-46\":\"\"}', '25', '1546668912', '1547708591', '0', '0');
INSERT INTO `product` VALUES ('26', '云烟（细支大重九）', '1', '6901028312356', '6901028312349', 'http://1.ynncp.com/static/upload/b5f9b3b0a3aee001/58e51f45be39a7d5.png', '', 'http://1.ynncp.com/static/upload/b5f9b3b0a3aee001/58e51f45be39a7d5.png', '{\"ttxm\":\"6901028312356\",\"htxm\":\"6901028312349\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"75\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"99\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b53e1ea95e6626a2\\/38d31861110b6d66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b53e1ea95e6626a2\\/38d31861110b6d66.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7c4da0fb47dc850a\\/8fbe4c15c0e6070f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7c4da0fb47dc850a\\/8fbe4c15c0e6070f.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/afc370fc5e44f7d1\\/61bbd75221d796f8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afc370fc5e44f7d1\\/61bbd75221d796f8.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6927b73640c9be86\\/c3cacc2bde1e5b88.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6927b73640c9be86\\/c3cacc2bde1e5b88.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a218443aec434baa\\/2d3d62a6e26a5053.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a218443aec434baa\\/2d3d62a6e26a5053.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d04518e05a0198e\\/16973f16fcfcc2cd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d04518e05a0198e\\/16973f16fcfcc2cd.png\",\"fwtjthqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2bead3fe53cb08c9\\/83e894d8a3cbf7bc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2bead3fe53cb08c9\\/83e894d8a3cbf7bc.png\",\"fwtjthqt-45\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e295eb8f9c167d68\\/0cd5be602f91f730.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e295eb8f9c167d68\\/0cd5be602f91f730.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/94218ad8b7565e50\\/ac37b618ec1c8a9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/94218ad8b7565e50\\/ac37b618ec1c8a9a.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d1e90ae4cf7e6ef6\\/796f032fec68790d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d1e90ae4cf7e6ef6\\/796f032fec68790d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7315ab75e04ab389\\/d584504f845565b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7315ab75e04ab389\\/d584504f845565b7.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecc660cbfe6c2d0c\\/729c0cda57495009.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ecc660cbfe6c2d0c\\/729c0cda57495009.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ad1c6abd316ac80\\/860df3107e10fe9a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8ad1c6abd316ac80\\/860df3107e10fe9a.png\",\"fwtjxhqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/190fe138e0dad6d5\\/b6fdce491040ffc2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/190fe138e0dad6d5\\/b6fdce491040ffc2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png\",\"fwtjxhqt-45\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc10fa9725df79a3\\/5c6184ea2d336bba.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dc10fa9725df79a3\\/5c6184ea2d336bba.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/43c4b5e61dd2fa10\\/3860e092d76a4be6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/43c4b5e61dd2fa10\\/3860e092d76a4be6.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31c7d6778ecb81e9\\/10d5d246d3d8a9ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31c7d6778ecb81e9\\/10d5d246d3d8a9ac.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-36\":\"\",\"fwtjyzqt-45\":\"\"}', '26', '1546668983', '1547706466', '0', '0');
INSERT INTO `product` VALUES ('27', '云烟（百味人生）', '1', '6901028056618', '6901028056601', 'http://1.ynncp.com/static/upload/c7ffd2feb105bb33/9833d3fbc4535ea8.png', '', 'http://1.ynncp.com/static/upload/c7ffd2feb105bb33/9833d3fbc4535ea8.png', '{\"ttxm\":\"6901028056618\",\"htxm\":\"6901028056601\",\"ldczwzta\":\"241\",\"dsbzcz\":\"9\",\"tysfs\":\"15\",\"tywfw\":\"20\",\"tfwwz\":\"27\",\"tfwtzms\":\"35\",\"hldtz\":\"44\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"58\",\"lbzcz\":\"62\",\"lbztzms\":\"76\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"91\",\"lzcd\":\"96\",\"jzzztz\":\"108\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"121\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"136\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e711da5c4cc6b0c3\\/cd1e5edd44bc42d1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e711da5c4cc6b0c3\\/cd1e5edd44bc42d1.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9f77c0038b4f29a\\/f37d4bd5346897ad.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c091cb3842a006a2\\/a0d48296d4244bf9.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0b67e527578e649\\/b26f98272efbf8ba.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0b67e527578e649\\/b26f98272efbf8ba.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb7ba6d577e3a37e\\/3c932a643b0656ea.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cb7ba6d577e3a37e\\/3c932a643b0656ea.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cdcb98cb6df27556\\/e37bb1a0b271ba59.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cdcb98cb6df27556\\/e37bb1a0b271ba59.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c3af968a233db781\\/921a90c4732b3d99.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c3af968a233db781\\/921a90c4732b3d99.png\",\"fwtjthqt-31\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e6b606fde35d3942\\/3282b40c5b34eb8c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e6b606fde35d3942\\/3282b40c5b34eb8c.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/162fbfe30c62ec8d\\/ec2b470ce1d1f3e4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/162fbfe30c62ec8d\\/ec2b470ce1d1f3e4.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/41ca0755bc13411a\\/bc26910de3166c31.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/41ca0755bc13411a\\/bc26910de3166c31.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c8ae2ed962172d2\\/efaa2587183839c4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1ccfe6bfc2fdfeea\\/0d08c72906e98ba3.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6f324fc17f208d3c\\/77b076209c0d71b7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e471b209d246cd6c\\/8c40f993887104d9.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd4843d92b30a46c\\/5989e11b04e3d024.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd4843d92b30a46c\\/5989e11b04e3d024.png\",\"fwtjxhqt-31\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f23c9f033bbbd32f\\/02977b91c6c62bbe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f23c9f033bbbd32f\\/02977b91c6c62bbe.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ea9e3d501339a5cc\\/8c47bf0837e84827.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ea9e3d501339a5cc\\/8c47bf0837e84827.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3ec21321833c24c\\/bd5b6aead5d1f401.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f3ec21321833c24c\\/bd5b6aead5d1f401.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-31\":\"\"}', '27', '1546669005', '1547705172', '0', '0');
INSERT INTO `product` VALUES ('28', '云烟（硬云龙）', '1', '6901028339896', '6901028339889', 'http://1.ynncp.com/static/upload/3fca7ddbfecbf18b/0f402dd81103c05d.png', '', 'http://1.ynncp.com/static/upload/3fca7ddbfecbf18b/0f402dd81103c05d.png', '{\"ttxm\":\"6901028339896\",\"htxm\":\"6901028339889\",\"ldczwzta\":\"7\",\"dsbzcz\":\"8\",\"tysfs\":\"14\",\"tywfw\":\"20\",\"tfwwz\":\"25\",\"tfwtzms\":\"32\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"49\",\"hsbzysfs\":\"58\",\"lbzcz\":\"61\",\"lbztzms\":\"70\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ebc4ca65e531033\\/3fed08d12256db98.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ebc4ca65e531033\\/3fed08d12256db98.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/47af50bb6ffb9699\\/2825dec46456aa8f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/900932b5318a6f29\\/1eb462d90bf56951.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9814e03c78a1f14f\\/e0f05a81cde51091.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9814e03c78a1f14f\\/e0f05a81cde51091.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6de60faa01cb0f3e\\/554867a7e1ed8a97.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6de60faa01cb0f3e\\/554867a7e1ed8a97.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png\",\"fwtjthqt-15\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb31ca8428b90915\\/216678ea5c012b30.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb31ca8428b90915\\/216678ea5c012b30.png\",\"fwtjthqt-16\":\"\",\"fwtjthqt-27\":\"\",\"fwtjthqt-28\":\"\",\"fwtjthqt-29\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2a723d1e054c2749\\/8650da2ccac97030.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab943e852d52cd9c\\/878601a266ff2d47.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/762414f5f3655997\\/4dd3c13010287b0d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/762414f5f3655997\\/4dd3c13010287b0d.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4bbe0f240a82111\\/4990760db889563c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f4bbe0f240a82111\\/4990760db889563c.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3a9c44016b3914fe\\/531970eeb2c8f57c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3a9c44016b3914fe\\/531970eeb2c8f57c.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0080e01d4885f8d4\\/4660d0ce9a98f0d8.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/37ccfdea18432c72\\/684e4490192f84aa.png\",\"fwtjxhqt-15\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b7c288db66002132\\/e9898cd0a6b39451.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b7c288db66002132\\/e9898cd0a6b39451.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/afeadd268a9ee7a3\\/fab7b1ccc4fa0f95.png\",\"fwtjxhqt-16\":\"\",\"fwtjxhqt-27\":\"\",\"fwtjxhqt-28\":\"\",\"fwtjxhqt-29\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/06bd16ce4e804b6b\\/ae45726aaf3adc1a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/06bd16ce4e804b6b\\/ae45726aaf3adc1a.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/31741e85bf23a6ac\\/58b49a4d5a1ebde8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/31741e85bf23a6ac\\/58b49a4d5a1ebde8.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/46680e8de3226a54\\/558a0405fc0c1ec7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/46680e8de3226a54\\/558a0405fc0c1ec7.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8d20f02091b5462e\\/d1cdfd288630b01c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8d20f02091b5462e\\/d1cdfd288630b01c.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-15\":\"\",\"fwtjyzqt-16\":\"\",\"fwtjyzqt-27\":\"\",\"fwtjyzqt-28\":\"\",\"fwtjyzqt-29\":\"\"}', '28', '1546669063', '1547779349', '0', '0');
INSERT INTO `product` VALUES ('29', '云烟（神秘花园）', '1', '6901028051880', '6901028051873', 'http://1.ynncp.com/static/upload/3d9671d411159e57/f820eeb9c3ae4627.png', '', 'http://1.ynncp.com/static/upload/3d9671d411159e57/f820eeb9c3ae4627.png', '{\"ttxm\":\"6901028051880\",\"htxm\":\"6901028051873\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"71\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"96\",\"jzzztz\":\"103\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3337a2018265c424\\/44e8a3c7ee127c0f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3337a2018265c424\\/44e8a3c7ee127c0f.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9686ea6e93dbfd0\\/c556160d6877bbc8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d9686ea6e93dbfd0\\/c556160d6877bbc8.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/517ef216e06e93f6\\/1b87bf2efdff1ea7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/517ef216e06e93f6\\/1b87bf2efdff1ea7.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e758d82e1e93d1\\/f70646b823f19eca.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/21e758d82e1e93d1\\/f70646b823f19eca.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/319d59a6d2a52de1\\/38ee8a62ed93dc7b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/319d59a6d2a52de1\\/38ee8a62ed93dc7b.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbfdf60507cd352a\\/ddc3e95ac1945937.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbfdf60507cd352a\\/ddc3e95ac1945937.png\",\"fwtjthqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e18ae4416d069838\\/92583023888b1210.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e18ae4416d069838\\/92583023888b1210.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a2d001a39eebed49\\/c10e99098997f7d8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a2d001a39eebed49\\/c10e99098997f7d8.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/950e53f4a7900175\\/e51822a485cafdcc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/950e53f4a7900175\\/e51822a485cafdcc.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2681b254a851b3fa\\/a63480d583807b7d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2681b254a851b3fa\\/a63480d583807b7d.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f5206b857f25b5b4\\/7660fcffbe42e420.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f5206b857f25b5b4\\/7660fcffbe42e420.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/de0de118d297b6fe\\/cb007298994325ff.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/de0de118d297b6fe\\/cb007298994325ff.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cfb372b316dd4e6\\/7dac0e67e030aa25.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cfb372b316dd4e6\\/7dac0e67e030aa25.png\",\"fwtjxhqt-36\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3198cd583efd831f\\/1478559375244b28.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3198cd583efd831f\\/1478559375244b28.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2633d507641a4d3a\\/15e103c9e00d81e9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2633d507641a4d3a\\/15e103c9e00d81e9.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/14117486a4681166\\/aaf75aa3e9cd07b3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/14117486a4681166\\/aaf75aa3e9cd07b3.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f164e95ac055d7e4\\/e0ab54db80932a55.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f164e95ac055d7e4\\/e0ab54db80932a55.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6b42ff4f4badd0ee\\/9eb778e9292a9ccf.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6b42ff4f4badd0ee\\/9eb778e9292a9ccf.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-36\":\"\"}', '29', '1546669090', '1547706243', '0', '0');
INSERT INTO `product` VALUES ('30', '云烟（软珍品ZJ）', '1', '6901028046657', '6901028046640', '', '', '', '{\"ttxm\":\"6901028046657\",\"htxm\":\"6901028046640\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\"}', '30', '1546669148', '1547485055', '1', '1');
INSERT INTO `product` VALUES ('31', '云烟（软礼印象）', '1', '6901028310833', '6901028310826', 'http://1.ynncp.com/static/upload/dcd8e3b3c13d08c3/122b4fdb91fc97cc.png', '', 'http://1.ynncp.com/static/upload/dcd8e3b3c13d08c3/122b4fdb91fc97cc.png', '{\"ttxm\":\"6901028310833\",\"htxm\":\"6901028310826\",\"ldczwzta\":\"6\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"39\",\"hldtwz\":\"48\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"79\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"89\",\"jzzztz\":\"110\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"128\",\"jyzlw\":\"130\",\"cxzlx\":\"135\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/16d567390ce409bc\\/0e2641511e3f187a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bc236884f19c2ac9\\/036eee4563423ccb.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fa604f397212b7b3\\/572e5d1999fea9ce.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a720401b09bc2c83\\/7be31d262fad4b83.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2806263a8ad48cd0\\/7ea92cce7005b9bd.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f703a9deb122b519\\/2b39309208cf74a5.jpg\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0423b1c622f889e1\\/7d4706955d407982.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0423b1c622f889e1\\/7d4706955d407982.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/80a01f5e93b9998a\\/d1d2872bf239efe4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/80a01f5e93b9998a\\/d1d2872bf239efe4.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/99c31ee1dfd135fb\\/e82286b9ce686b38.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/99c31ee1dfd135fb\\/e82286b9ce686b38.png\",\"fwtjthqt-30\":\"\",\"fwtjthqt-31\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/63bc381bbb0338c2\\/5e12bcc6062adfd5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/63bc381bbb0338c2\\/5e12bcc6062adfd5.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b4f3cd9f2c29fd36\\/0955d76f27c8a199.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f048485ec61a41b6\\/1de2b8ac95a34454.jpg\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a5b7e7c930ab498\\/25f78d2c24c0ab15.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9a5b7e7c930ab498\\/25f78d2c24c0ab15.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/32c956eb6fe39901\\/c0ececcb1b5a187a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/159ba09edc5493c0\\/df146d4162ef7fea.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/61e5a6bde94c3f20\\/f584aaf6b2a86184.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/625360e7e770b452\\/311b93dc55380776.jpg\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4dd65171eb042be\\/8bed09457b7a073a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4dd65171eb042be\\/8bed09457b7a073a.png\",\"fwtjxhqt-30\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/96f996afa2c54a3e\\/22cdcd29d2d9c539.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/96f996afa2c54a3e\\/22cdcd29d2d9c539.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5422df725b800897\\/f1409aa89cb10a0a.png\",\"fwtjxhqt-31\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6c34a3a8cb8eb9f4\\/e98d200e7cf37033.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6c34a3a8cb8eb9f4\\/e98d200e7cf37033.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/13ed6872f4134298\\/01fc240001820be4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/13ed6872f4134298\\/01fc240001820be4.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a1696848b02ba898\\/28696bcfd48fc32b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a1696848b02ba898\\/28696bcfd48fc32b.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/912c583604360ed3\\/1499153b6c647850.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/912c583604360ed3\\/1499153b6c647850.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-30\":\"\",\"fwtjyzqt-31\":\"\"}', '31', '1546669170', '1547778700', '0', '0');
INSERT INTO `product` VALUES ('32', '云烟（84mm细支祥瑞）', '1', '6901028312622', '6901028312615', 'http://1.ynncp.com/static/upload/af594b50755b9e0c/f8f31fb4322f30e8.png', '', 'http://1.ynncp.com/static/upload/af594b50755b9e0c/f8f31fb4322f30e8.png', '{\"ttxm\":\"6901028312622\",\"htxm\":\"6901028312615\",\"ldczwzta\":\"7\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"80\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"97\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2448feb6ff6bb6e6\\/cd86e2171ba3cfe0.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8928a05461ff1799\\/dcf783462c3411dd.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bd3b04bd92cdfef\\/8e47b182a1ef1def.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4bd3b04bd92cdfef\\/8e47b182a1ef1def.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e31fe4a7e00720fc\\/1fde4c209a094a7f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e31fe4a7e00720fc\\/1fde4c209a094a7f.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/064c2ec5a404917a\\/d187ca9d1edcd1fb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/064c2ec5a404917a\\/d187ca9d1edcd1fb.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cff54ef054eedbc\\/d69b68e9ecea4f01.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5cff54ef054eedbc\\/d69b68e9ecea4f01.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb4eb47475618223\\/2a52b457957c3ea7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fb4eb47475618223\\/2a52b457957c3ea7.png\",\"fwtjthqt-37\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/84920716e81cbcbe\\/8788d201ae01d6c4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/84920716e81cbcbe\\/8788d201ae01d6c4.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/473a5aa2135ee500\\/7580fb1a06cf37a8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/29dcfcd48df17157\\/5114bfec7b60ce63.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00748e51cc7bb5b\\/7cc2e06c2b65870d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b00748e51cc7bb5b\\/7cc2e06c2b65870d.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b65e3af0873d18c\\/1ca3cac9924a2bf7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b65e3af0873d18c\\/1ca3cac9924a2bf7.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e014f6f651c4dc7f\\/ad892cbbe8952d2e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e014f6f651c4dc7f\\/ad892cbbe8952d2e.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c22cd88893b9955\\/65ca9f8deb07895e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/5c22cd88893b9955\\/65ca9f8deb07895e.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d5c7035236fbe4c\\/988c584bd8b7d30e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d5c7035236fbe4c\\/988c584bd8b7d30e.png\",\"fwtjxhqt-37\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cee7caaaa566089f\\/b177308e1476648b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cee7caaaa566089f\\/b177308e1476648b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f8bc4465840a2938\\/68fbddb69c1c7643.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1facc40e492bd128\\/6deea75a01d78de2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1facc40e492bd128\\/6deea75a01d78de2.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b15e69d791edfdea\\/9fabadb94f1721c1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b15e69d791edfdea\\/9fabadb94f1721c1.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/752f370a8bc12258\\/62c411b9ca4a73a5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/752f370a8bc12258\\/62c411b9ca4a73a5.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-37\":\"\"}', '32', '1546669189', '1547704935', '0', '0');
INSERT INTO `product` VALUES ('33', '云烟（84mm细支雪域）', '1', '6901028313469', '6901028313452', 'http://1.ynncp.com/static/upload/8996b4e41b869e4a/058c2f2968d29f1c.png', '', 'http://1.ynncp.com/static/upload/8996b4e41b869e4a/058c2f2968d29f1c.png', '{\"ttxm\":\"6901028313469\",\"htxm\":\"6901028313452\",\"ldczwzta\":\"7\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"101\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3ef69774fee98090\\/5a34bb8654473d9f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/62849ca9f7c1103c\\/63a3f53fd07cf9c7.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a23f7c42631e2a7\\/06867926ff2d5b3f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a23f7c42631e2a7\\/06867926ff2d5b3f.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bcff59dcf57d1d0c\\/085fba1c345a8f79.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bcff59dcf57d1d0c\\/085fba1c345a8f79.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d33f537fe4c9189a\\/1ce358fc6ed0bda9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d33f537fe4c9189a\\/1ce358fc6ed0bda9.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a9d88ff5546479b\\/1f81607cd8a4c1ff.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0a9d88ff5546479b\\/1f81607cd8a4c1ff.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/004ae82be14e2e6f\\/7959dbae4924a0df.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/004ae82be14e2e6f\\/7959dbae4924a0df.png\",\"fwtjthqt-37\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e1d8e85f914e2706\\/3e998e96131d8c76.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e1d8e85f914e2706\\/3e998e96131d8c76.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/05781bf31ff9f087\\/018e3c1a5508a680.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d4eeae7746ec766c\\/4e663a7139a2f50c.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/457aa525dda5810f\\/1d774b35de276604.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/457aa525dda5810f\\/1d774b35de276604.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb0300ea7c8e2b6c\\/5e780029d3a1a008.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bb0300ea7c8e2b6c\\/5e780029d3a1a008.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/88c12d4e66e07b8b\\/7adf5640e681c14e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/88c12d4e66e07b8b\\/7adf5640e681c14e.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/aae7ea1952321c46\\/17588f28ab0c9459.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/aae7ea1952321c46\\/17588f28ab0c9459.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8138411439383c71\\/21107663f7acda20.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8138411439383c71\\/21107663f7acda20.png\",\"fwtjxhqt-37\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/246068d74aba4f6f\\/4ffa48ce2a91b35f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/246068d74aba4f6f\\/4ffa48ce2a91b35f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9d7fc249e2535c24\\/4e6d422d12b5bb1d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9d7fc249e2535c24\\/4e6d422d12b5bb1d.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d79d262a12ad6f9\\/3ad8555aff8d9f18.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3d79d262a12ad6f9\\/3ad8555aff8d9f18.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6a350802ed7af049\\/a7e97e80d9f90abe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6a350802ed7af049\\/a7e97e80d9f90abe.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e2b8b20cdc9df625\\/e27319b3b1f41eee.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e2b8b20cdc9df625\\/e27319b3b1f41eee.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-37\":\"\"}', '33', '1546669209', '1547705007', '0', '0');
INSERT INTO `product` VALUES ('34', '云烟（乌镇之恋）', '1', '6901028313018', '6901028313001', '', '', '', '{\"ttxm\":\"6901028313018\",\"htxm\":\"6901028313001\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '34', '1546669243', null, '0', '1');
INSERT INTO `product` VALUES ('35', '云烟（小云端）', '1', '6901028313858', '6901028313841', 'http://1.ynncp.com/static/upload/fe018e6cf8340d1d/1116dc6ccb30c23a.png', '', 'http://1.ynncp.com/static/upload/fe018e6cf8340d1d/1116dc6ccb30c23a.png', '{\"ttxm\":\"6901028313858\",\"htxm\":\"6901028313841\",\"ldczwzta\":\"16\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"84\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"94\",\"lzcd\":\"96\",\"jzzztz\":\"167\",\"jzzcd\":\"116\",\"jzzywdk\":\"119\",\"jzzdkfs\":\"122\",\"dkps\":\"126\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"137\",\"yszc\":\"142\",\"zzyy\":\"143\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/598531e93cb71c91\\/5a72191848d6ea21.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/598531e93cb71c91\\/5a72191848d6ea21.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a9ab16c9ca306f95\\/d222084489ee8aa8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a9ab16c9ca306f95\\/d222084489ee8aa8.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3be47e67e388971c\\/d74120976284bcc9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3be47e67e388971c\\/d74120976284bcc9.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/36e6061e8af15474\\/24136304c68cd54e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/36e6061e8af15474\\/24136304c68cd54e.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/33897b4897ebbd21\\/39ed2b951fb0696f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/33897b4897ebbd21\\/39ed2b951fb0696f.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ee7d9c75b831897b\\/afb2d10f544afa6f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ee7d9c75b831897b\\/afb2d10f544afa6f.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2519393a23b1c065\\/42577660e8fef0b6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2519393a23b1c065\\/42577660e8fef0b6.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a182e3c007b68683\\/5bce32bf09c15534.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a182e3c007b68683\\/5bce32bf09c15534.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/679895e3fbb0666c\\/df3d3fe39d9a0291.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/679895e3fbb0666c\\/df3d3fe39d9a0291.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4f850f2c2e287e\\/d4c1d33b8fa588e1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7d4f850f2c2e287e\\/d4c1d33b8fa588e1.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/829c263e0c458702\\/c0d1ddb5fe654864.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/829c263e0c458702\\/c0d1ddb5fe654864.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2de5c2dbfb9c613d\\/cad874f1f54a319d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2de5c2dbfb9c613d\\/cad874f1f54a319d.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b627ec078399a96a\\/78a58a520665dcc6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b627ec078399a96a\\/78a58a520665dcc6.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f57b271b2b69fe9c\\/ee5f3cb7baa0fafa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f57b271b2b69fe9c\\/ee5f3cb7baa0fafa.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/53548a15b80af9ce\\/a3943b81c955af66.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/53548a15b80af9ce\\/a3943b81c955af66.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\"}', '35', '1546669260', '1547484991', '0', '0');
INSERT INTO `product` VALUES ('36', '云烟（塞上好江南）', '1', '6901028312981', '6901028312974', '', '', '', '{\"ttxm\":\"6901028312981\",\"htxm\":\"6901028312974\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '36', '1546669277', null, '0', '1');
INSERT INTO `product` VALUES ('37', '云烟（74mm香格里拉）', '1', '6901028313735', '6901028313728', 'http://1.ynncp.com/static/upload/374e5af1f3ce2bff/4ae226dc0c967359.png', '', 'http://1.ynncp.com/static/upload/374e5af1f3ce2bff/4ae226dc0c967359.png', '{\"ttxm\":\"6901028313735\",\"htxm\":\"6901028313728\",\"ldczwzta\":\"7\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"87\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"101\",\"jzzcd\":\"114\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"123\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d5849deb900f6aa8\\/fabe1cd06cfc8c27.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d5849deb900f6aa8\\/fabe1cd06cfc8c27.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fd7fc7447a68dcb4\\/0936f8033537a0fe.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/329e534d7ac5dd45\\/50f6f451d502214b.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a216e35adf3d4364\\/2038d6cb4be67073.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a216e35adf3d4364\\/2038d6cb4be67073.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b24fc20e41d1180\\/53cfa6136e72fe59.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7b24fc20e41d1180\\/53cfa6136e72fe59.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3adb8cb424466751\\/9434cefdfdcc31ff.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3adb8cb424466751\\/9434cefdfdcc31ff.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/11ded33092b77c10\\/a4c3d980efcfcd25.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/11ded33092b77c10\\/a4c3d980efcfcd25.png\",\"fwtjthqt-34\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdc50b56c6e8797\\/baa66c278d9d1adb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9fdc50b56c6e8797\\/baa66c278d9d1adb.png\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3156e3096ed917eb\\/d15bb30e15343a86.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8067d54d9e07c094\\/7163f2b968a2fa60.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e613b81911967f48\\/b31883cac62b8705.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e613b81911967f48\\/b31883cac62b8705.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85e4c59e094bc8a\\/2d06c2e99ee40276.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f85e4c59e094bc8a\\/2d06c2e99ee40276.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e0c3b064d1bdc4ee\\/c7b1596261a74fc2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e0c3b064d1bdc4ee\\/c7b1596261a74fc2.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4290d3aa8f010ef0\\/0d4b822dd8cdf779.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4290d3aa8f010ef0\\/0d4b822dd8cdf779.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab57bdae15f7635d\\/26cc19cd05bfff0e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ab57bdae15f7635d\\/26cc19cd05bfff0e.png\",\"fwtjxhqt-34\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c8d70646c9268b85\\/12bf8223bb4b0c23.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c8d70646c9268b85\\/12bf8223bb4b0c23.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/308c255146139006\\/9c6bc1383ac44133.png\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/24357a22aca669f2\\/e4fe93dac675d8c9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/24357a22aca669f2\\/e4fe93dac675d8c9.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9994d1c7e0f4ef26\\/4638ce9f68bda18c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9994d1c7e0f4ef26\\/4638ce9f68bda18c.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6dfff69fe19c6a3a\\/e4f04290fff18f04.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6dfff69fe19c6a3a\\/e4f04290fff18f04.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-34\":\"\"}', '37', '1546669303', '1547704858', '0', '0');
INSERT INTO `product` VALUES ('38', '呼伦贝尔（草原情）', '14', '6901028313612', '6901028313605', '', '', '', '{\"ttxm\":\"6901028313612\",\"htxm\":\"6901028313605\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '38', '1546669454', null, '0', '1');
INSERT INTO `product` VALUES ('39', '呼伦贝尔（金戈铁马）', '14', '6901028312530', '6901028312523', '', '', '', '{\"ttxm\":\"6901028312530\",\"htxm\":\"6901028312523\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '39', '1546669484', null, '0', '1');
INSERT INTO `product` VALUES ('40', '呼伦贝尔（金帐汗）', '14', '6901028313193', '6901028313186', '', '', '', '{\"ttxm\":\"6901028313193\",\"htxm\":\"6901028313186\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '40', '1546669509', null, '0', '1');
INSERT INTO `product` VALUES ('41', '呼伦贝尔（天堂草原）', '14', '6901028056670', '6901028056663', '', '', '', '{\"ttxm\":\"6901028056670\",\"htxm\":\"6901028056663\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '41', '1546669528', null, '0', '1');
INSERT INTO `product` VALUES ('42', '茶花（94mm）', '14', '6901028045490', '6901028045483', 'http://1.ynncp.com/static/upload/8c51c624dfa32a30/4c275ef191ca0b4a.png', '', 'http://1.ynncp.com/static/upload/8c51c624dfa32a30/4c275ef191ca0b4a.png', '{\"ttxm\":\"6901028045490\",\"htxm\":\"6901028045483\",\"ldczwzta\":\"3\",\"dsbzcz\":\"9\",\"tysfs\":\"12\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"42\",\"hldtwz\":\"47\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"56\",\"lbzcz\":\"61\",\"lbztzms\":\"63\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"100\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"125\",\"jyzys\":\"127\",\"jyzlw\":\"131\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bec303633627233e\\/0cea87627fd7df08.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/38cf62a4ee9af746\\/d921c2d674d25904.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2e97fe61831ade58\\/cdfc771e7d8f0295.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e1b53d84a0c0c3dd\\/f90f8a58ffd10d30.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/efeec49617bde699\\/25c0318eae85c80d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0be1fecd368d7366\\/3dab669027b9fd11.jpg\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1596261e50f0f6ca\\/417b1a30989e41fc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1596261e50f0f6ca\\/417b1a30989e41fc.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e0965c1e2c66a0b\\/164d846a5b369d82.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1e0965c1e2c66a0b\\/164d846a5b369d82.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/819c62f903867b5d\\/284d01c883f7297a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/819c62f903867b5d\\/284d01c883f7297a.png\",\"fwtjthqt-35\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/948a46d42df07c5b\\/6a9e7e6fe06ac288.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/77f85d39483b1f8a\\/71f065f2ec64393b.jpg\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1455cbb8a5de2963\\/b70e2775f8112bc5.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1455cbb8a5de2963\\/b70e2775f8112bc5.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf5896ace522b5d2\\/6f0b4cd802226a45.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf5896ace522b5d2\\/6f0b4cd802226a45.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/baa2806b4254e292\\/ca672d044189831e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b65d0e3ed852fbd8\\/ae504d1495396e0f.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b431811e17daea3d\\/282b5872c9267a8b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b431811e17daea3d\\/282b5872c9267a8b.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/103dd9e5921a3143\\/87f05f98c2c65815.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/103dd9e5921a3143\\/87f05f98c2c65815.png\",\"fwtjxhqt-35\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ce8374a24dbe4abd\\/4903247e95a190b3.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ce8374a24dbe4abd\\/4903247e95a190b3.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac1243584ed8d4b8\\/f23655f23fe861aa.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ac1243584ed8d4b8\\/f23655f23fe861aa.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/056bcad706c0ae30\\/44da8d9e730de363.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/056bcad706c0ae30\\/44da8d9e730de363.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-35\":\"\"}', '42', '1546669552', '1547484952', '0', '0');
INSERT INTO `product` VALUES ('43', '钓鱼台（中支）', '14', '6901028340649', '6901028340632', 'http://1.ynncp.com/static/upload/ac60c2bfa1087e0c/51019f8d19624665.png', '', 'http://1.ynncp.com/static/upload/ac60c2bfa1087e0c/51019f8d19624665.png', '{\"ttxm\":\"6901028340649\",\"htxm\":\"6901028340632\",\"ldczwzta\":\"16\",\"dsbzcz\":\"9\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"48\",\"hsbzcz\":\"52\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"68\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"89\",\"lzcd\":\"96\",\"jzzztz\":\"97\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"140\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde1d0fbbd30714b\\/bcf5089c83c806ac.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dde1d0fbbd30714b\\/bcf5089c83c806ac.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/33c8d55b6b0d8920\\/b55b397435339567.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/33c8d55b6b0d8920\\/b55b397435339567.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1d96589644cc64dd\\/8a5bcd9fd870ee5b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/1d96589644cc64dd\\/8a5bcd9fd870ee5b.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/10f21aebc3daa7e2\\/48bfe0cd079dd4cb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/10f21aebc3daa7e2\\/48bfe0cd079dd4cb.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/1f92b6a38c615eb5\\/39191fdbed5011a9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4e3eec761793caf2\\/8e2b1c1c042475a6.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4e3eec761793caf2\\/8e2b1c1c042475a6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4e3eec761793caf2\\/8e2b1c1c042475a6.png\",\"fwtjthqt-47\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/6f2e6561a7b4d01a\\/6de081fa5264d9c8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6f2e6561a7b4d01a\\/6de081fa5264d9c8.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbaafc75b38ec7a4\\/f354786bbb31bd96.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/dbaafc75b38ec7a4\\/f354786bbb31bd96.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4ae6102837b012d7\\/abee263c8bd4c730.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4ae6102837b012d7\\/abee263c8bd4c730.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ce6f3ecb6bb03eea\\/a5f5dd9ad49a70ab.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ce6f3ecb6bb03eea\\/a5f5dd9ad49a70ab.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/60eecf9c244da222\\/b4c61c37ce8e23da.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/60eecf9c244da222\\/b4c61c37ce8e23da.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f154844ed0b93213\\/acd0ec44efcc6f7a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f154844ed0b93213\\/acd0ec44efcc6f7a.png\",\"fwtjxhqt-47\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4e0ff1086ab31143\\/f6be2f127a805195.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4e0ff1086ab31143\\/f6be2f127a805195.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/fce305793e9c9134\\/bd3313697d654b8e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/fce305793e9c9134\\/bd3313697d654b8e.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/37dd7e996d90a29a\\/94995a25968c1215.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/37dd7e996d90a29a\\/94995a25968c1215.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-47\":\"\"}', '43', '1546669582', '1547484941', '0', '0');
INSERT INTO `product` VALUES ('44', '钓鱼台（84mm细支）', '14', '6901028056854', '6901028056847', 'http://1.ynncp.com/static/upload/f0d85cbf0743d6d6/4052d9c541910852.png', '', 'http://1.ynncp.com/static/upload/f0d85cbf0743d6d6/4052d9c541910852.png', '{\"ttxm\":\"6901028056854\",\"htxm\":\"6901028056847\",\"ldczwzta\":\"16\",\"dsbzcz\":\"19\",\"tysfs\":\"13\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"43\",\"hldtwz\":\"47\",\"hsbzcz\":\"54\",\"hsbzysfs\":\"57\",\"lbzcz\":\"61\",\"lbztzms\":\"69\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"89\",\"lzcd\":\"95\",\"jzzztz\":\"101\",\"jzzcd\":\"116\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"132\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b4cb303b83f496f7\\/0924bed8e0631c92.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b4cb303b83f496f7\\/0924bed8e0631c92.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/334bc7bb89f9bbef\\/76b8e80b0a2665d2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/334bc7bb89f9bbef\\/76b8e80b0a2665d2.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/10044b78be24da81\\/fc9368fe4b1d25c4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/10044b78be24da81\\/fc9368fe4b1d25c4.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/a73c13349a988de0\\/c7a50ff979deb798.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/a73c13349a988de0\\/c7a50ff979deb798.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/716d2980ae3ec618\\/d08949b59349cd64.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/716d2980ae3ec618\\/d08949b59349cd64.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/738e588e7a5358bd\\/39a3249a29f5fd3e.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/738e588e7a5358bd\\/39a3249a29f5fd3e.png\",\"fwtjthqt-37\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b601db327ce2aad2\\/26b913062a1f1967.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b601db327ce2aad2\\/26b913062a1f1967.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/af26302c209d4832\\/b9a419c80159749f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/af26302c209d4832\\/b9a419c80159749f.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3d89b2562a3bbd4\\/e92c811d56beeef6.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/e3d89b2562a3bbd4\\/e92c811d56beeef6.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ebd9803067ee523a\\/7515bf7c9481b892.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ebd9803067ee523a\\/7515bf7c9481b892.png\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/232fb029023af3b7\\/f25883ce8018421a.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/232fb029023af3b7\\/f25883ce8018421a.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/88034c0415caeac6\\/b7832e4807624596.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/88034c0415caeac6\\/b7832e4807624596.png\",\"fwtjxhqt-37\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbf9d41c600d26e9\\/2119c114ea7f2351.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bbf9d41c600d26e9\\/2119c114ea7f2351.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bdb052cc18704166\\/bbb3a276950871ec.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bdb052cc18704166\\/bbb3a276950871ec.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/8dec00bf82a65a62\\/b7d832838f1e7e9d.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/8dec00bf82a65a62\\/b7d832838f1e7e9d.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-37\":\"\"}', '44', '1546669600', '1547484923', '0', '0');
INSERT INTO `product` VALUES ('45', '钓鱼台（硬景泰蓝94mm）', '14', '6901028310086', '6901028310079', '', '', '', '{\"ttxm\":\"6901028310086\",\"htxm\":\"6901028310079\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '45', '1546669839', null, '0', '1');
INSERT INTO `product` VALUES ('46', '钓鱼台（黄景泰蓝出口）（SG版）', '14', '6901028056731', '6901028056724', '', '', '', '{\"ttxm\":\"6901028056731\",\"htxm\":\"6901028056724\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '46', '1546669858', null, '0', '1');
INSERT INTO `product` VALUES ('47', '钓鱼台（黄景泰蓝出口）（MAC版）', '14', '6901028311618', '6901028311601', '', '', '', '{\"ttxm\":\"6901028311618\",\"htxm\":\"6901028311601\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '47', '1546669891', null, '0', '1');
INSERT INTO `product` VALUES ('48', '雪莲（74mm天韵）', '14', '6901028340793', '6901028340786', 'http://1.ynncp.com/static/upload/4c0cf0a6deaa5c47/9ebfbcf1dc118d2d.png', '', 'http://1.ynncp.com/static/upload/4c0cf0a6deaa5c47/9ebfbcf1dc118d2d.png', '{\"ttxm\":\"6901028340793\",\"htxm\":\"6901028340786\",\"ldczwzta\":\"7\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"40\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"82\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"88\",\"lzcd\":\"95\",\"jzzztz\":\"112\",\"jzzcd\":\"114\",\"jzzywdk\":\"119\",\"jzzdkfs\":\"122\",\"dkps\":\"126\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"134\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/10a8f3a2528470b5\\/07a36d3493535e2f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/10a8f3a2528470b5\\/07a36d3493535e2f.png\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/17b674f4b333152d\\/3c2ec40445bfd376.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/13146bf19d33719d\\/daa35e4e1e8fd5b5.jpg\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/4dcfd0051b873ae3\\/67558cb1d7ca3161.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/4dcfd0051b873ae3\\/67558cb1d7ca3161.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0208ba9b64a8291\\/38973084fb34ffde.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b0208ba9b64a8291\\/38973084fb34ffde.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/2a38ced9e2ac4900\\/065799c5927d2a67.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/2a38ced9e2ac4900\\/065799c5927d2a67.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/f173e9282f167e0a\\/b13df4b7afcc5298.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/f173e9282f167e0a\\/b13df4b7afcc5298.png\",\"fwtjthqt-34\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/76ca73eb8094b818\\/c4cdd863ffc98ae8.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/76ca73eb8094b818\\/c4cdd863ffc98ae8.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d06e1c07a8436a88\\/6fb29d6768586677.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d06e1c07a8436a88\\/6fb29d6768586677.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/50c6d26dee86fbc1\\/32dfec6c721a2b9f.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/50c6d26dee86fbc1\\/32dfec6c721a2b9f.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9524cf33edd8e4cd\\/bde08e313248b6de.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/6d2a4ff766c2c46a\\/a550e9f4427de319.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0b99c92abe2bc8f9\\/95a9085392ab46a9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0b99c92abe2bc8f9\\/95a9085392ab46a9.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/33840b781f1434ab\\/6e5e838be5adc799.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/33840b781f1434ab\\/6e5e838be5adc799.png\",\"fwtjxhqt-34\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0839b7723035b062\\/028c209884b7909c.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/0839b7723035b062\\/028c209884b7909c.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbc416f80e16bc8\\/b30f70ecc8b542e2.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dbc416f80e16bc8\\/b30f70ecc8b542e2.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/bdd123e70a306052\\/d7d0c3a3350b4a3b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/bdd123e70a306052\\/d7d0c3a3350b4a3b.png\",\"fwtjyzyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/ef87e72635e82af8\\/c176f2f170d6a744.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/ef87e72635e82af8\\/c176f2f170d6a744.png\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-34\":\"\"}', '48', '1546669919', '1547484899', '0', '0');
INSERT INTO `product` VALUES ('49', '雪莲（3000）', '14', '6901028313100', '6901028313094', '', '', '', '{\"ttxm\":\"6901028313100\",\"htxm\":\"6901028313094\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '49', '1546669941', '1546850891', '0', '1');
INSERT INTO `product` VALUES ('50', '雪莲(岁月)', '14', '6901028331111', '6901028331104', '', '', '', '{\"ttxm\":\"6901028331111\",\"htxm\":\"6901028331104\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '50', '1546669973', null, '0', '1');
INSERT INTO `product` VALUES ('51', '雪莲(尚禧)', '14', '6901028023054', '6901028023047', '', '', '', '{\"ttxm\":\"6901028023054\",\"htxm\":\"6901028023047\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '51', '1546670059', null, '0', '1');
INSERT INTO `product` VALUES ('52', '雪莲(软蓝)', '14', '6901028331029', '6901028331012', '', '', '', '{\"ttxm\":\"6901028331029\",\"htxm\":\"6901028331012\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '52', '1546670077', null, '0', '1');
INSERT INTO `product` VALUES ('53', '雪莲(蓝精品)', '14', '6901028022965', '6901028022958', '', '', '', '{\"ttxm\":\"6901028022965\",\"htxm\":\"6901028022958\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '53', '1546670095', null, '0', '1');
INSERT INTO `product` VALUES ('54', '红河（去野）', '2', '6901028313919', '6901028313902', 'http://1.ynncp.com/static/upload/bf0ad86c1aa1174a/9ff9e3844c463533.png', '', 'http://1.ynncp.com/static/upload/bf0ad86c1aa1174a/9ff9e3844c463533.png', '{\"ttxm\":\"6901028313919\",\"htxm\":\"6901028313902\",\"ldczwzta\":\"17\",\"dsbzcz\":\"163\",\"tysfs\":\"144\",\"tywfw\":\"21\",\"tfwwz\":\"28\",\"tfwtzms\":\"36\",\"hldtz\":\"45\",\"hldtwz\":\"47\",\"hsbzcz\":\"164\",\"hsbzysfs\":\"60\",\"lbzcz\":\"61\",\"lbztzms\":\"78\",\"hfwwz\":\"145\",\"hfwtzms\":\"153\",\"lzlx\":\"92\",\"lzcd\":\"95\",\"jzzztz\":\"109\",\"jzzcd\":\"117\",\"jzzywdk\":\"118\",\"jzzdkfs\":\"120\",\"dkps\":\"124\",\"jyzys\":\"127\",\"jyzlw\":\"130\",\"cxzlx\":\"133\",\"yszc\":\"139\",\"zzyy\":\"141\",\"fwtjthzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7f38cdbbffb3e60f\\/aefa744119be04f7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/81d5bbe6fe63df3c\\/2b60b028f2fde596.jpg\",\"fwtjthbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/c6ed42545c16412d\\/66b0766e031e6632.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/c6ed42545c16412d\\/66b0766e031e6632.png\",\"fwtjthzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/eabd19fb32184051\\/f3679cf5f386c4c4.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/eabd19fb32184051\\/f3679cf5f386c4c4.png\",\"fwtjthyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/64ff939598ad30b7\\/164834234905fd9b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/64ff939598ad30b7\\/164834234905fd9b.png\",\"fwtjthdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c648f92eeef596b\\/05bff437b4cccb79.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9c648f92eeef596b\\/05bff437b4cccb79.png\",\"fwtjthdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/03a6052bd6d05053\\/b744e2120c95a4ec.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/03a6052bd6d05053\\/b744e2120c95a4ec.png\",\"fwtjthqt-35\":\"\",\"fwtjxhzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/72bb3894cf9f9f42\\/4988fd2f4be3b1ee.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/72bb3894cf9f9f42\\/4988fd2f4be3b1ee.png\",\"fwtjxhbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/7abf6de4d92c792c\\/dd1b4f90e6bf51d7.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/7abf6de4d92c792c\\/dd1b4f90e6bf51d7.png\",\"fwtjxhzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf3e68b4da3a34a2\\/0a45020dbcf178e1.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/cf3e68b4da3a34a2\\/0a45020dbcf178e1.png\",\"fwtjxhyc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/0e14751592248c45\\/000193260effab31.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/9e71413bdb0df0f2\\/85e14b8888ebad85.jpg\",\"fwtjxhdb\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/d0739accba01044a\\/d12dffa0affa8604.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/d0739accba01044a\\/d12dffa0affa8604.png\",\"fwtjxhdb2\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/87d0fd93dd0d2227\\/6ae48fe5e5ac6bcb.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/87d0fd93dd0d2227\\/6ae48fe5e5ac6bcb.png\",\"fwtjxhqt-35\":\"\",\"fwtjyzzm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dc0535507db631f\\/c48ce59b834e590b.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/3dc0535507db631f\\/c48ce59b834e590b.png\",\"fwtjyzbm\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/827d53cc6f6b8a70\\/74b8af47e2788db9.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/827d53cc6f6b8a70\\/74b8af47e2788db9.png\",\"fwtjyzzc\":\"http:\\/\\/1.ynncp.com\\/static\\/upload\\/b764d67b994d324c\\/c4079a821d564dfc.png|http:\\/\\/1.ynncp.com\\/static\\/upload\\/b764d67b994d324c\\/c4079a821d564dfc.png\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt-35\":\"\"}', '54', '1546670138', '1547484799', '0', '0');
INSERT INTO `product` VALUES ('55', '红河（道）', '2', '6901028055482', '6901028055185', '', '', '', '{\"ttxm\":\"6901028055482\",\"htxm\":\"6901028055185\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '55', '1546670236', null, '0', '1');
INSERT INTO `product` VALUES ('56', '红河（软88）', '2', '6901028055383', '6901028055086', '', '', '', '{\"ttxm\":\"6901028055383\",\"htxm\":\"6901028055086\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '56', '1546670265', null, '0', '1');
INSERT INTO `product` VALUES ('57', '红河（软99）', '2', '6901028055390', '6901028055093', '', '', '', '{\"ttxm\":\"6901028055390\",\"htxm\":\"6901028055093\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '57', '1546670288', null, '0', '1');
INSERT INTO `product` VALUES ('58', '红河（小熊猫世纪风）', '2', '6901028311465', '6901028311458', '', '', '', '{\"ttxm\":\"6901028311465\",\"htxm\":\"6901028311458\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '58', '1546670316', null, '0', '1');
INSERT INTO `product` VALUES ('59', '红河（硬）', '2', '6901028055338', '6901028055031', '', '', '', '{\"ttxm\":\"6901028055338\",\"htxm\":\"6901028055031\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '59', '1546670336', null, '0', '1');
INSERT INTO `product` VALUES ('60', '红河（硬88）', '2', '6901028055352', '6901028055055', '', '', '', '{\"ttxm\":\"6901028055352\",\"htxm\":\"6901028055055\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '60', '1546670356', null, '0', '1');
INSERT INTO `product` VALUES ('61', '红河（硬99）', '2', '6901028055369', '6901028055062', '', '', '', '{\"ttxm\":\"6901028055369\",\"htxm\":\"6901028055062\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '61', '1546670390', null, '0', '1');
INSERT INTO `product` VALUES ('62', '红河（硬V8）', '2', '6901028055376', '6901028055079', '', '', '', '{\"ttxm\":\"6901028055376\",\"htxm\":\"6901028055079\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '62', '1546670406', null, '0', '1');
INSERT INTO `product` VALUES ('63', '红河（软甲）', '2', '6901028055314', '6901028055024', '', '', '', '{\"ttxm\":\"6901028055314\",\"htxm\":\"6901028055024\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '63', '1546670426', null, '0', '1');
INSERT INTO `product` VALUES ('64', '红河（硬66）', '2', '6901028055475', '6901028055178', '', '', '', '{\"ttxm\":\"6901028055475\",\"htxm\":\"6901028055178\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '64', '1546670445', null, '0', '1');
INSERT INTO `product` VALUES ('65', '小熊猫（软珍品出口）', '14', '6901028337823', '6901028337816', '', '', '', '{\"ttxm\":\"6901028337823\",\"htxm\":\"6901028337816\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '65', '1546670464', null, '0', '1');
INSERT INTO `product` VALUES ('66', '小熊猫(精品出口)', '14', '6901028337649', '6901028337656', '', '', '', '{\"ttxm\":\"6901028337649\",\"htxm\":\"6901028337656\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '66', '1546670488', null, '0', '1');
INSERT INTO `product` VALUES ('67', '玉溪(合和)', '3', '6901028054140', '6901028054133', '', '', '', '{\"ttxm\":\"6901028054140\",\"htxm\":\"6901028054133\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '67', '1546670519', '1546670532', '0', '1');
INSERT INTO `product` VALUES ('68', '玉溪(软小庄园DF)', '3', '6901028047166', '6901028047111', '', '', '', '{\"ttxm\":\"6901028047166\",\"htxm\":\"6901028047111\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '68', '1546670556', null, '0', '1');
INSERT INTO `product` VALUES ('69', '玉溪(软小庄园出口MO)', '3', '6901028052634', '6901028052627', '', '', '', '{\"ttxm\":\"6901028052634\",\"htxm\":\"6901028052627\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '69', '1546670584', null, '0', '1');
INSERT INTO `product` VALUES ('70', '玉溪(软小庄园出口TWDF)', '3', '6901028052665', '6901028052658', '', '', '', '{\"ttxm\":\"6901028052665\",\"htxm\":\"6901028052658\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '70', '1546670617', null, '0', '1');
INSERT INTO `product` VALUES ('71', '玉溪(硬DF)', '3', '6901028316217', '6901028316200', '', '', '', '{\"ttxm\":\"6901028316217\",\"htxm\":\"6901028316200\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '71', '1546670638', null, '0', '1');
INSERT INTO `product` VALUES ('72', '玉溪(硬出口)', '3', '6901028047968', '6901028047951', '', '', '', '{\"ttxm\":\"6901028047968\",\"htxm\":\"6901028047951\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '72', '1546670655', null, '0', '1');
INSERT INTO `product` VALUES ('73', '玉溪(硬金DF)', '3', '6901028316255', '6901028316248', '', '', '', '{\"ttxm\":\"6901028316255\",\"htxm\":\"6901028316248\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '73', '1546670718', null, '0', '1');
INSERT INTO `product` VALUES ('74', '玉溪(硬金US)', '3', '6901028315715', '6901028315708', '', '', '', '{\"ttxm\":\"6901028315715\",\"htxm\":\"6901028315708\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '74', '1546670740', null, '0', '1');
INSERT INTO `product` VALUES ('75', '玉溪(硬庄园16支DF)', '3', '6901028048200', '6901028048194', '', '', '', '{\"ttxm\":\"6901028048200\",\"htxm\":\"6901028048194\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '75', '1546670763', null, '0', '1');
INSERT INTO `product` VALUES ('76', '玉溪(硬扁铂金出口)', '3', '6901028316729', '6901028316712', '', '', '', '{\"ttxm\":\"6901028316729\",\"htxm\":\"6901028316712\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '76', '1546670783', null, '0', '1');
INSERT INTO `product` VALUES ('77', '玉溪(硬扁出口TWDF)', '3', '6901028052085', '6901028052078', '', '', '', '{\"ttxm\":\"6901028052085\",\"htxm\":\"6901028052078\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '77', '1546670804', null, '0', '1');
INSERT INTO `product` VALUES ('78', '玉溪(硬扁DF)', '3', '6901028316484', '6901028316453', '', '', '', '{\"ttxm\":\"6901028316484\",\"htxm\":\"6901028316453\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '78', '1546670830', null, '0', '1');
INSERT INTO `product` VALUES ('79', '玉溪(硬扁MO)', '3', '6901028048484', '6901028048477', '', '', '', '{\"ttxm\":\"6901028048484\",\"htxm\":\"6901028048477\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '79', '1546670851', null, '0', '1');
INSERT INTO `product` VALUES ('80', '玉溪(硬扁铂金DF)', '3', '6901028316545', '6901028316538', '', '', '', '{\"ttxm\":\"6901028316545\",\"htxm\":\"6901028316538\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '80', '1546670871', null, '0', '1');
INSERT INTO `product` VALUES ('81', '玉溪(硬扁出口)', '3', '6901028314510', '6901028314503', '', '', '', '{\"ttxm\":\"6901028314510\",\"htxm\":\"6901028314503\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '81', '1546670890', null, '0', '1');
INSERT INTO `product` VALUES ('82', '玉溪(硬扁和谐DF)', '3', '6901028317870', '6901028317863', '', '', '', '{\"ttxm\":\"6901028317870\",\"htxm\":\"6901028317863\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '82', '1546671083', null, '0', '1');
INSERT INTO `product` VALUES ('83', '玉溪(华叶)', '3', '6901028054980', '6901028054973', '', '', '', '{\"ttxm\":\"6901028054980\",\"htxm\":\"6901028054973\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '83', '1546671101', null, '0', '1');
INSERT INTO `product` VALUES ('84', '玉溪(软境界)', '3', '6901028316125', '6901028316002', '', '', '', '{\"ttxm\":\"6901028316125\",\"htxm\":\"6901028316002\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '84', '1546671148', null, '0', '1');
INSERT INTO `product` VALUES ('85', '玉溪(软小庄园)', '3', '6901028048682', '6901028048675', '', '', '', '{\"ttxm\":\"6901028048682\",\"htxm\":\"6901028048675\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '85', '1546671183', null, '0', '1');
INSERT INTO `product` VALUES ('86', '玉溪(透明)', '3', '6901028052726', '6901028052719', '', '', '', '{\"ttxm\":\"6901028052726\",\"htxm\":\"6901028052719\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '86', '1546671203', null, '0', '1');
INSERT INTO `product` VALUES ('87', '玉溪(细支庄园)', '3', '6901028052788', '6901028052771', '', '', '', '{\"ttxm\":\"6901028052788\",\"htxm\":\"6901028052771\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '87', '1546671224', null, '0', '1');
INSERT INTO `product` VALUES ('88', '玉溪(细支清香世家)', '3', '6901028054447', '6901028054430', '', '', '', '{\"ttxm\":\"6901028054447\",\"htxm\":\"6901028054430\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '88', '1546671242', null, '0', '1');
INSERT INTO `product` VALUES ('89', '玉溪(硬金出口)', '3', '6901028047906', '6901028047890', '', '', '', '{\"ttxm\":\"6901028047906\",\"htxm\":\"6901028047890\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '89', '1546671320', null, '0', '1');
INSERT INTO `product` VALUES ('90', '玉溪(田园)', '3', '6901028052306', '6901028052290', '', '', '', '{\"ttxm\":\"6901028052306\",\"htxm\":\"6901028052290\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '90', '1546671340', null, '0', '1');
INSERT INTO `product` VALUES ('91', '玉溪(软尚善)', '3', '6901028315197', '6901028315180', '', '', '', '{\"ttxm\":\"6901028315197\",\"htxm\":\"6901028315180\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '91', '1546671459', null, '0', '1');
INSERT INTO `product` VALUES ('92', '玉溪(软)', '3', '6901028317177', '6901028317122', '', '', '', '{\"ttxm\":\"6901028317177\",\"htxm\":\"6901028317122\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '92', '1546671478', null, '0', '1');
INSERT INTO `product` VALUES ('93', '玉溪(清香世家)', '3', '6901028054201', '6901028054195', '', '', '', '{\"ttxm\":\"6901028054201\",\"htxm\":\"6901028054195\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '93', '1546671500', null, '0', '1');
INSERT INTO `product` VALUES ('94', '玉溪(硬庄园16支)', '3', '6901028317672', '6901028317641', '', '', '', '{\"ttxm\":\"6901028317672\",\"htxm\":\"6901028317641\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '94', '1546671532', null, '0', '1');
INSERT INTO `product` VALUES ('95', '玉溪(创客)', '3', '6901028054898', '6901028054881', '', '', '', '{\"ttxm\":\"6901028054898\",\"htxm\":\"6901028054881\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '95', '1546671563', null, '0', '1');
INSERT INTO `product` VALUES ('96', '玉溪(硬和谐)', '3', '6901028314459', '6901028314442', '', '', '', '{\"ttxm\":\"6901028314459\",\"htxm\":\"6901028314442\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '96', '1546671581', null, '0', '1');
INSERT INTO `product` VALUES ('97', '玉溪(硬庄园16支)', '3', '6901028317672', '6901028317641', '', '', '', '{\"ttxm\":\"6901028317672\",\"htxm\":\"6901028317641\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '97', '1546671599', null, '0', '1');
INSERT INTO `product` VALUES ('98', '玉溪(硬)', '3', '6901028316866', '6901028316989', '', '', '', '{\"ttxm\":\"6901028316866\",\"htxm\":\"6901028316989\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '98', '1546671619', null, '0', '1');
INSERT INTO `product` VALUES ('99', '红塔山(大师DF)', '4', '6901028047012', '6901028047005', '', '', '', '{\"ttxm\":\"6901028047012\",\"htxm\":\"6901028047005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '99', '1546671684', null, '0', '1');
INSERT INTO `product` VALUES ('100', '红塔山(硬DF)', '4', '6901028316330', '6901028316309', '', '', '', '{\"ttxm\":\"6901028316330\",\"htxm\":\"6901028316309\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '100', '1546671703', null, '0', '1');
INSERT INTO `product` VALUES ('101', '红塔山(硬出口)', '4', '6901028048309', '6901028048293', '', '', '', '{\"ttxm\":\"6901028048309\",\"htxm\":\"6901028048293\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '101', '1546671918', null, '0', '1');
INSERT INTO `product` VALUES ('102', '红塔山(硬金DF)', '4', '6901028316286', '6901028316279', '', '', '', '{\"ttxm\":\"6901028316286\",\"htxm\":\"6901028316279\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '102', '1546671935', null, '0', '1');
INSERT INTO `product` VALUES ('103', '红塔山(硬金出口)', '4', '6901028048248', '6901028048231', '', '', '', '{\"ttxm\":\"6901028048248\",\"htxm\":\"6901028048231\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '103', '1546672042', null, '0', '1');
INSERT INTO `product` VALUES ('104', '红塔山(硬扁经典100DF)', '4', '6901028047333', '6901028047326', '', '', '', '{\"ttxm\":\"6901028047333\",\"htxm\":\"6901028047326\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '104', '1546672065', null, '0', '1');
INSERT INTO `product` VALUES ('105', '红塔山(硬扁经典100出口)', '4', '6901028047609', '6901028047593', '', '', '', '{\"ttxm\":\"6901028047609\",\"htxm\":\"6901028047593\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '105', '1546672137', null, '0', '1');
INSERT INTO `product` VALUES ('106', '红塔山(传奇)', '4', '6901028326469', '6901028326452', '', '', '', '{\"ttxm\":\"6901028326469\",\"htxm\":\"6901028326452\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '106', '1546672161', null, '0', '1');
INSERT INTO `product` VALUES ('107', '红塔山(英雄)', '4', '6901028054928', '6901028054911', '', '', '', '{\"ttxm\":\"6901028054928\",\"htxm\":\"6901028054911\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '107', '1546672178', null, '0', '1');
INSERT INTO `product` VALUES ('108', '红塔山(硬恭贺新禧)', '4', '6901028053112', '6901028053105', '', '', '', '{\"ttxm\":\"6901028053112\",\"htxm\":\"6901028053105\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '108', '1546672226', null, '0', '1');
INSERT INTO `product` VALUES ('109', '红塔山(硬新势力)', '4', '6901028314176', '6901028314169', '', '', '', '{\"ttxm\":\"6901028314176\",\"htxm\":\"6901028314169\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '109', '1546672271', null, '0', '1');
INSERT INTO `product` VALUES ('110', '红塔山(细支传奇)', '4', '6901028326490', '6901028326483', '', '', '', '{\"ttxm\":\"6901028326490\",\"htxm\":\"6901028326483\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '110', '1546672290', null, '0', '1');
INSERT INTO `product` VALUES ('111', '红塔山(硬欣经典)', '4', '6901028047784', '6901028047777', '', '', '', '{\"ttxm\":\"6901028047784\",\"htxm\":\"6901028047777\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '111', '1546672452', null, '0', '1');
INSERT INTO `product` VALUES ('112', '红塔山(硬经典)', '4', '6901028314985', '6901028314978', '', '', '', '{\"ttxm\":\"6901028314985\",\"htxm\":\"6901028314978\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '112', '1546672472', null, '0', '1');
INSERT INTO `product` VALUES ('113', '红塔山(软经典)', '4', '6901028315012', '6901028315005', '', '', '', '{\"ttxm\":\"6901028315012\",\"htxm\":\"6901028315005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '113', '1546672489', null, '0', '1');
INSERT INTO `product` VALUES ('114', '红塔山(硬经典100)', '4', '6901028315432', '6901028315425', '', '', '', '{\"ttxm\":\"6901028315432\",\"htxm\":\"6901028315425\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '114', '1546672527', null, '0', '1');
INSERT INTO `product` VALUES ('115', '红塔山(软新)', '4', '6901028047364', '6901028047357', '', '', '', '{\"ttxm\":\"6901028047364\",\"htxm\":\"6901028047357\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '115', '1546672596', null, '0', '1');
INSERT INTO `product` VALUES ('116', '红塔山(软经典)', '4', '6901028315012', '6901028315005', '', '', '', '{\"ttxm\":\"6901028315012\",\"htxm\":\"6901028315005\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '116', '1546672612', null, '0', '1');
INSERT INTO `product` VALUES ('117', '红塔山(硬经典100)', '4', '6901028315432', '6901028315425', '', '', '', '{\"ttxm\":\"6901028315432\",\"htxm\":\"6901028315425\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '117', '1546672659', null, '0', '1');
INSERT INTO `product` VALUES ('118', '红塔山(硬经典)', '4', '6901028314985', '6901028314978', '', '', '', '{\"ttxm\":\"6901028314985\",\"htxm\":\"6901028314978\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '118', '1546672676', null, '0', '1');
INSERT INTO `product` VALUES ('119', '红塔山(硬世纪)', '4', '6901028316316', '6901028316156', '', '', '', '{\"ttxm\":\"6901028316316\",\"htxm\":\"6901028316156\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '119', '1546672698', null, '0', '1');
INSERT INTO `product` VALUES ('120', '红山茶(软)', '14', '6901028310710', '6901028310703', '', '', '', '{\"ttxm\":\"6901028310710\",\"htxm\":\"6901028310703\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '120', '1546672723', null, '0', '1');
INSERT INTO `product` VALUES ('121', '阿诗玛(硬94mmCH)', '14', '7640107511196', '7640107513190', '', '', '', '{\"ttxm\":\"7640107511196\",\"htxm\":\"7640107513190\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '121', '1546672741', null, '0', '1');
INSERT INTO `product` VALUES ('122', '阿诗玛(硬94mm出口IR)', '14', '6901028054775', '6901028054768', '', '', '', '{\"ttxm\":\"6901028054775\",\"htxm\":\"6901028054768\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '122', '1546672795', null, '0', '1');
INSERT INTO `product` VALUES ('123', '阿诗玛(硬94mm出口IR1)', '14', '6901028054805', '6901028054799', '', '', '', '{\"ttxm\":\"6901028054805\",\"htxm\":\"6901028054799\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '123', '1546672833', null, '0', '1');
INSERT INTO `product` VALUES ('124', '阿诗玛(硬扁出口DF)', '14', '6901028053020', '6901028053013', '', '', '', '{\"ttxm\":\"6901028053020\",\"htxm\":\"6901028053013\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '124', '1546672849', null, '0', '1');
INSERT INTO `product` VALUES ('125', '马宝(硬MM)', '14', '7640107510618', '7640107516016', '', '', '', '{\"ttxm\":\"7640107510618\",\"htxm\":\"7640107516016\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '125', '1546672882', null, '0', '1');
INSERT INTO `product` VALUES ('126', '新兴(软94mm)', '14', '6901028047173', '6901028048170', '', '', '', '{\"ttxm\":\"6901028047173\",\"htxm\":\"6901028048170\",\"fwtjthzm\":\"\",\"fwtjthbm\":\"\",\"fwtjthzc\":\"\",\"fwtjthyc\":\"\",\"fwtjthdb\":\"\",\"fwtjthdb2\":\"\",\"fwtjthqt\":\"\",\"fwtjxhzm\":\"\",\"fwtjxhbm\":\"\",\"fwtjxhzc\":\"\",\"fwtjxhyc\":\"\",\"fwtjxhdb\":\"\",\"fwtjxhdb2\":\"\",\"fwtjxhqt\":\"\",\"fwtjyzzm\":\"\",\"fwtjyzbm\":\"\",\"fwtjyzzc\":\"\",\"fwtjyzyc\":\"\",\"fwtjyzdb\":\"\",\"fwtjyzdb2\":\"\",\"fwtjyzqt\":\"\"}', '126', '1546672906', null, '0', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='属性值表';

-- ----------------------------
-- Records of product_item
-- ----------------------------
INSERT INTO `product_item` VALUES ('1', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '1544077027', '1544077027', '0', '0');
INSERT INTO `product_item` VALUES ('2', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '4', '镭射银字母拉线（印有“云烟印象烟庄”字样）', '7', '1544077120', '1544077120', '0', '0');
INSERT INTO `product_item` VALUES ('3', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '4', '不干胶拉线（印有黑色“HONGYUNHONGHE TOBACCO(GROUP) CO.,LTD”字样）', '5', '1544077133', '1544077133', '0', '0');
INSERT INTO `product_item` VALUES ('4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '不干胶荧光拉线（拉线上印有“KMCF”荧光字样）', '4', '1543893032', null, '0', '1');
INSERT INTO `product_item` VALUES ('5', '无字透明不干胶拉线', '4', '无字透明不干胶拉线', '6', '1543893055', null, '0', '0');
INSERT INTO `product_item` VALUES ('6', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '4', '透明不干胶拉线（拉线上印有“KMCF”荧光字样）', '2', '1543893074', null, '0', '0');
INSERT INTO `product_item` VALUES ('7', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '4', '透明不干胶拉线（印有“云烟 yunYan”镭射防伪字图 ）', '2', '1543893085', null, '0', '0');
INSERT INTO `product_item` VALUES ('8', '转移卡纸', '5', '转移卡纸', '2', '1543990100', null, '0', '0');
INSERT INTO `product_item` VALUES ('9', '卡纸', '5', '卡纸', '1', '1543990110', null, '0', '0');
INSERT INTO `product_item` VALUES ('10', '覆膜转移卡纸', '5', '覆膜转移卡纸', '8', '1543990123', null, '0', '0');
INSERT INTO `product_item` VALUES ('11', '礼盒', '5', '礼盒', '9', '1543990135', null, '0', '0');
INSERT INTO `product_item` VALUES ('12', '凹印', '6', '凹印', '1', '1544067363', null, '0', '0');
INSERT INTO `product_item` VALUES ('13', '胶印', '6', '胶印', '2', '1544067385', null, '0', '0');
INSERT INTO `product_item` VALUES ('14', '丝网印刷', '6', '丝网印刷', '3', '1544067421', null, '0', '0');
INSERT INTO `product_item` VALUES ('15', '凹印、丝网印刷', '6', '凹印、丝网印刷', '4', '1544067438', null, '0', '0');
INSERT INTO `product_item` VALUES ('16', '透明不干胶拉线', '4', '透明不干胶拉线', '1', '1544077150', '1544407168', '0', '0');
INSERT INTO `product_item` VALUES ('17', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '4', '透明镭射字母拉线,在紫光灯下呈现红色镭射效果 “红河 HONGHE”文字', '8', '1544077268', null, '0', '0');
INSERT INTO `product_item` VALUES ('18', '蓝色拉线', '4', '蓝色拉线', '13', '1544077386', null, '0', '0');
INSERT INTO `product_item` VALUES ('19', '镭射转移卡纸', '5', '镭射转移卡纸', '3', '1544077464', null, '0', '0');
INSERT INTO `product_item` VALUES ('20', '有', '7', '有', '0', '1544077530', null, '0', '0');
INSERT INTO `product_item` VALUES ('21', '无', '7', '无', '99', '1544077542', null, '0', '0');
INSERT INTO `product_item` VALUES ('22', '侧面', '8', '侧面', '0', '1544077831', '1544077831', '0', '0');
INSERT INTO `product_item` VALUES ('23', '正面', '8', '正面', '0', '1544077842', '1544077842', '0', '0');
INSERT INTO `product_item` VALUES ('24', '背面', '8', '背面', '0', '1544077858', null, '0', '0');
INSERT INTO `product_item` VALUES ('25', '拉线', '8', '拉线', '4', '1544077868', null, '0', '0');
INSERT INTO `product_item` VALUES ('26', '左端、封签', '8', '左端、封签', '0', '1544078005', null, '0', '0');
INSERT INTO `product_item` VALUES ('27', '封签', '8', '封签', '0', '1544078029', null, '0', '0');
INSERT INTO `product_item` VALUES ('28', '无', '8', '无', '99', '1544078039', null, '0', '0');
INSERT INTO `product_item` VALUES ('29', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '9', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '0', '1544078116', null, '0', '0');
INSERT INTO `product_item` VALUES ('30', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '9', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '0', '1544078142', null, '0', '0');
INSERT INTO `product_item` VALUES ('31', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '9', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '0', '1544078168', null, '0', '0');
INSERT INTO `product_item` VALUES ('32', '印有“云烟 yunYan”镭射防伪字图', '9', '印有“云烟 yunYan”镭射防伪字图', '0', '1544078238', null, '0', '0');
INSERT INTO `product_item` VALUES ('33', '左端：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。封签：加热字体颜色发生变化', '9', '左端：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。封签：加热字体颜色发生变化', '0', '1544078266', null, '0', '0');
INSERT INTO `product_item` VALUES ('34', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '9', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '0', '1544078306', null, '0', '0');
INSERT INTO `product_item` VALUES ('35', '1、团花防伪：线条图文清晰流畅。2、微缩文字：放大镜下能够显示 “YUNYAN”图文信息。3、防伪标签纸：揭开标签有方形图文残留痕迹。', '9', '1、团花防伪：线条图文清晰流畅。2、微缩文字：放大镜下能够显示 “YUNYAN”图文信息。3、防伪标签纸：揭开标签有方形图文残留痕迹。', '0', '1544078322', null, '0', '0');
INSERT INTO `product_item` VALUES ('36', '无', '9', '无', '99', '1544078345', null, '0', '0');
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
INSERT INTO `product_item` VALUES ('49', '转移卡纸', '12', '转移卡纸', '2', '1544079247', null, '0', '0');
INSERT INTO `product_item` VALUES ('50', '铜版纸', '12', '铜版纸', '16', '1544079257', null, '0', '0');
INSERT INTO `product_item` VALUES ('51', '覆膜转移卡纸', '12', '覆膜转移卡纸', '17', '1544079354', null, '0', '0');
INSERT INTO `product_item` VALUES ('52', '卡纸', '12', '卡纸', '1', '1544079366', null, '0', '0');
INSERT INTO `product_item` VALUES ('53', '转移纸', '12', '转移纸', '2', '1544079405', null, '0', '0');
INSERT INTO `product_item` VALUES ('54', '镭射转移卡纸', '12', '镭射转移卡纸', '3', '1544079428', null, '0', '0');
INSERT INTO `product_item` VALUES ('55', '镭射转移纸', '12', '镭射转移纸', '3', '1544079461', null, '0', '0');
INSERT INTO `product_item` VALUES ('56', '凹印', '13', '凹印', '1', '1544079486', null, '0', '0');
INSERT INTO `product_item` VALUES ('57', '胶印', '13', '胶印', '2', '1544079498', null, '0', '0');
INSERT INTO `product_item` VALUES ('58', '丝网印刷', '13', '丝网印刷', '3', '1544079534', null, '0', '0');
INSERT INTO `product_item` VALUES ('59', '凹印、丝网印刷', '13', '凹印、丝网印刷', '6', '1544079547', null, '0', '0');
INSERT INTO `product_item` VALUES ('60', '无', '13', '无', '99', '1544079564', null, '0', '0');
INSERT INTO `product_item` VALUES ('61', '复合铝箔', '14', '复合铝箔', '1', '1544082410', '1544082410', '0', '0');
INSERT INTO `product_item` VALUES ('62', '硫酸纸', '14', '硫酸纸', '5', '1544079597', null, '0', '0');
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
INSERT INTO `product_item` VALUES ('94', '无', '16', '无', '99', '1544080231', null, '0', '0');
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
INSERT INTO `product_item` VALUES ('119', '无', '20', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('120', '激光打孔预打孔', '21', '激光打孔预打孔', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('121', '在线激光打孔', '21', '在线激光打孔', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('122', '无', '21', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('123', '1排', '22', '1排', '1', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('124', '2排', '22', '2排', '2', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('125', '4排', '22', '4排', '4', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('126', '无', '22', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('127', '白色', '23', '白色', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('128', '棕色', '23', '棕色', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('129', '无', '23', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('130', '竖纹', '24', '竖纹', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('131', '横纹', '24', '横纹', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('132', '无纹', '24', '无纹', '99', '1544080784', '1547429206', '0', '0');
INSERT INTO `product_item` VALUES ('133', '普通6000CU', '25', '普通6000CU', '2', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('134', '高透10000CU', '25', '高透10000CU', '4', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('135', '高透15000CU', '25', '高透15000CU', '6', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('136', '透明纤维成型纸0CU', '25', '透明纤维成型纸0CU', '8', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('137', '无', '25', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('138', '叶丝、气流丝、梗丝、再造烟叶薄片', '26', '叶丝、气流丝、梗丝、再造烟叶薄片', '7', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('139', '叶丝、梗丝、再造烟叶薄片', '26', '叶丝、梗丝、再造烟叶薄片', '4', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('140', '叶丝、再造烟叶薄片', '26', '叶丝、再造烟叶薄片', '5', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('141', '造纸法', '27', '造纸法', '0', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('142', '无', '26', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('143', '无', '27', '无', '99', '1544080784', null, '0', '0');
INSERT INTO `product_item` VALUES ('144', '无', '6', '无', '99', '1544404495', null, '0', '0');
INSERT INTO `product_item` VALUES ('145', '无', '55', '无', '99', '1545818036', null, '0', '0');
INSERT INTO `product_item` VALUES ('146', '拉线、背面', '55', '拉线、背面', '2', '1545818053', null, '0', '0');
INSERT INTO `product_item` VALUES ('147', '盒内表面', '55', '盒内表面', '3', '1545818067', null, '0', '0');
INSERT INTO `product_item` VALUES ('148', '侧面', '55', '侧面', '4', '1545818080', null, '0', '0');
INSERT INTO `product_item` VALUES ('149', '右侧', '55', '右侧', '5', '1545818093', null, '0', '0');
INSERT INTO `product_item` VALUES ('150', '拉带', '55', '拉带', '6', '1545818105', null, '0', '0');
INSERT INTO `product_item` VALUES ('151', '正面', '55', '正面', '7', '1545818118', null, '0', '0');
INSERT INTO `product_item` VALUES ('152', '拉线、小盒背面', '55', '拉线、小盒背面', '8', '1545818130', null, '0', '0');
INSERT INTO `product_item` VALUES ('153', '无', '56', '无', '99', '1545818154', null, '0', '0');
INSERT INTO `product_item` VALUES ('154', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '56', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '2', '1545818191', null, '0', '0');
INSERT INTO `product_item` VALUES ('155', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。背面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果 ', '56', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。背面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果 ', '3', '1545818204', null, '0', '0');
INSERT INTO `product_item` VALUES ('156', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '56', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '4', '1545818262', null, '0', '0');
INSERT INTO `product_item` VALUES ('157', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '56', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '5', '1545818282', null, '0', '0');
INSERT INTO `product_item` VALUES ('158', '印有“云烟 yunYan”镭射防伪字图', '56', '印有“云烟 yunYan”镭射防伪字图', '6', '1545818305', null, '0', '0');
INSERT INTO `product_item` VALUES ('159', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '56', '随着视角的变换，清晰可见三支仿真云烟烟支，精细三维效果', '7', '1545818316', null, '0', '0');
INSERT INTO `product_item` VALUES ('160', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '56', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '8', '1545818329', null, '0', '0');
INSERT INTO `product_item` VALUES ('161', '金色定位烫“双龙抱珠”图案，明显的层次感', '56', '金色定位烫“双龙抱珠”图案，明显的层次感', '9', '1545818353', null, '0', '0');
INSERT INTO `product_item` VALUES ('162', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '56', '随着视角的变换，清晰可见三支仿真云烟烟支、精细三维效果的如意图案及动态的“YunYan”及“云烟”的微缩文字。', '10', '1545818368', null, '0', '0');
INSERT INTO `product_item` VALUES ('163', '无', '5', '无', '99', '1547090222', null, '0', '0');
INSERT INTO `product_item` VALUES ('164', '无', '12', '无', '99', '1547090433', null, '0', '0');
INSERT INTO `product_item` VALUES ('165', '无', '14', '无', '99', '1547090559', null, '0', '0');
INSERT INTO `product_item` VALUES ('166', '无', '15', '无', '99', '1547090588', null, '0', '0');
INSERT INTO `product_item` VALUES ('167', '无', '18', '无', '99', '1547090649', null, '0', '0');
INSERT INTO `product_item` VALUES ('168', '无', '4', '无', '99', '1547091195', null, '0', '0');
INSERT INTO `product_item` VALUES ('169', '卡纸加转移裱纸', '5', '卡纸加转移裱纸', '1', '1547091482', null, '0', '0');
INSERT INTO `product_item` VALUES ('170', '白卡纸', '5', '白卡纸', '10', '1547091496', null, '0', '0');
INSERT INTO `product_item` VALUES ('171', '铜版纸+卡纸 礼盒', '5', '铜版纸+卡纸 礼盒', '11', '1547091509', null, '0', '0');
INSERT INTO `product_item` VALUES ('172', '镭射转移纸', '5', '镭射转移纸', '3', '1547091542', null, '0', '0');
INSERT INTO `product_item` VALUES ('173', '镭射光柱转印纸', '5', '镭射光柱转印纸', '12', '1547091576', null, '0', '0');
INSERT INTO `product_item` VALUES ('174', '纸板复合', '5', '纸板复合', '13', '1547091600', null, '0', '0');
INSERT INTO `product_item` VALUES ('175', '玻璃卡纸', '5', '玻璃卡纸', '14', '1547091621', null, '0', '0');
INSERT INTO `product_item` VALUES ('176', 'PET膜镭射卡纸', '5', 'PET膜镭射卡纸', '15', '1547091660', null, '0', '0');
INSERT INTO `product_item` VALUES ('177', 'PET光柱银卡纸', '5', 'PET光柱银卡纸', '16', '1547091669', null, '0', '0');
INSERT INTO `product_item` VALUES ('178', '复合转移镭射纸', '5', '复合转移镭射纸', '17', '1547091714', null, '0', '0');
INSERT INTO `product_item` VALUES ('179', '转移镭射黑卡纸', '5', '转移镭射黑卡纸', '18', '1547096851', null, '0', '0');
INSERT INTO `product_item` VALUES ('180', '镭射纸', '5', '镭射纸', '3', '1547096879', null, '0', '0');
INSERT INTO `product_item` VALUES ('181', '介质纸', '5', '介质纸', '19', '1547096889', null, '0', '0');
INSERT INTO `product_item` VALUES ('182', '介质铜版纸', '5', '介质铜版纸', '20', '1547096897', null, '0', '0');
INSERT INTO `product_item` VALUES ('183', 'SBS红纤白卡纸', '5', 'SBS红纤白卡纸', '21', '1547096910', null, '0', '0');
INSERT INTO `product_item` VALUES ('184', '金卡纸', '5', '金卡纸', '22', '1547096922', null, '0', '0');
INSERT INTO `product_item` VALUES ('185', '红纤转移卡纸', '5', '红纤转移卡纸', '23', '1547096931', null, '0', '0');
INSERT INTO `product_item` VALUES ('186', '原浆纸', '5', '原浆纸', '24', '1547096969', null, '0', '0');
INSERT INTO `product_item` VALUES ('187', '镭射卡纸', '5', '镭射卡纸', '3', '1547097000', null, '0', '0');
INSERT INTO `product_item` VALUES ('188', '铜版纸', '5', '铜版纸', '25', '1547097034', null, '0', '0');
INSERT INTO `product_item` VALUES ('189', '硫酸纸', '5', '硫酸纸', '26', '1547097044', null, '0', '0');
INSERT INTO `product_item` VALUES ('190', '特种纸', '5', '特种纸', '27', '1547097055', null, '0', '0');
INSERT INTO `product_item` VALUES ('191', '红纤白卡纸', '5', '红纤白卡纸', '28', '1547097067', null, '0', '0');
INSERT INTO `product_item` VALUES ('192', '太阳纸', '5', '太阳纸', '29', '1547097121', null, '0', '0');
INSERT INTO `product_item` VALUES ('193', 'SBS白卡纸', '5', 'SBS白卡纸', '30', '1547097132', null, '0', '0');
INSERT INTO `product_item` VALUES ('194', '加热字体颜色发生变化，有“红云红河烟草（集团）有限责任公司”微缩文字', '9', '加热字体颜色发生变化，有“红云红河烟草（集团）有限责任公司”微缩文字', '0', '1547097266', null, '0', '0');
INSERT INTO `product_item` VALUES ('195', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '9', '透明不干胶拉线，印有“云烟 yunYan”字图镭射防伪；“双龙抱珠”不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '0', '1547097316', null, '0', '0');
INSERT INTO `product_item` VALUES ('196', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。侧面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '9', '拉线：镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）。侧面：不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果', '0', '1547097327', '1547097340', '0', '0');
INSERT INTO `product_item` VALUES ('197', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '9', '商标纸的非印刷面，均匀分布着不规则的黄（褐）色纤维，颜色一致。', '0', '1547097362', null, '0', '0');
INSERT INTO `product_item` VALUES ('198', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '9', '①紫光灯照射拉线上有“KMCF”荧光字样。②不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果，充分展现自然空间与标识整体的完美结合。', '0', '1547097526', null, '0', '0');
INSERT INTO `product_item` VALUES ('199', '金色定位烫“双龙抱珠”图案，明显的层次感', '9', '金色定位烫“双龙抱珠”图案，明显的层次感', '0', '1547097545', null, '0', '0');
INSERT INTO `product_item` VALUES ('200', '全透明激光防伪拉线，印有“XUELIN.雪莲”字样', '9', '全透明激光防伪拉线，印有“XUELIN.雪莲”字样', '0', '1547097585', null, '0', '0');
INSERT INTO `product_item` VALUES ('201', '透明激光防伪拉线，拉带上印有“XUE LIAN·雪莲”字样', '9', '透明激光防伪拉线，拉带上印有“XUE LIAN·雪莲”字样', '0', '1547097596', null, '0', '0');
INSERT INTO `product_item` VALUES ('202', '激光全息图案，不同角度清晰可见““关爱小熊猫”文字、“小熊猫、竹子”图案”。', '9', '激光全息图案，不同角度清晰可见““关爱小熊猫”文字、“小熊猫、竹子”图案”。', '0', '1547097609', null, '0', '0');
INSERT INTO `product_item` VALUES ('203', '条盒上有二维码', '9', '条盒上有二维码', '0', '1547097628', null, '0', '0');
INSERT INTO `product_item` VALUES ('204', '条盒上有防伪标签', '9', '条盒上有防伪标签', '0', '1547097637', null, '0', '0');
INSERT INTO `product_item` VALUES ('205', '条盒侧面有防伪封签、二维码', '9', '条盒侧面有防伪封签、二维码', '0', '1547097646', null, '0', '0');
INSERT INTO `product_item` VALUES ('206', '在紫外灯下可见黄色荧光', '9', '在紫外灯下可见黄色荧光', '0', '1547097654', null, '0', '0');
INSERT INTO `product_item` VALUES ('207', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '9', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '0', '1547097672', null, '0', '0');
INSERT INTO `product_item` VALUES ('208', '在条盒长边侧面（条码面）条码位置上方有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '9', '在条盒长边侧面（条码面）条码位置上方有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '0', '1547097712', null, '0', '0');
INSERT INTO `product_item` VALUES ('209', '1.在条盒长边侧面（条码面）条码上方位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1.在条盒长边侧面（条码面）条码上方位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547097755', null, '0', '0');
INSERT INTO `product_item` VALUES ('210', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547097778', null, '0', '0');
INSERT INTO `product_item` VALUES ('211', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '9', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '0', '1547097803', null, '0', '0');
INSERT INTO `product_item` VALUES ('212', '1.彩色（红色）纤维随机分布在纸张纤维中2.条盒上有二维码', '9', '1.彩色（红色）纤维随机分布在纸张纤维中2.条盒上有二维码', '0', '1547097827', null, '0', '0');
INSERT INTO `product_item` VALUES ('213', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.条盒上有二维码', '9', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.条盒上有二维码', '0', '1547097865', null, '0', '0');
INSERT INTO `product_item` VALUES ('214', '1、在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长；3、用手机微信扫码功能扫描条盒侧面的二维码，根据系统提示输入条盒盖内舌的验证码验真。', '9', '1、在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长；3、用手机微信扫码功能扫描条盒侧面的二维码，根据系统提示输入条盒盖内舌的验证码验真。', '0', '1547097898', null, '0', '0');
INSERT INTO `product_item` VALUES ('215', '1.在条盒长边侧面（条码面）条码右侧位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1.在条盒长边侧面（条码面）条码右侧位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547097984', null, '0', '0');
INSERT INTO `product_item` VALUES ('216', '红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。 ', '9', '红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。 ', '0', '1547098019', null, '0', '0');
INSERT INTO `product_item` VALUES ('217', '1、在条盒长边侧面（条码面）有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1、在条盒长边侧面（条码面）有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547098108', null, '0', '0');
INSERT INTO `product_item` VALUES ('218', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记', '9', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记', '0', '1547098229', null, '0', '0');
INSERT INTO `product_item` VALUES ('219', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.条盒上有防伪标签', '9', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.条盒上有防伪标签', '0', '1547098250', null, '0', '0');
INSERT INTO `product_item` VALUES ('220', '金色压纹内衬纸（带“ 9.9字样”）', '15', '金色压纹内衬纸（带“ 9.9字样”）', '0', '1547098485', null, '0', '0');
INSERT INTO `product_item` VALUES ('221', '叶丝、梗丝、再造烟叶', '26', '叶丝、梗丝、再造烟叶', '3', '1547098672', null, '0', '0');
INSERT INTO `product_item` VALUES ('222', '透明不干胶拉线，印有“云烟 yunYan”字图', '4', '透明不干胶拉线，印有“云烟 yunYan”字图', '2', '1547098921', null, '0', '0');
INSERT INTO `product_item` VALUES ('223', '印有黑色\"HONGYUNHONGHE TOBACCO(GROUP)CO.,LTD\"文字拉线', '4', '印有黑色\"HONGYUNHONGHE TOBACCO(GROUP)CO.,LTD\"文字拉线', '12', '1547098934', null, '0', '0');
INSERT INTO `product_item` VALUES ('224', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样 )', '4', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样 )', '8', '1547099029', null, '0', '0');
INSERT INTO `product_item` VALUES ('225', '无字透明', '4', '无字透明', '6', '1547099074', null, '0', '0');
INSERT INTO `product_item` VALUES ('226', '激光烫银不干胶PET拉线，烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '4', '激光烫银不干胶PET拉线，烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '11', '1547099165', null, '0', '0');
INSERT INTO `product_item` VALUES ('227', '无字透明不干胶拉带 宽度2.5mm', '4', '无字透明不干胶拉带 宽度2.5mm', '6', '1547099205', null, '0', '0');
INSERT INTO `product_item` VALUES ('228', 'BOPP无色透明拉带 2.5mm', '4', 'BOPP无色透明拉带 2.5mm', '10', '1547099327', null, '0', '0');
INSERT INTO `product_item` VALUES ('229', '透明不干胶拉带 2.5mm', '4', '透明不干胶拉带 2.5mm', '2', '1547099340', null, '0', '0');
INSERT INTO `product_item` VALUES ('230', 'BOPP，无字透明', '4', 'BOPP，无字透明', '10', '1547099369', null, '0', '0');
INSERT INTO `product_item` VALUES ('231', 'BOPP，拉带上印有“XUE LIAN·雪莲”字样', '4', 'BOPP，拉带上印有“XUE LIAN·雪莲”字样', '10', '1547099380', null, '0', '0');
INSERT INTO `product_item` VALUES ('232', '透明激光字母不干胶拉线,烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '4', '透明激光字母不干胶拉线,烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '2', '1547099413', null, '0', '0');
INSERT INTO `product_item` VALUES ('233', '激光烫金PET不干胶拉线', '4', '激光烫金PET不干胶拉线', '11', '1547099423', null, '0', '0');
INSERT INTO `product_item` VALUES ('234', '激光烫银PET不干胶拉线', '4', '激光烫银PET不干胶拉线', '11', '1547099462', null, '0', '0');
INSERT INTO `product_item` VALUES ('235', '不干胶透明张贴拉带', '4', '不干胶透明张贴拉带', '4', '1547099471', null, '0', '0');
INSERT INTO `product_item` VALUES ('236', 'BOPP膜，不干胶透明张贴拉带', '4', 'BOPP膜，不干胶透明张贴拉带', '10', '1547099482', null, '0', '0');
INSERT INTO `product_item` VALUES ('237', 'BOPP膜，不干胶透明拉带', '4', 'BOPP膜，不干胶透明拉带', '10', '1547099489', null, '0', '0');
INSERT INTO `product_item` VALUES ('238', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）', '4', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）', '7', '1547099686', null, '0', '0');
INSERT INTO `product_item` VALUES ('239', '透明不干胶拉线（印有“KMCF”荧光字样）', '4', '透明不干胶拉线（印有“KMCF”荧光字样）', '2', '1547099754', null, '0', '0');
INSERT INTO `product_item` VALUES ('240', '透明不干胶拉线（上印有 “KMCF” 荧光字样）', '4', '透明不干胶拉线（上印有 “KMCF” 荧光字样）', '2', '1547099766', null, '0', '0');
INSERT INTO `product_item` VALUES ('241', '镭射银字母拉线（拉线上印有“云烟印象烟庄”字样）', '4', '镭射银字母拉线（拉线上印有“云烟印象烟庄”字样）', '7', '1547099821', null, '0', '0');
INSERT INTO `product_item` VALUES ('242', '拉线、侧面', '8', '拉线、侧面', '4', '1547100489', null, '0', '0');
INSERT INTO `product_item` VALUES ('243', '条盒内表面', '8', '条盒内表面', '6', '1547100499', null, '0', '0');
INSERT INTO `product_item` VALUES ('244', '拉线、商标背面', '8', '拉线、商标背面', '4', '1547100521', null, '0', '0');
INSERT INTO `product_item` VALUES ('245', '拉线、条盒背面', '8', '拉线、条盒背面', '4', '1547100531', null, '0', '0');
INSERT INTO `product_item` VALUES ('246', '条盒侧面', '8', '条盒侧面', '6', '1547100544', null, '0', '0');
INSERT INTO `product_item` VALUES ('247', '内衬纸上', '8', '内衬纸上', '0', '1547100562', null, '0', '0');
INSERT INTO `product_item` VALUES ('248', '条盒侧面（印有商品条码）条码上方的位置', '8', '条盒侧面（印有商品条码）条码上方的位置', '5', '1547100571', null, '0', '0');
INSERT INTO `product_item` VALUES ('249', '1.条盒侧面（印有商品条码）条码上方的位置；2.条盒纸张纤维中。', '8', '1.条盒侧面（印有商品条码）条码上方的位置；2.条盒纸张纤维中。', '5', '1547100580', null, '0', '0');
INSERT INTO `product_item` VALUES ('250', '左侧面', '8', '左侧面', '0', '1547100600', null, '0', '0');
INSERT INTO `product_item` VALUES ('251', '条盒侧面条码位置中部', '8', '条盒侧面条码位置中部', '6', '1547100608', null, '0', '0');
INSERT INTO `product_item` VALUES ('252', '商品条码旁边', '8', '商品条码旁边', '7', '1547100622', null, '0', '0');
INSERT INTO `product_item` VALUES ('253', '1、条盒侧面（印有商品条码）中间位置；2、条盒纸张纤维中；3、条盒侧面及条盒盖内舌。', '8', '1、条盒侧面（印有商品条码）中间位置；2、条盒纸张纤维中；3、条盒侧面及条盒盖内舌。', '5', '1547100631', null, '0', '0');
INSERT INTO `product_item` VALUES ('254', '1.条盒侧面（印有商品条码）条码右边的位置；2.条盒纸张纤维中。', '8', '1.条盒侧面（印有商品条码）条码右边的位置；2.条盒纸张纤维中。', '5', '1547100641', null, '0', '0');
INSERT INTO `product_item` VALUES ('255', '条盒侧面条码中部', '8', '条盒侧面条码中部', '6', '1547100650', null, '0', '0');
INSERT INTO `product_item` VALUES ('256', '条盒纸张纤维中', '8', '条盒纸张纤维中', '6', '1547100657', null, '0', '0');
INSERT INTO `product_item` VALUES ('257', '1、条盒侧面（印有商品条码）中间位置；2、条盒纸张纤维中。', '8', '1、条盒侧面（印有商品条码）中间位置；2、条盒纸张纤维中。', '5', '1547100669', null, '0', '0');
INSERT INTO `product_item` VALUES ('258', '条盒侧面、正面', '8', '条盒侧面、正面', '6', '1547100677', null, '0', '0');
INSERT INTO `product_item` VALUES ('259', '转移纸', '5', '转移纸', '2', '1547101898', null, '0', '0');
INSERT INTO `product_item` VALUES ('260', '礼盒装', '5', '礼盒装', '4', '1547101908', null, '0', '0');
INSERT INTO `product_item` VALUES ('261', '白色卡纸', '5', '白色卡纸', '5', '1547101987', null, '0', '0');
INSERT INTO `product_item` VALUES ('262', '珠光纸', '5', '珠光纸', '6', '1547101998', null, '0', '0');
INSERT INTO `product_item` VALUES ('263', '镭射转移卡', '5', '镭射转移卡', '7', '1547102204', null, '0', '0');
INSERT INTO `product_item` VALUES ('264', '胶印、丝网印刷', '6', '胶印、丝网印刷', '5', '1547102273', null, '0', '0');
INSERT INTO `product_item` VALUES ('265', '胶印、凹印', '6', '胶印、凹印', '3', '1547102296', null, '0', '0');
INSERT INTO `product_item` VALUES ('266', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；彩色（红色）纤维随机分布在纸张纤维中', '9', '在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；彩色（红色）纤维随机分布在纸张纤维中', '0', '1547103330', null, '0', '0');
INSERT INTO `product_item` VALUES ('267', '1.在条盒长边侧面（条码面）有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1.在条盒长边侧面（条码面）有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547103447', null, '0', '0');
INSERT INTO `product_item` VALUES ('268', '1、在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '9', '1、在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547105119', null, '0', '0');
INSERT INTO `product_item` VALUES ('269', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样 )', '10', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样 )', '15', '1547105379', null, '0', '0');
INSERT INTO `product_item` VALUES ('270', '透明不干胶拉线，印有“云烟 yunYan”字图', '10', '透明不干胶拉线，印有“云烟 yunYan”字图', '3', '1547105392', null, '0', '0');
INSERT INTO `product_item` VALUES ('271', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）', '10', '镭射银字母拉线 (拉线上印有 “云烟印象烟庄 ”字样）', '15', '1547105405', null, '0', '0');
INSERT INTO `product_item` VALUES ('272', '印有黑色“HONGYUNHONGHE TOBACCO(GROUP)CO.,LTD”文字拉线', '10', '印有黑色“HONGYUNHONGHE TOBACCO(GROUP)CO.,LTD”文字拉线', '16', '1547105421', null, '0', '0');
INSERT INTO `product_item` VALUES ('273', '无字透明', '10', '无字透明', '11', '1547105431', null, '0', '0');
INSERT INTO `product_item` VALUES ('274', '透明不干胶拉线（印有“KMCF”荧光字样）', '10', '透明不干胶拉线（印有“KMCF”荧光字样）', '3', '1547105454', null, '0', '0');
INSERT INTO `product_item` VALUES ('275', '透明不干胶拉线（上印有 “KMCF”荧光字样）', '10', '透明不干胶拉线（上印有 “KMCF”荧光字样）', '3', '1547105470', null, '0', '0');
INSERT INTO `product_item` VALUES ('276', '透明不干胶拉线（上印有 “KMCF” 荧光字样）', '10', '透明不干胶拉线（上印有 “KMCF” 荧光字样）', '3', '1547105480', null, '0', '0');
INSERT INTO `product_item` VALUES ('277', '激光烫银PET不干胶拉线，烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '10', '激光烫银PET不干胶拉线，烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '17', '1547105495', null, '0', '0');
INSERT INTO `product_item` VALUES ('278', '无字透明不干胶拉带 宽度2.5mm', '10', '无字透明不干胶拉带 宽度2.5mm', '12', '1547105505', null, '0', '0');
INSERT INTO `product_item` VALUES ('279', '无字透明不干胶拉线', '10', '无字透明不干胶拉线', '12', '1547105520', null, '0', '0');
INSERT INTO `product_item` VALUES ('280', '透明不干胶拉带 2.5mm', '10', '透明不干胶拉带 2.5mm', '2', '1547105577', null, '0', '0');
INSERT INTO `product_item` VALUES ('281', '无字透明不干胶拉带', '10', '无字透明不干胶拉带', '12', '1547105607', null, '0', '0');
INSERT INTO `product_item` VALUES ('282', '拉带上印有“XUE LIAN·雪莲”字样', '10', '拉带上印有“XUE LIAN·雪莲”字样', '18', '1547105618', null, '0', '0');
INSERT INTO `product_item` VALUES ('283', '透明激光字母不干胶拉线,烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '10', '透明激光字母不干胶拉线,烫印有“‘小熊猫’标记加‘红云红河烟草（集团）有限责任公司’及‘小熊猫’标记加‘HONGYUNHONGHE TABBCCO(GROUP)CO.,LTD.’ ”组合', '19', '1547105640', null, '0', '0');
INSERT INTO `product_item` VALUES ('284', '激光烫金PET不干胶拉线', '10', '激光烫金PET不干胶拉线', '20', '1547105650', null, '0', '0');
INSERT INTO `product_item` VALUES ('285', '激光烫银PET不干胶拉线', '10', '激光烫银PET不干胶拉线', '20', '1547105663', null, '0', '0');
INSERT INTO `product_item` VALUES ('286', '不干胶透明张贴拉带', '10', '不干胶透明张贴拉带', '4', '1547105674', null, '0', '0');
INSERT INTO `product_item` VALUES ('287', 'BOPP膜，不干胶透明张贴拉带', '10', 'BOPP膜，不干胶透明张贴拉带', '21', '1547105685', null, '0', '0');
INSERT INTO `product_item` VALUES ('288', 'BOPP膜，不干胶透明拉带', '10', 'BOPP膜，不干胶透明拉带', '21', '1547105695', null, '0', '0');
INSERT INTO `product_item` VALUES ('289', '透明不干胶拉带', '10', '透明不干胶拉带', '2', '1547105960', null, '0', '0');
INSERT INTO `product_item` VALUES ('290', '铜版纸+卡纸', '12', '铜版纸+卡纸', '4', '1547106085', null, '0', '0');
INSERT INTO `product_item` VALUES ('291', '白卡纸', '12', '白卡纸', '5', '1547106107', null, '0', '0');
INSERT INTO `product_item` VALUES ('292', '镭射光柱转印纸', '12', '镭射光柱转印纸', '3', '1547106150', null, '0', '0');
INSERT INTO `product_item` VALUES ('293', '镭射转移卡', '12', '镭射转移卡', '3', '1547106163', null, '0', '0');
INSERT INTO `product_item` VALUES ('294', '玻璃铜版纸', '12', '玻璃铜版纸', '6', '1547106175', null, '0', '0');
INSERT INTO `product_item` VALUES ('295', 'PET膜镭射卡纸', '12', 'PET膜镭射卡纸', '7', '1547106200', null, '0', '0');
INSERT INTO `product_item` VALUES ('296', 'PET光柱银卡纸', '12', 'PET光柱银卡纸', '8', '1547106342', null, '0', '0');
INSERT INTO `product_item` VALUES ('297', '转移镭射黑卡纸', '12', '转移镭射黑卡纸', '2', '1547106357', null, '0', '0');
INSERT INTO `product_item` VALUES ('298', '玻璃卡纸', '12', '玻璃卡纸', '9', '1547106369', null, '0', '0');
INSERT INTO `product_item` VALUES ('299', '镭射纸', '12', '镭射纸', '3', '1547106380', null, '0', '0');
INSERT INTO `product_item` VALUES ('300', '介质纸', '12', '介质纸', '10', '1547106391', null, '0', '0');
INSERT INTO `product_item` VALUES ('301', '介质铜版纸', '12', '介质铜版纸', '11', '1547106404', null, '0', '0');
INSERT INTO `product_item` VALUES ('302', 'SBS红纤白卡纸', '12', 'SBS红纤白卡纸', '12', '1547106415', null, '0', '0');
INSERT INTO `product_item` VALUES ('303', '金卡纸', '12', '金卡纸', '13', '1547106426', null, '0', '0');
INSERT INTO `product_item` VALUES ('304', '红纤转移卡纸', '12', '红纤转移卡纸', '14', '1547106435', null, '0', '0');
INSERT INTO `product_item` VALUES ('305', '原浆纸', '12', '原浆纸', '15', '1547106453', null, '0', '0');
INSERT INTO `product_item` VALUES ('306', '镭射卡纸', '12', '镭射卡纸', '3', '1547106465', null, '0', '0');
INSERT INTO `product_item` VALUES ('307', '白色卡纸', '12', '白色卡纸', '18', '1547106478', null, '0', '0');
INSERT INTO `product_item` VALUES ('308', '珠光纸', '12', '珠光纸', '19', '1547106488', null, '0', '0');
INSERT INTO `product_item` VALUES ('309', '硫酸纸', '12', '硫酸纸', '20', '1547106500', null, '0', '0');
INSERT INTO `product_item` VALUES ('310', '特种纸', '12', '特种纸', '21', '1547106511', null, '0', '0');
INSERT INTO `product_item` VALUES ('311', '红纤白卡纸', '12', '红纤白卡纸', '22', '1547106523', null, '0', '0');
INSERT INTO `product_item` VALUES ('312', '太阳纸', '12', '太阳纸', '23', '1547106535', null, '0', '0');
INSERT INTO `product_item` VALUES ('313', '胶印、凹印', '13', '胶印、凹印', '4', '1547106698', null, '0', '0');
INSERT INTO `product_item` VALUES ('314', '胶印、丝网印刷', '13', '胶印、丝网印刷', '6', '1547106709', null, '0', '0');
INSERT INTO `product_item` VALUES ('315', '无铝内衬纸', '14', '无铝内衬纸', '3', '1547106781', null, '0', '0');
INSERT INTO `product_item` VALUES ('316', '喷铝箔', '14', '喷铝箔', '4', '1547106790', null, '0', '0');
INSERT INTO `product_item` VALUES ('317', '铝内衬纸', '14', '铝内衬纸', '2', '1547106799', null, '0', '0');
INSERT INTO `product_item` VALUES ('318', '特种纸', '14', '特种纸', '6', '1547106808', null, '0', '0');
INSERT INTO `product_item` VALUES ('319', '浅金色压波浪纹', '15', '浅金色压波浪纹', '0', '1547106908', null, '0', '0');
INSERT INTO `product_item` VALUES ('320', '印有\"yunYan\"水印字样', '15', '印有\"yunYan\"水印字样', '0', '1547106927', null, '0', '0');
INSERT INTO `product_item` VALUES ('321', '银色压纹内衬纸', '15', '银色压纹内衬纸', '0', '1547107086', null, '0', '0');
INSERT INTO `product_item` VALUES ('322', '古铜金色预压“小熊猫”图文内衬纸', '15', '古铜金色预压“小熊猫”图文内衬纸', '0', '1547107096', null, '0', '0');
INSERT INTO `product_item` VALUES ('323', '镭射金色压纹内衬纸', '15', '镭射金色压纹内衬纸', '0', '1547107109', null, '0', '0');
INSERT INTO `product_item` VALUES ('324', '金色在线压纹“福”字', '15', '金色在线压纹“福”字', '0', '1547107121', null, '0', '0');
INSERT INTO `product_item` VALUES ('325', '金色印字内衬纸', '15', '金色印字内衬纸', '0', '1547107133', null, '0', '0');
INSERT INTO `product_item` VALUES ('326', '浅金色压花纹', '15', '浅金色压花纹', '0', '1547107279', null, '0', '0');
INSERT INTO `product_item` VALUES ('327', '浅金色压纹点', '15', '浅金色压纹点', '0', '1547107300', null, '0', '0');
INSERT INTO `product_item` VALUES ('328', '镭射转移印“雪莲”字样', '15', '镭射转移印“雪莲”字样', '0', '1547107318', null, '0', '0');
INSERT INTO `product_item` VALUES ('329', '金色印“雪莲王字图”', '15', '金色印“雪莲王字图”', '0', '1547107330', null, '0', '0');
INSERT INTO `product_item` VALUES ('330', '咖啡色印刷压纹', '15', '咖啡色印刷压纹', '0', '1547107346', null, '0', '0');
INSERT INTO `product_item` VALUES ('331', '金色镭射', '15', '金色镭射', '0', '1547107356', null, '0', '0');
INSERT INTO `product_item` VALUES ('332', '金色镭射印字', '15', '金色镭射印字', '0', '1547107375', null, '0', '0');
INSERT INTO `product_item` VALUES ('333', '白底金字印刷压纹', '15', '白底金字印刷压纹', '0', '1547107395', null, '0', '0');
INSERT INTO `product_item` VALUES ('334', '白色金色印刷压纹', '15', '白色金色印刷压纹', '0', '1547107409', null, '0', '0');
INSERT INTO `product_item` VALUES ('335', '双密度斜纹金色压花', '15', '双密度斜纹金色压花', '0', '1547107418', null, '0', '0');
INSERT INTO `product_item` VALUES ('336', '预压“HONGHE 红河”字体及图案', '15', '预压“HONGHE 红河”字体及图案', '0', '1547107431', null, '0', '0');
INSERT INTO `product_item` VALUES ('337', '印有镭射“竹子”加“小熊猫”标记与牌名“小熊猫”字样的组合文图镭射内衬纸', '15', '印有镭射“竹子”加“小熊猫”标记与牌名“小熊猫”字样的组合文图镭射内衬纸', '0', '1547107446', null, '0', '0');
INSERT INTO `product_item` VALUES ('338', '金色内衬纸', '15', '金色内衬纸', '0', '1547107461', null, '0', '0');
INSERT INTO `product_item` VALUES ('339', '玫瑰金点状压纹内衬纸', '15', '玫瑰金点状压纹内衬纸', '0', '1547107472', null, '0', '0');
INSERT INTO `product_item` VALUES ('340', '金色龙马抱塔压纹水印内衬纸', '15', '金色龙马抱塔压纹水印内衬纸', '0', '1547107487', null, '0', '0');
INSERT INTO `product_item` VALUES ('341', '红金色，斜条压花图案，直包方式，顶底折叠顺序不一致', '15', '红金色，斜条压花图案，直包方式，顶底折叠顺序不一致', '0', '1547107506', null, '0', '0');
INSERT INTO `product_item` VALUES ('342', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序不一致', '15', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序不一致', '0', '1547107518', null, '0', '0');
INSERT INTO `product_item` VALUES ('343', '金色，细点状压花，直包方式，顶底折叠顺序不一致', '15', '金色，细点状压花，直包方式，顶底折叠顺序不一致', '0', '1547107528', null, '0', '0');
INSERT INTO `product_item` VALUES ('344', '红金点状压纹内衬纸', '15', '红金点状压纹内衬纸', '0', '1547107541', null, '0', '0');
INSERT INTO `product_item` VALUES ('345', '玫瑰金压纹内衬纸', '15', '玫瑰金压纹内衬纸', '0', '1547107556', null, '0', '0');
INSERT INTO `product_item` VALUES ('346', '玉溪(透明)内衬纸', '15', '玉溪(透明)内衬纸', '0', '1547107567', null, '0', '0');
INSERT INTO `product_item` VALUES ('347', '金黄内衬纸', '15', '金黄内衬纸', '0', '1547107579', null, '0', '0');
INSERT INTO `product_item` VALUES ('348', '金色龙马抱塔压纹内衬纸', '15', '金色龙马抱塔压纹内衬纸', '0', '1547107591', null, '0', '0');
INSERT INTO `product_item` VALUES ('349', '哑金黄压纹内衬纸', '15', '哑金黄压纹内衬纸', '0', '1547107606', null, '0', '0');
INSERT INTO `product_item` VALUES ('350', '彩金点状压纹内衬纸', '15', '彩金点状压纹内衬纸', '0', '1547107616', null, '0', '0');
INSERT INTO `product_item` VALUES ('351', '专黄印花无铝内衬纸', '15', '专黄印花无铝内衬纸', '0', '1547107633', null, '0', '0');
INSERT INTO `product_item` VALUES ('352', '彩图印刷内衬纸', '15', '彩图印刷内衬纸', '0', '1547107646', null, '0', '0');
INSERT INTO `product_item` VALUES ('353', '金色镀铝龙马抱塔压纹内衬纸', '15', '金色镀铝龙马抱塔压纹内衬纸', '0', '1547107656', null, '0', '0');
INSERT INTO `product_item` VALUES ('354', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致', '15', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致', '0', '1547107668', null, '0', '0');
INSERT INTO `product_item` VALUES ('355', '白色内衬纸', '15', '白色内衬纸', '0', '1547107680', null, '0', '0');
INSERT INTO `product_item` VALUES ('356', '银色龙马抱塔压纹内衬纸', '15', '银色龙马抱塔压纹内衬纸', '0', '1547107691', null, '0', '0');
INSERT INTO `product_item` VALUES ('357', '银色压纹（传奇）内衬纸', '15', '银色压纹（传奇）内衬纸', '0', '1547107724', null, '0', '0');
INSERT INTO `product_item` VALUES ('358', '浅玫瑰金龙马抱塔压纹内衬纸', '15', '浅玫瑰金龙马抱塔压纹内衬纸', '0', '1547107734', null, '0', '0');
INSERT INTO `product_item` VALUES ('359', '金色，细点状压花，横包方式，顶底折叠顺序一致', '15', '金色，细点状压花，横包方式，顶底折叠顺序一致', '0', '1547107745', null, '0', '0');
INSERT INTO `product_item` VALUES ('360', '银色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致。', '15', '银色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致。', '0', '1547107756', null, '0', '0');
INSERT INTO `product_item` VALUES ('361', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致。', '15', '金色，龙马抱塔压花图案，直包方式，顶底折叠顺序一致。', '0', '1547107768', null, '0', '0');
INSERT INTO `product_item` VALUES ('362', '银色', '15', '银色', '0', '1547107780', null, '0', '0');
INSERT INTO `product_item` VALUES ('363', '银色内衬纸', '15', '银色内衬纸', '0', '1547107793', null, '0', '0');
INSERT INTO `product_item` VALUES ('364', '拉线', '55', '拉线', '0', '1547108151', null, '0', '0');
INSERT INTO `product_item` VALUES ('365', '背面金色圆形图标，拉带', '55', '背面金色圆形图标，拉带', '0', '1547108161', null, '0', '0');
INSERT INTO `product_item` VALUES ('366', '1.小盒底部中间位置；2.小盒纸张纤维中', '55', '1.小盒底部中间位置；2.小盒纸张纤维中', '0', '1547108178', null, '0', '0');
INSERT INTO `product_item` VALUES ('367', '盒底部中间位置', '55', '盒底部中间位置', '0', '1547108187', null, '0', '0');
INSERT INTO `product_item` VALUES ('368', '左侧面', '55', '左侧面', '0', '1547108202', null, '0', '0');
INSERT INTO `product_item` VALUES ('369', '右侧面', '8', '右侧面', '0', '1547108228', null, '0', '0');
INSERT INTO `product_item` VALUES ('370', '小盒底部', '55', '小盒底部', '0', '1547108245', null, '0', '0');
INSERT INTO `product_item` VALUES ('371', '正面右侧', '55', '正面右侧', '0', '1547108256', null, '0', '0');
INSERT INTO `product_item` VALUES ('372', '小盒背面', '55', '小盒背面', '0', '1547108268', null, '0', '0');
INSERT INTO `product_item` VALUES ('373', '小盒底部钢印位置', '55', '小盒底部钢印位置', '0', '1547108280', null, '0', '0');
INSERT INTO `product_item` VALUES ('374', '商品条码上面', '55', '商品条码上面', '0', '1547108291', null, '0', '0');
INSERT INTO `product_item` VALUES ('375', '1、小盒底部钢印位置；2、小盒纸张纤维中；3、小盒侧面及小盒盖内舌。', '55', '1、小盒底部钢印位置；2、小盒纸张纤维中；3、小盒侧面及小盒盖内舌。', '0', '1547108305', null, '0', '0');
INSERT INTO `product_item` VALUES ('376', '左侧面、底部', '55', '左侧面、底部', '0', '1547108315', null, '0', '0');
INSERT INTO `product_item` VALUES ('377', '1、小盒底部钢印位置；2、小盒纸张纤维中。', '55', '1、小盒底部钢印位置；2、小盒纸张纤维中。', '0', '1547108324', null, '0', '0');
INSERT INTO `product_item` VALUES ('378', '小盒顶部', '55', '小盒顶部', '0', '1547108332', null, '0', '0');
INSERT INTO `product_item` VALUES ('379', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。', '56', '不同的角度呈现立体雕刻的双龙、深度云层背景与动态光芒交替变换的效果。', '0', '1547108481', null, '0', '1');
INSERT INTO `product_item` VALUES ('380', '全透明激光防伪拉线，印有“XUELIN.雪莲”字样', '56', '全透明激光防伪拉线，印有“XUELIN.雪莲”字样', '0', '1547108493', null, '0', '0');
INSERT INTO `product_item` VALUES ('381', '放大显示“雪莲王”字样，透明激光防伪拉线，拉带上印有“XUE LIAN·雪莲”字样', '56', '放大显示“雪莲王”字样，透明激光防伪拉线，拉带上印有“XUE LIAN·雪莲”字样', '0', '1547108567', null, '0', '0');
INSERT INTO `product_item` VALUES ('382', '1.在小盒底部中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '56', '1.在小盒底部中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2.红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547108577', null, '0', '0');
INSERT INTO `product_item` VALUES ('383', '在小盒底部中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '56', '在小盒底部中间位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字', '0', '1547108619', null, '0', '0');
INSERT INTO `product_item` VALUES ('384', '小盒上有二维码', '56', '小盒上有二维码', '0', '1547108632', null, '0', '0');
INSERT INTO `product_item` VALUES ('385', '1.在小盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中 ', '56', '1.在小盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中 ', '0', '1547108643', null, '0', '0');
INSERT INTO `product_item` VALUES ('386', '小盒底部有椭圆形银色全息防伪标记；小盒上有二维码', '56', '小盒底部有椭圆形银色全息防伪标记；小盒上有二维码', '0', '1547108656', null, '0', '0');
INSERT INTO `product_item` VALUES ('387', '小盒底部有二维码', '56', '小盒底部有二维码', '0', '1547108666', null, '0', '0');
INSERT INTO `product_item` VALUES ('388', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码 ', '56', '1.在条盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码 ', '0', '1547108783', null, '0', '0');
INSERT INTO `product_item` VALUES ('389', '1、小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长；3、用手机微信扫码功能扫描小盒侧面的二维码，根据系统提示输入小盒盖内舌的验证码验真。', '56', '1、小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长；3、用手机微信扫码功能扫描小盒侧面的二维码，根据系统提示输入小盒盖内舌的验证码验真。', '0', '1547108814', null, '0', '0');
INSERT INTO `product_item` VALUES ('390', '1小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '56', '1小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '0', '1547108826', null, '0', '0');
INSERT INTO `product_item` VALUES ('391', '1.在小盒背面有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '56', '1.在小盒背面有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '0', '1547108838', null, '0', '0');
INSERT INTO `product_item` VALUES ('392', '1.在小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '56', '1.在小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中', '0', '1547108852', null, '0', '0');
INSERT INTO `product_item` VALUES ('393', '在小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '56', '在小盒底部位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '0', '1547108863', null, '0', '0');
INSERT INTO `product_item` VALUES ('394', '1.在小盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '56', '1.在小盒长边侧面（条码面）中间位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '0', '1547108872', null, '0', '0');
INSERT INTO `product_item` VALUES ('395', '1.小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.条盒上有二维码', '56', '1.小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.条盒上有二维码', '0', '1547108883', null, '0', '0');
INSERT INTO `product_item` VALUES ('396', '1.在小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '56', '1.在小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记；2.彩色（红色）纤维随机分布在纸张纤维中3.小盒上有二维码', '0', '1547108895', null, '0', '0');
INSERT INTO `product_item` VALUES ('397', '1、小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '56', '1、小盒底部钢印位置有椭圆形银色全息(镭射)防伪标记，从不同角度可以观察到不同图案及文字；2、红色纤维在造纸过程中加入，随机分布在纸张纤维中，红色、弯曲、约3-5毫米长。', '0', '1547108906', null, '0', '0');
INSERT INTO `product_item` VALUES ('398', '在小盒背面位置有椭圆形银色全息(镭射)防伪标记', '56', '在小盒背面位置有椭圆形银色全息(镭射)防伪标记', '0', '1547108917', null, '0', '0');
INSERT INTO `product_item` VALUES ('399', '在小盒顶部位置有椭圆形银色全息(镭射)防伪标记', '56', '在小盒顶部位置有椭圆形银色全息(镭射)防伪标记', '0', '1547108930', null, '0', '0');
INSERT INTO `product_item` VALUES ('400', '单一', '16', '单一', '0', '1547109006', null, '0', '0');
INSERT INTO `product_item` VALUES ('401', '24', '17', '24', '0', '1547109040', null, '0', '0');
INSERT INTO `product_item` VALUES ('402', '27', '17', '27', '0', '1547109053', null, '0', '0');
INSERT INTO `product_item` VALUES ('403', '红色、镭射金双色烫金，印刷底纹', '18', '红色、镭射金双色烫金，印刷底纹', '0', '1547109143', null, '0', '0');
INSERT INTO `product_item` VALUES ('404', '黄色印金水松纸，印字内容为“云烟yunyan”', '18', '黄色印金水松纸，印字内容为“云烟yunyan”', '0', '1547109155', null, '0', '0');
INSERT INTO `product_item` VALUES ('405', '红色烫金', '18', '红色烫金', '0', '1547109171', null, '0', '0');
INSERT INTO `product_item` VALUES ('406', '红色、金色双色烫金四排激光打孔接装纸', '18', '红色、金色双色烫金四排激光打孔接装纸', '0', '1547109195', null, '0', '0');
INSERT INTO `product_item` VALUES ('407', '红色、金色双色烫金四排激光打孔', '18', '红色、金色双色烫金四排激光打孔', '0', '1547109216', null, '0', '0');
INSERT INTO `product_item` VALUES ('408', '单色烫金镭射金', '18', '单色烫金镭射金', '0', '1547109230', null, '0', '0');
INSERT INTO `product_item` VALUES ('409', '银色、金色双色烫金', '18', '银色、金色双色烫金', '0', '1547109243', null, '0', '0');
INSERT INTO `product_item` VALUES ('410', '红色银色双色烫金', '18', '红色银色双色烫金', '0', '1547109256', null, '0', '0');
INSERT INTO `product_item` VALUES ('411', '银色烫金两排激光打孔', '18', '银色烫金两排激光打孔', '0', '1547109267', null, '0', '0');
INSERT INTO `product_item` VALUES ('412', '印刷型激光打孔接装纸', '18', '印刷型激光打孔接装纸', '0', '1547109330', null, '0', '0');
INSERT INTO `product_item` VALUES ('413', '烫红铜色彩色套印高光纸接装纸', '18', '烫红铜色彩色套印高光纸接装纸', '0', '1547109372', null, '0', '0');
INSERT INTO `product_item` VALUES ('414', '烫金双色印刷激光打孔接装纸', '18', '烫金双色印刷激光打孔接装纸', '0', '1547109390', null, '0', '0');
INSERT INTO `product_item` VALUES ('415', '单色烫金四排激光打孔接装纸', '18', '单色烫金四排激光打孔接装纸', '0', '1547109415', null, '0', '0');
INSERT INTO `product_item` VALUES ('416', '四排激光打孔单色烫金接装纸', '18', '四排激光打孔单色烫金接装纸', '0', '1547109430', null, '0', '0');
INSERT INTO `product_item` VALUES ('417', '棕红色、红色双色烫金', '18', '棕红色、红色双色烫金', '0', '1547109455', null, '0', '0');
INSERT INTO `product_item` VALUES ('418', '艾特莱斯图案', '18', '艾特莱斯图案', '0', '1547109466', null, '0', '0');
INSERT INTO `product_item` VALUES ('419', '青花瓷烫银', '18', '青花瓷烫银', '0', '1547109479', null, '0', '0');
INSERT INTO `product_item` VALUES ('420', '蓝色印刷型', '18', '蓝色印刷型', '0', '1547109490', null, '0', '0');
INSERT INTO `product_item` VALUES ('421', '双色烫金', '18', '双色烫金', '0', '1547109512', null, '0', '0');
INSERT INTO `product_item` VALUES ('422', '白底，蓝色、金色双色', '18', '白底，蓝色、金色双色', '0', '1547109525', null, '0', '0');
INSERT INTO `product_item` VALUES ('423', '暗红、金双色烫金', '18', '暗红、金双色烫金', '0', '1547109541', null, '0', '0');
INSERT INTO `product_item` VALUES ('424', '红色、金色', '18', '红色、金色', '0', '1547109554', null, '0', '0');
INSERT INTO `product_item` VALUES ('425', '暗红底色，金色、银色双色', '18', '暗红底色，金色、银色双色', '0', '1547109575', null, '0', '0');
INSERT INTO `product_item` VALUES ('426', '普通印刷接装纸', '18', '普通印刷接装纸', '0', '1547109588', null, '0', '0');
INSERT INTO `product_item` VALUES ('427', '金色红色双色烫金', '18', '金色红色双色烫金', '0', '1547109603', null, '0', '0');
INSERT INTO `product_item` VALUES ('428', '咖啡色、烫金、烫红', '18', '咖啡色、烫金、烫红', '0', '1547109614', null, '0', '0');
INSERT INTO `product_item` VALUES ('429', '黄色，烫印褐金色线条', '18', '黄色，烫印褐金色线条', '0', '1547109627', null, '0', '0');
INSERT INTO `product_item` VALUES ('430', '深黄色，烫印金色线条', '18', '深黄色，烫印金色线条', '0', '1547109640', null, '0', '0');
INSERT INTO `product_item` VALUES ('431', '蓝色、金色、黄色、淡黄', '18', '蓝色、金色、黄色、淡黄', '0', '1547109652', null, '0', '0');
INSERT INTO `product_item` VALUES ('432', '橘黄色，烫印棕色字体', '18', '橘黄色，烫印棕色字体', '0', '1547109666', null, '0', '0');
INSERT INTO `product_item` VALUES ('433', '橙色底色，采用双排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '18', '橙色底色，采用双排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '0', '1547109680', null, '0', '0');
INSERT INTO `product_item` VALUES ('434', '深咖啡色，带网格状白点，采用双排激光打孔通风，烫印金色线条，品牌标识金色', '18', '深咖啡色，带网格状白点，采用双排激光打孔通风，烫印金色线条，品牌标识金色', '0', '1547109715', null, '0', '0');
INSERT INTO `product_item` VALUES ('435', '烫镭射金、咖啡色', '18', '烫镭射金、咖啡色', '0', '1547109735', null, '0', '0');
INSERT INTO `product_item` VALUES ('436', '烫金、烫红、黄色、淡黄色', '18', '烫金、烫红、黄色、淡黄色', '0', '1547109747', null, '0', '0');
INSERT INTO `product_item` VALUES ('437', '黄色、烫金红色线条', '18', '黄色、烫金红色线条', '0', '1547109761', null, '0', '0');
INSERT INTO `product_item` VALUES ('438', '黄色底色，烫印金色线条', '18', '黄色底色，烫印金色线条', '0', '1547109775', null, '0', '0');
INSERT INTO `product_item` VALUES ('439', '浅咖啡色，烫印金色线条', '18', '浅咖啡色，烫印金色线条', '0', '1547109787', null, '0', '0');
INSERT INTO `product_item` VALUES ('440', '橙底纹色，双线烫印金色线条', '18', '橙底纹色，双线烫印金色线条', '0', '1547109799', null, '0', '0');
INSERT INTO `product_item` VALUES ('441', '浅黄色，烫印蓝色线条', '18', '浅黄色，烫印蓝色线条', '0', '1547109819', null, '0', '0');
INSERT INTO `product_item` VALUES ('442', '深咖啡色，烫印金色线条', '18', '深咖啡色，烫印金色线条', '0', '1547109835', null, '0', '0');
INSERT INTO `product_item` VALUES ('443', '黄色，烫褐金、烫金 ', '18', '黄色，烫褐金、烫金 ', '0', '1547109852', null, '0', '0');
INSERT INTO `product_item` VALUES ('444', '金色、黄色、红色、淡黄', '18', '金色、黄色、红色、淡黄', '0', '1547109862', null, '0', '0');
INSERT INTO `product_item` VALUES ('445', '黄色、蓝色、印金', '18', '黄色、蓝色、印金', '0', '1547109874', null, '0', '0');
INSERT INTO `product_item` VALUES ('446', '深黄色底色，采用三排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '18', '深黄色底色，采用三排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '0', '1547109886', null, '0', '0');
INSERT INTO `product_item` VALUES ('447', '烫金、烫红、浅棕色', '18', '烫金、烫红、浅棕色', '0', '1547109897', null, '0', '0');
INSERT INTO `product_item` VALUES ('448', '暗金色', '18', '暗金色', '0', '1547109908', null, '0', '0');
INSERT INTO `product_item` VALUES ('449', '烫金、烫红、黄色', '18', '烫金、烫红、黄色', '0', '1547109924', null, '0', '0');
INSERT INTO `product_item` VALUES ('450', '浅棕色，烫印金色线条', '18', '浅棕色，烫印金色线条', '0', '1547109937', null, '0', '0');
INSERT INTO `product_item` VALUES ('451', '橙色底色，烫印2条银色线条，品牌标识红色烫金。', '18', '橙色底色，烫印2条银色线条，品牌标识红色烫金。', '0', '1547109950', null, '0', '0');
INSERT INTO `product_item` VALUES ('452', '橙色底色，烫印金色线条，品牌标识金色、红色烫金。', '18', '橙色底色，烫印金色线条，品牌标识金色、红色烫金。', '0', '1547109965', null, '0', '0');
INSERT INTO `product_item` VALUES ('453', '橙色底色，采用三排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '18', '橙色底色，采用三排激光打孔通风，烫印金色线条，品牌标识金色、红色烫金。', '0', '1547109978', null, '0', '0');
INSERT INTO `product_item` VALUES ('454', '银、蓝色，珠光白色', '18', '银、蓝色，珠光白色', '0', '1547109991', null, '0', '0');
INSERT INTO `product_item` VALUES ('455', '米黄色底色，底边阿诗玛图标，棕黄色线条，采用三排激光打孔通风，烫印金色线条，品牌标识红色烫金。', '18', '米黄色底色，底边阿诗玛图标，棕黄色线条，采用三排激光打孔通风，烫印金色线条，品牌标识红色烫金。', '0', '1547110005', null, '0', '0');
INSERT INTO `product_item` VALUES ('456', '黄色、淡黄色、金色、黑色', '18', '黄色、淡黄色、金色、黑色', '0', '1547110018', null, '0', '0');
INSERT INTO `product_item` VALUES ('457', '黄色、淡黄色、金色', '18', '黄色、淡黄色、金色', '0', '1547110031', null, '0', '0');
INSERT INTO `product_item` VALUES ('458', '34', '19', '34', '0', '1547110122', null, '0', '0');
INSERT INTO `product_item` VALUES ('459', '40', '19', '40', '0', '1547110135', null, '0', '0');
INSERT INTO `product_item` VALUES ('460', '44', '19', '44', '0', '1547110144', null, '0', '0');
INSERT INTO `product_item` VALUES ('461', '在线打孔', '21', '在线打孔', '0', '1547110205', null, '0', '0');
INSERT INTO `product_item` VALUES ('462', '双排激光打孔通风', '22', '双排激光打孔通风', '5', '1547110252', null, '0', '0');
INSERT INTO `product_item` VALUES ('463', '3排', '22', '3排', '3', '1547110285', null, '0', '0');
INSERT INTO `product_item` VALUES ('464', '彩色', '23', '彩色', '0', '1547110323', null, '0', '0');
INSERT INTO `product_item` VALUES ('465', '格纹', '24', '格纹', '0', '1547110429', null, '0', '0');
INSERT INTO `product_item` VALUES ('466', '全麻斜纹', '24', '全麻斜纹', '0', '1547110444', null, '0', '0');
INSERT INTO `product_item` VALUES ('467', '直罗纹', '24', '直罗纹', '0', '1547110473', null, '0', '0');
INSERT INTO `product_item` VALUES ('468', '方格', '24', '方格', '0', '1547110847', null, '0', '0');
INSERT INTO `product_item` VALUES ('469', '横罗纹', '24', '横罗纹', '0', '1547110862', null, '0', '0');
INSERT INTO `product_item` VALUES ('470', '竖罗纹', '24', '竖罗纹', '0', '1547110873', null, '0', '0');
INSERT INTO `product_item` VALUES ('471', '普通', '25', '普通', '1', '1547110915', null, '0', '0');
INSERT INTO `product_item` VALUES ('472', '高透6000CU', '25', '高透6000CU', '3', '1547110959', null, '0', '0');
INSERT INTO `product_item` VALUES ('473', '高透11000CU', '25', '高透11000CU', '5', '1547110971', null, '0', '0');
INSERT INTO `product_item` VALUES ('474', '高透24000CU', '25', '高透24000CU', '7', '1547110979', null, '0', '0');
INSERT INTO `product_item` VALUES ('475', '叶丝、梗丝、再造烟叶(薄片)', '26', '叶丝、梗丝、再造烟叶(薄片)', '2', '1547111079', null, '0', '0');
INSERT INTO `product_item` VALUES ('476', '叶丝、梗丝', '26', '叶丝、梗丝', '2', '1547111102', null, '0', '0');
INSERT INTO `product_item` VALUES ('477', '叶丝、膨胀梗丝、造纸法再造烟叶', '26', '叶丝、膨胀梗丝、造纸法再造烟叶', '6', '1547111114', null, '0', '0');
INSERT INTO `product_item` VALUES ('478', '叶丝、膨胀梗丝、再造烟叶', '26', '叶丝、膨胀梗丝、再造烟叶', '6', '1547111126', null, '0', '0');
INSERT INTO `product_item` VALUES ('479', '叶丝', '26', '叶丝', '1', '1547111136', null, '0', '0');
INSERT INTO `product_item` VALUES ('480', '叶丝、梗丝、再造烟叶（薄片）', '26', '叶丝、梗丝、再造烟叶（薄片）', '2', '1547111150', null, '0', '0');
INSERT INTO `product_item` VALUES ('481', '叶丝、膨胀梗丝', '26', '叶丝、膨胀梗丝', '6', '1547111163', '1547111196', '0', '0');
INSERT INTO `product_item` VALUES ('482', '叶丝，梗丝，再造烟叶', '26', '叶丝，梗丝，再造烟叶', '2', '1547111217', null, '0', '0');
INSERT INTO `product_item` VALUES ('483', '叶丝、再造烟叶', '26', '叶丝、再造烟叶', '5', '1547111369', null, '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='规格表';

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
INSERT INTO `product_spec` VALUES ('24', '卷烟纸罗纹', 'jyzlw', '卷烟纸罗纹', '3', '24', '1544066508', '1547110487', '0', '0');
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
INSERT INTO `product_spec` VALUES ('40', '防伪图解条盒钢印', 'fwtjthgyh', '防伪图解条盒钢印', '6', '555', '1545033998', '1548039060', '0', '0');
INSERT INTO `product_spec` VALUES ('41', '防伪图解小盒正面', 'fwtjxhzm', '防伪图解小盒正面', '6', '666', '1545034040', null, '0', '0');
INSERT INTO `product_spec` VALUES ('42', '防伪图解小盒背面', 'fwtjxhbm', '防伪图解小盒背面', '6', '666', '1545034066', '1545038399', '0', '0');
INSERT INTO `product_spec` VALUES ('43', '防伪图解小盒左侧', 'fwtjxhzc', '防伪图解小盒左侧', '6', '666', '1545034179', null, '0', '0');
INSERT INTO `product_spec` VALUES ('44', '防伪图解小盒右侧', 'fwtjxhyc', '防伪图解小盒右侧', '6', '666', '1545034204', null, '0', '0');
INSERT INTO `product_spec` VALUES ('45', '防伪图解小盒顶部', 'fwtjxhdb', '防伪图解小盒顶部', '6', '666', '1545034271', null, '0', '0');
INSERT INTO `product_spec` VALUES ('46', '防伪图解小盒底部', 'fwtjxhdb2', '防伪图解小盒底部', '6', '666', '1545034289', null, '0', '0');
INSERT INTO `product_spec` VALUES ('47', '防伪图解小盒钢印', 'fwtjxhgyh', '防伪图解小盒钢印', '6', '666', '1545034309', '1548039071', '0', '0');
INSERT INTO `product_spec` VALUES ('48', '防伪图解烟支正面', 'fwtjyzzm', '防伪图解烟支正面', '6', '777', '1545034354', null, '0', '0');
INSERT INTO `product_spec` VALUES ('49', '防伪图解烟支背面', 'fwtjyzbm', '防伪图解烟支背面', '6', '777', '1545034377', null, '0', '0');
INSERT INTO `product_spec` VALUES ('50', '防伪图解烟支左侧', 'fwtjyzzc', '防伪图解烟支左侧', '6', '777', '1545034396', null, '0', '0');
INSERT INTO `product_spec` VALUES ('51', '防伪图解烟支右侧', 'fwtjyzyc', '防伪图解烟支右侧', '6', '777', '1545034419', null, '0', '0');
INSERT INTO `product_spec` VALUES ('52', '防伪图解烟支顶部', 'fwtjyzdb', '防伪图解烟支顶部', '6', '777', '1545034436', null, '0', '0');
INSERT INTO `product_spec` VALUES ('53', '防伪图解烟支底部', 'fwtjyzdb2', '防伪图解烟支底部', '6', '777', '1545034458', null, '0', '0');
INSERT INTO `product_spec` VALUES ('54', '防伪图解烟支其它', 'fwtjyzqt', '防伪图解烟支其它', '6', '777', '1545034489', null, '0', '0');
INSERT INTO `product_spec` VALUES ('55', '盒防伪位置', 'hfwwz', '盒防伪位置', '3', '15', '1545817952', null, '0', '0');
INSERT INTO `product_spec` VALUES ('56', '盒防伪特征描述及识别方法', 'hfwtzms', '盒防伪特征描述及识别方法', '3', '15', '1545817980', '1545818395', '0', '0');
INSERT INTO `product_spec` VALUES ('57', '防伪图解条盒胶点', 'fwtjthjd', '防伪图解条盒胶点', '6', '555', '1548032908', null, '0', '0');
INSERT INTO `product_spec` VALUES ('58', '防伪图解小盒胶点', 'fwtjxhjd', '防伪图解小盒胶点', '6', '666', '1548032931', null, '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sms_log
-- ----------------------------
INSERT INTO `sms_log` VALUES ('1', '18347944063', '111111', '1546495918');
INSERT INTO `sms_log` VALUES ('2', '15888888888', '111111', '1546498666');
INSERT INTO `sms_log` VALUES ('3', '18214552124', '111111', '1547017238');
INSERT INTO `sms_log` VALUES ('4', '18208702258', '111111', '1547017461');

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统参数配置';

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
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,xls,icon,mp4');
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
INSERT INTO `system_config` VALUES ('49', 'sms_sub_appid', '31314');
INSERT INTO `system_config` VALUES ('50', 'sms_sub_project', '10H102');
INSERT INTO `system_config` VALUES ('51', 'sms_sub_signature', 'db318a385d9563d3655164596d373a20');

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统操作日志表';

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
INSERT INTO `system_log` VALUES ('67', '112.115.183.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-09 08:51:14');
INSERT INTO `system_log` VALUES ('68', '220.163.34.246', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-10 11:28:25');
INSERT INTO `system_log` VALUES ('69', '220.163.34.246', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-10 16:28:52');
INSERT INTO `system_log` VALUES ('70', '116.249.111.102', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-10 21:05:00');
INSERT INTO `system_log` VALUES ('71', '112.115.186.232', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-11 10:36:07');
INSERT INTO `system_log` VALUES ('72', '220.165.212.194', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-11 16:28:12');
INSERT INTO `system_log` VALUES ('73', '112.115.184.206', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-14 09:01:06');
INSERT INTO `system_log` VALUES ('74', '112.115.184.206', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-14 16:56:48');
INSERT INTO `system_log` VALUES ('75', '112.115.184.206', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-14 17:08:30');
INSERT INTO `system_log` VALUES ('76', '182.242.77.181', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-15 00:35:41');
INSERT INTO `system_log` VALUES ('77', '116.52.123.253', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-15 18:04:03');
INSERT INTO `system_log` VALUES ('78', '116.52.123.253', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-01-15 18:14:37');
INSERT INTO `system_log` VALUES ('79', '116.52.123.253', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-16 08:50:24');
INSERT INTO `system_log` VALUES ('80', '116.52.123.253', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-16 09:23:08');
INSERT INTO `system_log` VALUES ('81', '182.245.125.234', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-16 14:41:09');
INSERT INTO `system_log` VALUES ('82', '42.243.62.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-17 13:22:50');
INSERT INTO `system_log` VALUES ('83', '42.243.62.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-18 09:07:47');
INSERT INTO `system_log` VALUES ('84', '14.205.133.99', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-18 12:09:57');
INSERT INTO `system_log` VALUES ('85', '42.243.62.213', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-01-18 15:47:35');
INSERT INTO `system_log` VALUES ('86', '116.54.24.27', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-19 09:22:10');
INSERT INTO `system_log` VALUES ('87', '42.243.62.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-19 09:37:03');
INSERT INTO `system_log` VALUES ('88', '112.117.52.52', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-01-19 16:00:44');
INSERT INTO `system_log` VALUES ('89', '112.117.52.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-21 08:39:12');
INSERT INTO `system_log` VALUES ('90', '112.117.52.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-21 09:32:40');
INSERT INTO `system_log` VALUES ('91', '112.117.52.52', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-01-21 10:34:48');
INSERT INTO `system_log` VALUES ('92', '112.117.52.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-21 10:44:03');
INSERT INTO `system_log` VALUES ('93', '116.249.29.108', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-21 21:32:28');
INSERT INTO `system_log` VALUES ('94', '116.249.63.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-22 08:36:26');
INSERT INTO `system_log` VALUES ('95', '116.249.63.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-22 09:31:27');
INSERT INTO `system_log` VALUES ('96', '116.249.63.126', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2019-01-22 10:48:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '11', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '90', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('3', '10', '系统参数', '', 'fa fa-modx', 'admin/config/index', '', '_self', '2', '1', '10000', '2018-01-19 15:27:57');
INSERT INTO `system_menu` VALUES ('4', '11', '角色管理', '', 'fa fa-group', 'admin/auth/index', '', '_self', '20', '1', '10000', '2018-01-22 11:13:02');
INSERT INTO `system_menu` VALUES ('5', '11', '管理员管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '10', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('6', '11', '节点管理', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '30', '1', '0', '2018-01-23 12:36:54');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '0', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('8', '16', '系统日志', '', 'fa fa-code', 'admin/log/index', '', '_self', '10', '1', '0', '2018-01-24 13:52:58');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '3', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', '', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '权限管理', '', '', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('16', '1', '日志管理', '', '', '#', '', '_self', '400', '1', '0', '2018-02-10 16:31:15');
INSERT INTO `system_menu` VALUES ('32', '0', '产品管理', '', '', '#', '', '_self', '3000', '1', '0', '2018-03-20 16:46:07');
INSERT INTO `system_menu` VALUES ('33', '32', '产品管理', '', '', '#', '', '_self', '0', '1', '0', '2018-03-20 16:46:21');
INSERT INTO `system_menu` VALUES ('34', '33', '产品管理', '', 'fa fa-modx', 'admin/product/index', '', '_self', '2', '1', '0', '2018-03-20 16:46:45');
INSERT INTO `system_menu` VALUES ('35', '33', '产品规格管理', '', 'fa fa-hashtag', 'admin/product_spec/index', '', '_self', '3', '1', '0', '2018-03-20 16:47:08');
INSERT INTO `system_menu` VALUES ('36', '33', '产品规格属性管理', '', 'fa fa-product-hunt', 'admin/product_item/index', '', '_self', '4', '1', '0', '2018-03-20 16:47:50');
INSERT INTO `system_menu` VALUES ('37', '0', '机台管理', '', '', '#', '', '_self', '4000', '1', '0', '2018-03-20 16:48:05');
INSERT INTO `system_menu` VALUES ('38', '37', '机台管理', '', '', '#', '', '_self', '0', '1', '0', '2018-04-21 15:07:36');
INSERT INTO `system_menu` VALUES ('39', '38', '机台管理', '', 'fa fa-adjust', 'admin/machine/index', '', '_self', '2', '1', '0', '2018-04-21 15:07:54');
INSERT INTO `system_menu` VALUES ('40', '38', '机台规格管理', '', 'fa fa-scribd', 'admin/machine_spec/index', '', '_self', '3', '1', '0', '2018-04-21 15:08:17');
INSERT INTO `system_menu` VALUES ('41', '38', '机台规格属性管理', '', 'fa fa-mixcloud', 'admin/machine_item/index', '', '_self', '4', '1', '0', '2018-04-21 15:08:25');
INSERT INTO `system_menu` VALUES ('42', '33', '品牌管理', '', 'fa fa-shopping-bag', 'admin/brand/index', '', '_self', '1', '1', '0', '2018-12-20 13:59:07');
INSERT INTO `system_menu` VALUES ('43', '1', '通知公告', '', 'layui-icon layui-icon-notice', 'admin/notice/index', '', '_self', '2', '1', '0', '2018-12-21 15:44:16');
INSERT INTO `system_menu` VALUES ('44', '10', '用户管理', '', 'fa fa-user-circle-o', 'admin/member/index', '', '_self', '1', '1', '0', '2018-12-21 15:55:30');
INSERT INTO `system_menu` VALUES ('45', '38', '机型管理', '', 'fa fa-inbox', 'admin/type/index', '', '_self', '1', '1', '0', '2019-01-19 17:46:26');
INSERT INTO `system_menu` VALUES ('46', '1', '常见问题', '', 'layui-icon layui-icon-about', 'admin/problem/index', '', '_self', '3', '1', '0', '2019-01-21 18:06:08');
INSERT INTO `system_menu` VALUES ('47', '1', '文件资料', '', 'fa fa-file-archive-o', 'admin/document/index', '', '_self', '4', '1', '0', '2019-01-22 08:43:07');
INSERT INTO `system_menu` VALUES ('48', '1', '统计分析', '', 'layui-icon layui-icon-chart', 'admin/chat/statics', '', '_self', '1', '1', '0', '2019-01-22 16:01:04');
INSERT INTO `system_menu` VALUES ('49', '10', '地区管理', '', 'fa fa-paper-plane-o', 'admin/area/index', '', '_self', '4', '1', '0', '2019-01-22 18:20:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统节点表';

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
INSERT INTO `system_user` VALUES ('10000', 'admin', null, '0192023a7bbd73250516f069df18b500', '22222222', '', '', '', '23040', '2019-01-22 09:31:27', '0', '1', '0', null, '2015-11-13 15:14:22');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='机型表';

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', 'FK700', '', 'FK700', '0', '1547891548', null, '0', '0');
INSERT INTO `type` VALUES ('2', 'GDX2000', '', 'GDX2000', '0', '1547891587', null, '0', '0');
INSERT INTO `type` VALUES ('3', 'GDS1000', '', 'GDS1000', '0', '1547891605', null, '0', '0');
INSERT INTO `type` VALUES ('4', 'FOCKE-FX', '', 'FOCKE-FX', '0', '1547891621', null, '0', '0');
INSERT INTO `type` VALUES ('5', 'FOCKE350', '', 'FOCKE350', '0', '1547891634', null, '0', '0');
INSERT INTO `type` VALUES ('6', 'GDX1', '', 'GDX1', '0', '1547891649', null, '0', '0');
INSERT INTO `type` VALUES ('7', 'ZB45', '', 'ZB45', '0', '1547891661', null, '0', '0');
INSERT INTO `type` VALUES ('8', 'ZB28', '', 'ZB28', '0', '1547891679', null, '0', '0');
INSERT INTO `type` VALUES ('9', 'FOCKE-FXS', '', 'FOCKE-FXS', '0', '1547891688', null, '0', '0');
INSERT INTO `type` VALUES ('10', 'ZB48', '', 'ZB48', '0', '1547891697', null, '0', '0');
INSERT INTO `type` VALUES ('11', 'ZB45', '', 'ZB45', '0', '1547891711', null, '0', '0');
