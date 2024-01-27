/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/01/2024 02:42:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendances
-- ----------------------------
DROP TABLE IF EXISTS `attendances`;
CREATE TABLE `attendances`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ac_no` int NOT NULL,
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1031 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendances
-- ----------------------------
INSERT INTO `attendances` VALUES (1, 5, '', 'Atiq Ur Rehman', '2023-11-02 15:35:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (2, 5, '', 'Atiq Ur Rehman', '2023-11-02 20:41:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (3, 5, '', 'Atiq Ur Rehman', '2023-10-03 11:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (4, 5, '', 'Atiq Ur Rehman', '2023-10-03 20:33:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (5, 5, '', 'Atiq Ur Rehman', '2023-10-04 11:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (6, 5, '', 'Atiq Ur Rehman', '2023-10-04 20:51:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (7, 5, '', 'Atiq Ur Rehman', '2023-10-05 10:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (8, 5, '', 'Atiq Ur Rehman', '2023-10-05 20:37:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (9, 5, '', 'Atiq Ur Rehman', '2023-10-06 11:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (10, 5, '', 'Atiq Ur Rehman', '2023-10-06 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (11, 5, '', 'Atiq Ur Rehman', '2023-10-09 11:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (12, 5, '', 'Atiq Ur Rehman', '2023-10-09 20:36:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (13, 5, '', 'Atiq Ur Rehman', '2023-10-10 11:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (14, 5, '', 'Atiq Ur Rehman', '2023-10-10 21:19:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (15, 5, '', 'Atiq Ur Rehman', '2023-10-11 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (16, 5, '', 'Atiq Ur Rehman', '2023-10-11 21:40:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (17, 5, '', 'Atiq Ur Rehman', '2023-10-11 21:41:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (18, 5, '', 'Atiq Ur Rehman', '2023-10-12 11:03:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (19, 5, '', 'Atiq Ur Rehman', '2023-10-13 11:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (20, 5, '', 'Atiq Ur Rehman', '2023-10-13 21:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (21, 5, '', 'Atiq Ur Rehman', '2023-10-16 10:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (22, 5, '', 'Atiq Ur Rehman', '2023-10-16 20:31:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (23, 5, '', 'Atiq Ur Rehman', '2023-10-17 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (24, 5, '', 'Atiq Ur Rehman', '2023-10-17 20:39:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (25, 5, '', 'Atiq Ur Rehman', '2023-10-18 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (26, 5, '', 'Atiq Ur Rehman', '2023-10-18 20:40:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (27, 5, '', 'Atiq Ur Rehman', '2023-10-19 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (28, 5, '', 'Atiq Ur Rehman', '2023-10-19 21:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (29, 5, '', 'Atiq Ur Rehman', '2023-10-20 10:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (30, 5, '', 'Atiq Ur Rehman', '2023-10-20 20:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (31, 5, '', 'Atiq Ur Rehman', '2023-10-20 21:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (32, 5, '', 'Atiq Ur Rehman', '2023-10-23 11:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (33, 5, '', 'Atiq Ur Rehman', '2023-10-23 21:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (34, 5, '', 'Atiq Ur Rehman', '2023-10-23 21:12:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (35, 5, '', 'Atiq Ur Rehman', '2023-10-26 11:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (36, 5, '', 'Atiq Ur Rehman', '2023-10-26 20:50:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (37, 5, '', 'Atiq Ur Rehman', '2023-10-27 11:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (38, 5, '', 'Atiq Ur Rehman', '2023-10-27 20:53:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (39, 5, '', 'Atiq Ur Rehman', '2023-10-30 11:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (40, 5, '', 'Atiq Ur Rehman', '2023-10-30 20:41:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (41, 8, '', 'Mairaj Khan', '2023-10-02 11:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (42, 8, '', 'Mairaj Khan', '2023-10-02 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (43, 8, '', 'Mairaj Khan', '2023-10-03 11:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (44, 8, '', 'Mairaj Khan', '2023-10-03 19:50:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (45, 8, '', 'Mairaj Khan', '2023-10-04 11:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (46, 8, '', 'Mairaj Khan', '2023-10-04 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (47, 8, '', 'Mairaj Khan', '2023-10-05 11:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (48, 8, '', 'Mairaj Khan', '2023-10-05 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (49, 8, '', 'Mairaj Khan', '2023-10-06 11:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (50, 8, '', 'Mairaj Khan', '2023-10-06 19:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (51, 8, '', 'Mairaj Khan', '2023-10-06 20:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (52, 8, '', 'Mairaj Khan', '2023-10-09 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (53, 8, '', 'Mairaj Khan', '2023-10-09 20:28:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (54, 8, '', 'Mairaj Khan', '2023-10-10 11:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (55, 8, '', 'Mairaj Khan', '2023-10-10 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (56, 8, '', 'Mairaj Khan', '2023-10-11 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (57, 8, '', 'Mairaj Khan', '2023-10-11 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (58, 8, '', 'Mairaj Khan', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (59, 8, '', 'Mairaj Khan', '2023-10-11 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (60, 8, '', 'Mairaj Khan', '2023-10-11 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (61, 8, '', 'Mairaj Khan', '2023-10-12 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (62, 8, '', 'Mairaj Khan', '2023-10-12 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (63, 8, '', 'Mairaj Khan', '2023-10-13 11:26:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (64, 8, '', 'Mairaj Khan', '2023-10-13 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (65, 8, '', 'Mairaj Khan', '2023-10-16 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (66, 8, '', 'Mairaj Khan', '2023-10-16 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (67, 8, '', 'Mairaj Khan', '2023-10-17 11:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (68, 8, '', 'Mairaj Khan', '2023-10-17 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (69, 8, '', 'Mairaj Khan', '2023-10-18 11:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (70, 8, '', 'Mairaj Khan', '2023-10-18 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (71, 8, '', 'Mairaj Khan', '2023-10-19 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (72, 8, '', 'Mairaj Khan', '2023-10-19 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (73, 8, '', 'Mairaj Khan', '2023-10-20 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (74, 8, '', 'Mairaj Khan', '2023-10-20 20:03:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (75, 8, '', 'Mairaj Khan', '2023-10-20 20:03:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (76, 8, '', 'Mairaj Khan', '2023-10-23 11:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (77, 8, '', 'Mairaj Khan', '2023-10-23 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (78, 8, '', 'Mairaj Khan', '2023-10-24 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (79, 8, '', 'Mairaj Khan', '2023-10-24 20:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (80, 8, '', 'Mairaj Khan', '2023-10-25 11:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (81, 8, '', 'Mairaj Khan', '2023-10-25 20:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (82, 8, '', 'Mairaj Khan', '2023-10-26 11:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (83, 8, '', 'Mairaj Khan', '2023-10-26 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (84, 8, '', 'Mairaj Khan', '2023-10-27 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (85, 8, '', 'Mairaj Khan', '2023-10-27 21:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (86, 8, '', 'Mairaj Khan', '2023-10-30 11:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (87, 8, '', 'Mairaj Khan', '2023-10-30 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (88, 25, '', 'Junaid', '2023-10-02 10:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (89, 25, '', 'Junaid', '2023-10-02 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (90, 25, '', 'Junaid', '2023-10-03 10:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (91, 25, '', 'Junaid', '2023-10-03 20:32:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (92, 25, '', 'Junaid', '2023-10-04 10:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (93, 25, '', 'Junaid', '2023-10-04 20:42:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (94, 25, '', 'Junaid', '2023-10-05 10:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (95, 25, '', 'Junaid', '2023-10-05 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (96, 25, '', 'Junaid', '2023-10-06 10:58:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (97, 25, '', 'Junaid', '2023-10-06 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (98, 25, '', 'Junaid', '2023-10-09 11:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (99, 25, '', 'Junaid', '2023-10-09 21:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (100, 25, '', 'Junaid', '2023-10-10 11:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (101, 25, '', 'Junaid', '2023-10-10 20:40:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (102, 25, '', 'Junaid', '2023-10-11 11:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (103, 25, '', 'Junaid', '2023-10-11 20:53:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (104, 25, '', 'Junaid', '2023-10-23 10:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (105, 25, '', 'Junaid', '2023-10-23 20:36:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (106, 25, '', 'Junaid', '2023-10-24 10:47:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (107, 25, '', 'Junaid', '2023-10-24 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (108, 25, '', 'Junaid', '2023-10-25 10:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (109, 25, '', 'Junaid', '2023-10-25 20:32:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (110, 25, '', 'Junaid', '2023-10-26 12:33:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (111, 25, '', 'Junaid', '2023-10-27 00:33:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (112, 25, '', 'Junaid', '2023-10-27 12:36:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (113, 25, '', 'Junaid', '2023-10-28 00:30:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (114, 25, '', 'Junaid', '2023-10-30 10:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (115, 25, '', 'Junaid', '2023-10-30 20:32:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (116, 26, '', 'Zhoaib', '2023-10-02 17:05:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (117, 26, '', 'Zhoaib', '2023-10-03 04:17:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (118, 26, '', 'Zhoaib', '2023-10-03 16:55:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (119, 26, '', 'Zhoaib', '2023-10-04 04:50:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (120, 26, '', 'Zhoaib', '2023-10-04 17:08:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (121, 26, '', 'Zhoaib', '2023-10-05 04:31:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (122, 26, '', 'Zhoaib', '2023-10-05 17:04:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (123, 26, '', 'Zhoaib', '2023-10-06 05:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (124, 26, '', 'Zhoaib', '2023-10-06 17:48:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (125, 26, '', 'Zhoaib', '2023-10-06 17:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (126, 26, '', 'Zhoaib', '2023-10-07 04:43:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (127, 26, '', 'Zhoaib', '2023-10-09 16:46:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (128, 26, '', 'Zhoaib', '2023-10-10 05:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (129, 26, '', 'Zhoaib', '2023-10-10 16:53:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (130, 26, '', 'Zhoaib', '2023-10-11 04:52:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (131, 26, '', 'Zhoaib', '2023-10-11 16:58:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (132, 26, '', 'Zhoaib', '2023-10-12 05:03:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (133, 26, '', 'Zhoaib', '2023-10-12 16:59:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (134, 26, '', 'Zhoaib', '2023-10-13 04:24:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (135, 26, '', 'Zhoaib', '2023-10-13 17:05:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (136, 26, '', 'Zhoaib', '2023-10-14 04:51:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (137, 26, '', 'Zhoaib', '2023-10-16 16:58:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (138, 26, '', 'Zhoaib', '2023-10-17 04:23:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (139, 26, '', 'Zhoaib', '2023-10-17 17:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (140, 26, '', 'Zhoaib', '2023-10-18 02:27:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (141, 26, '', 'Zhoaib', '2023-10-18 16:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (142, 26, '', 'Zhoaib', '2023-10-19 01:55:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (143, 26, '', 'Zhoaib', '2023-10-19 16:44:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (144, 26, '', 'Zhoaib', '2023-10-20 16:15:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (145, 26, '', 'Zhoaib', '2023-10-21 03:39:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (146, 26, '', 'Zhoaib', '2023-10-23 16:36:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (147, 26, '', 'Zhoaib', '2023-10-24 04:49:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (148, 26, '', 'Zhoaib', '2023-10-24 16:51:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (149, 26, '', 'Zhoaib', '2023-10-25 04:33:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (150, 26, '', 'Zhoaib', '2023-10-25 17:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (151, 26, '', 'Zhoaib', '2023-10-26 03:32:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (152, 26, '', 'Zhoaib', '2023-10-26 16:57:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (153, 26, '', 'Zhoaib', '2023-10-27 05:05:00', 'C/Out', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (154, 26, '', 'Zhoaib', '2023-10-27 15:31:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (155, 26, '', 'Zhoaib', '2023-10-28 03:30:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (156, 26, '', 'Zhoaib', '2023-10-30 17:26:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (157, 36, '', 'Amir', '2023-10-02 19:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (158, 36, '', 'Amir', '2023-10-03 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (159, 36, '', 'Amir', '2023-10-03 19:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (160, 36, '', 'Amir', '2023-10-03 23:44:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (161, 36, '', 'Amir', '2023-10-04 19:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (162, 36, '', 'Amir', '2023-10-05 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (163, 36, '', 'Amir', '2023-10-05 20:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (164, 36, '', 'Amir', '2023-10-06 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (165, 36, '', 'Amir', '2023-10-06 19:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (166, 36, '', 'Amir', '2023-10-07 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (167, 36, '', 'Amir', '2023-10-09 20:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (168, 36, '', 'Amir', '2023-10-10 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (169, 36, '', 'Amir', '2023-10-10 19:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (170, 36, '', 'Amir', '2023-10-11 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (171, 36, '', 'Amir', '2023-10-11 20:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (172, 36, '', 'Amir', '2023-10-12 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (173, 36, '', 'Amir', '2023-10-12 19:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (174, 36, '', 'Amir', '2023-10-13 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (175, 36, '', 'Amir', '2023-10-13 19:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (176, 36, '', 'Amir', '2023-10-14 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (177, 36, '', 'Amir', '2023-10-16 19:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (178, 36, '', 'Amir', '2023-10-17 06:20:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (179, 36, '', 'Amir', '2023-10-17 19:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (180, 36, '', 'Amir', '2023-10-18 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (181, 36, '', 'Amir', '2023-10-18 20:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (182, 36, '', 'Amir', '2023-10-19 05:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (183, 36, '', 'Amir', '2023-10-19 19:56:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (184, 36, '', 'Amir', '2023-10-20 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (185, 36, '', 'Amir', '2023-10-20 19:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (186, 36, '', 'Amir', '2023-10-21 05:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (187, 36, '', 'Amir', '2023-10-23 20:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (188, 36, '', 'Amir', '2023-10-24 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (189, 36, '', 'Amir', '2023-10-24 20:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (190, 36, '', 'Amir', '2023-10-25 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (191, 36, '', 'Amir', '2023-10-25 20:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (192, 36, '', 'Amir', '2023-10-26 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (193, 36, '', 'Amir', '2023-10-26 20:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (194, 36, '', 'Amir', '2023-10-27 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (195, 36, '', 'Amir', '2023-10-27 20:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (196, 36, '', 'Amir', '2023-10-28 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (197, 36, '', 'Amir', '2023-10-30 19:55:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (198, 40, '', 'Nazkat', '2023-10-02 12:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (199, 40, '', 'Nazkat', '2023-10-02 21:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (200, 40, '', 'Nazkat', '2023-10-03 12:22:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (201, 40, '', 'Nazkat', '2023-10-04 14:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (202, 40, '', 'Nazkat', '2023-10-04 19:48:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (203, 40, '', 'Nazkat', '2023-10-05 13:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (204, 40, '', 'Nazkat', '2023-10-05 21:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (205, 40, '', 'Nazkat', '2023-10-06 12:39:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (206, 40, '', 'Nazkat', '2023-10-06 21:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (207, 40, '', 'Nazkat', '2023-10-07 13:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (208, 40, '', 'Nazkat', '2023-10-07 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (209, 40, '', 'Nazkat', '2023-10-09 12:34:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (210, 40, '', 'Nazkat', '2023-10-09 23:19:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (211, 40, '', 'Nazkat', '2023-10-09 23:29:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (212, 40, '', 'Nazkat', '2023-10-10 16:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (213, 40, '', 'Nazkat', '2023-10-10 21:23:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (214, 40, '', 'Nazkat', '2023-10-11 12:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (215, 40, '', 'Nazkat', '2023-10-11 20:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (216, 40, '', 'Nazkat', '2023-10-12 11:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (217, 40, '', 'Nazkat', '2023-10-12 21:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (218, 40, '', 'Nazkat', '2023-10-14 15:10:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (219, 40, '', 'Nazkat', '2023-10-16 11:33:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (220, 40, '', 'Nazkat', '2023-10-16 22:52:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (221, 40, '', 'Nazkat', '2023-10-17 11:47:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (222, 40, '', 'Nazkat', '2023-10-17 22:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (223, 40, '', 'Nazkat', '2023-10-18 12:48:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (224, 40, '', 'Nazkat', '2023-10-18 20:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (225, 40, '', 'Nazkat', '2023-10-19 14:33:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (226, 40, '', 'Nazkat', '2023-10-19 20:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (227, 40, '', 'Nazkat', '2023-10-20 12:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (228, 40, '', 'Nazkat', '2023-10-20 21:33:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (229, 40, '', 'Nazkat', '2023-10-23 12:08:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (230, 40, '', 'Nazkat', '2023-10-24 13:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (231, 40, '', 'Nazkat', '2023-10-24 21:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (232, 40, '', 'Nazkat', '2023-10-25 12:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (233, 40, '', 'Nazkat', '2023-10-25 20:49:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (234, 40, '', 'Nazkat', '2023-10-26 12:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (235, 40, '', 'Nazkat', '2023-10-26 21:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (236, 40, '', 'Nazkat', '2023-10-27 12:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (237, 40, '', 'Nazkat', '2023-10-27 21:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (238, 40, '', 'Nazkat', '2023-10-30 12:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (239, 40, '', 'Nazkat', '2023-10-30 21:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (240, 48, '', 'M Waleed', '2023-10-02 16:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (241, 48, '', 'M Waleed', '2023-10-03 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (242, 48, '', 'M Waleed', '2023-10-03 16:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (243, 48, '', 'M Waleed', '2023-10-04 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (244, 48, '', 'M Waleed', '2023-10-04 16:17:00', 'C/Out', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (245, 48, '', 'M Waleed', '2023-10-05 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (246, 48, '', 'M Waleed', '2023-10-05 16:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (247, 48, '', 'M Waleed', '2023-10-06 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (248, 48, '', 'M Waleed', '2023-10-06 16:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (249, 48, '', 'M Waleed', '2023-10-07 01:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (250, 48, '', 'M Waleed', '2023-10-09 16:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (251, 48, '', 'M Waleed', '2023-10-10 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (252, 48, '', 'M Waleed', '2023-10-10 16:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (253, 48, '', 'M Waleed', '2023-10-11 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (254, 48, '', 'M Waleed', '2023-10-11 15:31:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (255, 48, '', 'M Waleed', '2023-10-12 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (256, 48, '', 'M Waleed', '2023-10-12 16:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (257, 48, '', 'M Waleed', '2023-10-13 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (258, 48, '', 'M Waleed', '2023-10-13 16:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (259, 48, '', 'M Waleed', '2023-10-14 01:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (260, 48, '', 'M Waleed', '2023-10-16 16:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (261, 48, '', 'M Waleed', '2023-10-17 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (262, 48, '', 'M Waleed', '2023-10-17 15:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (263, 48, '', 'M Waleed', '2023-10-18 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (264, 48, '', 'M Waleed', '2023-10-18 15:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (265, 48, '', 'M Waleed', '2023-10-19 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (266, 48, '', 'M Waleed', '2023-10-19 15:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (267, 48, '', 'M Waleed', '2023-10-20 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (268, 48, '', 'M Waleed', '2023-10-23 16:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (269, 48, '', 'M Waleed', '2023-10-24 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (270, 48, '', 'M Waleed', '2023-10-24 15:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (271, 48, '', 'M Waleed', '2023-10-25 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (272, 48, '', 'M Waleed', '2023-10-25 16:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (273, 48, '', 'M Waleed', '2023-10-26 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (274, 48, '', 'M Waleed', '2023-10-26 16:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (275, 48, '', 'M Waleed', '2023-10-27 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (276, 48, '', 'M Waleed', '2023-10-27 15:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (277, 48, '', 'M Waleed', '2023-10-28 00:29:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (278, 48, '', 'M Waleed', '2023-10-30 15:52:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (279, 56, '', 'M Umar', '2023-10-02 16:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (280, 56, '', 'M Umar', '2023-10-03 02:36:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (281, 56, '', 'M Umar', '2023-10-03 17:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (282, 56, '', 'M Umar', '2023-10-04 02:57:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (283, 56, '', 'M Umar', '2023-10-04 16:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (284, 56, '', 'M Umar', '2023-10-05 02:20:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (285, 56, '', 'M Umar', '2023-10-05 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (286, 56, '', 'M Umar', '2023-10-06 02:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (287, 56, '', 'M Umar', '2023-10-06 16:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (288, 56, '', 'M Umar', '2023-10-07 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (289, 56, '', 'M Umar', '2023-10-09 17:35:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (290, 56, '', 'M Umar', '2023-10-10 02:39:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (291, 56, '', 'M Umar', '2023-10-10 16:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (292, 56, '', 'M Umar', '2023-10-11 02:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (293, 56, '', 'M Umar', '2023-10-11 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (294, 56, '', 'M Umar', '2023-10-12 02:15:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (295, 56, '', 'M Umar', '2023-10-12 17:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (296, 56, '', 'M Umar', '2023-10-13 02:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (297, 56, '', 'M Umar', '2023-10-13 16:58:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (298, 56, '', 'M Umar', '2023-10-14 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (299, 56, '', 'M Umar', '2023-10-16 17:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (300, 56, '', 'M Umar', '2023-10-17 02:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (301, 56, '', 'M Umar', '2023-10-17 16:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (302, 56, '', 'M Umar', '2023-10-18 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (303, 56, '', 'M Umar', '2023-10-18 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (304, 56, '', 'M Umar', '2023-10-19 02:16:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (305, 56, '', 'M Umar', '2023-10-19 17:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (306, 56, '', 'M Umar', '2023-10-20 02:31:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (307, 56, '', 'M Umar', '2023-10-20 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (308, 56, '', 'M Umar', '2023-10-21 02:15:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (309, 56, '', 'M Umar', '2023-10-23 17:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (310, 56, '', 'M Umar', '2023-10-24 02:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (311, 56, '', 'M Umar', '2023-10-24 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (312, 56, '', 'M Umar', '2023-10-25 02:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (313, 56, '', 'M Umar', '2023-10-25 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (314, 56, '', 'M Umar', '2023-10-26 02:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (315, 56, '', 'M Umar', '2023-10-26 17:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (316, 56, '', 'M Umar', '2023-10-27 02:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (317, 56, '', 'M Umar', '2023-10-27 15:55:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (318, 56, '', 'M Umar', '2023-10-28 02:59:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (319, 56, '', 'M Umar', '2023-10-30 17:15:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (320, 58, '', 'Mekaiel', '2023-10-02 13:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (321, 58, '', 'Mekaiel', '2023-10-02 22:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (322, 58, '', 'Mekaiel', '2023-10-03 12:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (323, 58, '', 'Mekaiel', '2023-10-03 22:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (324, 58, '', 'Mekaiel', '2023-10-04 13:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (325, 58, '', 'Mekaiel', '2023-10-04 22:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (326, 58, '', 'Mekaiel', '2023-10-05 13:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (327, 58, '', 'Mekaiel', '2023-10-05 22:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (328, 58, '', 'Mekaiel', '2023-10-06 12:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (329, 58, '', 'Mekaiel', '2023-10-06 22:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (330, 58, '', 'Mekaiel', '2023-10-09 12:40:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (331, 58, '', 'Mekaiel', '2023-10-09 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (332, 58, '', 'Mekaiel', '2023-10-10 13:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (333, 58, '', 'Mekaiel', '2023-10-10 22:16:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (334, 58, '', 'Mekaiel', '2023-10-11 13:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (335, 58, '', 'Mekaiel', '2023-10-11 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (336, 58, '', 'Mekaiel', '2023-10-12 13:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (337, 58, '', 'Mekaiel', '2023-10-12 22:14:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (338, 58, '', 'Mekaiel', '2023-10-13 13:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (339, 58, '', 'Mekaiel', '2023-10-13 22:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (340, 58, '', 'Mekaiel', '2023-10-16 13:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (341, 58, '', 'Mekaiel', '2023-10-16 22:22:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (342, 58, '', 'Mekaiel', '2023-10-17 13:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (343, 58, '', 'Mekaiel', '2023-10-17 22:40:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (344, 58, '', 'Mekaiel', '2023-10-17 22:40:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (345, 58, '', 'Mekaiel', '2023-10-18 13:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (346, 58, '', 'Mekaiel', '2023-10-18 22:16:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (347, 58, '', 'Mekaiel', '2023-10-19 13:27:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (348, 58, '', 'Mekaiel', '2023-10-19 22:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (349, 58, '', 'Mekaiel', '2023-10-20 13:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (350, 58, '', 'Mekaiel', '2023-10-20 21:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (351, 58, '', 'Mekaiel', '2023-10-23 13:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (352, 58, '', 'Mekaiel', '2023-10-23 22:28:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (353, 58, '', 'Mekaiel', '2023-10-24 13:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (354, 58, '', 'Mekaiel', '2023-10-24 22:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (355, 58, '', 'Mekaiel', '2023-10-25 13:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (356, 58, '', 'Mekaiel', '2023-10-25 22:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (357, 58, '', 'Mekaiel', '2023-10-26 12:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (358, 58, '', 'Mekaiel', '2023-10-26 22:35:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (359, 58, '', 'Mekaiel', '2023-10-27 13:03:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (360, 58, '', 'Mekaiel', '2023-10-27 13:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (361, 58, '', 'Mekaiel', '2023-10-27 22:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (362, 58, '', 'Mekaiel', '2023-10-30 13:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (363, 58, '', 'Mekaiel', '2023-10-30 13:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (364, 58, '', 'Mekaiel', '2023-10-30 22:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (365, 60, '', 'Rehan Mahmood', '2023-10-02 16:46:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (366, 60, '', 'Rehan Mahmood', '2023-10-03 01:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (367, 60, '', 'Rehan Mahmood', '2023-10-04 16:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (368, 60, '', 'Rehan Mahmood', '2023-10-05 01:53:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (369, 60, '', 'Rehan Mahmood', '2023-10-05 16:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (370, 60, '', 'Rehan Mahmood', '2023-10-06 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (371, 60, '', 'Rehan Mahmood', '2023-10-06 16:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (372, 60, '', 'Rehan Mahmood', '2023-10-07 01:56:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (373, 60, '', 'Rehan Mahmood', '2023-10-09 16:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (374, 60, '', 'Rehan Mahmood', '2023-10-10 01:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (375, 60, '', 'Rehan Mahmood', '2023-10-10 18:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (376, 60, '', 'Rehan Mahmood', '2023-10-11 01:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (377, 60, '', 'Rehan Mahmood', '2023-10-12 16:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (378, 60, '', 'Rehan Mahmood', '2023-10-13 02:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (379, 60, '', 'Rehan Mahmood', '2023-10-13 17:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (380, 60, '', 'Rehan Mahmood', '2023-10-14 01:58:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (381, 60, '', 'Rehan Mahmood', '2023-10-16 16:48:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (382, 60, '', 'Rehan Mahmood', '2023-10-17 01:59:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (383, 60, '', 'Rehan Mahmood', '2023-10-17 01:59:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (384, 60, '', 'Rehan Mahmood', '2023-10-17 16:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (385, 60, '', 'Rehan Mahmood', '2023-10-18 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (386, 60, '', 'Rehan Mahmood', '2023-10-18 16:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (387, 60, '', 'Rehan Mahmood', '2023-10-19 01:53:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (388, 60, '', 'Rehan Mahmood', '2023-10-19 16:46:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:50', '2023-11-10 11:31:50');
INSERT INTO `attendances` VALUES (389, 60, '', 'Rehan Mahmood', '2023-10-20 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (390, 60, '', 'Rehan Mahmood', '2023-10-20 16:41:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (391, 60, '', 'Rehan Mahmood', '2023-10-21 01:56:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (392, 60, '', 'Rehan Mahmood', '2023-10-23 16:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (393, 60, '', 'Rehan Mahmood', '2023-10-24 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (394, 60, '', 'Rehan Mahmood', '2023-10-24 16:48:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (395, 60, '', 'Rehan Mahmood', '2023-10-25 16:47:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (396, 60, '', 'Rehan Mahmood', '2023-10-26 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (397, 60, '', 'Rehan Mahmood', '2023-10-26 16:53:00', 'C/Out', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (398, 60, '', 'Rehan Mahmood', '2023-10-26 16:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (399, 60, '', 'Rehan Mahmood', '2023-10-27 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (400, 60, '', 'Rehan Mahmood', '2023-10-27 15:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (401, 60, '', 'Rehan Mahmood', '2023-10-28 01:57:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (402, 60, '', 'Rehan Mahmood', '2023-10-30 16:45:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (403, 61, '', 'Rizwan Rasheed', '2023-10-03 11:34:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (404, 61, '', 'Rizwan Rasheed', '2023-10-03 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (405, 61, '', 'Rizwan Rasheed', '2023-10-04 10:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (406, 61, '', 'Rizwan Rasheed', '2023-10-04 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (407, 61, '', 'Rizwan Rasheed', '2023-10-05 11:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (408, 61, '', 'Rizwan Rasheed', '2023-10-05 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (409, 61, '', 'Rizwan Rasheed', '2023-10-06 11:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (410, 61, '', 'Rizwan Rasheed', '2023-10-06 20:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (411, 61, '', 'Rizwan Rasheed', '2023-10-09 11:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (412, 61, '', 'Rizwan Rasheed', '2023-10-09 20:30:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (413, 61, '', 'Rizwan Rasheed', '2023-10-10 10:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (414, 61, '', 'Rizwan Rasheed', '2023-10-10 20:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (415, 61, '', 'Rizwan Rasheed', '2023-10-11 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (416, 61, '', 'Rizwan Rasheed', '2023-10-11 20:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (417, 61, '', 'Rizwan Rasheed', '2023-10-12 11:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (418, 61, '', 'Rizwan Rasheed', '2023-10-12 20:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (419, 61, '', 'Rizwan Rasheed', '2023-10-13 11:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (420, 61, '', 'Rizwan Rasheed', '2023-10-13 20:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (421, 61, '', 'Rizwan Rasheed', '2023-10-16 11:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (422, 61, '', 'Rizwan Rasheed', '2023-10-16 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (423, 61, '', 'Rizwan Rasheed', '2023-10-17 11:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (424, 61, '', 'Rizwan Rasheed', '2023-10-17 20:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (425, 61, '', 'Rizwan Rasheed', '2023-10-18 11:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (426, 61, '', 'Rizwan Rasheed', '2023-10-18 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (427, 61, '', 'Rizwan Rasheed', '2023-10-19 11:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (428, 61, '', 'Rizwan Rasheed', '2023-10-19 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (429, 61, '', 'Rizwan Rasheed', '2023-10-20 11:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (430, 61, '', 'Rizwan Rasheed', '2023-10-20 20:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (431, 61, '', 'Rizwan Rasheed', '2023-10-23 11:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (432, 61, '', 'Rizwan Rasheed', '2023-10-23 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (433, 61, '', 'Rizwan Rasheed', '2023-10-24 11:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (434, 61, '', 'Rizwan Rasheed', '2023-10-24 20:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (435, 61, '', 'Rizwan Rasheed', '2023-10-25 11:12:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (436, 61, '', 'Rizwan Rasheed', '2023-10-26 10:44:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (437, 61, '', 'Rizwan Rasheed', '2023-10-26 20:29:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (438, 61, '', 'Rizwan Rasheed', '2023-10-27 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (439, 61, '', 'Rizwan Rasheed', '2023-10-27 17:58:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (440, 61, '', 'Rizwan Rasheed', '2023-10-30 11:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (441, 61, '', 'Rizwan Rasheed', '2023-10-30 20:20:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (442, 62, '', '62', '2023-10-25 20:08:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (443, 63, '', 'Shahraz Khan', '2023-10-02 14:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (444, 63, '', 'Shahraz Khan', '2023-10-02 23:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (445, 63, '', 'Shahraz Khan', '2023-10-03 14:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (446, 63, '', 'Shahraz Khan', '2023-10-03 22:23:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (447, 63, '', 'Shahraz Khan', '2023-10-04 14:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (448, 63, '', 'Shahraz Khan', '2023-10-04 22:23:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (449, 63, '', 'Shahraz Khan', '2023-10-05 14:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (450, 63, '', 'Shahraz Khan', '2023-10-05 22:19:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (451, 63, '', 'Shahraz Khan', '2023-10-06 13:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (452, 63, '', 'Shahraz Khan', '2023-10-06 21:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (453, 63, '', 'Shahraz Khan', '2023-10-09 14:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (454, 63, '', 'Shahraz Khan', '2023-10-09 23:19:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (455, 63, '', 'Shahraz Khan', '2023-10-10 14:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (456, 63, '', 'Shahraz Khan', '2023-10-10 22:33:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (457, 63, '', 'Shahraz Khan', '2023-10-11 14:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (458, 63, '', 'Shahraz Khan', '2023-10-11 22:24:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (459, 63, '', 'Shahraz Khan', '2023-10-12 14:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (460, 63, '', 'Shahraz Khan', '2023-10-12 22:15:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (461, 63, '', 'Shahraz Khan', '2023-10-13 14:28:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (462, 63, '', 'Shahraz Khan', '2023-10-13 22:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (463, 63, '', 'Shahraz Khan', '2023-10-16 14:35:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (464, 63, '', 'Shahraz Khan', '2023-10-16 22:55:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (465, 63, '', 'Shahraz Khan', '2023-10-17 12:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (466, 63, '', 'Shahraz Khan', '2023-10-17 22:37:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (467, 63, '', 'Shahraz Khan', '2023-10-18 14:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (468, 63, '', 'Shahraz Khan', '2023-10-18 22:18:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (469, 63, '', 'Shahraz Khan', '2023-10-19 14:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (470, 63, '', 'Shahraz Khan', '2023-10-19 22:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (471, 63, '', 'Shahraz Khan', '2023-10-20 14:34:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (472, 63, '', 'Shahraz Khan', '2023-10-20 21:09:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (473, 63, '', 'Shahraz Khan', '2023-10-23 15:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (474, 63, '', 'Shahraz Khan', '2023-10-23 22:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (475, 63, '', 'Shahraz Khan', '2023-10-24 13:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (476, 63, '', 'Shahraz Khan', '2023-10-24 22:34:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (477, 63, '', 'Shahraz Khan', '2023-10-25 14:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (478, 63, '', 'Shahraz Khan', '2023-10-25 22:34:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (479, 63, '', 'Shahraz Khan', '2023-10-26 13:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (480, 63, '', 'Shahraz Khan', '2023-10-26 22:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (481, 63, '', 'Shahraz Khan', '2023-10-30 13:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (482, 63, '', 'Shahraz Khan', '2023-10-30 22:43:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (483, 65, '', 'Saad zahees', '2023-10-02 11:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (484, 65, '', 'Saad zahees', '2023-10-02 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (485, 65, '', 'Saad zahees', '2023-10-02 20:02:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (486, 65, '', 'Saad zahees', '2023-10-03 11:16:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (487, 65, '', 'Saad zahees', '2023-10-03 11:16:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (488, 65, '', 'Saad zahees', '2023-10-03 11:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (489, 65, '', 'Saad zahees', '2023-10-03 19:50:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (490, 65, '', 'Saad zahees', '2023-10-09 11:18:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (491, 65, '', 'Saad zahees', '2023-10-09 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (492, 65, '', 'Saad zahees', '2023-10-09 20:30:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (493, 65, '', 'Saad zahees', '2023-10-10 11:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (494, 65, '', 'Saad zahees', '2023-10-10 20:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (495, 65, '', 'Saad zahees', '2023-10-10 20:09:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (496, 65, '', 'Saad zahees', '2023-10-11 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (497, 65, '', 'Saad zahees', '2023-10-11 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (498, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (499, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (500, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (501, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (502, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (503, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (504, 65, '', 'Saad zahees', '2023-10-11 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (505, 65, '', 'Saad zahees', '2023-10-11 20:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (506, 65, '', 'Saad zahees', '2023-10-11 20:07:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (507, 65, '', 'Saad zahees', '2023-10-12 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (508, 65, '', 'Saad zahees', '2023-10-12 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (509, 65, '', 'Saad zahees', '2023-10-12 20:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (510, 65, '', 'Saad zahees', '2023-10-12 20:04:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (511, 65, '', 'Saad zahees', '2023-10-13 11:25:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (512, 65, '', 'Saad zahees', '2023-10-13 11:25:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (513, 65, '', 'Saad zahees', '2023-10-13 11:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (514, 65, '', 'Saad zahees', '2023-10-13 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (515, 65, '', 'Saad zahees', '2023-10-13 20:05:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (516, 65, '', 'Saad zahees', '2023-10-16 11:20:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (517, 65, '', 'Saad zahees', '2023-10-16 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (518, 65, '', 'Saad zahees', '2023-10-16 20:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (519, 65, '', 'Saad zahees', '2023-10-16 20:06:00', 'C/Out', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (520, 65, '', 'Saad zahees', '2023-10-16 20:06:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (521, 65, '', 'Saad zahees', '2023-10-17 11:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (522, 65, '', 'Saad zahees', '2023-10-17 20:12:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (523, 65, '', 'Saad zahees', '2023-10-17 20:12:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (524, 65, '', 'Saad zahees', '2023-10-18 11:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (525, 65, '', 'Saad zahees', '2023-10-18 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (526, 65, '', 'Saad zahees', '2023-10-19 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (527, 65, '', 'Saad zahees', '2023-10-19 11:19:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (528, 65, '', 'Saad zahees', '2023-10-19 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (529, 65, '', 'Saad zahees', '2023-10-19 20:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (530, 65, '', 'Saad zahees', '2023-10-20 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (531, 65, '', 'Saad zahees', '2023-10-20 20:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (532, 65, '', 'Saad zahees', '2023-10-23 11:25:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (533, 65, '', 'Saad zahees', '2023-10-23 11:25:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (534, 65, '', 'Saad zahees', '2023-10-23 11:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (535, 65, '', 'Saad zahees', '2023-10-23 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (536, 65, '', 'Saad zahees', '2023-10-23 20:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (537, 65, '', 'Saad zahees', '2023-10-24 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (538, 65, '', 'Saad zahees', '2023-10-24 20:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (539, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (540, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (541, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (542, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (543, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (544, 65, '', 'Saad zahees', '2023-10-25 11:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (545, 65, '', 'Saad zahees', '2023-10-25 20:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (546, 65, '', 'Saad zahees', '2023-10-25 20:08:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (547, 65, '', 'Saad zahees', '2023-10-26 11:05:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (548, 65, '', 'Saad zahees', '2023-10-26 11:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (549, 65, '', 'Saad zahees', '2023-10-26 20:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (550, 65, '', 'Saad zahees', '2023-10-26 20:08:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (551, 65, '', 'Saad zahees', '2023-10-27 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (552, 65, '', 'Saad zahees', '2023-10-27 21:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (553, 65, '', 'Saad zahees', '2023-10-30 11:00:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (554, 65, '', 'Saad zahees', '2023-10-30 11:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (555, 65, '', 'Saad zahees', '2023-10-30 20:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (556, 65, '', 'Saad zahees', '2023-10-30 20:02:00', 'C/Out', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (557, 65, '', 'Saad zahees', '2023-10-30 20:02:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (558, 66, '', 'Wajahat', '2023-10-02 13:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (559, 66, '', 'Wajahat', '2023-10-02 22:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (560, 66, '', 'Wajahat', '2023-10-03 13:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (561, 66, '', 'Wajahat', '2023-10-03 22:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (562, 66, '', 'Wajahat', '2023-10-04 13:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (563, 66, '', 'Wajahat', '2023-10-04 22:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (564, 66, '', 'Wajahat', '2023-10-05 13:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (565, 66, '', 'Wajahat', '2023-10-05 22:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (566, 66, '', 'Wajahat', '2023-10-06 14:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (567, 66, '', 'Wajahat', '2023-10-06 22:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (568, 66, '', 'Wajahat', '2023-10-09 13:31:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (569, 66, '', 'Wajahat', '2023-10-09 22:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (570, 66, '', 'Wajahat', '2023-10-10 13:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (571, 66, '', 'Wajahat', '2023-10-10 22:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (572, 66, '', 'Wajahat', '2023-10-11 13:36:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (573, 66, '', 'Wajahat', '2023-10-11 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (574, 66, '', 'Wajahat', '2023-10-12 13:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (575, 66, '', 'Wajahat', '2023-10-12 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (576, 66, '', 'Wajahat', '2023-10-13 13:31:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (577, 66, '', 'Wajahat', '2023-10-13 20:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (578, 66, '', 'Wajahat', '2023-10-16 22:03:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (579, 66, '', 'Wajahat', '2023-10-17 13:31:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (580, 66, '', 'Wajahat', '2023-10-17 22:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (581, 66, '', 'Wajahat', '2023-10-18 13:28:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (582, 66, '', 'Wajahat', '2023-10-18 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (583, 66, '', 'Wajahat', '2023-10-19 14:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (584, 66, '', 'Wajahat', '2023-10-19 22:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (585, 66, '', 'Wajahat', '2023-10-19 22:01:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (586, 66, '', 'Wajahat', '2023-10-20 13:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (587, 66, '', 'Wajahat', '2023-10-20 21:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (588, 66, '', 'Wajahat', '2023-10-23 14:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (589, 66, '', 'Wajahat', '2023-10-23 22:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (590, 66, '', 'Wajahat', '2023-10-24 13:33:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (591, 66, '', 'Wajahat', '2023-10-24 22:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (592, 66, '', 'Wajahat', '2023-10-25 13:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (593, 66, '', 'Wajahat', '2023-10-25 22:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (594, 66, '', 'Wajahat', '2023-10-26 22:11:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (595, 66, '', 'Wajahat', '2023-10-27 13:45:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (596, 66, '', 'Wajahat', '2023-10-27 21:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (597, 67, '', 'Ahtasham', '2023-10-03 13:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (598, 67, '', 'Ahtasham', '2023-10-03 22:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (599, 67, '', 'Ahtasham', '2023-10-04 12:41:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (600, 67, '', 'Ahtasham', '2023-10-04 22:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (601, 67, '', 'Ahtasham', '2023-10-05 12:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (602, 67, '', 'Ahtasham', '2023-10-05 22:41:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (603, 67, '', 'Ahtasham', '2023-10-06 12:50:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (604, 67, '', 'Ahtasham', '2023-10-09 12:34:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (605, 67, '', 'Ahtasham', '2023-10-09 22:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (606, 67, '', 'Ahtasham', '2023-10-10 11:26:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (607, 67, '', 'Ahtasham', '2023-10-10 22:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (608, 67, '', 'Ahtasham', '2023-10-11 13:19:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (609, 67, '', 'Ahtasham', '2023-10-12 13:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (610, 67, '', 'Ahtasham', '2023-10-12 22:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (611, 67, '', 'Ahtasham', '2023-10-16 12:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (612, 67, '', 'Ahtasham', '2023-10-16 22:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (613, 67, '', 'Ahtasham', '2023-10-17 13:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (614, 67, '', 'Ahtasham', '2023-10-17 22:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (615, 67, '', 'Ahtasham', '2023-10-18 14:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (616, 67, '', 'Ahtasham', '2023-10-18 22:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (617, 67, '', 'Ahtasham', '2023-10-19 12:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (618, 67, '', 'Ahtasham', '2023-10-19 22:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (619, 67, '', 'Ahtasham', '2023-10-20 13:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (620, 67, '', 'Ahtasham', '2023-10-20 21:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (621, 67, '', 'Ahtasham', '2023-10-23 12:33:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (622, 67, '', 'Ahtasham', '2023-10-24 13:33:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (623, 67, '', 'Ahtasham', '2023-10-24 22:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (624, 67, '', 'Ahtasham', '2023-10-26 13:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (625, 67, '', 'Ahtasham', '2023-10-26 22:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (626, 67, '', 'Ahtasham', '2023-10-27 13:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (627, 67, '', 'Ahtasham', '2023-10-27 22:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (628, 67, '', 'Ahtasham', '2023-10-30 13:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (629, 67, '', 'Ahtasham', '2023-10-30 22:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (630, 68, '', 'Muhammad Imran', '2023-10-02 11:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (631, 68, '', 'Muhammad Imran', '2023-10-02 20:28:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (632, 68, '', 'Muhammad Imran', '2023-10-03 11:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (633, 68, '', 'Muhammad Imran', '2023-10-03 20:43:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (634, 68, '', 'Muhammad Imran', '2023-10-04 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (635, 68, '', 'Muhammad Imran', '2023-10-04 20:25:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (636, 68, '', 'Muhammad Imran', '2023-10-05 11:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (637, 68, '', 'Muhammad Imran', '2023-10-05 20:35:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (638, 68, '', 'Muhammad Imran', '2023-10-06 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (639, 68, '', 'Muhammad Imran', '2023-10-06 20:45:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (640, 68, '', 'Muhammad Imran', '2023-10-09 11:29:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (641, 68, '', 'Muhammad Imran', '2023-10-09 20:38:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (642, 68, '', 'Muhammad Imran', '2023-10-10 11:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (643, 68, '', 'Muhammad Imran', '2023-10-10 21:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (644, 68, '', 'Muhammad Imran', '2023-10-11 11:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (645, 68, '', 'Muhammad Imran', '2023-10-11 21:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (646, 68, '', 'Muhammad Imran', '2023-10-12 11:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (647, 68, '', 'Muhammad Imran', '2023-10-12 20:55:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (648, 68, '', 'Muhammad Imran', '2023-10-13 11:24:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (649, 68, '', 'Muhammad Imran', '2023-10-13 20:58:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (650, 68, '', 'Muhammad Imran', '2023-10-16 11:33:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (651, 68, '', 'Muhammad Imran', '2023-10-16 20:44:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (652, 68, '', 'Muhammad Imran', '2023-10-17 11:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (653, 68, '', 'Muhammad Imran', '2023-10-17 21:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (654, 68, '', 'Muhammad Imran', '2023-10-18 11:31:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (655, 68, '', 'Muhammad Imran', '2023-10-18 20:54:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (656, 68, '', 'Muhammad Imran', '2023-10-19 11:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (657, 68, '', 'Muhammad Imran', '2023-10-19 21:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (658, 68, '', 'Muhammad Imran', '2023-10-20 11:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (659, 68, '', 'Muhammad Imran', '2023-10-20 21:40:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (660, 68, '', 'Muhammad Imran', '2023-10-23 11:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (661, 68, '', 'Muhammad Imran', '2023-10-23 21:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (662, 68, '', 'Muhammad Imran', '2023-10-24 11:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (663, 68, '', 'Muhammad Imran', '2023-10-24 20:39:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (664, 68, '', 'Muhammad Imran', '2023-10-25 11:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (665, 68, '', 'Muhammad Imran', '2023-10-25 21:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (666, 68, '', 'Muhammad Imran', '2023-10-26 11:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (667, 68, '', 'Muhammad Imran', '2023-10-26 20:55:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (668, 68, '', 'Muhammad Imran', '2023-10-27 11:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (669, 68, '', 'Muhammad Imran', '2023-10-27 20:52:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (670, 68, '', 'Muhammad Imran', '2023-10-30 11:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (671, 68, '', 'Muhammad Imran', '2023-10-30 20:41:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (672, 69, '', 'M  Mustafa', '2023-10-02 16:45:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (673, 69, '', 'M  Mustafa', '2023-10-03 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (674, 69, '', 'M  Mustafa', '2023-10-03 16:53:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (675, 69, '', 'M  Mustafa', '2023-10-04 02:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (676, 69, '', 'M  Mustafa', '2023-10-04 16:45:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (677, 69, '', 'M  Mustafa', '2023-10-05 01:58:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (678, 69, '', 'M  Mustafa', '2023-10-05 16:52:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (679, 69, '', 'M  Mustafa', '2023-10-06 16:49:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (680, 69, '', 'M  Mustafa', '2023-10-09 16:52:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (681, 69, '', 'M  Mustafa', '2023-10-10 02:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (682, 69, '', 'M  Mustafa', '2023-10-10 16:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (683, 69, '', 'M  Mustafa', '2023-10-11 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (684, 69, '', 'M  Mustafa', '2023-10-11 16:47:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (685, 69, '', 'M  Mustafa', '2023-10-12 02:00:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (686, 69, '', 'M  Mustafa', '2023-10-12 02:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (687, 69, '', 'M  Mustafa', '2023-10-12 17:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (688, 69, '', 'M  Mustafa', '2023-10-13 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (689, 69, '', 'M  Mustafa', '2023-10-13 16:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (690, 69, '', 'M  Mustafa', '2023-10-14 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (691, 69, '', 'M  Mustafa', '2023-10-16 16:48:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (692, 69, '', 'M  Mustafa', '2023-10-17 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (693, 69, '', 'M  Mustafa', '2023-10-19 16:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (694, 69, '', 'M  Mustafa', '2023-10-20 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (695, 69, '', 'M  Mustafa', '2023-10-20 17:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (696, 69, '', 'M  Mustafa', '2023-10-21 01:58:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (697, 69, '', 'M  Mustafa', '2023-10-21 01:58:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (698, 69, '', 'M  Mustafa', '2023-10-23 17:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (699, 69, '', 'M  Mustafa', '2023-10-24 02:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (700, 69, '', 'M  Mustafa', '2023-10-24 16:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (701, 69, '', 'M  Mustafa', '2023-10-25 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (702, 69, '', 'M  Mustafa', '2023-10-25 16:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (703, 69, '', 'M  Mustafa', '2023-10-26 02:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (704, 69, '', 'M  Mustafa', '2023-10-26 16:58:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (705, 69, '', 'M  Mustafa', '2023-10-27 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (706, 69, '', 'M  Mustafa', '2023-10-27 15:47:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (707, 69, '', 'M  Mustafa', '2023-10-28 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (708, 69, '', 'M  Mustafa', '2023-10-30 16:50:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (709, 70, '', 'Ahmad', '2023-10-02 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (710, 70, '', 'Ahmad', '2023-10-03 02:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (711, 70, '', 'Ahmad', '2023-10-03 17:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (712, 70, '', 'Ahmad', '2023-10-04 02:15:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (713, 70, '', 'Ahmad', '2023-10-04 16:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (714, 70, '', 'Ahmad', '2023-10-05 02:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (715, 70, '', 'Ahmad', '2023-10-05 16:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (716, 70, '', 'Ahmad', '2023-10-06 02:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (717, 70, '', 'Ahmad', '2023-10-06 17:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (718, 70, '', 'Ahmad', '2023-10-07 03:14:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (719, 70, '', 'Ahmad', '2023-10-09 17:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (720, 70, '', 'Ahmad', '2023-10-10 02:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (721, 70, '', 'Ahmad', '2023-10-10 17:06:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (722, 70, '', 'Ahmad', '2023-10-11 02:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (723, 70, '', 'Ahmad', '2023-10-11 17:09:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (724, 70, '', 'Ahmad', '2023-10-12 02:47:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (725, 70, '', 'Ahmad', '2023-10-12 02:47:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (726, 70, '', 'Ahmad', '2023-10-12 17:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (727, 70, '', 'Ahmad', '2023-10-13 02:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (728, 70, '', 'Ahmad', '2023-10-13 17:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (729, 70, '', 'Ahmad', '2023-10-14 02:17:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (730, 70, '', 'Ahmad', '2023-10-16 17:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (731, 70, '', 'Ahmad', '2023-10-17 02:43:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (732, 70, '', 'Ahmad', '2023-10-17 17:04:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (733, 70, '', 'Ahmad', '2023-10-18 02:03:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (734, 70, '', 'Ahmad', '2023-10-18 02:03:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (735, 70, '', 'Ahmad', '2023-10-18 17:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (736, 70, '', 'Ahmad', '2023-10-19 02:19:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (737, 70, '', 'Ahmad', '2023-10-19 17:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (738, 70, '', 'Ahmad', '2023-10-20 02:25:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (739, 70, '', 'Ahmad', '2023-10-20 17:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (740, 70, '', 'Ahmad', '2023-10-21 02:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (741, 70, '', 'Ahmad', '2023-10-23 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (742, 70, '', 'Ahmad', '2023-10-24 02:18:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (743, 70, '', 'Ahmad', '2023-10-24 17:12:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (744, 70, '', 'Ahmad', '2023-10-25 17:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (745, 70, '', 'Ahmad', '2023-10-26 02:43:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (746, 70, '', 'Ahmad', '2023-10-26 16:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (747, 70, '', 'Ahmad', '2023-10-27 02:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (748, 70, '', 'Ahmad', '2023-10-27 17:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (749, 70, '', 'Ahmad', '2023-10-30 17:13:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (750, 72, '', 'Sufyan', '2023-10-02 19:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (751, 72, '', 'Sufyan', '2023-10-03 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (752, 72, '', 'Sufyan', '2023-10-03 19:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (753, 72, '', 'Sufyan', '2023-10-04 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (754, 72, '', 'Sufyan', '2023-10-04 18:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (755, 72, '', 'Sufyan', '2023-10-05 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (756, 72, '', 'Sufyan', '2023-10-05 19:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (757, 72, '', 'Sufyan', '2023-10-06 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (758, 72, '', 'Sufyan', '2023-10-06 19:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (759, 72, '', 'Sufyan', '2023-10-07 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (760, 72, '', 'Sufyan', '2023-10-09 18:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (761, 72, '', 'Sufyan', '2023-10-10 05:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (762, 72, '', 'Sufyan', '2023-10-10 18:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (763, 72, '', 'Sufyan', '2023-10-11 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (764, 72, '', 'Sufyan', '2023-10-11 18:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (765, 72, '', 'Sufyan', '2023-10-12 02:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (766, 72, '', 'Sufyan', '2023-10-12 12:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (767, 72, '', 'Sufyan', '2023-10-13 00:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (768, 72, '', 'Sufyan', '2023-10-13 12:05:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (769, 72, '', 'Sufyan', '2023-10-14 00:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (770, 72, '', 'Sufyan', '2023-10-14 15:11:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (771, 72, '', 'Sufyan', '2023-10-16 12:22:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (772, 72, '', 'Sufyan', '2023-10-17 00:00:00', 'C/Out', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (773, 72, '', 'Sufyan', '2023-10-17 00:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (774, 72, '', 'Sufyan', '2023-10-18 00:09:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (775, 72, '', 'Sufyan', '2023-10-18 12:28:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (776, 72, '', 'Sufyan', '2023-10-19 00:06:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (777, 72, '', 'Sufyan', '2023-10-19 12:11:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (778, 72, '', 'Sufyan', '2023-10-20 00:01:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (779, 72, '', 'Sufyan', '2023-10-20 12:08:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (780, 72, '', 'Sufyan', '2023-10-21 00:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (781, 72, '', 'Sufyan', '2023-10-23 19:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (782, 72, '', 'Sufyan', '2023-10-24 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (783, 72, '', 'Sufyan', '2023-10-24 19:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (784, 72, '', 'Sufyan', '2023-10-25 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (785, 72, '', 'Sufyan', '2023-10-25 19:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (786, 72, '', 'Sufyan', '2023-10-26 05:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (787, 72, '', 'Sufyan', '2023-10-30 19:01:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (788, 73, '', 'AHMAD HASSAN B', '2023-10-02 19:45:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (789, 73, '', 'AHMAD HASSAN B', '2023-10-03 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (790, 73, '', 'AHMAD HASSAN B', '2023-10-03 19:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (791, 73, '', 'AHMAD HASSAN B', '2023-10-04 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (792, 73, '', 'AHMAD HASSAN B', '2023-10-04 19:41:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (793, 73, '', 'AHMAD HASSAN B', '2023-10-05 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (794, 73, '', 'AHMAD HASSAN B', '2023-10-05 19:36:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (795, 73, '', 'AHMAD HASSAN B', '2023-10-06 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (796, 73, '', 'AHMAD HASSAN B', '2023-10-06 19:43:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (797, 73, '', 'AHMAD HASSAN B', '2023-10-07 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (798, 73, '', 'AHMAD HASSAN B', '2023-10-07 05:00:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (799, 73, '', 'AHMAD HASSAN B', '2023-10-09 19:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (800, 73, '', 'AHMAD HASSAN B', '2023-10-10 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (801, 73, '', 'AHMAD HASSAN B', '2023-10-10 19:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (802, 73, '', 'AHMAD HASSAN B', '2023-10-11 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (803, 73, '', 'AHMAD HASSAN B', '2023-10-11 19:47:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (804, 73, '', 'AHMAD HASSAN B', '2023-10-12 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (805, 73, '', 'AHMAD HASSAN B', '2023-10-12 19:42:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (806, 73, '', 'AHMAD HASSAN B', '2023-10-13 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (807, 73, '', 'AHMAD HASSAN B', '2023-10-13 19:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (808, 73, '', 'AHMAD HASSAN B', '2023-10-14 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (809, 73, '', 'AHMAD HASSAN B', '2023-10-16 19:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (810, 73, '', 'AHMAD HASSAN B', '2023-10-17 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (811, 73, '', 'AHMAD HASSAN B', '2023-10-17 19:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (812, 73, '', 'AHMAD HASSAN B', '2023-10-18 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (813, 73, '', 'AHMAD HASSAN B', '2023-10-18 19:49:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (814, 73, '', 'AHMAD HASSAN B', '2023-10-19 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (815, 73, '', 'AHMAD HASSAN B', '2023-10-19 19:50:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (816, 73, '', 'AHMAD HASSAN B', '2023-10-20 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (817, 73, '', 'AHMAD HASSAN B', '2023-10-20 19:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (818, 73, '', 'AHMAD HASSAN B', '2023-10-21 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (819, 73, '', 'AHMAD HASSAN B', '2023-10-23 19:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (820, 73, '', 'AHMAD HASSAN B', '2023-10-24 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (821, 73, '', 'AHMAD HASSAN B', '2023-10-24 19:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (822, 73, '', 'AHMAD HASSAN B', '2023-10-25 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (823, 73, '', 'AHMAD HASSAN B', '2023-10-25 19:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (824, 73, '', 'AHMAD HASSAN B', '2023-10-26 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (825, 73, '', 'AHMAD HASSAN B', '2023-10-26 19:42:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (826, 73, '', 'AHMAD HASSAN B', '2023-10-27 05:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (827, 73, '', 'AHMAD HASSAN B', '2023-10-27 19:44:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (828, 73, '', 'AHMAD HASSAN B', '2023-10-28 05:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (829, 73, '', 'AHMAD HASSAN B', '2023-10-30 19:38:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (830, 74, '', 'Arslan Liaqat', '2023-10-02 16:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (831, 74, '', 'Arslan Liaqat', '2023-10-03 02:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (832, 74, '', 'Arslan Liaqat', '2023-10-03 16:42:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (833, 74, '', 'Arslan Liaqat', '2023-10-04 02:20:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (834, 74, '', 'Arslan Liaqat', '2023-10-04 16:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (835, 74, '', 'Arslan Liaqat', '2023-10-05 02:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (836, 74, '', 'Arslan Liaqat', '2023-10-05 16:56:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (837, 74, '', 'Arslan Liaqat', '2023-10-06 02:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (838, 74, '', 'Arslan Liaqat', '2023-10-06 16:56:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (839, 74, '', 'Arslan Liaqat', '2023-10-07 02:15:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (840, 74, '', 'Arslan Liaqat', '2023-10-09 17:08:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (841, 74, '', 'Arslan Liaqat', '2023-10-10 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (842, 74, '', 'Arslan Liaqat', '2023-10-10 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (843, 74, '', 'Arslan Liaqat', '2023-10-11 02:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (844, 74, '', 'Arslan Liaqat', '2023-10-11 16:51:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (845, 74, '', 'Arslan Liaqat', '2023-10-12 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (846, 74, '', 'Arslan Liaqat', '2023-10-12 17:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (847, 74, '', 'Arslan Liaqat', '2023-10-13 02:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (848, 74, '', 'Arslan Liaqat', '2023-10-13 16:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (849, 74, '', 'Arslan Liaqat', '2023-10-14 02:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (850, 74, '', 'Arslan Liaqat', '2023-10-16 16:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (851, 74, '', 'Arslan Liaqat', '2023-10-17 02:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (852, 74, '', 'Arslan Liaqat', '2023-10-17 17:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (853, 74, '', 'Arslan Liaqat', '2023-10-18 02:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (854, 74, '', 'Arslan Liaqat', '2023-10-18 17:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (855, 74, '', 'Arslan Liaqat', '2023-10-19 02:00:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (856, 74, '', 'Arslan Liaqat', '2023-10-19 16:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (857, 74, '', 'Arslan Liaqat', '2023-10-20 02:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (858, 74, '', 'Arslan Liaqat', '2023-10-20 16:58:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (859, 74, '', 'Arslan Liaqat', '2023-10-21 02:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (860, 74, '', 'Arslan Liaqat', '2023-10-23 17:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (861, 74, '', 'Arslan Liaqat', '2023-10-24 02:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (862, 74, '', 'Arslan Liaqat', '2023-10-25 16:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (863, 74, '', 'Arslan Liaqat', '2023-10-26 02:39:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (864, 74, '', 'Arslan Liaqat', '2023-10-26 17:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (865, 74, '', 'Arslan Liaqat', '2023-10-27 02:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (866, 74, '', 'Arslan Liaqat', '2023-10-27 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (867, 74, '', 'Arslan Liaqat', '2023-10-28 02:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (868, 74, '', 'Arslan Liaqat', '2023-10-30 17:14:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (869, 75, '', 'Zeshan Ashraf', '2023-10-02 13:08:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (870, 75, '', 'Zeshan Ashraf', '2023-10-03 13:03:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (871, 75, '', 'Zeshan Ashraf', '2023-10-03 21:58:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (872, 75, '', 'Zeshan Ashraf', '2023-10-04 13:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (873, 75, '', 'Zeshan Ashraf', '2023-10-04 21:51:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (874, 75, '', 'Zeshan Ashraf', '2023-10-06 13:43:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (875, 75, '', 'Zeshan Ashraf', '2023-10-09 13:45:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (876, 75, '', 'Zeshan Ashraf', '2023-10-10 13:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (877, 75, '', 'Zeshan Ashraf', '2023-10-10 22:00:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (878, 75, '', 'Zeshan Ashraf', '2023-10-11 13:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (879, 75, '', 'Zeshan Ashraf', '2023-10-11 22:09:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (880, 75, '', 'Zeshan Ashraf', '2023-10-12 13:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (881, 75, '', 'Zeshan Ashraf', '2023-10-12 22:00:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (882, 75, '', 'Zeshan Ashraf', '2023-10-13 13:41:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (883, 75, '', 'Zeshan Ashraf', '2023-10-16 14:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (884, 75, '', 'Zeshan Ashraf', '2023-10-16 22:21:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (885, 75, '', 'Zeshan Ashraf', '2023-10-17 13:25:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (886, 75, '', 'Zeshan Ashraf', '2023-10-17 22:00:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (887, 75, '', 'Zeshan Ashraf', '2023-10-18 13:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (888, 75, '', 'Zeshan Ashraf', '2023-10-18 22:08:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (889, 75, '', 'Zeshan Ashraf', '2023-10-19 13:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (890, 75, '', 'Zeshan Ashraf', '2023-10-19 21:35:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (891, 75, '', 'Zeshan Ashraf', '2023-10-20 13:46:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (892, 75, '', 'Zeshan Ashraf', '2023-10-20 22:06:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (893, 75, '', 'Zeshan Ashraf', '2023-10-23 13:33:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (894, 75, '', 'Zeshan Ashraf', '2023-10-23 21:48:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (895, 75, '', 'Zeshan Ashraf', '2023-10-24 13:52:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (896, 75, '', 'Zeshan Ashraf', '2023-10-24 22:06:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (897, 75, '', 'Zeshan Ashraf', '2023-10-26 13:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (898, 75, '', 'Zeshan Ashraf', '2023-10-26 22:01:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (899, 75, '', 'Zeshan Ashraf', '2023-10-27 13:38:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (900, 75, '', 'Zeshan Ashraf', '2023-10-27 22:01:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (901, 75, '', 'Zeshan Ashraf', '2023-10-30 13:54:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (902, 75, '', 'Zeshan Ashraf', '2023-10-30 22:28:00', 'C/In', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (903, 76, '', 'M.Waleed', '2023-10-02 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (904, 76, '', 'M.Waleed', '2023-10-03 01:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (905, 76, '', 'M.Waleed', '2023-10-03 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (906, 76, '', 'M.Waleed', '2023-10-04 01:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (907, 76, '', 'M.Waleed', '2023-10-04 17:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (908, 76, '', 'M.Waleed', '2023-10-05 01:14:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (909, 76, '', 'M.Waleed', '2023-10-05 17:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (910, 76, '', 'M.Waleed', '2023-10-06 01:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (911, 76, '', 'M.Waleed', '2023-10-06 17:32:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (912, 76, '', 'M.Waleed', '2023-10-07 01:12:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (913, 76, '', 'M.Waleed', '2023-10-09 17:28:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (914, 76, '', 'M.Waleed', '2023-10-10 01:24:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (915, 76, '', 'M.Waleed', '2023-10-10 17:01:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (916, 76, '', 'M.Waleed', '2023-10-11 01:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (917, 76, '', 'M.Waleed', '2023-10-11 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (918, 76, '', 'M.Waleed', '2023-10-12 01:11:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (919, 76, '', 'M.Waleed', '2023-10-12 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (920, 76, '', 'M.Waleed', '2023-10-13 01:09:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (921, 76, '', 'M.Waleed', '2023-10-13 17:22:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (922, 76, '', 'M.Waleed', '2023-10-14 01:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (923, 76, '', 'M.Waleed', '2023-10-16 17:05:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (924, 76, '', 'M.Waleed', '2023-10-17 01:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (925, 76, '', 'M.Waleed', '2023-10-17 17:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (926, 76, '', 'M.Waleed', '2023-10-18 01:29:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (927, 76, '', 'M.Waleed', '2023-10-18 17:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (928, 76, '', 'M.Waleed', '2023-10-19 01:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (929, 76, '', 'M.Waleed', '2023-10-19 16:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (930, 76, '', 'M.Waleed', '2023-10-20 01:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (931, 76, '', 'M.Waleed', '2023-10-20 17:07:00', 'C/Out', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (932, 76, '', 'M.Waleed', '2023-10-20 21:59:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (933, 76, '', 'M.Waleed', '2023-10-23 17:09:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (934, 76, '', 'M.Waleed', '2023-10-24 01:24:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (935, 76, '', 'M.Waleed', '2023-10-24 17:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (936, 76, '', 'M.Waleed', '2023-10-25 01:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (937, 76, '', 'M.Waleed', '2023-10-25 17:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (938, 76, '', 'M.Waleed', '2023-10-26 01:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (939, 76, '', 'M.Waleed', '2023-10-26 17:07:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (940, 76, '', 'M.Waleed', '2023-10-27 01:28:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (941, 76, '', 'M.Waleed', '2023-10-27 17:04:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (942, 76, '', 'M.Waleed', '2023-10-28 00:35:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (943, 76, '', 'M.Waleed', '2023-10-30 17:10:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (944, 78, '', 'Umair Khadim', '2023-10-02 17:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (945, 78, '', 'Umair Khadim', '2023-10-03 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (946, 78, '', 'Umair Khadim', '2023-10-03 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (947, 78, '', 'Umair Khadim', '2023-10-04 01:00:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (948, 78, '', 'Umair Khadim', '2023-10-04 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (949, 78, '', 'Umair Khadim', '2023-10-05 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (950, 78, '', 'Umair Khadim', '2023-10-05 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (951, 78, '', 'Umair Khadim', '2023-10-06 01:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (952, 78, '', 'Umair Khadim', '2023-10-06 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (953, 78, '', 'Umair Khadim', '2023-10-07 01:06:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (954, 78, '', 'Umair Khadim', '2023-10-09 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (955, 78, '', 'Umair Khadim', '2023-10-10 01:02:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (956, 78, '', 'Umair Khadim', '2023-10-10 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (957, 78, '', 'Umair Khadim', '2023-10-11 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (958, 78, '', 'Umair Khadim', '2023-10-11 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (959, 78, '', 'Umair Khadim', '2023-10-12 01:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (960, 78, '', 'Umair Khadim', '2023-10-12 17:19:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (961, 78, '', 'Umair Khadim', '2023-10-13 01:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (962, 78, '', 'Umair Khadim', '2023-10-13 17:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (963, 78, '', 'Umair Khadim', '2023-10-14 01:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (964, 78, '', 'Umair Khadim', '2023-10-16 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (965, 78, '', 'Umair Khadim', '2023-10-17 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (966, 78, '', 'Umair Khadim', '2023-10-17 17:10:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (967, 78, '', 'Umair Khadim', '2023-10-18 01:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (968, 78, '', 'Umair Khadim', '2023-10-18 17:17:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (969, 78, '', 'Umair Khadim', '2023-10-19 17:13:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (970, 78, '', 'Umair Khadim', '2023-10-20 01:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (971, 78, '', 'Umair Khadim', '2023-10-20 17:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (972, 78, '', 'Umair Khadim', '2023-10-20 22:23:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (973, 78, '', 'Umair Khadim', '2023-10-23 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (974, 78, '', 'Umair Khadim', '2023-10-24 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (975, 78, '', 'Umair Khadim', '2023-10-24 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (976, 78, '', 'Umair Khadim', '2023-10-25 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (977, 78, '', 'Umair Khadim', '2023-10-25 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (978, 78, '', 'Umair Khadim', '2023-10-26 01:05:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (979, 78, '', 'Umair Khadim', '2023-10-26 17:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (980, 78, '', 'Umair Khadim', '2023-10-27 01:21:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (981, 78, '', 'Umair Khadim', '2023-10-27 17:14:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (982, 78, '', 'Umair Khadim', '2023-10-28 00:31:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (983, 78, '', 'Umair Khadim', '2023-10-30 17:11:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (984, 79, '', 'Saad Waseem', '2023-10-02 18:32:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (985, 79, '', 'Saad Waseem', '2023-10-03 01:03:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (986, 79, '', 'Saad Waseem', '2023-10-03 16:53:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (987, 79, '', 'Saad Waseem', '2023-10-03 23:57:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (988, 79, '', 'Saad Waseem', '2023-10-04 16:45:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (989, 79, '', 'Saad Waseem', '2023-10-05 00:26:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (990, 79, '', 'Saad Waseem', '2023-10-05 00:26:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (991, 79, '', 'Saad Waseem', '2023-10-05 16:55:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (992, 79, '', 'Saad Waseem', '2023-10-06 01:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (993, 79, '', 'Saad Waseem', '2023-10-06 16:58:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (994, 79, '', 'Saad Waseem', '2023-10-07 01:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (995, 79, '', 'Saad Waseem', '2023-10-07 01:07:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (996, 79, '', 'Saad Waseem', '2023-10-09 16:57:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (997, 79, '', 'Saad Waseem', '2023-10-09 16:57:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (998, 79, '', 'Saad Waseem', '2023-10-10 17:18:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (999, 79, '', 'Saad Waseem', '2023-10-11 01:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1000, 79, '', 'Saad Waseem', '2023-10-11 17:11:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1001, 79, '', 'Saad Waseem', '2023-10-12 01:10:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1002, 79, '', 'Saad Waseem', '2023-10-12 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1003, 79, '', 'Saad Waseem', '2023-10-13 01:08:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1004, 79, '', 'Saad Waseem', '2023-10-13 01:08:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1005, 79, '', 'Saad Waseem', '2023-10-13 16:31:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1006, 79, '', 'Saad Waseem', '2023-10-16 18:57:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1007, 79, '', 'Saad Waseem', '2023-10-17 01:04:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1008, 79, '', 'Saad Waseem', '2023-10-17 17:16:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1009, 79, '', 'Saad Waseem', '2023-10-18 01:13:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1010, 79, '', 'Saad Waseem', '2023-10-18 16:59:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1011, 79, '', 'Saad Waseem', '2023-10-19 01:35:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1012, 79, '', 'Saad Waseem', '2023-10-19 17:17:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1013, 79, '', 'Saad Waseem', '2023-10-19 17:17:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1014, 79, '', 'Saad Waseem', '2023-10-20 01:12:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1015, 79, '', 'Saad Waseem', '2023-10-20 17:29:00', 'C/In', '', 'Repeat', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1016, 79, '', 'Saad Waseem', '2023-10-20 17:29:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1017, 79, '', 'Saad Waseem', '2023-10-20 22:23:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1018, 79, '', 'Saad Waseem', '2023-10-20 22:23:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1019, 79, '', 'Saad Waseem', '2023-10-23 17:02:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1020, 79, '', 'Saad Waseem', '2023-10-24 01:36:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1021, 79, '', 'Saad Waseem', '2023-10-24 01:36:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1022, 79, '', 'Saad Waseem', '2023-10-24 17:15:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1023, 79, '', 'Saad Waseem', '2023-10-25 01:17:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1024, 79, '', 'Saad Waseem', '2023-10-25 17:00:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1025, 79, '', 'Saad Waseem', '2023-10-26 01:07:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1026, 79, '', 'Saad Waseem', '2023-10-26 20:20:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1027, 79, '', 'Saad Waseem', '2023-10-26 21:01:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1028, 79, '', 'Saad Waseem', '2023-10-27 17:12:00', 'C/In', 'OverTime In', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1029, 79, '', 'Saad Waseem', '2023-10-28 00:35:00', 'C/Out', 'OverTime Out', 'FOT', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1030, 79, '', 'Saad Waseem', '2023-10-28 00:35:00', 'C/Out', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');
INSERT INTO `attendances` VALUES (1031, 79, '', 'Saad Waseem', '2023-10-30 17:10:00', 'C/In', '', 'Invalid', NULL, '2023-11-10 11:31:51', '2023-11-10 11:31:51');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'Development', '2023-10-03 09:35:53', '2023-10-03 10:06:08');
INSERT INTO `departments` VALUES (2, 'Customer Support', '2023-10-03 09:37:22', '2023-10-03 09:37:22');
INSERT INTO `departments` VALUES (3, 'Accounts', '2023-10-03 09:37:40', '2023-10-03 09:37:40');
INSERT INTO `departments` VALUES (4, 'SEO', '2023-10-03 09:37:57', '2023-10-03 09:37:57');
INSERT INTO `departments` VALUES (5, 'Business Development', '2023-10-03 09:38:18', '2023-10-03 09:38:18');
INSERT INTO `departments` VALUES (6, 'Office Admin', '2023-10-03 09:38:32', '2023-10-03 09:38:32');
INSERT INTO `departments` VALUES (8, 'Human Resource', '2023-10-03 10:27:49', '2023-10-03 10:27:49');

-- ----------------------------
-- Table structure for designations
-- ----------------------------
DROP TABLE IF EXISTS `designations`;
CREATE TABLE `designations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of designations
-- ----------------------------
INSERT INTO `designations` VALUES (1, 'Project Manager', '2023-10-03 09:39:28', '2023-10-03 09:52:03');
INSERT INTO `designations` VALUES (2, 'Software Team Lead', '2023-10-03 09:39:46', '2023-10-03 09:39:46');
INSERT INTO `designations` VALUES (3, 'Sr. Software Engineer', '2023-10-03 09:40:15', '2023-10-03 09:40:15');
INSERT INTO `designations` VALUES (4, 'Software Engineer', '2023-10-03 09:40:30', '2023-10-03 09:40:30');
INSERT INTO `designations` VALUES (5, 'Web Developer', '2023-10-03 09:40:48', '2023-10-03 09:40:48');
INSERT INTO `designations` VALUES (6, 'Graphics Designer', '2023-10-03 09:41:09', '2023-10-03 09:41:09');
INSERT INTO `designations` VALUES (7, 'Support Executive', '2023-10-03 09:41:26', '2023-10-03 09:41:26');
INSERT INTO `designations` VALUES (8, 'Support Officer', '2023-10-03 09:41:36', '2023-10-03 09:41:36');
INSERT INTO `designations` VALUES (9, 'Accountant', '2023-10-03 09:41:49', '2023-10-03 09:41:49');
INSERT INTO `designations` VALUES (10, 'SEO Manager', '2023-10-03 09:42:08', '2023-10-03 09:42:08');
INSERT INTO `designations` VALUES (11, 'Content Writer', '2023-10-03 09:42:18', '2023-10-03 09:42:18');
INSERT INTO `designations` VALUES (12, 'SEO Expert', '2023-10-03 09:42:32', '2023-10-03 09:42:32');
INSERT INTO `designations` VALUES (13, 'BD Manager', '2023-10-03 09:42:44', '2023-10-03 09:42:44');
INSERT INTO `designations` VALUES (14, 'BD Officer', '2023-10-03 09:42:52', '2023-10-03 09:42:52');
INSERT INTO `designations` VALUES (15, 'Office Boy', '2023-10-03 09:43:11', '2023-10-03 09:43:11');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for leave_applications
-- ----------------------------
DROP TABLE IF EXISTS `leave_applications`;
CREATE TABLE `leave_applications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `leave_type_id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time(0) NULL DEFAULT NULL,
  `end_time` time(0) NULL DEFAULT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL COMMENT '0=pending,1=send for approval,2=approved,3=denied',
  `number_of_hours` int NULL DEFAULT NULL,
  `number_of_days` int NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `leave_applications_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `leave_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_applications
