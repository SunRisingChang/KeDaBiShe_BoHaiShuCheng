/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : ssh

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-01 17:49:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for _admin
-- ----------------------------
DROP TABLE IF EXISTS `_admin`;
CREATE TABLE `_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _admin
-- ----------------------------
INSERT INTO `_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for _category
-- ----------------------------
DROP TABLE IF EXISTS `_category`;
CREATE TABLE `_category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _category
-- ----------------------------
INSERT INTO `_category` VALUES ('1', '计算机');
INSERT INTO `_category` VALUES ('2', '小说');
INSERT INTO `_category` VALUES ('3', '科技');
INSERT INTO `_category` VALUES ('4', '期刊');
INSERT INTO `_category` VALUES ('5', '外文');
INSERT INTO `_category` VALUES ('6', '经济管理');
INSERT INTO `_category` VALUES ('7', '生活');
INSERT INTO `_category` VALUES ('8', '文学艺术');

-- ----------------------------
-- Table structure for _order
-- ----------------------------
DROP TABLE IF EXISTS `_order`;
CREATE TABLE `_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `uid` (`uid`),
  CONSTRAINT `_order_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _order
-- ----------------------------
INSERT INTO `_order` VALUES ('1', '26', '2017-05-15 16:48:23', '4', '6', 'Sun Rising Chang', '15041914007', '辽宁省辽阳市辽阳县', '111212');
INSERT INTO `_order` VALUES ('2', '42', '2017-05-15 16:49:16', '4', '6', 'Sun Rising Chang', '15041914007', '辽宁省辽阳市辽阳县', '111212');
INSERT INTO `_order` VALUES ('3', '200', '2017-05-18 12:07:30', '3', '6', 'Sun Rising Chang', '15041914007', '辽宁省辽阳市辽阳县', '111212');
INSERT INTO `_order` VALUES ('4', '40', '2017-05-19 08:16:53', '1', '6', 'Sun Rising Chang', '15041914007', '辽宁省辽阳市辽阳县', '111212');
INSERT INTO `_order` VALUES ('5', '40', '2017-05-19 09:12:28', '1', '6', 'Sun Rising Chang', '15041914007', '辽宁省辽阳市辽阳县', '111212');

-- ----------------------------
-- Table structure for _order_item
-- ----------------------------
DROP TABLE IF EXISTS `_order_item`;
CREATE TABLE `_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `oid` (`oid`),
  CONSTRAINT `FK_91fxaee9ojhca7ri6mh4jxf7d` FOREIGN KEY (`oid`) REFERENCES `_order` (`oid`),
  CONSTRAINT `FK_t26dscmvq6t5nuq96ct710vam` FOREIGN KEY (`pid`) REFERENCES `_product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _order_item
-- ----------------------------
INSERT INTO `_order_item` VALUES ('1', '1', '8', '22', '1');
INSERT INTO `_order_item` VALUES ('2', '1', '10', '18', '1');
INSERT INTO `_order_item` VALUES ('3', '1', '8', '13', '1');
INSERT INTO `_order_item` VALUES ('4', '1', '2', '30', '2');
INSERT INTO `_order_item` VALUES ('5', '1', '6', '4', '2');
INSERT INTO `_order_item` VALUES ('6', '1', '9', '19', '2');
INSERT INTO `_order_item` VALUES ('7', '1', '25', '11', '2');
INSERT INTO `_order_item` VALUES ('8', '4', '200', '8', '3');
INSERT INTO `_order_item` VALUES ('9', '1', '10', '3', '4');
INSERT INTO `_order_item` VALUES ('10', '2', '24', '5', '4');
INSERT INTO `_order_item` VALUES ('11', '1', '6', '4', '4');
INSERT INTO `_order_item` VALUES ('12', '1', '40', '9', '5');

-- ----------------------------
-- Table structure for _product
-- ----------------------------
DROP TABLE IF EXISTS `_product`;
CREATE TABLE `_product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `cid` (`cid`),
  CONSTRAINT `a` FOREIGN KEY (`cid`) REFERENCES `_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _product
-- ----------------------------
INSERT INTO `_product` VALUES ('3', '新世', '苏禹', '10', 'image/0df3d7ca7bcb0a462336d4506363f6246b60af47.jpg', '2017-05-11', '2');
INSERT INTO `_product` VALUES ('4', '伤心者', '何夕', '6', 'image/0bd162d9f2d3572cbebedb2e8c13632763d0c3e0.jpg', '2015-10-01', '2');
INSERT INTO `_product` VALUES ('5', '神经漫游者', ' [美]威廉·吉布森', '12', 'image/c9fcc3cec3fdfc03a70e42efd73f8794a4c22676.jpg', '2013-08-01', '2');
INSERT INTO `_product` VALUES ('6', '银河帝国：基地', ' [美]阿西莫夫', '8', 'image/d50735fae6cd7b892cef2361092442a7d8330e54.jpg', '2012-05-03', '2');
INSERT INTO `_product` VALUES ('7', '决战王妃3', ' [美]绮拉', '10', 'image/a8ec8a13632762d088493548a9ec08fa503dc6d6.jpg', '2016-10-01', '2');
INSERT INTO `_product` VALUES ('8', 'JavaScript高级程序设计', ' [美]Nicholas C. Zakas', '50', 'image/5bafa40f4bfbfbedb96cdcdb7af0f736afc31f58.jpg', '2012-03-01', '1');
INSERT INTO `_product` VALUES ('9', 'Java核心技术', ' ［美］凯S.霍斯特曼', '40', 'image/0eb30f2442a7d93341b68983a54bd11373f00127.jpg', '2016-08-01', '1');
INSERT INTO `_product` VALUES ('10', '深入剖析Tomcat ', '猎豹', '20', 'image/c995d143ad4bd11317f7fd3250afa40f4bfb05f3.png', '2017-05-15', '1');
INSERT INTO `_product` VALUES ('11', '看透Spring MVC', ' 韩路彪', '25', 'image/838ba61ea8d3fd1f21a5db86374e251f94ca5fd9.jpg', '2016-01-01', '1');
INSERT INTO `_product` VALUES ('12', 'Struts2技术内幕', '陆舟', '25', 'image/c83d70cf3bc79f3d8c169b74b9a1cd11738b29fa.jpg', '2012-05-02', '1');
INSERT INTO `_product` VALUES ('13', '自然史', ' [法]布封', '8', 'image/f2deb48f8c5494ee94551d0424f5e0fe99257eb3.jpg', '2016-08-01', '3');
INSERT INTO `_product` VALUES ('14', '趣闻搞笑', '趣闻搞笑', '3', 'image/3b292df5e0fe99259ca4296030a85edf8db17151.jpg', '2017-05-15', '4');
INSERT INTO `_product` VALUES ('15', '知乎周刊', '知乎', '3', 'image/3801213fb80e7becc66ad388272eb9389b506b23.png', '2017-05-15', '4');
INSERT INTO `_product` VALUES ('16', '遇见未知的自己', ' 吴文智;方雪梅', '5', 'image/b999a9014c086e062658eb2801087bf40bd1cbe5.jpg', '2012-04-01', '5');
INSERT INTO `_product` VALUES ('17', '重拾英语听说', '知乎', '4', 'image/ac345982b2b7d0a207716cb1c3ef76094b369a65.jpg', '2017-05-15', '5');
INSERT INTO `_product` VALUES ('18', '笑死我的英文书', ' [加]肯尼;[加]特鲁曼', '10', 'image/b21c8701a18b87d67692221c0f0828381e30fde5.jpg', '2016-05-06', '5');
INSERT INTO `_product` VALUES ('19', '干法', ' [日]稻盛和夫', '9', 'image/e61190ef76c6a7effbd3cf6ff8faaf51f2de6685.jpg', '2015-05-01', '6');
INSERT INTO `_product` VALUES ('20', '孙子兵法', ' 孙武', '3', 'image/d000baa1cd11728b930057b7ccfcc3cec3fd2c72.jpg', '2015-08-07', '6');
INSERT INTO `_product` VALUES ('21', '御风展业', ' 赵民 戎明迈 唐平华', '24', 'image/e824b899a9014c083b49da0d087b02087bf4f42c.jpg', '2012-09-01', '6');
INSERT INTO `_product` VALUES ('22', '创业从0到1', '何维克', '8', 'image/d439b6003af33a870f985a0bce5c10385343b52e.jpg', '2016-01-27', '6');
INSERT INTO `_product` VALUES ('23', '皇家养生', '屈维英', '3', 'image/fd039245d688d43fc9f8dc02741ed21b0ff43be8.jpg', '2009-04-01', '7');
INSERT INTO `_product` VALUES ('24', '肾好才是硬道理 ', ' 朱惠东', '5', 'image/cb8065380cd79123ebde493dab345982b2b780b9.jpg', '2014-04-01', '7');
INSERT INTO `_product` VALUES ('25', '这书能让你戒烟', ' [英]亚伦·卡尔', '12', 'image/5882b2b7d0a20cf4455f320872094b36adaf991e.jpg', '2014-03-01', '7');
INSERT INTO `_product` VALUES ('26', '克服焦虑症', ' 贾福军', '7', 'image/b21c8701a18b87d6428338050d0828381e30fde3.jpg', '2012-05-01', '7');
INSERT INTO `_product` VALUES ('27', '推背图密解', ' 孔令江', '2', 'image/d01373f082025aaf9439f2a7fcedab64034f1a56.jpg', '2016-02-13', '7');
INSERT INTO `_product` VALUES ('28', '海底两万里', ' [法]凡尔纳', '18', 'image/d788d43f8794a4c200579f9409f41bd5ad6e391c.jpg', '2011-10-01', '8');
INSERT INTO `_product` VALUES ('29', '茶花女', ' 小仲马', '7', 'image/d31b0ef41bd5ad6e74f3740f89cb39dbb7fd3cc8.jpg', '2016-09-01', '8');
INSERT INTO `_product` VALUES ('30', '简·爱', ' 夏洛蒂·勃朗特', '2', 'image/cdbf6c81800a19d8d0f88b7235fa828ba71e46c9.jpg', '2013-04-01', '8');

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _user
-- ----------------------------
INSERT INTO `_user` VALUES ('6', 'admin', '19921213', 'Sun Rising Chang', '123@123.com', '15041914007', '辽宁省辽阳市辽阳县', '111212');
