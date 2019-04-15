/*
 Navicat Premium Data Transfer

 Source Server         : yujin
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : userdb

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 17/02/2019 10:46:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `merchandise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `original` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headerurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, 'VR眼镜', '暴风魔镜S1 轻轻版', '99元', '299元', '/images/img1.jpeg');
INSERT INTO `commodity` VALUES (2, 'VR眼镜', '暴风魔镜S2', '199元', '299元', '/images/img2.jpeg');
INSERT INTO `commodity` VALUES (3, 'VR眼镜', '暴风魔镜S3', '800元', '1200元', '/images/img3.jpeg');
INSERT INTO `commodity` VALUES (4, 'VR眼镜', '暴风魔镜s4', '480元', '600元', '/images/img4.jpeg');
INSERT INTO `commodity` VALUES (5, 'VR眼镜', '暴风魔镜s5 游学版', '1200元', '1280元', '/images/img1.jpeg');
INSERT INTO `commodity` VALUES (6, 'VR眼镜', '暴风魔镜s6', '120元', '220元', '/images/img1.jpeg');
INSERT INTO `commodity` VALUES (7, 'VR眼镜', '暴风电竞椅s7', '666元', '700元', '/images/img1.jpeg');
INSERT INTO `commodity` VALUES (8, 'VR眼镜', '暴风喜乐乐s8', '888元', '900元', '/images/img1.jpeg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `headerurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `typeid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'we', '6789', '/upload/headerimg-1547782052747.jpg', NULL);
INSERT INTO `user` VALUES (3, '涵儿', '582', '/upload/headerimg-1547782596127.jpg', NULL);
INSERT INTO `user` VALUES (4, '爱你', '789', '/upload/headerimg-1547782608564.jpg', NULL);
INSERT INTO `user` VALUES (5, '狗儿', '8989', '/upload/headerimg-1547782625951.jpg', NULL);
INSERT INTO `user` VALUES (6, '222', '9f6e6800cfae7749eb6c486619254b9c', '/upload/headerimg-1547782638170.jpg', NULL);
INSERT INTO `user` VALUES (7, '对于', 'dfsf', '/upload/headerimg-1547782648741.jpg', NULL);
INSERT INTO `user` VALUES (8, '你好吗', 'haner', '', NULL);
INSERT INTO `user` VALUES (9, '涵儿狗', 'shagou', '', NULL);
INSERT INTO `user` VALUES (10, '涵儿是猪', 'qqq', '', NULL);
INSERT INTO `user` VALUES (11, '涵儿是我儿', '8524', '', NULL);
INSERT INTO `user` VALUES (12, 'qwer', '123', '/upload/headerimg-1547779468196.jpg', NULL);
INSERT INTO `user` VALUES (14, '权志龙', '452', '/upload/headerimg-1547799592348.jpg', NULL);
INSERT INTO `user` VALUES (15, '老九', '0b0c6b8b4e766e227c757e93889bd094', '/upload/headerimg-1548139372376.jpg', NULL);
INSERT INTO `user` VALUES (16, '对于电视', 'ddddddddd', '/upload/headerimg-1548146250686.jpg', NULL);
INSERT INTO `user` VALUES (17, '涵儿', '123', '/upload/headerimg-1548147535082.jpg', NULL);
INSERT INTO `user` VALUES (18, '涵儿', '123', '/upload/headerimg-1548147626424.jpg', NULL);
INSERT INTO `user` VALUES (19, '对于', '122', '/upload/headerimg-1548147672141.jpg', NULL);
INSERT INTO `user` VALUES (20, '对于www', '222', '/upload/headerimg-1548148015062.jpg', NULL);
INSERT INTO `user` VALUES (21, '达到', 'dsdsd', '/upload/headerimg-1548148270952.jpg', NULL);
INSERT INTO `user` VALUES (22, '对于', 'ffsf', '/upload/headerimg-1548148356985.jpg', NULL);
INSERT INTO `user` VALUES (23, '对于', 'ffsf', '/upload/headerimg-1548148469693.jpg', NULL);
INSERT INTO `user` VALUES (24, '对于', 'jkl', '/upload/headerimg-1548148476755.jpg', NULL);
INSERT INTO `user` VALUES (25, '对于', 'fasrf ', '/upload/headerimg-1548148485332.jpg', NULL);
INSERT INTO `user` VALUES (26, '多大', 'dsd ', '/upload/headerimg-1548149020881.jpg', NULL);
INSERT INTO `user` VALUES (27, '法', 'fasf', '/upload/headerimg-1548149155009.jpg', NULL);
INSERT INTO `user` VALUES (28, '法', 'fasf', '/upload/headerimg-1548149197662.jpg', NULL);
INSERT INTO `user` VALUES (29, '涵儿是我儿的', '3707d084d8b033a31d62ab12fa266940', '/upload/headerimg-1548205256743.jpg', NULL);
INSERT INTO `user` VALUES (30, 'qqqq', 'dsfs', '/upload/headerimg-1548209026836.jpg', NULL);
INSERT INTO `user` VALUES (31, 'wwww', 'yj566338', '/upload/headerimg-1548209540027.jpg', NULL);
INSERT INTO `user` VALUES (32, 'bbbb', '1589', '/upload/headerimg-1548209792716.jpg', NULL);
INSERT INTO `user` VALUES (33, 'oooo', '0b0c6b8b4e766e227c757e93889bd094', '/upload/headerimg-1548210593068.jpg', NULL);
INSERT INTO `user` VALUES (34, 'nnnn', 'f09bde52d101f978cfbe5347f67a1562', '/upload/headerimg-1548210593068.jpg', NULL);
INSERT INTO `user` VALUES (35, '涵儿王蓉蓉', '4eae35f1b35977a00ebd8086c259d4c9', '/upload/headerimg-1548309047903.jpg', NULL);
INSERT INTO `user` VALUES (36, '擦擦擦', '76b3ab3925d00210582f4535d7c7f4ea', '/upload/headerimg-1549942962401.jpg', NULL);
INSERT INTO `user` VALUES (37, '在一起', '60b41b4d3efc6019a014880c15a60d64', '/upload/headerimg-1549943219592.jpg', NULL);
INSERT INTO `user` VALUES (38, 'qwer', '6d02e83b316356148e1a6da38838c573', '/upload/headerimg-1549943219592.jpg', NULL);

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES (1, 'VR眼镜');
INSERT INTO `user_type` VALUES (2, '手机');
INSERT INTO `user_type` VALUES (3, '电脑');
INSERT INTO `user_type` VALUES (4, '电器');
INSERT INTO `user_type` VALUES (5, '玩具');

SET FOREIGN_KEY_CHECKS = 1;