-- ----------------------------
INSERT INTO `leave_applications` VALUES (1, 17, 2, '2023-10-30', '2023-10-30', NULL, NULL, 'some important work to do', NULL, 3, NULL, 1, '2023-10-13 11:23:44', '2023-10-13 11:26:49');
INSERT INTO `leave_applications` VALUES (2, 18, 1, '2023-11-11', '2023-11-11', NULL, NULL, 'fever flow', NULL, 2, NULL, 1, '2023-11-10 12:56:50', '2023-11-10 12:59:15');
INSERT INTO `leave_applications` VALUES (3, 18, 2, '2023-11-14', '2023-11-14', NULL, NULL, 'sfadsf', NULL, 2, NULL, 1, '2023-11-10 13:09:51', '2023-11-10 13:11:47');

-- ----------------------------
-- Table structure for leave_balances
-- ----------------------------
DROP TABLE IF EXISTS `leave_balances`;
CREATE TABLE `leave_balances`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `leave_type_id` bigint UNSIGNED NULL DEFAULT NULL,
  `balance` double(8, 3) NOT NULL DEFAULT 0.000,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `leave_balances_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `leave_balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_balances
-- ----------------------------
INSERT INTO `leave_balances` VALUES (1, 15, 1, 8.000, '2023-10-03 13:47:41', '2023-10-06 11:39:06');
INSERT INTO `leave_balances` VALUES (2, 15, 2, 12.000, '2023-10-03 13:47:41', '2023-10-03 13:47:41');
INSERT INTO `leave_balances` VALUES (3, 15, 3, 14.000, '2023-10-03 13:47:41', '2023-10-03 13:47:41');
INSERT INTO `leave_balances` VALUES (4, 16, 1, 8.000, '2023-10-03 13:48:47', '2023-10-04 08:49:52');
INSERT INTO `leave_balances` VALUES (5, 16, 2, 12.000, '2023-10-03 13:48:47', '2023-10-06 16:57:59');
INSERT INTO `leave_balances` VALUES (6, 16, 3, 14.000, '2023-10-03 13:48:47', '2023-10-03 13:48:47');
INSERT INTO `leave_balances` VALUES (7, 17, 1, 8.000, '2023-10-03 13:49:48', '2023-10-06 14:10:42');
INSERT INTO `leave_balances` VALUES (8, 17, 2, 12.000, '2023-10-03 13:49:48', '2023-10-13 11:26:49');
INSERT INTO `leave_balances` VALUES (9, 17, 3, 14.000, '2023-10-03 13:49:48', '2023-10-03 13:49:48');
INSERT INTO `leave_balances` VALUES (10, 18, 1, 7.000, '2023-10-03 14:50:31', '2023-11-10 12:56:50');
INSERT INTO `leave_balances` VALUES (11, 18, 2, 11.000, '2023-10-03 14:50:31', '2023-11-10 13:09:51');
INSERT INTO `leave_balances` VALUES (12, 18, 3, 14.000, '2023-10-03 14:50:31', '2023-10-03 14:50:31');
INSERT INTO `leave_balances` VALUES (13, 19, 1, 8.000, '2023-10-03 14:55:43', '2023-10-03 14:55:43');
INSERT INTO `leave_balances` VALUES (14, 19, 2, 12.000, '2023-10-03 14:55:43', '2023-10-03 14:55:43');
INSERT INTO `leave_balances` VALUES (15, 19, 3, 14.000, '2023-10-03 14:55:43', '2023-10-03 14:55:43');
INSERT INTO `leave_balances` VALUES (16, 20, 1, 8.000, '2023-10-03 14:57:53', '2023-10-06 15:04:07');
INSERT INTO `leave_balances` VALUES (17, 20, 2, 12.000, '2023-10-03 14:57:53', '2023-10-06 15:10:54');
INSERT INTO `leave_balances` VALUES (18, 20, 3, 14.000, '2023-10-03 14:57:53', '2023-10-06 15:10:56');
INSERT INTO `leave_balances` VALUES (19, 21, 1, 8.000, '2023-10-09 09:03:45', '2023-10-09 09:03:45');
INSERT INTO `leave_balances` VALUES (20, 21, 2, 12.000, '2023-10-09 09:03:45', '2023-10-09 09:03:45');
INSERT INTO `leave_balances` VALUES (21, 21, 3, 14.000, '2023-10-09 09:03:45', '2023-10-09 09:03:45');
INSERT INTO `leave_balances` VALUES (22, 22, 1, 8.000, '2023-10-09 09:11:18', '2023-10-09 09:11:18');
INSERT INTO `leave_balances` VALUES (23, 22, 2, 12.000, '2023-10-09 09:11:18', '2023-10-09 09:11:18');
INSERT INTO `leave_balances` VALUES (24, 22, 3, 14.000, '2023-10-09 09:11:18', '2023-10-09 09:11:18');
INSERT INTO `leave_balances` VALUES (25, 23, 1, 8.000, '2023-10-09 09:12:33', '2023-10-09 09:12:33');
INSERT INTO `leave_balances` VALUES (26, 23, 2, 12.000, '2023-10-09 09:12:33', '2023-10-09 09:12:33');
INSERT INTO `leave_balances` VALUES (27, 23, 3, 14.000, '2023-10-09 09:12:33', '2023-10-09 09:12:33');
INSERT INTO `leave_balances` VALUES (28, 24, 1, 8.000, '2023-10-09 09:14:03', '2023-10-09 09:14:03');
INSERT INTO `leave_balances` VALUES (29, 24, 2, 12.000, '2023-10-09 09:14:03', '2023-10-09 09:14:03');
INSERT INTO `leave_balances` VALUES (30, 24, 3, 14.000, '2023-10-09 09:14:03', '2023-10-09 09:14:03');
INSERT INTO `leave_balances` VALUES (31, 25, 1, 8.000, '2023-10-09 09:15:01', '2023-10-09 09:15:01');
INSERT INTO `leave_balances` VALUES (32, 25, 2, 12.000, '2023-10-09 09:15:01', '2023-10-09 09:15:01');
INSERT INTO `leave_balances` VALUES (33, 25, 3, 14.000, '2023-10-09 09:15:01', '2023-10-09 09:15:01');
INSERT INTO `leave_balances` VALUES (34, 26, 1, 8.000, '2023-10-09 09:16:44', '2023-10-09 09:16:44');
INSERT INTO `leave_balances` VALUES (35, 26, 2, 12.000, '2023-10-09 09:16:44', '2023-10-09 09:16:44');
INSERT INTO `leave_balances` VALUES (36, 26, 3, 14.000, '2023-10-09 09:16:44', '2023-10-09 09:16:44');
INSERT INTO `leave_balances` VALUES (37, 27, 1, 8.000, '2023-10-09 09:17:38', '2023-10-09 09:17:38');
INSERT INTO `leave_balances` VALUES (38, 27, 2, 12.000, '2023-10-09 09:17:38', '2023-10-09 09:17:38');
INSERT INTO `leave_balances` VALUES (39, 27, 3, 14.000, '2023-10-09 09:17:38', '2023-10-09 09:17:38');
INSERT INTO `leave_balances` VALUES (40, 28, 1, 8.000, '2023-10-09 09:19:08', '2023-10-09 09:19:08');
INSERT INTO `leave_balances` VALUES (41, 28, 2, 12.000, '2023-10-09 09:19:08', '2023-10-09 09:19:08');
INSERT INTO `leave_balances` VALUES (42, 28, 3, 14.000, '2023-10-09 09:19:08', '2023-10-09 09:19:08');
INSERT INTO `leave_balances` VALUES (43, 29, 1, 8.000, '2023-10-09 09:20:23', '2023-10-09 09:20:23');
INSERT INTO `leave_balances` VALUES (44, 29, 2, 12.000, '2023-10-09 09:20:23', '2023-10-09 09:20:23');
INSERT INTO `leave_balances` VALUES (45, 29, 3, 14.000, '2023-10-09 09:20:23', '2023-10-09 09:20:23');
INSERT INTO `leave_balances` VALUES (46, 30, 1, 8.000, '2023-10-09 09:21:29', '2023-10-09 09:21:29');
INSERT INTO `leave_balances` VALUES (47, 30, 2, 12.000, '2023-10-09 09:21:29', '2023-10-09 09:21:29');
INSERT INTO `leave_balances` VALUES (48, 30, 3, 14.000, '2023-10-09 09:21:29', '2023-10-09 09:21:29');
INSERT INTO `leave_balances` VALUES (49, 31, 1, 8.000, '2023-10-09 09:22:17', '2023-10-09 09:22:17');
INSERT INTO `leave_balances` VALUES (50, 31, 2, 12.000, '2023-10-09 09:22:17', '2023-10-09 09:22:17');
INSERT INTO `leave_balances` VALUES (51, 31, 3, 14.000, '2023-10-09 09:22:17', '2023-10-09 09:22:17');
INSERT INTO `leave_balances` VALUES (52, 32, 1, 8.000, '2023-10-09 09:27:45', '2023-10-09 09:27:45');
INSERT INTO `leave_balances` VALUES (53, 32, 2, 12.000, '2023-10-09 09:27:45', '2023-10-09 09:27:45');
INSERT INTO `leave_balances` VALUES (54, 32, 3, 14.000, '2023-10-09 09:27:45', '2023-10-09 09:27:45');
INSERT INTO `leave_balances` VALUES (55, 33, 1, 8.000, '2023-10-09 09:29:46', '2023-10-09 09:29:46');
INSERT INTO `leave_balances` VALUES (56, 33, 2, 12.000, '2023-10-09 09:29:46', '2023-10-09 09:29:46');
INSERT INTO `leave_balances` VALUES (57, 33, 3, 14.000, '2023-10-09 09:29:46', '2023-10-09 09:29:46');
INSERT INTO `leave_balances` VALUES (58, 34, 1, 8.000, '2023-10-09 09:31:08', '2023-10-09 09:31:08');
INSERT INTO `leave_balances` VALUES (59, 34, 2, 12.000, '2023-10-09 09:31:08', '2023-10-09 09:31:08');
INSERT INTO `leave_balances` VALUES (60, 34, 3, 14.000, '2023-10-09 09:31:08', '2023-10-09 09:31:08');
INSERT INTO `leave_balances` VALUES (61, 35, 1, 8.000, '2023-10-09 09:32:25', '2023-10-09 09:32:25');
INSERT INTO `leave_balances` VALUES (62, 35, 2, 12.000, '2023-10-09 09:32:25', '2023-10-09 09:32:25');
INSERT INTO `leave_balances` VALUES (63, 35, 3, 14.000, '2023-10-09 09:32:25', '2023-10-09 09:32:25');

