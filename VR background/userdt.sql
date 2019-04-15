/*
 Navicat Premium Data Transfer

 Source Server         : yujin
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : userdt

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/02/2019 10:46:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headerurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, '暴风魔镜S1 轻轻版', '99元', '299元', '/img/img1.jpeg');
INSERT INTO `commodity` VALUES (2, '暴风魔镜S2', '199元', '299元', '/img/img2.jpeg');
INSERT INTO `commodity` VALUES (3, '暴风魔镜S3', '800元', '1200元', '/img/img3.jpeg');
INSERT INTO `commodity` VALUES (4, '暴风魔镜s4', '480元', '600元', '/img/img4.jpeg');
INSERT INTO `commodity` VALUES (5, '暴风魔镜s5 游学版', '1200元', '1280元', '/img/img1.jpeg');
INSERT INTO `commodity` VALUES (6, '暴风魔镜s6', '120元', '220元', '/img/img1.jpeg');
INSERT INTO `commodity` VALUES (7, '暴风电竞椅s7', '666元', '700元', '/img/img1.jpeg');
INSERT INTO `commodity` VALUES (8, '暴风喜乐乐s8', '888元', '900元', '/img/img1.jpeg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名号码',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '喻晋', '123');
INSERT INTO `user` VALUES (2, '涵儿', '123');
INSERT INTO `user` VALUES (3, 'qwer', '123');
INSERT INTO `user` VALUES (4, 'qqqq', '258');
INSERT INTO `user` VALUES (5, '涵儿', '258');
INSERT INTO `user` VALUES (6, 'bbbb', '5821');

SET FOREIGN_KEY_CHECKS = 1;
