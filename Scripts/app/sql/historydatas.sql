/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `historydatas`
-- ----------------------------
DROP TABLE IF EXISTS `historydatas`;
CREATE TABLE `historydatas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of historydatas
-- ----------------------------
INSERT INTO `historydatas` VALUES ('1', '2004-09-12 11:06:08', '2004-09-12 11:06:08', '3', '2');
INSERT INTO `historydatas` VALUES ('2', '2004-09-12 11:06:08', '2004-09-12 11:06:08', '44', '2');
INSERT INTO `historydatas` VALUES ('3', '2004-09-12 11:06:08', '2004-09-12 11:06:08', '22', '2');
INSERT INTO `historydatas` VALUES ('4', '2004-09-12 11:06:08', '2004-09-12 11:06:08', '44', '1');
