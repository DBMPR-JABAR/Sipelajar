/*
 Navicat Premium Data Transfer

 Source Server         : MySQLLocal
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : teman_jabar

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 02/12/2020 20:35:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for master_ruas_jalan
-- ----------------------------
DROP TABLE IF EXISTS `master_ruas_jalan`;
CREATE TABLE `master_ruas_jalan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruas_jalan` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_ruas_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `panjang` decimal(10, 2) NOT NULL,
  `sta_awal` float NOT NULL,
  `sta_akhir` float NOT NULL,
  `lat_awal` float NOT NULL,
  `long_awal` float NOT NULL,
  `lat_akhir` float NOT NULL,
  `long_akhir` float NOT NULL,
  `uptd_id` int(11) NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_ruas_jalan
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;