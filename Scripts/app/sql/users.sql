/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '2');
INSERT INTO `users` VALUES ('2', '24', '243');
INSERT INTO `users` VALUES ('3', '45654', 'testtest');
INSERT INTO `users` VALUES ('4', 'zhang', 'passwd');
INSERT INTO `users` VALUES ('5', 'zhangweisen', 'passwd');
INSERT INTO `users` VALUES ('6', 'Visen', '76a2173be6393254e72ffa4d6df1030a');
INSERT INTO `users` VALUES ('7', 'visen1', 'zhang123');
INSERT INTO `users` VALUES ('8', '张炜森', 'zhang123');
INSERT INTO `users` VALUES ('9', '张炜森2', '2222222');