-- ----------------------------
-- Table structure for leave_types
-- ----------------------------
DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE `leave_types`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `count` bigint NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave_types
-- ----------------------------
INSERT INTO `leave_types` VALUES (1, 'Sick Leave', 8, '2023-10-03 11:21:12', '2023-10-03 11:23:20');
INSERT INTO `leave_types` VALUES (2, 'Casual Leave', 12, '2023-10-03 11:21:28', '2023-10-03 11:21:28');
INSERT INTO `leave_types` VALUES (3, 'Annual Leave', 14, '2023-10-03 11:21:42', '2023-10-03 11:21:42');
INSERT INTO `leave_types` VALUES (5, 'Short Leave', NULL, '2023-10-04 14:44:15', '2023-10-04 14:44:19');

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `media_uuid_unique`(`uuid`) USING BTREE,
  INDEX `media_model_type_model_id_index`(`model_type`, `model_id`) USING BTREE,
  INDEX `media_order_column_index`(`order_column`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES (1, 'App\\Models\\BenefitVerification', 8, 'b5f81955-8dc7-4bca-81b5-251cccaa9bf3', 'document', '650c617c56cfb_Screenshot 2023-08-30 174548', '650c617c56cfb_Screenshot-2023-08-30-174548.png', 'image/png', 'public', 'public', 30156, '[]', '[]', '[]', '[]', 1, '2023-09-21 15:30:15', '2023-09-21 15:30:15');
INSERT INTO `media` VALUES (2, 'App\\Models\\BenefitVerification', 6, 'e28ff96a-c393-43cc-a7ed-0fdaa2d75dff', 'document', '650c8286b32b6_Screenshot 2023-08-30 174548', '650c8286b32b6_Screenshot-2023-08-30-174548.png', 'image/png', 'public', 'public', 30156, '[]', '[]', '[]', '[]', 1, '2023-09-21 17:51:08', '2023-09-21 17:51:08');
INSERT INTO `media` VALUES (3, 'App\\Models\\BenefitVerification', 6, '8060d2fc-9a54-4ac1-a8a5-80ad8b3706ea', 'document', '650c8286e361e_Screenshot 2023-09-06 164605', '650c8286e361e_Screenshot-2023-09-06-164605.png', 'image/png', 'public', 'public', 103105, '[]', '[]', '[]', '[]', 2, '2023-09-21 17:51:08', '2023-09-21 17:51:08');
INSERT INTO `media` VALUES (4, 'App\\Models\\BenefitVerification', 7, 'ef7f59f4-3566-4d34-947e-875d24df5805', 'document', '650c82b2afd62_Screenshot 2023-09-06 192339', '650c82b2afd62_Screenshot-2023-09-06-192339.png', 'image/png', 'public', 'public', 240215, '[]', '[]', '[]', '[]', 1, '2023-09-21 17:51:47', '2023-09-21 17:51:47');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_08_28_150249_create_media_table', 2);
INSERT INTO `migrations` VALUES (7, '2023_09_05_104649_create_permission_tables', 3);
INSERT INTO `migrations` VALUES (8, '2023_09_08_144820_create_custom_forms_table', 4);
INSERT INTO `migrations` VALUES (9, '2023_09_08_145015_create_custom_form_values_table', 4);
INSERT INTO `migrations` VALUES (11, '2023_09_20_141153_create_comments_table', 5);
INSERT INTO `migrations` VALUES (12, '2023_09_27_105911_create_providers_table', 6);
INSERT INTO `migrations` VALUES (13, '2023_09_27_105922_create_specialty_table', 7);
INSERT INTO `migrations` VALUES (14, '2023_09_27_105922_create_specialties_table', 8);
INSERT INTO `migrations` VALUES (15, '2023_10_02_110340_create_employees_table', 9);
INSERT INTO `migrations` VALUES (16, '2023_10_03_084837_create_designations_table', 10);
INSERT INTO `migrations` VALUES (17, '2023_10_03_085205_create_departments_table', 10);
INSERT INTO `migrations` VALUES (18, '2023_11_07_115914_create_attendances_table', 11);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id`, `model_type`) USING BTREE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` VALUES (8, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 16);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 17);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 18);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 19);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 20);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 21);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 22);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 23);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 24);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 25);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 26);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 27);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 28);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 29);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 30);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 31);
INSERT INTO `model_has_roles` VALUES (9, 'App\\Models\\User', 32);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 33);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 34);
INSERT INTO `model_has_roles` VALUES (11, 'App\\Models\\User', 35);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name`, `guard_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (9, 'role-list', 'web', '2023-09-05 12:13:45', '2023-09-05 12:13:45');
INSERT INTO `permissions` VALUES (10, 'role-create', 'web', '2023-09-05 12:13:45', '2023-09-05 12:13:45');
INSERT INTO `permissions` VALUES (11, 'role-edit', 'web', '2023-09-05 12:13:45', '2023-09-05 12:13:45');
INSERT INTO `permissions` VALUES (12, 'role-delete', 'web', '2023-09-05 12:13:45', '2023-09-05 12:13:45');
INSERT INTO `permissions` VALUES (25, 'user-list', 'web', '2023-09-05 14:03:11', '2023-09-05 14:03:11');
INSERT INTO `permissions` VALUES (26, 'user-create', 'web', '2023-09-05 14:03:11', '2023-09-05 14:03:11');
INSERT INTO `permissions` VALUES (27, 'user-edit', 'web', '2023-09-05 14:03:11', '2023-09-05 14:03:11');
INSERT INTO `permissions` VALUES (28, 'user-delete', 'web', '2023-09-05 14:03:49', '2023-09-05 14:03:49');
INSERT INTO `permissions` VALUES (30, 'department-list', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (31, 'department-create', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (32, 'department-edit', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (33, 'department-delete', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (34, 'designation-list', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (35, 'designation-create', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (36, 'designation-edit', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (37, 'designation-delete', 'web', '2023-10-03 09:22:59', '2023-10-03 09:22:59');
INSERT INTO `permissions` VALUES (38, 'leave-type-list', 'web', '2023-10-03 11:03:52', '2023-10-03 11:03:52');
INSERT INTO `permissions` VALUES (39, 'leave-type-create', 'web', '2023-10-03 11:03:52', '2023-10-03 11:03:52');
INSERT INTO `permissions` VALUES (40, 'leave-type-edit', 'web', '2023-10-03 11:03:52', '2023-10-03 11:03:52');
INSERT INTO `permissions` VALUES (41, 'leave-type-delete', 'web', '2023-10-03 11:03:52', '2023-10-03 11:03:52');
INSERT INTO `permissions` VALUES (42, 'leave-application-list', 'web', '2023-10-03 12:10:27', '2023-10-03 12:10:27');
INSERT INTO `permissions` VALUES (43, 'leave-application-create', 'web', '2023-10-03 12:10:27', '2023-10-03 12:10:27');
INSERT INTO `permissions` VALUES (44, 'leave-application-edit', 'web', '2023-10-03 12:10:27', '2023-10-03 12:10:27');
INSERT INTO `permissions` VALUES (45, 'leave-application-delete', 'web', '2023-10-03 12:10:27', '2023-10-03 12:10:27');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (9, 2);
INSERT INTO `role_has_permissions` VALUES (10, 2);
INSERT INTO `role_has_permissions` VALUES (11, 2);
INSERT INTO `role_has_permissions` VALUES (12, 2);
INSERT INTO `role_has_permissions` VALUES (25, 2);
INSERT INTO `role_has_permissions` VALUES (26, 2);
INSERT INTO `role_has_permissions` VALUES (27, 2);
INSERT INTO `role_has_permissions` VALUES (28, 2);
INSERT INTO `role_has_permissions` VALUES (30, 2);
INSERT INTO `role_has_permissions` VALUES (31, 2);
INSERT INTO `role_has_permissions` VALUES (32, 2);
INSERT INTO `role_has_permissions` VALUES (33, 2);
INSERT INTO `role_has_permissions` VALUES (34, 2);
INSERT INTO `role_has_permissions` VALUES (35, 2);
INSERT INTO `role_has_permissions` VALUES (36, 2);
INSERT INTO `role_has_permissions` VALUES (37, 2);
INSERT INTO `role_has_permissions` VALUES (38, 2);
INSERT INTO `role_has_permissions` VALUES (39, 2);
INSERT INTO `role_has_permissions` VALUES (40, 2);
INSERT INTO `role_has_permissions` VALUES (41, 2);
INSERT INTO `role_has_permissions` VALUES (42, 2);
INSERT INTO `role_has_permissions` VALUES (43, 2);
INSERT INTO `role_has_permissions` VALUES (44, 2);
INSERT INTO `role_has_permissions` VALUES (45, 2);
INSERT INTO `role_has_permissions` VALUES (25, 8);
INSERT INTO `role_has_permissions` VALUES (27, 8);
INSERT INTO `role_has_permissions` VALUES (42, 8);
INSERT INTO `role_has_permissions` VALUES (43, 8);
INSERT INTO `role_has_permissions` VALUES (44, 8);
INSERT INTO `role_has_permissions` VALUES (25, 9);
INSERT INTO `role_has_permissions` VALUES (27, 9);
INSERT INTO `role_has_permissions` VALUES (42, 9);
INSERT INTO `role_has_permissions` VALUES (43, 9);
INSERT INTO `role_has_permissions` VALUES (25, 11);
INSERT INTO `role_has_permissions` VALUES (27, 11);
INSERT INTO `role_has_permissions` VALUES (42, 11);
INSERT INTO `role_has_permissions` VALUES (43, 11);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name`, `guard_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (2, 'admin', 'web', '2023-09-05 17:14:13', '2023-09-05 17:14:13');
INSERT INTO `roles` VALUES (8, 'manager', 'web', '2023-10-02 12:53:04', '2023-10-02 12:54:13');
INSERT INTO `roles` VALUES (9, 'teamlead', 'web', '2023-10-02 12:53:21', '2023-10-02 12:54:22');
INSERT INTO `roles` VALUES (11, 'employee', 'web', '2023-10-02 13:54:56', '2023-10-02 13:54:56');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `manager_id` bigint NULL DEFAULT NULL,
  `teamlead_id` bigint NULL DEFAULT NULL,
  `designation_id` bigint NULL DEFAULT NULL,
  `department_id` bigint NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `ac_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'admin', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, '$2y$10$Fb1jFv86/i8zrdwQIWE24.JPratwS2bs7p4B0C986ivB0vH3S/czq', NULL, '2023-09-05 17:14:13', '2023-09-05 17:14:13', '');
INSERT INTO `users` VALUES (15, 'Bilal Umer', 'bilal@cyber-imaging.com', NULL, NULL, NULL, 1, 8, '$2y$10$UjxFgZ84wNh6cTfoDwjdBeEyBXsbMqHIs7GdL4l1Du4VR15afHqjq', NULL, '2023-10-03 13:47:41', '2023-10-03 13:47:41', '');
INSERT INTO `users` VALUES (16, 'Aziz Ur Rehman', 'aziz@cyber-imaging.com', NULL, 15, NULL, 2, 1, '$2y$10$iH/OwHQqFROdLML/st9ptuKRj2eST6zIJ6cWEGfRxie6Jc/sXvjXa', NULL, '2023-10-03 13:48:47', '2023-10-03 13:48:47', '');
INSERT INTO `users` VALUES (17, 'Zeeshan Ashraf', 'zeeshan@ajtechgroup.com', NULL, 15, 16, 3, 1, '$2y$10$vToYwv/KEYRHSnvRTdndyeSMZu2geb6imIFU3gVRK4iSzFDW0zDpi', NULL, '2023-10-03 13:49:48', '2023-11-08 14:55:17', '75');
INSERT INTO `users` VALUES (18, 'Atiq Ur Rehman', 'atiq@cyber-imaging.com', NULL, 15, 16, 4, 1, '$2y$10$PzzhNt.WZyekZD9rUOU6QuLtPOWEqw3c4mNRrhZce5XrUWYEq2ivu', NULL, '2023-10-03 14:50:31', '2023-11-08 11:15:52', '5');
INSERT INTO `users` VALUES (19, 'Babar Nisar', 'babar@ajtechgroup.com', NULL, 15, NULL, 13, 5, '$2y$10$RZ6VJIQwmjpuFkJBw4HkjOACxuCYLnxILZ0wDnl9YMIkFGFYyvRAe', NULL, '2023-10-03 14:55:43', '2023-10-09 08:57:51', '');
INSERT INTO `users` VALUES (20, 'Muhammad Waleed Ahsan Khan', 'waleed.ahsan@ajtechgroup.com', NULL, 15, 19, 14, 5, '$2y$10$ELzvMN5E3bp1Mf26GiyKVe5/gBi7Q4iungzRcjr0DMLyMABkwUmeW', NULL, '2023-10-03 14:57:53', '2023-10-09 09:34:12', '');
INSERT INTO `users` VALUES (21, 'Muhammad Imran', 'imranali@cyber-imaging.com', NULL, 15, 16, 3, 1, '$2y$10$HpyxclL.elMEop6VmTs1gepW7xthQeG/KvpVQe1U6yVIKHrpZOYXq', NULL, '2023-10-09 09:03:45', '2023-10-09 09:03:45', '');
INSERT INTO `users` VALUES (22, 'Saad Zaheer', 'saad@cyber-imaging.com', NULL, 15, 16, 5, 1, '$2y$10$FPZYyHvYhMtY7SiAD6oPMO6UfHoLvqTKUT/BLvlMOrFGyUNOAdFmm', NULL, '2023-10-09 09:11:18', '2023-10-09 09:11:18', '');
INSERT INTO `users` VALUES (23, 'Rizwan Rasheed', 'rizwan@cyber-imaging.com', NULL, 15, 16, 5, 1, '$2y$10$mSKDtIkk1VkM.wleZ0Lgn.uowIjYgYpPQeEwOMNy7bIg4I8.44N3S', NULL, '2023-10-09 09:12:33', '2023-10-09 09:12:33', '');
INSERT INTO `users` VALUES (24, 'Amir Butt', 'michael@eyeweb.com', NULL, 15, NULL, 8, 2, '$2y$10$xZ.1WeS.5mdjjiwzYMif9.7EMTz.9YmQLqUyJ/NSWQFbsPQbVGwe6', NULL, '2023-10-09 09:14:03', '2023-10-09 11:10:53', '');
INSERT INTO `users` VALUES (25, 'Tuba Saeed', 'sarah.clarke@eyeweb.com', NULL, 15, 24, 8, 2, '$2y$10$u/4XQe7JzZpIGj8mSfMnm.TBntN1KuDT5zTlWnnXZ42TW4OTguXbi', NULL, '2023-10-09 09:15:01', '2023-10-09 09:15:01', '');
INSERT INTO `users` VALUES (26, 'Umer Saeed', 'tim.foster@eyeweb.com', NULL, 15, 24, 8, 2, '$2y$10$UwMpjJl2n/nSox3noYSaWO803LIcVDq8hluLUlEzYOb/OvCW.J05S', NULL, '2023-10-09 09:16:44', '2023-10-09 09:16:44', '');
INSERT INTO `users` VALUES (27, 'Ahmed Hassan', 'ryan.anderson@eyeweb.com', NULL, 15, 24, 8, 2, '$2y$10$RLjn/6yy1k71ZLSsxFR8Eu8GxVdQkMeQeqTR.GMlFW77wLBP2sSoS', NULL, '2023-10-09 09:17:38', '2023-10-09 09:17:38', '');
INSERT INTO `users` VALUES (28, 'Rehan Mehmood', 'rehan.mahmood@eyeweb.com', NULL, 15, NULL, 9, 3, '$2y$10$e57GGmWCM7OJVDb3UQz1uOEFjLy3vvR4VViKlTnrU3/WrI3KQUuFG', NULL, '2023-10-09 09:19:08', '2023-10-09 11:11:15', '');
INSERT INTO `users` VALUES (29, 'Zohaib Ahmed', 'zohaib.ali@eyeweb.com', NULL, 15, 28, 9, 3, '$2y$10$SaTgpCPjqW5QVghipFshyeIzhKYRY2hLqHoHvr29Fo53YGFw1Ra3.', NULL, '2023-10-09 09:20:23', '2023-10-09 09:20:23', '');
INSERT INTO `users` VALUES (30, 'Arsalan Liaqat', 'arslan.liaqat@eyeweb.com', NULL, 15, 28, 9, 3, '$2y$10$AmydWe9BRjgXOtMYy5YT.etFNLhHorDZpRBdmVrNLxg5IhIPEun4G', NULL, '2023-10-09 09:21:29', '2023-10-09 09:21:29', '');
INSERT INTO `users` VALUES (31, 'Mustafa Awan', 'ahsan@eyeweb.com', NULL, 15, 28, 9, 3, '$2y$10$/UtQwzZ2abLOIYzR9xyJKunVnZIDt5.RqUWzye7NOiqHX96zWlB2K', NULL, '2023-10-09 09:22:17', '2023-10-09 09:22:17', '');
INSERT INTO `users` VALUES (32, 'Shahraz Khan', 'shahraz@eyeweb.com', NULL, 15, NULL, 10, 4, '$2y$10$.bcS8ixkDOrkcERdsv473eAV1kpofpI88vPK2Rgfbq.xOUeZlFIoS', NULL, '2023-10-09 09:27:45', '2023-10-09 11:11:33', '');
INSERT INTO `users` VALUES (33, 'Kubra Khan', 'kubrakhan321@gmail.com', NULL, 15, 32, 11, 4, '$2y$10$TLpq8yD4EDcVqYUO4EWpNeJBNbThDusnmoJBggfYf.KAlGnXXy8SW', NULL, '2023-10-09 09:29:46', '2023-10-09 09:29:46', '');
INSERT INTO `users` VALUES (34, 'Kanza eeman', 'kanza@cyber-imaging.com', NULL, 15, 32, 11, 4, '$2y$10$qcITFRlfHlOlv.T6Aby6FO3bQvrSlJHe5sRyeYftK..Lnh7hQIy6y', NULL, '2023-10-09 09:31:08', '2023-10-09 09:31:08', '');
INSERT INTO `users` VALUES (35, 'Wajahat Ali', 'wajahat@cyber-imaging.com', NULL, 15, 32, 12, 4, '$2y$10$p9kyXRjme2P3XHT0BV3w/.wNVKFMuwOISqljHEfEdRRN.Du7hQeFe', NULL, '2023-10-09 09:32:24', '2023-10-09 09:32:25', '');

SET FOREIGN_KEY_CHECKS = 1;
