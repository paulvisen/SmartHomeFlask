/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `devicelists`
-- ----------------------------
DROP TABLE IF EXISTS `devicelists`;
CREATE TABLE `devicelists` (
  `id` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devicelists
-- ----------------------------
INSERT INTO `devicelists` VALUES ('1', 'test', '浇花', '浇花', '9', 'on');
INSERT INTO `devicelists` VALUES ('2', 'admin', '照明', 'lightlight', '9', 'on');
INSERT INTO `devicelists` VALUES ('12231', 'admin', '照明', '12231', '2', 'off');
