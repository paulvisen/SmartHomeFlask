/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `usersinfos`
-- ----------------------------
DROP TABLE IF EXISTS `usersinfos`;
CREATE TABLE `usersinfos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usersinfos
-- ----------------------------
INSERT INTO `usersinfos` VALUES ('1', 'Visen', '15850677336', '234567890', '76342478', null);
INSERT INTO `usersinfos` VALUES ('2', 'Wang', '13791258674', '562314789', 'xiaowang', null);
INSERT INTO `usersinfos` VALUES ('3', '李', '45163285641', '564548241', 'xiaoli', null);
INSERT INTO `usersinfos` VALUES ('4', 'Cui', '15850236987', '232563589', 'xiaocui', null);
INSERT INTO `usersinfos` VALUES ('5', 'Ji', '15698745632', '478512369', 'xiaoji', null);
INSERT INTO `usersinfos` VALUES ('6', 'Chen', '15152839654', '231546987', 'xiaochen', null);
INSERT INTO `usersinfos` VALUES ('7', '东南', '15850677336', '835219740', 'paulvisen', '9');
