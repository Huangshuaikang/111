/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50547
 Source Host           : localhost:3306
 Source Schema         : jingshijiaoyu

 Target Server Type    : MySQL
 Target Server Version : 50547
 File Encoding         : 65001

 Date: 13/06/2023 14:04:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `salt` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '加密盐',
  `level` tinyint(1) NOT NULL COMMENT '1，超级管理员，2老师',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 1, '管理员', 1);
INSERT INTO `admin` VALUES (43, 'J6eXsZ', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '最新', 1);
INSERT INTO `admin` VALUES (42, 'jyHXTa', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '最大', 1);
INSERT INTO `admin` VALUES (41, 'gH8DcY', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, 'wJ', 1);
INSERT INTO `admin` VALUES (40, 'Uv9JeQ', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, 'BA', 1);
INSERT INTO `admin` VALUES (39, 'DtH8Xa', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, 'gN', 1);
INSERT INTO `admin` VALUES (38, '5ExnyV', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, 'z5', 1);
INSERT INTO `admin` VALUES (37, 'LUAsZ4', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, 'NV', 1);
INSERT INTO `admin` VALUES (36, 'cQSPdf1', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '大哥223', 1);
INSERT INTO `admin` VALUES (31, '3bQPve', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '最小22', 1);
INSERT INTO `admin` VALUES (32, '8rjZF3', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '一二三', 0);
INSERT INTO `admin` VALUES (34, 'z7KJXm', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '大老师', 1);
INSERT INTO `admin` VALUES (35, 'cQSPdf', '516eb11bbeb8a504dda4fd1198e042d7', 'e625fb438d13f7f6defbbacb1f0a6d84', 2, '大哥', 1);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级名字',
  `t_id` int(11) NOT NULL COMMENT '班级管理老师',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `user_count` int(11) NOT NULL COMMENT '班级学生人数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (2, '二班', 23, 1600760130, 2);
INSERT INTO `class` VALUES (4, '三班', 15, 1607061051, 4);

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '学生id',
  `k_time` int(11) NOT NULL COMMENT '考试时间',
  `score` float(3, 1) NOT NULL COMMENT '分数',
  `kskc` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考试课程',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 1, 1607011200, 80.0, '语文');
INSERT INTO `score` VALUES (2, 2, 1607011200, 20.5, '语文');
INSERT INTO `score` VALUES (3, 3, 1607011200, 81.0, '语文');
INSERT INTO `score` VALUES (4, 7, 1607011200, 81.5, '语文');
INSERT INTO `score` VALUES (5, 1, 1606924800, 80.0, '数学');
INSERT INTO `score` VALUES (6, 2, 1606924800, 80.5, '数学');
INSERT INTO `score` VALUES (7, 3, 1606924800, 88.5, '数学');
INSERT INTO `score` VALUES (9, 5, 1606838400, 50.0, '英语');
INSERT INTO `score` VALUES (10, 6, 1606838400, 95.5, '英语');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `cid` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `in_time` int(11) NOT NULL COMMENT '入学时间',
  `out_time` int(11) NOT NULL COMMENT '离开学校时间',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `l_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人',
  `l_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系人手机',
  `l2_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备用联系人',
  `l2_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备用联系人手机',
  `add` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '住址',
  `class_id` int(11) NOT NULL COMMENT '班级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张五', '2020124152300', '513723199112023637', 1607011200, 0, '是个好学生哦', '贞观三年', '18888888888', '张三姆', '15555555555', '什么路什么号', 4);
INSERT INTO `student` VALUES (2, '李斯打赏', '2020124152444', '513723199112023636', 1606838400, 0, '', '李斯爸爸', '18888888888', '', '0', '0', 4);
INSERT INTO `student` VALUES (3, '王五1', '2020124152717', '513723199112023639', 1607356800, 1609430400, '', '搜索', '18888888888', '啊啊', '', '', 4);
INSERT INTO `student` VALUES (5, '123', '2020124164340', '513723199112023635', 1606752000, 0, '', '123', '18888888888', '', '', '', 2);
INSERT INTO `student` VALUES (6, '123', '2020124164340', '513723199112023638', 1606752000, 0, '', '123', '18888888888', '', '', '', 2);
INSERT INTO `student` VALUES (7, '123', '2020124164340', '513723199112023739', 1606752000, 0, '', '123', '18888888888', '', '', '', 4);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a_id` int(11) NOT NULL COMMENT '账号id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `cid` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `in_time` int(11) NOT NULL COMMENT '入职时间',
  `out_time` int(11) NOT NULL COMMENT '离职时间',
  `oa_time` int(11) NOT NULL COMMENT '合同到期时间',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (16, 35, '大哥', '513723199112024634', 1609344000, 1607011200, 1606924800, '<p>啦啦啦</p>');
INSERT INTO `teacher` VALUES (15, 34, '大老师', '513723199112024633', 1606838400, 1608825600, 1609344000, '<p>萨达</p>');
INSERT INTO `teacher` VALUES (12, 31, '最小22', '513723199112024631', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (13, 32, '一二三', '513723199112024632', 0, 1608739200, 1608912000, '');
INSERT INTO `teacher` VALUES (17, 36, '大哥223', '513723199112024635', 1606924800, 1607011200, 1606924800, '<p>啦啦啦2</p>');
INSERT INTO `teacher` VALUES (18, 37, 'NV', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (19, 38, 'z5', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (20, 39, 'gN', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (21, 40, 'BA', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (22, 41, 'wJ', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (23, 42, '最大', '513723199112024635', 0, 0, 0, '');
INSERT INTO `teacher` VALUES (24, 43, '最新', '513723199112024635', 0, 0, 0, '');

SET FOREIGN_KEY_CHECKS = 1;
