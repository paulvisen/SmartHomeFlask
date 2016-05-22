/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `timingtasks`
-- ----------------------------
DROP TABLE IF EXISTS `timingtasks`;
CREATE TABLE `timingtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` varchar(255) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `devicetype` varchar(255) DEFAULT NULL,
  `setflag` varchar(255) DEFAULT NULL,
  `deviceid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timingtasks
-- ----------------------------
INSERT INTO `timingtasks` VALUES ('1', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('2', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('3', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('4', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('5', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('6', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('7', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('8', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('9', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('10', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('11', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('12', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('13', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('14', '11:06:08', '3600', '1111111', 'A', '0', '1', null, null);
INSERT INTO `timingtasks` VALUES ('15', '11:06:08', '3600', '1111111', 'A', '3', '1', '6', '1');
INSERT INTO `timingtasks` VALUES ('16', '11:06:08', '3600', '1111111', 'A', '3', '1', '6', '1');
INSERT INTO `timingtasks` VALUES ('17', '11:06:08', '3600', '1111111', 'A', '0', '1', '6', '2');
INSERT INTO `timingtasks` VALUES ('18', '11:06:08', '3600', '1111111', 'A', '3', '1', '6', '1');
INSERT INTO `timingtasks` VALUES ('19', '11:06:08', '3600', '1111111', 'A', '3', '1', '6', '1');
INSERT INTO `timingtasks` VALUES ('20', '11:06:08', '4000', '1111111', 'A', '3', '1', '6', '1');
