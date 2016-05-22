/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `realtimetasks`
-- ----------------------------
DROP TABLE IF EXISTS `realtimetasks`;
CREATE TABLE `realtimetasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `devicetype` varchar(11) DEFAULT NULL,
  `setflag` varchar(255) DEFAULT NULL,
  `deviceid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realtimetasks
-- ----------------------------
INSERT INTO `realtimetasks` VALUES ('123', 'A0000:B000', '1', null, null, null, null);
INSERT INTO `realtimetasks` VALUES ('125', 'A0000:B000', '1', null, null, null, null);
INSERT INTO `realtimetasks` VALUES ('126', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('127', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('128', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('129', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('130', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('131', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('132', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('133', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('134', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('135', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('136', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('137', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('138', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('139', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('140', '20', 'B', '0', '2', null, null);
INSERT INTO `realtimetasks` VALUES ('141', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('142', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('143', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('144', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('145', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('146', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('147', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('148', '20', 'B', '3', '2', '6', '1');
INSERT INTO `realtimetasks` VALUES ('149', '25', 'B', '3', '2', '6', '1');
