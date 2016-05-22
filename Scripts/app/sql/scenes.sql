/*
Navicat MySQL Data Transfer

Source Server         : 本机MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : flaskdb

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2016-05-22 08:44:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `scenes`
-- ----------------------------
DROP TABLE IF EXISTS `scenes`;
CREATE TABLE `scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskcode` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sceneid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenes
-- ----------------------------
INSERT INTO `scenes` VALUES ('1', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '1', '1');
INSERT INTO `scenes` VALUES ('2', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '1', '1');
INSERT INTO `scenes` VALUES ('3', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '2', '2');
INSERT INTO `scenes` VALUES ('4', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '2', '2');
INSERT INTO `scenes` VALUES ('5', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '2', '3');
INSERT INTO `scenes` VALUES ('6', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '2', '3');
INSERT INTO `scenes` VALUES ('7', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '2', '1');
INSERT INTO `scenes` VALUES ('8', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '2', '1');
INSERT INTO `scenes` VALUES ('9', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '2', '4');
INSERT INTO `scenes` VALUES ('10', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '2', '4');
INSERT INTO `scenes` VALUES ('44', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '6', '1');
INSERT INTO `scenes` VALUES ('45', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '6', '1');
INSERT INTO `scenes` VALUES ('46', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '6', '1');
INSERT INTO `scenes` VALUES ('47', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '6', '1');
INSERT INTO `scenes` VALUES ('48', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '6', '1');
INSERT INTO `scenes` VALUES ('49', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '6', '1');
INSERT INTO `scenes` VALUES ('50', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"3600\"}', '6', '1');
INSERT INTO `scenes` VALUES ('51', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '6', '1');
INSERT INTO `scenes` VALUES ('52', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"20\"}', '6', '1');
INSERT INTO `scenes` VALUES ('53', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('54', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('55', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('56', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('57', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('58', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('59', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('60', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('61', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('62', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('63', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('64', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('65', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('66', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
INSERT INTO `scenes` VALUES ('67', '{\"tasktype\":\"0\",\"deviceid\":\"1\",\"starttime\":\"11:06:08\",\"days\":\"1111111\",\"devicetype\":\"A\",\"amount\":\"4000\"}', '6', '1');
INSERT INTO `scenes` VALUES ('68', '{\"tasktype\":\"1\",\"deviceid\":\"2\",\"devicetype\":\"B\",\"amount\":\"25\"}', '6', '1');
