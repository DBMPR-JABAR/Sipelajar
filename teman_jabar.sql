/*
 Navicat Premium Data Transfer

 Source Server         : DataLive
 Source Server Type    : MySQL
 Source Server Version : 100325
 Source Host           : 192.168.0.112:3306
 Source Schema         : teman_jabar

 Target Server Type    : MySQL
 Target Server Version : 100325
 File Encoding         : 65001

 Date: 19/01/2021 14:41:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aduan
-- ----------------------------
DROP TABLE IF EXISTS `aduan`;
CREATE TABLE `aduan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruas_jalan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lng` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `permasalahan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_awal` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uptd_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aduan
-- ----------------------------
INSERT INTO `aduan` VALUES (1, '2020-12-08', 'namates', '123123', 'jl. mega', '08123123', 'asd@mail.com', 'Pilih Ruas Jalan', '123', '123', 'sakit', 'landing/202101040825521._denpasar-buleleng._p_n_g', 'menunggu', 1);

-- ----------------------------
-- Table structure for bahan_material
-- ----------------------------
DROP TABLE IF EXISTS `bahan_material`;
CREATE TABLE `bahan_material`  (
  `id_pek` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_mandor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `rule` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan1` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan2` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan3` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan4` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan4` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan4` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan5` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan5` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan5` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan6` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan6` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan6` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan7` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan7` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan7` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan8` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan8` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan8` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan9` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan9` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan9` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan10` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan10` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan10` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan11` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan11` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan11` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan12` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan12` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan12` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan13` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan13` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan13` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan14` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan14` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan14` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bahan15` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jum_bahan15` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan15` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uptd_id` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pek`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bahan_material
-- ----------------------------

-- ----------------------------
-- Table structure for cctv
-- ----------------------------
DROP TABLE IF EXISTS `cctv`;
CREATE TABLE `cctv`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `long` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `enable_vehicle_counting` tinyint(4) NULL DEFAULT 0,
  `sup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uptd_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cctv
-- ----------------------------
INSERT INTO `cctv` VALUES (4, 'SP Gedebage', '-6.93703', '107.692679', 'http://45.118.114.26:80/camera/Gedebage.m3u8', 'CCTV SP Gedebage', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (5, 'SP Buahbatu', '-6.948012', '107.633519', 'http://45.118.114.26:80/camera/Buahbatu.m3u8', 'CCTV SP Buahbatu', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (6, 'SP Batununggal', '-6.949489', '107.626006', 'http://45.118.114.26:80/camera/Batununggal.m3u8', 'CCTV SP Batununggal', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (7, 'SP Moch. Toha', '-6.948338', '107.609389', 'http://45.118.114.26:80/camera/MochToha.m3u8', 'CCTV SP Moch. Toha', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (8, 'SP Inhopteng', '-6.947878', '107.602571', NULL, 'CCTV SP Inhopteng', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (9, 'SP Cibaduyut', '-6.94728', '107.595227', 'http://45.118.114.26:80/camera/Cibaduyut.m3u8', 'CCTV SP Cibaduyut', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (10, 'SP Kopo', '-6.945582', '107.58961', 'http://45.118.114.26:80/camera/Kopo.m3u8', 'CCTV SP Kopo', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (11, 'SP Pasar Caringin', '-6.94311', '107.584429', 'http://45.118.114.26:80/camera/PasarCaringin.m3u8', 'CCTV SP Pasar Caringin', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (12, 'SP Pasir Koja', '-6.930429', '107.576033', 'http://45.118.114.26:80/camera/PasirKoja.m3u8', 'CCTV SP Pasir Koja', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (13, 'SP Cibeureum', '-6.917283', '107.574366', 'http://45.118.114.26:80/camera/Cibeureum.m3u8', 'CCTV SP Cibeureum', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (14, 'SP Jamika', '-6.918823', '107.586506', 'http://45.118.114.26:80/camera/Jamika.m3u8', 'CCTV SP Jamika', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (15, 'SP Gardujati', '-6.920126', '107.598345', 'http://45.118.114.26:80/camera/Gardujati.m3u8', 'CCTV SP Gardujati', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (16, 'SP Otista', '-6.920816', '107.604102', 'http://45.118.114.26:80/camera/Otista.m3u8', 'CCTV SP Otista', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (17, 'SP Tamblong', '-6.921806', '107.611913', 'http://45.118.114.26:80/camera/Tamblong.m3u8', 'CCTV SP Tamblong', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (18, 'SP S Lima', '-6.922399', '107.617551', 'http://45.118.114.26:80/camera/SimpangLima.m3u8', 'CCTV SP S Lima', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (19, 'SP Gudang Utara', '-6.917192', '107.627341', 'http://45.118.114.26:80/camera/GudangUtara.m3u8', 'CCTV SP Gudang Utara', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (20, 'SP A Yani Laswi', '-6.915761', '107.629992', NULL, 'CCTV SP A Yani Laswi', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (21, 'SP A Yani Supratman', '-6.913462', '107.634428', 'http://45.118.114.26:80/camera/Supratman.m3u8', 'CCTV SP A Yani Supratman', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (22, 'SP Tol Pasteur', '-6.892164', '107.581369', 'http://45.118.114.26:80/camera/TolPasteur.m3u8', 'CCTV SP Tol Pasteur', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (23, 'SP Pasir Kaliki', '-6.900283', '107.597443', 'http://45.118.114.26:80/camera/PasirKalikiIP.m3u8', 'CCTV SP Pasir Kaliki', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (24, 'SP Cipaganti', '-6.900291', '107.602294', 'http://45.118.114.26:80/camera/Cipaganti.m3u8', 'CCTV SP Cipaganti', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (25, 'SP Cihampelas', '-6.900245', '107.604242', 'http://45.118.114.26:80/camera/CihampelasPTZ.m3u8', 'CCTV SP Cihampelas', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (26, 'SP Tamansari', '-6.898188', '107.609552', 'http://45.118.114.26:80/camera/Tamansari.m3u8', 'CCTV SP Tamansari', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (27, 'SP Pahlawan', '-6.897706', '107.634387', 'http://45.118.114.26:80/camera/Pahlawan.m3u8', 'Perepatan Jl Pahlawan', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (28, 'SP MALABAR - GATSU', '-6.923789', '107.624261', 'http://45.118.114.26:80/camera/RamdanBkrBarat.m3u8', 'SP MALABAR - GATSU', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (29, 'SP Cikapayang', '-6.898954', '107.61269', 'http://45.118.114.26:80/camera/CikapayangSelatan.m3u8', 'CCTV SP Cikapayang', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (30, 'SP Sulanjana', '-6.900167', '107.612536', 'http://45.118.114.26:80/camera/Sulanjana.m3u8', 'CCTV SP Sulanjana', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (31, 'SP Merdeka Juanda', '-6.907004', '107.610599', 'http://45.118.114.26:80/camera/MerdekaJuanda.m3u8', 'CCTV SP Merdeka Juanda', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (32, 'SP Telkom', '-6.899543', '107.627126', 'http://45.118.114.26:80/camera/Telkom.m3u8', 'CCTV SP Telkom', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (33, 'SP Trunojoyo', '-6.906969', '107.612732', 'http://45.118.114.26:80/camera/Trunojoyo.m3u8', 'CCTV SP Trunojoyo', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (34, 'SP Banda', '-6.906133', '107.616826', 'http://45.118.114.26:80/camera/Banda.m3u8', 'CCTV SP Banda', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (35, 'SP Lombok', '-6.905945', '107.621375', 'http://45.118.114.26:80/camera/Lombok.m3u8', 'CCTV SP Lombok', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (36, 'SP Cihapit', '-6.907493', '107.623308', 'http://45.118.114.26:80/camera/Cihapit.m3u8', 'CCTV SP Cihapit', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (37, 'SP Aceh', '-6.910156', '107.626138', 'http://45.118.114.26:80/camera/Aceh.m3u8', 'CCTV SP Aceh', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (38, 'SP Anggrek', '-6.912698', '107.628617', 'http://45.118.114.26:80/camera/Anggrek.m3u8', 'CCTV SP Anggrek', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (39, 'SP Cikutra', '-6.899872', '107.643426', 'http://45.118.114.26:80/camera/Cikutra.m3u8', 'CCTV SP Cikutra', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (40, 'SP Cimuncang', '-6.901719', '107.649846', 'http://45.118.114.26:80/camera/Cimuncang.m3u8', 'CCTV SP Cimuncang', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (41, 'SP Padasuka', '-6.901942', '107.65357', 'http://45.118.114.26:80/camera/Padasuka.m3u8', 'CCTV SP Padasuka', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (42, 'SP Cicaheum', '-6.902065', '107.655038', 'http://45.118.114.26:80/camera/Cicaheum.m3u8', 'CCTV SP Cicaheum', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (43, 'SP Ujung Berung', '-6.914055', '107.69941', NULL, 'CCTV SP Ujung Berung', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (44, 'Ruas Trunojoyo - Banda (PTZ - Depan Limijati', '-6.906543', '107.613766', 'http://45.118.114.26:80/camera/Ruastrunojoyo.m3u8', 'CCTV Ruas Trunojoyo - Banda (PTZ - Depan Limijati', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (45, 'Ruas banda - Trunojoyo (Fixed - Depan The Crown)', '-6.906397', '107.615268', NULL, 'CCTV Ruas banda - Trunojoyo (Fixed - Depan The Crown)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (46, 'Ruas Banda - Istiqomah (PTZ - Seberang TarBak Kejaksaan)', '-6.90608', '107.618608', NULL, 'CCTV Ruas Banda - Istiqomah (PTZ - Seberang TarBak Kejaksaan)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (47, 'Ruas Istiqomah - Banda (Fixed - Depan BRI)', '-6.905796', '107.620593', NULL, 'CCTV Ruas Istiqomah - Banda (Fixed - Depan BRI)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (48, 'Ruas Istiqomah - Cihapit (Fixed - Seberang Pengadilan Negeri)', '-6.906469', '107.622321', NULL, 'CCTV Ruas Istiqomah - Cihapit (Fixed - Seberang Pengadilan Negeri)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (49, 'Ruas Taman Pramuka - Cihapit (Fixed - Depan Gourmet)', '-6.908344', '107.624413', 'http://45.118.114.26:80/camera/Ruaspramukacihapit.m3u8', 'CCTV Ruas Taman Pramuka - Cihapit (Fixed - Depan Gourmet)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (50, 'Ruas Cihapit Taman Pramuka (Fixed - Seberang BJB LIA)', '-6.908344', '107.624413', NULL, 'CCTV Ruas Cihapit Taman Pramuka (Fixed - Seberang BJB LIA)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (51, 'Ruas Anggrek (Fixed - Depan Disparbud)', '-6.913178', '107.629022', 'http://45.118.114.26:80/camera/Ruasanggrek.m3u8', 'CCTV Ruas Anggrek (Fixed - Depan Disparbud)', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (52, 'Ruas Sudirman - Otista', '-6.920567', '107.602618', 'http://45.118.114.26:80/camera/Ruasotista.m3u8', 'CCTV Ruas Sudirman - Otista', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (53, 'Ruas Sudirman - Gardujati', '-6.92015', '107.599097', 'http://45.118.114.26:80/camera/Ruasgardujati.m3u8', 'CCTV Ruas Sudirman - Gardujati', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (54, 'SP Lingkar - Gatsu', '-6.924541', '107.627712', NULL, 'CCTV SP Lingkar - Gatsu', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (55, 'SP Lingkar - Talaga Bodas', '-6.929531', '107.62647', 'http://45.118.114.26:80/camera/Samsat.m3u8', 'CCTV SP Lingkar - Talaga Bodas', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (56, 'SP Lingkar - Marta Negara', '-6.932602', '107.625751', 'http://45.118.114.26:80/camera/UtaraLaswi.m3u8', 'CCTV SP Lingkar - Marta Negara', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (57, 'SP Lingkar - Buah Batu', '-6.936933', '107.622727', NULL, 'CCTV SP Lingkar - Buah Batu', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (58, 'SP Lingkar - Sriwijaya', '-6.93789', '107.612768', NULL, 'CCTV SP Lingkar - Sriwijaya', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (59, 'SP Lingkar - M Ramdan', '-6.937607', '107.609122', NULL, 'CCTV SP Lingkar - M Ramdan', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (60, 'SP BKR - M Toha', '-6.937506', '107.606205', NULL, 'CCTV SP BKR - M Toha', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);
INSERT INTO `cctv` VALUES (61, 'SP BKR - Otista', '-6.937332', '107.603032', NULL, 'CCTV SP BKR - Otista', NULL, NULL, 0, 'SUP KOTA BANDUNG', 3);

-- ----------------------------
-- Table structure for disposisi
-- ----------------------------
DROP TABLE IF EXISTS `disposisi`;
CREATE TABLE `disposisi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disposisi_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dari` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `perihal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `no_surat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_penyelesaian` datetime(0) NOT NULL,
  `status` int(11) NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_disposisi` int(11) NULL DEFAULT NULL,
  `created_date` datetime(0) NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi
-- ----------------------------
INSERT INTO `disposisi` VALUES (4, '201205', 'Sekretariat Daerah Pemrov Jabar', 'Surat Pemberitahuan', '2020-12-01', '187/UP.03.14.01/BUD', '2020-12-23 00:00:00', 1, 'disposisi/20201204094313/2020-12-01/_p_r_o_l_o_g_e_x_e_r_c_i_s_e1.docx', NULL, '2020-12-04 09:43:13', '1', NULL, NULL);

-- ----------------------------
-- Table structure for disposisi_approved
-- ----------------------------
DROP TABLE IF EXISTS `disposisi_approved`;
CREATE TABLE `disposisi_approved`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disposisi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi_approved
-- ----------------------------

-- ----------------------------
-- Table structure for disposisi_history
-- ----------------------------
DROP TABLE IF EXISTS `disposisi_history`;
CREATE TABLE `disposisi_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `disposisi_id` int(11) NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi_history
-- ----------------------------

-- ----------------------------
-- Table structure for disposisi_jenis_instruksi
-- ----------------------------
DROP TABLE IF EXISTS `disposisi_jenis_instruksi`;
CREATE TABLE `disposisi_jenis_instruksi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disposisi_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `disposisi_instruksi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi_jenis_instruksi
-- ----------------------------
INSERT INTO `disposisi_jenis_instruksi` VALUES (1, '201205', 2);
INSERT INTO `disposisi_jenis_instruksi` VALUES (2, '201205', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (3, '2012055', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (4, '2012066', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (5, '2012067', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (6, '2012068', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (7, '2012069', 3);
INSERT INTO `disposisi_jenis_instruksi` VALUES (8, '20121310', 1);

-- ----------------------------
-- Table structure for disposisi_penanggung_jawab
-- ----------------------------
DROP TABLE IF EXISTS `disposisi_penanggung_jawab`;
CREATE TABLE `disposisi_penanggung_jawab`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disposisi_code` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `pemberi_disposisi` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi_penanggung_jawab
-- ----------------------------
INSERT INTO `disposisi_penanggung_jawab` VALUES (6, 201205, 3, NULL, NULL, 0, 0);
INSERT INTO `disposisi_penanggung_jawab` VALUES (7, 201205, 4, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for disposisi_tindak_lanjut
-- ----------------------------
DROP TABLE IF EXISTS `disposisi_tindak_lanjut`;
CREATE TABLE `disposisi_tindak_lanjut`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disposisi_id` int(11) NOT NULL,
  `tindak_lanjut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `persentase` int(11) NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_date` datetime(0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disposisi_tindak_lanjut
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for icon_titik_rawan_bencana
-- ----------------------------
DROP TABLE IF EXISTS `icon_titik_rawan_bencana`;
CREATE TABLE `icon_titik_rawan_bencana`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of icon_titik_rawan_bencana
-- ----------------------------
INSERT INTO `icon_titik_rawan_bencana` VALUES (1, 'Bahu Jalan Rusak', 'http://103.131.0.197/storage/rawanbencana/icon20210103101912_bahu_jalan_rusak.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (2, 'Bahu Jalan Longsor', 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (3, 'Longsoran', 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (4, 'Rawan Amblas', 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (5, 'Rawan Banjir', 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (6, 'Rawan Begal', 'http://103.131.0.197/storage/rawanbencana/icon20210102114548_rawan_begal.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (7, 'Rawan Longsor', 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif');
INSERT INTO `icon_titik_rawan_bencana` VALUES (8, 'Sebagian Badan Jalan Longsor', 'http://103.131.0.197/storage/rawanbencana/icon20210103103947_sebagian_badan_jalan_longsor.gif');

-- ----------------------------
-- Table structure for item_bahan
-- ----------------------------
DROP TABLE IF EXISTS `item_bahan`;
CREATE TABLE `item_bahan`  (
  `no` int(3) NOT NULL AUTO_INCREMENT,
  `nama_item` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_bahan
-- ----------------------------
INSERT INTO `item_bahan` VALUES (1, 'Agregat Kelas A', 'M3');
INSERT INTO `item_bahan` VALUES (2, 'Emulsi', 'Ltr');
INSERT INTO `item_bahan` VALUES (3, 'Material Hotmix', 'Ton');
INSERT INTO `item_bahan` VALUES (4, 'Gorong-gorong', 'M1');
INSERT INTO `item_bahan` VALUES (5, 'Batu Pecah 5-7 cm', 'M3');
INSERT INTO `item_bahan` VALUES (6, 'Batu Pecah 3-5 cm', 'M3');
INSERT INTO `item_bahan` VALUES (7, 'Batu Pecah 1-2 cm', 'M3');
INSERT INTO `item_bahan` VALUES (8, 'Abu batu', 'M3');
INSERT INTO `item_bahan` VALUES (9, 'Batu Belah', 'M3');
INSERT INTO `item_bahan` VALUES (10, 'Pasir Urug', 'M3');
INSERT INTO `item_bahan` VALUES (11, 'Aspal Minyak', 'Drum');
INSERT INTO `item_bahan` VALUES (12, 'Kayu bakar', 'M3');
INSERT INTO `item_bahan` VALUES (13, 'Screening', 'M3');
INSERT INTO `item_bahan` VALUES (14, 'Bibit Pohon', 'Btg');
INSERT INTO `item_bahan` VALUES (15, 'Semen PC', 'Zak');
INSERT INTO `item_bahan` VALUES (16, 'Cat', 'Kg');
INSERT INTO `item_bahan` VALUES (17, 'Thiner', 'Ltr');

-- ----------------------------
-- Table structure for item_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `item_pekerjaan`;
CREATE TABLE `item_pekerjaan`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `nama_item` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_pekerjaan
-- ----------------------------

-- ----------------------------
-- Table structure for item_satuan
-- ----------------------------
DROP TABLE IF EXISTS `item_satuan`;
CREATE TABLE `item_satuan`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_satuan
-- ----------------------------
INSERT INTO `item_satuan` VALUES (1, 'Ltr');
INSERT INTO `item_satuan` VALUES (2, 'M3');
INSERT INTO `item_satuan` VALUES (3, 'Kg');
INSERT INTO `item_satuan` VALUES (4, 'TON');
INSERT INTO `item_satuan` VALUES (5, 'Zak');
INSERT INTO `item_satuan` VALUES (6, 'M1');
INSERT INTO `item_satuan` VALUES (7, 'Drum');
INSERT INTO `item_satuan` VALUES (8, 'Btg');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kemandoran
-- ----------------------------
DROP TABLE IF EXISTS `kemandoran`;
CREATE TABLE `kemandoran`  (
  `id_pek` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `nama_mandor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruas_jalan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paket` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `panjang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `peralatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jumlah_pekerja` int(11) NOT NULL,
  `foto_awal` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_sedang` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_akhir` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tglreal` datetime(0) NOT NULL,
  `id_session` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ket` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat` float(10, 6) NOT NULL,
  `lng` float(10, 6) NOT NULL,
  `video` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_spp` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `kategori` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rule` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uptd_id` int(11) NOT NULL,
  PRIMARY KEY (`id_pek`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kemandoran
-- ----------------------------
INSERT INTO `kemandoran` VALUES ('CK-000001', '2019-03-11', 'Udin Koni', 'SUP3', 'Sagaranten - Tegalbuleud', 'Tambal Sulam Hotmix', '', '', '', 'Dump Truck, Pemadat', 5, '2803201923395719-1.jpg', '2803201923395719-2.jpg', '2803201923395719-3.jpg', '2019-03-29 06:39:57', '', '', -7.018569, 106.953575, '', 'pekerjaan/202012040843228-1603341286-ini_foto_kita.pdf', '1', 0, 'r3', 'KAUPTD', 0);
INSERT INTO `kemandoran` VALUES ('CK-000002', '2019-03-26', 'Ohim', 'SUP3', 'Sagaranten - Tegalbuleud', 'Tambal Sulam Hotmix', '', '123', '', 'Dump Truck', 5, '2803201923442219-1.jpg', '2803201923442219-2.jpg', '2803201923442219-3.jpg', '2019-03-29 06:44:22', '', '', -7.218633, 106.849075, '', '', '', 0, 'r3', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000003', '2019-03-29', 'mamat', 'SUP3', 'Sagaranten - Tegalbuleud', 'Perawatan Damija', '', '', '', '', 5, '280320192346061-1.jpg', '280320192346061-2.jpg', '280320192346061-3.jpg', '2019-03-29 06:46:06', '', '', -7.220975, 106.845474, '', '', '', 0, 'r3', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000004', '2019-03-26', 'asep mudrikah', 'SUP2', 'Jl. Cikembar - Jampang Tengah', 'Tambal Sulam Hotmix', '', 'KM 123', '12', 'Dump Truck, Pemadat', 5, '29032019014343IMG-20180705-WA0000.jpg', '29032019014343IMG-20180705-WA0001.jpg', '29032019014343IMG-20180705-WA0002.jpg', '2019-03-29 08:43:43', '', '', -7.038897, 106.804405, '', '', '', 0, 'r2', 'KSUP', 0);
INSERT INTO `kemandoran` VALUES ('CK-000005', '2019-03-27', 'Ohim', 'SUP2', 'Jampang Tengah - Kiaradua', 'Tambal Sulam Hotmix', '', 'km111', '12', 'Dump Truck, Pemadat', 5, '29032019014825IMG-20180705-WA0032.jpg', '29032019014825IMG-20180705-WA0033.jpg', '29032019014825IMG-20180705-WA0031.jpg', '2019-03-29 08:48:25', '', '', -7.064328, 106.790520, '', '', '', 0, 'r2', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000006', '2019-03-30', 'Maman', 'SUP1', 'Jl. Sejahtera', 'Tambal Sulam Hotmix', '', '', '', 'Dump Truck, Pemadat', 5, '29032019015247IMG-20180705-WA0034.jpg', '29032019015247IMG-20180705-WA0036.jpg', '29032019015247IMG-20180705-WA0035.jpg', '2019-03-29 08:52:47', '', '', -6.946216, 106.911560, '', '', '', 0, 'r1', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000007', '2019-03-18', 'ridwan', 'SUP4', 'Waluran - Mareleng - Palangpang', 'Tambal Sulam Hotmix', '', '', '', 'Dump Truck, Pemadat', 5, '29032019065724IMG-20180705-WA0009.jpg', '29032019065724IMG-20180705-WA0010.jpg', '29032019065724IMG-20180705-WA0011.jpg', '2019-03-29 13:57:24', '', '', -7.252264, 106.551743, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000008', '2019-03-11', 'Aef', 'SUP4', 'Sp. Surade - Ujunggenteng', 'Tambal Sulam Hotmix', '', '', '', 'Dump Truck, Pemadat', 5, '29032019070101IMG-20180705-WA0000.jpg', '29032019070101IMG-20180705-WA0001.jpg', '29032019070101IMG-20180705-WA0002.jpg', '2019-03-29 14:01:01', '', '', -7.354167, 106.429886, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000009', '2019-03-29', 'Maman', 'SUP1', 'Balewer - Puncak Darma', 'Lain-Lain', '', 'Jl. Harapan Bangsa', '10', 'Pacul', 4, '', '', '', '2019-03-29 15:08:01', '', '', -6.375805, 106.974174, '', '', '', 0, 'r1', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000010', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+800', '0', 'Leker singkup cangkul garpuh', 6, 'APK_0_25042019105426IMG-20190425-WA0032.jpg', 'APK_50_25042019105426IMG-20190425-WA0033.jpg', 'APK_100_25042019105426IMG-20190425-WA0035.jpg', '2019-04-25 17:57:33', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000011', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+770', '0', 'Leker cangkul singkup', 6, 'APK_0_25042019105711IMG-20190425-WA0027.jpg', 'APK_50_25042019105711IMG-20190425-WA0029.jpg', 'APK_100_25042019105711IMG-20190425-WA0031.jpg', '2019-04-25 17:57:11', '', '', -1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000012', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+850', '0', 'Leker singkup cangkul', 6, 'APK_0_25042019105949IMG-20190425-WA0036.jpg', 'APK_50_25042019105949IMG-20190425-WA0038.jpg', 'APK_100_25042019105949IMG-20190425-WA0039.jpg', '2019-04-25 17:59:49', '', '', 1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000013', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+870', '0', 'Leker singkup cangkul', 6, 'APK_0_25042019110218IMG-20190425-WA0040.jpg', 'APK_50_25042019110218IMG-20190425-WA0041.jpg', 'APK_100_25042019110218IMG-20190425-WA0043.jpg', '2019-04-25 18:02:18', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000014', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+900', '0', 'Leker singkup cangkul', 6, 'APK_0_25042019110441IMG-20190425-WA0044.jpg', 'APK_50_25042019110441IMG-20190425-WA0045.jpg', 'APK_100_25042019110441IMG-20190425-WA0047.jpg', '2019-04-25 18:04:41', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000015', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+950', '0', 'Leker sibgkup cangkul', 6, 'APK_0_25042019110740IMG-20190425-WA0048.jpg', 'APK_50_25042019110740IMG-20190425-WA0049.jpg', 'APK_100_25042019110740IMG-20190425-WA0052.jpg', '2019-04-25 18:07:40', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000016', '2019-04-25', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Perawatan Damija', '', '214+900 - 215+150', '250', 'Cangkul parang roda', 0, 'APK_0_25042019111003IMG-20190424-WA0174.jpg', 'APK_50_25042019111003IMG-20190424-WA0176.jpg', 'APK_100_25042019111003IMG-20190424-WA0177.jpg', '2019-04-25 18:10:03', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000017', '2019-04-25', 'Aef', 'SUP4', 'Surade - Ujung Genteng', 'Perawatan Damija', '', '223+800 - 224+200', '400', 'Cangkul parang', 5, 'APK_0_25042019111205IMG-20190425-WA0063.jpg', 'APK_50_25042019111205IMG-20190425-WA0064.jpg', 'APK_100_25042019111205IMG-20190425-WA0065.jpg', '2019-04-25 18:12:05', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000018', '2019-04-25', 'Hadiansyah', 'SUP4', 'Waluran-Malereng-Palangpang', 'Perawatan Damija', '', '201+300 - 210+900', '600', 'Gress cutter,parang dan cabgkul', 10, 'APK_0_25042019113308IMG-20190425-WA0082.jpg', 'APK_50_25042019113308IMG-20190425-WA0084.jpg', 'APK_100_25042019113308IMG-20190425-WA0083.jpg', '2019-04-25 18:33:08', '', '', -2.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000019', '2019-04-25', 'Budi', 'SUP4', 'Waluran-Malereng-Palangpang', 'Perawatan Damija', '', 'Km bdg 218+500 - 219+00', '500', 'Gras cutter dan parang', 10, 'APK_0_25042019165846IMG-20190425-WA0016.jpg', 'APK_50_25042019165846IMG-20190425-WA0018.jpg', 'APK_100_25042019165846IMG-20190425-WA0017.jpg', '2019-04-26 00:03:30', '', '', -7.179344, 106.480537, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000020', '2019-04-26', 'Aef', 'SUP4', 'Surade - Ujung Genteng', 'Perawatan Damija', '', '224+200 - 224+500', '300', 'Parang dan cangkul', 8, 'APK_0_26042019101233IMG-20190426-WA0076.jpg', 'APK_50_26042019101233IMG-20190426-WA0074.jpg', 'APK_100_26042019101233IMG-20190426-WA0075.jpg', '2019-04-26 17:13:54', '', '', -7.357317, 106.450089, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000021', '2019-04-26', 'Hadiansyah', 'SUP4', 'Waluran-Malereng-Palangpang', 'Perawatan Damija', '', '201+900 - 202+600', '700', 'Grass cuter parang dan cangkul', 10, 'APK_0_26042019102255IMG-20190426-WA0111.jpg', 'APK_50_26042019102255IMG-20190426-WA0110.jpg', 'APK_100_26042019102255IMG-20190426-WA0108.jpg', '2019-04-26 17:22:55', '', '', 1.000000, 0.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000022', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Perawatan Damija', '', '215+350 - 215+650', '300', 'Parang dan cangkul', 5, 'APK_0_26042019105049IMG-20190426-WA0159.jpg', 'APK_50_26042019105049IMG-20190426-WA0160.jpg', 'APK_100_26042019105049IMG-20190426-WA0161.jpg', '2019-04-26 17:50:49', '', '', 160.525452, -7.317566, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000023', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '214+970', '0', 'Leker singkup dan cangkul', 5, 'APK_0_26042019105333IMG-20190426-WA0082.jpg', 'APK_50_26042019105333IMG-20190426-WA0080.jpg', 'APK_100_26042019105333IMG-20190426-WA0078.jpg', '2019-04-26 17:53:33', '', '', -2.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000024', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+000', '1', 'Leker singkup dan cangkul', 6, 'APK_0_26042019105521IMG-20190426-WA0083.jpg', 'APK_50_26042019105521IMG-20190426-WA0084.jpg', 'APK_100_26042019105521IMG-20190426-WA0086.jpg', '2019-04-26 17:55:21', '', '', -1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000025', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+050', '0', 'Leker singkup cangkul', 6, 'APK_0_26042019110930IMG-20190426-WA0092.jpg', 'APK_50_26042019110930IMG-20190426-WA0088.jpg', 'APK_100_26042019110930IMG-20190426-WA0091.jpg', '2019-04-26 18:09:30', '', '', 1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000026', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+150', '0', 'Leker singkup cangkul', 6, 'APK_0_26042019111117IMG-20190426-WA0092.jpg', 'APK_50_26042019111117IMG-20190426-WA0094.jpg', 'APK_100_26042019111117IMG-20190426-WA0095.jpg', '2019-04-26 18:11:17', '', '', -1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000027', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+200', '0', 'Leker singkup dan cangkul', 6, 'APK_0_26042019115356IMG-20190426-WA0096.jpg', 'APK_50_26042019115356IMG-20190426-WA0097.jpg', 'APK_100_26042019115356IMG-20190426-WA0086.jpg', '2019-04-26 18:53:56', '', '', -1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000028', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+250', '0', 'Leker singkup dan cangjul', 6, 'APK_0_26042019115607IMG-20190426-WA0106.jpg', 'APK_50_26042019115607IMG-20190426-WA0104.jpg', 'APK_100_26042019115607IMG-20190426-WA0103.jpg', '2019-04-26 18:56:07', '', '', -1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000029', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+300', '0', 'Leker singkup dan cangkul', 6, 'APK_0_26042019115801IMG-20190426-WA0113.jpg', 'APK_50_26042019115801IMG-20190426-WA0114.jpg', 'APK_100_26042019115801IMG-20190426-WA0117.jpg', '2019-04-26 18:58:01', '', '', 0.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000030', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+350', '0', 'Leker singkup dan cangkul', 6, 'APK_0_26042019115950IMG-20190426-WA0122.jpg', 'APK_50_26042019115950IMG-20190426-WA0127.jpg', 'APK_100_26042019115950IMG-20190426-WA0128.jpg', '2019-04-26 18:59:50', '', '', -1.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000031', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+400', '0', 'Leker singkup ', 6, 'APK_0_26042019120132IMG-20190426-WA0130.jpg', 'APK_50_26042019120132IMG-20190426-WA0131.jpg', 'APK_100_26042019120132IMG-20190426-WA0133.jpg', '2019-04-26 19:01:32', '', '', 0.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000032', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+600', '0', 'Leker singkup', 6, 'APK_0_26042019120322IMG-20190426-WA0136.jpg', 'APK_50_26042019120322IMG-20190426-WA0137.jpg', 'APK_100_26042019120322IMG-20190426-WA0139.jpg', '2019-04-26 19:03:22', '', '', -1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000033', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+750', '0', 'Leker dan singkup', 6, 'APK_0_26042019120541IMG-20190426-WA0140.jpg', 'APK_50_26042019120541IMG-20190426-WA0141.jpg', 'APK_100_26042019120541IMG-20190426-WA0143.jpg', '2019-04-26 19:05:41', '', '', -1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000034', '2019-04-26', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+800', '0', 'Leker dan singkup', 6, 'APK_0_26042019120721IMG-20190426-WA0144.jpg', 'APK_50_26042019120721IMG-20190426-WA0146.jpg', 'APK_100_26042019120721IMG-20190426-WA0147.jpg', '2019-04-26 19:07:21', '', '', 0.000000, -1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000035', '2019-04-26', 'Budi', 'SUP4', 'Waluran-Malereng-Palangpang', 'Perawatan Damija', '', 'Km bdg 219+000 - 219+400', '400', 'Mesin rumput dan parang', 10, 'APK_0_26042019131843IMG-20190426-WA0033.jpg', 'APK_50_26042019131843IMG-20190426-WA0035.jpg', 'APK_100_26042019131843IMG-20190426-WA0034.jpg', '2019-04-26 20:18:43', '', '', -7.199110, 106.487862, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000036', '2019-04-26', 'sunarya', 'SUP3', 'Sagaranten - Tegal Buleud', 'Perawatan Damija', '', 'Km.Bdg.185+750', '100', 'Alat bantu', 7, 'APK_0_26042019173131IMG-20190426-WA0010.jpg', 'APK_50_26042019173131IMG-20190426-WA0011.jpg', 'APK_100_26042019173131IMG-20190426-WA0014.jpg', '2019-04-27 07:37:23', '', '', 106.781517, -7.413280, '', '', '', 0, 'r3', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000037', '2019-04-26', 'asep mudrikah', 'SUP3', 'Sagaranten - Tegal Buleud', 'Tambal Sulam Hotmix', '', 'Km.Bdg.149+900', '100', 'Dumptruck, pemadat, pick up, alat bantu', 10, 'APK_0_26042019174606IMG-20190426-WA0048.jpg', 'APK_50_26042019174606IMG-20190426-WA0049.jpg', 'APK_100_26042019174606IMG-20190426-WA0050.jpg', '2019-04-27 07:36:47', '', '', 106.874321, -7.216690, '', '', '', 0, 'r3', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000038', '2019-04-26', 'dadi rosadi', 'SUP3', 'Sagaranten - Tegal Buleud', 'Lain-Lain', '', 'Km. Bdg. 176+650', '50', 'Alat bantu', 7, 'APK_0_27042019003537IMG-20190426-WA0044.jpg', 'APK_50_27042019003537IMG-20190426-WA0042.jpg', '', '2019-04-27 07:35:37', '', '', 106.822037, -7.357390, '', '', '', 0, 'r3', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000039', '2019-04-27', 'Udang', 'SUP4', 'Waluran-Malereng-Palangpang', 'Perawatan Damija', '', '197+500 - 198+000', '500', 'Parang dan cangkul', 10, 'APK_0_27042019023226IMG20190425104300.jpg', 'APK_50_27042019023226IMG20190425105332.jpg', 'APK_100_27042019023226IMG20190425135219.jpg', '2019-04-27 17:02:50', '', '', -7.370833, 106.535027, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000040', '2019-04-27', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '215+950', '0', '', 6, 'APK_0_27042019080621IMG-20190427-WA0003.jpg', 'APK_50_27042019080621IMG-20190427-WA0004.jpg', 'APK_100_27042019080621IMG-20190427-WA0006.jpg', '2019-04-27 15:06:21', '', '', -2.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000041', '2019-04-27', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '216+000', '0', 'Leker singkup', 6, 'APK_0_27042019080833IMG-20190427-WA0007.jpg', 'APK_50_27042019080833IMG-20190427-WA0020.jpg', 'APK_100_27042019080833IMG-20190427-WA0018.jpg', '2019-04-27 15:12:18', '', '', 1.000000, 1.000000, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000042', '2019-04-27', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '216+100', '0', 'Leker singkup', 6, 'APK_0_27042019081203IMG-20190427-WA0017.jpg', 'APK_50_27042019081203IMG-20190427-WA0016.jpg', 'APK_100_27042019081203IMG-20190427-WA0015.jpg', '2019-04-27 15:12:03', '', '', -6.374037, 106.518143, '', '', '', 0, 'r4', '', 0);
INSERT INTO `kemandoran` VALUES ('CK-000043', '2019-04-27', 'Risman', 'SUP4', 'Surade - Ujung Genteng', 'Tambal Sulam Hotmix', '', '216+200', '0', 'Leker singkip', 6, 'APK_0_27042019081452IMG-20190427-WA0012.jpg', 'APK_50_27042019081452IMG-20190427-WA0008.jpg', 'APK_100_27042019081452IMG-20190427-WA0009.jpg', '2019-04-27 15:14:52', '', '', -7.373959, 106.517784, '', '', '', 0, 'r4', '', 0);

-- ----------------------------
-- Table structure for landing_fitur
-- ----------------------------
DROP TABLE IF EXISTS `landing_fitur`;
CREATE TABLE `landing_fitur`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of landing_fitur
-- ----------------------------
INSERT INTO `landing_fitur` VALUES (1, 'Pengaduan', 'Ada masalah dengan insfrastruktur di daerah anda? Segera lapor kepada kami!', 'fas fa-bullhorn', '#laporan');
INSERT INTO `landing_fitur` VALUES (2, 'Paket Pekerjaan', 'projek pembangunan infrastruktur yang sudah kami selesaikan', 'fas fa-box-open', '/paket-pekerjaan');
INSERT INTO `landing_fitur` VALUES (3, 'UPTD', 'Perkembangan pembangunan disetiap kabupaten/kota', 'fas fa-map', '#uptd');
INSERT INTO `landing_fitur` VALUES (4, 'Progress Pekerjaan', 'Pantau semua proses pembangunan yang sedang dilakukan', 'fas fa-road', '/progress-pekerjaan');
INSERT INTO `landing_fitur` VALUES (5, 'Pelebaran Jalan', 'Cek jalan mana saja yang sudah kami perlebar dan perbaiki', 'fas fa-text-width', '#');

-- ----------------------------
-- Table structure for landing_pesan
-- ----------------------------
DROP TABLE IF EXISTS `landing_pesan`;
CREATE TABLE `landing_pesan`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of landing_pesan
-- ----------------------------
INSERT INTO `landing_pesan` VALUES (1, 'Rumah Sakit Santo Yusup', 'priyayidimas@upi.edu', 'dsfsdf', '2020-09-23 01:41:20');
INSERT INTO `landing_pesan` VALUES (2, 'kaka', 'kaka@mail.com', 'pesannnadf', '2021-01-02 03:00:40');

-- ----------------------------
-- Table structure for landing_profil
-- ----------------------------
DROP TABLE IF EXISTS `landing_profil`;
CREATE TABLE `landing_profil`  (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kontak` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jam_layanan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pencapaian_selesai` int(4) NOT NULL,
  `pencapaian_target` int(4) NOT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of landing_profil
-- ----------------------------
INSERT INTO `landing_profil` VALUES (1, 'DBMPR Provinsi Jawa Barat', 'Dinas Bina Marga dan Penataan Ruang Provinsi Jawa Barat merupakan salah satu dari dinas daerah dan menjadi bagian dari Pemerintah Daerah Provinsi Jawa Barat. Merupakan unsur pelaksana otonomi daerah yang mempunyai tugas melaksanakan urusan Bidang Kebinamargaan dan Penataan Ruang serta Tugas Pembantuan.', 'Jl. Asia Afrika No.79, Braga, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111', 'dbmpr.jawabarat@support.com', '022 - 222 - 346', '08.00 - 17.00', 'http://dbmtr.jabarprov.go.id/', 'www.instagram.com', 'www.facebook.com', 'www.twitter.com', 'landing/profil/20201203094840_about.jpg', 874, 1200, '2020-09-24 02:34:26');

-- ----------------------------
-- Table structure for landing_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `landing_slideshow`;
CREATE TABLE `landing_slideshow`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of landing_slideshow
-- ----------------------------
INSERT INTO `landing_slideshow` VALUES (6, 'DBMPR Konektivitas Seluruh Wilayah', 'landing/slideshow/20201203094858_hero01.jpg');
INSERT INTO `landing_slideshow` VALUES (7, 'Proses Groundbreaking Dengan Vendor', 'landing/slideshow/20201203095019_hero03.jpg');
INSERT INTO `landing_slideshow` VALUES (8, 'Membantu Pembangunan Tata Kelola', 'landing/slideshow/20201203095013_hero02.jpg');

-- ----------------------------
-- Table structure for landing_uptd
-- ----------------------------
DROP TABLE IF EXISTS `landing_uptd`;
CREATE TABLE `landing_uptd`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `altnama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of landing_uptd
-- ----------------------------
INSERT INTO `landing_uptd` VALUES (1, 'UPTD 1', 'uptd1', 'Wilayah Pelayanan 1', 'WILAYAH KAB.CIANJUR-KOTA/KAB.BOGOR-KOTA DEPOK-KOTA/KAB.BEKASI', 'landing/uptd/20201203095101_uptd1.jpg');
INSERT INTO `landing_uptd` VALUES (2, 'UPTD 2', 'uptd2', 'Wilayah Pelayanan 2', 'WILAYAH KOTA & KAB. SUKABUMI', 'landing/uptd/20201203095108_uptd2.jpg');
INSERT INTO `landing_uptd` VALUES (3, 'UPTD 3', 'uptd3', 'Wilayah Pelayanan 3', 'WILAYAH KOTA/KAB.BANDUNG-KOTA CIMAHI-KAB.BANDUNG BARAT-KAB. SUBANG-KAB.PURWAKARTA-KAB.KARAWANG', 'landing/uptd/20201203095116_uptd3.jpg');
INSERT INTO `landing_uptd` VALUES (4, 'UPTD 4', 'uptd4', 'Wilayah Pelayanan 4', 'WILAYAH KAB.SUMEDANG-KAB.GARUT', 'landing/uptd/20201203095124_uptd4.jpeg');
INSERT INTO `landing_uptd` VALUES (5, 'UPTD 5', 'uptd5', 'Wilayah Pelayanan 5', 'WILAYAH KAB./KOTA TASIKMALAYA-KOTA BANJAR-KAB.CIAMIS-KAB.PANGANDARAN-KAB.KUNINGAN', 'landing/uptd/20201203095130_uptd5.jpg');
INSERT INTO `landing_uptd` VALUES (6, 'UPTD 6', 'uptd6', 'Wilayah Pelayanan 6', 'WILAYAH KOTA/KAB. CIREBON - KAB. MAJALENGKA- KAB. INDRAMAYU', 'landing/uptd/20201203095137_uptd6.jpg');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `activity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, 'Login', 'User Administrator Logged In', '2020-12-05 00:01:32', '2020-12-05 00:01:32');
INSERT INTO `log` VALUES (2, 'Login', 'User Administrator Logged In', '2020-12-10 09:39:32', '2020-12-10 09:39:32');
INSERT INTO `log` VALUES (3, 'Login', 'User Administrator Logged In To Web', '2020-12-16 05:56:56', '2020-12-16 05:56:56');
INSERT INTO `log` VALUES (4, 'Login', 'User Administrator Logged In To Web', '2020-12-16 07:33:33', '2020-12-16 07:33:33');
INSERT INTO `log` VALUES (5, 'Login', 'User Administrator Logged In To Web', '2020-12-17 04:38:35', '2020-12-17 04:38:35');
INSERT INTO `log` VALUES (6, 'Login', 'User Administrator Logged In To Web', '2020-12-17 12:02:00', '2020-12-17 12:02:00');
INSERT INTO `log` VALUES (7, 'Login', 'User Administrator Logged In To Web', '2020-12-17 12:21:45', '2020-12-17 12:21:45');
INSERT INTO `log` VALUES (8, 'Login', 'User Kadis Logged In To Web', '2020-12-17 12:50:56', '2020-12-17 12:50:56');
INSERT INTO `log` VALUES (9, 'Login', 'User Kadis Logged In To Web', '2020-12-17 12:51:53', '2020-12-17 12:51:53');
INSERT INTO `log` VALUES (10, 'Login', 'User Administrator Logged In To Web', '2020-12-17 14:56:32', '2020-12-17 14:56:32');
INSERT INTO `log` VALUES (11, 'Login', 'User Administrator Logged In To Web', '2020-12-17 15:04:09', '2020-12-17 15:04:09');
INSERT INTO `log` VALUES (12, 'Login', 'User Kadis Logged In To Web', '2020-12-17 15:30:47', '2020-12-17 15:30:47');
INSERT INTO `log` VALUES (13, 'Login', 'User Kadis Logged In To Web', '2020-12-17 15:30:47', '2020-12-17 15:30:47');
INSERT INTO `log` VALUES (14, 'Login', 'User Administrator Logged In To Web', '2020-12-17 16:06:39', '2020-12-17 16:06:39');
INSERT INTO `log` VALUES (15, 'Login', 'User Administrator Logged In To Web', '2020-12-18 01:52:24', '2020-12-18 01:52:24');
INSERT INTO `log` VALUES (16, 'Login', 'User Administrator Logged In To Web', '2020-12-18 02:13:10', '2020-12-18 02:13:10');
INSERT INTO `log` VALUES (17, 'Logout', 'User Administrator Logged Out From Web', '2020-12-18 02:14:15', '2020-12-18 02:14:15');
INSERT INTO `log` VALUES (18, 'Login', 'User Kadis Logged In To Web', '2020-12-18 02:14:52', '2020-12-18 02:14:52');
INSERT INTO `log` VALUES (19, 'Logout', 'User Administrator Logged Out From Web', '2020-12-18 02:15:14', '2020-12-18 02:15:14');
INSERT INTO `log` VALUES (20, 'Login', 'User Kadis Logged In To Web', '2020-12-18 02:16:13', '2020-12-18 02:16:13');
INSERT INTO `log` VALUES (21, 'Logout', 'User Kadis Logged Out From Web', '2020-12-18 02:28:45', '2020-12-18 02:28:45');
INSERT INTO `log` VALUES (22, 'Login', 'User Kadis Logged In To Web', '2020-12-18 02:33:59', '2020-12-18 02:33:59');
INSERT INTO `log` VALUES (23, 'Login', 'User Administrator Logged In To Web', '2020-12-18 02:38:35', '2020-12-18 02:38:35');
INSERT INTO `log` VALUES (24, 'Login', 'User Administrator Logged In To Web', '2020-12-18 03:48:40', '2020-12-18 03:48:40');
INSERT INTO `log` VALUES (25, 'Login', 'User Administrator Logged In To Web', '2020-12-18 09:35:43', '2020-12-18 09:35:43');
INSERT INTO `log` VALUES (26, 'Login', 'User Kadis Logged In To Web', '2020-12-18 11:39:03', '2020-12-18 11:39:03');
INSERT INTO `log` VALUES (27, 'Login', 'User Administrator Logged In To Web', '2020-12-19 03:21:49', '2020-12-19 03:21:49');
INSERT INTO `log` VALUES (28, 'Login', 'User Kadis Logged In To Web', '2020-12-20 06:37:00', '2020-12-20 06:37:00');
INSERT INTO `log` VALUES (29, 'Login', 'User Kadis Logged In To Web', '2020-12-22 10:12:41', '2020-12-22 10:12:41');
INSERT INTO `log` VALUES (30, 'Login', 'User Kadis Logged In To Web', '2020-12-23 10:32:50', '2020-12-23 10:32:50');
INSERT INTO `log` VALUES (31, 'Login', 'User Administrator Logged In To Web', '2020-12-23 16:48:19', '2020-12-23 16:48:19');
INSERT INTO `log` VALUES (32, 'Login', 'User Kadis Logged In To Web', '2020-12-28 07:40:19', '2020-12-28 07:40:19');
INSERT INTO `log` VALUES (33, 'Login', 'User Kadis Logged In To Web', '2020-12-28 08:27:55', '2020-12-28 08:27:55');
INSERT INTO `log` VALUES (34, 'Login', 'User Kadis Logged In To Web', '2020-12-28 09:31:12', '2020-12-28 09:31:12');
INSERT INTO `log` VALUES (35, 'Login', 'User Kadis Logged In To Web', '2020-12-28 14:04:57', '2020-12-28 14:04:57');
INSERT INTO `log` VALUES (36, 'Logout', 'User Kadis Logged Out From Web', '2020-12-28 14:41:03', '2020-12-28 14:41:03');
INSERT INTO `log` VALUES (37, 'Login', 'User Kadis Logged In To Web', '2020-12-28 16:00:37', '2020-12-28 16:00:37');
INSERT INTO `log` VALUES (38, 'Login', 'User Kadis Logged In To Web', '2020-12-28 19:53:58', '2020-12-28 19:53:58');
INSERT INTO `log` VALUES (39, 'Login', 'User Kadis Logged In To Web', '2020-12-28 23:40:07', '2020-12-28 23:40:07');
INSERT INTO `log` VALUES (40, 'Login', 'User Kadis Logged In To Web', '2020-12-28 23:59:34', '2020-12-28 23:59:34');
INSERT INTO `log` VALUES (41, 'Login', 'User Kadis Logged In To Web', '2020-12-29 00:03:51', '2020-12-29 00:03:51');
INSERT INTO `log` VALUES (42, 'Login', 'User Kadis Logged In To Web', '2020-12-29 00:22:14', '2020-12-29 00:22:14');
INSERT INTO `log` VALUES (43, 'Login', 'User Kadis Logged In To Web', '2020-12-29 02:42:15', '2020-12-29 02:42:15');
INSERT INTO `log` VALUES (44, 'Login', 'User Kadis Logged In To Web', '2020-12-29 07:41:46', '2020-12-29 07:41:46');
INSERT INTO `log` VALUES (45, 'Logout', 'User Kadis Logged Out From Web', '2020-12-29 07:44:15', '2020-12-29 07:44:15');
INSERT INTO `log` VALUES (46, 'Login', 'User Kadis Logged In To Web', '2020-12-29 07:52:57', '2020-12-29 07:52:57');
INSERT INTO `log` VALUES (47, 'Login', 'User Kadis Logged In To Web', '2020-12-29 13:41:34', '2020-12-29 13:41:34');
INSERT INTO `log` VALUES (48, 'Login', 'User Kadis Logged In To Web', '2020-12-29 14:45:47', '2020-12-29 14:45:47');
INSERT INTO `log` VALUES (49, 'Login', 'User Administrator Logged In To Web', '2020-12-29 15:21:35', '2020-12-29 15:21:35');
INSERT INTO `log` VALUES (50, 'Login', 'User Kadis Logged In To Web', '2020-12-30 05:51:58', '2020-12-30 05:51:58');
INSERT INTO `log` VALUES (51, 'Login', 'User Kadis Logged In To Web', '2020-12-30 06:02:47', '2020-12-30 06:02:47');
INSERT INTO `log` VALUES (52, 'Login', 'User Kadis Logged In To Web', '2020-12-30 10:07:02', '2020-12-30 10:07:02');
INSERT INTO `log` VALUES (53, 'Login', 'User Kadis Logged In To Web', '2020-12-30 14:09:53', '2020-12-30 14:09:53');
INSERT INTO `log` VALUES (54, 'Login', 'User Administrator Logged In To Web', '2020-12-31 03:07:02', '2020-12-31 03:07:02');
INSERT INTO `log` VALUES (55, 'Login', 'User Administrator Logged In To Web', '2020-12-31 03:56:53', '2020-12-31 03:56:53');
INSERT INTO `log` VALUES (56, 'Login', 'User Kadis Logged In To Web', '2020-12-31 07:00:57', '2020-12-31 07:00:57');
INSERT INTO `log` VALUES (57, 'Login', 'User Administrator Logged In To Web', '2020-12-31 10:02:07', '2020-12-31 10:02:07');
INSERT INTO `log` VALUES (58, 'Login', 'User Administrator Logged In To Web', '2020-12-31 14:21:40', '2020-12-31 14:21:40');
INSERT INTO `log` VALUES (59, 'Login', 'User Administrator Logged In To Web', '2020-12-31 14:29:19', '2020-12-31 14:29:19');
INSERT INTO `log` VALUES (60, 'Login', 'User Administrator Logged In To Web', '2020-12-31 23:05:49', '2020-12-31 23:05:49');
INSERT INTO `log` VALUES (61, 'Login', 'User Administrator Logged In To Web', '2020-12-31 23:34:16', '2020-12-31 23:34:16');
INSERT INTO `log` VALUES (62, 'Login', 'User Kadis Logged In To Web', '2021-01-01 13:41:22', '2021-01-01 13:41:22');
INSERT INTO `log` VALUES (63, 'Login', 'User Kadis Logged In To Web', '2021-01-01 13:55:04', '2021-01-01 13:55:04');
INSERT INTO `log` VALUES (64, 'Logout', 'User Kadis Logged Out From Web', '2021-01-01 14:17:17', '2021-01-01 14:17:17');
INSERT INTO `log` VALUES (65, 'Login', 'User Kadis Logged In To Web', '2021-01-02 01:49:50', '2021-01-02 01:49:50');
INSERT INTO `log` VALUES (66, 'Logout', 'User Kadis Logged Out From Web', '2021-01-02 01:50:06', '2021-01-02 01:50:06');
INSERT INTO `log` VALUES (67, 'Login', 'User Administrator Logged In To Web', '2021-01-02 01:50:18', '2021-01-02 01:50:18');
INSERT INTO `log` VALUES (68, 'Login', 'User Kadis Logged In To Web', '2021-01-02 04:43:42', '2021-01-02 04:43:42');
INSERT INTO `log` VALUES (69, 'Login', 'User Administrator Logged In To Web', '2021-01-02 07:20:12', '2021-01-02 07:20:12');
INSERT INTO `log` VALUES (70, 'Login', 'User Administrator Logged In To Web', '2021-01-02 07:20:37', '2021-01-02 07:20:37');
INSERT INTO `log` VALUES (71, 'Login', 'User Kadis Logged In To Web', '2021-01-02 08:04:25', '2021-01-02 08:04:25');
INSERT INTO `log` VALUES (72, 'Login', 'User Kadis Logged In To Web', '2021-01-02 09:12:04', '2021-01-02 09:12:04');
INSERT INTO `log` VALUES (73, 'Login', 'User Kadis Logged In To Web', '2021-01-02 10:07:30', '2021-01-02 10:07:30');
INSERT INTO `log` VALUES (74, 'Login', 'User Administrator Logged In To Web', '2021-01-02 10:37:48', '2021-01-02 10:37:48');
INSERT INTO `log` VALUES (75, 'Login', 'User Administrator Logged In To Web', '2021-01-02 23:34:29', '2021-01-02 23:34:29');
INSERT INTO `log` VALUES (76, 'Login', 'User Kadis Logged In To Web', '2021-01-03 00:28:15', '2021-01-03 00:28:15');
INSERT INTO `log` VALUES (77, 'Login', 'User Kadis Logged In To Web', '2021-01-03 00:55:06', '2021-01-03 00:55:06');
INSERT INTO `log` VALUES (78, 'Login', 'User Kadis Logged In To Web', '2021-01-03 05:34:46', '2021-01-03 05:34:46');
INSERT INTO `log` VALUES (79, 'Login', 'User Administrator Logged In To Web', '2021-01-03 09:43:47', '2021-01-03 09:43:47');
INSERT INTO `log` VALUES (80, 'Login', 'User Kadis Logged In To Web', '2021-01-03 23:36:46', '2021-01-03 23:36:46');
INSERT INTO `log` VALUES (81, 'Login', 'User Kadis Logged In To Web', '2021-01-04 02:21:27', '2021-01-04 02:21:27');
INSERT INTO `log` VALUES (82, 'Login', 'User Administrator Logged In To Web', '2021-01-04 03:28:43', '2021-01-04 03:28:43');
INSERT INTO `log` VALUES (83, 'Login', 'User Kadis Logged In To Web', '2021-01-04 07:37:57', '2021-01-04 07:37:57');
INSERT INTO `log` VALUES (84, 'Login', 'User Kadis Logged In To Web', '2021-01-04 09:21:31', '2021-01-04 09:21:31');
INSERT INTO `log` VALUES (85, 'Login', 'User Kadis Logged In To Web', '2021-01-05 02:50:17', '2021-01-05 02:50:17');
INSERT INTO `log` VALUES (86, 'Login', 'User Administrator Logged In To Web', '2021-01-05 06:44:48', '2021-01-05 06:44:48');
INSERT INTO `log` VALUES (87, 'Login', 'User Kadis Logged In To Web', '2021-01-05 10:02:00', '2021-01-05 10:02:00');
INSERT INTO `log` VALUES (88, 'Login', 'User Kadis Logged In To Web', '2021-01-05 10:07:48', '2021-01-05 10:07:48');
INSERT INTO `log` VALUES (89, 'Login', 'User Kadis Logged In To Web', '2021-01-05 13:29:23', '2021-01-05 13:29:23');
INSERT INTO `log` VALUES (90, 'Login', 'User Kadis Logged In To Web', '2021-01-05 13:36:31', '2021-01-05 13:36:31');
INSERT INTO `log` VALUES (91, 'Login', 'User Kadis Logged In To Web', '2021-01-05 22:41:54', '2021-01-05 22:41:54');
INSERT INTO `log` VALUES (92, 'Login', 'User Kadis Logged In To Web', '2021-01-06 03:01:17', '2021-01-06 03:01:17');
INSERT INTO `log` VALUES (93, 'Login', 'User Kadis Logged In To Web', '2021-01-06 06:09:24', '2021-01-06 06:09:24');
INSERT INTO `log` VALUES (94, 'Login', 'User Kadis Logged In To Web', '2021-01-06 09:39:47', '2021-01-06 09:39:47');
INSERT INTO `log` VALUES (95, 'Login', 'User Administrator Logged In To Web', '2021-01-06 11:55:13', '2021-01-06 11:55:13');
INSERT INTO `log` VALUES (96, 'Login', 'User Administrator Logged In To Web', '2021-01-07 22:30:19', '2021-01-07 22:30:19');
INSERT INTO `log` VALUES (97, 'Login', 'User Kadis Logged In To Web', '2021-01-08 01:05:23', '2021-01-08 01:05:23');
INSERT INTO `log` VALUES (98, 'Login', 'User Kadis Logged In To Web', '2021-01-08 01:10:39', '2021-01-08 01:10:39');
INSERT INTO `log` VALUES (99, 'Login', 'User Kadis Logged In To Web', '2021-01-08 05:39:26', '2021-01-08 05:39:26');
INSERT INTO `log` VALUES (100, 'Login', 'User Kadis Logged In To Web', '2021-01-09 06:23:09', '2021-01-09 06:23:09');
INSERT INTO `log` VALUES (101, 'Login', 'User Kadis Logged In To Web', '2021-01-09 06:56:45', '2021-01-09 06:56:45');
INSERT INTO `log` VALUES (102, 'Logout', 'User Kadis Logged Out From Web', '2021-01-09 06:57:39', '2021-01-09 06:57:39');
INSERT INTO `log` VALUES (103, 'Login', 'User Kepala UPTD 3 Logged In To Web', '2021-01-09 06:57:54', '2021-01-09 06:57:54');
INSERT INTO `log` VALUES (104, 'Logout', 'User Kepala UPTD 3 Logged Out From Web', '2021-01-09 07:14:20', '2021-01-09 07:14:20');
INSERT INTO `log` VALUES (105, 'Login', 'User Kadis Logged In To Web', '2021-01-09 07:15:07', '2021-01-09 07:15:07');
INSERT INTO `log` VALUES (106, 'Logout', 'User Kadis Logged Out From Web', '2021-01-09 07:19:28', '2021-01-09 07:19:28');
INSERT INTO `log` VALUES (107, 'Login', 'User Kadis Logged In To Web', '2021-01-09 07:19:56', '2021-01-09 07:19:56');
INSERT INTO `log` VALUES (108, 'Login', 'User Kadis Logged In To Web', '2021-01-09 09:22:15', '2021-01-09 09:22:15');
INSERT INTO `log` VALUES (109, 'Login', 'User Kadis Logged In To Web', '2021-01-09 11:58:36', '2021-01-09 11:58:36');
INSERT INTO `log` VALUES (110, 'Logout', 'User Kadis Logged Out From Web', '2021-01-09 11:58:53', '2021-01-09 11:58:53');
INSERT INTO `log` VALUES (111, 'Login', 'User Kadis Logged In To Web', '2021-01-09 11:59:22', '2021-01-09 11:59:22');
INSERT INTO `log` VALUES (112, 'Login', 'User Kadis Logged In To Web', '2021-01-10 03:50:32', '2021-01-10 03:50:32');
INSERT INTO `log` VALUES (113, 'Login', 'User Kadis Logged In To Web', '2021-01-10 12:30:32', '2021-01-10 12:30:32');
INSERT INTO `log` VALUES (114, 'Login', 'User Kadis Logged In To Web', '2021-01-11 01:44:42', '2021-01-11 01:44:42');
INSERT INTO `log` VALUES (115, 'Login', 'User Administrator Logged In To Web', '2021-01-11 01:48:17', '2021-01-11 01:48:17');
INSERT INTO `log` VALUES (116, 'Login', 'User Kadis Logged In To Web', '2021-01-13 06:30:19', '2021-01-13 06:30:19');
INSERT INTO `log` VALUES (117, 'Login', 'User Kadis Logged In To Web', '2021-01-13 06:50:01', '2021-01-13 06:50:01');
INSERT INTO `log` VALUES (118, 'Login', 'User Kadis Logged In To Web', '2021-01-13 07:22:28', '2021-01-13 07:22:28');
INSERT INTO `log` VALUES (119, 'Login', 'User Kadis Logged In To Web', '2021-01-13 07:29:34', '2021-01-13 07:29:34');
INSERT INTO `log` VALUES (120, 'Login', 'User Kadis Logged In To Web', '2021-01-13 08:43:52', '2021-01-13 08:43:52');
INSERT INTO `log` VALUES (121, 'Logout', 'User Kadis Logged Out From Web', '2021-01-13 09:16:57', '2021-01-13 09:16:57');
INSERT INTO `log` VALUES (122, 'Login', 'User Kadis Logged In To Web', '2021-01-13 09:19:59', '2021-01-13 09:19:59');
INSERT INTO `log` VALUES (123, 'Login', 'User Kadis Logged In To Web', '2021-01-13 14:31:23', '2021-01-13 14:31:23');
INSERT INTO `log` VALUES (124, 'Login', 'User Kadis Logged In To Web', '2021-01-14 02:31:11', '2021-01-14 02:31:11');
INSERT INTO `log` VALUES (125, 'Login', 'User Kadis Logged In To Web', '2021-01-14 11:58:12', '2021-01-14 11:58:12');

-- ----------------------------
-- Table structure for master_disposisi_instruksi
-- ----------------------------
DROP TABLE IF EXISTS `master_disposisi_instruksi`;
CREATE TABLE `master_disposisi_instruksi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_instruksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_disposisi_instruksi
-- ----------------------------
INSERT INTO `master_disposisi_instruksi` VALUES (1, 'Menghadap Saya', '');
INSERT INTO `master_disposisi_instruksi` VALUES (2, 'Untuk Diketahui', '');
INSERT INTO `master_disposisi_instruksi` VALUES (3, 'Untuk Ditindak lanjuti', '');
INSERT INTO `master_disposisi_instruksi` VALUES (4, 'Konsep jawaban', '');
INSERT INTO `master_disposisi_instruksi` VALUES (5, 'Untuk Menjadi Pemeriksa', '');
INSERT INTO `master_disposisi_instruksi` VALUES (6, 'Untuk Bahan Seperlunya', '');
INSERT INTO `master_disposisi_instruksi` VALUES (7, 'Saran / Usul / Telaah', '');
INSERT INTO `master_disposisi_instruksi` VALUES (8, 'Koordinasikan / Konfirmasi dengan YBS / Instansi Terkait', '');
INSERT INTO `master_disposisi_instruksi` VALUES (9, 'Sesuai dengan Rencana', '');
INSERT INTO `master_disposisi_instruksi` VALUES (10, 'Jawaban / Klarifikasi pada yang bersangkutan', '');
INSERT INTO `master_disposisi_instruksi` VALUES (11, 'Siapkan Pointer / Sambutan / Bahan', '');
INSERT INTO `master_disposisi_instruksi` VALUES (12, 'Difoto Copy', '');
INSERT INTO `master_disposisi_instruksi` VALUES (13, 'File / Diarsipkan', '');

-- ----------------------------
-- Table structure for master_grant_role_aplikasi
-- ----------------------------
DROP TABLE IF EXISTS `master_grant_role_aplikasi`;
CREATE TABLE `master_grant_role_aplikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `internal_role_id` int(11) NULL DEFAULT NULL,
  `menu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 551 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_grant_role_aplikasi
-- ----------------------------
INSERT INTO `master_grant_role_aplikasi` VALUES (1, 1, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (2, 1, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (3, 1, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (4, 1, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (5, 1, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (6, 1, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (7, 1, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (8, 1, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (9, 1, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (10, 1, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (11, 1, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (12, 1, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (13, 1, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (14, 1, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (15, 1, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (16, 1, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (17, 1, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (18, 1, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (19, 1, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (20, 1, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (21, 1, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (22, 1, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (23, 1, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (24, 1, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (25, 1, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (26, 1, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (27, 1, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (28, 1, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (29, 1, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (30, 1, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (31, 2, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (32, 2, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (33, 2, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (34, 2, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (35, 2, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (36, 2, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (37, 2, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (38, 2, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (39, 2, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (40, 2, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (41, 2, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (42, 2, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (43, 2, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (44, 2, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (45, 2, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (46, 2, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (47, 2, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (48, 2, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (49, 2, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (50, 2, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (51, 2, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (52, 2, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (53, 2, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (54, 2, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (55, 2, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (56, 2, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (57, 2, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (58, 2, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (59, 2, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (60, 2, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (61, 3, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (62, 3, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (63, 3, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (64, 3, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (65, 3, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (66, 3, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (67, 3, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (68, 3, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (69, 3, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (70, 3, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (71, 3, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (72, 3, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (73, 3, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (74, 3, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (75, 3, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (76, 3, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (77, 3, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (78, 3, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (79, 3, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (80, 3, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (81, 3, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (82, 3, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (83, 3, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (84, 3, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (85, 3, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (86, 3, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (87, 3, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (88, 3, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (89, 3, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (90, 3, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (91, 4, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (92, 4, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (93, 4, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (94, 4, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (95, 4, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (96, 4, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (97, 4, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (98, 4, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (99, 4, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (100, 4, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (101, 4, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (102, 4, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (103, 4, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (104, 4, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (105, 4, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (106, 4, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (107, 4, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (108, 4, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (109, 4, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (110, 4, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (111, 4, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (112, 4, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (113, 4, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (114, 4, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (115, 4, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (116, 4, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (117, 4, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (118, 4, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (119, 4, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (120, 4, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (121, 5, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (122, 5, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (123, 5, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (124, 5, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (125, 5, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (126, 5, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (127, 5, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (128, 5, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (129, 5, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (130, 5, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (131, 5, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (132, 5, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (133, 5, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (134, 5, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (135, 5, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (136, 5, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (137, 5, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (138, 5, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (139, 5, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (140, 5, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (141, 5, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (142, 5, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (143, 5, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (144, 5, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (145, 5, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (146, 5, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (147, 5, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (148, 5, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (149, 5, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (150, 5, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (151, 6, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (152, 6, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (153, 6, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (154, 6, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (155, 6, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (156, 6, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (157, 6, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (158, 6, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (159, 6, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (160, 6, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (161, 6, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (162, 6, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (163, 6, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (164, 6, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (165, 6, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (166, 6, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (167, 6, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (168, 6, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (169, 6, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (170, 6, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (171, 6, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (172, 6, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (173, 6, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (174, 6, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (175, 6, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (176, 6, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (177, 6, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (178, 6, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (179, 6, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (180, 6, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (181, 7, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (182, 7, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (183, 7, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (184, 7, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (185, 7, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (186, 7, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (187, 7, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (188, 7, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (189, 7, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (190, 7, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (191, 7, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (192, 7, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (193, 7, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (194, 7, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (195, 7, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (196, 7, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (197, 7, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (198, 7, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (199, 7, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (200, 7, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (201, 7, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (202, 7, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (203, 7, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (204, 7, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (205, 7, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (206, 7, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (207, 7, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (208, 7, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (209, 7, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (210, 7, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (211, 8, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (212, 8, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (213, 8, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (214, 8, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (215, 8, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (216, 8, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (217, 8, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (218, 8, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (219, 8, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (220, 8, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (221, 8, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (222, 8, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (223, 8, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (224, 8, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (225, 8, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (226, 8, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (227, 8, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (228, 8, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (229, 8, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (230, 8, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (231, 8, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (232, 8, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (233, 8, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (234, 8, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (235, 8, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (236, 8, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (237, 8, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (238, 8, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (239, 8, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (240, 8, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (241, 9, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (242, 9, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (243, 9, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (244, 9, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (245, 9, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (246, 9, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (247, 9, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (248, 9, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (249, 9, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (250, 9, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (251, 9, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (252, 9, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (253, 9, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (254, 9, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (255, 9, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (256, 9, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (257, 9, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (258, 9, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (259, 9, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (260, 9, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (261, 9, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (262, 9, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (263, 9, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (264, 9, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (265, 9, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (266, 9, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (267, 9, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (268, 9, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (269, 9, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (270, 9, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (301, 11, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (302, 11, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (303, 11, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (304, 11, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (305, 11, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (306, 11, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (307, 11, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (308, 11, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (309, 11, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (310, 11, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (311, 11, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (312, 11, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (313, 11, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (314, 11, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (315, 11, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (316, 11, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (317, 11, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (318, 11, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (319, 11, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (320, 11, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (321, 11, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (322, 11, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (323, 11, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (324, 11, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (325, 11, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (326, 11, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (327, 11, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (328, 11, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (329, 11, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (330, 11, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (331, 12, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (332, 12, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (333, 12, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (334, 12, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (335, 12, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (336, 12, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (337, 12, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (338, 12, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (339, 12, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (340, 12, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (341, 12, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (342, 12, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (343, 12, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (344, 12, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (345, 12, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (346, 12, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (347, 12, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (348, 12, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (349, 12, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (350, 12, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (351, 12, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (352, 12, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (353, 12, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (354, 12, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (355, 12, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (356, 12, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (357, 12, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (358, 12, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (359, 12, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (360, 12, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (361, 13, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (362, 13, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (363, 13, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (364, 13, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (365, 13, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (366, 13, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (367, 13, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (368, 13, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (369, 13, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (370, 13, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (371, 13, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (372, 13, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (373, 13, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (374, 13, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (375, 13, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (376, 13, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (377, 13, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (378, 13, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (379, 13, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (380, 13, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (381, 13, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (382, 13, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (383, 13, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (384, 13, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (385, 13, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (386, 13, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (387, 13, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (388, 13, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (389, 13, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (390, 13, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (421, 15, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (422, 15, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (423, 15, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (424, 15, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (425, 15, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (426, 15, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (427, 15, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (428, 15, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (429, 15, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (430, 15, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (431, 15, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (432, 15, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (433, 15, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (434, 15, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (435, 15, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (436, 15, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (437, 15, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (438, 15, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (439, 15, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (440, 15, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (441, 15, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (442, 15, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (443, 15, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (444, 15, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (445, 15, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (446, 15, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (447, 15, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (448, 15, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (449, 15, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (450, 15, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (481, 17, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (482, 17, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (483, 17, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (484, 17, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (485, 17, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (486, 17, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (487, 17, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (488, 17, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (489, 17, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (490, 17, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (491, 17, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (492, 17, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (493, 17, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (494, 17, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (495, 17, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (496, 17, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (497, 17, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (498, 17, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (499, 17, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (500, 17, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (501, 17, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (502, 17, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (503, 17, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (504, 17, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (505, 17, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (506, 17, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (507, 17, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (508, 17, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (509, 17, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (510, 17, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (511, 18, 'Manage', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (512, 18, 'Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (513, 18, 'Input Data', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (514, 18, 'Lapor', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (515, 18, 'Landing Page', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (516, 18, 'Pesan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (517, 18, 'Log', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (518, 18, 'User', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (519, 18, 'Ruas Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (520, 18, 'Jembatan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (521, 18, 'Rawan Bencana', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (522, 18, 'Pekerjaan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (523, 18, 'Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (524, 18, 'Rekap', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (525, 18, 'Progress Kerja', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (526, 18, 'Data Paket', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (527, 18, 'Executive Dashboard', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (528, 18, 'Proyek Kontrak', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (529, 18, 'Kemantapan Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (530, 18, 'Laporan Akses', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (531, 18, 'Anggaran & Realisasi Keuangan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (532, 18, 'Survey Kondisi Jalan', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (533, 18, 'Kirim Disposisi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (534, 18, 'Disposisi Masuk', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (535, 18, 'Disposisi Tindak Lanjut', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (536, 18, 'Disposisi Instruksi', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (537, 18, 'Profil', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (538, 18, 'Slideshow', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (539, 18, 'Fitur', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (540, 18, 'UPTD', '2008-12-31');
INSERT INTO `master_grant_role_aplikasi` VALUES (542, 20, 'Pekerjaan', '2020-12-15');
INSERT INTO `master_grant_role_aplikasi` VALUES (543, 14, 'Executive Dashboard', '2021-01-09');
INSERT INTO `master_grant_role_aplikasi` VALUES (544, 14, 'Executive Dashboard', '2021-01-09');
INSERT INTO `master_grant_role_aplikasi` VALUES (545, 16, 'Anggaran & Realisasi Keuangan', '2021-01-09');
INSERT INTO `master_grant_role_aplikasi` VALUES (546, 16, 'Data Paket', '2021-01-09');
INSERT INTO `master_grant_role_aplikasi` VALUES (547, 16, 'Executive Dashboard', '2021-01-09');
INSERT INTO `master_grant_role_aplikasi` VALUES (550, 10, 'Executive Dashboard', '2021-01-10');

-- ----------------------------
-- Table structure for master_jembatan
-- ----------------------------
DROP TABLE IF EXISTS `master_jembatan`;
CREATE TABLE `master_jembatan`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `id_jembatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_jembatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `panjang` float(10, 4) NOT NULL,
  `lebar` float(10, 4) NOT NULL,
  `jumlah_bentang` int(11) NOT NULL,
  `lokasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruas_jalan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ket` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uptd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT current_timestamp(0),
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(11) NULL DEFAULT NULL,
  `flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1171 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_jembatan
-- ----------------------------
INSERT INTO `master_jembatan` VALUES (00000000003, '22.017.005', 'CIHAURWANGI', -6.84221, 107.324, 3.0000, 6.0000, 1, 'Km. Bdg. 40 + 540', 'JBT. CITARUM LAMA - CIHAUR WANGI/ CIPEUYEUM', '', '18082019185308IMG-20190818-WA0074.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000004, '22.046.0010.0', 'Cigowak', -6.92592, 107.123, 3.0000, 4.0000, 1, 'Km. Bdg. 78 + 040', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019015031Cogowak.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000005, '22.046.0011.0', 'Cisalak', -6.92811, 107.122, 3.0000, 5.0000, 1, 'Km. Bdg. 78 + 290', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019015153Cisalak.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000006, '22.046.002.0', 'Cibinong', -6.85267, 107.13, 24.0000, 6.0000, 3, 'Km. Bdg. 68 + 960', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019013046cibinong.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000007, '22.046.003.0', 'Ciharashas', -6.8647, 107.13, 5.0000, 6.0000, 1, 'Km. Bdg. 70 + 680', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019013213Ciharashas.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000008, '22.046.004.0', 'Cijati', -6.87796, 107.128, 6.0000, 6.0000, 1, 'Km. Bdg. 72 + 410', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019013333Cijati.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000009, '22.046.005.0', 'Cilaku 1', -6.88489, 107.126, 3.0000, 6.0000, 1, 'Km. Bdg. 73 + 220', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019013449Cilaku1.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000010, '22.046.006.0', 'Cilaku 2', -6.88601, 107.126, 12.0000, 7.0000, 1, 'Km. Bdg. 73 + 390', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019013618Cilaku2.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000011, '22.046.007.0', 'Cisarandi', -6.89321, 107.123, 8.0000, 9.0000, 1, 'Km. Bdg. 74 + 270', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019014257Cisarandi.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000012, '22.046.008.0', 'Pasirkalapa', -6.91365, 107.124, 3.0000, 6.0000, 1, 'Km. Bdg. 76 + 660', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019014740Pasirkalapa.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000013, '22.046.009.0', 'Mayak', -6.92111, 107.123, 3.0000, 6.0000, 1, 'Km. Bdg. 77 + 510', 'SP.3 PERINTIS KEMERDEKAAN (PASIR HAYAM) - CIBEBER', '', '10082019014903Mayak.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000014, '22.046.012.0', 'CISONGGOM', -6.9373, 107.124, 9.0000, 7.0000, 1, 'Km. Bdg. 79 + 360', 'JL. RAYA CIBEBER (CIBEBER)', '', '08082019221828Cisonggom.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000015, '22.046.014', 'CIKONDANG', -6.93975, 107.135, 32.0000, 6.0000, 3, 'Km. Bdg. 80 + 490', 'JL. RAYA CIBEBER (CIBEBER)', '', '08082019144825Cikondang.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000016, '22.046.014.1', 'CIHANYAWAR', -6.97724, 107.146, 3.0000, 4.0000, 1, 'Km. Bdg. 88 + 080', 'CIBEBER - SUKANAGARA', '', '08082019153306Cihanjawar.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000017, '22.046.014.2', 'LEBAK SIUH 1', -6.9906, 107.141, 6.0000, 4.0000, 1, 'Km. Bdg. 90 + 790', 'CIBEBER - SUKANAGARA', '', '08082019152618LebakSiuh1.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000018, '22.046.014.3', 'LEBAK SIUH 2', -6.9906, 107.141, 5.0000, 5.0000, 2, 'Km. Bdg. 90 + 980', 'CIBEBER - SUKANAGARA', '', '08082019222706LebakSiuh2.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000019, '22.046.015', 'CISELA', -6.9942, 107.137, 2.0000, 6.0000, 1, 'Km. Bdg. 92 + 140', 'CIBEBER - SUKANAGARA', '', '08082019145600Cisela.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000020, '22.046.016', 'CIHARUM', -7.0534, 107.132, 3.0000, 4.0000, 1, 'Km. Bdg. 101 + 470 ', 'CIBEBER - SUKANAGARA', '', '08082019145622Ciharum.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000021, '22.046.017', 'SUKARAJIN', -7.059, 107.138, 4.0000, 3.0000, 1, 'Km. Bdg. 102 + 530 ', 'CIBEBER - SUKANAGARA', '', '08082019145708Sukarajin.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000022, '22.046.018', 'CIMONTEH', -7.0756, 107.137, 10.0000, 7.0000, 1, 'Km. Bdg. 105 + 080', 'CIBEBER - SUKANAGARA', '', '08082019145731Cimonteh1.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000023, '22.046.019', 'CIMONTEH 2', -7.0808, 107.142, 9.0000, 7.0000, 1, 'Km. Bdg. 105 +960', 'CIBEBER - SUKANAGARA', '', '08082019143852Cimonteh2.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000024, '22.046.020', 'CIMONTEH 3', -7.0878, 107.142, 11.0000, 7.0000, 1, 'Km. Bdg. 107 +070', 'CIBEBER - SUKANAGARA', '', '08082019144157Cimonteh3.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000025, '22.046.021', 'CIKIRUH', -7.0981, 107.129, 4.0000, 6.0000, 1, 'Km. Bdg. 109 +390', 'JL. RAYA SUKANAGARA (SUKANAGARA)', '', '08082019145913Cikiruh.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000026, '22.046.021.0', 'CIBEBER', -6.93748, 107.124, 5.0000, 8.0000, 1, 'Km. Bdg. 80 + 100', 'JL. RAYA CIBEBER (CIBEBER)', '', '18082019185227IMG-20190818-WA0070.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000027, '22.046.022', 'CIBALAPULANG', -7.101, 107.129, 13.0000, 11.0000, 1, 'Km. Bdg. 109 +470', 'JL. RAYA SUKANAGARA (SINDANGBARANG)', '', '08082019145940Cibalapulang.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000028, '22.046.023', 'CIBEUREUM', -7.102, 107.129, 5.0000, 5.0000, 1, 'Km. Bdg. 109 + 540', 'JL. RAYA SUKANAGARA (SUKANAGARA)', '', '08082019150004Cibeureum.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000029, '22.046.024.0.2', 'CIJATEM', -7.11551, 107.123, 4.0000, 8.0000, 1, '113+570 - 113+574', 'SUKANAGARA - SINDANGBARANG', '', '08082019224017CIJATEM.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000030, '22.046.025.0.2', 'CIBENGANG', -7.1168, 107.123, 3.0000, 8.0000, 1, '113+750 - 113+750,9', 'SUKANAGARA - SINDANGBARANG', '', '08082019224312CIBENGANG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000031, '22.046.026.0.2', 'WARUNG CARINGIN I', -7.15633, 107.114, 4.0000, 8.0000, 1, '119+800 - 119+804,5', 'SUKANAGARA - SINDANGBARANG', '', '08082019224435WARUNG CARINGIN.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000032, '22.046.028.0.2', 'CIJAMPANG', -7.1994, 107.144, 46.0000, 6.0000, 1, '127+010 - 127+056', 'SUKANAGARA - SINDANGBARANG', '', '08082019224554CIJAMPANG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000033, '22.046.029.0.2', 'CIADEG', -7.21221, 107.14, 8.0000, 6.0000, 1, '128+400 - 128+408,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019224840CIADEG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000034, '22.046.029.1.2', 'CITANA', -7.2171, 107.137, 2.0000, 6.0000, 1, '129+730 - 129+732,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019225003CITANA.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000035, '22.046.029.2.2', 'CIBOGO', -7.22008, 107.136, 2.0000, 5.0000, 1, '130+610 - 130+612', 'SUKANAGARA - SINDANGBARANG', '', '08082019225933CIBOGO.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000036, '22.046.030.0.2', 'CIAWI/CIJAUH', -7.24064, 107.117, 3.0000, 13.0000, 1, '134+470 - 134+473,90', 'SUKANAGARA - SINDANGBARANG', '', '08082019230113CIAWI(CIIJAUH).jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000037, '22.046.031.0.2', 'CIBUNI', -7.25746, 107.112, 30.0000, 6.0000, 1, '138+280 - 138+310,70', 'SUKANAGARA - SINDANGBARANG', '', '08082019230723CIBUNI.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000038, '22.046.031.1.2', 'CIKORONJO', -7.25911, 107.112, 2.0000, 5.0000, 1, '138+480 - 138+482,40', 'SUKANAGARA - SINDANGBARANG', '', '08082019230854CIKORONJO.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000039, '22.046.032.0.2', 'CITAPEN', -7.26752, 107.123, 4.0000, 5.0000, 1, '141+170 - 141+174,60', 'SUKANAGARA - SINDANGBARANG', '', '08082019231131CITAPEN.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000040, '22.046.033.0.2', 'CIGADOG', -7.28361, 107.116, 3.0000, 5.0000, 1, '144+560 - 144+563,80', 'SUKANAGARA - SINDANGBARANG', '', '08082019231724CIGADOG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000041, '22.046.034.0.2', 'CIPALASARI', -7.3599, 107.132, 4.0000, 4.0000, 1, '157+230 - 157+234,10', 'SUKANAGARA - SINDANGBARANG', '', '08082019232135CIPALASARI.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000042, '22.046.035.0.2', 'CURUG GENTONG', -7.36016, 107.136, 11.0000, 6.0000, 1, '157+860 - 157+871,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019232302CURUGGENTONG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000043, '22.046.036.0.2', 'CISAWER', -7.3673, 107.142, 13.0000, 7.0000, 3, '159+390 - 159+403,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019232554CISAWER.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000044, '22.046.037.0.2', 'CISALADA', -7.3863, 107.14, 3.0000, 4.0000, 1, '163+620 - 163+623,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019232708CISALADA.jpeg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000045, '22.046.038.0.2', 'CIKADU LEUTIK', -7.39204, 107.152, 17.0000, 7.0000, 2, '164+460 - 164+477,20', 'SUKANAGARA - SINDANGBARANG', '', '08082019232823CIKADULEUTIK.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000046, '22.046.039.0.2', 'CIMAPAG', -7.39383, 107.156, 3.0000, 6.0000, 1, '165+000 - 165+003,80', 'SUKANAGARA - SINDANGBARANG', '', '08082019233301CIPAMAG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000047, '22.046.040.0.2', 'CILEPO', -7.39678, 107.16, 6.0000, 6.0000, 1, '165+580 - 165+586', 'SUKANAGARA - SINDANGBARANG', '', '08082019233426CILEPO.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000048, '22.046.041.0.2', 'CIBAREGBEG', -7.40114, 107.162, 4.0000, 3.0000, 1, '166+180 - 166+184,10', 'SUKANAGARA - SINDANGBARANG', '', '08082019233534CIBAREGBEG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000049, '22.046.042.0.2', 'CIBITUNG', -7.40474, 107.161, 5.0000, 6.0000, 1, '166+370 - 166+375,40', 'SUKANAGARA - SINDANGBARANG', '', '08082019233650CIBITUNG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000050, '22.046.043.0.2', 'CIPARI', -7.41242, 107.162, 4.0000, 3.0000, 1, '167+660 - 167+664,30', 'SUKANAGARA - SINDANGBARANG', '', '08082019233835CIPARI.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000051, '22.046.044.0.2', 'CIBALANDONG', -7.41741, 107.16, 3.0000, 7.0000, 1, '168+270 - 168+273,20', 'SUKANAGARA - SINDANGBARANG', '', '08082019233949CIBALANDONG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000052, '22.046.045.1.2', 'CISITU/MUARA CIKADU', -7.42181, 107.155, 3.0000, 6.0000, 1, '169+060 - 169+063,40', 'SUKANAGARA - SINDANGBARANG', '', '08082019234110CISITU(MUARACIKADU).jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000053, '22.046.045.B.2', 'CISADEA', -7.42001, 107.158, 112.0000, 7.0000, 4, '168+720 - 168+832,80', 'SUKANAGARA - SINDANGBARANG', '', '08082019234224CISADEA.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000054, '22.046.046.0.2', 'CIRANJI', -7.43106, 107.149, 13.0000, 6.0000, 2, '170+500 - 170+513,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019234333CIRANJI.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000055, '22.046.047.0.2', 'CICALINGCING', -7.43512, 107.143, 6.0000, 6.0000, 1, '171+796 - 171+802 ', 'SUKANAGARA - SINDANGBARANG', '', '08082019234450CICALINCING.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000056, '22.046.048.0.2.2', 'CINUNGKU', -7.44303, 107.14, 6.0000, 7.0000, 1, '172+960 - 172+966', 'SUKANAGARA - SINDANGBARANG', '', '08082019234558CINUNGKU.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000057, '22.046.053.0', 'CIMUNCANG 2', -6.5919, 107.146, 6.0000, 8.0000, 2, 'Km. Bdg. 79 + 040', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '08082019221150Cimuncang2.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000058, '22.091.001.011', 'KALIMALANG KARTINI', -6.25343, 106.998, 26.0000, 10.0000, 1, '34 + 870', 'JL. KARTINI (BEKASI)', '', '09082019085806kalimalang.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000059, '22.095.052.0', 'CIMAOK 1', -6.66906, 107.21, 3.0000, 7.0000, 1, 'Km. Bdg. 74 + 950', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '08082019220802Cimaok1.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000060, '22.095.054.0', 'CIMUNCANG 1', -6.6599, 107.179, 6.0000, 6.0000, 2, 'Km. Bdg. 78 + 830', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '08082019220955Cimuncang1.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000061, '22.095.055.0', 'Ciraden 2', -6.71498, 107.208, 5.0000, 6.0000, 2, 'Km. Bdg. 67 + 750', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019011805Ciraden.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000062, '22.095.056.0', 'Cikerta', -6.75481, 107.228, 20.0000, 4.0000, 1, 'Km. Bdg. 67 + 120', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019011539Cikerta.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000063, '22.095.057.0', 'CINANGSI', -6.72812, 107.21, 8.0000, 5.0000, 1, 'Km. Bdg. 66 + 440', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '08082019220430Cinangsi.jpeg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000064, '22.095.058.0', 'Cibogo', -6.76194, 107.24, 60.0000, 6.0000, 3, 'Km. Bdg. 59 + 100', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019010814Cibogo.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000065, '22.095.059.0', 'Cirata', -6.76549, 107.244, 60.0000, 7.0000, 1, 'Km. Bdg. 57 + 980', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019012149Cirata.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000066, '22.095.060.0', 'Babakan Turuy', -6.78446, 107.236, 10.0000, 7.0000, 2, 'Km. Bdg. 55 + 900', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019010604BabakanTuruy.JPG', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000067, '22.095.061.0', 'Cijurang', -6.80579, 107.233, 9.0000, 7.0000, 2, 'Km. Bdg. 53 + 210', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', '', '10082019010336Jurang.jpg', 'SPP CIANJUR 1', 'jb1', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000068, '22.202.001.0', 'CIBUNAR', -6.3529, 106.558, 14.0000, 7.0000, 1, '56+400 - 56+414', 'JL. MOCH. TOHA (PARUNG PANJANG)', '', '09082019235021cibunar.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000069, '22.202.003.0', 'LEBAKWANGI', -6.4311, 106.556, 13.0000, 6.0000, 1, '66+800 - 66+813', 'PARUNG PANJANG - BUNAR', '', '10082019000538lebakwangi.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000070, '22.202.004.0', 'CIBUNGUR', -6.42961, 106.548, 4.0000, 7.0000, 1, '67+200 - 67+205', 'PARUNG PANJANG - BUNAR', '', '10082019001828cibungur.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000071, '22.202.005.0', 'CIMANTUK', -6.4284, 106.541, 11.0000, 6.0000, 1, '67+700 - 67+712', 'PARUNG PANJANG - BUNAR', '', '10082019002030cimatuk.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000072, '22.202.007.0', 'CICAREUHEUN', -6.4376, 106.521, 11.0000, 6.0000, 1, '71+150 - 71+162', 'PARUNG PANJANG - BUNAR', '', '10082019002339Cicareuheun.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000073, '22.202.009.0', 'CIBEDENG', -6.5016, 106.506, 8.0000, 6.0000, 1, '79+400 - 79+408', 'PARUNG PANJANG - BUNAR', '', '10082019002853Cibedeng.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000074, '22.202.010.0', 'CIKALONG', -6.50621, 106.506, 18.0000, 6.0000, 1, '79+950 - 79+968', 'PARUNG PANJANG - BUNAR', '', '10082019003108Cikalong.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000075, '22.202.011.0', 'TOGE ', -6.5192, 106.499, 13.0000, 6.0000, 1, '80+600 - 80+613', 'PARUNG PANJANG - BUNAR', '', '10082019003231Toge.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000076, '22.202.012.0', 'KADAKA', -6.5192, 106.499, 22.0000, 6.0000, 2, '81+870 - 81+892', 'PARUNG PANJANG - BUNAR', '', '10082019003350Kadaka.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000077, '22.203.002.0', 'ALAS TUA', -6.3802, 106.69, 4.0000, 7.0000, 1, '52+675 - 52+679', 'BTS. TANGGERANG/BOGOR - PARUNG', '', '09082019233125Alastua.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000078, '22.215.001.0', 'CIKUMPA', -6.408, 106.833, 6.0000, 7.0000, 1, '40+780 - 40+786', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', '', '09082019215033Cikumpa.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000079, '22.217.001.0', 'KEDEP (CILEUNGSI)', -6.4539, 106.925, 91.0000, 11.0000, 1, '62+220 - 62+311', 'CILEUNGSI - CIBINONG (CITEUREUP)', '', '09082019143257Kedep.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000080, '22.217.002.0', 'GUNUNG PUTRI', -6.47124, 106.888, 12.0000, 13.0000, 1, '68+430 - 68+442', 'JL. MAYOR OKING (CITEUREUP)', '', '09082019150857GunungPutri.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000081, '22.217.003.0', 'CIKEAS', -6.48067, 106.883, 6.0000, 10.0000, 1, '69+520 - 69+526', 'JL. MAYOR OKING (CITEUREUP)', '', '09082019143729Cikeas.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000082, '22.217.004.A', 'CIRIUNG A', -6.48063, 106.868, 20.0000, 10.0000, 1, '72+330 - 72+350', 'JL. MAYOR OKING (CIBINONG)', '', '09082019150929CiriungA.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000083, '22.217.004.B', 'CIRIUNG B', -6.48057, 106.868, 20.0000, 10.0000, 1, '72+330 - 72+350', 'JL. MAYOR OKING (CIBINONG)', '', '09082019150958CiriungB.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000084, '22.217.005.A', 'CIBINONG A', -6.4659, 106.856, 18.0000, 11.0000, 1, '74+950 - 74+969', 'JL. MAYOR OKING (CIBINONG)', '', '09082019150616CibinongA.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000085, '22.217.005.B', 'CIBINONG B', -6.46589, 106.856, 18.0000, 11.0000, 1, '74+950 - 74+969', 'JL. MAYOR OKING (CIBINONG)', '', '09082019150818CibinongB.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000086, '22.230.001.A', 'TEGAL GEDE A', -6.30212, 107.145, 85.0000, 7.0000, 1, '56 + 750', 'CIBARUSAH - MEKARMUKTI', '', '09082019202800tegalgede.a.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000087, '22.230.001.B22.230.001.B', 'TEGAL GEDE B', -6.30239, 107.145, 40.0000, 7.0000, 1, '56 + 750', 'CIBARUSAH - MEKARMUKTI', '', '09082019203204tegalgede.b.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000088, '22.230.002.0', 'WARUNG BELUT', -6.39017, 107.104, 9.0000, 6.0000, 2, '68 + 500', 'CIBARUSAH - MEKARMUKTI', '', '09082019091941warungbelut.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000089, '22.230.003.0', 'CIKUTUL I', -6.42513, 107.086, 7.0000, 9.0000, 1, '73 + 100', 'CIBARUSAH - MEKARMUKTI', '', '09082019092142cikutul1.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000090, '22.230.004.0', 'CIKUTUL II', -6.42589, 107.086, 8.0000, 6.0000, 1, '73 + 200', 'CIBARUSAH - MEKARMUKTI', '', '09082019092308cikutul2.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000091, '22.230.005.0', 'CIBARUSAH I', -6.43699, 107.074, 7.0000, 9.0000, 1, '75 + 400', 'CIBARUSAH - MEKARMUKTI', '', '09082019092435cibarusah1.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000092, '22.230.006.0', 'CIBARUSAH II', -6.43643, 107.073, 6.0000, 8.0000, 1, '75 + 600', 'CIBARUSAH - MEKARMUKTI', '', '09082019093123cibarusah2.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000093, '22.231.007.0', 'CIPATUJAH', -6.43711, 107.065, 25.0000, 6.0000, 1, '76+980 - 77+005', 'CIBARUSAH - CIBUCIL', '', '09082019183314Cipatujah.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000094, '22.231.008.0', 'AL - MUKMIN', -6.43854, 107.063, 4.0000, 6.0000, 1, '77+210 - 77+214', 'CIBARUSAH - CIBUCIL', '', '09082019183808AlMukmin.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000095, '22.233.000.5', 'CILEUNGSI', -6.40679, 106.969, 2.0000, 13.0000, 1, '53+770 - 53+773', 'CILEUNGSI - CIBEET', '', '09082019145414Cileungsi.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000096, '22.233.001.0', 'CIPICUNG', -6.40756, 106.997, 3.0000, 12.0000, 1, '57+100 - 57+103', 'CILEUNGSI - CIBEET', '', '09082019150216Cipicung.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000097, '22.233.002.0', 'GALUR', -6.40944, 107.005, 4.0000, 11.0000, 1, '58+620 - 58+624', 'CILEUNGSI - CIBEET', '', '09082019151553Galur.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000098, '22.233.003.0', 'TUNGGILIS 1', -6.41817, 107.029, 2.0000, 7.0000, 1, '61+150 - 61+153', 'CILEUNGSI - CIBEET', '', '09082019151757Tungilis1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000099, '22.233.004.0', 'TUNGGILIS 2', -6.41973, 107.031, 3.0000, 7.0000, 1, '61+470 - 61+474', 'CILEUNGSI - CIBEET', '', '09082019151933Tungilis2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000100, '22.233.005.0', 'CIBARENGKOK', -6.43051, 107.04, 8.0000, 7.0000, 4, '63+000 - 63+009', 'CILEUNGSI - CIBEET', '', '09082019152053Cibarengkok.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000101, '22.233.006.0', 'CIPEUCANG', -6.43126, 107.041, 4.0000, 7.0000, 1, '63+170 - 63+174', 'CILEUNGSI - CIBEET', '', '09082019152536Cipeucang1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000102, '22.233.007.0', 'CIKARANG', -6.43646, 107.053, 24.0000, 7.0000, 1, '64+750 - 64+775', 'CILEUNGSI - CIBEET', '', '09082019153000Cikarang.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000103, '22.233.008.0', 'CIGELABAN', -6.46135, 107.066, 4.0000, 7.0000, 1, '67+970 - 67+974', 'CILEUNGSI - CIBEET', '', '09082019153131Cigelaban.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000104, '22.233.009.0', 'CIPATUJAH 1', -6.46932, 107.07, 42.0000, 7.0000, 1, '69+100 - 69+143', 'CILEUNGSI - CIBEET', '', '09082019153328Cipatujah1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000105, '22.233.010.0', 'CIPATUJAH 2', -6.47421, 107.073, 10.0000, 7.0000, 1, '69+770 - 69+780', 'CILEUNGSI - CIBEET', '', '09082019153808Cipatujah2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000106, '22.233.011.0', 'CIERENG', -6.47447, 107.073, 9.0000, 8.0000, 1, '69+790 - 69+799', 'CILEUNGSI - CIBEET', '', '09082019153929Ciereng.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000107, '22.233.012.0', 'CIPAMINGKIS', -6.47939, 107.075, 90.0000, 7.0000, 2, '70+800 - 70+890', 'CILEUNGSI - CIBEET', '', '09082019154059Cipamingkis.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000108, '22.233.013.0', 'CIPAEH', -6.47305, 107.08, 23.0000, 7.0000, 1, '71+620 - 71+643', 'CILEUNGSI - CIBEET', '', '09082019154226Cipaeh.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000109, '22.233.014.0', 'MENGKER 1', -6.47205, 107.082, 8.0000, 7.0000, 1, '71+770 - 71+779', 'CILEUNGSI - CIBEET', '', '09082019160832Mengker1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000110, '22.233.015.0', 'CIHIEUM 1', -6.47262, 107.085, 5.0000, 7.0000, 1, '72+200 - 72+206', 'CILEUNGSI - CIBEET', '', '09082019161124Cihieum1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000111, '22.233.016.0', 'CIHIEUM 2', -6.4726, 107.086, 6.0000, 7.0000, 1, '72+350 - 72+356', 'CILEUNGSI - CIBEET', '', '09082019161411Cihieum2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000112, '22.233.017.0', 'CITANGKURAK', -6.47789, 107.099, 3.0000, 8.0000, 1, '73+990 - 73+993', 'CILEUNGSI - CIBEET', '', '09082019161615Citangkurak.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000113, '22.233.018.0', 'CIBERA', -6.47959, 107.102, 3.0000, 8.0000, 1, '74+320 - 74+323', 'CILEUNGSI - CIBEET', '', '09082019162052Cibera.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000114, '22.233.019.0', 'CIHOE', -6.48349, 107.105, 36.0000, 7.0000, 2, '74+920 - 74+957', 'CILEUNGSI - CIBEET', '', '09082019162232Cihoe.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000115, '22.233.020.0', 'CIRATEUN', -6.48797, 107.111, 1.0000, 7.0000, 1, '75+800 - 75+801', 'CILEUNGSI - CIBEET', '', '09082019162455Cirateun.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000116, '22.233.021.0', 'CIMERAK', -6.48937, 107.112, 1.0000, 7.0000, 1, '75+970 - 75+972', 'CILEUNGSI - CIBEET', '', '09082019162813Cimerak.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000117, '22.233.022.0', 'CIJUREY', -6.50091, 107.129, 11.0000, 7.0000, 1, '78+500 - 78+511', 'CILEUNGSI - CIBEET', '', '09082019180145Cijurey.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000118, '22.233.023.0', 'CIKUMPENI', -6.51063, 107.129, 2.0000, 7.0000, 1, '79+750 - 79+753', 'CILEUNGSI - CIBEET', '', '09082019180556Cikumpeni.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000119, '22.233.024.0', 'CISERO 1', -6.52767, 107.133, 14.0000, 7.0000, 1, '82+050 - 82+064', 'CILEUNGSI - CIBEET', '', '09082019184526Cisero1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000120, '22.233.025.0', 'CISERO 2', -6.53068, 107.135, 2.0000, 7.0000, 1, '82+400 - 82+402', 'CILEUNGSI - CIBEET', '', '09082019184718Cisero2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000121, '22.233.026.0', 'CISERO 3', -6.53292, 107.136, 2.0000, 7.0000, 1, '82+750 - 82+752', 'CILEUNGSI - CIBEET', '', '09082019185052Cisero3.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000122, '22.233.027.0', 'CIBAYAWAK', -6.53336, 107.137, 6.0000, 7.0000, 1, '82+930 - 82+936', 'CILEUNGSI - CIBEET', '', '09082019185407Cibayawak.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000123, '22.233.029.0', 'BAKANLOA', -6.54086, 107.141, 2.0000, 7.0000, 1, '83+920 - 83+922', 'CILEUNGSI - CIBEET', '', '09082019185816Bakanloa.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000124, '22.233.030.0', 'PUGUR', -6.54215, 107.142, 2.0000, 7.0000, 1, '84+100 - 84+102', 'CILEUNGSI - CIBEET', '', '09082019190142Pugur.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000125, '22.233.031.0', 'DOGOL 1', -6.54611, 107.142, 2.0000, 7.0000, 1, '84+550 - 84+552', 'CILEUNGSI - CIBEET', '', '09082019190401Dogol1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000126, '22.233.032.0', 'DOGOL 2', -6.54748, 107.142, 2.0000, 7.0000, 1, '85+750 - 85+752', 'CILEUNGSI - CIBEET', '', '09082019191152Dogol2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000127, '22.233.033.0', 'CISUTA', -6.55461, 107.142, 2.0000, 7.0000, 1, '85+550 - 85+552', 'CILEUNGSI - CIBEET', '', '09082019190733Cisuta.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000128, '22.233.034.0', 'CIBATUTIGA', -6.55694, 107.142, 2.0000, 7.0000, 1, '85+820 - 85+823', 'CILEUNGSI - CIBEET', '', '09082019191328Cibatutiga.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000129, '22.233.035.0', 'CISEUPAN', -6.55716, 107.14, 5.0000, 7.0000, 1, '86+010 - 86+015', 'CILEUNGSI - CIBEET', '', '09082019191600Ciseupan.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000130, '22.233.036.0', 'CIPEUCANG 2', -6.56761, 107.14, 6.0000, 7.0000, 1, '87+060 - 87+067', 'CILEUNGSI - CIBEET', '', '09082019191811Cipeucang2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000131, '22.233.037.0', 'CIBUNGUR', -6.56972, 107.141, 3.0000, 7.0000, 1, '87+220 - 87+223', 'CILEUNGSI - CIBEET', '', '09082019192031Cibungkur.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000132, '22.233.038.0', 'CIBADAK', -6.57112, 107.141, 61.0000, 7.0000, 1, '87+420 - 87+482', 'CILEUNGSI - CIBEET', '', '09082019192310Cibadak.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000133, '22.233.039.0', 'CILIMUS', -6.57303, 107.143, 5.0000, 6.0000, 1, '87+950 - 87+955', 'CILEUNGSI - CIBEET', '', '09082019192437Cilimus.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000134, '22.233.040.0', 'CISODONG', -6.57805, 107.144, 2.0000, 7.0000, 1, '88+420 - 88+423', 'CILEUNGSI - CIBEET', '', '09082019192632Cisodong.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000135, '22.233.041.0', 'CIRAWA BANGKE 1', -6.58194, 107.145, 2.0000, 7.0000, 1, '89+050 - 89+053', 'CILEUNGSI - CIBEET', '', '09082019192804CirawaBangke1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000136, '22.233.042.0', 'CIRAWA BANGKE 2', -6.58579, 107.146, 3.0000, 7.0000, 1, '89+420 - 89+423', 'CILEUNGSI - CIBEET', '', '09082019192935CirawaBangke2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000137, '22.233.043.0', 'CIKANERE', -6.59123, 107.146, 2.0000, 7.0000, 1, '90+100 - 90+103', 'CILEUNGSI - CIBEET', '', '09082019193145Cikanere.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000138, '22.233.044.0', 'PASIR TANJUNG', -6.5932, 107.145, 2.0000, 7.0000, 1, '90+350 - 90+353', 'CILEUNGSI - CIBEET', '', '09082019193310PasirTanjung.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000139, '22.233.045.0', 'CILAMBUR', -6.60407, -6.60407, 2.0000, 7.0000, 1, '91+650 - 91+652', 'CILEUNGSI - CIBEET', '', '09082019193440Cilambur.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000140, '22.233.046.0', 'SIRNASARI', -6.61401, 107.152, 2.0000, 7.0000, 1, '92+890 - 92+893', 'CILEUNGSI - CIBEET', '', '09082019193812Sirnasari.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000141, '22.233.047.0', 'GUNUNG BATU 1', -6.63053, 107.162, 2.0000, 7.0000, 1, '95+190 - 95+193', 'CILEUNGSI - CIBEET', '', '09082019194034GunungBatu1.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000142, '22.233.048.0', 'GUNUNG BATU 2', -6.63483, 107.167, 2.0000, 7.0000, 1, '96+220 - 96+222', 'CILEUNGSI - CIBEET', '', '09082019194532GunungBatu2.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000143, '22.233.049.0', 'CIORAY', -6.63288, 107.163, 5.0000, 7.0000, 1, '95+620 - 95+626', 'CILEUNGSI - CIBEET', '', '09082019194220Cioray.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000144, '22.233.050.0', 'GIRI JAYA', -6.64215, 107.167, 4.0000, 7.0000, 1, '97+290 - 97+295', 'CILEUNGSI - CIBEET', '', '09082019194747Girijaya.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000145, '22.233.051.0', 'CIBEET', -6.6456, 107.166, 62.0000, 7.0000, 1, '97+550 - 97+612', 'CILEUNGSI - CIBEET', '', '09082019194922Cibeet(cibeet).JPG', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000146, '22098543', 'CILUAR DUA', -6.4749, 106.824, 20.0000, 8.0000, 1, '51+900 - 51+920', 'PONDOK RAJEG - HARAPAN JAYA (CIBINONG)', '', '09082019224747CiluarDua.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000147, '2209863', 'LEUWICERI', -6.4739, 106.507, 3.0000, 6.0000, 1, '76+100 - 76+103', 'PARUNG PANJANG - BUNAR', '', '10082019002509Leuwiceuri.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000148, '22098741', 'CIBOLANG', -6.48459, 106.508, 21.0000, 6.0000, 1, '77+400 - 77+421', 'PARUNG PANJANG - BUNAR', '', '10082019002734Cibolang.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000149, '22123421', 'CIJAMBE (BOX CULVERT)', -6.35155, 107.12, 10.0000, 10.0000, 1, '63 + 575', 'CIBARUSAH - MEKARMUKTI', '', '09082019090736cijambe.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000150, '22123451', 'CIBINONG', -7.32452, 107.129, 2.0000, 21.0000, 1, '150+400 - 150+402,50', 'SUKANAGARA - SINDANGBARANG', '', '08082019231946CIBINONG.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000151, '22123452', 'KALI BEKASI', -6.23847, 107.002, 70.0000, 7.0000, 3, '32 + 800', 'JL. Ir. H. JUANDA (BEKASI)', '', '09082019090305kalibekasi.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000152, '22123454', 'KALI PONCOL', -6.24939, 107, 11.0000, 10.0000, 1, '34 + 380', 'JL. KARTINI (BEKASI)', '', '09082019090059kaliponcol.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000153, '2234212', 'REL KERETA API', -6.60887, 106.797, 5.0000, 9.0000, 1, '60+750 - 60+755', 'JL. PAHLAWAN (BOGOR)', '', '09082019140428RelKeretaApi.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000154, '2234522', 'CIBALOK', -6.6061, 106.795, 5.0000, 12.0000, 1, '60+500 - 60+505', 'JL. EMPANG - R. SALEH SARIEF BUSTAMAN (BOGOR)', '', '09082019140249Cibalok.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000155, '223467', 'DEWI SARTIKA', -6.3998, 106.819, 14.0000, 6.0000, 1, '43+900 - 43+914', 'JL. DEWI SARTIKA (DEPOK)', '', '09082019141416DewiSartika(Depok).jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000156, '2234987', ' KEDUNG BADAK', -6.5651, 106.802, 5.0000, 6.0000, 1, '55+125 - 55+130', 'JL. KEBON PEDES (BOGOR)', '', '09082019135934KedungBadak.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000157, '2236514', 'JL. PEMUDA', -6.3828, -106.686, 5.0000, 7.0000, 1, '51+975 - 51+980', 'BTS. TANGGERANG/BOGOR - PARUNG', '', '09082019233613Jl.Pemuda.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000158, '2236754', 'CIBULUH', -6.5318, 106.809, 14.0000, 14.0000, 1, '59+700 - 59+714', 'JL. HARAPAN JAYA (CIBINONG) - BTS. KOTA BOGOR (KEDUNGHALANG)', '', '09082019232323Cilbuluh.jpeg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000159, '2239865', 'CIMANCERI', -6.3529, 106.558, 29.0000, 7.0000, 1, '63+855 - 63+884', 'JL. MOCH. TOHA (PARUNG PANJANG)', '', '10082019003740cimanceri.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000160, '2243123', 'DOGOL 3', -6.549, 107.142, 1.0000, 7.0000, 1, '84+900 - 84+902', 'CILEUNGSI - CIBEET', '', '09082019190859Dogol3.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000161, '2245231', 'JEMBATAN METLAND', -6.40658, 106.977, 3.0000, 11.0000, 1, '54+738 - 54+741', 'CILEUNGSI - CIBEET', '', '09082019145840Metland.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000162, '2245321', 'CIPAKANCILAN', -6.62351, 106.812, 6.0000, 10.0000, 1, '63+600 - 63+606', 'JL. LAWANG GINTUNG (BOGOR)', '', '09082019140757Cipakancilan.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000163, '22456123', 'CISAEP', -7.29709, 107.288, 7.5000, 4.5000, 1, '76+425 - 76+432,50', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', '', '17082019180519CISAEP.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000164, '2245700', 'CIMENGA', -7.28764, 107.288, 9.0000, 3.5000, 1, '73+350 - 73+359 ', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', '', '17082019075018CIMENGA.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000165, '22463424', 'CIGUGUR', -7.29646, 107.288, 18.0000, 4.5000, 1, '76+350 - 76+368', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', '', '17082019180236CIGUGUR.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000166, '22465981', 'TEGAL GEDE C', -6.30203, 107.145, 40.0000, 6.0000, 1, '56 + 750', 'CIBARUSAH - MEKARMUKTI', '', '09082019203459tegalgede.c.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000167, '2249876', 'SIDAMANIK', -6.4276, 106.557, 5.0000, 6.0000, 1, '66+200 - 66+205', 'PARUNG PANJANG - BUNAR', '', '10082019000024sidamanik.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000168, '2254743', 'TOL CIKARANG', -6.31477, 107.141, 8.0000, 2.0000, 1, '58 + 400', 'CIBARUSAH - MEKARMUKTI', '', '10082019004110tolcikarang.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000169, '2256981', 'CIBALOK 2', -6.6203, 106.814, 6.0000, 6.0000, 1, '64+150 - 64+156', 'JL. LAWANG GINTUNG (BOGOR)', '', '09082019213819Cibalok2.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000170, '2265316', 'CIBEET', -6.48582, 107.174, 73.0000, 7.0000, 2, '85+200 - 85+273', 'CARIU - JAGATAMU/BAGED (BTS. KAB. BOGOR/KARAWANG)', '', '09082019184803Cibeet(Cariu).jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000171, '2267543', 'CILUAR SATU', -6.47506, 106.82, 10.0000, 8.0000, 1, '52+825 - 52+835', 'PONDOK RAJEG - HARAPAN JAYA (CIBINONG)', '', '09082019232009CiluarSatu.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000172, '2267831', 'KALIMULYA', -6.4444, 106.823, 4.0000, 6.0000, 1, '46+000 - 46+004', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', '', '09082019215420Kalimulya.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000173, '22678321', 'CARIU', -6.50078, 107.134, 5.0000, 7.0000, 1, '79+150 - 79+155', 'CARIU - JAGATAMU/BAGED (BTS. KAB. BOGOR/KARAWANG)', '', '09082019184058Cariu.jpg', 'SPP BOGOR 2', 'jb4', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000174, '22765321', 'FLY OVER DRYPORT', -6.27443, 107.15, 0.0000, 0.0000, 0, '58 + 620', 'JALAN AKSES CIKARANG DRYPORT', '', '09082019212015flyoverdyport.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000175, '22765412', 'FLY OVER CIKARANG', -6.30992, 107.144, 0.0000, 0.0000, 0, '57 + 725', 'CIBARUSAH - MEKARMUKTI', '', '09082019204654flyovercikarang.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000176, '2287534', 'TOL CIKARANG', -6.31477, 107.141, 8.0000, 2.0000, 1, '58 + 400', 'CIBARUSAH - MEKARMUKTI', '', '10082019004339tolcikarang.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000177, '22980765', 'CILIWUNG II', -6.4009, 106.831, 63.0000, 7.0000, 4, '38+830 - 38+893', 'JL. SILIWANGI (DEPOK)', '', '09082019214116Ciliwung.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000178, '22987021', 'SIMADU', -6.4298, 106.527, 10.0000, 10.0000, 1, '70+200 - 70+210', 'PARUNG PANJANG - BUNAR', '', '10082019002200simadu.jpg', 'SPP BOGOR 1', 'jb3', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000179, '22987543', 'DRYPORT', -6.27569, 107.156, 0.0000, 0.0000, 0, '58 + 200', 'JALAN AKSES CIKARANG DRYPORT', '', '09082019211630dryport.jpg', 'SPP BEKASI', 'jb5', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000180, '2299765', 'CIREUNDEU', -7.29439, 107.286, 5.0000, 4.0000, 1, '75+700 - 75+705', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', '', '17082019175726CIREUNDEU.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000181, '2376540', 'CIJENGKOL', -7.31205, 107.274, 3.3000, 4.5000, 1, '80+250 - 80+253,30', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', '', '17082019180759CIJENGKOL.jpg', 'SPP CIANJUR 2', 'jb2', 'uptd1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000182, '001', 'CIBAREHONG', -7.33978, 106.567, 17.0000, 6.0000, 1, '208+700', 'Surade - Ujung Genteng', '', 'APK_J_09052019065657IMG-20190509-WA0080.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000183, '002', 'CIKARANG', -7.37617, 106.503, 150.0000, 6.0000, 1, '217+750', 'Surade - Ujung Genteng', '', 'APK_J_09052019070323IMG-20190509-WA0101.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000184, '003', 'CIBANTENG', -7.35969, 106.454, 11.5000, 9.0000, 0, '223+410', 'Surade - Ujung Genteng', '', 'APK_J_09052019070709IMG-20190509-WA0105.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000185, '004', 'CIKODEHEL', -7.35722, 106.45, 18.5000, 10.0000, 0, '224+300', 'Surade - Ujung Genteng', '', 'APK_J_09052019071145IMG-20190509-WA0112.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000186, '005', 'CITARATE', -7.35418, 106.439, 20.0000, 8.0000, 0, '225+500', 'Surade - Ujung Genteng', '', 'APK_J_09052019071431IMG-20190509-WA0113.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000187, '006', 'WALURAN MANDIRI', -7.20234, 106.611, 8.0000, 6.0000, 0, '187+700', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019081334IMG-20190509-WA0059.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000188, '007', 'CI CENTONG', -7.21408, 106.598, 3.5000, 6.5000, 0, '190+100', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019080911IMG-20190509-WA0063.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000189, '008', 'WATES', -7.21926, 106.59, 3.5000, 7.5000, 0, '192+300', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019081606IMG-20190509-WA0079.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000190, '009', 'CI SELANG', -7.18682, 106.465, 32.5000, 0.0000, 0, '219+700', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019081810IMG-20190509-WA0162.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000191, '010', 'CI LETUH', -7.23676, 106.529, 50.0000, 5.0000, 0, '202+150', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019150842IMG-20190509-WA0245.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000192, '0102', 'CI PAWENANG 1', -6.93556, 106.471, 0.0000, 0.0000, 0, '168+170', 'SP.KARANGHAWU-BTS.BANTEN(CIKOTOK)', '', '270820192323091566275998720.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000193, '011', 'TAMAN JAYA', -7.23326, 106.519, 10.0000, 6.0000, 0, '204+600', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019151100IMG-20190509-WA0249.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000194, '012', 'CI KONDANG', -7.23231, 106.489, 14.0000, 6.0000, 0, '212+150', 'Waluran-Malereng-Palangpang', '', 'APK_J_09052019153724IMG-20190509-WA0256.jpg', 'SPP SUKABUMI 4', 'jb4', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000195, '017', 'Jembatan Cijambe', -6.93853, 106.908, 40.3400, 7.6000, 1, '101+900', 'Jl. Lingkar Sukabumi (Cibolang - Pelabuhan II) 193-13', 'Kondisi Baik', '280820191438181.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000196, '018', 'Jembatan Cigunung', -6.93161, 106.901, 40.0000, 7.6000, 1, '102+800', 'JL.LINGKAR SUKABUMI(CIBOLANG - PELABUHANII) 193-12', 'Kondisi Baik', '2808201914403292492038-7b63-4734-88d7-6e623152e0da.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000197, '020', 'Jembatan Cipelang', -6.9408, 106.909, 27.1000, 7.9000, 1, '99+500', 'Jl. Sejahtera', 'Kondisi Sedang', '290820192138001.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000198, '026', 'Cibubuay II', -7.22509, 106.843, 6.1200, 9.4000, 1, '155+400', 'Sagaranten - Tegal Buleud', '', 'cibubuay2.jpg', 'SPP SUKABUMI 3', 'jb3', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000199, '027', 'Cilengka 1 (Ciguyang)', -7.24333, 106.834, 10.1700, 9.7000, 2, '158+200', 'Sagaranten - Tegalbuleud', '', 'cilengka.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000200, '028', 'Jembatan Cisukamukti', -6.89113, 106.655, 4.1000, 9.0000, 1, 'Km. Bdg 129 + 320', 'Jl. Cibadak - Cikidang - Pelabuhanratu', 'Baik', '29082019162658Jembatan Cisukamukti.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000201, '030', 'Jembatan Pasir Larangan', -6.88552, 106.661, 5.3000, 5.4000, 1, 'Km. Bdg 128 + 200', 'Jl. Cibadak - Cikidang - Pelabuhanratu', 'Sedang', '29082019162722Jembatan Pasir Larangan.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000202, '031', 'Cimangir', -7.21905, 106.88, 7.6400, 8.0000, 1, '149+112', 'Sagaranten-Tegalbuleud', '-', 'Cimangir.jpg', 'SPP SUKABUMI 3', 'jb3', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000203, '032', 'Ciseureuh', -7.21861, 106.877, 3.7000, 8.8000, 1, '149+400', 'Sagaranten-Tegalbuleud', '-', 'Ciseureuh.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000204, '033', 'Cipicung', -7.21801, 8679.38, 8.3000, 8.3500, 1, '150+800', 'Sagaranten-Tegalbuleud', '-', 'Cipicung.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000205, '034', 'Cibubuay', -7.21723, 106.856, 5.3500, 8.4600, 1, '152+400', 'Sagaranten-Tegalbuleud', '-', 'Cibubuay.jpg', 'SPP SUKABUMI 3', 'jb3', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000206, '035', 'Kiarakoneng', -7.24899, 106.838, 4.4300, 9.5000, 1, '159+500', 'Sagaranten-Tegalbuleud', '-', 'Kiarakoneng.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000207, '036', 'Cimanggu I', -7.26173, 106.836, 4.3000, 10.7000, 1, '159+800', 'Sagaranten-Tegalbuleud', '-', 'Cimanggu I.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000208, '037', 'Cigambrang', -7.26185, 106.836, 5.3000, 9.6000, 1, '160+975', 'Sagaranten-Tegalbuleud', '-', 'Cigambrang.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000209, '038', 'Cimanggu II', -7.27083, 106.835, 5.1000, 8.6000, 1, '162+200', 'Sagaranten-Tegalbuleud', '-', 'Cimanggu II.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000210, '039', 'Ciawi Tali', -7.30752, 106.836, 7.9700, 9.6000, 1, '167+800', 'Sagaranten-Tegalbuleud', '-', 'Ciawi Tali.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000211, '040', 'Cilengka ll (Cidolog)', -7.3152, 106.84, 11.5000, 9.8000, 1, '168+900', 'Sagaranten-Tegalbuleud', '-', 'Cilengka ll (Cidolog).jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000212, '041', 'Cihantap', -7.32514, 106.834, 4.7000, 9.0000, 1, '170+500', 'Sagaranten-Tegalbuleud', '-', 'Cihantap.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000213, '042', 'Cilangkap', -7.3324, 106.835, 9.4000, 9.0000, 1, '171+400', 'Sagaranten-Tegalbuleud', '-', 'Cilangkap.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000214, '043', 'Cipanawan', -7.33941, 106.83, 6.9000, 8.6000, 1, '172+800', 'Sagaranten-Tegalbuleud', '-', 'Cipanawan.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000215, '044', 'Cibeureum', -7.34153, 106.828, 25.7000, 9.1000, 3, '173+300', 'Sagaranten-Tegalbuleud', '-', 'Cibeureum.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000216, '045', 'Cinaringgul', -7.34826, 106.824, 11.6000, 9.0000, 1, '175+100', 'Sagaranten-Tegalbuleud', '-', 'Cinaringgul.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000217, '046', 'Cikukulu', -7.35554, 106.821, 16.7000, 9.1000, 1, '176+500', 'Sagaranten-Tegalbuleud', '-', 'Cikukulu.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000218, '047', 'Cisujen', -7.37338, 106.815, 26.0000, 8.9000, 1, '179+300', 'Sagaranten-Tegalbuleud', '-', 'Cisujen.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000219, '048', 'Cisentul', -7.38196, 106.809, 7.0000, 8.0000, 1, '180+300', 'Sagaranten-Tegalbuleud', '-', 'Cisentul.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000220, '049', 'Cilimus', -7.38699, 106.802, 9.1000, 6.7000, 2, '181+400', 'Sagaranten-Tegalbuleud', '-', 'Cilimus.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000221, '050', 'Cibangoak', -7.38843, 106.794, 25.3000, 9.6000, 1, '183+750', 'Sagaranten-Tegalbuleud', '-', 'Cibangoak.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000222, '051', 'Cipicung', -7.40441, 106.802, 9.8000, 9.0000, 1, '184+000', 'Sagaranten-Tegalbuleud', '-', 'Cipicung.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000223, '052', 'Ciganggeng', -7.41743, 106.778, 25.6000, 9.0000, 1, '191+800', 'Sagaranten-Tegalbuleud', '-', 'Ciganggeng.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000224, '053', 'CIPEUNDEUY-1', -6.96528, 106.875, 0.0000, 0.0000, 0, '102+716', 'SUKABUMI-CIKEMBAR', '', 'CIPEUNDEUY-1.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000225, '054', 'CIPEUNDEUY-2', -6.96667, 106.873, 0.0000, 0.0000, 0, '102+850', 'SUKABUMI-CIKEMBAR', '', 'CIPEUNDEUY-2.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000226, '055', 'CIBODAS', -6.97944, 106.838, 0.0000, 0.0000, 0, '107+180', 'SUKABUMI-CIKEMBAR', '', 'CIBODAS.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000227, '056', 'SAMPORA', -6.97833, 106.832, 0.0000, 0.0000, 0, '107+950', 'SUKABUMI-CIKEMBAR', '', 'SAMPORA.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000228, '057', 'CIBATU-A', -6.97556, 106.827, 0.0000, 0.0000, 0, '108+650', 'SUKABUMI-CIKEMBAR', '', 'CIBATU - A.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000229, '058', 'CIBATU-B', -6.97556, 106.827, 0.0000, 0.0000, 0, '108+650', 'SUKABUMI-CIKEMBAR', '', 'CIBATU - B.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000230, '059', 'CIKATE', -6.96889, 106.81, 0.0000, 0.0000, 0, '110+500', 'SUKABUMI-CIKEMBAR', '', 'CIKATE.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000231, '060', 'CIKEMBAR', -6.96333, 106.791, 0.0000, 0.0000, 0, '112+970', 'CIKEMBAR-CIKEMBANG', '', 'CIKEMBAR.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000232, '061', 'CIMANGGU', -6.95611, 106.77, 0.0000, 0.0000, 0, '115+550', 'CIKEMBAR-CIKEMBANG', '', 'CIMANGGU.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000233, '062', 'CIKATE', -6.96778, 106.793, 0.0000, 0.0000, 0, '113+300', 'CIKEMBAR-JP.TENGAH', '', ' CIKATE1.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000234, '063', 'CISEUPAN', -6.97889, 106.788, 0.0000, 0.0000, 0, '114+800', 'CIKEMBAR-JP.TENGAH', '', ' CISEUPAN.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000235, '064', 'CIBATU', -6.99778, 106.799, 0.0000, 0.0000, 0, '118+900', 'CIKEMBAR-JP.TENGAH', '', ' CIBATU.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000236, '065', 'CIMANDIRI', -7.00528, 106.797, 0.0000, 0.0000, 0, '120+150', 'JP.TENGAH-KIARADUA', '', ' CIMANDIRI.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000237, '066', 'CILAWANG', -7.05139, 106.801, 0.0000, 0.0000, 0, '129+020', 'JP.TENGAH-KIARADUA', '', 'CILAWANG.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000238, '067', 'JELEBUD', -7.05806, 106.8, 0.0000, 0.0000, 0, '129+950', 'JP.TENGAH-KIARADUA', '', 'JELEBUD.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000239, '068', 'CIKURUTUG', -7.0902, 106.766, 0.0000, 0.0000, 0, '137+500', 'JP.TENGAH-KIARADUA', '', 'CIKURUTUG.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000240, '069', 'CIMAPAG', -7.11678, 106.756, 0.0000, 0.0000, 0, '141+950', 'JP.TENGAH-KIARADUA', '', 'CIMAPAG.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000241, '070', 'CIKALER', -7.11529, 106.743, 0.0000, 0.0000, 0, '145+850', 'JP.TENGAH-KIARADUA', '', 'CIKALER.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000242, '071', 'CIMENYAN', -7.13299, 106.694, 0.0000, 0.0000, 0, '152+100', 'JP.TENGAH-KIARADUA', '', 'CIMENYAN.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000243, '072', 'BOJONG TUGU', -7.12646, 106.631, 0.0000, 0.0000, 0, '162+914', 'JP.TENGAH-KIARADUA', '', 'BOJONGTUGU.jpg', 'SPP SUKABUMI 2', 'jb2', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000244, '073', 'CIBUTUN', -7.05463, 106.547, 12.0000, 9.0000, 0, '157 + 584', 'Sp3.Loji (tegalnyampai) - Cibutun', '', 'CIBUTUN.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000245, '074', 'CISEUREUH', -7.05963, 106.54, 40.0000, 3.5000, 0, '158 + 630', 'Sp3.Loji (tegalnyampai) - Cibutun', '', 'CISEUREUH.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000246, '075', 'CISANTRI', -7.07111, 106.529, 4.0000, 6.0000, 0, '160 + 502', 'Sp3.Loji (tegalnyampai) - Cibutun', '', 'CISANTRI.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000247, '076', 'CIBUBUAY', -7.07922, 106.525, 12.0000, 9.0000, 0, '161 + 600', 'Cibutun - Balewer', '', 'CIBUBUAY5.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000248, '077', 'CIHAUR', -7.08076, 106.525, 12.0000, 9.0000, 0, '161 + 784', 'Cibutun - Balewer', '', 'CIHAUR.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000249, '078', 'CISAAR', -7.10338, 106.497, 60.0000, 9.0000, 0, '166 + 600', 'Cibutun - Balewer', '', 'CISAAR.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000250, '079', 'SAPARANTU', -7.12311, 106.479, 12.0000, 9.0000, 0, '171 + 683', 'Cibutun - Balewer', '', 'SAPARANTU.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000251, '080', 'CIKEUEUS', -7.13907, 106.483, 8.5000, 9.0000, 0, '174 + 680', 'Cibutun - Balewer', '', 'CIKEUEUS.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000252, '081', 'CINARINGUL', -7.16292, 106.468, 12.0000, 9.0000, 0, '180 + 780', 'Cibutun - Balewer', '', 'CINARINGUL.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000253, '082', 'PALANGPANG', -7.18803, 106.456, 8.0000, 3.0000, 0, '221 + 650', 'Palangpang-Puncak Darma', '', 'PALANGPANG.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000254, '083', 'CIMARINJUNG-2', -7.17353, 106.469, 2.5000, 10.0000, 0, '223 + 950 ', 'Palangpang-Puncak Darma', '', 'CIMARINJUNG-2.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000255, '084', 'CIMARINJUNG ', -7.16753, 106.477, 20.0000, 6.0000, 0, '225 + 800', 'Palangpang-Puncak Darma', '', 'CIMARINJUNG .jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000256, '101', 'CI PANENGAH 1', -6.93556, 106.471, 10.8200, 0.0000, 0, '', 'SP.KARANGHAWU-BTS.BANTEN(CIKOTOK)', '', '270820192309011566275998720.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000257, '102', 'CIKELAT', -6.90553, 106.467, 0.0000, 0.0000, 0, '172+400', 'SP.KARANGHAWU-BTS.BANTEN(CIKOTOK)', '', '270820192316531566277140844.jpg', 'SPP SUKABUMI 5', 'jb5', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000258, '22-04-001', 'Jembatan Cijagaraksa', -6.94654, 106.935, 5.3000, 6.1000, 1, 'Km. Bdg 97+384', 'Jalan Raya Baros', 'Kondisi Baik', '280820191410141.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000259, '22-04-002', 'Jembatan Cibeureum', -6.96329, 106.936, 10.0000, 5.8000, 2, 'Km. Bdg 99+420', 'Jalan Raya Baros', 'Kondisi Baik', '280820191413041.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000260, '22-04-003', 'Jembatan Cibaros', -6.96607, 106.941, 3.0000, 10.5000, 1, 'Km. Bdg 100+160', 'Jalan Raya Baros', 'Kondisi Baik', '280820191415401.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000261, '22-04-004', 'Jembatan Cibeureum I', -6.95342, 106.949, 3.0000, 12.5000, 1, 'Km. Bdg 94+800', 'Jalan Sarasa (Sukabumi)', 'Kondisi Baik', '280820191419181.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000262, '22-04-005', 'Jembatan Cibeureum II', -6.95206, 106.947, 3.0000, 10.5000, 1, 'Km. Bdg 95+225', 'Jalan Garuda (Sukabumi)', 'Kondisi Sedang', '280820191420291.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000263, '22-04-006', 'Jembatan Cibeureum III', -6.95054, 106.948, 3.8000, 10.5000, 1, 'Km. Bdg 95+540', 'Jalan Garuda (Sukabumi)', 'Kondisi Baik', '280820191422161.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000264, '22-04-007', 'Jembatan Sindang Palay', -6.95687, 106.949, 4.8000, 11.0000, 1, 'Km. Bdg 95+570', 'Jalan Garuda (Sukabumi)', 'Kondisi Sedang', '28082019142345Jembatan Sindang Palay.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000265, '22-04-008', 'Jembatan Cisuda', -6.94976, 106.935, 27.0000, 15.6000, 1, 'Km. Bdg 97+200', 'Jalan Lingkar Sukabumi (Baros - Jl. Pembangunan)', 'Kondisi Baik', '290820192136222.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000266, '22-04-009', 'Jembatan Rawa Bangke', -6.94927, 106.918, 21.7000, 14.0000, 1, 'Km. Bdg 99+500', 'Jalan Lingkar Sukabumi (Cibolang - Pelabuhan II)', 'Kondisi Baik', '280820191425291.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000267, '22-04-013', 'Jembatan Cibatu', -6.91138, 106.877, 40.5500, 7.6000, 1, 'Km. Bdg 105+300', 'Jalan Lingkar Sukabumi (Cibolang - Pelabuhan II)', 'Kondisi Baik', '28082019144602b1adc90b-747d-4166-a524-b882a6233855.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000268, '22-04-015', 'Jembatan Cijambe', -6.93713, 106.908, 10.4000, 8.0000, 1, 'Km. Bdg 99+900', 'Jalan Cemerlang Sukabumi', 'Kondisi Sedang', '280820191427141.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000269, '22-04-016', 'Jembatan Tegal Wangi', -6.91633, 106.904, 10.4000, 8.0000, 1, 'Km. Bdg 102+950', 'Jalan Cemerlang Sukabumi', 'Kondisi Sedang', '280820191428341.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000270, '22-04-017', 'Jembatan Pesantren', -6.91572, 106.904, 3.0000, 8.0000, 1, 'Km. Bdg 103+000', 'Jalan Cemerlang Sukabumi', 'Kondisi Sedang', '280820191431221.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000271, '22-142-003', 'Jembatan Cikidang', -6.89409, 106.651, 12.0000, 9.0000, 1, 'Km. Bdg 129+850', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162043Jembatan Cikidang.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000272, '22-142-004', 'Jembatan Citarik', -6.91385, 106.612, 46.0000, 6.0000, 1, 'Km. Bdg 137+360', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Sedang', '29082019162242Jembatan Citarik.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000273, '22-142-005', 'Jembatan Cimantaja', -6.91587, 106.61, 14.1000, 11.6000, 1, 'Km. Bdg 137+711', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162258Jembatan Cimanataja.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000274, '22-142-006', 'Jembata Cibatu', -6.91615, 106.609, 5.1000, 10.0000, 1, 'Km. Bdg 137+965', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162322Jembatan Cibatu.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000275, '22-142-007', 'Jembatan Ciranji', -6.92081, 106.603, 3.9000, 10.0000, 1, 'Km. Bdg 139+211', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162459Jembatan Ciranji.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000276, '22-142-008', 'Jembatan Sampora', -6.93698, 106.6, 5.6000, 5.6000, 1, 'Km. Bdg 141+420', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162401Jembatan Sampora.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000277, '22-142-009', 'Jembatan Cipeuteuy', -6.93846, 106.598, 3.4000, 9.0000, 1, 'Km. Bdg 141+620', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019162108Jembatan Cipeutey.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000278, '22-142-010', 'Jembatan Cimapag I', -6.94464, 106.582, 3.6000, 10.2000, 1, 'Km. Bdg 144+420', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019213413Jembatan Cimapag 1.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000279, '22-142-011', 'Jembatan Cimapag II', -6.95065, 106.582, 2.7000, 10.0000, 1, 'Km. Bdg 145+090', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Baik', '29082019213448Jembatan Cimapag 2.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000280, '22-142-012', 'Jembatan Buniwangi', -6.96967, 106.566, 8.0000, 7.5000, 1, 'Km. Bdg 147+960', 'Cibadak - Cikidang - Pelabuhan Ratu', 'Kondisi Sedang', '27082019225640Jembatan Buniwangi ( Cibadak - Cikidang - Pelabuhan Ratu ).jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000281, '22-142-013', 'Jembatan Citeupus', -6.97098, 106.565, 5.7000, 9.2000, 1, 'Km. Bdg 148+144', 'Jalan Bhayangkara (Pelabuhan Ratu)', 'Kondisi Sedang', '29082019213536Jembatan Citepus.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000282, '22-142-014', 'Jembatan Kiaralawang I', -6.98173, 106.565, 4.0000, 10.0000, 1, 'Km. Bdg 149+324', 'Jalan Bhayangkara (Pelabuhan Ratu)', 'Kondisi Baik', '29082019213307Jembatan Kiaralawang 1.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000283, '22-142-015', 'Jembatan Kiaralawang II', -6.98311, 106.565, 4.4000, 10.0000, 1, 'Km. Bdg 149+440', 'Jalan Bhayangkara (Pelabuhan Ratu)', 'Kondisi Baik', '29082019213338Jembatan Kiaralawang 2.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000284, 'a', 'Jembatan Cipelang', -6.94001, 106.91, 41.0000, 7.0000, 1, 'Km. Bdg 101+800', 'Jalan Lingkar Sukabumi (Cibolang - Pelabuhan II)', 'Kondisi Baik', '280820191433041.jpg', 'SPP SUKABUMI 1', 'jb1', 'uptd2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000285, '1', 'RAGAS', -7.01316, 107.804, 7.9000, 8.0000, 1, '33+120', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000286, '22.047.001', 'KOPO 1', -6.95323, 107.585, 8.6000, 7.7000, 1, '5+600', 'Jl. Kopo (Sp. Jl. Peta - Bts. Kota/Kab. Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000287, '22.047.002', 'KOPO 2', -6.9606, 107.58, 12.0000, 10.8000, 1, '6+400', 'Jl. Kopo (Sp. Jl. Peta - Bts. Kota/Kab. Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000288, '22.048.001', 'CIGERELENG', -6.96062, 107.614, 9.8000, 11.0000, 1, '16+500', 'Jl. Moh. Toha (Sp. Jl. BKR - Bts. Kota/Kab. Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000289, '22.076.001', 'TAMBAK DAHAN', -6.34843, 107.816, 17.2000, 10.3200, 2, '147+640', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000290, '22.076.002', 'JUNGKLANG', -6.37116, 107.802, 31.9000, 9.8000, 1, '150+640', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000291, '22.076.003', 'CIWALINI', -6.37123, 107.802, 12.6000, 9.8000, 1, '153+160', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000292, '22.076.004', 'BINONG', -6.39318, 107.797, 37.3000, 9.4000, 3, '154+990', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000293, '22.076.005', 'CICADAS', -6.41532, 107.79, 15.6000, 8.6000, 1, '155+830', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000294, '22.076.006', 'PANYAIRAN', -6.43578, 107.784, 15.1000, 9.0000, 1, '158+250', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000295, '22.076.007', 'CIWERA', -6.44755, 107.792, 11.5000, 9.6000, 1, '159+970', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000296, '22.076.009', 'CIGADUNG', -6.45496, 107.811, 29.4000, 8.0000, 2, '162+770', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000297, '22.076.010', 'SARADAN', -6.47535, 107.811, 15.7000, 9.1000, 2, '164+780', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000298, '22.077.001', 'CIHERANG BARU', -6.51303, 107.475, 61.3000, 9.0000, 1, '109+930', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124404CiherangBaru.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000299, '22.077.002', 'CIGANGSA', -6.51242, 107.477, 3.4000, 9.0000, 1, '110+160', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124455Cigangsa.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000300, '22.077.003', 'CIKUMPAY GIRANG', -6.50485, 107.491, 3.3000, 9.5000, 1, '111+960', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124620CikumpayGirang.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000301, '22.077.004', 'CIBAYAWAK', -6.49602, 107.524, 11.6000, 8.4000, 1, '115+870', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124652Cibayawak.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000302, '22.077.005', 'CILANDAK', -6.49991, 107.534, 12.0000, 8.0000, 1, '117+070', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124755Cilandak.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000303, '22.077.006', 'CIPINANG', -6.50047, 107.536, 5.2000, 8.6000, 1, '117+290', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124845Cipinang.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000304, '22.077.007', 'CIPARUNG', -6.50163, 107.554, 5.0000, 8.0000, 1, '119+310', 'SADANG - BTS. PURWAKARTA/SUBANG', '', '15082019124921Ciparung.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000305, '22.077.008', 'CILAMAYA', -6.50126, 107.56, 16.5000, 9.5000, 3, '120+100', 'Bts. Purwakarta/Subang - Subang', '', '15082019125024Cilamaya.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000306, '22.077.009', 'CIBEUNYING', -6.49213, 107.593, 20.5000, 9.0000, 1, '124+200', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000307, '22.077.010', 'CIJENGKOL LAMA', -6.51162, 107.613, 24.0000, 7.0000, 1, '127+700', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000308, '22.077.011', 'CIBODAS', -6.52813, 107.695, 26.0000, 9.8000, 1, '138+000', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000309, '22.077.012', 'CIKADU', -6.53673, 107.693, 4.5000, 10.5000, 1, '138+200', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000310, '22.077.013', 'CIJUHUNG', -6.54132, 107.721, 20.0000, 9.7000, 1, '143+300', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000311, '22.077.014', 'CIASEM', -6.54505, 107.734, 25.5000, 11.6000, 1, '144+700', 'Bts. Purwakarta/Subang - Subang', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000312, '22.094.001', 'CIKEMBANG', -6.54564, 107.425, 25.8000, 9.1000, 1, '118+080', 'Sp. Purwakarta - Jatiluhur', '', '15082019125429Cikembang.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000313, '22.094.002', 'CINANGKA', -6.52804, 107.41, 9.0000, 8.0000, 1, '121+080', 'Sp. Purwakarta - Jatiluhur', '', '15082019125524Cinangka.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000314, '22.106.002', 'BIHBUL 1', -6.96053, 107.58, 3.3000, 14.0000, 1, '6+350', 'Bandung (Kopo) - Soreang', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000315, '22.106.003', 'BIHBUL 2', -6.964, 107.577, 2.7000, 16.2000, 1, '6+800', 'Bandung (Kopo) - Soreang', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000316, '22.106.004', 'SUKAMENAK', -6.97241, 107.573, 3.4000, 12.1000, 1, '7+800', 'Bandung (Kopo) - Soreang', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000317, '22.106.006', 'CILAMPENI', -6.98475, 107.563, 50.0000, 9.7000, 1, '10+400', 'Bandung (Kopo) - Soreang', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000318, '22.107.001', 'CIMUNJUL', -6.56288, 107.45, 12.0000, 10.0000, 1, '115+100', 'Sp. Purwakarta - Jatiluhur', '', '15082019123823Cimunjul.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000319, '22.107.002', 'RAWA SADANG', -6.57453, 107.465, 6.0000, 7.9000, 1, '118+300', 'Purwakarta - Wanayasa', '', '15082019125703RawaSadang.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000320, '22.107.003', 'PASAWAHAN VII', -6.58644, 107.471, 8.5000, 8.0000, 1, '119+500', 'Purwakarta - Wanayasa', '', '15082019125810PasawahanVII.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000321, '22.107.004', 'PASAWAHAN VIII', -6.66897, 107.55, 6.1500, 8.1500, 1, '119+800', 'Purwakarta - Wanayasa', '', '09082019144204Jembatan Pasawahan VIII.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000322, '22.107.005', 'PAMEUNGPEUK', -6.66897, 107.55, 5.8000, 7.6000, 1, '134+950', 'Purwakarta - Wanayasa', '', '15082019130009Pameungpeuk.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000323, '22.107.006', 'PALAYANGAN KIDUL', -6.67819, 107.556, 18.0000, 8.4000, 1, '136+550', 'Purwakarta - Wanayasa', '', '09082019145256Jembatan Palayangan Kidul.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000324, '22.107.007', 'CIBULAKAN', -6.68182, 107.563, 3.5000, 9.0000, 1, '137+550', 'Jl. Wanayasa (Wanayasa)', '', '15082019130148Cibulakan.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000325, '22.107.008', 'CILAMAYA', -6.66948, 107.597, 12.0000, 8.1000, 1, '142+850', 'Wanayasa - Bts. Purwakarta/Subang', '', '09082019150721Jembatan Cilamaya.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000326, '22.132.001', 'KALI KUNCI', -6.40824, 107.377, 8.6000, 6.0000, 1, '88+810', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', '', '09082019152910JembatanKaliKunci.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000327, '22.132.002', 'CILENTAH', -6.41695, 107.377, 25.2000, 6.0000, 1, '89+800', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', '', '09082019153315Jembatan Cilentah.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000328, '22.132.003', 'CIAMPEL LAMA', -6.43584, 107.383, 31.9000, 6.0000, 1, '92+120', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', '', '09082019153659Jembatan Ciampel Lama.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000329, '22.132.004', 'CIAMPEL BARU', -6.43582, 107.383, 39.2000, 6.0000, 1, '92+120', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', '', '09082019153933Jembatan Ciampel Baru.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000330, '22.132.005', 'TAMELANG', -6.44376, 107.383, 41.9500, 6.0000, 1, '92+850', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', '', '09082019154202Jembatan Tamelang.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000331, '22.132.006', 'CILANGKAP', -6.47963, 107.39, 23.2000, 4.4000, 1, '97+450', 'Bts. Karawang/Purwakarta (Curug) - Purwakarta', '', '09082019152259Jembatan Cilangkap.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000332, '22.132.007', 'CISALAK', -6.4782, 107.389, 9.1000, 7.0000, 1, '97+270', 'Bts. Karawang/Purwakarta (Curug) - Purwakarta', '', '09082019151449Jembatan Cisalak.jpeg', 'SUP KAB PURWAKARTA', 'jb6', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000333, '22.161.002', 'CITARUM LAMA', -6.99058, 107.627, 80.0000, 7.0000, 3, '9+000', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000334, '22.161.003', 'CINAGRAG', -7.01347, 107.609, 6.9700, 5.0000, 1, '12+280', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000335, '22.161.004', 'CIBIUK', -7.01661, 107.606, 6.0000, 5.0000, 1, '12+780', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000336, '22.161.005', 'CIBINTINU', -7.01897, 107.599, 7.8000, 6.0000, 1, '13+700', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000337, '22.161.006', 'CILEUNJAR', -7.01744, 107.595, 15.0000, 6.0000, 1, '14+400', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000338, '22.161.007', 'CIPALASARI', -7.02931, 107.594, 13.4000, 8.0000, 1, '15+150', 'Dayeuhkolot - Banjaran', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000339, '22.161.008', 'CITALUKTUK', -7.04656, 107.593, 23.9000, 9.0000, 1, '17+050', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000340, '22.161.009', 'CIBANJARAN I', -7.04817, 107.59, 9.3000, 10.5000, 1, '17+550', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000341, '22.161.010', 'CIBANJARAN II', -7.04817, 107.59, 5.3000, 10.5000, 1, '17+560', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000342, '22.161.011', 'CIJENGKOL', -7.04781, 107.585, 11.0000, 9.0000, 1, '18+000', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000343, '22.161.012', 'CISELA', -7.04917, 107.579, 11.3000, 8.0000, 1, '18+800', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000344, '22.161.013', 'CITALIKTIK', -7.05158, 107.576, 8.9000, 8.9000, 1, '19+200', 'Jl. Raya Banjaran (Banjaran)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000345, '22.162.014', 'CIMENTANG', -7.07461, 107.565, 10.6000, 9.0000, 1, '22+280', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000346, '22.162.015', 'CILEUMEUH', -7.08722, 107.563, 8.4000, 7.5000, 1, '24+100', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000347, '22.162.016', 'CIMAUNG', -7.08989, 107.562, 9.6000, 8.6000, 1, '24+400', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000348, '22.162.017', 'CIGEURUH', -7.09817, 107.56, 25.2000, 7.2000, 1, '25+320', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000349, '22.162.018', 'CIPINANG', -7.09975, 107.559, 10.4000, 7.2000, 1, '25+450', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000350, '22.162.019', 'CIKALONG', -7.11181, 107.557, 19.5000, 8.0000, 1, '26+900', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000351, '22.162.020', 'CIBURUY', -7.12939, 107.559, 7.9000, 8.0000, 1, '29+350', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000352, '22.162.021', 'CIBIANA', -7.13136, 107.56, 8.5000, 8.0000, 1, '29+700', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000353, '22.162.022', 'CIHIDEUNG', -7.13647, 107.559, 5.6100, 10.0000, 1, '31+250', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000354, '22.162.023', 'CIRUNTAH I', -7.14267, 107.562, 9.9000, 8.0000, 1, '32+950', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000355, '22.162.024', 'CIRUNTAH II', -7.14356, 107.561, 10.0000, 10.0000, 1, '33+050', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000356, '22.162.025', 'CILEWEUNG', -7.14986, 107.561, 11.0000, 8.4000, 1, '34+125', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000357, '22.162.026', 'PANYINDANGAN', -7.15564, 107.564, 10.5000, 9.0000, 1, '35+950', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000358, '22.162.027', 'LOS RINGGOS', -7.16003, 107.568, 9.5000, 9.0000, 1, '37+075', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000359, '22.162.028', 'CISAREUNI', -7.16317, 107.572, 8.4500, 9.0000, 1, '38+050', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000360, '22.162.029', 'CINYIRUAN', -7.16761, 107.573, 9.7500, 7.0000, 1, '38+800', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000361, '22.162.030', 'CISUNCI I', -7.17394, 107.573, 10.0000, 8.5000, 1, '39+700', 'Banjaran - Pangalengan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000362, '22.163.000', 'CISANGKUY', -7.18039, 107.565, 17.6000, 10.0000, 1, '41+000', 'Pangalengan - Cukul (Batas. Bandung/Garut)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000363, '22.163.001', 'PALAYANGAN', -7.19025, 107.549, 88.0000, 8.0000, 1, '43+420', 'Pangalengan - Cukul (Batas. Bandung/Garut)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000364, '22.171.005', 'LAGADAR', -6.92219, 107.539, 12.8000, 8.4000, 1, '15+500', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000365, '22.171.006', 'MARGA ASIH', -6.93425, 107.539, 6.3000, 7.8000, 1, '16+900', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000366, '22.171.007', 'LEUWISAPI', -6.94156, 107.536, 68.4000, 6.8000, 1, '18+330', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000367, '22.171.008', 'CAISAAT', -6.94864, 107.532, 8.0000, 8.4000, 1, '19+400', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000368, '22.171.009', 'PASIR MALANG', -6.95175, 107.525, 8.7000, 7.6000, 1, '20+250', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000369, '22.171.010', 'PATROL', -6.95247, 107.524, 8.2000, 9.0000, 1, '20+350', 'Nanjung - Patrol', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000370, '22.248.601', 'KEBON KAWUNG', -6.91251, 107.602, 16.0000, 7.3000, 1, '0+200', 'Jl. Kebon Kawung (Sp. Cicendo - Sp. Pasirkaliki) Kota Bandung', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000371, '22.248.602', 'CITEPUS 3', -6.90574, 107.585, 6.5000, 7.4000, 1, '0+340', 'Jl. Pajajaran (Akses Bandara Husein Satranegara) Kota Bandung', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000372, '22.249.014', 'SUKAJADI', -6.89411, 107.597, 12.0000, 5.1000, 1, '4+350', 'Jl. Sukajadi (Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000373, '22.349.001', 'CIKALEDONG', -7.04061, 107.908, 30.0000, 9.0000, 1, '40+570', 'Nagreg - Bts Bandung/Garut', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000374, '22.349.002', 'CIBURIAL', -7.04317, 107.906, 10.5000, 9.5000, 1, '40+990', 'Nagreg - Bts Bandung/Garut', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000375, '22.349.003', 'CIBOJONG', -7.04578, 107.904, 10.0000, 9.0000, 1, '41+400', 'Nagreg - Bts Bandung/Garut', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000376, '22.349.005', 'CINGACIR I', -7.04642, 107.903, 11.5000, 9.0000, 1, '41+500', 'Nagreg - Bts Bandung/Garut', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000377, '22.365.002', 'CITARUM 1', -6.98958, 107.632, 65.0000, 10.0000, 1, '11+200', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', '', '09082019110250Km11+200 jem ci tarum 1 100.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000378, '22.365.003', 'CITARUM 2', -6.99253, 107.631, 92.0000, 9.0000, 2, '11+500', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', '', '09082019110334Km11+500 jem citarum 2 ka 100.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000379, '22.365.004', 'SILIWANGI 4', -7.01244, 107.645, 6.2000, 7.0000, 1, '14+600', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', '', '09082019111849Km14+600 jem 100 slw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000380, '22.365.005', 'MUNJUL 1', -7.01875, 107.653, 7.2000, 7.5000, 1, '14+000', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019112632Km14+000 jem 100 lsw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000381, '22.365.006', 'MUNJUL 2', -7.01983, 107.655, 8.4000, 7.0000, 1, '14+400', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019112752Km14+400 ki jem 100 lsw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000382, '22.365.007', 'PERTANIAN', -7.02152, 107.658, 6.4000, 7.5000, 1, '14+700', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019112905Km14+700 jrm 100 lsw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000383, '22.365.008', 'MUNJUL 3', -7.02344, 107.661, 6.8000, 7.0000, 1, '15+100', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019113020Km15+100 ka jem 100 lsw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000384, '22.365.009', 'MUNJUL 4', -7.02303, 107.668, 6.7000, 8.0000, 1, '15+800', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019113132Km15+800 jem 100 lsw.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000385, '22.365.010', 'MUNJUL 5', -7.02203, 107.681, 6.5000, 8.0000, 1, '17+400', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '09082019140602Km17+400 ka  100 lswi.jpg', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000386, '22.365.011', 'CIHEULANG', -7.02394, 107.689, 7.0000, 7.0000, 1, '18+325', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000387, '22.365.012', 'CIKOPO', -7.02933, 107.698, 8.3000, 6.0000, 1, '19+475', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000388, '22.365.013', 'CIJONGOR', -7.03411, 107.706, 10.6000, 6.0000, 1, '20+525', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000389, '22.365.014', 'CIPALEDANG', -7.03458, 107.708, 7.8000, 6.0000, 1, '20+725', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Laswi Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000390, '22.365.015', 'PALENDANG', -7.03497, 107.71, 7.6000, 6.0000, 1, '21+675', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000391, '22.365.016', 'CISERA HILIR', -7.03633, 107.716, 29.5000, 6.0000, 1, '21+720', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000392, '22.365.017', 'MAGUNG/LELES', -7.03719, 107.72, 8.9000, 6.0000, 1, '21+950', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000393, '22.365.018', 'CISISI I', -7.04031, 107.726, 8.3000, 6.0000, 1, '22+385', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000394, '22.365.019', 'CISISI II', -7.04081, 107.727, 12.4000, 6.0000, 1, '22+525', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000395, '22.365.021', 'BIRU', -7.042, 107.729, 9.8000, 6.0000, 1, '22+785', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000396, '22.365.022', 'PADULUN/WARUSATANGKAL', -7.04783, 107.74, 9.9000, 6.0000, 1, '24+175', 'Jl. Raya Laswi (Ciparay)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000397, '22.365.023', 'CIKEMBANG', -7.04989, 107.746, 11.3000, 6.0000, 1, '24+900', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000398, '22.365.024', 'LEUWIDULANG/CIWALENGKE', -7.05067, 107.752, 8.9000, 6.0000, 1, '25+675', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000399, '22.365.025', 'PATROL', -7.05122, 107.755, 6.2000, 6.0000, 1, '25+900', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000400, '22.365.026', 'CITARUM', -7.05083, 107.757, 29.2000, 8.0000, 1, '26+080', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000401, '22.365.027', 'CIKARO', -7.04906, 107.763, 12.6000, 7.0000, 1, '26+800', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000402, '22.367.028', 'TJANGKUREAK', -7.04775, 107.764, 9.3000, 7.0000, 1, '26+900', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000403, '22.367.029', 'BOJONG', -7.03906, 107.775, 12.2000, 6.0000, 1, '28+500', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000404, '22.367.030', 'TARIKOLOT', -7.03569, 107.779, 6.1000, 8.0000, 1, '29+100', 'Jl. Raya Laswi (S.d Sp.3 Jl. Cikaro/Jl. Tengah), (Majalaya)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000405, '22.367.031', 'CIJAGRA', -7.03139, 107.785, 10.1000, 6.0000, 1, '29+820', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000406, '22.367.032', 'CIPEDES', -7.02708, 107.792, 6.9000, 6.0000, 1, '30+625', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000407, '22.367.033', 'BAKUNG', -7.02475, 107.793, 7.0000, 6.0000, 1, '31+075', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000408, '22.367.035', 'PALALANGON 1', -7.01858, 107.799, 10.4000, 5.5000, 1, '32+300', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000409, '22.367.036', 'PALALANGON 2', -7.01603, 107.801, 7.2000, 6.5000, 1, '32+700', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000410, '22.367.037', 'SAWAH BERA', -7.02864, 107.807, 9.0000, 10.0000, 1, '34+675', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000411, '22.367.038', 'CIJAPATI', -7.06058, 107.829, 6.5000, 8.0000, 1, '40+300', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000412, '22.368.001', 'SAPAN - GUDANG', -6.97922, 107.687, 4.5000, 6.3000, 1, '15+200', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000413, '22.368.002', 'CIKERUH', -6.98486, 107.701, 21.0000, 4.8000, 1, '17+200', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000414, '22.368.003', 'CITARIK', -6.98767, 107.706, 36.5000, 7.8000, 1, '17+810', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000415, '22.368.004', 'LINGKAR II', -7.02789, 107.755, 11.4500, 6.0000, 1, '26+250', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000416, '22.368.005', 'PANYADAP', -7.03381, 107.767, 11.1000, 12.0000, 1, '27+730', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000417, '22.368.006', 'JEMBATAN', -7.03596, 107.775, 13.2000, 6.0000, 1, '28+620', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000418, '22.369.001', 'CAGAK', -7.01439, 107.803, 10.0000, 8.0000, 1, '33+050', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000419, '22.369.002', 'RAGAS', -7.01311, 107.804, 7.9000, 8.0000, 1, '33+120', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000420, '22.369.003', 'DUGUL', -7.00819, 107.809, 8.9000, 8.0000, 1, '33+900', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000421, '22.369.004', 'CIJALUPANG', -6.99342, 107.823, 16.3000, 7.0000, 1, '36+250', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000422, '22.369.005', 'CIKUYA', -6.98078, 107.831, 9.0000, 7.0000, 1, '38+010', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000423, '22.370.001', 'CIBODAS', -6.97839, 107.833, 30.0000, 7.5000, 1, '38+490', 'Parakan Muncang - Sp.3 Panenjoan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000424, '22.370.002', 'CITARIK', -6.97081, 107.827, 19.5000, 8.0000, 1, '39+700', 'Parakan Muncang - Sp.3 Panenjoan', '', '', 'SUP KAB BANDUNG', 'jb2', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000425, '31.0.300', 'CIKAPAYANG', -6.91442, 107.632, 19.3000, 4.4000, 1, '+300', 'Jl. Ahmad Yani (Sp. Laswi - Sp. Supratman) Kota Bandung', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000426, '31.14.000', 'GEDEBAGE SELATAN', -6.94264, 107.691, 6.4000, 9.4000, 1, '14+000', 'Jl. Gedebage Selatan (Rel KA - Sp. Derwati - Bts Kota Bandung/Jbt.Tol)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000427, '31.14.690', 'CISARANTEN', -6.94637, 107.689, 6.4000, 18.3000, 1, '14+690', 'Jl. Gedebage Selatan (Rel KA - Sp. Derwati - Bts Kota Bandung/Jbt.Tol)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000428, '31.15.200', 'PAJAMSAH', -6.95043, 107.687, 6.4000, 6.2000, 1, '15+200', 'Jl. Gedebage Selatan (Rel KA - Sp. Derwati - Bts Kota Bandung/Jbt.Tol)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000429, '31.2.640', 'ANAK CIKAPUNDUNG', -6.92173, 107.631, 33.2000, 10.8000, 1, '2+640', 'Jl. Laswi (Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000430, '31.2.800', 'ANAK CIKAPUNDUNG', -6.92258, 107.63, 100.0000, 22.0000, 1, '2+800', 'Jl. Laswi (Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000431, '31.5.000', 'CIKAPUNDUNG', -6.93809, 107.62, 24.4000, 24.0000, 1, '5+000', 'Jl. Bkr (Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000432, '31.5.100', 'RANCABOLANG', -6.96228, 107.687, 6.2000, 7.5000, 1, '5+100', 'Jl. Gedebage Selatan (Rel KA - Sp. Derwati - Bts Kota Bandung/Jbt.Tol)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000433, '31.7.300', 'CITEPUS', -6.93756, 107.599, 21.9000, 16.0000, 1, '7+300', 'Jl. Peta (Bandung)', '', '', 'SUP KOTA BANDUNG', 'jb1', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000434, '33.12.615', 'BAROS', -6.89909, 107.537, 66.6000, 10.0000, 4, ' 12+615 ', 'Jl. Baros (Cimahi)', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000435, '33.13.010', 'NANJUNG 1', -6.90246, 107.535, 45.2000, 10.0000, 2, ' 13+010 ', 'Jl. Baros (Cimahi)', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000436, '33.13.140', 'NANJUNG', -6.90253, 107.535, 2.9000, 10.6000, 1, ' 13+140 ', 'Jl. Baros (Cimahi)', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000437, '33.16.400', 'SIMPANG TOL', -6.85124, 107.497, 10.0000, 8.0000, 1, ' 16+400 ', 'Sp. Orion - Cihaliwung', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000438, '33.17.200', 'LEGOK', -6.80933, 107.624, 4.0000, 6.5000, 1, ' 17+200 ', 'Lembang - Bts.Kab.Bandung/Kab. Subang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000439, '33.17.250', 'GANDRUNG', -6.8163, 107.557, 3.1500, 8.4000, 1, ' 17+250 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000440, '33.17.700', 'DPU SIMPANG', -6.8414, 107.496, 4.5000, 6.5000, 1, ' 17+700 ', 'Sp. Orion - Cihaliwung', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000441, '33.19.580', 'CIBADAK', -6.80435, 107.57, 2.9000, 8.2800, 1, ' 19+580 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000442, '33.19.600', 'CIBOGO', -6.80852, 107.643, 7.0000, 6.5000, 1, ' 19+600 ', 'Lembang - Bts.Kab.Bandung/Kab. Subang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000443, '33.20.600', 'CIJANGEL', -6.7975, 107.574, 5.0000, 7.8000, 1, ' 20+600 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000444, '33.21.115', 'CURUG CIMAHI', -6.79798, 107.578, 12.4000, 6.0000, 1, ' 21+115 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000445, '33.21.750', 'CIGULUNG', -6.98303, 107.655, 9.0000, 6.0000, 1, ' 21+750 ', 'Lembang - Maribaya', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000446, '33.22.100', 'CIKAWARI', -6.98293, 107.658, 9.0000, 6.5000, 1, ' 22+100 ', 'Lembang - Maribaya', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000447, '33.24.500', 'LEBAK SARI', -6.84377, 107.5, 4.0000, 6.0000, 1, ' 24+500 ', 'Padalarang (Sp.3 Stasion) - Sp. Cisarua', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000448, '33.25.100', 'LEGOK NANGKA', -6.81221, 107.6, 4.1200, 7.2500, 1, ' 25+100 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000449, '33.27.100', 'KERAMAT', -6.82255, 107.606, 6.8000, 6.0000, 1, ' 27+100 ', 'Bts. Cimahi - Cisarua - Lembang', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000450, '33.38.350', 'CIMETA', -6.81857, 107.35, 28.0000, 6.0000, 1, ' 38+350 ', 'Rajamandala - Cipeundeuy - Cikalongwetan', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000451, '33.39.550', 'CITARUM LAMA', -6.84175, 107.325, 177.0000, 4.5000, 2, '39+550', 'Rajamandala - Jbt. Citarum Lama', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000452, '33.39.960', 'CILIMUS', -6.81031, 107.349, 36.0000, 6.0000, 1, '39+960', 'Rajamandala - Cipeundeuy - Cikalongwetan', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000453, '33.45.850', 'Pasi Ucing', -6.77053, 107.354, 18.0000, 7.0000, 1, ' 45+850 ', 'Rajamandala - Cipeundeuy - Cikalongwetan', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000454, '33.49.220', 'Sasak Beusi', -6.74506, 107.361, 30.0000, 7.0000, 1, ' 49+220 ', 'Rajamandala - Cipeundeuy - Cikalongwetan', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000455, '33.61.000', 'Cikalong', -6.73475, 107.438, 12.0000, 6.0000, 1, ' 61+000 ', 'Rajamandala - Cipeundeuy - Cikalongwetan', '', '', 'SUP KBB CIMAHI', 'jb3', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000456, '34.154.546', 'BALENYENGKED', -6.59934, 107.735, 13.8000, 9.7000, 1, '154+546', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000457, '34.158.667', 'CIJAMBE', -6.63038, 107.721, 6.1000, 9.0000, 1, '158+667', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000458, '34.160.139', 'SINDANG PALAY', -6.64042, 107.724, 13.8000, 9.8000, 1, '160+139', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000459, '34.160.336', 'CILEULEUY', -6.64161, 107.724, 3.3000, 8.7000, 1, '160+336', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000460, '34.166.550', 'LEUWEUNG TIIS', -6.6794, 107.694, 4.0000, 8.6000, 1, '166+550', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000461, '34.169.520', 'CINANGKA', -6.67621, 107.663, 12.6000, 6.1000, 1, '169+520', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000462, '34.170.510', 'CIBINONG 1', -6.67325, 107.661, 3.0000, 6.1000, 1, '170+510', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000463, '34.170.600', 'CIBINONG  2', -6.67479, 107.66, 7.1000, 6.0000, 1, '170+600', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000464, '34.172.200', 'CIPABELAH', -6.69913, 107.739, 16.5000, 8.0000, 3, '172+200', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000465, '34.172.790', 'CILEUNGSI', -6.67476, 107.66, 12.2000, 8.1000, 1, '172+790', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000466, '34.173.320', 'CIMUJA', -6.67004, 107.649, 24.2000, 6.0000, 3, '173+320', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000467, '34.173.520', 'CIPUNAGARA', -6.70763, 107.746, 26.0000, 8.3000, 1, '173+520', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000468, '34.173.800', 'DARMAGA', -6.70951, 107.746, 4.1000, 9.2000, 1, '173+800', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000469, '34.175.670', 'CIASEM', -6.6647, 107.635, 15.0000, 6.7000, 1, '175+670', 'Jl. Cagak - Bts. Purwakarta/Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000470, '34.176.030', 'CISALAK', -6.71516, 107.762, 1.3000, 6.5000, 1, '176+030', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000471, '34.176.540', 'CIKARUCANG', -6.71764, 107.766, 10.5000, 6.8000, 1, '176+540', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000472, '34.177.080', 'CAU KARO', -6.72067, 107.769, 12.0000, 7.3000, 1, '177+080', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000473, '34.177.160', 'GARDU SAYANG', -6.72103, 107.77, 4.0000, 7.0000, 1, '177+160', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000474, '34.177.735', 'CIPANGASAHAN', -6.74902, 107.648, 12.6000, 8.3000, 1, '177+735', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000475, '34.178.260', 'CILEAT', -6.72382, 107.777, 17.0000, 6.5000, 1, '178+260', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000476, '34.178.670', 'CILIMPING', -6.72435, 107.78, 5.0000, 4.5000, 1, '178+670', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000477, '34.179.050', 'CIGABAH', -6.72726, 107.781, 9.5000, 6.2000, 1, '179+050', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000478, '34.179.450', 'CIPANGUSEUPAN', -6.7604, 107.646, 5.6000, 13.7000, 1, '179+450', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000479, '34.179.630', 'CICENANG', -6.76148, 107.645, 3.4000, 12.9000, 1, '179+630', 'Subang - Bts. Kab. Bandung / Kab. Subang', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000480, '34.180.000', 'CILAMPENI', -6.73689, 107.785, 7.8000, 6.8000, 1, '180+000', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000481, '34.181.140', 'CILANDESAN', -6.7392, 107.792, 7.5000, 6.5000, 1, '181+140', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000482, '34.181.340', 'PASIRLAJA', -6.7395, 107.792, 8.5000, 8.0000, 1, '181+340', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000483, '34.181.910', 'CITAMIANG', -6.74074, 107.797, 7.3000, 6.4000, 1, '181+910', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000484, '34.182.650', 'KAWUG LUWUK', -6.74586, 107.8, 5.2000, 6.2000, 1, '182+650', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000485, '34.182.930', 'CITEREP GEDE', -6.74717, 107.802, 15.0000, 9.5000, 1, '182+930', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000486, '34.183.230', 'CITEREP LEUTIK', -6.74727, 107.805, 7.3000, 8.5000, 1, '183+230', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000487, '34.183.330', 'CILAMATAN', -6.5564, 107.837, 105.0000, 6.9000, 1, '183+330', 'Subang - Bantarwaru (Bts. Kab. Subang/Indramayu)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000488, '34.184.170', 'CIKEMBANG', -6.75277, 107.801, 19.8000, 6.4000, 1, '184+170', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000489, '34.184.400', 'CIKAREO', -6.56449, 107.84, 4.0000, 9.4000, 1, '184+400', 'Subang - Bantarwaru (Bts. Kab. Subang/Indramayu)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000490, '34.184.460', 'CILIWUNG GEDE', -6.75338, 107.813, 5.0000, 7.0000, 1, '184+460', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000491, '34.184.950', 'CIKADU', -6.75352, 107.817, 5.5000, 7.7000, 1, '184+950', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000492, '34.186.630', 'CIPUNAGARA', -6.56993, 107.856, 83.0000, 6.9000, 2, '186+630', 'Subang - Bantarwaru (Bts. Kab. Subang/Indramayu)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000493, '34.187.400', 'CINYRO', -6.75978, 107.831, 6.6000, 6.8000, 1, '187+400', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000494, '34.188.100', 'CIDEKET', -6.76217, 107.835, 7.0000, 10.0000, 1, '188+100', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', '', '', 'SUP KAB SUBANG 1', 'jb4', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000495, '35.142.600', 'WARUNG ASEM', -6.46046, 107, 3.0000, 6.0000, 1, '142+600', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000496, '35.147.685', 'SITU BAU', -6.41785, 107, 4.0000, 6.0000, 1, '147+685', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000497, '35.149.100', 'JON', -6.41777, 107, 30.0000, 6.0000, 2, '149+100', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000498, '35.151.685', 'RANCA BANGO I', -6.405, 107, 10.0000, 5.0000, 1, '151+685', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000499, '35.154.100', 'RANCA BANGO II', -6.38599, 107, 10.0000, 5.0000, 1, '154+100', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000500, '35.154.400', 'KALIMATI I', -6.36941, 107, 8.0000, 5.0000, 1, '154+400', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000501, '35.154.500', 'KALIMATI II', -6.36649, 107, 10.0000, 5.0000, 1, '154+500', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000502, '35.154.900', 'KALIMATI III', -6.36426, 107, 10.0000, 5.0000, 1, '154+900', 'Kalijati - Sukamandi', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000503, '35.161.640', 'CIGAYUN', -6.45361, 107, 12.0000, 9.0000, 1, '161+640', 'Pamanukan - Pagaden', '', '', 'SUP KAB SUBANG 2', 'jb5', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000504, '37.103.400', 'CICANGOR HILIR', -6.46289, 107.219, 60.0000, 8.0000, 1, '103+400', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000505, '37.108.100', 'RAMINTEN 1', -6.49743, 107.215, 7.0000, 8.0000, 1, '108+100', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000506, '37.109.720', 'TEGALLOA', -6.50877, 107.218, 7.0000, 6.0000, 1, '109+720', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000507, '37.113.150', 'NAMBO', -6.49027, 107.196, 4.0000, 6.0000, 1, '113+150', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000508, '37.113.600', 'CIGENTIS', -6.49088, 107.192, 75.0000, 6.0000, 1, '113+600', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000509, '37.113.900', 'CIJATI', -6.49129, 107.189, 4.0000, 6.0000, 1, '113+900', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000510, '37.75.550', 'JOHAR', -6.31141, 107.319, 35.0000, 8.0000, 1, '75+550', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000511, '37.77.500', 'TELUK JAMBE 1 (GANTUNG)', -6.32688, 107.312, 124.0000, 3.0000, 1, '77+500', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000512, '37.77.500.', 'TELUK JAMBE 2', -6.32695, 107.312, 124.0000, 4.0000, 1, '77+500', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000513, '37.81.950', 'KALENTEMU', -6.3394, 107.285, 8.0000, 6.0000, 1, '81+950', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000514, '37.82.750', 'KALAPA', -6.34157, 107.279, 4.0000, 6.0000, 1, '82+750', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000515, '37.82.910', 'AMPERA III', -6.34193, 107.278, 14.0000, 11.0000, 1, '82+910', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000516, '37.85.925', 'PASARJATI', -6.34111, 107.252, 12.0000, 8.0000, 1, '85+925', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000517, '37.88.100', 'KOBAK BIRU', -6.34705, 107.257, 34.0000, 7.0000, 1, '88+100', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000518, '37.88.400', 'BATUTULIS', -6.34856, 107.236, 21.0000, 8.0000, 1, '88+400', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000519, '37.89.800', 'BAREGBEG ', -6.3605, 107.252, 12.0000, 8.0000, 1, '89+800', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000520, '37.90.600', 'BAREGBEG KULON', -6.36372, 107.226, 5.0000, 8.0000, 1, '90+600', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000521, '37.91.700', 'CIKETING', -6.37239, 107.223, 5.0000, 8.0000, 1, '91+700', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000522, '37.93.500', 'KALIGANDU', -6.388, 107.225, 7.0000, 8.0000, 1, '93+500', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000523, '37.94.510', 'PASIR NYONGCOT', -6.39533, 107.226, 12.0000, 8.0000, 1, '94+510', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000524, '37.95.900', 'KRETEG', -6.4067, 107.224, 25.0000, 8.0000, 1, '95+900', 'Palumbonsari - Johar - Tegalloa (Loji)', '', '', 'SUP KAB KARAWANG', 'jb7', 'uptd3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000525, '1.1', 'CIBUNTU', -7.0605, 107.9, 2.0000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019120100image001.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000526, '1.10', 'CIKAWEDUKAN II', -7.12139, 107.898, 2.4000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019121940image019.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000527, '1.11', 'CIWALUNGAN SAAT', -7.12795, 107.894, 4.0000, 10.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019122125image021.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000528, '1.12', 'CILEUWEUNG TIIS', -10000, 107.894, 2.5000, 6.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019123851image023.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000529, '1.13', 'CIWARUNG PEUTEUY', -7.15526, 107.9, 3.0000, 6.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019124052image025.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000530, '1.14', 'CIKUBANG KIDUL', -10000, 107.898, 2.1000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019124401image027.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000531, '1.15', 'CINAGRAK', -7.17167, 107.893, 0.0000, 0.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019124700image029.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000532, '1.16', 'CIBANGBAYANG', -7.07906, 107.886, 16.0000, 11.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019124919image033.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000533, '1.17', 'KIARA GOONG', -7.08103, 107.884, 4.6000, 6.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019125122image035.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000534, '1.18', 'RANCASALAK I', -7.06689, 107.849, 6.0000, 6.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019125257image037.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000535, '1.19', 'RANCASALAK II', -7.08821, 107.871, 3.0000, 6.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019125433image039.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000536, '1.2', 'CIHUNI', -7.07045, 107.899, 9.3000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019120237image003.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000537, '1.20', 'CIGUNANG AGUNG', -7.08732, 107.871, 11.7000, 5.7000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019125603image041.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000538, '1.21', 'CIBANGBARA', -7.06886, 107.849, 5.4000, 4.6000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - BTS. BANDUNG/GARUT (CIJAPATI)', '', '09082019125855image043.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000539, '1.22', 'NANGKALEAH', -7.11254, 107.901, 4.5000, 4.5000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - CIBATU - SASAKBEUSI', '', '09082019132333image045.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000540, '1.23', 'LEUWIGOONG', -7.10499, 107.963, 51.2000, 6.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - CIBATU - SASAKBEUSI', '', '09082019132557image047.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000541, '1.24', 'SITUPANA', -7.10724, 107.966, 2.0000, 4.0000, 0, 'Kab.Garut', 'KADUNGORA (LELES) - CIBATU - SASAKBEUSI', '', '09082019132734image049.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000542, '1.25', 'CIMUNDING PAEH', -7.0591, 108.087, 2.0000, 6.6000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019140252image053.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000543, '1.26', 'CIBUBUHAN', -7.05204, 108.088, 2.8000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019140419image055.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000544, '1.27', 'CIKURUTUG I', -7.0525, 108.088, 6.8000, 5.5000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019140609image057.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000545, '1.28', 'CIKURUTUG II', -7.051, 108.088, 2.1000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019140824image059.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000546, '1.29', 'CITEUREUP', -7.04782, 108.087, 3.0000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019141156image061.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000547, '1.3', 'CIGUNUNG AGUNG', -7.07734, 107.898, 12.9000, 7.9000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019120415image005.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000548, '1.30', 'CIPANGKALAN', -7.04565, 108.086, 2.2000, 4.5000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019144134image063.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000549, '1.31', 'CISAAT', -7.03985, 108.087, 3.1000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019144315image065.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000550, '1.32', 'LEGOKGAGOG', -7.038, 108.087, 6.8000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019144707image067.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000551, '1.33', 'CIPARI', -7.03432, 108.088, 3.5000, 6.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019144850image069.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000552, '1.34', 'CIDURUNG', -7.03068, 108.085, 3.7000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019145043image071.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000553, '1.35', 'CIKADAWUNG', -7.02787, 108.087, 11.4000, 4.7000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019145209image073.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000554, '1.36', 'CIKUMUNTUK', -7.02102, 108.093, 2.5000, 5.5000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019145344image075.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000555, '1.38', 'CISITU SAEUR', -7.01766, 108.093, 6.4000, 5.4000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019150045image077.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000556, '1.39', 'CIBEUREUM', -7.01502, 108.095, 2.8000, 5.0000, 0, 'Kab.Garut', 'MALANGBONG - BTS. GARUT/SUMEDANG', '', '09082019150313image079.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000557, '1.4', 'CIKAKAS TENGAH', -7.0834, 107.899, 2.4000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019120551image007.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000558, '1.40', 'NINI LUGA', -7.17564, 107.891, 2.0000, 6.0000, 0, 'Kab.Garut', 'JL. OTISTA (GARUT)', '', '09082019151151NINILUGA.jpeg', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000559, '1.41', 'SANGHIANG SANTEN II', -7.19236, 107.887, 4.3000, 6.0000, 0, 'Kab.Garut', 'JL. OTISTA (GARUT)', '', '10082019100621image087.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000560, '1.42', 'CIMANUK', -7.21047, 107.899, 34.2000, 10.5000, 0, 'Kab.Garut', 'JL. CIMANUK I (GARUT)', '', '10082019101854image097.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000561, '1.43', 'CIPEUJEUH', -7.22187, 107.901, 0.0000, 0.0000, 0, 'Kab.Garut', 'JL. CIMANUK II (GARUT)', '', '10082019101754image099.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000562, '1.44', 'CIHERMAN', -7.1904, 107.899, 4.7000, 7.5000, 0, 'Kab.Garut', 'JL. SUHERMAN (GARUT)', '', '10082019102128image101.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000563, '1.45', 'CIMANUK IV', -7.19438, 107.909, 41.6000, 8.0000, 0, 'Kab.Garut', 'JL. JEND. SUDIRMAN (GARUT)', '', '10082019102340image103.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000564, '1.46', 'COPONG', -7.20048, 107.914, 6.6000, 8.5000, 0, 'Kab.Garut', 'JL. JEND. SUDIRMAN (GARUT)', '', '10082019102555image105.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000565, '1.47', 'RANJEUNG', -7.22557, 107.915, 5.0000, 11.5000, 0, 'Kab.Garut', 'JL. JEND. SUDIRMAN (GARUT)', '', '12082019115321image107.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000566, '1.48', 'CPASAWAHAN', -7.23265, 107.907, 6.0000, 9.0000, 0, 'Kab.Garut', 'JL. CILEDUG (GARUT)', '', '12082019115539image109.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000567, '1.49', 'CIKAMPIL', -7.25589, 107.906, 2.0000, 8.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019115744image111.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000568, '1.5', 'CITEUREUP I', -7.08845, 107.899, 12.3000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019120819image009.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000569, '1.50', 'SINDANG RASA', -7.25799, 107.906, 0.0000, 0.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019115931image113.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000570, '1.51', 'CIDADAP', -7.26978, 107.914, 2.0000, 11.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120054image115.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000571, '1.52', 'CILEUEUR', -7.29335, 107.922, 4.5000, 9.6000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120209image117.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000572, '1.53', 'CIPAKU', -7.29479, 107.923, 2.2000, 9.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120344image119.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000573, '1.54', 'CITELU I', -7.30573, 107.926, 2.1000, 6.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120704image121.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000574, '1.55', 'CITEU II', -7.30295, 107.926, 8.0000, 7.5000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120827image123.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000575, '1.56', 'CISAAT I', -7.31192, 107.928, 2.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019120938image125.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000576, '1.57', 'CISAAT II', -7.31057, 107.928, 2.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019121110image127.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000577, '1.58', 'BOJONGLOA', -7.3203, 107.933, 25.0000, 7.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019121255image129.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000578, '1.59', 'CIGANGSA', -7.32623, 107.942, 3.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019121414image131.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000579, '1.6', 'CITEUREUP II', -7.09068, 107.898, 2.0000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019121023image011.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000580, '1.60', 'CIKURAY', -7.33066, 107.946, 20.8000, 8.0000, 0, 'Kab.Garut', 'GARUT - BTS. GARUT/TASIKMALAYA', '', '12082019121524image133.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000581, '1.7', 'CIGUGUR', -7.09505, 107.899, 2.4000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019121351image013.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000582, '1.8', 'CIPANCAR', -7.09907, 107.898, 10.6000, 8.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019121525image015.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000583, '1.9', 'CIKAWEDUKAN I', -7.12045, 107.897, 3.4000, 7.0000, 0, 'Kab.Garut', 'BTS. BANDUNG/GARUT - GARUT', '', '09082019121649image017.png', 'SUP GARUT 1', 'jb1', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000584, '11.1', 'BOMA BARU', -6.88816, 107.823, 10.8000, 7.8000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019155834image001.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000585, '11.10', 'CIHERANG', -6.81192, 107.862, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164702image019.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000586, '11.11', 'CIHERANG I', -6.82627, 107.844, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164806image021.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000587, '11.12', 'CIPONGKOR', -6.83382, 107.838, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019165019image023.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000588, '11.13', 'CITUNGKU', -6.84253, 107.828, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019165147image025.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000589, '11.14', 'SELAAWI', -6.84438, 107.826, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019165250image027.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000590, '11.15', 'CIPELES', -6.77894, 107.851, 20.0000, 10.3000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019165415image029.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000591, '11.16', 'CIKUPA', -10000, 107.846, 7.8000, 6.6000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019165538image031.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000592, '11.17', 'CIGAWIRU', -6.86006, 107.897, 6.7000, 7.1000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019165657image033.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000593, '11.18', 'CINUNUK', -6.76634, 10000, 3.0000, 8.8000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019165938image035.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000594, '11.19', 'PAMATUTAN', -6.83573, 107.892, 4.7000, 8.5000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170100image037.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000595, '11.2', 'BINONG', -6.8768, 107.834, 6.0000, 4.4000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019160002image003.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000596, '11.20', 'SINAPEUL', -6.85116, 107.897, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170211image039.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000597, '11.21', 'PASIR AMIS', -6.84484, 107.894, 2.0000, 7.4000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170330image041.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000598, '11.22', 'CIKONDANG', -6.83798, 107.893, 2.6000, 9.4000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170450image043.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000599, '11.23', 'CADAS GANTUNG', -6.82034, 107.876, 3.1000, 8.0000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170623image045.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000600, '11.24', 'CILULUMPANG', -6.84751, 107.902, 3.0000, 10.1000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019170755image047.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000601, '11.25', 'CIKARAMAS', -6.82816, 107.886, 8.6000, 6.3000, 0, 'Kab.Sumedang', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', '', '12082019171002image049.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000602, '11.27', 'CIJELAG II', -6.76317, 108.126, 2.4000, 10.2000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019171325image053.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000603, '11.28', 'CIJELAG III', -6.75825, 108.128, 6.0000, 8.0000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019171446image055.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000604, '11.29', 'LEBAK JERO', -6.75522, 108.131, 3.0000, 9.5000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019172055image057.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000605, '11.3', 'CIBAWANG I', -6.86593, 107.834, 4.3000, 9.5000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019163702image005.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000606, '11.30', 'TEGALWANGON', -6.75099, 108.137, 3.0000, 7.5000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019172802image059.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000607, '11.31', 'CIKOSAMBIAN', -6.74667, 108.14, 5.0000, 9.4000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173052image061.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000608, '11.32', 'CIBANDREK', -6.7361, 108.126, 4.6000, 7.3000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173219image063.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000609, '11.33', 'CIBANDREK I', -6.72904, 108.119, 8.0000, 7.7000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173334image065.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000610, '11.34', 'CIBANDREK III', -6.7244, 108.114, 4.0000, 9.3000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173539image067.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000611, '11.35', 'CIBANDREK IV', -6.72171, 108.11, 3.5000, 9.9000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173725image069.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000612, '11.36', 'CIGORDAH I', -6.72049, 108.108, 3.0000, 7.5000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019173859image071.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000613, '11.37', 'CIGORDAH II', -6.71909, 108.105, 3.8000, 8.0000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019174014image073.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000614, '11.38', 'CIKARAMAT', -6.7111, 108.1, 7.0000, 10.2000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019174138image075.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000615, '11.39', 'LEUWI AWI', -6.70885, 108.094, 60.0000, 8.2000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019174300image077.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000616, '11.4', 'CINANIWUNG', -6.86467, 107.834, 4.0000, 7.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019163822image007.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000617, '11.40', 'CIBARENGKOK', -6.6901, 108.1, 18.0000, 7.9000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019174426image079.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000618, '11.41', 'CILUNCAT', -6.64862, 108.045, 9.0000, 14.1000, 0, 'Kab.Sumedang', 'CIJELAG - BTS. SUMEDANG/INDRAMAYU', '', '12082019174551image081.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000619, '11.5', 'CIBAWANG III', -6.86383, 107.834, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019163945image009.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000620, '11.6', 'CIBAWANG IV', -6.86341, 107.835, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164118image011.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000621, '11.7', 'CIBAWANG', -6.86405, 107.841, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164249image013.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000622, '11.8', 'BABAKAN DARMARAJA', -6.85941, 107.838, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164422image015.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000623, '11.9', 'CICUKA', -6.85452, 107.837, 0.0000, 0.0000, 0, 'Kab.Sumedang', 'LEBAKJATI - RANCAKALONG - SELAAWI', '', '12082019164600image017.png', 'SUP SUMEDANG 1', 'jb5', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000624, '12.1', 'BABAKAN CIKALAMA', -6.96324, 107.827, 4.2000, 7.7000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019175230image001.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000625, '12.10', 'CIBARENGKOK II', -6.84663, 107.695, 3.0000, 9.4000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183149image019.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000626, '12.11', 'CISUDAJAYA', -6.8465, 107.98, 11.0000, 9.4000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183321image021.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000627, '12.12', 'CICANUKUR', -6.84604, -107.984, 6.6000, 9.1000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183500image023.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000628, '12.13', 'CICANUKUR', -6.84575, 108, 4.0000, 9.6000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183623image027.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000629, '12.14', 'CIDERMA', -6.83338, 107.011, 8.8000, 9.1000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183806image027.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000630, '12.15', 'CICAPAR', -6.83544, 108.003, 33.4000, 9.6000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183947image029.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000631, '12.16', 'CIGODEG', -6.84139, 108.023, 7.6000, 9.1000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019184122image031.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000632, '12.17', 'SUKLELE', -6.84402, 108.028, 2.7000, 9.0000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019184301image033.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000633, '12.18', 'CIGANGSA', -6.85721, 108.029, 4.6000, 8.2000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019184445image035.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000634, '12.19', 'CIMACAN', -6.86053, 108.032, 10.0000, 10.1000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019184611image037.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000635, '12.2', 'CIMANDE', -6.95956, 107.826, 12.9000, 8.3000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019175455image003.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000636, '12.20', 'DUSTAN', -6.86863, 108.034, 8.8000, 11.0000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019184731image039.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000637, '12.21', 'CIRENDRA', -6.87288, 108.035, 4.0000, 8.6000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019184854image041.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000638, '12.22', 'CITEGAL', -6.87612, 108.036, 3.8000, 7.6000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185006image043.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000639, '12.23', 'CIKASONGAMBANG', -6.87878, 108.035, 8.3000, 9.6000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185127image045.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000640, '12.24', 'BAKOM', -6.88504, 108.035, 3.0000, 7.0000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185247image047.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000641, '12.25', 'CIWALUNG', -6.89552, 108.057, 4.3000, 7.8000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185431image049.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000642, '12.26', 'CIBAYAWAK', -6.89699, 108.058, 21.7000, 9.5000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185548image051.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000643, '12.27', 'CIPAOK', -6.90165, 108.064, 6.0000, 6.6000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185656image053.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000644, '12.28', 'CILEUWEUNG', -6.91396, 108.068, 7.0000, 8.0000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185822image055.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000645, '12.29', 'CIHONJE', -6.91626, 108.068, 19.6000, 6.7000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019185946image057.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000646, '12.3', 'BANGKIR', -6.5715, 107.825, 2.0000, 8.0000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019175619image005.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000647, '12.30', 'CIJURAI', -6.91743, 108.069, 11.0000, 6.5000, 0, 'Kab.Sumedang', 'SITURAJA -DARMARAJA', '', '12082019190107image059.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000648, '12.31', 'CIKUKULU', -6.95671, 108.1, 4.2000, 7.6000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019190248image061.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000649, '12.32', 'CIKUKULU I', -6.96558, 108.095, 1.6000, 7.0000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019190414image063.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000650, '12.33', 'CIKAREO I', -6.94876, 108.097, 5.0000, 7.4000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019190559image065.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000651, '12.34', 'CIKAREO II', -6.99969, 108.11, 30.0000, 9.1000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019190725image067.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000652, '12.35', 'TAGOG', -7.00978, 108.099, 2.3000, 7.0000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019190905image069.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000653, '12.36', 'CILUNGKANG', -7.01008, 108.099, 2.3000, 9.5000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019191031image071.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000654, '12.37', 'SUMBAWANA', -7.00977, 108.099, 2.6000, 7.0000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019191426image075.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000655, '12.38', 'CISURIAN', -7.00977, 108.099, 7.8000, 7.3000, 0, 'Kab.Sumedang', 'SP.KIRISIK(WADO)-BTS.SUMEDANG/GARUT', '', '12082019191556image077.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000656, '12.39', 'CIALING', -6.94521, 108.106, 25.5000, 9.6000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019191733image079.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000657, '12.4', 'CICABE', -6.94583, 107.827, 9.8000, 9.2000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019175823image007.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000658, '12.40', 'CIBALA', -6.95011, 108.137, 6.0000, 9.5000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019191857image081.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000659, '12.41', 'CIPICUNG', -6.95222, 108.143, 6.0000, 9.5000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019192028image083.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000660, '12.43', 'SALADO I', -6.96285, 108.164, 3.0000, 10.3000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019192330image087.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000661, '12.44', 'NYALINDUNG', -6.96824, 108.174, 6.0000, 11.5000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019192551image089.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000662, '12.45', 'CIHIKEU', -6.9596, 108.157, 13.2000, 6.4000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019192706image091.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000663, '12.5', 'CIKANDANG', -6.94324, 107.829, 5.7000, 8.3000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019175944image009.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000664, '12.6', 'SIMPANG', -6.05871, 107.934, 12.0000, 9.4000, 0, 'Kab.Sumedang', 'PARAKAN MUNCANG - WARUNG SIMPANG', '', '12082019180103image011.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000665, '12.7', 'CIPELES', -6.84033, 107.934, 60.0000, 9.5000, 0, 'Kab.Sumedang', 'JL. PRABU TAJI MALELA (SUMEDANG)', '', '12082019180244image013.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000666, '12.8', 'CIKONENG', -6.85478, 107.996, 11.7000, 12.5000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019182113image015.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000667, '12.9', 'CIBARENGKOK I', -6.84688, 107.968, 6.3000, 8.1000, 0, 'Kab.Sumedang', 'SUMEDANG - SITURAJA', '', '12082019183029image017.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000668, '1242', 'SALADO', -6.95144, 108.152, 6.8000, 9.4000, 0, 'Kab.Sumedang', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', '', '12082019192151image085.png', 'SUP SUMEDANG 2', 'jb6', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000669, '2.1', 'CIRUUM', -7.24038, 107.895, 25.6000, 7.2000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019122931image005.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000670, '2.10', 'CIMANUK III', -7.27156, 107.816, 47.0000, 6.5000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019124910image023.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000671, '2.11', 'CIBEUREUM GEDE', -7.27643, 107.811, 14.3000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019125352image025.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000672, '2.12', 'CIBUREUM LEUTIK', -7.28271, 107.808, 11.5000, 7.4000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019125521image027.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000673, '2.13', 'CIBENING', -7.28617, 107.805, 4.3000, 6.4000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019125639image029.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000674, '2.14', 'CIPARUNGPUNG', -7.2938, 107.804, 9.4000, 7.5000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019125810image031.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000675, '2.15', 'CIHAREMIS', -7.3151, 107.794, 2.5000, 7.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019125930image033.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000676, '2.16', 'CIMANUK II', -7.73443, 107.797, 25.4000, 7.5000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019130054image035.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000677, '2.17', 'CIHARUS', -7.37524, 107.819, 2.5000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019130207image037.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000678, '2.18', 'CIGUGUR', -7.39331, 107.836, 8.8000, 6.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019130318image039.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000679, '2.19', 'CIKEMBAR', -7.3938, 107.837, 3.7000, 6.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019130526image041.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000680, '2.2', 'CIPAMULIHAN', -7.25528, 107.87, 2.3000, 6.2000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019123045image007.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000681, '2.20', 'CIUDIAN', -7.41126, 107.831, 4.0000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019130704image043.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000682, '2.21', 'CIENGANG', -7.4463, 107.834, 5.0000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131148image043.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000683, '2.22', 'CISANGIRI', -7.45927, 107.824, 13.2000, 6.3000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131408image047.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000684, '2.23', 'CIBEUREUM', -7.46514, 107.826, 4.0000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131527image049.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000685, '2.24', 'CISITU CIHIDEUNG', -7.46797, 107.829, 2.5000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131706image051.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000686, '2.25', 'CIAWI', -7.47644, 107.833, 14.0000, 7.9000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131824image053.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000687, '2.26', 'CIMONTENG', -7.48024, 107.834, 5.0000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019131942image055.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000688, '2.27', 'CICADAS', -7.48657, 107.835, 3.5000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132105image057.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000689, '2.28', 'CIPARAY', -7.4889, 107.831, 4.0000, 7.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132225image059.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000690, '2.29', 'CIPALAHLAR', -7.48759, 107.831, 3.8000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132406image061.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000691, '2.3', 'SALAKURAY', -7.25664, 107.866, 4.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019123154image009.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000692, '2.30', 'CIHAMIRUNG', -7.49149, 107.83, 4.0000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132527image063.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000693, '2.31', 'CIHIDUNG CIBUNTU', -7.49158, 107.83, 2.5000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132648image065.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000694, '2.32', 'CIALEUAN', -7.49467, 107.828, 3.4000, 4.5000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132808image067.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000695, '2.33', 'CIARILEU', -7.50557, 107.814, 4.0000, 6.3000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019132925image069.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000696, '2.34', 'CILUMBUNG', -7.50632, 107.813, 6.0000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019133044image071.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000697, '2.35', 'CIPANJANG', -7.50948, 107.809, 5.0000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019133201image073.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000698, '2.36', 'CISAMOEN', -7.51631, 107.809, 4.0000, 5.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019133319image075.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000699, '2.37', 'CIBENTANG', -7.51999, 107.807, 5.2000, 10.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019133441image077.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000700, '2.38', 'CISINDANG', -7.55601, 107.806, 4.5000, 7.9000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019133553image079.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000701, '2.39', 'CIKADU BEUNTEUR', -7.55716, 107.802, 5.0000, 8.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019143413image081.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000702, '2.4', 'CILIMUS HILIR', -7.26076, 107.856, 5.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019123318image011.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000703, '2.40', 'CIBITUNG', -7.55817, 107.798, 7.3000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019143605image083.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000704, '2.41', 'CIKUYA', -7.55831, 107.791, 5.3000, 6.8000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019143718image085.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000705, '2.42', 'CIKOLOMERAN', -7.56079, 107.788, 2.5000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019143852image087.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000706, '2.43', 'CIGUNTUR', -7.56403, 107.787, 5.7000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144016image089.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000707, '2.44', 'CIBULIGIR', -7.56958, 107.785, 5.7000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144345image091.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000708, '2.45', 'CIMANGLID', -7.57211, 107.785, 2.6000, 4.8000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144453image093.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000709, '2.46', 'CIMARACUN', -7.57523, 107.784, 2.8000, 5.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144615image095.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000710, '2.47', 'CIKODOK', -7.58485, 107.777, 4.0000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144726image097.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000711, '2.48', 'CIGADOG', -7.5877, 107.776, 4.0000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019144848image099.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000712, '2.49', 'CIKAUM', -7.59384, 107.772, 2.0000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019145025image101.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000713, '2.5', 'CILEJET', -7.26077, 107.855, 3.0000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019123442image013.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000714, '2.50', 'CIKARUCAK', -7.59585, 107.772, 12.2000, 10.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019145204image103.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000715, '2.51', 'CIKONDANG', -7.59982, 107.772, 3.3000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019145327image105.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000716, '2.52', 'CIPICUNG', -7.61133, 107.766, 2.8000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019145449image107.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000717, '2.53', 'CIKASO', -7.62733, 107.746, 61.4000, 7.0000, 0, 'Kab.Garut', 'CIKAJANG - PAMEUNGPEUK', '', '12082019145557image109.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000718, '2.6', 'CILIMUS GIRANG', -7.26008, 107.85, 5.1000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019124128image015.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000719, '2.7', 'CIRENDENG', -7.25987, 107.848, 3.4000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019124256image017.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000720, '2.8', 'CINISTI', -7.26665, 107.827, 4.7000, 6.0000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019124415image019.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000721, '2.9', 'BAYONGBONG', -7.27138, 107.818, 9.1000, 6.5000, 0, 'Kab.Garut', 'GARUT - CIKAJANG', '', '12082019124543image021.png', 'SUP GARUT 2', 'jb2', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000722, '3.1', 'CIMANUK', -7.34954, 107.797, 20.0000, 9.4000, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '12082019150004image005.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000723, '3.10', 'RONTOG', -7.44507, 107.644, 4.7000, 6.5000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019152246image017.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000724, '3.11', 'SINGKUR', -7.45194, 107.634, 14.3000, 6.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019152413image020.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000725, '3.12', 'CIBAYONGBONG', -7.45442, 107.626, 11.5000, 7.4000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019152652image022.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000726, '3.13', 'BEKONG', -7.45479, 107.621, 3.0000, 6.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019153056image023.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000727, '3.14', 'CIBALUBUR', -7.4555, 107.601, 10.6000, 7.5000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019153225image024.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000728, '3.15', 'PASANTREN', -7.45517, 107.597, 2.5000, 7.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019153350image025.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000729, '3.16', 'RUPIT', -7.45839, 107.616, 19.0000, 7.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019153502image026.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000730, '3.17', 'CIJANGKAR', -7.45417, 107.623, 2.5000, 7.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019153646image029.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000731, '3.18', 'CIPANCONG', -7.4278, 107.558, 8.8000, 6.5000, 0, 'Kab.Garut', 'BUNGBULANG - SUKARAME', '', '12082019153820image030.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000732, '3.19', 'CIANA', -7.43754, 107.565, 3.7000, 6.5000, 0, 'Kab.Garut', 'BUNGBULANG - SUKARAME', '', '12082019153942image031.gif', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000733, '3.2', 'CIBULUH', -7.35798, 107.782, 5.6000, 8.1000, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '12082019150152image006.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000734, '3.20', 'CIBULENER', -7.43023, 107.559, 4.0000, 7.0000, 0, 'Kab.Garut', 'BUNGBULANG - SUKARAME', '', '12082019154114image033.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000735, '3.21', 'CISALADA', -7.4278, 107.551, 5.0000, 6.0000, 0, 'Kab.Garut', 'BUNGBULANG - SUKARAME', '', '12082019154222image036.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000736, '3.3', 'CISARONI', -7.37131, 107.753, 3.5000, 8.1200, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '12082019150334image008.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000737, '3.4', 'CIJOTANG', -7.37996, 107.73, 10.0000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '14082019224948image011.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000738, '3.5', 'AWASSAGARA', -7.38064, 107.737, 8.1000, 8.8000, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '14082019225133image009.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000739, '3.6', 'HALIMUN', -7.41019, 107.719, 24.0000, 6.0000, 0, 'Kab.Garut', 'CIKAJANG - SUMADRA', '', '12082019151254image010.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000740, '3.7', 'ARINEM', -7.44021, 107.7, 3.4000, 6.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019151756ARINEM.jpg', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000741, '3.8', 'TONJONG', -7.46161, 107.67, 4.7000, 6.0000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019151922TONJONG.jpg', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000742, '3.9', 'CIPARAY', -7.44373, 107.651, 9.1000, 6.5000, 0, 'Kab.Garut', 'SUMADRA - BUNGBULANG', '', '12082019152121image016.png', 'SUP GARUT 3', 'jb3', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000743, '4.1', 'SASAK GEULIS', -7.3076, 107.52, 36.0000, 5.5000, 1, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019090054IMG-20190806-WA0016.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000744, '4.10', 'CIGEMBONGII', -7.34402, 107.5, 5.0000, 7.1000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019112004IMG-20190806-WA0070.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000745, '4.11', 'CIGEMBONGI', -7.34477, 107.499, 4.0000, 7.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019080412IMG-20190806-WA0073.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000746, '4.12', 'CIBENGANG', -7.34972, 107.493, 5.1000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019112422IMG-20190806-WA0078.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000747, '4.13', 'CISARUA', -7.36101, 107.5, 7.5000, 7.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019113210IMG-20190805-WA0019.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000748, '4.14', 'CIKUNING', -7.37672, 107.5, 4.0000, 6.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019113355IMG-20190805-WA0034.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000749, '4.15', 'CITENGAH', -7.37803, 107.501, 9.0000, 6.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019113537IMG-20190805-WA0037.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000750, '4.16', 'CIPEUNDEUY', -7.38033, 107.503, 4.5000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019113809IMG-20190806-WA0002.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000751, '4.17', 'CITALAGA', -7.38115, 107.503, 11.7000, 6.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019114005IMG-20190805-WA0062.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000752, '4.18', 'CIBEUNTEUR', -7.38231, 107.505, 5.0000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019114216IMG-20190805-WA0035.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000753, '4.19', 'CIBODAS', -7.38409, 107.522, 20.0000, 6.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019114354IMG-20190805-WA0026.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000754, '4.2', 'CILANGKOB', -7.30981, 107.517, 7.1000, 8.9000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019091042IMG-20190806-WA0013.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000755, '4.20', 'CITARUNGGANG', -7.39373, 107.528, 4.0000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019114604IMG-20190805-WA0018.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000756, '4.21', 'CIENCIT', -7.40142, 107.531, 4.0000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019114819IMG-20190805-WA0015.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000757, '4.22', 'CISUMUR', -7.41094, 107.538, 5.4000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019115258IMG-20190806-WA0075.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000758, '4.23', 'CILAYU II', -7.41224, 107.544, 40.0000, 9.6000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019132138JEM CILAYU II.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000759, '4.24', 'CICURUG', -7.33648, 107.505, 6.5000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019075014KM BDG 76+650 CICURUG.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000760, '4.25', 'CIKULON', -7.35737, 107.497, 4.0000, 4.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019081001IMG-20190805-WA0028.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000761, '4.26', 'CIBULUH', -7.35909, 107.499, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019081356IMG-20190805-WA0027.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000762, '4.27', 'CIPICUNG', -7.36028, 107.5, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019081636IMG-20190805-WA0021.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000763, '4.28', 'CITEMEN I', -7.41017, 107.539, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000764, '4.29', 'CITEMEN II', -7.41081, 107.54, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019090708IMG-20190806-WA0072.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000765, '4.3', 'CIHEULANG', -7.31103, 107.514, 4.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019091309IMG-20190806-WA0039.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000766, '4.30', 'CITEMEN III', -7.41071, 107.542, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '15082019090932IMG-20190806-WA0068.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000767, '4.31', 'CIAWITALI', -7.41556, 107.543, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000768, '4.32', 'CIAWITALI I', -7.41719, 107.544, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000769, '4.33', 'CIBENTANG', -7.42077, 107.542, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000770, '4.34', 'CISAGU', -7.42326, 107.54, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000771, '4.4', 'KERETEG I', -7.31821, 107.507, 4.5000, 5.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019092005IMG-20190805-WA0060.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000772, '4.5', 'KERETEG II', -7.32, 107.507, 6.0000, 5.5000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019111006KERETEG2.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000773, '4.6', 'SUKARAME', -7.43878, 107.532, 0.0000, 0.0000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000774, '4.7', 'CIJAGIR', -7.32923, 107.508, 5.0000, 7.2000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019111227IMG-20190805-WA0053.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000775, '4.8', 'CIKAWUNG', -7.32962, 107.509, 10.7000, 7.5000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019111416IMG-20190805-WA0051.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000776, '4.9', 'CIAWITALI', -7.33873, 107.504, 3.6000, 7.1000, 0, 'Kab.Garut', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANCABUAYA (PALEUMBUHAN)', '', '09082019111746IMG-20190806-WA0066.jpg', 'SUP GARUT 4', 'jb4', 'uptd4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000777, '1', ' Citeguh I ', -7.3384, 107.952, 4.3000, 6.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019092439JembatanCiteguh1.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000778, '10', ' Ciramajaya ', -7.36856, 108.099, 6.0000, 7.6000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019092610JembatanCiramajaya.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000779, '100', ' Cibuni Agung ', -7.46405, 108.196, 5.2000, 7.2000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019090421cibuniagung.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000780, '101', ' Cipanagon ', -7.46703, 108.196, 9.9000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091118cipanaggon.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000781, '102', ' Cikatulampa ', -7.47924, 108.192, 10.4000, 8.7000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091211cikatulampa.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000782, '103', ' Cigarukgak ', -7.48322, 108.191, 3.8000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091246cigarukgak.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000783, '107', ' Cilonggan ', -7.51408, 108.185, 51.7000, 6.0000, 4, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091306cilonggan.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000784, '108', ' Cinangsi ', -7.52893, 108.175, 12.7000, 8.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091502cinangsi1.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000785, '109', ' Cigelap ', -7.52805, 108.175, 13.3000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '19082019091551cigelap.JPG', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000786, '11', '  Ciwulan ', -7.36326, 108.102, 47.6000, 6.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019092734JembatanCiwulan.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000787, '110', ' Cibungur  ', -7.53441, 108.177, 6.8000, 7.8000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000788, '111', ' Cipangukusan ', -7.5378, 108.176, 2.8000, 11.4000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000789, '112', ' Cibajing ', -7.546, 108.178, 9.1000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000790, '113', ' Cilongkrang-I ', -7.55072, 108.176, 8.0000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000791, '115', ' Cicaban.Hilir ', -7.5788, 108.163, 12.0000, 7.2000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000792, '116', ' Cisaninten ', -7.59251, 108.161, 3.4000, 7.0000, 2, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000793, '117', ' Cikarees ', -7.60716, 108.151, 7.5000, 7.0000, 2, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000794, '118', ' Cipanangga/Cijulang ', -7.61286, 108.15, 3.7000, 9.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000795, '12', ' Leuwi Heulang I ', -7.3635, 108.105, 3.4000, 7.5000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019092859JembatanLeuwiheulang1.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000796, '120', ' Cipari ', -7.62544, 108.137, 3.3000, 9.6000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000797, '121', ' Cibeunying ', -7.6362, 108.125, 2.9000, 7.1000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000798, '122', ' Cilangla ', -7.62976, 108.112, 40.6000, 7.4000, 2, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000799, '123', ' Cibeureum ', -7.63199, 108.097, 168.7000, 6.0000, 3, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000800, '124', ' Cijalu ', -7.65477, 108.078, 36.0000, 7.3000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000801, '126', ' Cigandok ', -7.66418, 108.077, 5.4000, 7.0000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000802, '127', ' Citalahab ', -7.66844, 108.074, 21.2000, 5.6000, 3, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000803, '128', ' Ciceuri ', -7.68389, 108.049, 6.6000, 7.9000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000804, '129', ' Citisuk ', -7.38114, 108.209, 7.8000, 6.9000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000805, '13', ' Leuwi Heulang II ', -7.36248, 108.105, 2.7000, 7.1000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019092959JembatanLeuwiheulang2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000806, '130', ' Cikangkung/Cicakung ', -7.70962, 108.034, 3.0000, 8.2000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000807, '131', ' Citoe ', -7.72995, 108.022, 29.3000, 6.3000, 3, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000808, '132', ' Cimangkak ', -7.73661, 108.018, 5.6000, 7.3000, 1, 'Kab. Tasikmalaya', 'Karangnunggal - Cipatujah', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000809, '133', ' Cipasangrahan ', -7.74562, 108.016, 3.0000, 7.0000, 1, 'Kab. Tasikmalaya', 'Jalan Raya Cipatujah (Cipatujah)', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000810, '134', 'SURAKATIGA-I', -6.963, 108.491, 9.5000, 7.7000, 1, 'Kab.Kuningan', 'Jl. RE. Martadinata', '', '19082019082240IMG-20190815-WA0052.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000811, '135', 'SURAKATIGA-II', -6.96587, 108.49, 7.0000, 10.0000, 1, 'Kab.Kuningan', 'Jl. RE. Martadinata', '', '19082019082352IMG-20190815-WA0055.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000812, '136', 'CIPORANG', -6.99069, 108.569, 6.5000, 6.0000, 2, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019082719IMG-20190815-WA0049.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000813, '137', ' CILAMPUYANG ', -6.98795, 108.57, 3.4000, 7.0000, 1, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019082828IMG-20190815-WA0048.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000814, '138', ' CIKUDA ', -6.9848, 108.571, 3.0000, 7.0000, 1, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019084741IMG-20190816-WA0002.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000815, '139', 'CINANGSI', -6.98172, 108.573, 3.0000, 7.0000, 1, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019085023IMG-20190815-WA0046.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000816, '14', ' Leuwi Heulang III ', -7.36201, 108.106, 2.0000, 8.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019093126JembatanLeuwiheulang3.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000817, '140', ' CISANDE ', -6.98096, 108.573, 25.4000, 7.0000, 1, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019085142IMG-20190815-WA0045.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000818, '141', ' CIOLOK ', -6.97518, 108.577, 2.3000, 6.8000, 1, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019085222IMG-20190815-WA0044.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000819, '142', 'CITATAH', -6.97407, 108.577, 6.4000, 6.0000, 2, 'Kab.Kuningan', 'Kuningan - Ciawigebang', '', '19082019085443IMG-20190815-WA0043.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000820, '143', ' CINUMBANG ', -6.97857, 108.647, 4.1000, 9.1000, 1, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '15082019130948JembatanCinumbang.jpeg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000821, '144', ' CIBULUH ', -6.96206, 108.679, 3.8000, 7.1000, 1, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '190820190820012. cibuluh.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000822, '145', ' CIKEUSIK ', -6.96142, 108.679, 30.8000, 6.0000, 1, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '190820190855583.cikeusik.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000823, '146', ' CINAMBO ', -6.95819, 108.682, 10.0000, 6.3000, 1, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '15082019131100JembatanCinambo.jpeg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000824, '147', ' CIROKE ', -6.95704, 108.686, 4.5000, 7.0000, 1, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '190820190856405.ciroke.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000825, '148', ' PANYAWUNGAN ', -6.95829, 108.694, 17.2000, 6.5000, 4, 'Kab.Kuningan', 'Ciawigebang - bts.Cirebon/kuningan', '', '190820190857096.panyawungan.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000826, '15', ' Cilembu ', -7.35844, 108.107, 4.0000, 7.2000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019093237JembatanCilembu.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000827, '151', ' PANIIS LEBAK ', -6.79904, 108.472, 9.9000, 7.0000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190858339.paniislebak.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000828, '152', ' CIPAKALERAN II ', -6.80767, 108.466, 20.0000, 6.0000, 2, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190859188.cipakaleran2.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000829, '153', ' CIPAKALERAN I ', -6.80831, 108.468, 4.4000, 7.0000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190859537.cipakaleran1.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000830, '154', ' CIJONTOR ', -6.80873, 108.472, 10.8000, 8.2000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190900466.cijontor.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000831, '155', ' CIPAGER ', -6.81363, 108.472, 27.2000, 8.2000, 2, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190902035.cipager.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000832, '156', ' CINANGKA ', -6.8204, 108.476, 6.5000, 6.0000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190903174.cinangka.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000833, '157', ' CIBULAKAN ', -6.83227, 108.482, 6.0000, 7.1000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190905563.cibulakan.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000834, '158', ' CILOA ', -6.83475, 108.484, 9.5000, 5.6000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190906332.ciloa.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000835, '159', ' CIKURUTUG ', -6.83803, 108.485, 10.3000, 5.3000, 1, 'Kab.Kuningan', 'Mandirancan - Pakembangan', '', '190820190909241.cikurutug.JPG', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000836, '16', ' Cikunten II ', -7.35701, 108.107, 7.8000, 8.6000, 2, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019093339JembatanCikunten2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000837, '160', ' CIPANSOR ', -6.87537, 108.47, 7.4000, 6.0000, 1, 'Kab.Kuningan', 'Pakembangan - Bojong (Jl. Linggarjati)', '', '190820190910311.cipansor.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000838, '161', ' CIPURUT ', -6.87212, 108.47, 12.7000, 6.0000, 1, 'Kab.Kuningan', 'Pakembangan - Bojong (Jl. Linggarjati)', '', '190820190911312.cipurut.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000839, '162', 'CIHAWANGAN GEDE', -7.00855, 108.594, 7.0000, 5.7000, 1, 'Kab.Kuningan', 'Oleced - Luragung', '', '19082019091326IMG-20190815-WA0042.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000840, '163', 'CITAMIANG II', -7.00992, 108.598, 5.2000, 6.7000, 1, 'Kab.Kuningan', 'Oleced - Luragung', '', '19082019091410IMG-20190815-WA0041.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000841, '164', 'WATES', -7.01404, 108.623, 4.4000, 5.5000, 2, 'Kab.Kuningan', 'Oleced - Luragung', '', '', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000842, '165', 'CISANGGARUNG A', -7.01936, 108.649, 120.4000, 7.0000, 2, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131354JembatanCisanggarung.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000843, '166', 'CIBUNIHAJI', -7.01953, 108.656, 5.0000, 6.6000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131430JembatanCibunihaji.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000844, '167', 'CINAMBO', -7.01945, 108.658, 8.2000, 7.2000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131535JembatanCinambo.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000845, '168', 'CILEUYA', -7.02537, 108.678, 11.4000, 8.1000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131617JembatanCileuya.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000846, '169', 'CIBADUGA', -7.02585, 108.684, 7.0000, 7.5000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131704JembatanCibaduga.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000847, '17', ' Ciharashas ', -7.35241, 108.104, 6.3000, 8.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019093447JembatanCiharashas.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000848, '170', 'KOPI JENGKOL', -7.03308, 108.695, 6.7000, 5.7000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131753JembatanKopiJengkol.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000849, '171', 'SUMUR KAWUNG', -7.03496, 108.696, 2.3000, 8.7000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131839JembatanSumurKawung.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000850, '173CIKARO ', 'CIKARO B', -7.04884, 108.721, 40.5000, 6.9000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '19082019091626IMG-20190816-WA0003.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000851, '174', 'CIKASUNGKA', -7.05012, 108.726, 3.6000, 6.0000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019131920JembatanCikasungka.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000852, '175', 'CUKANG SARAY', -7.05046, 108.729, 5.4000, 7.4000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132011JembatanCukangSaray.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000853, '176', 'CIJATI', -7.05507, 108.735, 6.0000, 7.3000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132059JembatanCijati.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000854, '177', 'CIKARACA', -7.05574, 108.737, 3.2000, 6.7000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132144JembatanCikaraca.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000855, '178', 'CIBENER', -7.05579, 108.743, 6.4000, 6.0000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132219JembatanCibener.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000856, '179', 'CIWENTANG', -7.05421, 108.749, 4.4000, 5.9000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132307JembatanCiwentan.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000857, '18', 'Cimerah-I', -7.35041, 108.105, 12.4000, 7.0000, 1, 'Km.Bdg.104+080', 'Bts.Garut/Tasikmalaya - Singaparna', '', '08082019144644cimerah.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000858, '180', 'CIPAKU', -7.05527, 108.753, 4.5000, 8.8000, 1, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '15082019132357JembatanCipaku.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000859, '181', 'CIJANGKELOK', -7.05682, 108.755, 101.2000, 6.0000, 8, 'Kab.Kuningan', 'Luragung - Cibingbin', '', '19082019091735IMG-20190816-WA0008.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000860, '182', 'CIKONDANG', -7.05826, 108.762, 11.9000, 6.0000, 1, 'Kab.Kuningan', 'Cibingbing - Batas Jateng ( Penanggapan)', '', '19082019091837IMG-20190816-WA0009.jpg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000861, '183', 'CARIANG', -7.05972, 108.765, 5.9000, 7.6000, 1, 'Kab.Kuningan', 'Cibingbing - Batas Jateng ( Penanggapan)', '', '', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000862, '184', 'CANDAWADAK', -7.05911, 108.771, 5.9000, 5.6000, 1, 'Kab.Kuningan', 'Cibingbing - Batas Jateng ( Penanggapan)', '', '15082019132535JembatanCandawadak.jpeg', 'SUP KUNINGAN 1', 'jb4', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000863, '185', 'CIREUNGIT', -6.93546, 108.517, 3.0000, 7.5000, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '190820190922161.cireungit.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000864, '186', 'CILEUWEUNG', -6.93822, 108.524, 3.0000, 5.0000, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '190820190923212.cileuweung.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000865, '187', 'CIMOLONGPONG', -6.94447, 108.536, 3.0000, 5.5000, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '190820190924353.cimolongpong.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000866, '188', 'CIHAUR', -6.9543, 108.551, 3.0000, 3.5000, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '190820190925174. cihaur.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000867, '189', 'CIBERES', -6.95541, 108.552, 3.5000, 4.2500, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '190820190926125.ciberes.jpg', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000868, '19', ' Cimerah II ', -7.35026, 108.106, 4.3000, 7.6000, 1, 'Kab.Tasikmalaya', 'Jl. Raya Singaparna (singaparna)', '', '14082019093521JembatanCimerah2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000869, '190', 'CIALOK', -6.93659, 108.701, 3.0000, 3.0000, 1, 'Kab.Kuningan', 'Ciawigebang - Jalaksana', '', '', 'SUP KUNINGAN 2', 'jb5', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000870, '2', ' Citeguh II ', -7.33985, 107.953, 6.8000, 7.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019093729JembatanCiteguh2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000871, '20', ' Cikupang ', -7.35039, 108.108, 4.6000, 8.5000, 1, 'Kab.Tasikmalaya', 'Jl. Raya Singaparna (singaparna)', '', '14082019093825JembatanCikupang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000872, '21', ' CikIray ', -7.34962, 108.115, 4.7000, 10.3000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019093913JembatanCikiray.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000873, '22', ' Ciseuseupan ', -7.34609, 108.123, 5.1000, 7.0000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094006JembatanCiseuseupan.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000874, '23', ' Cisaruni ', -7.34518, 108.13, 8.6000, 9.0000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094051JembatanCisaruni.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000875, '24', ' Cianda ', -7.34516, 108.137, 8.5000, 9.4000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094219JembatanCianda.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000876, '25', ' Cilaja ', -7.33934, 108.15, 5.0000, 7.6000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094325JembatanCilaja.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000877, '26', ' Cikunir ', -7.33636, 108.154, 41.1000, 7.0000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094456JembatanCikunir.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000878, '27', ' Citutut ', -7.33632, 108.155, 3.0000, 10.0000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094614JembatanCitutut.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000879, '28', ' Cikunir Kolot ', 0, 0, 3.1000, 6.0000, 0, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019094744JembatanCikunirKolot.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000880, '29', ' Cibanjaran ', -7.34588, 108.171, 5.4000, 11.0000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019095002JembatanCibanjaran.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000881, '3', ' Citenggek ', -7.34196, 107.957, 1.8000, 10.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019095100JembatanCitenggek.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000882, '30', ' Cisambong ', -7.34445, 108.193, 3.9000, 7.1000, 1, 'Kab.Tasikmalaya', 'Singaparna - Tasikmalaya', '', '14082019095235JembatanCisambong.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000883, '31', ' Ciropoh ', -7.28757, 108.196, 4.0000, 24.0000, 1, 'Kota.Tasikmalaya', 'Jalan Brigjen Wasitakusumah', '', '14082019095416JembatanCiropoh.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000884, '32', ' Cigede I ', -7.28888, 108.194, 4.0000, 24.0000, 1, 'Kota.Tasikmalaya', 'Jalan Brigjen Wasitakusumah', '', '14082019095523JembatanCigede1.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000885, '33', ' Cigede II ', -7.29088, 108.194, 5.0000, 20.5000, 1, 'Kota.Tasikmalaya', 'Jalan Brigjen Wasitakusumah', '', '14082019095625JembatanCigede2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000886, '34', ' Ciloseh ', -7.29802, 108.192, 32.0000, 18.0000, 1, 'Kota.Tasikmalaya', 'Jalan Brigjen Wasitakusumah', '', '14082019095834JembatanCiloseh.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000887, '35', ' Cibengkok ', -7.30268, 108.194, 3.8000, 20.0000, 1, 'Kota.Tasikmalaya', 'Jalan Letnan Harun', '', '14082019095945JembatanCibengkok.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000888, '36', ' Cijolang ', -7.309, 108.196, 2.0000, 20.0000, 1, 'Kota.Tasikmalaya', 'Jalan Letnan Harun', '', '14082019100236JembatanCijolang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000889, '4', ' Cilame/Cidano ', -7.34402, 107.964, 3.0000, 6.3000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019100711JembatanCilameCidano.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000890, '40', ' Cimulu ', -7.32147, 108.199, 24.0000, 10.2000, 1, 'Kota.Tasikmalaya', 'Jl. Ir. H Djuanda (Tasikmalaya)', '', '14082019100800JembatanCimulu.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000891, '41', ' Cimulia ', -7.32367, 108.199, 2.5000, 9.8000, 1, 'Kota.Tasikmalaya', 'Jl. Ir. H Djuanda (Tasikmalaya)', '', '14082019100848JembatanCimulia.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000892, '42', ' Cipanglay ', -7.32663, 108.198, 3.9000, 9.8000, 1, 'Kota.Tasikmalaya', 'Jl. Ir. H Djuanda (Tasikmalaya)', '', '14082019100934JembatanCipanglay.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000893, '43', ' Cikalang ', -7.33313, 108.198, 3.7000, 9.4000, 1, 'Kota.Tasikmalaya', 'Jl. Ir. H Djuanda (Tasikmalaya)', '', '14082019101024JembatanCikalang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000894, '44', ' Cikunten ', -7.34458, 108.197, 25.9000, 16.6000, 1, 'Kota.Tasikmalaya', 'Jl.Gubernur Swaka (Tasikmalaya)', '', '14082019101143JembatanCikunten.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000895, '45', ' Sambong ', -7.34669, 108.198, 2.0000, 14.8000, 1, 'Kota Tasikmalaya', 'Jl.Gubernur Swaka (Tasikmalaya)', '', '', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000896, '46', ' Cisumur ', -7.3639, 108.205, 7.8500, 19.6000, 1, 'Kota.Tasikmalaya', 'Jl.Gubernur Swaka (Tasikmalaya)', '', '14082019101229JembatanCisumur.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000897, '47', ' Ciranji ', -7.37069, 108.218, 3.0000, 12.8000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101311JembatanCiranji.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000898, '48', ' Cicantel ', -7.37258, 108.224, 2.5000, 12.6000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101401JembatanCicantel.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000899, '49', ' Cikunten II ', -7.37286, 108.234, 5.5000, 13.0000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101443JembatanCikunten2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000900, '5', ' Cikondang ', -7.35106, 107.973, 6.5000, 7.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019101524JembatanCikondang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000901, '50', ' Cikunten I ', -7.36324, 108.238, 2.5000, 12.6000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101603JembatanCikunten1.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000902, '51', 'Cimulu', -7.34971, 108.236, 6.0000, 12.0000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101647JembatanCimulu.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000903, '52', '  Ciburuy ', -7.34185, 108.239, 3.0000, 12.9000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101737JembatanCiburuy.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000904, '53', ' Siluman ', -7.34099, 108.24, 7.0000, 13.0000, 1, 'Kota.Tasikmalaya', 'Jl. Cisumur Garuda (Letjen Mashudi)', '', '14082019101823JembatanSiluman.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000905, '54', ' Cibarengkok ', -7.33822, 108.24, 6.7000, 10.5000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019101900JembatanCibarengkok.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000906, '55', 'Cikalang', -7.33985, 108.245, 5.6000, 7.8000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019101943JembatanCikalang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000907, '56', ' Lawangcondong ', -7.34677, 108.256, 5.5000, 6.5000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102038JembatanLawangcondong.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000908, '57', ' Lawangcondong II ', -7.3482, 108.257, 2.0000, 9.0000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102122JembatanLawangcondong 2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000909, '58', ' Cikatuncar ', -7.35103, 108.259, 4.4000, 6.0000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102208JembatanCikatuncar.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000910, '59', ' Tabrik ', -7.35163, 108.261, 2.6000, 8.3000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102246JembatanTabrik.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000911, '6', ' Cigarunggang ', -7.35338, 107.977, 2.0000, 10.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019102326JembatanCigarunggang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000912, '60', ' Ciwangsa ', -7.35381, 108.265, 4.6000, 6.0000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102404JembatanCiwangsa.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000913, '61', ' Ciherang ', -7.35436, 108.276, 2.4000, 9.0000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102442JembatanCiherang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000914, '62', ' Cigarunggang/Cimulu ', -7.35419, 108.277, 8.2000, 6.0000, 1, 'Kota.Tasikmalaya', 'Jl. Garuda (Tasikmalaya)', '', '14082019102527JembatanCigarunggangatwCimulu.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000915, '63', ' Walagar ', -7.35247, 108.293, 7.3000, 8.3000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019102612JembatanWalagar.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000916, '64', ' Patrol Kulon ', -7.34913, 108.299, 5.0000, 6.8000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019102812JembatanPatrolkulon.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000917, '65', ' Patrol Wetan ', -7.34991, 108.303, 3.5000, 10.1000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019102922JembatanPatrolwetan.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000918, '66', ' Cimulu ', -7.35061, 108.306, 3.3000, 13.7000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019103027JembatanCimulumanonjaya.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000919, '67', '  Pasir Panjang ', -7.35222, 108.315, 3.1000, 6.5000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019103110JembatanPasirpanjang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000920, '68', ' Cisalam ', -7.35353, 108.317, 5.9000, 6.0000, 1, 'Kab.Tasikmalaya', 'Tasikmalaya-Manonjaya-Panaekan (Goler)', '', '14082019103158JembatanCisalam.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000921, '69', 'Ciwelan-II', -7.11893, 108.158, 7.4000, 8.1000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019141716Ciwelan_II.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000922, '7', ' Citamiang ', -7.35725, 107.98, 3.0000, 9.3000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019103259JembatanCitamiang.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000923, '71', 'Cilempeng', -7.11848, 108.159, 4.3000, 6.8000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019142755cilempeng.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000924, '72', 'Genteng', -7.11391, 108.172, 4.9000, 7.7000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019142936genteng.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000925, '73', 'Randu', -7.11511, 108.18, 4.0000, 9.1000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019143138randu.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000926, '74', 'Cipicung', -7.11865, 108.19, 3.3000, 7.7000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019143448cipicung.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000927, '75', 'Cilemper', -7.12038, 108.203, 3.0000, 6.7000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019144117Cilemper.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000928, '76', 'Citanduy', -7.12519, 108.218, 12.0000, 7.5000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019145640Citanduy.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000929, '77', 'Cikawung', -7.12482, 108.226, 6.3000, 7.7000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '14082019093836Cikawung.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000930, '78', 'Ciwalen/Pelengkung', -7.12506, 108.242, 6.5000, 7.7000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019150042CPelengkung.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000931, '79', 'Garahang', -7.1391, 108.275, 1.5000, 8.5000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '09082019150212Garahang.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000932, '8', ' Cibiuk I ', -7.37659, 108.051, 15.8000, 9.0000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019103443JembatanCibiuk1.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000933, '80', 'Kopeng/Cigeureung', -7.15283, 108.296, 5.4000, 7.0000, 1, 'Kab. Tasikmalaya', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasikmalaya/Ciamis)', '', '14082019093351Cigeurung.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000934, '81', 'Patrol', -7.16197, 108.324, 10.5000, 7.7000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019151434Patrol.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000935, '82', 'Nyalindung/Pamanyoan', -7.16247, 108.333, 7.6000, 7.5000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019151601Nyalindung.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000936, '83', 'Cibeber-I', -7.1675, 108.345, 5.1000, 8.1000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019151736beber-1.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000937, '84', 'Cibeber-II', -7.16856, 108.347, 3.0000, 7.4000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019151859beber-2.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000938, '85', 'Lampajang', -7.16952, 108.351, 3.6000, 7.3000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019152030lampajang.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000939, '86', 'Sukamulya', -7.17025, 108.359, 2.1500, 7.1000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019153511Sukamulya.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000940, '87', 'Cigajah', -7.17498, 108.363, 2.0500, 7.6000, 1, 'Kab. Ciamis', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Winduraja(Kawali)', '', '09082019153616Cigajah.jpeg', 'SUP CIAMIS-BANJAR-PANGANDARAN', 'jb3', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000941, '88', ' Kersamenak ', -7.38394, 108.207, 2.0000, 9.0000, 1, 'Kota. Tasikmalaya', 'Jl. Perintis Kemerdekaan (Tasikmalaya)', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000942, '89', ' Cicantel ', -7.38486, 108.207, 41.1000, 6.0000, 1, 'Kota. Tasikmalaya', 'Jl. Perintis Kemerdekaan (Tasikmalaya)', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000943, '9', ' Cibiuk II ', -7.37516, 108.055, 2.9000, 9.4000, 1, 'Kab.Tasikmalaya', 'Bts.Garut/Tasikmalaya - Singaparna', '', '14082019103553JembatanCibiuk2.jpeg', 'SUP TASIKMALAYA 1', 'jb1', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000944, '90', ' Cimanggu ', -7.4092, 108.205, 4.0000, 8.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000945, '91', ' Cibeas ', -7.4092, 108.205, 2.0000, 8.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000946, '92', ' Cibangbay ', -7.42053, 108.2, 21.8000, 7.0000, 2, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000947, '93', ' Cileuwibala ', -7.42316, 108.199, 5.0000, 9.9000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000948, '94', ' Cikarata-I ', -7.429, 108.194, 3.4000, 6.9000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000949, '96', ' Ciseureuh ', -7.44064, 108.195, 3.4000, 8.8000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000950, '97', ' Cibarengkok ', -7.44292, 108.195, 3.5000, 7.1000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000951, '98', ' Ciwulan ', -7.44977, 108.194, 84.2000, 7.2000, 3, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000952, '99', ' Ciganjing ', -7.45356, 108.194, 11.4000, 7.0000, 1, 'Kab. Tasikmalaya', 'Tasikmalaya - Karangnunggal', '', '', 'SUP TASIKMALAYA 2', 'jb2', 'uptd5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000953, '1', 'Jbt. Silo Panganten', -6.93652, 108.701, 8.8000, 10.3000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019112309IMG_20161222_114115.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000954, '10', 'Jbt. Cideng', -6.75306, 108.518, 4.1000, 9.5000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '13082019114942IMG_20161222_133527.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000955, '100', 'Jbt. Pengairan II Cisalamet', -6.79754, 108.332, 10.0000, 10.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201352WhatsApp Image 2019-08-14 at 18.11.50.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000956, '101', 'Jbt. Ciherang', -6.79779, 108.331, 28.7000, 8.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201454WhatsApp Image 2019-08-14 at 18.12.15.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000957, '102', 'Jbt. Cinyokot', -6.79884, 108.326, 7.3000, 10.3000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201540WhatsApp Image 2019-08-14 at 18.12.43.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000958, '103', 'Jbt. Cikananga', -6.79918, 108.322, 5.5000, 9.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201644WhatsApp Image 2019-08-14 at 18.13.06.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000959, '104', 'Jbt. Citapen', -6.7992, 108.32, 5.0000, 9.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201738WhatsApp Image 2019-08-14 at 18.13.29.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000960, '105', 'Jbt. Cijurey', -6.79778, 108.306, 16.5000, 8.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201836WhatsApp Image 2019-08-14 at 18.13.55.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000961, '106', 'Jbt. Citelang', -6.79798, 108.305, 2.5000, 10.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019201926WhatsApp Image 2019-08-14 at 18.14.25.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000962, '107', 'Jbt. Cidahu', -6.79887, 108.303, 3.7000, 10.4000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019202025WhatsApp Image 2019-08-14 at 18.14.48.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000963, '108', 'Jbt. Cimulah', -6.79971, 108.301, 20.6000, 8.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019202129WhatsApp Image 2019-08-14 at 18.16.13.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000964, '109', 'Jbt. Cikadu', -6.80011, 108.298, 5.2000, 10.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019202212WhatsApp Image 2019-08-14 at 18.16.42.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000965, '11', 'Jbt. Kedung Paneh 1', -6.75535, 108.511, 4.2000, 9.8000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '13082019115039IMG_20161222_134046.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000966, '110', 'Jbt. Cikeruh', -6.80038, 108.296, 186.0000, 10.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019202305WhatsApp Image 2019-08-14 at 18.17.40.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000967, '111', 'Jbt. Cibutul', -6.81168, 108.289, 6.9000, 9.9000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203057WhatsApp Image 2019-08-14 at 18.18.36.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000968, '112', 'Jbt. Sukaraja', -6.81363, 108.289, 2.5000, 10.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203209WhatsApp Image 2019-08-14 at 18.18.58.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000969, '113', 'Jbt. Cibadak', -6.81384, 108.288, 2.4000, 9.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203252WhatsApp Image 2019-08-14 at 18.19.16.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000970, '114', 'Jbt. Ciwareng', -6.81494, 108.285, 5.0000, 11.2000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203345WhatsApp Image 2019-08-14 at 18.19.34.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000971, '115', 'Jbt. Cikatileung', -6.81599, 108.284, 3.4000, 10.2000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203432WhatsApp Image 2019-08-14 at 18.19.56.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000972, '116', 'Jbt. Cibugang', -6.8178, 108.283, 2.4000, 9.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203538WhatsApp Image 2019-08-14 at 18.20.15.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000973, '117', 'Jbt. Cisambeng Girang', -6.81926, 108.28, 18.6000, 8.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203753WhatsApp Image 2019-08-14 at 18.20.33.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000974, '118', 'Jbt. Cinyondong', -6.82132, 108.276, 4.0000, 10.4000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203846WhatsApp Image 2019-08-14 at 18.20.50.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000975, '119', 'Jbt. Bata Lengkung', -6.82264, 108.275, 4.0000, 10.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019203940WhatsApp Image 2019-08-14 at 18.21.08.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000976, '12', 'Jbt. Kedung Paneh 2', -6.7553, 108.511, 1.6000, 9.8000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '13082019115150IMG_20161222_134420.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000977, '120', 'Jbt. Cipicung', -6.82585, 108.271, 7.3000, 10.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019204040WhatsApp Image 2019-08-14 at 18.21.26.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000978, '121', 'Jbt. Cigowek', -6.82916, 108.265, 3.0000, 10.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019204509WhatsApp Image 2019-08-14 at 18.21.45.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000979, '122', 'Jbt. Cigasong Girang', -6.83421, 108.259, 16.7000, 8.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019204348WhatsApp Image 2019-08-14 at 18.22.04.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000980, '123', 'Jbt. Ciawi', -6.83675, 108.255, 23.0000, 8.7000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019204611WhatsApp Image 2019-08-14 at 18.22.22.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000981, '124', 'Jbt. Cibudug', -6.8334, 108.243, 21.0000, 16.5000, 1, 'Kab. Majalengka', 'Jl. KH. Abdul Halim (Majalengka)', 'Baik', '14082019191427WhatsApp Image 2019-08-14 at 17.54.46.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000982, '125', 'Jbt. Cideres Girang', -6.83357, 108.241, 40.7000, 16.5000, 1, 'Kab. Majalengka', 'Jl. KH. Abdul Halim (Majalengka)', 'Baik', '14082019191606WhatsApp Image 2019-08-14 at 17.55.07.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000983, '126', 'Jbt. Ciluluk', -6.83428, 108.238, 20.5000, 16.5000, 1, 'Kab. Majalengka', 'Jl. KH. Abdul Halim (Majalengka)', 'Baik', '14082019191723WhatsApp Image 2019-08-14 at 17.55.28.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000984, '127', 'Jbt. Cijati', -6.83296, 108.213, 3.4000, 16.0000, 1, 'Kab. Majalengka', 'Jl. KH. Abdul Halim (Majalengka)', 'Baik', '14082019191851WhatsApp Image 2019-08-14 at 17.55.54.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000985, '128', 'Jbt. Jati Serang', -6.82573, 108.201, 3.5000, 9.2000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019192028WhatsApp Image 2019-08-14 at 17.57.05.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000986, '129', 'Jbt. Jatipamor', -6.82457, 108.2, 3.8000, 10.8000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019192143WhatsApp Image 2019-08-14 at 17.57.32.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000987, '13', 'Jbt. Kemlaka', -6.75743, 108.504, 11.7000, 9.4000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '13082019115230IMG_20161222_135233.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000988, '130', 'Jbt. Cideres Hilir Lama', -6.81756, 108.197, 42.3000, 6.8000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019192304WhatsApp Image 2019-08-14 at 17.58.25.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000989, '131', 'Jbt. Andir', -6.79882, 108.182, 3.7000, 11.0000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019192856WhatsApp Image 2019-08-14 at 17.58.38.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000990, '132', 'Jbt. Leuwiseeng', -6.79049, 108.176, 2.9000, 10.0000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019193005WhatsApp Image 2019-08-14 at 17.58.49.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000991, '133', 'Jbt. Monjot I', -6.73202, 108.166, 6.0000, 8.4000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019193116WhatsApp Image 2019-08-14 at 17.59.43.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000992, '134', 'Jbt. Monjot II', -6.73186, 108.167, 123.0000, 9.0000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019193214WhatsApp Image 2019-08-14 at 18.00.10.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000993, '135', 'Jbt. Monjot IV', -6.72515, 108.166, 25.8000, 9.0000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019193438WhatsApp Image 2019-08-14 at 18.00.40.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000994, '136', 'Jbt. Ciputis', -6.65182, 108.219, 5.0000, 7.0000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019205059WhatsApp Image 2019-08-14 at 18.25.54.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000995, '137', 'Jbt. Sasak Beureum', -6.6518, 108.221, 25.5000, 10.3000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019205144WhatsApp Image 2019-08-14 at 18.27.18.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000996, '138', 'Jbt. Pembuangan', -6.64295, 108.23, 33.3000, 10.1000, 1, 'Kab. Majalengka', 'Kadipaten - Bts. Mjlk/Indramayu', 'Baik', '14082019205227WhatsApp Image 2019-08-14 at 18.27.56.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000997, '139', 'Jbt. Cilogok', -6.42831, 108.17, 11.8000, 7.0000, 5, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019115529IMG-20190409-WA0043.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000998, '14', 'Jbt. Cipager', -6.75884, 108.488, 51.0000, 7.0000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '13082019093915Cipager.jpg', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000000999, '140', 'Jbt. Pegagan', -6.43471, 108.169, 6.1000, 8.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019115710IMG-20190409-WA0046.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001000, '141', 'Jbt. Pegagan II', -6.43471, 108.169, 6.1000, 8.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019162943IMG-20190409-WA0046.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001001, '142', 'Jbt. Cilendot', -6.47592, 108.157, 5.5000, 8.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019120117Jbt.Cilendot Km.Cn. 81+500.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001002, '143', 'Jbt.Kombo II', -6.49136, 108.153, 4.5000, 10.3000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019120458Jbt.Cikombo 2 Km.Cn. 84+050.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001003, '144', 'Jbt. Kombo I', -6.50081, 108.147, 4.5000, 10.3000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019120419Jbt.Ciombo 1 Km.Cn.83+400.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001004, '145', 'Jbt. Pesanggrahan', -6.52178, 108.125, 41.0000, 9.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019120700IMG-20190409-WA0061.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001005, '146', 'Jbt. Ciluncat II', -6.56224, 108.074, 3.2000, 8.7000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019120825IMG-20190409-WA0064.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001006, '147', 'Jbt. Ciluncat I', -6.56366, 108.071, 11.5000, 8.2000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019121001IMG-20190409-WA0066.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001007, '148', 'Jbt. Cangkring', -6.57005, 108.056, 12.5200, 12.5000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019121058Jbt.Cngkring 98+400.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001008, '149', 'Jbt. Cipondoh I', -6.57494, 108.045, 12.6000, 8.2000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019121206IMG-20190409-WA0073.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001009, '15', 'Jbt. Sikemang', -6.75965, 108.486, 9.4000, 11.0000, 1, 'Kab. Cirebon', 'Jl. Dewi Sartika (Sumber)', 'Baik', '13082019121357IMG_20161223_082047.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001010, '150', 'Jbt. Fly Over', -6.61453, 108.031, 0.0000, 0.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001011, '151', 'Jbt. Cipondoh II', -6.6261, 108.035, 6.5000, 7.8000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019121658IMG-20190409-WA0076.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001012, '152', 'Jbt. Cipondoh III', -6.6278, 108.035, 11.0000, 7.9000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019121803IMG-20190409-WA0079.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001013, '153', 'Jbt. Segaran', -6.48136, 108.356, 12.7000, 17.6000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019122158Jbt.Segeran 2 muka.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001014, '154', 'Jbt. Gabus I', -6.48303, 108.384, 13.0000, 17.2000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019122612Jbt.Gabus 1 muka (2).jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001015, '155', 'Jbt. Gabus II', -6.47187, 108.408, 12.7000, 17.2000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019122909Jbt.Gabus 2.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001016, '156', 'Jbt. Sliyeg Kasmaran', -6.48224, 108.368, 8.0000, 16.8000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '14082019140550Jbt.Sliyeg.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001017, '157', 'Jbt. Sri Wadon', -6.71083, 180.442, 4.6000, 15.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019130401Jbt.Sri Wadon 1.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001018, '158', 'Jbt. Sondol', -6.47651, 108.342, 4.0000, 15.7000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019132007Jbt.Sondol muka.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001019, '159', 'Jbt. Banjar', -6.47621, 108.32, 5.0000, 17.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019094903Jbt.Banjar Kanan.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001020, '16', 'Jbt. Cikuya', -6.75844, 108.474, 13.0000, 16.5000, 1, 'Kab. Cirebon', 'Jl. Dewi Sartika (Sumber)', 'Baik', '13082019132205IMG_20161223_083414.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001021, '160', 'Jbt. Pangkalan', -6.46978, 108.415, 10.0000, 17.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019095421Jbt.Pangkalan Kanan.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001022, '161', 'Jbt. Cimanuk', -6.46815, 108.296, 127.0000, 9.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019095747Jbt.Cimanuk 2.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001023, '162', 'Jbt. Cipelang', -6.47463, 108.305, 20.5000, 10.6000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '13082019132353Jbt.Cipelang 1.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001024, '163', 'Jbt. Kedokan', -6.5018, 108.427, 10.0000, 7.6000, 1, 'Kab. Indramayu', 'MUNDU - GOPALA', 'Baik', '13082019100403Jbt.Kedokan.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001025, '164', 'Jbt. Pertamina', -6.47879, 108.426, 7.0000, 8.6000, 1, 'Kab. Indramayu', 'MUNDU - GOPALA', 'Baik', '13082019100806Jbt.Pertamina kiri.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001026, '165', 'Jbt. Mundu', -6.48333, 108.425, 12.0000, 7.2000, 1, 'Kab. Indramayu', 'MUNDU - GOPALA', 'Baik', '13082019100940Jbt.Mundu 1.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001027, '166', 'Jbt. Cibuaya', -6.57185, 108.276, 9.7000, 12.0000, 1, 'Kab. Indramayu', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'Baik', '13082019101059Jbt.Cibuaya 2.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001028, '167', 'Jbt. WTH V', -6.58601, 108.288, 51.0000, 9.0000, 1, 'Kab. Indramayu', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'Baik', '13082019101225Jbt.WTH V.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001029, '168', 'Jbt. Cicurug', -6.49871, 108.298, 24.0000, 7.0000, 1, 'Kab. Indramayu', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'Baik', '13082019101411Jbt.Cicurug 1.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001030, '169', 'Jbt. Ranca Jawat', -6.5867, 108.288, 6.0000, 11.7000, 1, 'Kab. Indramayu', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'Baik', '13082019101907Jbt.Rancajawat 1.jpg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001031, '17', 'Jbt. Rajadana', -6.75748, 108.469, 24.0000, 15.0000, 1, 'Kab. Cirebon', 'Jl. Dewi Sartika (Sumber)', 'Baik', '13082019133303IMG_20161223_083908.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001032, '170', 'Jbt. Kopyah', -6.36684, 107.956, 5.0000, 9.0000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019102112Jbt.KopyanKm.Cn.102+700.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001033, '171', 'Jbt. Lempuyang', -6.38454, 107.962, 6.0000, 8.5000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019102332Jbt.Lempuyang Km.Cn. 104+800.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001034, '172', 'Jbt. Pilang Payung', -6.39205, 107.966, 10.8000, 8.6000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019134332Jbt.Lempuyang Km.Cn.105+800.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001035, '173', 'Jbt. Wanguk', -6.41666, 107.957, 10.0000, 7.3000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019102632Jbt.wanguk Km.Cn. 108+700.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001036, '174', 'Jbt. Cinini', -6.42548, 107.951, 10.2000, 7.3000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019102800JBt.Cinini Km.Cn. 109+900.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001037, '175', 'Jbt. Ciwidara', -6.44645, 107.943, 13.2000, 8.0000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019102934Jbt.Ciwidara Km.Cn.112+400.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001038, '176', 'Jbt. Pilang', -6.47143, 107.936, 7.7000, 7.2500, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019134147Jbt.Pilang Km.Cn. 115+650.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001039, '177', 'Jbt.Cijati I', -6.5351, 107.913, 6.0000, 7.6000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019103401Jbt.Cijati 1 Km.Cn.123+700.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001040, '178', 'Jbt. Cikandung I', -6.59196, 107.951, 72.0000, 7.0000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019103511Jbt.Cikandung Km.Cn.124+500.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001041, '179', 'Jbt. Cijati II', -6.54182, 107.908, 4.0000, 5.0000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '13082019103624Jbt.Cijati 2 Km.Cn. 124+650.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001042, '18', 'Jbt. Cisoka', -6.75648, 108.461, 21.0000, 15.5000, 1, 'Kab. Cirebon', 'Jl. Dewi Sartika (Sumber)', 'Baik', '13082019135012IMG_20161223_084629.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001043, '180', 'Jbt. Fly Over', -6.555, 107.899, 0.0000, 0.0000, 1, 'Kab. Indramayu', 'PATROL - HAURGEULIS - BANTARWARU', 'Baik', '', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001044, '181', 'Jbt. Cipanas Baru', -6.63801, 108.039, 62.5000, 7.2000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104010IMG-20190409-WA0082.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001045, '182', 'Jbt. Cipanas Lama', -6.6411, 108.038, 6.6000, 7.9000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104129IMG-20190410-WA0028.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001046, '183', 'Jbt. Cipondoh I', -6.57494, 108.045, 12.6000, 8.2000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104256IMG-20190409-WA0085.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001047, '184', 'Jbt. Cisalak', -6.62874, 108.024, 7.6000, 10.0000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104547IMG-20190409-WA0088.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001048, '185', 'Jbt. Citayem I', -6.62618, 108.019, 16.8000, 10.3000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104747IMG-20190409-WA0094.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001049, '186', 'Jbt. Gempol ', -6.62244, 108.012, 5.0000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019104942IMG-20190409-WA0097.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001050, '187', 'Jbt.Gempol I', -6.62057, 108.008, 7.5000, 9.6000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019105058IMG-20190409-WA0100.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001051, '188', 'Jbt. Talaga Yuda', -6.61659, 108, 4.0000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019105231IMG-20190409-WA0103.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001052, '189', 'Jbt. Lebakwaru', -6.61615, 107.999, 4.0000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019105345IMG-20190409-WA0106.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001053, '19', 'Jbt. Cikadu', -6.80011, 108.298, 3.8000, 9.9000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '13082019140655IMG_20161223_085811.JPG', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001054, '190', 'Jbt. Cilalang', -6.61436, 107.996, 3.1000, 10.2000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019105505Jbt.Cilalanang Km.Cn.112+600.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001055, '191', 'Jbt. Cipancuh II', -6.60999, 107.987, 5.5000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019105708IMG-20190409-WA0112.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001056, '192', 'Jbt. Cipancuh I', -6.60881, 107.984, 3.0000, 10.3000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019142328IMG-20190409-WA0115.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001057, '193', 'Jbt. Cipancuh Hilir', -6.60624, 107.98, 4.0000, 9.7000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019111335IMG-20190409-WA0118.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001058, '194', 'Jbt. Cikandung I', -6.59196, 107.951, 6.6000, 9.9000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019112035IMG-20190408-WA0013.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001059, '195', 'Jbt. Cikandung II', -6.59874, 107.964, 21.3000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019112442IMG-20190409-WA0127.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001060, '196', 'Jbt. Cikandung III', -6.59941, 107.966, 62.5000, 10.0000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019112616IMG-20190409-WA0133.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001061, '197', 'Jbt. Cikandung', -6.59686, 107.947, 56.0000, 7.1000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113009Jbt.cikandung KmCn.118+900.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001062, '198', 'Jbt. Cibeber I', -6.5977, 107.946, 4.4000, 14.1000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113215IMG-20190408-WA0015.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001063, '199', 'Jbt. Cibeber', -6.59797, 107.932, 31.0000, 7.0000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113321IMG-20190408-WA0016.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001064, '2', 'Jbt. Jati Seeng', -6.91077, 108.738, 8.7000, 9.0000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019142136IMG_20161222_111925.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001065, '20', 'Jbt. Cisampir', -6.76449, 108.448, 5.7000, 10.0000, 1, 'Kab. Cirebon', 'Jl. Nyi Ageng Serang (Sumber)', 'Baik', '13082019143126IMG_20161223_090111.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001066, '200', 'Jbt. Ciliwu I', -6.59319, 107.928, 4.3000, 10.0000, 1, 'Kab. Indramayu', 'JANGGA - CIKAMURANG', 'Baik', '13082019113419Jbt.Ciliwu 1 Km.Cn. 124+800.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001067, '201', 'Jbt. Ciliwu ', -6.59486, 107.924, 4.6000, 10.1000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113530IMG-20190409-WA0145.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001068, '202', 'Jbt. Cirenes III', -6.58906, 107.914, 4.0000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113638IMG-20190408-WA0019.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001069, '203', 'Jbt. Cirenes II ', -6.58764, 107.912, 4.0000, 9.8000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113724Cirenes 2.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001070, '204', 'Jbt. Cirenes', -6.57025, 107.909, 8.0000, 10.3000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113823IMG-20190409-WA0155.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001071, '205', 'Jbt. Cibogo', -6.56931, 107.904, 6.8000, 10.2000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019113939Jbt.Cibogo 130+500.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001072, '206', 'Jbt. Cipapan', -6.56326, 107.9, 8.0000, 10.3000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019114038IMG-20190409-WA0157.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001073, '207', 'Jbt. Cinambo', -6.56849, 107.902, 26.0000, 7.0000, 1, 'Kab. Indramayu', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'Baik', '13082019114518Jbt.Cianmbo Km.Cn. 134+600.jpg', 'SUP INDRAMAYU 2', 'jb2', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001074, '208', 'Jbt. Kalikapur', -6.50891, 108.427, 12.7000, 17.2000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '14082019115104WhatsApp Image 2019-08-14 at 11.15.13.jpeg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001075, '209', 'Jbt. Kali Anyar', -6.47503, 108.427, 10.0000, 8.6000, 1, 'Kab. Indramayu', 'MUNDU - GOPALA', 'Baik', '14082019131214WhatsApp Image 2019-08-14 at 11.15.13(1).jpeg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001076, '21', 'Jbt. Ciraden', -6.76275, 108.438, 2.8000, 9.0000, 1, 'Kab. Cirebon', 'Jl. Nyi Ageng Serang (Sumber)', 'Baik', '13082019143927IMG_20161223_091009.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001077, '210', 'Jbt. Kamal I', -6.46947, 108.414, 10.0000, 12.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '14082019135714WhatsApp Image 2019-08-14 at 11.15.14.jpeg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001078, '211', 'Jbt. Lamaran', -6.46947, 108.414, 10.0000, 12.0000, 1, 'Kab. Indramayu', 'KARANGAMPEL - JATIBARANG', 'Baik', '14082019140838WhatsApp Image 2019-08-14 at 11.15.14(1).jpeg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001079, '212', 'Jbt. Jayalaksana', -6.47622, 108.398, 8.0000, 10.0000, 1, 'Kab. Indramayu', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'Baik', '14082019141920WhatsApp Image 2019-08-14 at 11.15.15.jpeg', 'SUP INDRAMAYU 1', 'jb1', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001080, '213', 'Jtb. Cideres Hilir Baru', -6.8178, 108.198, 51.0000, 9.0000, 1, 'Kab. Majalengka', 'Majalengka - Kadipaten', 'Baik', '14082019192746WhatsApp Image 2019-08-14 at 17.58.33.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001081, '214', 'Jbt. Pengairan', -6.78582, 108.34, 5.0000, 13.0000, 1, 'Kab. Majalengka', 'Leuwimunding - Rajagaluh', 'Baik', '14082019200707WhatsApp Image 2019-08-14 at 18.09.50.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001082, '215', 'Jbt. Pengairan II Ciceuri', -6.7905, 108.335, 6.0000, 9.7000, 1, 'Kab. Majalengka', 'Leuwimunding - Rajagaluh', 'Baik', '15082019093744WhatsApp Image 2019-08-15 at 08.55.01.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001083, '216', 'Jbt. Cigalagah', -6.8101, 108.29, 2.3000, 8.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019202932WhatsApp Image 2019-08-14 at 18.18.14.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001084, '217', 'Jbt. Cigemek', -6.83664, 108.252, 3.0000, 10.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019204915WhatsApp Image 2019-08-14 at 18.22.40.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001085, '22', 'Jbt. Ciparigi', -6.76288, 108.433, 17.0000, 10.0000, 1, 'Kab. Cirebon', 'Jl. Nyi Ageng Serang (Sumber)', 'Baik', '13082019144007IMG_20161223_091536.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001086, '23', 'Jbt. Cigayam', -6.7772, 108.404, 30.6000, 10.0000, 1, 'Kab. Cirebon', 'Sumber - Bts. Mjlk/Cirebon', 'Baik', '13082019144049IMG_20161223_092648.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001087, '24', 'Jbt. Ciayun', -6.7772, 108.404, 5.6000, 9.7000, 1, 'Kab. Cirebon', 'Sumber - Bts. Mjlk/Cirebon', 'Baik', '13082019144145IMG_20161223_093329.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001088, '25', 'Jbt. Cimanggu', -6.7781, 108.4, 21.3000, 8.6000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '15082019111746WhatsApp Image 2019-08-14 at 18.03.49.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001089, '26', 'Jbt. Pamulihan', -6.65653, 108.372, 41.3000, 7.0000, 1, 'Kab. Cirebon', 'Budur - Susukan - Tegalgubug', 'Baik', '13082019144518IMG_20161223_102756.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001090, '27', 'Jbt. Marga Jaya', -6.64713, 108.374, 20.5000, 8.2000, 1, 'Kab. Cirebon', 'Budur - Susukan - Tegalgubug', 'Baik', '13082019144553IMG_20161223_103520.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001091, '28', 'Jbt. Wangan Ayam', -6.63113, 108.382, 13.4000, 10.2000, 1, 'Kab. Cirebon', 'Budur - Susukan - Tegalgubug', 'Baik', '13082019144633IMG_20161223_104536.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001092, '29', 'Jbt. Majasri', -6.63095, 108.383, 10.2000, 9.9000, 1, 'Kab. Cirebon', 'Budur - Susukan - Tegalgubug', 'Baik', '13082019144751IMG_20161223_105602.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001093, '3', 'Jbt. Losari', -6.84958, 108.809, 2.6000, 8.6000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '14082019173433IMG_20161222_100844.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001094, '30', 'Jbt. Posong II', -6.64394, 108.406, 4.3000, 9.7000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145039IMG_20161223_111009.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001095, '31', 'Jbt. Posong I', -6.64391, 108.406, 9.5000, 9.7000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145117IMG_20161223_110831.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001096, '32', 'Jbt. Si Bengkung', -6.63736, 108.413, 10.7000, 7.5000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145404IMG_20161223_150015.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001097, '33', 'Jbt. Sigranala', -6.60751, 108.42, 11.9000, 8.5000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145455IMG_20161223_144818.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001098, '34', 'Jbt. Panunggal', -6.58928, 108.429, 32.0000, 7.4000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145532IMG_20161223_130824.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001099, '35', 'Jbt. Ciwaringin', -6.58987, 108.43, 10.0000, 9.5000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019145609IMG_20161223_125242.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001100, '36', 'Jbt. Siendut', -6.57909, 108.426, 5.0000, 9.2000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019150144IMG_20161223_131455.jpg', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001101, '37', 'Jbt. Pulorancang', -6.57122, 108.431, 17.6000, 9.2000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019150246IMG_20161223_132159 - Salin.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001102, '38', 'Jbt. Situnggak', -6.56341, 108.432, 6.0000, 10.0000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019150346IMG_20161223_135854.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001103, '39', 'Jbt. Sikusta II', -6.54685, 108.432, 71.8000, 7.0000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019150626IMG_20161223_141428.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001104, '4', 'Jbt. Babakan Losari', -6.88959, 108.761, 5.8000, 7.7000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019150839IMG_20161222_100725.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001105, '40', 'Jbt. Sikusta III', -6.54574, 108.432, 3.8000, 9.8000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019150925IMG_20161223_141633.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001106, '41', 'Jbt. Sitinggi', -6.53408, 108.432, 5.6000, 8.0000, 1, 'Kab. Cirebon', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'Baik', '13082019151023IMG_20161223_143312.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001107, '42', 'Jbt. Cibuntu I', -6.84864, 108.259, 4.4000, 9.0000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019081541WhatsApp Image 2019-08-14 at 18.34.04.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001108, '43', 'Jbt. Cibuntu II', -6.85264, 108.263, 8.5000, 10.0000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019081645WhatsApp Image 2019-08-14 at 18.34.30.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001109, '44', 'Jbt. Cibasuki', -6.8707, 108.286, 2.3000, 7.4000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019081803WhatsApp Image 2019-08-14 at 18.35.17.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001110, '45', 'Jbt. Cibuni I', -6.87553, 108.291, 3.0000, 10.2000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019081932WhatsApp Image 2019-08-14 at 18.36.57.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001111, '46', 'Jbt. Cibuni II', -6.87527, 108.299, 3.0000, 9.5000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082016WhatsApp Image 2019-08-14 at 18.39.52.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001112, '47', 'Jbt. Cideres', -6.90056, 108.305, 28.8000, 6.0000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082107WhatsApp Image 2019-08-14 at 18.41.21.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001113, '48', 'Jbt.Cisuluheun', -6.93248, 108.302, 9.9300, 6.7500, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019095020WhatsApp Image 2019-08-15 at 09.49.05.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001114, '49', 'Jbt. Ciwaru', -6.95116, 108.306, 9.5000, 11.5000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082406WhatsApp Image 2019-08-14 at 18.44.02.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001115, '5', 'Jbt. Binting Ciberes', -6.8891, 108.759, 5.8000, 5.4000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019151129IMG_20161222_095001.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001116, '50', 'Jbt. Cipager', -6.95933, 108.314, 8.6500, 7.0000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082607WhatsApp Image 2019-08-14 at 18.44.43.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001117, '51', 'Jbt. Cipamintar', -6.966, 108.315, 20.6000, 7.0000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082700WhatsApp Image 2019-08-14 at 18.45.51.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001118, '52', 'Jbt. Ciburuy', -6.97595, 108.311, 9.7000, 6.1000, 1, 'Kab. Majalengka', 'Majalengka - Talaga', 'Baik', '15082019082820WhatsApp Image 2019-08-14 at 18.47.30.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001119, '53', 'Jbt. Citungtung', -6.98874, 108.318, 2.2000, 6.8000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019083017WhatsApp Image 2019-08-14 at 18.48.28.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001120, '54', 'Jbt. Cigowong', -6.99302, 108.324, 46.0000, 7.5000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019083126WhatsApp Image 2019-08-14 at 18.49.06.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001121, '55', 'Jbt. Citampian', -7.0031, 108.33, 1.1500, 7.6000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019083537WhatsApp Image 2019-08-14 at 18.49.53.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001122, '56', 'Jbt. Cisurupan', -7.00693, 108.341, 6.1500, 6.1500, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019083652WhatsApp Image 2019-08-14 at 18.50.56.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001123, '57', 'Jbt. Cisarongge', -7.01028, 108.351, 17.1000, 6.3000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019083909WhatsApp Image 2019-08-14 at 18.51.34.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001124, '58', 'Jbt. Cilutung', -7.01187, 108.356, 25.3000, 7.2000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '15082019084013WhatsApp Image 2019-08-14 at 18.52.06.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001125, '59', 'Jbt. Cimukti', -7.01471, 108.362, 5.4000, 6.9000, 1, 'Kab. Majalengka', 'Talaga - Cikijing', 'Baik', '14082019205629WhatsApp Image 2019-08-14 at 18.52.49.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001126, '6', 'Jbt. Bantar Sari', -6.899, 108.753, 4.3000, 11.0000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019151612IMG_20161222_103613.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001127, '60', 'Jbt. Lame', -6.7628, 108.333, 6.0000, 7.7000, 1, 'Kab. Majalengka', 'Leuwimunding - Rajagaluh', 'Baik', '14082019191144WhatsApp Image 2019-08-14 at 17.51.35.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001128, '61', 'Jbt. Dukuh Andar', -6.71313, 108.357, 3.1500, 8.2000, 1, 'Kab. Majalengka', 'Parapatan - Leuwimunding', 'Baik', '15082019085019WhatsApp Image 2019-08-14 at 17.50.51.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001129, '62', 'Jbt. Citapekong', -6.9813, 108.302, 3.1000, 10.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019085754WhatsApp Image 2019-08-14 at 18.47.12.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001130, '63', 'Jbt. Cikondang II', -6.98062, 108.299, 4.0000, 7.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090021WhatsApp Image 2019-08-14 at 18.48.28(1).jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001131, '64', 'Jbt. Cikondang I', -6.97873, 108.296, 3.1000, 9.9000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090119WhatsApp Image 2019-08-14 at 18.49.31.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001132, '65', 'Jbt. Cigaru', -6.97752, 108.29, 2.2000, 9.5000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090318WhatsApp Image 2019-08-14 at 18.50.22.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001133, '66', 'Jbt. Ciangir', -6.97576, 108.281, 4.2000, 9.5000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090543WhatsApp Image 2019-08-14 at 18.51.02.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001134, '67', 'Jbt. Cilutung', -6.97641, 108.28, 33.5000, 8.5000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090701WhatsApp Image 2019-08-14 at 18.51.43.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001135, '68', 'Jbt. Cilesang', -6.97171, 108.27, 30.0000, 4.8000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019090820WhatsApp Image 2019-08-14 at 18.52.27.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001136, '69', 'Jbt. Banjar Halang', -6.97221, 108.265, 1.6000, 7.5000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091021WhatsApp Image 2019-08-14 at 18.53.13.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001137, '7', 'Jbt. Ciledug Wetan', -6.89903, 108.753, 13.1000, 11.1000, 1, 'Kab. Cirebon', 'Jl. Ciledug - Losari', 'Baik', '13082019151728IMG_20161222_104307.JPG', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001138, '70', 'Jbt. Cisunda', -6.96977, 108.262, 3.9000, 2.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091348WhatsApp Image 2019-08-14 at 18.54.16.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001139, '71', 'Jbt. Cipabean', -6.96224, 108.254, 4.5000, 7.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091510WhatsApp Image 2019-08-14 at 18.55.05.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001140, '72', 'Jbt. Bonghas', -6.96439, 108.25, 2.3000, 6.9000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091622WhatsApp Image 2019-08-14 at 18.55.36.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001141, '73', 'Jbt. Cijurey', -6.96384, 108.247, 28.9000, 8.3000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091750WhatsApp Image 2019-08-14 at 18.56.10.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001142, '74', 'Jbt. Cilaki', -6.96432, 108.24, 2.1000, 2.2000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019091912WhatsApp Image 2019-08-14 at 18.56.41.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001143, '75', 'Jbt. Cicamay', -6.95912, 108.232, 2.4000, 7.3000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019092020WhatsApp Image 2019-08-14 at 18.58.58.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001144, '76', 'Jbt. Cihieum', -6.95932, 108.229, 15.4000, 8.8000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019092151WhatsApp Image 2019-08-14 at 18.59.48.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001145, '77', 'Jbt. Cikawung', -6.9814, 108.21, 2.0000, 8.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019092256WhatsApp Image 2019-08-14 at 19.00.38.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001146, '78', 'Jbt. Cibuleud', -6.98577, 108.206, 3.5000, 10.2000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019092844WhatsApp Image 2019-08-14 at 19.01.17.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001147, '79', 'Jbt. Cimingking', -6.98788, 108.205, 2.0000, 8.0000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093057WhatsApp Image 2019-08-14 at 19.01.55.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001148, '8', 'Jbt. Kesambi', -6.73907, 108.549, 7.6000, 15.1000, 1, 'Kota Cirebon', 'Jl. Kesambi', 'Baik', '13082019151804IMG_20161222_132237.jpg', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001149, '80', 'Jbt. Cilongkrang', -6.98319, 108.186, 3.3000, 9.6000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093235WhatsApp Image 2019-08-14 at 19.02.38.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001150, '81', 'Jbt. Citerus', -6.98012, 108.184, 4.9000, 7.4000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093325WhatsApp Image 2019-08-14 at 19.03.28.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001151, '82', 'Jbt. Cigede', -6.97502, 108.183, 1.8000, 6.9000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093453WhatsApp Image 2019-08-14 at 19.04.01.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001152, '83', 'Jbt. Cikondang', -6.97516, 108.179, 4.0000, 9.5000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093550WhatsApp Image 2019-08-14 at 19.04.39.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001153, '84', 'Jbt. Cikapundung', -6.97438, 108.177, 3.3000, 9.4000, 1, 'Kab. Majalengka', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'Baik', '15082019093649WhatsApp Image 2019-08-14 at 19.05.24.jpeg', 'SUP MAJALENGKA 2', 'jb4', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001154, '85', 'Jbt. Cigarunggang', -6.7779, 108.394, 4.2000, 8.9000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194112WhatsApp Image 2019-08-14 at 18.04.16.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001155, '86', 'Jbt. Cigaru ', -6.77755, 108.39, 3.1000, 9.7000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194218WhatsApp Image 2019-08-14 at 18.04.39.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001156, '87', 'Jbt. Cibeber', -6.77764, 108.387, 6.0000, 10.3000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194317WhatsApp Image 2019-08-14 at 18.05.04.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001157, '88', 'Jbt. Ciporang', -6.77839, 108.383, 3.9000, 10.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194434WhatsApp Image 2019-08-14 at 18.05.38.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001158, '89', 'Jbt. Cijejeng', -6.78165, 108.372, 15.2000, 8.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194609WhatsApp Image 2019-08-14 at 18.06.00.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001159, '9', 'Jbt. Fly Over Tol P. Cakrabuana', -6.75182, 108.521, 0.0000, 0.0000, 1, 'Kab. Cirebon', 'Jl. Pangeran Cakrabuana (Sumber)', 'Baik', '14082019195059Fly Over Kepongpongan.jpg7.jpg', 'SUP CIREBON', 'jb5', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001160, '90', 'Jbt. Cibanjar', -6.78162, 108.364, 3.0000, 10.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194725WhatsApp Image 2019-08-14 at 18.06.21.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001161, '91', 'Jbt. Cibalingbing', -6.78199, 108.36, 4.0000, 10.0000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019194849WhatsApp Image 2019-08-14 at 18.06.42.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001162, '92', 'Jbt. Cimariuk', -6.78262, 108.357, 2.7000, 10.3000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019195713WhatsApp Image 2019-08-14 at 18.07.04.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001163, '93', 'Jbt. Cipereng', -6.78293, 108.354, 5.0000, 9.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019195801WhatsApp Image 2019-08-14 at 18.07.27.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001164, '94', 'Jbt. Ciwaringin', -6.78308, 108.351, 20.2000, 9.8000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019195905WhatsApp Image 2019-08-14 at 18.07.57.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001165, '95', 'Jbt. Ciputri', -6.78353, 108.348, 30.6000, 7.3000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019200000WhatsApp Image 2019-08-14 at 18.08.19.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001166, '96', 'Jbt. Cilandak II', -6.78365, 108.347, 3.2000, 9.5000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019200054WhatsApp Image 2019-08-14 at 18.08.42.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001167, '97', 'Jbt Cilandak I ', -6.78432, 108.344, 4.3000, 10.1000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019200153WhatsApp Image 2019-08-14 at 18.09.06.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001168, '98', 'Jbt. Cikadongdong', -6.78442, 108.342, 7.8000, 10.2000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019200254WhatsApp Image 2019-08-14 at 18.09.27.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001169, '99', 'Jbt. Cikamargi', -6.78753, 108.337, 16.3000, 8.9000, 1, 'Kab. Majalengka', 'Bts. Mjlk/Cirebon - Cigasong', 'Baik', '14082019200351WhatsApp Image 2019-08-14 at 18.10.34.jpeg', 'SUP MAJALENGKA 1', 'jb3', 'uptd6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `master_jembatan` VALUES (00000001170, 'tesjem-123', 'Tes Jembatan Ketapang', 17.0002, -23000, 100.0000, 5.0000, 2, 'Lok-M12', 'Jl. Raya Banjaran (Banjaran)', 'keterangan', '', 'SUP KAB BANDUNG', '', 'uptd3', '2021-01-07 22:35:20', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for master_jembatan_bentang
-- ----------------------------
DROP TABLE IF EXISTS `master_jembatan_bentang`;
CREATE TABLE `master_jembatan_bentang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `master_jembatan_id` int(11) NOT NULL,
  `bentang` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `panjang` int(11) NOT NULL,
  `tipe_bangunan_atas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `master_jembatan_id`(`master_jembatan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_jembatan_bentang
-- ----------------------------
INSERT INTO `master_jembatan_bentang` VALUES (1, 11, '1', 10, 1);
INSERT INTO `master_jembatan_bentang` VALUES (2, 1170, '1', 19, 1);
INSERT INTO `master_jembatan_bentang` VALUES (3, 1170, '2', 20, 1);

-- ----------------------------
-- Table structure for master_rawan_bencana
-- ----------------------------
DROP TABLE IF EXISTS `master_rawan_bencana`;
CREATE TABLE `master_rawan_bencana`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_ruas` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ruas_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `daerah` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lat` float NULL DEFAULT NULL,
  `long` float NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uptd_id` int(11) NOT NULL,
  `icon_id` int(11) NULL DEFAULT NULL,
  `icon_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_rawan_bencana
-- ----------------------------
INSERT INTO `master_rawan_bencana` VALUES (1, '233', 'P', 'Cileungsi - Cibeet', 'Jkt  73+550  -  73+800', 'Bogor', NULL, NULL, NULL, 'SPP BOGOR 2', 'Rawan Amblas', 1, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (2, '233', 'P', 'Cileungsi - Cibeet', 'Jkt  81+300  -  81+900', 'Bogor', NULL, NULL, NULL, 'SPP BOGOR 2', 'Rawan Amblas', 1, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (3, '233', 'P', 'Cileungsi - Cibeet', 'Jkt  95+800  -  96+400', 'Bogor', NULL, NULL, NULL, 'SPP BOGOR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (4, '0', 'P', 'Selajambe - Cibogo – Cibeet', 'Bd  74+600  - 74+800  ', 'Cianjur', -6.81192, 107.128, 'http://103.131.0.197/storage/rawanbencana/20210113081313_o_i_p.jfif', 'SPP CIANJUR 1', 'Rawan Longsor', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (5, '0', 'P', 'Selajambe - Cibogo – Cibeet', 'Bd  75+300  - 79+800  ', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 1', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (6, '182', 'P', 'Sp.3 Perintis Kemerdekaan(Pasir Hayam)-Cibeber', 'Bd  83+600  - 91+800 ', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 1', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (7, '182', 'P', 'Sp.3 Perintis Kemerdekaan(Pasir Hayam)-Cibeber', 'Bd  86+150  -', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 1', 'Bahu Amblas', 1, 1, 'http://103.131.0.197/storage/rawanbencana/icon20210103101912_bahu_jalan_rusak.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (8, '182', 'P', 'Sp.3 Perintis Kemerdekaan(Pasir Hayam)-Cibeber', 'Bd  89+350  -', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 1', 'Bahu Amblas', 1, 1, 'http://103.131.0.197/storage/rawanbencana/icon20210103101912_bahu_jalan_rusak.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (9, '184', 'P', 'Sukanagara – Sindang Barang', 'Bd  113+200  -', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (10, '184', 'P', 'Sukanagara – Sindang Barang', 'Bd  116+200  -', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (11, '184', 'P', 'Sukanagara – Sindang Barang', 'Bd  119+100  - 124+000', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (12, '184', 'P', 'Sukanagara – Sindang Barang', ' Bd  135+000  - 159+000', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan Longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (13, '184', 'P', 'Sukanagara – Sindang Barang', ' Bd  165+000  - 168+000', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan banjir', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (14, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  219+800  - 224+600', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (15, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  226+700  - 227+200', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (16, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  231+000  - 232+200', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (17, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  234+000  - 235+300', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (18, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  235+300  - 241+000', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (19, '108', 'P', 'Cidaun – Naringgul – Bts. Cianjur Bandung', 'Bd  241+100  - 241+300', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan amblas badan Jalan', 1, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (20, '396', 'P', 'Sp. Muara Cikadu-Pancuhtilu-Cikadu- Kbn.Muncang-Bts. Bandung/Cianjur', 'Bdg.   73+200    78+000', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (21, '396', 'P', 'Sp. Muara Cikadu-Pancuhtilu-Cikadu- Kbn.Muncang-Bts. Bandung/Cianjur', 'Bdg.   78+700    79+500', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (22, '396', 'P', 'Sp. Muara Cikadu-Pancuhtilu-Cikadu- Kbn.Muncang-Bts. Bandung/Cianjur', 'Bdg.   86+000    86+500', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan longsor', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (23, '396', 'P', 'Sp. Muara Cikadu-Pancuhtilu-Cikadu- Kbn.Muncang-Bts. Bandung/Cianjur', 'Bdg.   164+700    167+300', 'Cianjur', NULL, NULL, NULL, 'SPP CIANJUR 2', 'Rawan Banjir', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (24, '199', 'P', 'Sp. Karanghawu – Bts. Banten (Cikotok)', 'Bd. 174+500  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 5', 'Bahu jalan longsor ', 2, 2, 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (25, '199', 'P', 'Sp. Karanghawu – Bts. Banten (Cikotok)', ' 176+450  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 5', 'Bahu jalan longsor ', 2, 2, 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (26, '199', 'P', 'Sp. Karanghawu – Bts. Banten (Cikotok)', ' 187+200  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 5', 'Bahu jalan longsor ', 2, 2, 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (27, '0', 'P', 'Cibadak – Cikidang – Pelabuhan Ratu', 'Bdg 146+900  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 1', 'Bahu jalan longsor ', 2, 2, 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (28, '0', 'P', 'Cibadak – Cikidang – Pelabuhan Ratu', 'Bdg 146+750  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 1', 'Bahu jalan longsor ', 2, 2, 'http://103.131.0.197/storage/rawanbencana/icon20210103103246_bahu_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (29, '195', 'P', 'Cikembar – Jampang Tengah', 'Bdg 113+000 - 118+000', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (30, '196', 'P', 'Jampang Tengah – Kiara Dua', 'Bdg 120+900 - 140+000', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (31, '196', 'P', 'Jampang Tengah – Kiara Dua', 'Bdg 130+000 - 131+500', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 2', 'Rawan banjir bila turun hujan', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (32, '196', 'P', 'Jampang Tengah – Kiara Dua', 'Bdg 113+100 -', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 2', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (33, '127', 'P', 'Surade - Tegalbuleud', 'Bdg 215+000 - 218+000', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 4', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (34, '192', 'P', 'Sagarantenu - Tegalbuleud', 'Bdg 167+200', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Rawan longsor bila turun hujan', 1, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (35, '191', 'P', 'Sukabumi – Sagaranten', 'Bdg 115+300  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Sebagian badan jalan longsor', 2, 8, 'http://103.131.0.197/storage/rawanbencana/icon20210103103947_sebagian_badan_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (36, '191', 'P', 'Sukabumi – Sagaranten', 'Bdg 120+100  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Sebagian badan jalan longsor', 2, 8, 'http://103.131.0.197/storage/rawanbencana/icon20210103103947_sebagian_badan_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (37, '191', 'P', 'Sukabumi – Sagaranten', 'Bdg 126+400  ', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Sebagian badan jalan longsor', 2, 8, 'http://103.131.0.197/storage/rawanbencana/icon20210103103947_sebagian_badan_jalan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (38, '191', 'P', 'Sukabumi – Sagaranten', 'Bdg 102+600', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Badan jalan rawan amblas', 1, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (39, '191', 'P', 'Sukabumi – Sagaranten', 'Bdg 111+025', 'Sukabumi', NULL, NULL, NULL, 'SPP SUKABUMI 3', 'Badan jalan rawan amblas', 1, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (40, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 10+800  ', 'Bandung', -7.0166, 107.801, 'http://localhost:8000/assets/images/sample/sample.png', 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (41, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 22+500  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (42, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 23+000  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (43, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 26+000  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (44, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 26+200  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (45, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 28+500  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (46, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 29+500  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (47, '365', 'P', 'Sp. Munjul – Ciparay - Majalaya', 'Bdg 33+050  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (48, '0', 'P', 'Bts. Cileunyi - Nagreg', 'Bdg 23+500 - 24+100', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir (PT. Kahatex)', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (49, '349', 'P', 'Nagreg', 'Bdg 41+200  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (50, '367', 'P', 'Cijapati', 'Bdg 38+560  ', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (51, '401', 'P', 'Sawahbera - Parakanmuncang', 'Bdg 34+300', 'Bandung', NULL, NULL, NULL, 'SUP KAB BANDUNG', 'Rawan Banjir (Pabrik Sanatama)', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (52, '252', 'P', 'Jl. Bandung – Bts. Subang', 'Jkt 156+300  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (53, '252', 'P', 'Jl. Bandung – Bts. Subang', 'Jkt 158+500  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (54, '252', 'P', 'Jl. Bandung – Bts. Subang', 'Jkt 159+000  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (55, '252', 'P', 'Jl. Bandung – Bts. Subang', 'Jkt 176+000  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (56, '252', 'P', 'Jl. Bandung – Bts. Subang', 'Jkt 181+300  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (57, '253', 'P', 'Dalam Kota Purwakarta', 'Jkt 115+400  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB PURWAKARTA', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (58, '254', 'P', 'Wanayasa – Bts. Purwakarta/Subang', 'Jkt 135+200  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB PURWAKARTA', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (59, '255', 'P', 'Cagak – Bts. Wanayasa', 'Jkt 168+700  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (60, '255', 'P', 'Cagak – Bts. Wanayasa', 'Jkt 169+300  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (61, '255', 'P', 'Cagak – Bts. Wanayasa', 'Jkt 173+300  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (62, '257', 'P', 'Cagak – Bts. Cikaramas', 'Jkt 171+100  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (63, '257', 'P', 'Cagak – Bts. Cikaramas', 'Jkt 173+350  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (64, '257', 'P', 'Cagak – Bts. Cikaramas', 'Jkt 177+600  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (65, '257', 'P', 'Cagak – Bts. Cikaramas', 'Jkt 181+500  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 1', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (66, '258', 'P', 'Sadang - Cipendeuy', 'Jkt 114+800  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB PURWAKARTA', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (67, '258', 'P', 'Sadang - Cipendeuy', 'Jkt 113+800  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB PURWAKARTA', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (68, '258', 'P', 'Sadang - Cipendeuy', 'Jkt 136+300  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB PURWAKARTA', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (69, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 186+500  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan longsor', 3, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (70, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 142+000  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (71, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 150+800  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (72, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 151+400  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (73, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 154+700  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (74, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 156+200  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (75, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 162+500  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (76, '260', 'P', 'Pamanukan – Subang – Bts. Bandung', 'Jkt 171+100  ', 'Purwakarta dan Subang', NULL, NULL, NULL, 'SUP KAB SUBANG 2', 'Rawan banjir', 3, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (77, '256', 'P', 'Sumedang – Bts. Sumedang/Subang (Cikaramas) ', 'Bdg 42+000 - 43+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (78, '256', 'P', 'Sumedang – Bts. Sumedang/Subang (Cikaramas) ', 'Bdg 48+000 - 51+500', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (79, '256', 'P', 'Sumedang – Bts. Sumedang/Subang (Cikaramas) ', 'Bdg 54+000 - 57+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan Amblas', 4, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (80, '273', 'P', 'Lebak Jati – Rancakalong - Selaawi', 'Bdg 30+000 - 31+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (81, '273', 'P', 'Lebak Jati – Rancakalong - Selaawi', 'Bdg 41+000 - 42+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (82, '273', 'P', 'Lebak Jati – Rancakalong - Selaawi', 'Bdg 46+000 - 47+500', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (83, '274', 'P', 'Cijelag – Bts. Sumedang/Indramayu', 'Bdg 74+900 - 77+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 1', 'Rawan Amblas', 4, 4, 'http://103.131.0.197/storage/rawanbencana/icon20210102114521_rawan_amblas.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (84, '281', 'P', 'Sumedang Wado - Malangbong', 'Bdg 48+000 - 49+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (85, '281', 'P', 'Sumedang Wado - Malangbong', 'Bdg 54+000 - 59+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (86, '281', 'P', 'Sumedang Wado - Malangbong', 'Bdg 65+000 - 67+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (87, '281', 'P', 'Sumedang Wado - Malangbong', 'Bdg 80+000 - 82+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (88, '281', 'P', 'Sumedang Wado - Malangbong', 'Bdg 84+000 - 85+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (89, '285', 'P', 'Wado – Bts. Sumedang/Majalengka', 'Bdg 84+000 - 86+000', 'Sumedang', NULL, NULL, NULL, 'SUP SUMEDANG 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (90, '345', 'P', 'Garut – Bts. Garut/Tasikmalaya', 'Bdg 78+000 - 79+550', 'Garut', NULL, NULL, NULL, 'SUP GARUT 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (91, '368', 'P', 'Kadungora (Leles)-Bts. Bdg/Grt(Cijapati)', 'Bdg 50+000 - 53+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (92, '350', 'P', 'Bts. Bandung/Garut - Garut', 'Bdg 44+000 - 43+800', 'Garut', NULL, NULL, NULL, 'SUP GARUT 1', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (93, '352', 'P', 'Garut – Cikajang - Pameungpeuk', 'Bdg 98+000 - 104+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (94, '352', 'P', 'Garut – Cikajang - Pameungpeuk', 'Bdg 107+000 - 124+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (95, '352', 'P', 'Garut – Cikajang - Pameungpeuk', 'Bdg 132+000 - 137+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 2', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (96, '355', 'P', 'Cikajang – Sumadra - Bungbulang', 'Bdg 104+000 - 105+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 3', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (97, '355', 'P', 'Cikajang – Sumadra - Bungbulang', 'Bdg 114+000 - 116+000', 'Garut', NULL, NULL, NULL, 'SUP GARUT 3', 'Rawan longsor', 4, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (98, '40', 'P', 'Nagreg - Rajapolah', 'Bdg 62+000 - 63+000', 'Tasikmalaya', NULL, NULL, NULL, 'SUP TASIKMALAYA 1', 'Longsoran tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (99, '40', 'P', 'Nagreg - Rajapolah', 'Bdg 74+000 - 78+000', 'Tasikmalaya', NULL, NULL, NULL, 'SUP TASIKMALAYA 1', 'Longsoran tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (100, '96', 'P', 'Banjar -Pangandaran', 'Bdg 192+000 - 205+000', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Banjir (Sungai Tunggilis)', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (101, '95', 'P', 'Ciamis - Cageur', 'Bdg 128+600', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (102, '95', 'P', 'Ciamis - Cageur', 'Bdg 156+800', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (103, '95', 'P', 'Ciamis - Cageur', 'Bdg 161+100', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (104, '47', 'P', 'Ciamis - Banjar', 'Bdg 123+600 - 123+700', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Banjir', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (105, '47', 'N', 'Ciamis - Banjar', 'Bdg 143+800 - 144+000', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran', 5, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (106, '48', 'P', 'Banjar – Bts. Jateng', 'Bdg 147+500 - 148+100', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Banjir', 1, 5, 'http://103.131.0.197/storage/rawanbencana/icon20210102114537_rawan_banjir.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (107, '96', 'N', 'Banjar – Pangandaran ', 'Bdg 150+300 - 152+100', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran', 5, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (108, '96', 'N', 'Banjar – Pangandaran ', 'Bdg 196+300 - 201+000', 'Ciamis', NULL, NULL, NULL, 'SUP CIAMIS-BANJAR-PANGANDARAN', 'Longsoran', 5, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (109, '92', 'P', 'Cipasung – Kuningan', 'Cn 51+100 - 51+700', 'Kuningan', NULL, NULL, NULL, 'SUP KUNINGAN 1', 'Longsoran Tebing', 1, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (110, '309', '', 'Kuningan - Waled', 'Cn 55+000 - 56+400', 'Kuningan', NULL, NULL, NULL, 'SUP KUNINGAN 2', 'Longsoran', 5, 3, 'http://103.131.0.197/storage/rawanbencana/icon20210103095855_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (111, '287', 'P', 'Majalengka – Talaga', 'Cn 63+000 - 66+000', 'Majalengka', NULL, NULL, NULL, 'SUP MAJALENGKA 2', 'Rawan longsor', 6, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (112, '287', 'P', 'Majalengka – Talaga', 'Cn 70+000 - 73+000', 'Majalengka', NULL, NULL, NULL, 'SUP MAJALENGKA 2', 'Rawan longsor', 6, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (113, '312', 'P', 'Waled (Bts.Kuningan) - Ciledug - Losari', 'Cn 51+100 - 53+100', 'Cirebon', NULL, NULL, NULL, 'SUP CIREBON', 'Rawan longsor', 6, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);
INSERT INTO `master_rawan_bencana` VALUES (114, '312', 'P', 'Waled (Bts.Kuningan) - Ciledug - Losari', 'Cn 62+350 - 62+650', 'Cirebon', NULL, NULL, NULL, 'SUP CIREBON', 'Rawan longsor', 6, 7, 'http://103.131.0.197/storage/rawanbencana/icon20210102114558_rawan_longsor.gif', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for master_ruas_jalan
-- ----------------------------
DROP TABLE IF EXISTS `master_ruas_jalan`;
CREATE TABLE `master_ruas_jalan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruas_jalan` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_ruas_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `panjang` int(11) NULL DEFAULT NULL,
  `sta_awal` float(12, 0) NULL DEFAULT NULL,
  `sta_akhir` float(12, 0) NULL DEFAULT NULL,
  `lat_awal` double(53, 17) NULL DEFAULT NULL,
  `long_awal` double(53, 17) NULL DEFAULT NULL,
  `lat_akhir` double(53, 17) NULL DEFAULT NULL,
  `long_akhir` double(53, 17) NULL DEFAULT NULL,
  `L` double(53, 17) NULL DEFAULT NULL,
  `kab_kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kd_sppjj` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nm_sppjj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lat_ctr` double(53, 17) NULL DEFAULT NULL,
  `long_ctr` double(53, 17) NULL DEFAULT NULL,
  `wil_uptd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uptd_id` int(11) NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `created_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_date` datetime(0) NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master_ruas_jalan
-- ----------------------------
INSERT INTO `master_ruas_jalan` VALUES (4, '345000', 'Garut - Bts. Garut/Tasikmalaya', NULL, NULL, 13350, 66280, 79630, -7.23698000000000000, 107.90745600000000000, -7.33096300000000000, 107.94587100000000000, 13396.47011000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.28653600000000000, 107.92037600000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (5, '28811K', 'Jl. Cipeucang (Talaga)', NULL, NULL, 550, 76440, 76990, -6.98279900000000000, 108.31109900000000000, -6.98611300000000000, 108.31255000000000000, 503.68557900000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -6.98507200000000000, 108.31101900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (6, '285000', 'Wado (Sp. Kirisik) - Bts. Sumedang/Majalengka (Kirisik)', NULL, NULL, 11310, 75607, 86917, -6.94517700000000000, 108.09266500000000000, -6.97058500000000000, 108.17122900000000000, 11112.68856000000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.94949000000000000, 108.13757700000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (7, '09713K', 'Jl. Siliwangi (Bekasi)', NULL, NULL, 11100, 36582, 47682, -6.25941500000000000, 106.99506900000000000, -6.35283400000000000, 106.97623800000000000, 11051.64594000000000000, 'Kota Bekasi', '1_5', 'SPP BEKASI', -6.30646300000000000, 106.98356100000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (8, '25913K', 'Jl. Kapten Tendean (Subang)', NULL, NULL, 1830, 145875, 147705, -6.55032100000000000, 107.73941000000000000, -6.55210500000000000, 107.75363000000000000, 1820.34010600000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.55388200000000000, 107.74658900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (9, '37800K', 'Jl. Ahmad Yani (Sp. Laswi - Sp. Supratman) Kota Bandung', NULL, NULL, 535, 0, 535, -6.91573900000000000, 107.63008600000000000, -6.91336000000000000, 107.63426700000000000, 531.99619400000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.91460100000000000, 107.63220600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (10, '401000', 'Sp.3 Panenjoan - Sawahbera (Sp.3 Cijapati)', NULL, NULL, 5230, 33000, 38230, -7.01426100000000000, 107.80283100000000000, -6.97951800000000000, 107.83370400000000000, 5221.46638500000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.99715300000000000, 107.81909500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (11, '19115K', 'Jl. Raya Sagaranten (Sagaranten)', NULL, NULL, 540, 148000, 148540, -7.21467900000000000, 106.88396400000000000, -7.21893700000000000, 106.88553600000000000, 551.79844600000000000, 'Kabupaten Sukabumi', '2_3', 'SPP SUKABUMI 3', -7.21699400000000000, 106.88438200000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (12, '37700K', 'Jl. Laswi (Bandung)', NULL, NULL, 1171, 2000, 3171, -6.91573900000000000, 107.63008600000000000, -6.92454300000000000, 107.62778100000000000, 1176.74962400000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.92070400000000000, 107.63095200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (13, '17011K', 'Jl. Gatot Subroto (Cimahi)', NULL, NULL, 2220, 9590, 11810, -6.87603300000000000, 107.54608000000000000, -6.89248300000000000, 107.53673600000000000, 2208.60891200000000000, 'Kota Cimahi', '3_3', 'SPP KAB CIMAHI', -6.88373900000000000, 107.54022000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (14, '288000', 'Talaga - Cikijing', NULL, NULL, 5770, 76990, 82760, -6.98611300000000000, 108.31255000000000000, -7.01125300000000000, 108.35360400000000000, 5748.92044000000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -7.00267500000000000, 108.32956900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (15, '352000', 'Cikajang - Pameungpeuk', NULL, NULL, 55320, 91420, 146740, -7.36846000000000000, 107.81515200000000000, -7.63960700000000000, 107.73464200000000000, 55377.47045000000000000, 'Kabupaten Garut', '4_2', 'SPP GARUT 2', -7.50816500000000000, 107.82470600000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (16, '258000', 'Sadang - Bts. Purwakarta/Subang', NULL, NULL, 12240, 107900, 120140, -6.50870500000000000, 107.46067600000000000, -6.50122700000000000, 107.56009600000000000, 12214.34039000000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.49639400000000000, 107.50716200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (17, '163000', 'Pangalengan - Cukul (Bts. Bandung/Garut)', NULL, NULL, 14830, 40470, 55300, -7.17724100000000000, 107.56907600000000000, -7.25142500000000000, 107.53451300000000000, 14987.30972000000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.21172500000000000, 107.54170400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (18, '257000', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', NULL, NULL, 22510, 166320, 188830, -6.67842800000000000, 107.68902100000000000, -6.76613000000000000, 107.83752700000000000, 22416.63839000000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.72106600000000000, 107.76986100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (19, '162000', 'Banjaran - Pangalengan', NULL, NULL, 20390, 19560, 39950, -7.05328700000000000, 107.57311000000000000, -7.17623700000000000, 107.57123600000000000, 20278.04287000000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.13097600000000000, 107.56000600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (20, '19211K', 'Jl. Gudang (Sagaranten)', NULL, NULL, 560, 148550, 149110, -7.21893700000000000, 106.88553600000000000, -7.21914000000000000, 106.88050700000000000, 562.10173100000000000, 'Kabupaten Sukabumi', '2_3', 'SPP SUKABUMI 3', -7.21913900000000000, 106.88302500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (21, '250010', 'Lembang - Maribaya', NULL, NULL, 5750, 16600, 22350, -6.81447700000000000, 107.62295900000000000, -6.82986300000000000, 107.65789800000000000, 5721.04493900000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.82464000000000000, 107.64053400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (22, '171000', 'Nanjung - Patrol', NULL, NULL, 5610, 15000, 20610, -6.91777900000000000, 107.53750300000000000, -6.95259900000000000, 107.52359400000000000, 5595.62591300000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.94090500000000000, 107.53779000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (23, '20412K', 'Jl. Lawang Gintung (Bogor)', NULL, NULL, 1004, 63101, 64105, -6.61879600000000000, 106.80686500000000000, -6.62010900000000000, 106.81456700000000000, 1748.69651500000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.62445200000000000, 106.81004400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (24, '26112K', 'Jl. Mesjid Agung (Subang)', NULL, NULL, 430, 176990, 177420, -6.56884500000000000, 107.76215200000000000, -6.57227800000000000, 107.76033800000000000, 436.66046900000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.57057800000000000, 107.76123500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (25, '347000', 'Singaparna - Tasikmalaya', NULL, NULL, 8690, 106940, 115630, -7.34527100000000000, 108.12800500000000000, -7.34317500000000000, 108.19697800000000000, 8679.64119000000000000, 'Kabupaten Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.34211100000000000, 108.16022700000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (26, '31012K', 'Jl. Merdeka Barat (Ciledug) (Jl. Jend. Suprapto)', NULL, NULL, 940, 69022, 69962, -6.90673900000000000, 108.73986900000000000, -6.90620800000000000, 108.74808100000000000, 946.88710600000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.90643100000000000, 108.74414200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (27, '21014K', 'Jl. Kebon Pedes (Bogor)', NULL, NULL, 987, 54750, 55737, -6.56164000000000000, 106.80199000000000000, -6.56973500000000000, 106.79901300000000000, 1006.37051600000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.56597300000000000, 106.80144400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (28, '37100K', 'Jl. Pajajaran (Sp. Pasirkaliki - Sp. Cicendo) Kota Bandung', NULL, NULL, 650, 2925, 3575, -6.90649200000000000, 107.59750900000000000, -6.90716100000000000, 107.60442400000000000, 768.95474000000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90694200000000000, 107.60095400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (29, '192000', 'Sagaranten - Tegalbuleud', NULL, NULL, 42440, 149112, 191552, -7.21914000000000000, 106.88050700000000000, -7.41833100000000000, 106.78287800000000000, 41875.47915000000000000, 'Kabupaten Sukabumi', '2_3', 'SPP SUKABUMI 3', -7.33118700000000000, 106.83407000000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (30, '164010', 'Cukul (Bts. Bandung/Garut) - Sp. Genteng', NULL, NULL, 2950, 55250, 58200, -7.25142500000000000, 107.53451300000000000, -7.27194700000000000, 107.53773000000000000, 2507.70169100000000000, 'Kabupaten Garut', '4_4', 'SPP GARUT 4', -7.26167200000000000, 107.53521900000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (31, '281000', 'Sumedang - Situraja', NULL, NULL, 11370, 47300, 58670, -6.84605100000000000, 107.93977700000000000, -6.83874700000000000, 108.01659100000000000, 11564.81810000000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.84592900000000000, 107.98401400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (32, '34513K', 'Jl. Jend. Sudirman (Garut)', NULL, NULL, 5580, 61190, 66770, -7.19249100000000000, 107.90414600000000000, -7.22714200000000000, 107.91124600000000000, 5480.15361200000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.20932500000000000, 107.91746600000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (33, '25311K', 'Jl. Basuki Rahmat (Purwakarta)', NULL, NULL, 710, 114360, 115070, -6.56075700000000000, 107.44397200000000000, -6.56279600000000000, 107.45008500000000000, 712.95787400000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.56180100000000000, 107.44702100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (34, '25312K', 'Jl. Kapten Halim (Purwakarta)', NULL, NULL, 1350, 115070, 116420, -6.56279600000000000, 107.45008500000000000, -6.56820900000000000, 107.45944200000000000, 1351.23766200000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.56661900000000000, 107.45446700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (35, '10611K', 'Jl. Kopo (Sp. Jl. Peta - Bts. Kota/Kab. Bandung)', NULL, NULL, 3120, 3240, 6360, -6.93703000000000000, 107.59504000000000000, -6.96054400000000000, 107.57956200000000000, 3121.25375000000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.94891600000000000, 107.58750000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (36, '311000', 'Ciledug - Losari (Jl. Let. Jen. D.I Panjaitan)', NULL, NULL, 10970, 70922, 81892, -6.89826500000000000, 108.75013500000000000, -6.84365100000000000, 108.80881500000000000, 10923.81951000000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.87507600000000000, 108.78162900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (37, '19117K', 'Jl. Sarasa (Sukabumi)', NULL, NULL, 2113, 93110, 95223, -6.93790700000000000, 106.95375500000000000, -6.95134700000000000, 106.94704400000000000, 1867.31518200000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.94564500000000000, 106.95171500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (38, '26511K', 'Jl. Kapten Hanafiah (Subang)', NULL, NULL, 1090, 175353, 176443, -6.55919000000000000, 107.77094300000000000, -6.56009400000000000, 107.78649200000000000, 1748.04102700000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.55999600000000000, 107.77864800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (39, '251000', 'Lembang - Bts. Kab. Bandung/ Kab. Subang', NULL, NULL, 8850, 16630, 25480, -6.81447700000000000, 107.62295900000000000, -6.77388600000000000, 107.63620800000000000, 8944.09257200000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.80324800000000000, 107.64979500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (40, '37300K', 'Jl. Terusan Pasir Koja (Sp. Jamika - Sp. Soekarno-Hatta) Kota Bandung', NULL, NULL, 1120, 8200, 9320, -6.93046000000000000, 107.57601300000000000, -6.92675300000000000, 107.58559900000000000, 1136.29966500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.92858800000000000, 107.58079700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (41, '31013K', 'Jl. Merdeka Utara (Ciledug) (Jl. Ki Bledug Jaya)', NULL, NULL, 960, 69962, 70922, -6.90620800000000000, 108.74808100000000000, -6.89826500000000000, 108.75013500000000000, 912.56129500000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.90219900000000000, 108.74889700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (42, '31011K', 'Jl. Siliwangi (Ciledug) (Jl. P. Walang Sungsang)', NULL, NULL, 3300, 65722, 69022, -6.91543200000000000, 108.71544700000000000, -6.90673900000000000, 108.73986900000000000, 3282.37667800000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.91399800000000000, 108.73002900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (43, '398010', 'Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur', NULL, NULL, 26050, 58770, 84820, -7.23795500000000000, 107.35164900000000000, -7.32442900000000000, 107.25446400000000000, 24143.01579000000000000, 'Kabupaten Cianjur', '1_2', 'SPP CIANJUR II', -7.28459500000000000, 107.28448000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (44, '19114K', 'Jl. Raya Baros (Sukabumi)', NULL, NULL, 3680, 97284, 100964, -6.94662200000000000, 106.93473300000000000, -6.96918600000000000, 106.94864400000000000, 3783.37778200000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.96246400000000000, 106.93509300000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (45, '404020', 'Warudoyong (Bts.Kab. Tasikmalaya/Ciamis) - Sp.3 Winduraja (Kawali)', NULL, NULL, 20500, 89675, 110175, -7.12526600000000000, 108.21761100000000000, -7.17767500000000000, 108.36410900000000000, 20172.28686000000000000, 'Kabupaten Ciamis', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.15299300000000000, 108.28766800000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (46, '17013K', 'Simpang Leuwigajah - Nanjung', NULL, NULL, 1770, 13230, 15000, -6.90346400000000000, 107.53504600000000000, -6.91777900000000000, 107.53750300000000000, 1867.39069200000000000, 'Kota Cimahi', '3_3', 'SPP KAB CIMAHI', -6.90974800000000000, 107.53602700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (47, '34512K', 'Jl. Merdeka (Garut)', NULL, NULL, 390, 60800, 61190, -7.19005800000000000, 107.90227100000000000, -7.19249100000000000, 107.90414600000000000, 393.63558700000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.19094400000000000, 107.90339300000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (48, '38600K', 'Jl. Aria Jipang (Bandung)', NULL, NULL, 216, 0, 216, -6.90068100000000000, 107.61510000000000000, -6.89916600000000000, 107.61662400000000000, 239.56294200000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.89986600000000000, 107.61580900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (49, '283000', 'Sp. Kirisik (Wado) - Bts. Sumedang/Garut', NULL, NULL, 9540, 75900, 85440, -6.94517700000000000, 108.09266500000000000, -7.01346400000000000, 108.09888900000000000, 9266.03179400000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.98200200000000000, 108.09532100000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (50, '234000', 'Selajambe - Cibogo - Cibeet', NULL, NULL, 28700, 53090, 81790, -6.80703400000000000, 107.23329400000000000, -6.64619300000000000, 107.16672200000000000, 28685.28045000000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -6.71635200000000000, 107.20956000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (51, '33111K', 'Jl. Garuda (Tasikmalaya)', NULL, NULL, 5190, 109097, 114287, -7.33876800000000000, 108.24104200000000000, -7.35382500000000000, 108.28267600000000000, 5198.51403400000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.35126300000000000, 108.25998800000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (52, '233000', 'Cileungsi - Cibeet', NULL, NULL, 44580, 53170, 97750, -6.40440400000000000, 106.96325500000000000, -6.64619300000000000, 107.16672200000000000, 44494.73242000000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.48572700000000000, 107.10875200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (53, '301000', 'Parapatan - Leuwimunding', NULL, NULL, 5000, 25100, 30100, -6.70253400000000000, 108.36243800000000000, -6.74274800000000000, 108.34514600000000000, 4983.13819000000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.72190300000000000, 108.35329200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (54, '16111K', 'Jl. Moh. Toha (Sp. Jl. BKR - Bts. Kota/Kab. Bandung)', NULL, NULL, 2740, 2450, 5190, -6.93742100000000000, 107.60623700000000000, -6.96102600000000000, 107.61367100000000000, 2753.96270800000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.94927900000000000, 107.60972100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (55, '29411K', 'Jl. Siliwangi (Jatibarang)', NULL, NULL, 430, 49533, 49963, -6.47552900000000000, 108.30762300000000000, -6.47456900000000000, 108.30341700000000000, 505.45008300000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.47469400000000000, 108.30569600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (56, '341000', 'Jl. Gubernur Swaka (Tasikmalaya)', NULL, NULL, 3785, 107885, 111670, -7.34317500000000000, 108.19697800000000000, -7.36728800000000000, 108.21476800000000000, 3888.91231300000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.35910000000000000, 108.20072300000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (57, '28912K', 'Jl. Raya Majalengka (Kadipaten )', NULL, NULL, 1430, 63015, 64445, -6.77819800000000000, 108.16991100000000000, -6.76544300000000000, 108.16815900000000000, 1442.26002900000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.77193500000000000, 108.16815100000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (58, '34311K', 'Jl. Perintis Kemerdekaan (Tasikmalaya)', NULL, NULL, 2090, 111050, 113140, -7.36728800000000000, 108.21476800000000000, -7.38374900000000000, 108.20712500000000000, 2020.96207100000000000, 'Kota Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.37573400000000000, 108.21132500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (59, '164030', 'Sp. Talegong (Sukamulya) - Cisewu - Sukarame - Rancabuaya (Palembuhan)', NULL, NULL, 47200, 67260, 114460, -7.30581200000000000, 107.51526200000000000, -7.52792300000000000, 107.47818400000000000, 46893.54433000000000000, 'Kabupaten Garut', '4_4', 'SPP GARUT 4', -7.39759600000000000, 107.52766400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (60, '20414K', 'Jl. Empang - R. Saleh Sarief Bustaman (Bogor)', NULL, NULL, 250, 60357, 60607, -6.60453200000000000, 106.79682800000000000, -6.60774200000000000, 106.79506400000000000, 418.90086200000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.60594400000000000, 106.79558800000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (61, '314000', 'Luragung - Cibingbin', NULL, NULL, 15990, 51140, 67130, -7.01752900000000000, 108.63833600000000000, -7.05760400000000000, 108.75865500000000000, 15962.23952000000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -7.03799600000000000, 108.70128900000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (62, '28711K', 'Jl. Kh. Abdul Halim (Majalengka)', NULL, NULL, 700, 51520, 52220, -6.83362700000000000, 108.24433000000000000, -6.83615700000000000, 108.25034900000000000, 721.76165100000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.83489300000000000, 108.24733900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (63, '240000', 'Rajamandala - Jbt. Citarum Lama', NULL, NULL, 2950, 36600, 39550, -6.83313300000000000, 107.34508400000000000, -6.84213200000000000, 107.32441700000000000, 2933.56656400000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.83581600000000000, 107.33211200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (64, '346010', 'Jl. Alternatif Kmp. Tenjowaringin (Salawu)', NULL, NULL, 40, 83000, 83040, -7.34395400000000000, 107.96422500000000000, -7.34397400000000000, 107.96469900000000000, 52.53935500000000000, 'Kabupaten Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.34397900000000000, 107.96446100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (65, '161000', 'Dayeuhkolot - Banjaran', NULL, NULL, 8330, 8710, 17040, -6.99137000000000000, 107.62635500000000000, -7.04620800000000000, 107.59268000000000000, 7887.89326600000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.01851200000000000, 107.60437300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (66, '343000', 'Tasikmalaya - Karangnunggal', NULL, NULL, 41780, 113138, 154918, -7.38374900000000000, 108.20712500000000000, -7.63285800000000000, 108.12186000000000000, 41697.28875000000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.52255300000000000, 108.17476700000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (67, '26111K', 'Jl. S. Parman (Subang)', NULL, NULL, 200, 149598, 149798, -6.57155800000000000, 107.75883300000000000, -6.57227800000000000, 107.76033800000000000, 185.39998500000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.57196300000000000, 107.75956300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (68, '28611K', 'Jl. Jend. Sudirman (Talaga)', NULL, NULL, 690, 76727, 77417, -6.98279900000000000, 108.31109900000000000, -6.98261400000000000, 108.30590300000000000, 574.54050500000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -6.98270700000000000, 108.30850100000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (69, '37600K', 'Jl. Pelajar Pejuang 45 (Bandung)', NULL, NULL, 1560, 3171, 4731, -6.92454300000000000, 107.62778100000000000, -6.93695900000000000, 107.62280700000000000, 1521.09500600000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.93120600000000000, 107.62609300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (70, '36412K', 'Jl. Buah Batu (Sp.4 Pelajar Pejuang 45 - Sp.4 Soekarno Hatta)', NULL, NULL, 1700, 4690, 6390, -6.93695900000000000, 107.62280700000000000, -6.94799900000000000, 107.63342400000000000, 1698.13917300000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.94250900000000000, 107.62808400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (71, '404010', 'Sp.3 Pamoyanan - Suryalaya - Warudoyong (Bts, Kab. Tasikmalaya/Ciamis)', NULL, NULL, 9500, 80175, 89675, -7.12501000000000000, 108.14558100000000000, -7.12526600000000000, 108.21761100000000000, 9429.83801300000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.11529600000000000, 108.18041100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (72, '296000', 'Bts. Majalengka/Cirebon - Cigasong', NULL, NULL, 19530, 24072, 43602, -6.77819000000000000, 108.40028200000000000, -6.83615700000000000, 108.25034900000000000, 19699.10410000000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.79913600000000000, 108.32000600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (73, '297000', 'Weru - Sumber/Jl. Fatahillah (Sumber)', NULL, NULL, 6350, 7883, 14233, -6.70558400000000000, 108.50746700000000000, -6.75878600000000000, 108.48767900000000000, 6334.87270600000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.73232600000000000, 108.49768200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (74, '19116K', 'Jl. Pembangunan (Sukabumi)', NULL, NULL, 2553, 90557, 93110, -6.91886900000000000, 106.95882200000000000, -6.93790700000000000, 106.95375500000000000, 2540.39029300000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.92931800000000000, 106.95807100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (75, '37500K', 'Jl. BKR (Bandung)', NULL, NULL, 2187, 4731, 6918, -6.93695900000000000, 107.62280700000000000, -6.93725200000000000, 107.60316300000000000, 2201.58446600000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.93779700000000000, 107.61310900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (76, '38711K', 'Jl. Gasibu Barat (Bandung)', NULL, NULL, 205, 0, 205, -6.90131200000000000, 107.61810800000000000, -6.89936000000000000, 107.61806400000000000, 216.13633500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90033500000000000, 107.61810400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (77, '193120', 'Jl. Lingkar Sukabumi (Cibolang - Pelabuhan II)', NULL, NULL, 4500, 101950, 106450, -6.93156200000000000, 106.90127500000000000, -6.90573300000000000, 106.87241300000000000, 4334.02286100000000000, 'Kabupaten Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.91856700000000000, 106.88663300000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (78, '299010', 'Mandirancan - Pakembangan', NULL, NULL, 6600, 31750, 38350, -6.84152900000000000, 108.48591000000000000, -6.79678300000000000, 108.47578800000000000, 6607.48471400000000000, 'Kabupaten Kuningan', '5_5', 'SPP KUNINGAN 2', -6.81547900000000000, 108.47210600000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (79, '34612K', 'Jl. Pasar (Singaparna)', NULL, NULL, 180, 104700, 104880, -7.35024500000000000, 108.11029300000000000, -7.34953800000000000, 108.11126600000000000, 157.45031500000000000, 'Kabupaten Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.35018000000000000, 108.11099100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (80, '19311K', 'Jl. Lingkar Sukabumi (Sukabumi)', NULL, NULL, 2200, 97350, 99550, -6.95003200000000000, 106.93420900000000000, -6.94769200000000000, 106.91621100000000000, 2122.74447900000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.95139600000000000, 106.92485300000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (81, '346000', 'Bts. Garut/Tasikmalaya - Singaparna', NULL, NULL, 24610, 79704, 104314, -7.33096300000000000, 107.94587100000000000, -7.35026700000000000, 108.10674000000000000, 24478.49638000000000000, 'Kabupaten Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.36875900000000000, 108.02432900000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (82, '286000', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', NULL, NULL, 24060, 77417, 101477, -6.98261400000000000, 108.30590300000000000, -6.97058500000000000, 108.17122900000000000, 21416.26354000000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -6.95971100000000000, 108.23289200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (83, '29211K', 'Jl. Jend. A. Yani (Jatibarang)', NULL, NULL, 230, 49963, 50193, -6.47456900000000000, 108.30341700000000000, -6.47259700000000000, 108.30279600000000000, 228.59796100000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.47358400000000000, 108.30310400000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (84, '28111K', 'Jl. Prabu Taji Malela (Sumedang)', NULL, NULL, 1700, 46800, 48500, -6.83533700000000000, 107.93031800000000000, -6.84605100000000000, 107.93977700000000000, 1676.08551700000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.84111900000000000, 107.93498000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (85, '16113K', 'Jl. Raya Banjaran (Banjaran)', NULL, NULL, 2520, 17040, 19560, -7.04620800000000000, 107.59268000000000000, -7.05328700000000000, 107.57311000000000000, 2594.68387500000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.04761000000000000, 107.58270800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (86, '395000', 'Rajamandala - Cipeundeuy - Cikalongwetan', NULL, NULL, 24800, 36240, 61040, -6.83289100000000000, 107.34788000000000000, -6.73492800000000000, 107.43808200000000000, 24631.33142000000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.75198200000000000, 107.36169700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (87, '26114K', 'Jl. Raya Sukamelang (Subang)', NULL, NULL, 1530, 172860, 174390, -6.53816200000000000, 107.78205700000000000, -6.55026400000000000, 107.77588500000000000, 1521.97091300000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.54395200000000000, 107.77837500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (88, '16311K', 'Jl. Raya Cisewu (Pangalengan)', NULL, NULL, 520, 39950, 40470, -7.17623700000000000, 107.57123600000000000, -7.17724100000000000, 107.56907600000000000, 315.07191700000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.17722100000000000, 107.57050100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (89, '164020', 'Sp. Genteng - Sp. Talegong (Sukamulya)', NULL, NULL, 6960, 58200, 65160, -7.27194700000000000, 107.53773000000000000, -7.30581200000000000, 107.51526200000000000, 6936.36886000000000000, 'Kabupaten Garut', '4_4', 'SPP GARUT 4', -7.28989100000000000, 107.52711600000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (90, '331000', 'Tasikmalaya - Manonjaya - Panaekan/Goler', NULL, NULL, 16630, 114287, 130917, -7.35382500000000000, 108.28267600000000000, -7.36973600000000000, 108.40710700000000000, 16547.25274000000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.35973100000000000, 108.34651600000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (91, '34515K', 'Jl. Ciledug (Garut)', NULL, NULL, 910, 65370, 66280, -7.22881200000000000, 107.90681700000000000, -7.23698000000000000, 107.90745600000000000, 914.78357000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.23288700000000000, 107.90693800000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (92, '193000', 'Sukabumi - Cikembar', NULL, NULL, 9720, 102716, 112436, -6.96526800000000000, 106.87484200000000000, -6.96231200000000000, 106.79655000000000000, 9722.55801400000000000, 'Kabupaten Sukabumi', '2_2', 'SPP SUKABUMI 2', -6.97909700000000000, 106.83539500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (93, '25313K', 'Jl. Wanayasa (Wanayasa)', NULL, NULL, 1510, 136590, 138100, -6.67837500000000000, 107.55553000000000000, -6.68162200000000000, 107.56610700000000000, 1481.19658700000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.68148500000000000, 107.55950100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (94, '28112K', 'Jl. Raya Situraja (Situraja)', NULL, NULL, 1570, 58670, 60240, -6.83874700000000000, 108.01659100000000000, -6.84438500000000000, 108.02777800000000000, 1409.65841900000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.84134700000000000, 108.02241000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (95, '242000', 'Sp. Purwakarta - Jatiluhur', NULL, NULL, 6840, 115630, 122470, -6.56191300000000000, 107.43260100000000000, -6.52702800000000000, 107.39946600000000000, 6777.97520300000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.53835700000000000, 107.41950600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (96, '36411K', 'Jl. Terusan Buah Batu (Sp.4 Soekarno Hatta - Bts. Kota/Kab. Bandung)', NULL, NULL, 2260, 6390, 8650, -6.94799900000000000, 107.63342400000000000, -6.96576700000000000, 107.63800600000000000, 2234.96180100000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.95585600000000000, 107.63930700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (97, '292000', 'Pekandangan - Jatibarang', NULL, NULL, 11720, 50700, 62420, -6.46562000000000000, 108.29983200000000000, -6.36730600000000000, 108.32538100000000000, 12020.75317000000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.41196400000000000, 108.30103900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (98, '230120', 'Mekarmukti - Lemahabang', NULL, NULL, 3800, 54850, 58650, -6.28944700000000000, 107.15262300000000000, -6.27028600000000000, 107.17909700000000000, 3644.69366500000000000, 'Kabupaten Bekasi', '1_5', 'SPP BEKASI', -6.28005400000000000, 107.16605500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (99, '291000', 'Bts. Majalengka/Indramayu - Jatibarang', NULL, NULL, 17610, 72428, 90038, -6.62353000000000000, 108.27035900000000000, -6.48318500000000000, 108.29530600000000000, 17623.32610000000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.55804500000000000, 108.28137400000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (100, '274000', 'Cijelag - Bts. Sumedang/Indramayu', NULL, NULL, 20950, 74928, 95878, -6.76504900000000000, 108.12391800000000000, -6.64154600000000000, 108.03854300000000000, 20952.32020000000000000, 'Kabupaten Sumedang', '4_5', 'SPP SUMEDANG 1', -6.70135900000000000, 108.09392300000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (101, '38200K', 'Jl. Cilamaya (Bandung)', NULL, NULL, 240, 0, 240, -6.90134500000000000, 107.61695000000000000, -6.90342100000000000, 107.61731900000000000, 244.47183100000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90244900000000000, 107.61696100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (102, '312000', 'Ciledug - Bts. Jateng (Bantarsari) (Jl. Kapten P. Tendean)', NULL, NULL, 1210, 70922, 72132, -6.89826500000000000, 108.75013500000000000, -6.90443200000000000, 108.75850100000000000, 1198.50143500000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.90051100000000000, 108.75487800000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (103, '394000', 'Patrol - Haurgeulis - Bantarwaru', NULL, NULL, 32080, 95050, 127130, -6.31391500000000000, 107.99092200000000000, -6.55993600000000000, 107.89606700000000000, 32488.56557000000000000, 'Kabupaten Indramayu', '6_2', 'SPP INDRAMAYU 2', -6.43536200000000000, 107.94679100000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (104, '398020', 'Bts. Kab. Bandung/Cianjur - Pondok Datar', NULL, NULL, 900, 57900, 58800, -7.22654300000000000, 107.35401600000000000, -7.23795500000000000, 107.35164900000000000, 1366.69404900000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.23231300000000000, 107.35265900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (105, '39000K', 'Jl. Sultan Agung (Sumber)', NULL, NULL, 1060, 11260, 12320, -6.75878600000000000, 108.48767900000000000, -6.75920900000000000, 108.47929000000000000, 1015.51586300000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.75855000000000000, 108.48309200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (106, '29213K', 'Jl. Ir. Sutami', NULL, NULL, 2100, 62420, 64520, -6.36730600000000000, 108.32538100000000000, -6.35274400000000000, 108.32420800000000000, 1618.96935600000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.36001600000000000, 108.32501700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (107, '22411K', 'Jl. Ir. H. Juanda (Bekasi)', NULL, NULL, 1735, 31800, 33535, -6.23369000000000000, 106.99362400000000000, -6.24324900000000000, 107.00547800000000000, 1742.37379600000000000, 'Kota Bekasi', '1_5', 'SPP BEKASI', -6.23756100000000000, 107.00031100000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (108, '28712K', 'Jl. Jend A. Yani (Talaga)', NULL, NULL, 910, 75530, 76440, -6.97598600000000000, 108.31151700000000000, -6.98279900000000000, 108.31109900000000000, 908.39295900000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -6.97870300000000000, 108.31137300000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (109, '298000', 'Sumber - Mandirancan (Jl. P. Kejaksan, Sumber)', NULL, NULL, 4570, 14584, 19154, -6.75963000000000000, 108.48586700000000000, -6.79678300000000000, 108.47578800000000000, 4607.80384800000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.77795200000000000, 108.48263300000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (110, '16112K', 'Jl. Raya Dayeuh Kolot (Dayeuhkolot)', NULL, NULL, 3520, 5190, 8710, -6.96102600000000000, 107.61367100000000000, -6.99137000000000000, 107.62635500000000000, 3964.74606200000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.97799100000000000, 107.61944300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (111, '230000', 'Jl. Akses Cikarang Dryport', NULL, NULL, 6330, 56900, 63230, -6.27951300000000000, 107.16672500000000000, -6.29410300000000000, 107.13106800000000000, 6285.57010200000000000, 'Kabupaten Bekasi', '1_5', 'SPP BEKASI', -6.27413300000000000, 107.13975400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (112, '26113K', 'Jl. Oto Iskandardinata (Subang)', NULL, NULL, 2600, 174390, 176990, -6.55026400000000000, 107.77588500000000000, -6.56884500000000000, 107.76215200000000000, 2595.04409200000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.56018800000000000, 107.77003700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (113, '34514K', 'Jl. Bratayuda (Garut)', NULL, NULL, 680, 66770, 67450, -7.22714200000000000, 107.91124600000000000, -7.22881200000000000, 107.90681700000000000, 666.75100100000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.22915600000000000, 107.90977000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (114, '19313K', 'Jl. Sejahtera (Sukabumi)', NULL, NULL, 1443, 98075, 99518, -6.95183600000000000, 106.91230400000000000, -6.94085200000000000, 106.90934500000000000, 1440.39279500000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.94585000000000000, 106.91115100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (115, '34312K', 'Jl. Raya Karangnunggal (Karangnunggal)', NULL, NULL, 940, 156000, 156940, -7.63285800000000000, 108.12186000000000000, -7.63129000000000000, 108.11401500000000000, 920.99696700000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.63146600000000000, 108.11802200000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (116, '19118K', 'Jl. Garuda (Sukabumi)', NULL, NULL, 2400, 95225, 97625, -6.95134700000000000, 106.94704400000000000, -6.96481000000000000, 106.93947900000000000, 2402.19707300000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.95845900000000000, 106.94622100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (117, '230110', 'Cibarusah - Mekarmukti', NULL, NULL, 21400, 54850, 76250, -6.28944700000000000, 107.15262300000000000, -6.43586100000000000, 107.06585800000000000, 21083.99475000000000000, 'Kabupaten Bekasi', '1_5', 'SPP BEKASI', -6.37055300000000000, 107.11411800000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (118, '34411K', 'Jl. Raya Cipatujah (Cipatujah)', NULL, NULL, 1250, 179608, 180858, -7.74063200000000000, 108.01896500000000000, -7.74701500000000000, 108.01340600000000000, 996.39287100000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.74432000000000000, 108.01637900000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (119, '193140', 'Jl. Lingkar Sukabumi (Baros - Jl. Pembangunan)', NULL, NULL, 4500, 101950, 106450, -6.93431900000000000, 106.95564000000000000, -6.95003200000000000, 106.93420900000000000, 2965.62681000000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.94304300000000000, 106.94546200000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (120, '342000', 'Cisumur - Garuda (Let Jen Mashudi)', NULL, NULL, 6400, 111680, 118080, -7.36728800000000000, 108.21476800000000000, -7.33876800000000000, 108.24104200000000000, 6453.89635300000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.36627600000000000, 108.23763500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (121, '30600K', 'Jl. Nyi Mas Ganda Sari (Kota Cirebon)', NULL, NULL, 1035, 1795, 2830, -6.72508300000000000, 108.56128800000000000, -6.71611800000000000, 108.55825000000000000, 1055.56135100000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.72066600000000000, 108.55953300000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (122, '294000', 'Karangampel - Jatibarang', NULL, NULL, 17400, 32133, 49533, -6.46566200000000000, 108.45317200000000000, -6.47552900000000000, 108.30762300000000000, 17002.98719000000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.48290500000000000, 108.38227700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (123, '348000', 'Kadungora (Leles) - Cibatu - Sasakbeusi', NULL, NULL, 19820, 49304, 69124, -7.11197400000000000, 107.89746100000000000, -7.04352000000000000, 107.98730400000000000, 19815.11386000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.10619400000000000, 107.96751300000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (124, '397000', 'Sp. Pancuh Tilu - Cikadu', NULL, NULL, 18400, 84820, 103220, -7.32442900000000000, 107.25446400000000000, -7.43171500000000000, 107.18210300000000000, 18426.70034000000000000, 'Kabupaten Cianjur', '1_2', 'SPP CIANJUR II', -7.37577200000000000, 107.21340500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (125, '18311K', 'Jl. Raya Sukanagara (Sukanagara)', NULL, NULL, 2070, 107740, 109810, -7.08944700000000000, 107.13668600000000000, -7.10293400000000000, 107.13013700000000000, 2001.57983400000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -7.09652900000000000, 107.13171600000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (126, '38400K', 'Jl. Depan LAN (Bandung)', NULL, NULL, 125, 0, 125, -6.90342200000000000, 107.62027400000000000, -6.90267700000000000, 107.62107000000000000, 121.29517700000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90306600000000000, 107.62068700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (127, '391000', 'Waluran - Mareleng - Palangpang', NULL, NULL, 34850, 187000, 221850, -7.19860000000000000, 106.61419300000000000, -7.18787000000000000, 106.45583700000000000, 34522.31885000000000000, 'Kabupaten Sukabumi', '2_4', 'SPP SUKABUMI 4', -7.23266100000000000, 106.52183700000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (128, '33212K', 'Jl. Raya Cimaragas/(Bts. Kota Banjar - Banjar)', NULL, NULL, 8330, 139045, 147375, -7.37913500000000000, 108.47206800000000000, -7.36956500000000000, 108.53583000000000000, 8123.85669500000000000, 'Kota Banjar', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.38486900000000000, 108.50564200000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (129, '19811K', 'Jl. Bhayangkara (Pelabuhan Ratu)', NULL, NULL, 3390, 147957, 151347, -6.96978400000000000, 106.56628100000000000, -6.98898000000000000, 106.55238100000000000, 3363.03754700000000000, 'Kabupaten Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.98315300000000000, 106.56526800000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (130, '30812K', 'Jl. Raya Ciawigebang (Ciawigebang)', NULL, NULL, 1730, 44933, 46663, -6.97320900000000000, 108.57752800000000000, -6.97434500000000000, 108.59043700000000000, 1678.08657700000000000, 'Kabupaten Kuningan', '5_5', 'SPP KUNINGAN 2', -6.97213700000000000, 108.58318100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (131, '35012K', 'Jl. Cimanuk (Garut)', NULL, NULL, 2460, 60740, 63200, -7.19954000000000000, 107.88802000000000000, -7.21584500000000000, 107.89928100000000000, 2470.80776200000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.20711000000000000, 107.89551400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (132, '193130', 'Jl. Lingkar Sukabumi (Cibolang - Pelabuhan II)', NULL, NULL, 2400, 99550, 101950, -6.94769200000000000, 106.91621100000000000, -6.93156200000000000, 106.90127500000000000, 2440.78083000000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.93931600000000000, 106.90909100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (133, '392010', 'Sp.3 Loji (Tegalnyampai - Cibutun)', NULL, NULL, 7400, 154500, 161900, -7.04015900000000000, 106.56002200000000000, -7.07927800000000000, 106.52548600000000000, 7090.82839800000000000, 'Kabupaten Sukabumi', '2_5', 'SPP SUKABUMI 5', -7.05774300000000000, 106.54492000000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (134, '396000', 'Simpang Muara Cikadu - Sp. Pancuh Tilu', NULL, NULL, 4100, 103220, 107320, -7.43171500000000000, 107.18210300000000000, -7.42112100000000000, 107.15589400000000000, 3990.29385700000000000, 'Kabupaten Cianjur', '1_2', 'SPP CIANJUR II', -7.43111600000000000, 107.16702200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (135, '241000', 'Jbt. Citarum Lama - Cihaur Wangi/Cipeuyeum', NULL, NULL, 4060, 39520, 43580, -6.84213200000000000, 107.32441700000000000, -6.82539300000000000, 107.30592100000000000, 4037.33995400000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -6.83270300000000000, 107.32049200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (136, '19312K', 'Jl. Raya Pelabuhan (Sukabumi)', NULL, NULL, 5291, 97425, 102716, -6.94769200000000000, 106.91621100000000000, -6.96526800000000000, 106.87484200000000000, 5251.56373400000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.95895500000000000, 106.89703500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (137, '344000', 'Karangnunggal - Cipatujah', NULL, NULL, 22800, 157000, 179800, -7.63129000000000000, 108.11401500000000000, -7.74063200000000000, 108.01896500000000000, 22690.56774000000000000, 'Kabupaten Tasikmalaya', '5_2', 'SPP TASIKMALAYA 2', -7.67617600000000000, 108.05775500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (138, '28812K', 'Jl. Kasturi ( Cikijing )', NULL, NULL, 1490, 82760, 84250, -7.01125300000000000, 108.35360400000000000, -7.01626600000000000, 108.36570200000000000, 1449.94757100000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -7.01352400000000000, 108.35975000000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (139, '29011K', 'Jl. Pasar Balong (Kadipaten)', NULL, NULL, 320, 49168, 49488, -6.76544300000000000, 108.16815900000000000, -6.76260400000000000, 108.16846400000000000, 316.15048900000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.76401800000000000, 108.16826400000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (140, '273000', 'Lebakjati - Rancakalong - Selaawi', NULL, NULL, 18510, 29520, 48030, -6.89644900000000000, 107.82255500000000000, -6.81180600000000000, 107.86345200000000000, 18093.96586000000000000, 'Kabupaten Sumedang', '4_5', 'SPP SUMEDANG 1', -6.85264400000000000, 107.83831000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (141, '302000', 'Parapatan - Budur', NULL, NULL, 1500, 25100, 26600, -6.70253400000000000, 108.36243800000000000, -6.68909900000000000, 108.36256600000000000, 1486.99815200000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.69581400000000000, 108.36251000000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (142, '287000', 'Majalengka - Talaga', NULL, NULL, 23310, 52220, 75530, -6.83615700000000000, 108.25034900000000000, -6.97598600000000000, 108.31151700000000000, 23342.33553000000000000, 'Kabupaten Majalengka', '6_4', 'SPP MAJALENGKA 2', -6.90389400000000000, 108.30250600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (143, '28911K', 'Jl. Kh. Abdul Halim (Majalengka)', NULL, NULL, 5060, 51495, 56555, -6.83362700000000000, 108.24433000000000000, -6.82620300000000000, 108.20119500000000000, 5062.56634300000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.83413500000000000, 108.22174800000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (144, '29212K', 'Jl. Mayor Dasuki (Jatibarang)', NULL, NULL, 1880, 50100, 51980, -6.47259700000000000, 108.30279600000000000, -6.47113600000000000, 108.29264300000000000, 1898.35406300000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.46601800000000000, 108.29933400000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (145, '244000', 'Bts. Karawang/Purwakarta (Curug) - Purwakarta', NULL, NULL, 8030, 95950, 103980, -6.46911300000000000, 107.38749500000000000, -6.51692500000000000, 107.43039100000000000, 7900.15778800000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.49451800000000000, 107.40371200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (146, '33211K', 'Jl. Perintis Kemerdekaan (Banjar)', NULL, NULL, 640, 147376, 148016, -7.36956500000000000, 108.53583000000000000, -7.36980300000000000, 108.54188900000000000, 669.50535600000000000, 'Kota Banjar', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.36968300000000000, 108.53885900000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (147, '199000', 'Sp.Karanghawu - Bts. Prop. Banten (Cikotok)', NULL, NULL, 23770, 164683, 188453, -6.95603900000000000, 106.47944600000000000, -6.84249100000000000, 106.43315400000000000, 23424.42101000000000000, 'Kabupaten Sukabumi', '2_5', 'SPP SUKABUMI 5', -6.88285800000000000, 106.46051700000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (148, '198000', 'Cibadak - Cikidang - Pelabuhan Ratu', NULL, NULL, 35810, 112180, 147990, -6.87754300000000000, 106.77664100000000000, -6.96978400000000000, 106.56628100000000000, 35340.58001000000000000, 'Kabupaten Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.89209700000000000, 106.65408100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (149, '393000', 'Kalijati - Sukamandi', NULL, NULL, 22000, 135050, 157050, -6.52204600000000000, 107.67389500000000000, -6.34100400000000000, 107.66097300000000000, 21828.20891000000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.42874600000000000, 107.68635100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (150, '351000', 'Garut - Cikajang', NULL, NULL, 23200, 64990, 88190, -7.23152700000000000, 107.90109400000000000, -7.34725700000000000, 107.80122700000000000, 23141.68216000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.27336300000000000, 107.81300500000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (151, '289000', 'Majalengka - Kadipaten', NULL, NULL, 6460, 56555, 63015, -6.82620300000000000, 108.20119500000000000, -6.77819800000000000, 108.16991100000000000, 6453.78137300000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.80268700000000000, 108.18473800000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (152, '350000', 'Bts. Bandung/Garut - Garut', NULL, NULL, 14710, 42660, 57370, -7.05278600000000000, 107.89913900000000000, -7.17262800000000000, 107.89270000000000000, 14692.17453000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.11598100000000000, 107.89647200000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (153, '247000', 'Bts. Cimahi - Cisarua - Lembang', NULL, NULL, 13770, 14275, 28045, -6.83919400000000000, 107.55174100000000000, -6.81901900000000000, 107.61154300000000000, 13729.95277000000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.79757300000000000, 107.57814200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (154, '315000', 'Cibingbin - Batas Jateng (Penanggapan)', NULL, NULL, 3430, 67185, 70615, -7.05760400000000000, 108.75865500000000000, -7.05520900000000000, 108.78584800000000000, 3403.11918000000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -7.05887800000000000, 108.77280500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (155, '203000', 'Bts. Tangerang/Bogor - Parung', NULL, NULL, 11740, 48286, 60026, -6.35889000000000000, 106.67580500000000000, -6.42167100000000000, 106.73272300000000000, 11718.65051000000000000, 'Kabupaten Bogor', '1_3', 'SPP BOGOR I', -6.38181300000000000, 106.70258400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (156, '097010', 'Cileungsi - Cibinong (Citeureup)', NULL, NULL, 14130, 53470, 67600, -6.40440400000000000, 106.96325500000000000, -6.46544100000000000, 106.89128400000000000, 13635.56172000000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.44976400000000000, 106.93554500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (157, '30811K', 'Jl. RE. Martadinata (Kuningan)', NULL, NULL, 3870, 33160, 37030, -6.96830800000000000, 108.48852300000000000, -6.97294900000000000, 108.52266600000000000, 3837.57918700000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -6.97013200000000000, 108.50555100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (158, '35011K', 'Jl. Otista (Garut)', NULL, NULL, 3370, 57370, 60740, -7.17262800000000000, 107.89270000000000000, -7.19954000000000000, 107.88802000000000000, 3378.05910900000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.18720600000000000, 107.88945400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (159, '34012K', 'Jl. Brigjen Wasita Kusumah', NULL, NULL, 2206, 100700, 102906, -7.28304300000000000, 108.19816200000000000, -7.30085700000000000, 108.19298700000000000, 2203.60407200000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.29146000000000000, 108.19326400000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (160, '332000', 'Panaekan/Goler - Cimaragas - Bts. Kota Banjar', NULL, NULL, 8130, 130920, 139050, -7.36973600000000000, 108.40710700000000000, -7.37913500000000000, 108.47206800000000000, 8277.83855600000000000, 'Kabupaten Ciamis', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.36768900000000000, 108.44004700000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (161, '38000K', 'Jl. W. R. Supratman (Bandung)', NULL, NULL, 1676, 3000, 4676, -6.91336000000000000, 107.63426700000000000, -6.90108000000000000, 107.62569800000000000, 1681.88749700000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90698100000000000, 107.63012800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (162, '36511K', 'Jl. Raya Laswi (Ciparay)', NULL, NULL, 3400, 20958, 24358, -7.03456900000000000, 107.70800900000000000, -7.04599300000000000, 107.73657000000000000, 3432.15358100000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.03876000000000000, 107.72284900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (163, '309000', 'Ciawigebang - Bts. Cirebon/Kuningan (Waled)', NULL, NULL, 15650, 46667, 62317, -6.97434500000000000, 108.59043700000000000, -6.93664300000000000, 108.70069800000000000, 15688.12196000000000000, 'Kabupaten Kuningan', '5_5', 'SPP KUNINGAN 2', -6.97099300000000000, 108.65667200000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (164, '308000', 'Kuningan - Ciawigebang', NULL, NULL, 7970, 37000, 44970, -6.97294900000000000, 108.52266600000000000, -6.97320900000000000, 108.57752800000000000, 7992.14394000000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -6.98442000000000000, 108.55665900000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (165, '392000', 'Palangpang - Puncak Darma', NULL, NULL, 5200, 221850, 227050, -7.16721300000000000, 106.47172900000000000, -7.18787000000000000, 106.45583700000000000, 4835.95832600000000000, 'Kabupaten Sukabumi', '2_5', 'SPP SUKABUMI 5', -7.17353300000000000, 106.46983700000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (166, '243000', 'Kesambi - Bts. Karawang/Purwakarta (Curug)', NULL, NULL, 11700, 84250, 95950, -6.37003500000000000, 107.37482300000000000, -6.46911300000000000, 107.38749500000000000, 11808.14119000000000000, 'Kabupaten Karawang', '3_6', 'SPP KAB PURWAKARTA', -6.41994800000000000, 107.37748100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (167, '38900K', 'Jl. Pangeran Cakrabuana (Sumber)', NULL, NULL, 4530, 6730, 11260, -6.74898300000000000, 108.52697100000000000, -6.75878600000000000, 108.48767900000000000, 4541.05030800000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.75633000000000000, 108.50790400000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (168, '365000', 'Sp. Munjul - Ciparay (Jl. Sp. Munjul - Jl. Raya Laswi Ciparay)', NULL, NULL, 6970, 13988, 20958, -7.01624700000000000, 107.65169800000000000, -7.03456900000000000, 107.70800900000000000, 6980.56735500000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.02190100000000000, 107.67972200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (169, '339000', 'Kalipucang - Majingklak', NULL, NULL, 6840, 195055, 201895, -7.64601000000000000, 108.75287900000000000, -7.67225300000000000, 108.79836900000000000, 6545.49685700000000000, 'Kabupaten Pangandaran', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.65786100000000000, 108.77503500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (170, '195000', 'Cikembar - Jampang Tengah', NULL, NULL, 6910, 112400, 119310, -6.96231200000000000, 106.79655000000000000, -7.00136400000000000, 106.79712700000000000, 6847.33807500000000000, 'Kabupaten Sukabumi', '2_2', 'SPP SUKABUMI 2', -6.98520200000000000, 106.79198300000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (171, '24912K', 'Jl. Sukajadi (Bandung)', NULL, NULL, 2530, 4000, 6530, -6.89677900000000000, 107.59732700000000000, -6.87412200000000000, 107.59584800000000000, 2520.45709400000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.88546400000000000, 107.59646500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (172, '400000', 'Cipamokolan (Bts. Kota Bandung/Jbt. Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', NULL, NULL, 15120, 13980, 29100, -6.96871300000000000, 107.68630200000000000, -7.03573600000000000, 107.77888400000000000, 15225.47154000000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.01061800000000000, 107.72336400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (173, '194000', 'Cikembar - Cikembang', NULL, NULL, 3510, 112400, 115910, -6.96231200000000000, 106.79655000000000000, -6.95345100000000000, 106.76822500000000000, 3498.42206000000000000, 'Kabupaten Sukabumi', '2_2', 'SPP SUKABUMI 2', -6.96115500000000000, 106.78125000000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (174, '391020', 'Tegalloa (Loji) - Baged/Jagatamu (Bts. Kab. Karawang/Bogor)', NULL, NULL, 6720, 109720, 116440, -6.50874200000000000, 107.21767500000000000, -6.48583500000000000, 107.17419900000000000, 6730.15376700000000000, 'Kabupaten Karawang', '3_7', 'SPP KAB KARAWANG', -6.49143000000000000, 107.19708000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (175, '405000', 'Jl. Bandara Nusawiru', NULL, NULL, 2050, 233970, 236020, -7.72761600000000000, 108.47383000000000000, -7.72404300000000000, 108.48971900000000000, 2015.67205700000000000, 'Kabupaten Pangandaran', '5_3', 'SPP CIAMIS-BANJAR-PANGANDARAN', -7.72938000000000000, 108.48264500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (176, '232000', 'Tanjungpura - Batujaya (Bts. Bekasi/Karawang)', NULL, NULL, 35860, 69000, 104860, -6.26334700000000000, 107.27776400000000000, -6.06554500000000000, 107.16383600000000000, 34756.09630000000000000, 'Kabupaten Karawang', '3_7', 'SPP KAB KARAWANG', -6.12945300000000000, 107.28422400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (177, '293000', 'Jl. Letnan Joni (Jatibarang)', NULL, NULL, 1750, 46360, 48110, -6.48825000000000000, 108.30904400000000000, -6.47456900000000000, 108.30341700000000000, 1644.22268600000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.48151900000000000, 108.30589100000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (178, '24711K', 'Jl. Kolonel Masturi (Cimahi)', NULL, NULL, 3950, 10320, 14270, -6.87295100000000000, 107.54110000000000000, -6.83919400000000000, 107.55174100000000000, 3928.43416400000000000, 'Kota Cimahi', '3_3', 'SPP KAB CIMAHI', -6.85596500000000000, 107.54607400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (179, '19314K', 'Jl. Cemerlang (Sukabumi)', NULL, NULL, 3931, 99518, 103449, -6.94085200000000000, 106.90934500000000000, -6.91388800000000000, 106.90565600000000000, 3875.27129200000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.92681400000000000, 106.90279700000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (180, '29511K', 'Jl. Dewi Sartika (Sumber)', NULL, NULL, 3500, 13488, 16988, -6.75878600000000000, 108.48767900000000000, -6.75734700000000000, 108.45714000000000000, 3514.38690000000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.75832500000000000, 108.47269500000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (181, '402000', 'Parakan Muncang - Sp.3 Panenjoan', NULL, NULL, 1850, 38230, 40080, -6.97951800000000000, 107.83370400000000000, -6.96689000000000000, 107.82598400000000000, 1816.28664800000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.97290800000000000, 107.82960300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (182, '299020', 'Pakembangan - Bojong (Jl. Linggarjati)', NULL, NULL, 8160, 23590, 31750, -6.88114300000000000, 108.49514000000000000, -6.84152900000000000, 108.48591000000000000, 8114.59365300000000000, 'Kabupaten Kuningan', '5_5', 'SPP KUNINGAN 2', -6.87012600000000000, 108.47089200000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (183, '25211K', 'Jl. Jend. A. Yani (Subang)', NULL, NULL, 4540, 149666, 154206, -6.57155800000000000, 107.75883300000000000, -6.59785000000000000, 107.73459700000000000, 4447.78767100000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.58277900000000000, 107.74449600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (184, '365020', 'Bojong Soang - Sp. Munjul (Jl. Siliwangi)', NULL, NULL, 5080, 10650, 15730, -6.98222800000000000, 107.63384300000000000, -7.01624700000000000, 107.65169800000000000, 5199.63149200000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.00506000000000000, 107.63142300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (185, '18211K', 'Jl. Raya Cibeber (Cibeber)', NULL, NULL, 2620, 79000, 81620, -6.93424500000000000, 107.12160100000000000, -6.94516300000000000, 107.13477500000000000, 2607.14767600000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -6.93951500000000000, 107.13119700000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (186, '38500K', 'Jl. Cilaki (Bandung)', NULL, NULL, 200, 0, 200, -6.90267700000000000, 107.62107000000000000, -6.90126600000000000, 107.61972100000000000, 223.94484400000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90206700000000000, 107.62027000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (187, '197000', 'Sp. Surade - Ujunggenteng', NULL, NULL, 23400, 207914, 231314, -7.33386400000000000, 106.57249700000000000, -7.37283100000000000, 106.40401000000000000, 23280.84995000000000000, 'Kabupaten Sukabumi', '2_4', 'SPP SUKABUMI 4', -7.37082000000000000, 106.49105500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (188, '355000', 'Sumadra - Bungbulang', NULL, NULL, 34990, 100840, 135830, -7.41235100000000000, 107.71774300000000000, -7.40890100000000000, 107.72008400000000000, 35055.85593000000000000, 'Kabupaten Garut', '4_3', 'SPP GARUT 3', NULL, NULL, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (189, '300000', 'Leuwimunding - Rajagaluh', NULL, NULL, 6300, 30100, 36400, -6.74274800000000000, 108.34514600000000000, -6.78380900000000000, 108.34602200000000000, 5435.52073900000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.76364600000000000, 108.33345700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (190, '34611K', 'Jl. Raya Singaparna (Singaparna)', NULL, NULL, 2640, 104296, 106936, -7.35026700000000000, 108.10674000000000000, -7.34527100000000000, 108.12800500000000000, 2648.34307700000000000, 'Kabupaten Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.34963900000000000, 108.11822500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (191, '22412K', 'Jl. Perjuangan (Kota Bekasi)', NULL, NULL, 7000, 32600, 39600, -6.23753700000000000, 107.00015700000000000, -6.20214000000000000, 107.03720600000000000, 6903.59704100000000000, 'Kota Bekasi', '1_5', 'SPP BEKASI', -6.22225700000000000, 107.02309100000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (192, '275000', 'Bts. Sumedang/Indramayu - Cikamurang', NULL, NULL, 610, 96075, 96685, -6.64154600000000000, 108.03854300000000000, -6.63621600000000000, 108.03875900000000000, 594.93136200000000000, 'Kabupaten Indramayu', '6_2', 'SPP INDRAMAYU 2', -6.63889100000000000, 108.03864300000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (193, '34011K', 'Jl. Ir. H. Juanda (Tasikmalaya)', NULL, NULL, 2850, 104985, 107835, -7.31806600000000000, 108.19886900000000000, -7.34317500000000000, 108.19697800000000000, 2788.52180500000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.33061300000000000, 108.19800300000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (194, '216000', 'Pondok Rajeg - Jl. Harapan Jaya (Cibinong)', NULL, NULL, 5210, 48459, 53669, -6.46056700000000000, 106.82574200000000000, -6.48258900000000000, 106.81775000000000000, 5210.52068000000000000, 'Kabupaten Bogor', '1_3', 'SPP BOGOR I', -6.47451900000000000, 106.82955200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (195, '38300K', 'Jl. Cimandiri (Bandung)', NULL, NULL, 345, 0, 345, -6.90342100000000000, 107.61731900000000000, -6.90342200000000000, 107.62027400000000000, 348.92964500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90371300000000000, 107.61879700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (196, '29512K', 'Jl. Nyi. Ageng Serang (Sumber)', NULL, NULL, 200, 16988, 17188, -6.75734700000000000, 108.45714000000000000, -6.75857400000000000, 108.45584400000000000, 201.65570600000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.75786600000000000, 108.45641900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (197, '215000', 'Sp. Jl. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor)', NULL, NULL, 8590, 39869, 48459, -6.40393100000000000, 106.83847100000000000, -6.46056700000000000, 106.82574200000000000, 8591.51175500000000000, 'Kota Depok', '1_3', 'SPP BOGOR I', -6.43280600000000000, 106.82181000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (198, '246000', 'Padalarang (Sp.3 Stasion) - Sp. Cisarua', NULL, NULL, 7900, 16960, 24860, -6.81676400000000000, 107.55518700000000000, -6.84450700000000000, 107.49810000000000000, 7594.64633400000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.82627700000000000, 107.52526700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (199, '245000', 'Sp. Orion - Cihaliwung', NULL, NULL, 2150, 16400, 18550, -6.85141500000000000, 107.49705900000000000, -6.83646400000000000, 107.48879200000000000, 2174.17269000000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.84250100000000000, 107.49629400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (200, '183000', 'Cibeber - Sukanagara', NULL, NULL, 26120, 81620, 107740, -6.94516300000000000, 107.13477500000000000, -7.08944700000000000, 107.13668600000000000, 25800.55413000000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -7.01267600000000000, 107.14251200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (201, '193150', 'Jl. Lingkar Mesjid Raudatul Irvan (Cisaat, Cibolang, Sukabumi)', NULL, NULL, 210, 106240, 106450, -6.90769100000000000, 106.87348300000000000, -6.90561000000000000, 106.87385800000000000, 236.68602000000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.90663000000000000, 106.87358200000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (202, '182000', 'Sp3. Perintis Kemerdekaan (Pasir Hayam) - Cibeber', NULL, NULL, 10560, 68440, 79000, -6.84974300000000000, 107.12991400000000000, -6.93424500000000000, 107.12160100000000000, 10553.41557000000000000, 'Kabupaten Cianjur', '1_1', 'SPP CIANJUR I', -6.88896700000000000, 107.12469200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (203, '231000', 'Cibarusah - Cibucil', NULL, NULL, 1400, 76250, 77650, -6.43586100000000000, 107.06585800000000000, -6.44124800000000000, 107.05591200000000000, 1397.90896700000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.44044100000000000, 107.06174000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (204, '353000', 'Kiarakohok (Sp. Cilauteureun) - Cilauteureun', NULL, NULL, 2162, 151956, 154118, -7.64398800000000000, 107.69398900000000000, -7.66130600000000000, 107.68725600000000000, 2075.67579000000000000, 'Kabupaten Garut', '4_2', 'SPP GARUT 2', -7.65286900000000000, 107.69096400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (205, '305000', 'Tegalgubug - Arjawinangun - Jagapura (Bts. Cirebon/Indramayu (Gopala))', NULL, NULL, 16940, 26657, 43597, -6.64091700000000000, 108.39373000000000000, -6.52062300000000000, 108.43016200000000000, 16721.48507000000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.59406400000000000, 108.42816500000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (206, '391010', 'Palumbonsari - Johar - Tegalloa (Loji)', NULL, NULL, 35620, 74100, 109720, -6.29928300000000000, 107.32799500000000000, -6.50874200000000000, 107.21767500000000000, 34767.64855000000000000, 'Kabupaten Karawang', '3_7', 'SPP KAB KARAWANG', -6.37136600000000000, 107.22367200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (207, '304000', 'Mundu - Gopala (Mundu - Bts. Indramayu/Cirebon)', NULL, NULL, 6100, 43600, 49700, -6.52062300000000000, 108.43016200000000000, -6.46639200000000000, 108.42932600000000000, 6201.43301000000000000, 'Kabupaten Indramayu', '6_1', 'SPP INDRAMAYU 1', -6.49371700000000000, 108.42417000000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (208, '392030', 'Balewer - Puncak Darma', NULL, NULL, 3000, 178300, 181300, -7.15672900000000000, 106.47662300000000000, -7.16721300000000000, 106.47172900000000000, 2173.40155000000000000, 'Kabupaten Sukabumi', '2_5', 'SPP SUKABUMI 5', -7.16134900000000000, 106.46931600000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (209, '18411K', 'Jl. Raya Sukanagara (Sindangbarang)', NULL, NULL, 1260, 172920, 174180, -7.44260700000000000, 107.13946700000000000, -7.45134600000000000, 107.13512000000000000, 1241.97802300000000000, 'Kabupaten Cianjur', '1_2', 'SPP CIANJUR II', -7.44776400000000000, 107.13908400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (210, '367000', 'Majalaya (Sp.3 Jl. Cikareo/Jl. Tengah) - Sawahbera (Sp.3 Cijapati) - Bts. Bdg/Garut (Cijapati)', NULL, NULL, 13660, 29488, 43148, -7.03341000000000000, 107.78174900000000000, -7.06052600000000000, 107.84873800000000000, 12941.98740000000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.03919500000000000, 107.81126200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (211, '21312K', 'Jl. Dewi Sartika (Depok)', NULL, NULL, 667, 43233, 43900, -6.39902300000000000, 106.81349100000000000, -6.39998500000000000, 106.81907300000000000, 636.37776300000000000, 'Kota Depok', '1_3', 'SPP BOGOR I', -6.39966900000000000, 106.81627000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (212, '30711K', 'Jl. Ariodinoto (Kota Cirebon)', NULL, NULL, 200, 655, 855, -6.72390900000000000, 108.57317400000000000, -6.72426900000000000, 108.57149800000000000, 201.77143800000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.72428200000000000, 108.57238700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (213, '196000', 'Jampang Tengah - Kiaradua', NULL, NULL, 45890, 119280, 165170, -7.00136400000000000, 106.79712700000000000, -7.13129000000000000, 106.62219900000000000, 45882.82428000000000000, 'Kabupaten Sukabumi', '2_2', 'SPP SUKABUMI 2', -7.11311400000000000, 106.75230000000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (214, '097000', 'Narogong - Cileungsi', NULL, NULL, 6040, 47430, 53470, -6.35283400000000000, 106.97623800000000000, -6.40440400000000000, 106.96325500000000000, 6338.62443800000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.37942300000000000, 106.96851400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (215, '184000', 'Sukanagara - Sindangbarang', NULL, NULL, 62460, 109800, 172260, -7.10293400000000000, 107.13013700000000000, -7.44260700000000000, 107.13946700000000000, 62231.21894000000000000, 'Kabupaten Cianjur', '1_2', 'SPP CIANJUR II', NULL, NULL, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (216, '392020', 'Cibutun - Balewer', NULL, NULL, 16400, 161900, 178300, -7.07927800000000000, 106.52548600000000000, -7.15672900000000000, 106.47662300000000000, 16536.85451000000000000, 'Kabupaten Sukabumi', '2_5', 'SPP SUKABUMI 5', -7.11619300000000000, 106.48167600000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (217, '295000', 'Sumber - Bts. Majalengka/Cirebon (Jl. Imam Bonjol)', NULL, NULL, 6880, 17188, 24068, -6.75857400000000000, 108.45584400000000000, -6.77819000000000000, 108.40028200000000000, 6975.58375300000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.76443100000000000, 108.42795700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (218, '24911K', 'Jl. Pasir Kaliki (Sp. Pasteur - Sp. Sukajadi/Eykman) Kota Bandung', NULL, NULL, 340, 3660, 4000, -6.90033100000000000, 107.59740600000000000, -6.89677900000000000, 107.59732700000000000, 393.65005000000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.89855800000000000, 107.59737600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (219, '38712K', 'Jl. Sentot Alibasyah (Bandung)', NULL, NULL, 202, 0, 202, -6.90127300000000000, 107.61941700000000000, -6.89931100000000000, 107.61931000000000000, 217.45387500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90029100000000000, 107.61937800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (220, '38800K', 'Jl. Kalitanjung (Kota Cirebon)', NULL, NULL, 1930, 4800, 6730, -6.74432200000000000, 108.54341700000000000, -6.74898300000000000, 108.52697100000000000, 1940.37430100000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.74727300000000000, 108.53547200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (221, '290000', 'Kadipaten (Jl. Pasar Balong) - Bts. Majalengka/Indramayu', NULL, NULL, 22750, 49488, 72238, -6.76260400000000000, 108.16846400000000000, -6.62353000000000000, 108.27035900000000000, 22935.82460000000000000, 'Kabupaten Majalengka', '6_3', 'SPP MAJALENGKA 1', -6.67689500000000000, 108.18942700000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (222, '34013K', 'Jl. Letnan Harun', NULL, NULL, 2032, 102906, 104938, -7.30085700000000000, 108.19298700000000000, -7.31806600000000000, 108.19886900000000000, 2017.31171200000000000, 'Kota Tasikmalaya', '5_1', 'SPP TASIKMALAYA 1', -7.30944100000000000, 108.19595500000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (223, '36512K', 'Jl. Raya Laswi (sd. Sp.3 Jl. Cikareo/Jl. Tengah), Majalaya', NULL, NULL, 5130, 24358, 29488, -7.04599300000000000, 107.73657000000000000, -7.03341000000000000, 107.78174900000000000, 5871.84906500000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.04909600000000000, 107.76078000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (224, '266000', 'Cikamurang - Bantarwaru (Bts. Kab. Subang/Indramayu)', NULL, NULL, 30600, 107367, 137967, -6.63621600000000000, 108.03875900000000000, -6.57047100000000000, 107.85617400000000000, 30558.72040000000000000, 'Kabupaten Indramayu', '6_2', 'SPP INDRAMAYU 2', -6.60959700000000000, 107.93745200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (225, '36900K', 'Jl. Cicendo (Sp. Pajajaran - Sp. Kebon Kawung) Kota Bandung', NULL, NULL, 640, 0, 640, -6.90716100000000000, 107.60442400000000000, -6.91263400000000000, 107.60397700000000000, 610.60705000000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90988400000000000, 107.60421000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (226, '26011K', 'Jl. H. Ikhsan (Pamanukan)', NULL, NULL, 400, 140460, 140860, -6.28333200000000000, 107.82073500000000000, -6.28707300000000000, 107.82061700000000000, 415.92516300000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.28519800000000000, 107.82063900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (227, '252000', 'Subang - Bts. Kab. Bandung/ Kab. Subang', NULL, NULL, 26960, 154203, 181163, -6.59785000000000000, 107.73459700000000000, -6.77388600000000000, 107.63620800000000000, 26935.52031000000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.68524300000000000, 107.67794900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (228, '365010', 'Jl. Terusan Buahbatu (Bts. Kota/Kab. Bandung - Bojongsoang', NULL, NULL, 2000, 8650, 10650, -6.96576700000000000, 107.63800600000000000, -6.98222800000000000, 107.63384300000000000, 1881.75121600000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.97400300000000000, 107.63590500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (229, '21411K', 'Jl. Siliwangi (Depok)', NULL, NULL, 1280, 37529, 38809, -6.39915700000000000, 106.81986400000000000, -6.40086100000000000, 106.83111000000000000, 1278.71337300000000000, 'Kota Depok', '1_3', 'SPP BOGOR I', -6.40001900000000000, 106.82556200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (230, '260000', 'Pamanukan - Pagaden', NULL, NULL, 19050, 141950, 161000, -6.29699900000000000, 107.82071600000000000, -6.45111500000000000, 107.79845200000000000, 18948.25844000000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.37660800000000000, 107.79972700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (231, '24411K', 'Jl. Pahlawan (Purwakarta)', NULL, NULL, 3170, 103980, 107150, -6.51692500000000000, 107.43039100000000000, -6.54105800000000000, 107.44381400000000000, 3105.13241100000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.52955600000000000, 107.43617100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (232, '391030', 'Cariu - Jagatamu/Baged (Bts. Kab. Bogor/Karawang)', NULL, NULL, 6573, 78700, 85273, -6.50186100000000000, 107.13026700000000000, -6.48583500000000000, 107.17419900000000000, 6526.31246300000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.48981200000000000, 107.15012100000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (233, '20211K', 'Jl. Moch. Toha (Parung Panjang)', NULL, NULL, 1500, 53855, 55355, -6.33957200000000000, 106.57469900000000000, -6.34414100000000000, 106.56373000000000000, 1459.30367200000000000, 'Kabupaten Bogor', '1_3', 'SPP BOGOR I', -6.34167600000000000, 106.56949500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (234, '24914K', 'Jl. Sukawangi (Bandung)', NULL, NULL, 180, 5770, 5950, -6.87839200000000000, 107.59626000000000000, -6.87827600000000000, 107.59776300000000000, 166.98177800000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.87832900000000000, 107.59701200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (235, '216010', 'Jl. Harapan Jaya (Cibinong) -Bts. Kota Bogor (Kedunghalang)', NULL, NULL, 7420, 53669, 61089, -6.48258900000000000, 106.81775000000000000, -6.54373700000000000, 106.80596700000000000, 7436.85475900000000000, 'Kabupaten Bogor', '1_3', 'SPP BOGOR I', -6.51265100000000000, 106.80717000000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (236, '202000', 'Parungpanjang - Bunar', NULL, NULL, 26820, 55355, 82175, -6.34414100000000000, 106.56373000000000000, -6.51942400000000000, 106.49896100000000000, 26853.74413000000000000, 'Kabupaten Bogor', '1_3', 'SPP BOGOR I', -6.42795300000000000, 106.54070800000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (237, '30911K', 'Ciawigebang - Jalaksana', NULL, NULL, 12595, 27850, 40445, -6.92237300000000000, 108.48730100000000000, -6.97078400000000000, 108.57845300000000000, 12538.88101000000000000, 'Kabupaten Kuningan', '5_5', 'SPP KUNINGAN 2', -6.94074700000000000, 108.53347000000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (238, '37400K', 'Jl. Peta (Bandung)', NULL, NULL, 2457, 7000, 9457, -6.93725200000000000, 107.60316300000000000, -6.92675300000000000, 107.58559900000000000, 2481.65979900000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.93547000000000000, 107.59258300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (239, '35111K', 'Jl. Cimanuk (Garut)', NULL, NULL, 1790, 63200, 64990, -7.21584500000000000, 107.89928100000000000, -7.23152700000000000, 107.90109400000000000, 1772.10003200000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.22367000000000000, 107.90064500000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (240, '23211K', 'Jl. Proklamasi (Karawang)', NULL, NULL, 1630, 67370, 69000, -6.27465600000000000, 107.27083300000000000, -6.26334700000000000, 107.27776400000000000, 1637.33309700000000000, 'Kabupaten Karawang', '3_7', 'SPP KAB KARAWANG', -6.27027000000000000, 107.27640200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (241, '106010', 'Bandung (Kopo) - Soreang', NULL, NULL, 10140, 6360, 16500, -6.96054400000000000, 107.57956200000000000, -7.02389600000000000, 107.53085700000000000, 10177.93765000000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -6.99064900000000000, 107.55654200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (242, '38100K', 'Jl. P. Diponegoro (Bandung)', NULL, NULL, 1369, 4676, 6045, -6.90108000000000000, 107.62569800000000000, -6.90068100000000000, 107.61510000000000000, 1197.98771700000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90124800000000000, 107.62028200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (243, '21011K', 'Jl. Ir. H. Juanda (Bogor)', NULL, NULL, 1771, 58680, 60451, -6.59300100000000000, 106.79727700000000000, -6.60453200000000000, 106.79682800000000000, 1536.17446900000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.59818800000000000, 106.79418200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (244, '303000', 'Budur - Susukan - Tegalgubug', NULL, NULL, 7600, 26500, 34100, -6.68909900000000000, 108.36256600000000000, -6.63109500000000000, 108.38443600000000000, 7475.30847200000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.65739300000000000, 108.37223600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (245, '40011K', 'Jl. Gedebage Selatan (Rel KA - Sp. Derwati - Bts Kota Bandung/Jbt.Tol)', NULL, NULL, 3400, 13900, 17300, -6.94154200000000000, 107.69185500000000000, -6.96871300000000000, 107.68630200000000000, 3333.60148800000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.95383600000000000, 107.68645100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (246, '30713K', 'Jl. Pulasaren (Kota Cirebon)', NULL, NULL, 730, 855, 1585, -6.72394100000000000, 108.56984200000000000, -6.72469200000000000, 108.56326400000000000, 732.27661300000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.72426600000000000, 108.56654600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (247, '191000', 'Sukabumi (Baros) - Sagaranten', NULL, NULL, 46420, 101057, 147477, -6.96918600000000000, 106.94864400000000000, -7.21467900000000000, 106.88396400000000000, 46090.19421000000000000, 'Kabupaten Sukabumi', '2_3', 'SPP SUKABUMI 3', -7.05750500000000000, 106.89146100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (248, '254000', 'Wanayasa - Bts. Purwakarta/Subang', NULL, NULL, 4790, 138100, 142890, -6.68162200000000000, 107.56610700000000000, -6.66820300000000000, 107.59815500000000000, 5003.88609500000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.67818800000000000, 107.58290700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (249, '24800K', 'Jl. Pajajaran (Akses Bandara Husein Satranegara) Kota Bandung', NULL, NULL, 1000, 4090, 5090, -6.90678200000000000, 107.58774700000000000, -6.90421500000000000, 107.57996900000000000, 906.76307500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90538000000000000, 107.58389800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (250, '24913K', 'Jl. Setiabudi (Bandung)', NULL, NULL, 4980, 5950, 10930, -6.87827600000000000, 107.59776300000000000, -6.84201600000000000, 107.59723400000000000, 4915.07095500000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.85913400000000000, 107.59488100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (251, '284000', 'Malangbong - Bts. Garut/Sumedang', NULL, NULL, 8500, 68100, 76600, -7.06069100000000000, 108.08686400000000000, -7.01346400000000000, 108.09888900000000000, 8497.61847500000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.02749500000000000, 108.08512500000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (252, '354000', 'Cikajang - Sumadra', NULL, NULL, 12660, 88180, 100840, -7.34725700000000000, 107.80122700000000000, -7.37865000000000000, 107.72423300000000000, 12724.03533000000000000, 'Kabupaten Garut', '4_3', 'SPP GARUT 3', -7.36935400000000000, 107.76382200000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (253, '26013K', 'Jl. Jend. A. Yani (Pagaden)', NULL, NULL, 1700, 161000, 162700, -6.45111500000000000, 107.79845200000000000, -6.45546800000000000, 107.81298300000000000, 1697.00305700000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.45368200000000000, 107.80553900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (254, '25912K', 'Jl. Arief Rahman Hakim (Subang)', NULL, NULL, 970, 147705, 148675, -6.55210500000000000, 107.75363000000000000, -6.55612100000000000, 107.76110200000000000, 958.67664000000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.55408200000000000, 107.75737500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (255, '09712K', 'Jl. Mayor Oking (Citeureup)', NULL, NULL, 3610, 67600, 71210, -6.46544100000000000, 106.89128400000000000, -6.48582300000000000, 106.87485600000000000, 3622.48486000000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.47923900000000000, 106.88252200000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (256, '19111K', 'Jl. Jend. A. Yani (Sukabumi)', NULL, NULL, 170, 93304, 93474, -6.92314700000000000, 106.93545500000000000, -6.92302200000000000, 106.93401800000000000, 160.43505700000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.92312600000000000, 106.93473500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (257, '25011K', 'Jl. Raya Lembang (Lembang)', NULL, NULL, 2030, 14600, 16630, -6.81901900000000000, 107.61154300000000000, -6.81447700000000000, 107.62295900000000000, 1769.22520300000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.81232700000000000, 107.61591200000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (258, '21611K', 'Bts. Kota Bogor (Kedunghalang) - Sp.3.Kedunghalang; Jl. Raya Pemda', NULL, NULL, 2170, 61089, 63259, -6.54373700000000000, 106.80596700000000000, -6.56027500000000000, 106.81307500000000000, 2170.57048000000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.55309500000000000, 106.80782300000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (259, '21313K', 'Jl. Margonda Raya (Depok)', NULL, NULL, 133, 37529, 37662, -6.39915700000000000, 106.81986400000000000, -6.39998500000000000, 106.81907300000000000, 126.92349400000000000, 'Kota Depok', '1_3', 'SPP BOGOR I', -6.39958200000000000, 106.81948100000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (260, '355010', 'Bungbulang - Sukarame', NULL, NULL, 15080, 135830, 150910, -7.45703200000000000, 107.60130500000000000, -7.43994300000000000, 107.53023100000000000, 14840.57395000000000000, 'Kabupaten Garut', '4_3', 'SPP GARUT 3', -7.44368700000000000, 107.56509400000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (261, '30712K', 'Jl. Kasepuhan (Kota Cirebon)', NULL, NULL, 200, 455, 655, -6.72426900000000000, 108.57149800000000000, -6.72394100000000000, 108.56984200000000000, 188.62425300000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.72401400000000000, 108.57068600000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (262, '368000', 'Kadungora (Leles) - Bts. Bandung/Garut (Cijapati)', NULL, NULL, 8600, 45745, 54345, -7.07761600000000000, 107.89875900000000000, -7.06052600000000000, 107.84873800000000000, 8700.03310400000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.08418700000000000, 107.87058200000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (263, '403000', 'Parakan Muncang - Warung Simpang', NULL, NULL, 9100, 27550, 36650, -6.96677300000000000, 107.82670200000000000, -6.89451400000000000, 107.83243400000000000, 9033.83861700000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.92902500000000000, 107.82693700000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (264, '37000K', 'Jl. Kebon Kawung (Sp. Cicendo - Sp. Pasirkaliki) Kota Bandung', NULL, NULL, 639, 0, 639, -6.91263400000000000, 107.60397700000000000, -6.91237400000000000, 107.59807600000000000, 652.89768800000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.91246600000000000, 107.60102800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (265, '259000', 'Bts. Purwakarta/Subang - Subang', NULL, NULL, 25130, 120100, 145230, -6.50122700000000000, 107.56009600000000000, -6.54515400000000000, 107.73377100000000000, 25167.39029000000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.51972100000000000, 107.65447400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (266, '30700K', 'Jl. Kesambi (Kota Cirebon)', NULL, NULL, 2240, 1795, 4035, -6.72508300000000000, 108.56128800000000000, -6.73951700000000000, 108.54817600000000000, 2195.07597400000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.73246800000000000, 108.55496200000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (267, '20411K', 'Jl. Siliwangi (Bogor)', NULL, NULL, 225, 64105, 64330, -6.62010900000000000, 106.81456700000000000, -6.62179000000000000, 106.81675700000000000, 305.78193500000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.62097600000000000, 106.81564300000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (268, '26012K', 'Jl. Ion Martasasmita (Pamanukan)', NULL, NULL, 1090, 140860, 141950, -6.28707300000000000, 107.82061700000000000, -6.29699900000000000, 107.82071600000000000, 1099.14912700000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.29203300000000000, 107.82066500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (269, '09711K', 'Jl. Kartini (Bekasi)', NULL, NULL, 2120, 34462, 36582, -6.24324900000000000, 107.00547800000000000, -6.25941500000000000, 106.99506900000000000, 2155.08865000000000000, 'Kota Bekasi', '1_5', 'SPP BEKASI', -6.25094100000000000, 106.99980400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (270, '25911K', 'Jl. Mayjen. Sutoyo (Subang)', NULL, NULL, 1120, 148675, 149795, -6.55612100000000000, 107.76110200000000000, -6.55919000000000000, 107.77094300000000000, 1141.75783000000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.55773700000000000, 107.76599400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (271, '310000', 'Bts. Cirebon/Kuningan (Waled) - Ciledug (Jl. Dewi Sartika)', NULL, NULL, 3360, 62362, 65722, -6.93664300000000000, 108.70069800000000000, -6.91543200000000000, 108.71544700000000000, 3401.22233700000000000, 'Kabupaten Cirebon', '6_5', 'SPP CIREBON', -6.92288800000000000, 108.70294900000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (272, '250000', 'Bts. Kota Bandung - Lembang', NULL, NULL, 3670, 10930, 14600, -6.84201600000000000, 107.59723400000000000, -6.81901900000000000, 107.61154300000000000, 3744.27693700000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.83214100000000000, 107.60548000000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (273, '09112K', 'Jl. Siliwangi (Kuningan)', NULL, NULL, 1750, 30970, 32720, -6.95423900000000000, 108.48887400000000000, -6.96830800000000000, 108.48852300000000000, 1712.38295000000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -6.96132400000000000, 108.49078700000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (274, '21013K', 'Jl. Pemuda (Bogor)', NULL, NULL, 1309, 55737, 57046, -6.56973500000000000, 106.79901300000000000, -6.58127900000000000, 106.79668000000000000, 1368.30536800000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.57511000000000000, 106.79652500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (275, '265000', 'Subang - Bantarwaru (Bts. Kab. Subang/Indramayu)', NULL, NULL, 10210, 176443, 186653, -6.56009400000000000, 107.78649200000000000, -6.57047100000000000, 107.85617400000000000, 9509.71012500000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.55433500000000000, 107.82678800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (276, '267000', 'Jangga - Cikamurang', NULL, NULL, 34980, 72545, 107525, -6.39725000000000000, 108.16802800000000000, -6.63621600000000000, 108.03875900000000000, 34890.13652000000000000, 'Kabupaten Indramayu', '6_2', 'SPP INDRAMAYU 2', -6.53173200000000000, 108.11803000000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (277, '21412K', 'Jl. Tole Iskandar (Depok)', NULL, NULL, 1060, 38809, 39869, -6.40086100000000000, 106.83111000000000000, -6.40393100000000000, 106.83847100000000000, 1066.87112500000000000, 'Kota Depok', '1_3', 'SPP BOGOR I', -6.40386900000000000, 106.83377500000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (278, '37200K', 'Jl. Pasir Kaliki (Sp. Kebonkawung - Sp. Pajajaran) Kota Bandung', NULL, NULL, 660, 0, 660, -6.91237400000000000, 107.59807600000000000, -6.90649200000000000, 107.59750900000000000, 653.60623400000000000, 'Kota Bandung', '3_1', 'SPP KOTA BANDUNG', -6.90943200000000000, 107.59779900000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (279, '35212K', 'Jl. Raya Pameungpeuk (Pameungpeuk)', NULL, NULL, 750, 146740, 147490, -7.63960700000000000, 107.73464200000000000, -7.64426700000000000, 107.73100500000000000, 719.08467500000000000, 'Kabupaten Garut', '4_2', 'SPP GARUT 2', -7.64141800000000000, 107.73244100000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (280, '30714K', 'Jl. Lawanggada (Kota Cirebon)', NULL, NULL, 210, 1585, 1795, -6.72469200000000000, 108.56326400000000000, -6.72508300000000000, 108.56128800000000000, 223.00442000000000000, 'Kota Cirebon', '6_5', 'SPP CIREBON', -6.72484700000000000, 108.56226800000000000, 'UPTD VI Cirebon', 6, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (281, '253000', 'Purwakarta - Wanayasa', NULL, NULL, 20170, 116420, 136590, -6.56820900000000000, 107.45944200000000000, -6.67837500000000000, 107.55553000000000000, 20025.44220000000000000, 'Kabupaten Purwakarta', '3_6', 'SPP KAB PURWAKARTA', -6.62021300000000000, 107.50752500000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (282, '282000', 'Situraja - Darmaraja', NULL, NULL, 10840, 60240, 71080, -6.84438500000000000, 108.02777800000000000, -6.91748400000000000, 108.06903400000000000, 10864.53653000000000000, 'Kabupaten Sumedang', '4_6', 'SPP SUMEDANG 2', -6.88812400000000000, 108.03821100000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (283, '19113K', 'Jl. Rh. Didi Sukardi (Sukabumi)', NULL, NULL, 1920, 95357, 97277, -6.93146600000000000, 106.93251900000000000, -6.94662200000000000, 106.93473300000000000, 1911.15513700000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.93999900000000000, 106.93130100000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (284, '25013K', 'Jl. Grand Hotel (Lembang)', NULL, NULL, 1000, 15300, 16300, -6.81494900000000000, 107.61423900000000000, -6.81742000000000000, 107.62229700000000000, 989.02486200000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.81577600000000000, 107.61823100000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (285, '21012K', 'Jl. Jend. Sudirman (Bogor)', NULL, NULL, 1303, 57377, 58680, -6.58127900000000000, 106.79668000000000000, -6.59300100000000000, 106.79727700000000000, 1303.52557800000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.58713800000000000, 106.79703400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (286, '313000', 'Oleced - Luragung', NULL, NULL, 8370, 42560, 50930, -6.99244100000000000, 108.56794100000000000, -7.01773400000000000, 108.63679900000000000, 8328.77890700000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -7.01071300000000000, 108.60062000000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (287, '256000', 'Sumedang - Bts. Sumedang/Subang (Cikaramas)', NULL, NULL, 20910, 40980, 61890, -6.86338500000000000, 107.89733000000000000, -6.76613000000000000, 107.83752700000000000, 21074.83927000000000000, 'Kabupaten Sumedang', '4_5', 'SPP SUMEDANG 1', -6.80949400000000000, 107.86090300000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (288, '31311K', 'Jl. Raya Luragung (Luragung)', NULL, NULL, 210, 50930, 51140, -7.01773400000000000, 108.63679900000000000, -7.01752900000000000, 108.63833600000000000, 215.00677900000000000, 'Kabupaten Kuningan', '5_4', 'SPP KUNINGAN 1', -7.01797400000000000, 108.63774100000000000, 'UPTD V Tasikmalaya', 5, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (289, '349000', 'Nagreg - Bts. Bandung/Garut', NULL, NULL, 2330, 40100, 42430, -7.03635200000000000, 107.90740800000000000, -7.05278600000000000, 107.89913900000000000, 2295.53480700000000000, 'Kabupaten Bandung', '3_2', 'SPP KAB BANDUNG', -7.04492300000000000, 107.90436800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (290, '255000', 'Jl. Cagak - Bts. Purwakarta/Subang', NULL, NULL, 13710, 167150, 180860, -6.67753600000000000, 107.68266000000000000, -6.66820300000000000, 107.59815500000000000, 13441.18748000000000000, 'Kabupaten Subang', '3_4', 'SPP KAB SUBANG 1', -6.66774100000000000, 107.64554800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (291, '09714K', 'Jl. Mayor Oking (Cibinong)', NULL, NULL, 3790, 71210, 75000, -6.48582300000000000, 106.87485600000000000, -6.46546600000000000, 106.85560900000000000, 3581.37838100000000000, 'Kabupaten Bogor', '1_4', 'SPP BOGOR II', -6.47839100000000000, 106.86346400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (292, '25914K', 'Jl. Dangdeur (Subang)', NULL, NULL, 950, 144925, 145875, -6.54515400000000000, 107.73377100000000000, -6.55032100000000000, 107.73941000000000000, 945.85396500000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.54699500000000000, 107.73751700000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (293, '261000', 'Pagaden - Subang', NULL, NULL, 8670, 164190, 172860, -6.46872400000000000, 107.80979100000000000, -6.53816200000000000, 107.78205700000000000, 8643.45524200000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.50645100000000000, 107.80402300000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (294, '17012K', 'Jl. Baros (Cimahi)', NULL, NULL, 1420, 11810, 13230, -6.89248300000000000, 107.53673600000000000, -6.90346400000000000, 107.53504600000000000, 1344.85177100000000000, 'Kota Cimahi', '3_3', 'SPP KAB CIMAHI', -6.89854200000000000, 107.53654800000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (295, '34511K', 'Jl. Suherman (Garut)', NULL, NULL, 1370, 59430, 60800, -7.19031700000000000, 107.88951100000000000, -7.19005800000000000, 107.90227100000000000, 1416.78514000000000000, 'Kabupaten Garut', '4_1', 'SPP GARUT 1', -7.19046000000000000, 107.89588000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (296, '35211K', 'Jl. Raya Cikajang (Cikajang)', NULL, NULL, 3230, 88190, 91420, -7.34725700000000000, 107.80122700000000000, -7.36846000000000000, 107.81515200000000000, 3207.85849400000000000, 'Kabupaten Garut', '4_2', 'SPP GARUT 2', -7.35701600000000000, 107.80813000000000000, 'UPTD IV Sumedang', 4, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (297, '20413K', 'Jl. Pahlawan (Bogor)', NULL, NULL, 2140, 60607, 62747, -6.60774200000000000, 106.79506400000000000, -6.61879600000000000, 106.80686500000000000, 1853.27064600000000000, 'Kota Bogor', '1_3', 'SPP BOGOR I', -6.61216200000000000, 106.80198400000000000, 'UPTD I Cianjur', 1, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (298, '26014K', 'Jl. Raya Kamarung (Pagaden)', NULL, NULL, 1490, 162700, 164190, -6.45546800000000000, 107.81298300000000000, -6.46872400000000000, 107.80979100000000000, 1534.26162300000000000, 'Kabupaten Subang', '3_5', 'SPP KAB SUBANG 2', -6.46182300000000000, 107.81038400000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (299, '19112K', 'Jl. Oto Iskandardinata (Sukabumi)', NULL, NULL, 950, 94405, 95355, -6.92302200000000000, 106.93401800000000000, -6.93146600000000000, 106.93251900000000000, 950.91360000000000000, 'Kota Sukabumi', '2_1', 'SPP SUKABUMI 1', -6.92726900000000000, 106.93341500000000000, 'UPTD II Sukabumi', 2, NULL, NULL, NULL, NULL);
INSERT INTO `master_ruas_jalan` VALUES (300, '25012K', 'Jl. Panorama (Lembang)', NULL, NULL, 300, 16300, 16600, -6.81742000000000000, 107.62229700000000000, -6.81447700000000000, 107.62295900000000000, 341.50233900000000000, 'Kabupaten Bandung Barat', '3_3', 'SPP KAB CIMAHI', -6.81596900000000000, 107.62273600000000000, 'UPTD III Bandung', 3, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '2020_12_04_231552_create_log', 2);
INSERT INTO `migrations` VALUES (4, '2020_12_04_231921_add_column_parent', 2);
INSERT INTO `migrations` VALUES (5, '2020_12_07_043443_create_jobs_table', 3);
INSERT INTO `migrations` VALUES (6, '2021_01_04_020643_create_utils_jenis_jembatan', 3);
INSERT INTO `migrations` VALUES (7, '2021_01_04_020833_add_columns_jembatan', 3);
INSERT INTO `migrations` VALUES (8, '2021_01_04_021444_create_jembatan_foto', 3);

-- ----------------------------
-- Table structure for monitoring_laporan_masyarakat
-- ----------------------------
DROP TABLE IF EXISTS `monitoring_laporan_masyarakat`;
CREATE TABLE `monitoring_laporan_masyarakat`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nomorPengaduan` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'P-123123',
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lokasi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'Submitted',
  `uptd_id` int(10) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT current_timestamp(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uptd_id`(`uptd_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monitoring_laporan_masyarakat
-- ----------------------------
INSERT INTO `monitoring_laporan_masyarakat` VALUES (1, 'P-123123', 'Sumanto', '3212321323211232', 'Jalan', '082382123212', 'sumanto@mail.com', 'Jalan Berlubang', 'https://images.hukumonline.com/frontend/lt5a954764bab1a/lt5a954d70cd9dd.jpg', NULL, '-6', '141', 'Punten, Jalan dekat rumah saya rusak', 'Done', 1, NULL, '2020-11-21 08:53:29');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (2, 'P-123123', 'NamaNama', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', NULL, NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Approved', 1, '2020-10-18 09:06:29', '2020-10-18 09:06:29');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (3, 'P-123123', 'NamaSayaSiapa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'laporan_masyarakat/20201018090932_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'On Progress', 1, '2020-10-18 09:09:32', '2020-10-18 09:09:32');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (4, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'laporan_masyarakat/20201103040209_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Done', 1, '2020-11-03 04:02:09', '2020-11-03 04:02:09');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (6, 'P-123123', 'NamaSayaApaSSA', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103114038_Picture.jpg', NULL, '-6', '138', 'Punten, Jalan dekat rumah saya rusak', 'Progress', 1, '2020-11-03 11:40:38', '2020-11-21 08:20:23');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (7, 'P-123123', 'jsjsjs', '6464646464464949', 'Jalan', '646464949449', 'ha@js.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103135831_IMG-20201103-WA0010.jpg', NULL, '-6.92797', '107.67', 'nNan', 'Progress', 1, '2020-11-03 13:58:31', '2020-11-21 08:20:57');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (8, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103141513_porsche_911_carrera_rsr_porsche_sports_car_139640_2560x1080.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Progress', 1, '2020-11-03 14:15:13', '2020-11-21 08:21:32');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (9, 'P-123123', 'Rizal Test', '6464644664644469', 'Jalan', '6464646464', 'hshsh@js.cmx', 'Trotoar Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103142142_IMG-20201103-WA0009.jpg', NULL, '-6.92793', '107.67', 'Rizal', 'Progress', 1, '2020-11-03 14:21:42', '2020-12-07 01:26:58');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (10, 'P-123123', 'saya', '6464995959594464', 'Jalan', '081316666161', 'kaka@mail.com', 'Trotoar Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103150200_IMG-20201103-WA0000.jpg', NULL, '-7.0030501', '107.6008543', 'rusak', 'Submitted', 1, '2020-11-03 15:02:00', '2020-11-03 15:02:00');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (11, 'P-123123', 'karya bakti', '3208758121212121', 'Jalan', '08131698725', 'karya@bakti.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201103155949_IMG_20201103_225736.jpg', NULL, '-6.9851835', '107.6068127', 'jalan berlubang mohon diperbaiki', 'Submitted', 1, '2020-11-03 15:59:49', '2020-11-03 15:59:49');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (12, 'P-123123', 'kaka safika', '6984546494848424', 'Jalan', '081365484848', 'kaka12@gmail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201104035632_IMG_20201103_225736.jpg', NULL, '-6.985186', '107.6068151', 'jalan bolong', 'Submitted', 1, '2020-11-04 03:56:32', '2020-11-04 03:56:32');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (13, 'P-123123', 'NamaSayaApa', '123123123', 'Jalan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201111025325_Picture.jpg', NULL, '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-11 02:53:25', '2020-11-11 02:53:25');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (14, 'P-123123', 'zulkifli', '0856215669988566', 'Jalan', '081126957653', 'izqfly@gmail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201117001431_Screenshot_20201117-070906.jpg', NULL, '-6.9070754', '107.6453934', 'jalan rusak', 'Submitted', 1, '2020-11-17 00:14:31', '2020-11-17 00:14:31');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (15, 'P-123123', 'Do', '3232323232323232', 'Jalan', '3232323', 'mail@mail.com', 'Jembatan Rusak', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201119073342_IMG-20201117-WA0016.jpg', NULL, '-6.8909188', '107.6228495', 'tidak ada', 'Submitted', 1, '2020-11-19 07:33:42', '2020-11-19 07:33:42');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (16, 'P-123123', 'NamaSayaApa', '123123123', 'Jalanan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201120035349_Picture.jpg', 'Kota Bandung', '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-20 03:53:49', '2020-11-20 03:53:49');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (17, 'P-732032', 'NamaSayaApa', '123123123', 'Jalanan', '08121212121', 'nama@mail.com', 'Jalan Berlubang', NULL, '1', '-7', '141', 'Punten, Jalan dekat rumah saya rusak', 'Submitted', 1, '2020-11-21 03:20:19', '2020-11-21 03:20:19');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (18, 'P-290776', 'Test', '1213464649464646', 'Bandung', '64644646464', 'haah@mail.com', 'Jalan Berlubang', 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201121033832_IMG-20201120-WA0002.jpg', 'Kabupaten Bogor', '-6.9279996', '107.6699062', 'Test', 'Submitted', 1, '2020-11-21 03:38:32', '2020-11-21 03:38:32');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (19, 'P-820472', 'kaka', '9797979997977979', 'jl.mama no.1', '081364548494', 'wfh@gmail.com', 'Jalan Berlubang', 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201121144208_Screenshot_2020-11-21-21-40-31-718_com.temanjabar.app.jpg', 'Kabupaten Purwakarta', '-6.9851803', '107.6068084', NULL, 'Submitted', 3, '2020-11-21 14:42:08', '2020-11-21 14:42:08');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (20, 'P-936586', 'RIZAL TEST', '1234567891223464', 'Bandung', '123456487999', 'rizal@mail.com', 'Jalan Berlubang', 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201207012835_IMG-20201207-WA0001.jpg', 'Kabupaten Sukabumi', '-6.9279769', '107.6698993', 'nothing', 'Progress', 1, '2020-12-07 01:28:35', '2020-12-07 01:29:14');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (21, 'P-123123', 'maulana', '32008765788876545', 'jl. raya cianjur', '081319875423', 'maulana@gmail.com', 'Jalan Berlubang', NULL, NULL, '-6.81227', '107.14664', 'tolong diperbaiki jalan didepan mesjid as salam', 'Submitted', 1, '2020-12-15 07:28:16', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (22, 'P-123123', 'maman', '32043221099000001', 'Jl. puma no.3', '81912341231', 'maman@gmail.com', 'Jalan Berlubang', NULL, NULL, '-7018000', '107.53904', 'Jalan gading berlubang', 'Submitted', 3, '2020-12-15 10:58:32', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (23, 'P-123123', 'Mamang Agus', '32032432109870001', 'Jl. cianjur no.1', '081387861111', 'mamangagus@gmail.com', 'Jalan Berlubang', NULL, NULL, '-6.9867', '107.1433', 'tolong diperbaiki jalan berlubang', 'Submitted', 3, '2020-12-15 11:40:53', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (24, 'P-123123', 'mamang agus', '3204321099800001', 'Jln. limau no.1', '08198123333', 'mamangagus@gmail.com', 'Jalan Berlubang', NULL, NULL, '-6.1033', '107.2322', 'mohon bantuannya untuk jalan berlubang di gading tutuka', 'Submitted', 3, '2020-12-15 12:09:34', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (25, 'P-123123', 'kaka', '1231312312331', 'jl. limbangan no.1', '0813333333', 'kaka@mail.com', 'Jalan Berlubang', NULL, NULL, '-6.123', '107.0001', 'Jalan berlubang', 'Submitted', 4, '2020-12-15 17:18:46', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (26, 'P-123123', 'kaka', '1231312312331', 'jl. limbangan no.1', '0813333333', 'kaka@mail.com', 'Jalan Berlubang', NULL, NULL, '-6.123', '107.0001', 'Jalan berlubang', 'Submitted', 4, '2020-12-15 17:18:55', NULL);
INSERT INTO `monitoring_laporan_masyarakat` VALUES (27, 'P-190942', 'tes', '123', 'tes', '123', '123@aed.com', 'Jalan Berlubang', NULL, 'Kabupaten Bogor', '-7.001077751814013', '107.56795378040532', 'jalan rusak test', 'Submitted', 1, '2021-01-11 01:44:26', '2021-01-11 01:44:26');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (28, 'P-820004', 'test', '123123123', 'jal. test', '123123123', 'azsdf@mail.com', 'Jalan Berlubang', 'http://103.131.0.197/storage/laporan_masyarakat/20210111014641_5. karangasem-denpasar.png', 'Kabupaten Bogor', '-6.93170072729326', '107.61572406014774', 'test jalan rsak', 'Submitted', 1, '2021-01-11 01:46:41', '2021-01-11 01:46:41');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (29, 'P-359865', 'TestUser', '1412371827331239', 'JL.Test 1212', '09809128390132', 'test1@mail.com', 'Jembatan Rusak', 'http://103.131.0.197/storage/laporan_masyarakat/20210111014801_Screenshot_2020-12-17_15-18-17.png', 'Kabupaten Majalengka', '-6.91737219114339', '107.62577333602705', 'sarann.....', 'Submitted', 6, '2021-01-11 01:48:01', '2021-01-11 01:48:01');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (30, 'P-884523', 'kaka sisi', '19830128319283091', 'Jln. Mobil No.1', '01231231', 'abang@mail.com', 'Jalan Berlubang', NULL, 'Kabupaten Bogor', '-6.826219697322867', '107.12701839113512', 'ass', 'Submitted', 1, '2021-01-13 06:33:29', '2021-01-13 06:33:29');
INSERT INTO `monitoring_laporan_masyarakat` VALUES (31, 'P-170802', 'kaka siong', '123123123', 'jalan mondaong', '08123132', 'emal@mail.com', 'Tidak Ada Akses Jalan', 'http://103.131.0.197/storage/laporan_masyarakat/20210114115747_1. denpasar-buleleng.PNG', 'Kabupaten Kuningan', '-6.956806714227793', '108.49159744683358', 'tiak ada', 'Submitted', 5, '2021-01-14 11:57:47', '2021-01-14 11:57:47');

-- ----------------------------
-- Table structure for monitoring_laporan_petugas
-- ----------------------------
DROP TABLE IF EXISTS `monitoring_laporan_petugas`;
CREATE TABLE `monitoring_laporan_petugas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NULL DEFAULT NULL,
  `pegawai_id` int(10) NULL DEFAULT NULL,
  `perkembangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `persentase` float NULL DEFAULT NULL,
  `dokumentasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `laporan_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of monitoring_laporan_petugas
-- ----------------------------
INSERT INTO `monitoring_laporan_petugas` VALUES (1, NULL, 1, 'Tidak Ada', 0, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat/20201119073342_IMG-20201117-WA0016.jpg', 3, NULL, NULL);
INSERT INTO `monitoring_laporan_petugas` VALUES (2, '2020-01-01', 3, 'Tidak Ada', 91, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201120040048_Picture.jpg', 1, '2020-11-19 21:00:48', '2020-11-19 21:00:48');
INSERT INTO `monitoring_laporan_petugas` VALUES (3, '2020-01-01', 3, 'Tidak Ada', 90.8, 'https://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201120040114_Picture.jpg', 1, '2020-11-19 21:01:14', '2020-11-19 21:01:14');
INSERT INTO `monitoring_laporan_petugas` VALUES (4, '2020-11-21', 1, 'test', 100, 'http://citylab.itb.ac.id/temanjabar-laravel/public/storage/laporan_masyarakat_progress/20201121085329_IMG-20201121-WA0000.jpg', 1, '2020-11-21 01:53:29', '2020-11-21 01:53:29');

-- ----------------------------
-- Table structure for pembangunan
-- ----------------------------
DROP TABLE IF EXISTS `pembangunan`;
CREATE TABLE `pembangunan`  (
  `kode_paket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi_pekerjaan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pagu_anggaran` decimal(20, 2) NOT NULL,
  `target_panjang` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_pelaksanaan_hk` int(11) NOT NULL,
  `waktu_pelaksanaan_bln` int(11) NOT NULL,
  `titik_segmen1` int(11) NOT NULL,
  `km_bdg1` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `titik_segmen2` int(1) NULL DEFAULT NULL,
  `km_bdg2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `titik_segmen3` int(1) NULL DEFAULT NULL,
  `km_bdg3` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `titik_segmen4` int(1) NULL DEFAULT NULL,
  `km_bdg4` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `titik_segmen5` int(1) NULL DEFAULT NULL,
  `km_bdg5` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `titik_segmen6` int(1) NULL DEFAULT NULL,
  `km_bdg6` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `titik_segmen7` int(1) NULL DEFAULT NULL,
  `km_bdg7` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_penanganan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penyedia_jasa` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nomor_kontrak` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_kontrak` date NOT NULL,
  `nilai_kontrak` decimal(20, 2) NOT NULL,
  `nilai_tambahan` decimal(20, 2) NOT NULL,
  `nilai_kontrak_perubahan` decimal(20, 2) NOT NULL,
  `total_tambahan` decimal(20, 2) NULL DEFAULT NULL,
  `total_sisa_lelang` decimal(20, 2) NULL DEFAULT NULL,
  `lat` float(10, 6) NOT NULL,
  `lng` float(10, 6) NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `kategori` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kegiatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat1` float(10, 6) NOT NULL,
  `lng1` float(10, 6) NOT NULL,
  `uptd_id` int(11) NOT NULL,
  PRIMARY KEY (`kode_paket`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 100 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pembangunan
-- ----------------------------
INSERT INTO `pembangunan` VALUES (1, 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK', 20979000000.00, '5 KM', 170, 5, 1, 'Km.Jkt. 39', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix dan Beton ', ' PT. MUTIARA INDAH PURNAMA ', ' 602/Ktr.026/PPK.TING/PJ2WP I/2019 ', '2019-07-10', 17204987158.00, 0.00, 0.00, 0.00, 3774012842.00, -6.404000, 106.838402, 0, 'pn3', 'peningkatan', 'SPP BOGOR 1', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (2, 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'CILEUNGSI - CIBEET', 7429686000.00, '2 KM', 150, 5, 1, 'Km.Jkt. 75', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix dan Beton ', ' PT. BEKASI RAYA PUTRA ', ' 602/Ktr.070/PPK.TING/PJ2WP I/2019 ', '2019-07-26', 6266806994.95, 0.00, 0.00, 0.00, 1162879005.05, -6.487520, 107.110527, 0, 'pn4', 'peningkatan', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (3, 'Peningkatan Jalan Mekarmukti - Cibarusah (1 Km)', 'CIBARUSAH - MEKARMUKTI', 6037300000.00, '1 KM', 150, 5, 1, 'Km.Jkt. 62', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix dan Beton ', ' PT. DOLLAR LESTARI MANDIRI ', ' 602/Ktr.038/PPK.TING/PJ2WP I/2019 ', '2019-07-17', 4830604493.27, 0.00, 0.00, 0.00, 1206695506.73, -6.284021, 107.161507, 0, 'pn5', 'peningkatan', 'SPP BEKASI', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (4, 'Peningkatan Jalan Jl. Perjuangan (Bekasi) (1,6 Km)', 'JL. PERJUANGAN (BEKASI)', 5046666000.00, '1.6 KM', 120, 4, 1, 'Km.Jkt. 32', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Hotmix ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 5046666000.00, -6.242790, 107.008141, 0, 'pn5', 'peningkatan', 'SPP BEKASI', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (5, 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'CILEUNGSI - CIBEET', 60000000000.00, '7.5 KM', 170, 5, 1, 'Km.Jkt. 57', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix ', ' PT. PRIMA MIXINDO UTAMA ', ' 602/Ktr.021/PPK.TING/PJ2WP I/2019 ', '2019-07-08', 47999986941.41, 0.00, 0.00, 0.00, 12000013058.59, -6.409300, 107.004204, 0, 'pn4', 'peningkatan', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (6, 'Rehabilitasi Jalan Jl. Pahlawan (Bogor) (2,14 Km)', 'JL. PAHLAWAN (BOGOR)', 5189000000.00, '2.14 KM', 120, 4, 1, 'Km.Jkt. 60', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Hotmix ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 5189000000.00, -6.608879, 106.797302, 0, 'rb3', 'rehabilitasi', 'SPP BOGOR 1', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (7, 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'CILEUNGSI - CIBEET', 7000000000.00, '3 KM', 150, 5, 1, 'Km.Jkt. 81', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix ', ' PT. CAHAYA RAMA PRATAMA ', ' 602.1/Ktr.04/PPK.Rehab/PJ2WP I/2019 ', '2019-07-15', 5730913634.00, 0.00, 0.00, 0.00, 1269086366.00, -6.522874, 107.127434, 0, 'rb4', 'rehabilitasi', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (8, 'Rehabilitasi Jalan Cibeber - Sukanagara (2 Km)', 'CIBEBER - SUKANAGARA', 4000000000.00, '2 KM', 120, 4, 1, 'Km.Bdg. 95', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Hotmix ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 4000000000.00, -7.015210, 107.140221, 0, 'rb1', 'rehabilitasi', 'SPP CIANJUR 1', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (9, 'Rehabilitasi Jalan Selajambe - Cibogo - Cibeet (2 Km)', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 4477726000.00, '2 KM', 120, 4, 1, 'Km.Bdg. 73', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Hotmix ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 4477726000.00, -6.673882, 107.213722, 0, 'rb1', 'rehabilitasi', 'SPP CIANJUR 1', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (10, 'Rehabilitasi Jalan Sukanagara - Sindangbarang (1,3 Km)', 'SUKANAGARA - SINDANGBARANG', 2851573000.00, '1.3 KM', 120, 4, 1, 'Km.Bdg. 11', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Hotmix ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 2851573000.00, -7.131636, 107.117485, 0, 'rb2', 'rehabilitasi', 'SPP CIANJUR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (11, 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'CILEUNGSI - CIBEET', 3012000000.00, '25 M', 160, 5, 0, 'Km.Jkt. 64', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Pelebaran Jembatan (Beton) ', '  PT. RESTU IBU ', ' 602.1/Ktr.03/PPK.Rehab/PJ2WP I/2019 ', '2019-07-15', 2412401515.95, 0.00, 0.00, 0.00, 599598484.05, -6.436457, 107.052986, 0, 'rb4', 'rehabilitasi', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (12, 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 73+200', 'CILEUNGSI - CIBEET', 600000000.00, '300 M', 90, 3, 0, 'Km.Jkt. 73', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' Beton ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 600000000.00, -6.476481, 107.095695, 0, 'rb4', 'rehabilitasi', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (13, 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'CILEUNGSI - CIBEET', 500000000.00, '30 M', 90, 3, 1, 'Km.Jkt. 96', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' TPT Beton ', ' CV. PUTERA ZIA ', ' 602.1/Ktr.01/PPK.Rehab/PJ2WP I/2019 ', '2019-07-15', 400020400.76, 0.00, 0.00, 0.00, 99979599.24, -6.434874, 107.047050, 0, 'rb4', 'rehabilitasi', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (14, 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 1600000000.00, '300 M', 120, 4, 1, 'Km.Bdg. 78', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Bore Pile ', ' CV. TATA KREATIPA ', ' 602.1/Ktr.02/PPK.Rehab/PJ2WP I/2019 ', '2019-07-15', 1287014327.50, 0.00, 0.00, 0.00, 312985672.50, -6.659006, 107.187561, 0, 'rb1', 'rehabilitasi', 'SPP CIANJUR 1', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (15, 'Pekerjaan Drainase Cileungsi - Cibeet Km.Jkt. 54+750', 'CILEUNGSI - CIBEET', 800000000.00, '400 M', 120, 4, 1, 'Km.Jkt. 54', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Masih Proses Lelang', ' U-Ditch ', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 800000000.00, -6.406608, 106.977043, 0, 'rb4', 'rehabilitasi', 'SPP BOGOR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (16, 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 20243151000.00, '6.1 KM', 170, 5, 1, 'Km.Bdg. 58', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Proses  Field Engineering (FE)', ' Hotmix ', ' PT. SINAR MUTIARA ', ' 602.1/Ktr.01/PPK.Ting DAK/PJ2WP I/2019 ', '2019-07-03', 15920959254.76, 0.00, 0.00, 0.00, 4322191745.24, -7.232266, 107.352188, 0, 'pn2', 'peningkatan', 'SPP CIANJUR 2', 0.000000, 0.000000, 1);
INSERT INTO `pembangunan` VALUES (29, 'Rehabilitasi Jalan Banjaran - Pangalengan', 'Banjaran - Pangalengan', 4387035000.00, '2.000', 120, 3, 0, 'Km. Bdg. 3', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. BUMI CAKRAWALA INFRASTRUKTUR', '602.1/2723.Rehab.01/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 3460400705.86, 0.00, 0.00, 0.00, 926634294.14, -7.143099, 107.561165, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', -7.153396, 107.559906, 3);
INSERT INTO `pembangunan` VALUES (30, 'Rehabilitasi Jalan Banjaran - Pangalengan', 'Banjaran - Pangalengan', 4387035000.00, '2.000', 120, 4, 0, 'Km. Bdg. 3', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', ' Hotmix ', 'PT. BUMI CAKRAWALA INFRASTRUKTUR', '602.1/2723.Rehab.01/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 3.46, 0.00, 3.46, 0.00, 4387034996.54, -7.143115, 107.561066, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', -7.153393, 107.559921, 3);
INSERT INTO `pembangunan` VALUES (31, 'Rehabilitasi Jalan Jl. Baros (Cimahi)', 'Jl. Baros (Cimahi)', 4582657000.00, '1.420', 120, 4, 0, 'Km. Bdg. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. VISICON GLOBAL ENGINEERING', '602.1/2723.Rehab.02/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 3620289787.40, 0.00, 0.00, 0.00, 962367212.60, -6.892629, 107.536720, 0, 'rb3', 'rehabilitasi', 'SUP KBB CIMAHI', -6.902807, 107.535217, 3);
INSERT INTO `pembangunan` VALUES (32, 'Rehabilitasi Jalan Jl. Buah Batu (Sp. 4 Pelajar Pejuang 45 - Sp. 4 Soekarno Hatta)', 'Jl. Buah Batu (Sp.4 Pelajar Pejuang 45 - Sp.4 Soek', 7745664000.00, '1.700', 120, 4, 0, 'Km. Bdg. 4', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. MANGGALA DUTA', '602.1/2723.Rehab.03/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 6045134197.49, 0.00, 0.00, 0.00, 1700529802.51, -6.936882, 107.622810, 0, 'rb1', 'rehabilitasi', 'SUP KOTA BANDUNG', -6.947962, 107.633369, 3);
INSERT INTO `pembangunan` VALUES (33, 'Rehabilitasi Jalan Jl. Moh. Toha (Sp. Jl. BKR - Bts. Kota/Kab. Bandung)', 'Jl. Moh. Toha (Sp. Jl. BKR - Bts. Kota/Kab. Bandun', 5695341000.00, '1.250', 120, 4, 0, 'Km. Bdg. 2', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. MANGGALA DUTA', '602.1/2723.Rehab.04/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 4436746512.99, 0.00, 0.00, 0.00, 1258594487.01, -6.937547, 107.606224, 0, 'rb1', 'rehabilitasi', 'SUP KOTA BANDUNG', -6.948336, 107.609375, 3);
INSERT INTO `pembangunan` VALUES (34, 'Rehabilitasi Jalan Jl. Pasirkaliki (Sp. Kebonkawung - Sp. Pajajaran) Kota Bandung', 'Jl. Pasirkaliki (Sp. Kebonkawung - Sp. Pajajaran) ', 2565733000.00, '0.647', 120, 4, 0, 'STA. 0+000', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. BENGAWAN AGUNG', '602.1/2723.Rehab.05/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 2044804646.86, 0.00, 0.00, 0.00, 520928353.14, -6.912338, 107.598038, 0, 'rb1', 'rehabilitasi', 'SUP KOTA BANDUNG', -6.906583, 107.597740, 3);
INSERT INTO `pembangunan` VALUES (35, 'Rehabilitasi Jalan Majalaya (Sp. 3 Jl. Cikareo/Jl. Tengah) - Sawahbera (Sp. 3 Cijapati) - Bts. Bdg/Garut (Cijapati) (2,50 Km)', 'Majalaya (Sp.3 Jl. Cikaro/Jl. Tengah) - Sawahbera ', 4766996000.00, '2.500', 180, 6, 0, 'Km. Bdg. 4', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix & Beton', 'PT SARANA SEJA IBADAH', '602.1/2259.Rehab.07/KTR/PjPK/PJ2WP.III/2019', '2019-06-28', 3813487146.58, 0.00, 0.00, 0.00, 953508853.42, -7.060727, 107.829468, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', -7.060571, 107.848724, 3);
INSERT INTO `pembangunan` VALUES (36, 'Rehabilitasi Jalan Padalarang (Sp. 3 Stasion) - Sp. Cisarua', 'Padalarang (Sp.3 Stasion) - Sp. Cisarua', 3205652000.00, '2.000', 120, 4, 0, 'Km.Bdg.19+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. RESTU IBU', '602.1/2723.Rehab.08/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 2543185414.32, 0.00, 0.00, 0.00, 662466585.68, -6.818608, 107.538567, 0, 'rb3', 'rehabilitasi', 'SUP KBB CIMAHI', -6.827386, 107.524139, 3);
INSERT INTO `pembangunan` VALUES (37, 'Rehabilitasi Jalan Pagaden - Subang', 'Pagaden - Subang', 3728980000.00, '1.700', 120, 4, 0, 'Km.Jkt.162', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. EKA RATU', '602.1/2723.Rehab.09/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 2983157837.45, 0.00, 0.00, 0.00, 745822162.55, -6.454417, 107.808899, 0, 'rb5', 'rehabilitasi', 'SUP KAB SUBANG 2', -6.457461, 107.812073, 3);
INSERT INTO `pembangunan` VALUES (38, '1 Paket Pekerjaan Peningkatan Jalan Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', 'Jl. Cagak - Bts. Subang/Sumedang (Cikaramas)', 10044876000.00, '2.500', 175, 6, 0, 'Km. Jkt. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Beton', 'PT. TAHTA DJAGA INTERNASIONAL', '602.1/2281.Ting.03/KTR/PjPK/PJ2WP.III/2019', '2019-07-04', 8035855219.19, 0.00, 0.00, 0.00, 2009020780.81, -6.678854, 107.691498, 0, 'pn4', 'peningkatan', 'SUP KAB SUBANG 1', -6.687009, 107.712433, 3);
INSERT INTO `pembangunan` VALUES (39, '1 Paket Pekerjaan Peningkatan Jalan Lembang - Bts. Kab. Bandung Kab. Subang', 'Lembang - Bts.Kab.Bandung/Kab. Subang', 9359746000.00, '2.000', 175, 6, 0, 'Km. Bdg. 2', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. BERKAH BUMI CIHERANG', '602.1/2281.Ting.05/KTR/PjPK/PJ2WP.III/2019', '2019-07-04', 7393181707.10, 0.00, 0.00, 0.00, 1966564292.90, -6.783556, 107.650742, 0, 'pn3', 'peningkatan', 'SUP KBB CIMAHI', -6.773948, 107.636192, 3);
INSERT INTO `pembangunan` VALUES (40, '1 Paket Pekerjaan Peningkatan Jalan Rajamandala - Cipeundeuy - Cikalongwetan', 'Rajamandala - Cipeundeuy - Cikalongwetan', 16067564000.00, '3.500', 165, 6, 0, 'Km. Bdg. 5', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix & Pelebaran beton', 'PT. PESTA KARYA', '602.1/2285.Ting.08/KTR/PjPK/PJ2WP.III/2019', '2019-07-09', 12854027827.30, 0.00, 0.00, 0.00, 3213536172.70, -6.734358, 107.386795, 0, 'pn3', 'peningkatan', 'SUP KBB CIMAHI', -6.735753, 107.415146, 3);
INSERT INTO `pembangunan` VALUES (41, 'Rehabilitasi Jalan Jl. Sukawangi (Bandung) - Jl. Cilamaya (Bandung) - Jl. Cimandiri (Bandung) - Jl. Depan Lan (Bandung) - Jl. Cilaki (Bandung) - Jl. Sentot Alibasyah (Bandung)', 'Jl. Sukawangi (Bandung)', 4416046000.00, '1,292', 120, 4, 1, 'Km. Bdg. 5', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. QUANTUM INTI UTAMA', '602.1/2723.Rehab.06/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 3428746145.57, 0.00, 0.00, 0.00, 987299854.43, -6.878315, 107.596275, 0, 'rb1', 'rehabilitasi', 'SUP KOTA BANDUNG', -6.878217, 107.597672, 3);
INSERT INTO `pembangunan` VALUES (42, 'Pembangunan Fly Over Jln Jakarta', 'Jl. Ahmad Yani (Sp. Laswi - Sp. Supratman) Kota Ba', 39000000000.00, '500', 120, 4, 0, 'STA. 0+000', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Konstruksi Fly over ', 'PT. AMBER HASYA', '602.1/3081.Ting.10/KTR/PJPK/PJ2WP.III/2019', '2019-08-26', 8281167726.48, 0.00, 0.00, 0.00, 30718832273.52, -6.914612, 107.636108, 0, 'pn1', 'peningkatan', 'SUP KOTA BANDUNG', -6.911746, 107.633202, 3);
INSERT INTO `pembangunan` VALUES (43, 'Pembangunan Fly Over Jln Laswi/Pelajar Pejuang 45 - Gatot Subroto', 'Jl. Laswi (Bandung)', 39000000000.00, '525', 120, 4, 0, 'STA. 0+000', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Konstruksi Fly over', 'PT. SARANA SEJA IBADAH', '602.1/3081.Ting.11/KTR/PJPK/PJ2WP.III/2019', '2019-08-26', 4222257852.93, 0.00, 0.00, 0.00, 34777742147.07, -6.922832, 107.629120, 0, 'pn1', 'peningkatan', 'SUP KOTA BANDUNG', -6.926719, 107.627213, 3);
INSERT INTO `pembangunan` VALUES (44, 'Rehabilitasi Jalan Sp. Purwakarta - Jatiluhur', 'Sp. Purwakarta - Jatiluhur', 2236110000.00, '1000', 120, 4, 0, 'Km.Jkt.118', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'CV. DIRA SAWARGI', '602.1/2723.Rehab.10/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 1744608894.99, 0.00, 0.00, 0.00, 491501105.01, -6.545010, 107.423813, 0, 'rb6', 'rehabilitasi', 'SUP KAB PURWAKARTA', -6.537840, 107.419441, 3);
INSERT INTO `pembangunan` VALUES (45, 'Rehabilitasi Jalan Wanayasa - Bts. Purwakarta/Subang', 'Wanayasa - Bts. Purwakarta/Subang', 2795138000.00, '1250', 120, 4, 0, 'Km.Jkt.140', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. TRI KARYA PUTERA', '602.1/2723.Rehab.11/KTR/PjPK/PJ2WP.III/2019', '2019-07-26', 2224362150.02, 0.00, 0.00, 0.00, 570775849.98, -6.678640, 107.582672, 0, 'rb6', 'rehabilitasi', 'SUP KAB PURWAKARTA', -6.670990, 107.590912, 3);
INSERT INTO `pembangunan` VALUES (46, 'Pekerjaan Drainase Ruas Jalan Bojongsoang - Sp. Munjul Km. Bdg. 10+650', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', 325200000.00, '784.65', 55, 2, 0, 'Km. Bdg. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pekerjaan Drainase Pasangan Batu', 'CV. CIPTA GEMA PERDANA', '602.1/2731.Rehab.12/KTR/PjPK/PJ2WP.III/2019', '2019-07-30', 243899702.56, 0.00, 0.00, 0.00, 81300297.44, 0.000000, 0.000000, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (47, 'Pekerjaan Drainase Ruas Jalan Nanjung - Patrol Km.Bdg. 18+750 (U-Ditch)', 'Nanjung - Patrol', 359830000.00, '340', 90, 3, 0, 'Km. Bdg. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pekerjaan Drainase Beton', 'CV. PRIMA PUTRA SARANA', '602.1/2734.Rehab.13/KTR/PjPK/PJ2WP.III/2019', '2019-08-09', 284401888.10, 0.00, 0.00, 0.00, 75428111.90, 0.000000, 0.000000, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (48, 'Perbaikan Badan Jalan Ruas Jalan Ahmad Yani Subang Km. Jkt. 152+050', 'Jl. Jend. A. Yani (Subang)', 2300000000.00, '30', 180, 6, 0, 'Km. Jkt. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Konstruksi Beton (TPT Beton)', 'CV. MAHAKARYA EIZET', '602.1/2249.Rehab.16/KTR/PjPK/PJ2WP.III/2019', '2019-06-26', 1814607817.21, 0.00, 0.00, 0.00, 485392182.79, 0.000000, 0.000000, 0, 'rb4', 'rehabilitasi', 'SUP KAB SUBANG 1', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (49, 'Rehabilitasi Jembatan Siliwangi Ruas Jalan Bojongsoang - Sp. Munjul Km. Bdg. 14+550', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', 1600000000.00, '4', 150, 5, 0, 'Km. Bdg. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Konstruksi Jembatan', 'CV. AREMCO', '602.1/2731.Rehab.17/KTR/PjPK/PJ2WP.III/2019', '2019-07-30', 1356000003.19, 0.00, 0.00, 0.00, 243999996.81, 0.000000, 0.000000, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (50, '1 Paket Pekerjaan Peningkatan Jalan Kesambi - Bts. Karawang/Purwakarta (Curug)', 'KOSAMBI - BTS. KARAWANG/PURWAKARTA (CURUG)', 4590732000.00, '1000', 180, 6, 0, 'Km. Jkt. 8', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. RAHAYU MEGA KREASI', '602.1/2259.Ting.04/KTR/PjPK/PJ2WP.III/2019', '2019-06-28', 3866092040.15, 0.00, 0.00, 0.00, 724639959.85, 0.000000, 0.000000, 0, 'pn6', 'peningkatan', 'SUP KAB PURWAKARTA', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (51, '1 Paket Pekerjaan Peningkatan Jalan Tanjungpura - Batujaya (Bts. Bekasi/Karawang)', 'Tanjungpura - Batujaya (Bts. Bekasi/Karawang)', 6014666900.00, '1000', 180, 6, 0, 'Km.Jkt.82+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Beton', 'PT. CITRA MUTIARA BANGUN PERSADA', '602.1/2259.Ting.09/KTR/PjPK/PJ2WP.III/2019', '2019-06-28', 4895968369.18, 0.00, 0.00, 0.00, 1118698530.82, -6.229401, 107.285316, 0, 'pn7', 'peningkatan', 'SUP KAB KARAWANG', -6.221756, 107.289787, 3);
INSERT INTO `pembangunan` VALUES (52, '1 Paket Pekerjaan Jembatan Bojong', 'Bojongsoang - Sp. Munjul (Jl. Siliwangi)', 1999994838.00, '8', 150, 5, 0, 'Km. Bdg. 2', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Konstruksi Jembatan', 'CV. RANGGAPERSADA', ' 602.1/2732.Ting.12/KTR/PjPK/PJ2WP.III/2019 ', '2019-07-30', 1697710180.27, 0.00, 0.00, 0.00, 302284657.73, 0.000000, 0.000000, 0, 'rb2', 'rehabilitasi', 'SUP KAB BANDUNG', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (53, '1 Paket Pekerjaan Peningkatan Jalan Bts. Karawang/Purwakarta (Curug) - Purwakarta', 'Bts. Karawang/Purwakarta (Curug) - Purwakarta', 7436986000.00, '1620', 175, 6, 1, 'Km. Jkt. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. WAHANA DAYA MANDIRI', '602.1/2281.Ting.01/KTR/PjPK/PJ2WP.III/2019', '2019-07-04', 6024066417.75, 0.00, 0.00, 0.00, 1412919582.25, -6.496610, 107.407356, 0, 'pn6', 'peningkatan', 'SUP KAB PURWAKARTA', -6.500832, 107.412918, 3);
INSERT INTO `pembangunan` VALUES (54, '1 Paket Pekerjaan Peningkatan Jalan Cipamokolan (Bts. Kota Bandung Jbt. Tol) - Sp. Manirancan - Jl. Lingkar Luar Majalaya', 'Cipamokolan (Bts. Kota Bandung/Jbt Tol) - Sp. Mani', 10607382786.00, '2640', 175, 6, 1, 'Km. Bdg. 2', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix & Beton', 'PT. GURKY PUTERA MANDIRI', '602.1/2281.Ting.02/KTR/PjPK/PJ2WP.III/2019', '2019-07-04', 8432458770.54, 0.00, 0.00, 0.00, 2174924015.46, -7.027603, 107.752731, 0, 'pn2', 'peningkatan', 'SUP KAB BANDUNG', -7.033664, 107.765907, 3);
INSERT INTO `pembangunan` VALUES (55, '1 Paket Pekerjaan Peningkatan Jalan Lembang - Maribaya', 'Lembang - Maribaya', 11476831000.00, '2500', 180, 6, 1, 'Km. Bdg. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix, Beton & Pelebaran Beton', 'PT. BENGKEL KONSTRUKSI MANDIRI', '602.1/2259.Ting.06/KTR/PjPK/PJ2WP.III/2019', '2019-06-28', 9249370361.15, 0.00, 0.00, 0.00, 2227460638.85, 0.000000, 0.000000, 0, 'pn3', 'peningkatan', 'SUP KBB CIMAHI', -6.816726, 107.627785, 3);
INSERT INTO `pembangunan` VALUES (56, '1 Paket Pekerjaan Peningkatan Jalan Pamanukan - Pagaden', 'Pamanukan - Pagaden', 11476831000.00, '2500', 175, 6, 1, 'Km. Jkt. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix', 'PT. TELAGA PASIR KUTA', '602.1/2281.Ting.07/KTR/PjPK/PJ2WP.III/2019', '2019-07-04', 9181416636.71, 0.00, 0.00, 0.00, 2295414363.29, -6.365622, 107.804733, 0, 'pn5', 'peningkatan', 'SUP KAB SUBANG 2', -6.373422, 107.800865, 3);
INSERT INTO `pembangunan` VALUES (57, 'Penataan Jalur Penyelamatan dan Perbaikan Alinyemen Ruas Jalan Subang - Bts. Kab. Bandung/Kab. Subang (Tahap 2)', 'Subang - Bts. Kab. Bandung / Kab. Subang', 18000000000.00, '1', 180, 6, 0, 'Km. Jkt. 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix & Beton (Jalur Penyelamat)', 'PT. KARYA RADITAMA PERKASA', '602.1/2249.Rehab.15/KTR/PjPK/PJ2WP.III/2019', '2019-06-26', 14412061497.77, 0.00, 0.00, 0.00, 3587938502.23, 0.000000, 0.000000, 0, 'rb4', 'rehabilitasi', 'SUP KAB SUBANG 1', 0.000000, 0.000000, 3);
INSERT INTO `pembangunan` VALUES (58, 'Rehabilitasi Jalan Sp. Talegong (Sukamulya) - Cisewu - Sukarame - Rancabuaya (Palembuhan) (2,50 Km)', 'SP.TALEGONG (SUKAMULYA) - CISEWU - SUKARAME - RANC', 4376248000.00, '2,50 KM', 120, 4, 1, 'KM.BDG 64+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pelapisan Ulang Perkerasan Jalan dengan Hotmix', ' PT. FAUZAN PUTRA PERKASA ', ' 622/48/KTR/PPK.REHAB/PJ2WP.IV/2019 ', '2019-07-18', 3450557698.15, 0.00, 0.00, 0.00, 925690301.85, -7.307101, 107.514832, 0, 'rb4', 'rehabilitasi', 'SUP GARUT 4', -7.310620, 107.512520, 4);
INSERT INTO `pembangunan` VALUES (59, 'Rehabilitasi Jalan Jalan Prabu Tajimalela (Sumedang) (1,70 Km)', 'JL. PRABU TAJI MALELA (SUMEDANG)', 4482109000.00, '1.70 KM', 120, 4, 1, 'KM.BDG 46+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pelapisan Ulang Perkerasan Jalan dengan Hotmix', ' PT. TUBAGUS RANGIN ', ' 622/23/KTR/PPK.REHAB/PJ2WP.IV/2019 ', '2019-07-10', 3585663234.70, 0.00, 0.00, 0.00, 896445765.30, -6.835421, 107.930420, 0, 'rb6', 'rehabilitasi', 'SUP SUMEDANG 2', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (60, 'Rehabilitasi Jalan Bratayuda dan Jalan Ciledug (Garut) (1,00 Km)', 'JL. BRATAYUDA (GARUT)', 2887576700.00, '1.00 KM', 120, 4, 1, 'KM.BDG 66+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pelapisan Ulang Perkerasan Jalan dengan Hotmix', ' PT. ERA TATA BUANA ', ' 622/20/KTR/PPK.REHAB/PJ2WP.IV/2019 ', '2019-07-10', 2343508965.95, 0.00, 0.00, 0.00, 544067734.05, -7.227606, 107.911217, 0, 'rb1', 'rehabilitasi', 'SUP GARUT 1', -7.232498, 107.906883, 4);
INSERT INTO `pembangunan` VALUES (61, 'Peningkatan Jalan Sumadra - Bungbulang (4,00 Km)', 'SUMADRA - BUNGBULANG', 16071802000.00, '4.00 KM', 160, 6, 1, 'KM.BDG 114', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'SEDANG DI LAKSANAKAN', 'Pelebaran Jalan dengan beton dan pelapisan ulang perkerasan jalan dengan hotmix', ' PT. FAUZAN PUTRA PERDANA ', ' 622/21/KTR/PPK.TING/PJ2WP.IV/2019 ', '2019-07-10', 12863260580.00, 0.00, 0.00, 0.00, 3208541420.00, -7.450365, 107.687393, 0, 'pn3', 'peningkatan', 'SUP GARUT 3', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (62, 'Peningkatan Jalan Sumedang - Bts. Sumedang/Subang (Cikaramas) (2,00 Km)', 'SUMEDANG - BTS. SUMEDANG/SUBANG (CIKARAMAS)', 8035901000.00, '2.00 KM', 150, 5, 1, 'KM.BDG 57+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'SEDANG DI LAKSANAKAN', 'Pelebaran Jalan dengan beton dan pelapisan ulang perkerasan jalan dengan hotmix', ' PT. EKA RATU ', ' 622/38/KTR/PPK.TING/PJ2WP.IV/2019 ', '2019-07-22', 6428720276.07, 0.00, 0.00, 0.00, 1607180723.93, -6.783186, 107.850876, 0, 'pn5', 'peningkatan', 'SUP SUMEDANG 1', -6.773655, 107.852371, 4);
INSERT INTO `pembangunan` VALUES (63, 'Peningkatan Jalan Situraja - Darmaraja (2,00 Km)', 'SITURAJA -DARMARAJA', 8608627000.00, '2.00 KM', 145, 5, 1, 'KM.BDG 62+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'SEDANG DI LAKSANAKAN', 'Pelebaran Jalan dengan beton, pelapisan ulang perkerasan jalan dengan hotmix dan perkerasan beton', ' PT.GURKY PUTERA MANDIRI ', ' 622/49/KTR/PPK.TING/PJ2WP.IV/2019 ', '2019-07-29', 6886901615.00, 0.00, 6886901615.00, 0.00, 1721725385.00, -6.866779, 108.034782, 0, 'pn6', 'peningkatan', 'SUP SUMEDANG 2', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (64, 'Peningkatan Jalan Cikajang - Pameungpeuk (1,40 Km)', 'CIKAJANG - PAMEUNGPEUK', 6381027000.00, '1.40 KM', 150, 5, 1, 'KM.BDG 121', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'SEDANG DI LAKSANAKAN', 'Pelebaran Jalan dengan beton, pelapisan ulang perkerasan jalan dengan hotmix dan penggantian jembatan dengan box culvert', ' PT. CAHAYA PUTRA INDAH ', ' 622/18/KTR/PPK.TING/PJ2WP.IV/2019 ', '2019-07-10', 5442028760.95, 0.00, 5442028760.95, 0.00, 938998239.05, -7.506401, 107.812782, 0, 'pn2', 'peningkatan', 'SUP GARUT 2', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (65, 'Rehabilitasi Jalan Jend. Sudirman (Garut) (1,00 Km)', 'JL. JEND. SUDIRMAN (GARUT)', 2488863000.00, '1.00 KM', 120, 4, 1, 'KM.BDG 61+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Pelapisan Ulang Perkerasan Jalan dengan Hotmix dan Penanganan Perkerasan Jalan Beton', ' CV. FERRY PRATAMA TUNGGAL ', ' 622/29/KTR/PPK.REHAB/PJ2WP.IV/2019 ', '2019-07-10', 1994612867.57, 0.00, 0.00, 0.00, 494250132.43, -7.194183, 107.907776, 0, 'rb1', 'rehabilitasi', 'SUP GARUT 1', -7.198358, 107.913116, 4);
INSERT INTO `pembangunan` VALUES (66, 'Rehabilitasi Jalan Wado (Sp. Kirisik) - Bts. Sumedang/Majalengka (Kirisik) (1,50 Km)', 'WADO(SP.KIRISIK)-BTS.SUMEDANG/MAJALENGKA(KIRISIK)', 2404239000.00, '1.50 KM', 120, 4, 1, 'KM.BDG 81+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'BELUM KONTRAK', '', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 2404239000.00, 0.000000, 0.000000, 0, 'rb6', 'rehabilitasi', 'SUP SUMEDANG 2', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (67, 'Rehabilitasi Jalan Garut - Cikajang (2,50 Km)', 'GARUT - CIKAJANG', 5483794000.00, '2,50 KM', 120, 4, 0, 'KM.BDG 75+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'BELUM KONTRAK', '', '', '', '1970-01-01', 0.00, 0.00, 0.00, 0.00, 5483794000.00, 0.000000, 0.000000, 0, 'rb2', 'rehabilitasi', 'SUP GARUT 2', 0.000000, 0.000000, 4);
INSERT INTO `pembangunan` VALUES (68, 'Perbaikan Badan Jalan Ruas Jalan Panaekan/Goler - Cimaragas - Bts. Kota Banjar Km.Bdg.Km.Bdg.135+550', 'Panaekan (goler) - Cimaragas-bts.banjar', 1192717000.00, '25 m', 150, 5, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Perbaikan Badan Jalan Dengan TPT Beton', 'CV.AZKA', '602.1/67/KTR/PPK.Rehab/PJ2WP V', '2019-07-16', 960254119.00, 0.00, 0.00, 0.00, 232462881.00, -7.369659, 108.444923, 0, 'rb3', 'rehabilitasi', 'SUP CIAMIS-BANJAR-PANGANDARAN', 0.000000, 0.000000, 5);
INSERT INTO `pembangunan` VALUES (69, 'Rehabilitasi Jalan Ruas Jalan Panaekan/Goler-Cimaragas-Bts. Kota Banjar(1 Km) Km.Bdg.140+285-Km.Bdg.141+285', 'Panaekan (goler) - Cimaragas-bts.banjar', 2625749036.00, '1 Km', 120, 4, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 1 Lapis', 'PT.PRIMAYASA ADIGUNA', '602.1/41/KTR/PPK.Rehab/PJ2WP V', '2019-07-10', 2084297850.00, 0.00, 0.00, 0.00, 541451186.00, -7.383280, 108.481850, 0, 'rb3', 'rehabilitasi', 'SUP CIAMIS-BANJAR-PANGANDARAN', -7.385730, 108.487617, 5);
INSERT INTO `pembangunan` VALUES (70, 'Rehabilitasi Jalan Ruas Jalan Pakembangan-Bojong (Jln. Linggarjati) (1,5 Km) Km.Bdg.23+150-Km.Bdg.24+650 ', 'Pakembangan - Bojong (Jl. Linggarjati)', 3290276001.00, '1,5 Km', 120, 4, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 1 Lapis', 'PT.BINA KARYAMUDA GUMELAR', '602.1/431/KTR/PPK.Rehab/PJ2WP V', '2019-07-08', 2632211310.00, 0.00, 0.00, 0.00, 658064691.00, -6.881175, 108.495102, 0, 'rb5', 'rehabilitasi', 'SUP KUNINGAN 2', -6.883845, 108.482040, 5);
INSERT INTO `pembangunan` VALUES (71, 'Rehabilitasi Jalan Ruas Jalan Mandirancan-Pakembangan (1,5 Km)Km.Cn.31+750-Km.Cn.32+150;Km.Cn.34+670-Km.Cn.35+770', 'Mandirancan - Pakembangan', 3290276000.00, '1,5 Km', 120, 4, 2, 'Km.Cn.34+6', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 2 (1,1 Km)', 'Hotmix 1 Lapis', 'PT.ABADI HARUMAN JAYA', ' 602.1/42/KTR/PPK.Rehab/PJ2WP V', '2019-07-10', 2766368221.00, 0.00, 0.00, 0.00, 523907779.00, -6.818029, 108.473976, 0, 'rb5', 'rehabilitasi', 'SUP KUNINGAN 2', -6.809216, 108.472145, 5);
INSERT INTO `pembangunan` VALUES (72, 'Rehabilitasi Jalan Ruas Jalan Mandirancan-Pakembangan (1,500 Km) Km.Cn.31+750-Km.Cn.32+150;Km.Cn.34+670-Km.Cn.35+770', 'Mandirancan - Pakembangan', 3290276000.00, '1 Km', 120, 2, 1, 'Km.Cn.31+7', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 1 (400 M)', 'Hotmix 1 Lapis', 'PT.ABADI HARUMAN JAYA', '602.1/42/KTR/PPK.Rehab/PJ2WP V', '2019-07-10', 2766368221.00, 0.00, 0.00, 0.00, 523907779.00, -6.841470, 108.485962, 0, 'rb5', 'rehabilitasi', 'SUP KUNINGAN 2', -6.838649, 108.485664, 5);
INSERT INTO `pembangunan` VALUES (73, 'Pekerjaan Rehabilitasi Jalan Ruas Jalan Bts.Garut/Tasikmalaya-Singaparna (2,00 Km) Km.Bdg.79+700-Km.Bdg.81+700', 'Bts.Garut/Tasikmalaya - Singaparna', 4387035000.00, '2 Km', 120, 4, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 1 Lapis', 'PT.ABADI HARUMAN JAYA', '602.1/40/KTR/PPK.Rehab/PJ2WP V', '2019-07-10', 2766368221.00, 0.00, 0.00, 0.00, 1620666779.00, -7.331057, 107.945892, 0, 'rb1', 'rehabilitasi', 'SUP TASIKMALAYA 1', -7.336760, 107.951508, 5);
INSERT INTO `pembangunan` VALUES (74, 'Peningkatan Jalan Ruas Jalan Warudoyong (Bts. Kab. Tasikmalaya/Ciamis - Sp3 Winduraja (Kawali) Km.Bdg.89+700-Km.Bdg.90+400;Km.Bdg.92+400-Km.Bdg.92+700', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Wind', 4304341279.00, '1 Km', 150, 5, 2, 'Km.Bdg.92+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 2', 'Hotmix 2 Lapis', 'PT.SERAYU PUTRA PERSADA', '602.1/52/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 3403424750.00, 0.00, 0.00, 0.00, 900916529.00, -7.125282, 108.240944, 0, 'pn3', 'peningkatan', 'SUP CIAMIS-BANJAR-PANGANDARAN', -7.124770, 108.243858, 5);
INSERT INTO `pembangunan` VALUES (75, 'Peningkatan Jalan Ruas Jalan Warudoyong (Bts. Kab. Tasikmalaya/Ciamis - Sp3 Winduraja (Kawali) Km.Bdg.89+700-Km.Bdg.90+400;Km.Bdg.92+400-Km.Bdg.92+700 ', 'Warudoyong(Bts.Kab.Tasikmalaya/Ciamis) - SP 3 Wind', 4304341279.00, '1 Km', 150, 5, 1, 'Km.Bdg.89+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 1', 'Hotmix 2 Lapis', 'PT.SERAYU PUTRA PERSADA', '602.1/52/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 3403424750.00, 0.00, 0.00, 0.00, 900916529.00, -7.125310, 108.217690, 0, 'pn3', 'peningkatan', 'SUP CIAMIS-BANJAR-PANGANDARAN', -7.125130, 108.223892, 5);
INSERT INTO `pembangunan` VALUES (76, 'Peningkatan Jalan Ruas Jalan Karangnunggal-Cipatujah Km.Bdg.158+600-Km.Bdg.159+600', 'Karangnunggal - Cipatujah', 4735072276.00, '1 Km', 150, 5, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 2 Lapis', 'PT.TIARA MULYA SEJAHTERA', '602.1/49/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 3582076452.00, 0.00, 0.00, 0.00, 1152995824.00, -7.623277, 108.105019, 0, 'pn2', 'peningkatan', 'SUP TASIKMALAYA 2', -7.624702, 108.105019, 5);
INSERT INTO `pembangunan` VALUES (77, 'Peningkatan Jalan Ruas Jalan Singaparna-Tasikmalaya(2,100 Km)', 'Singaparna - Tasikmalaya', 11763397831.00, '2,1 Km', 160, 6, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 2 Lapis', 'PT.PRAWASTA SUGIH JAYA', '602.1/39/KTR/PPK.Ting/PJ2WP V', '2019-07-08', 9255893252.00, 0.00, 0.00, 0.00, 2507504579.00, -7.336513, 108.153877, 0, 'pn1', 'peningkatan', 'SUP TASIKMALAYA 1', -7.334492, 108.142456, 5);
INSERT INTO `pembangunan` VALUES (78, 'Penggantian Jembatan Cialok Ruas Jalan Ciawigebang-jalaksana Km.cn 39+650', 'Ciawigebang - Jalaksana', 1518158200.00, '4 M', 160, 6, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Penggantian Jembatan', 'CV.GUNA MEKAR', '602.1/15.2-Pemb/KTR/PPK.Ting/PJ2WP V', '2019-07-03', 1228332864.00, 0.00, 0.00, 0.00, 289825336.00, -6.968400, 108.572250, 0, 'pn5', 'peningkatan', 'SUP KUNINGAN 2', 0.000000, 0.000000, 5);
INSERT INTO `pembangunan` VALUES (79, 'Pekerjaan Peningkatan Jalan Ruas Jalan Tasikmalaya-Karangnunggal Km.Bdg.113+150-Km.Bdg.114+150', 'Tasikmalaya - Karangnunggal', 4304341279.00, '1 Km', 150, 5, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 2 Lapis', 'PT.RIZKY CIPTA GUNA PERKASA', '602.1/51/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 4486903758.00, 0.00, 0.00, 0.00, -182562479.00, -7.384740, 108.206749, 0, 'pn2', 'peningkatan', 'SUP TASIKMALAYA 2', -7.392240, 108.209541, 5);
INSERT INTO `pembangunan` VALUES (80, ' Peningkatan Jalan Ruas Jalan Sp3 Pamoyanan-Suryalaya-Warudoyong(Bts. Kab. Tasikmalaya/Ciamis) Km.Bdg.86+975-Km.Bdg.87+975', 'SP 3 Pamoyanan-Suryalaya-Warudoyong (Bts.Kab.Tasik', 4304341083.00, '1 Km', 150, 5, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 2 Lapis', 'PT.TIARA MULYA SEJAHTERA', '602.1/50/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 3498290699.00, 0.00, 0.00, 0.00, 806050384.00, -7.120720, 108.204437, 0, 'pn3', 'peningkatan', 'SUP CIAMIS-BANJAR-PANGANDARAN', -7.118870, 108.198097, 5);
INSERT INTO `pembangunan` VALUES (81, 'Peningkatan Jalan Ruas Jalan Ciawigebang-Bts.Cirebon/Kuningan (Waled)', 'Ciawigebang - bts.Cirebon/kuningan', 4735072046.00, '1 Km', 150, 5, 0, 'Km.Cn.56+0', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Hotmix 2 Lapis', 'PT.TIARA MULYA SEJAHTERA', '602.1/48/KTR/PPK.Ting/PJ2WP V', '2019-07-10', 3774777420.00, 0.00, 0.00, 0.00, 960294626.00, -6.967290, 108.668999, 0, 'pn5', 'peningkatan', 'SUP KUNINGAN 2', -6.964440, 108.676437, 5);
INSERT INTO `pembangunan` VALUES (82, 'Perbaikan Badan Jalan Ruas Jalan Tasikmalaya - Karangnunggal - Cipatujah Km.Bdg.162+550', 'Karangnunggal - Cipatujah', 2000000000.00, '35 M', 160, 6, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'Perbaikan Badan Jalan Dengan TPT Beton', 'CV.MUARA RIZKY', '602.1/14/KTR/PPK.Rehab/PJ2WP V', '2019-07-03', 1599988580.00, 0.00, 0.00, 0.00, 400011420.00, -7.646712, 108.084335, 0, 'rb2', 'rehabilitasi', 'SUP TASIKMALAYA 2', 0.000000, 0.000000, 5);
INSERT INTO `pembangunan` VALUES (83, 'Perbaikan Badan Jalan Ruas Jalan Talaga - Bts. Majalengka/Sumedang (Krisik) Km.Cn 86+150, Km.Cn. 88+040 dan Km.Cn 92+980 (150 m)', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 3000000000.00, '150 Meter', 137, 4, 1, 'Km.Cn 86 +', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 1', 'Perbaikan Badan Jalan', 'PT. INDOTAMA ANUGRAH', '622/34.7/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 2389992000.00, 0.00, 0.00, 0.00, 610008000.00, -6.967360, 108.259331, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (84, 'Rehabilitasi Jalan Tegalgubug - Arjawinangun - Jagapura (Bts. Cirebon/Indramayu (Gopala)) 2,000 Km', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 4387035000.00, '2.00 Km', 120, 4, 2, 'Km.Cn. 34+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 2', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.1/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3700000000.00, 0.00, 0.00, 0.00, 687035000.00, -6.598661, 108.421822, 0, 'rb5', 'rehabilitasi', 'SUP CIREBON', -6.593796, 108.426872, 6);
INSERT INTO `pembangunan` VALUES (85, 'Rehabilitasi Jalan Tegalgubug - Arjawinangun - Jagapura (Bts. Cirebon/Indramayu (Gopala)) 2,000 Km', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 4387035000.00, '2.00 Km', 120, 4, 1, 'Km.Cn. 28+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 1', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.1/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3700000000.00, 0.00, 0.00, 0.00, 687035000.00, -6.644188, 108.410606, 0, 'rb5', 'rehabilitasi', 'SUP CIREBON', -6.635201, 108.412827, 6);
INSERT INTO `pembangunan` VALUES (86, 'Rehabilitasi Jembatan Cicurug Km.Cn. 48+400 Ruas Jalan Bts. Majalengka/Indramayu - Jatibarang (24,100 M)', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 3287596000.00, '24.100 Met', 155, 5, 0, 'Km.Cn. 48+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jembatan', 'Rehabilitasi Jembatan', 'PT. WINA', '632/24/KTR/PPK.REHAB/PJ2WPVI', '2019-07-17', 2630022993.05, 0.00, 2630022993.05, 0.00, 657573006.95, -6.497620, 108.297882, 0, 'rb1', 'rehabilitasi', 'SUP INDRAMAYU 1', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (87, 'Rehabilitasi Jembatan Kesambi Km.Cn. 4+200 Ruas Jalan Jl. Kesambi (Cirebon) (10,350 M)', 'Jl. Kesambi', 1411893000.00, '10.350 Met', 160, 5, 0, 'Km.Cn. 4+2', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jembatan', 'Rehabilitasi Jembatan', 'CV. INDO PUTERA JAYA', '632/14.2/KTR/PPK.REHAB/PJ2WPVI', '2019-07-05', 1143424800.29, 0.00, 1143424800.29, 0.00, 268468199.71, -6.739226, 108.548599, 0, 'rb5', 'rehabilitasi', 'SUP CIREBON', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (88, 'Rehabilitasi Jembatan Cilengkrang Km.Cn. 62+200 Ruas Jalan Majalengka - Talaga (38,00 M)', 'Majalengka - Talaga', 5183762000.00, '38 Meter', 160, 5, 0, 'Km.Cn. 62+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jembatan', 'Rehabilitasi Jembatan', 'PT. BUMI MANDALA WANGI', '632/14.3/KTR/PPK.REHAB/PJ2WPVI', '2019-07-05', 4100154399.66, 0.00, 4100154399.66, 0.00, 1083607600.34, -6.959218, 108.229050, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (89, 'Rehabilitasi Jalan Talaga - Bts. Majalengka/Sumedang (Kirisik) 4,000 Km', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 7592686000.00, '4.000 Km', 140, 4, 0, 'Km.Cn. 95+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jalan', 'Rehabilitasi Jalan', 'PT. WIJAYA PUTRA PARAHIYANGAN', '622/34.4/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 6061019852.09, 0.00, 6061019852.09, 0.00, 1531666147.91, -6.982919, 108.208359, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', -6.980154, 108.184471, 6);
INSERT INTO `pembangunan` VALUES (90, 'Rehabilitasi Jembatan Cihieum Km.Cn. 91+150 Ruas Jalan Talaga - Bts. Majalengka/Sumedang (Kirisik) (17,00 M)', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 2319051000.00, '17 Meter', 160, 5, 0, 'Km.Cn. 91+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jembatan', 'Rehabilitasi Jembatan', 'CV. PUTRA PARAHYANGAN', '632/14/KTR/PPK.REHAB/PJ2WPVI', '2019-07-05', 1855231291.71, 0.00, 1855231291.71, 0.00, 463819708.29, -6.959546, 108.228981, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (91, 'Rehabilitasi Jembatan Ciputis Km.Cn 65+500 Ruas Jalan Kadipaten (Pasar Balong) - Bts. Majalengka/Indramayu (5,00 M)', 'Kadipaten - Bts. Mjlk/Indramayu', 886696000.00, '5 Meter', 160, 5, 0, 'Km.Cn 65+5', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Rehabilitasi Jembatan', 'Rehabilitasi Jembatan', 'CV. TRIKARYA MANDIRI', '632/14.1/KTR/PPK.REHAB/PJ2WPVI', '2019-07-05', 730168081.42, 0.00, 730168081.42, 0.00, 156527918.58, -6.651800, 108.219116, 0, 'rb3', 'rehabilitasi', 'SUP MAJALENGKA 1', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (92, 'Rehabilitasi Jalan Cikamurang - Bantarwaru (Bts. Kab. Subang/Indramayu) 2,000 Km', 'CIKAMURANG - BANTARWARU', 3796343000.00, '2.000 Km', 120, 4, 1, 'Km.Cn. 107', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segment 1', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.10/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3095000000.00, 0.00, 0.00, 0.00, 701343000.00, -6.635974, 108.038864, 0, 'rb2', 'rehabilitasi', 'SUP INDRAMAYU 2', -6.635278, 108.037102, 6);
INSERT INTO `pembangunan` VALUES (93, 'Perbaikan Badan Jalan Ruas Jalan Talaga - Bts. Majalengka/Sumedang (Krisik) Km.Cn 86+150, Km.Cn. 88+040 dan Km.Cn 92+980 (150 m)', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 3000000000.00, '150 Meter', 137, 4, 2, 'Km.Cn. 88+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 2', 'Perbaikan Badan Jalan', 'PT. INDOTAMA ANUGRAH', '622/34.7/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 2389992000.00, 0.00, 0.00, 0.00, 610008000.00, -6.967310, 108.259270, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (94, 'Rehabilitasi Jalan Cikamurang - Bantarwaru (Bts. Kab. Subang/Indramayu) 2,000 Km', 'CIKAMURANG - BANTARWARU', 3796343000.00, '2.000 Km', 120, 3, 2, 'Km.Cn. 109', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segment 2', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.10/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3095000000.00, 0.00, 0.00, 0.00, 701343000.00, -6.614240, 107.995377, 0, 'rb2', 'rehabilitasi', 'SUP INDRAMAYU 2', -6.624501, 108.015671, 6);
INSERT INTO `pembangunan` VALUES (95, 'Perbaikan Badan Jalan Ruas Jalan Talaga - Bts. Majalengka/Sumedang (Krisik) Km.Cn 86+150, Km.Cn. 88+040 dan Km.Cn 92+980 (150 m)', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 3000000000.00, '150 Meter', 137, 4, 3, 'Km.Cn 92 +', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 3', 'Perbaikan Badan Jalan', 'PT. INDOTAMA ANUGRAH', '622/34.7/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 2389992000.00, 0.00, 0.00, 0.00, 610008000.00, -6.971500, 108.221733, 0, 'rb4', 'rehabilitasi', 'SUP MAJALENGKA 2', 0.000000, 0.000000, 6);
INSERT INTO `pembangunan` VALUES (96, 'Rehabilitasi Jalan Cikamurang - Bantarwaru (Bts. Kab. Subang/Indramayu) 2,000 Km', 'CIKAMURANG - BANTARWARU', 3796343000.00, '2.000 Km', 120, 4, 3, 'Km.Cn. 110', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segment 3', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.10/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3095000000.00, 0.00, 0.00, 0.00, 701343000.00, -6.622788, 108.012268, 0, 'rb2', 'rehabilitasi', 'SUP INDRAMAYU 2', -6.618521, 108.003754, 6);
INSERT INTO `pembangunan` VALUES (97, 'Rehabilitasi Jalan Cikamurang - Bantarwaru (Bts. Kab. Subang/Indramayu) 2,000 Km', 'CIKAMURANG - BANTARWARU', 3796343000.00, '2.000 Km', 120, 4, 4, ' Km.Cn. 11', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segment 4', 'Rehabilitasi Jalan', 'PT. BARA NUGRAHA', '622/34.10/KTR/PPK.REHAB/PJ2WPVI', '2019-07-31', 3095000000.00, 0.00, 0.00, 0.00, 701343000.00, 6.616212, 107.999214, 0, 'rb2', 'rehabilitasi', 'SUP INDRAMAYU 2', 6.614479, 107.995834, 6);
INSERT INTO `pembangunan` VALUES (98, 'Peningkatan Jalan Majalengka - Talaga 3,000 Km', 'Majalengka - Talaga', 10450386000.00, '3.000 Km', 150, 5, 1, 'Segmen 1', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 1', 'Peningkatan Jalan', 'PT. TAKSAKA MARINA NUSANTARA', '622/015.1/KTR/PPK.TING-DAK/PJ2WPVI', '2019-07-19', 8632818972.89, 0.00, 8632818972.89, 0.00, 1817567027.11, -6.875210, 108.299492, 0, 'pn4', 'peningkatan', 'SUP MAJALENGKA 2', -6.912112, 108.304276, 6);
INSERT INTO `pembangunan` VALUES (99, 'Peningkatan Jalan Majalengka - Talaga 3,000 Km', 'Majalengka - Talaga', 10450386000.00, '3.000 Km', 150, 5, 2, 'Km.Cn. 63+', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 'Segmen 2', 'Peningkatan Jalan', 'PT. TAKSAKA MARINA NUSANTARA', '622/015.1/KTR/PPK.TING-DAK/PJ2WPVI', '2019-07-19', 8632818972.89, 0.00, 0.00, 0.00, 1817567027.11, -6.900059, 108.304588, 0, 'pn4', 'peningkatan', 'SUP MAJALENGKA 2', -6.883000, 108.302132, 6);
INSERT INTO `pembangunan` VALUES (18, 'Paket pekerjaan Pembangunan Jembatan (overpass) Cibeureum di Lingkar Sukabumi Segmen 3', 'Jalan Lingkar Sukabumi', 40000000000.00, '45.00 M', 165, 0, 1, '92+850', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '', 'GIRDER', ' PT. MEGA SUKMA ', '', '2019-07-03', 33161956520.00, 0.00, 0.00, 0.00, 6838043480.00, -6.932513, 106.957863, 0, 'pb1', 'pembangunan', 'SPP SUKABUMI 1', 0.000000, 0.000000, 2);

-- ----------------------------
-- Table structure for progress_mingguan
-- ----------------------------
DROP TABLE IF EXISTS `progress_mingguan`;
CREATE TABLE `progress_mingguan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `nama_paket` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruas_jalan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat` float(10, 6) NOT NULL,
  `lng` float(10, 6) NOT NULL,
  `rencana` decimal(12, 4) NOT NULL,
  `realisasi` decimal(12, 4) NOT NULL,
  `deviasi` decimal(12, 4) NOT NULL,
  `waktu_kontrak` decimal(10, 2) NOT NULL,
  `terpakai` decimal(10, 2) NOT NULL,
  `nilai_kontrak` decimal(20, 2) NOT NULL,
  `bayar` decimal(20, 2) NOT NULL,
  `bayar1` decimal(20, 2) NOT NULL,
  `sisa` decimal(10, 2) NOT NULL,
  `prosentase` decimal(10, 2) NOT NULL,
  `foto` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `video` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penyedia_jasa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kegiatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uptd_id` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of progress_mingguan
-- ----------------------------
INSERT INTO `progress_mingguan` VALUES (4, '2019-08-15', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG. 58+770 - KM.BDG 64+870', -7.232266, 107.352188, 7.0090, 7.7250, 0.7160, 170.00, 40.00, 0.00, 0.00, 0.00, 130.00, 23.53, '20082019202152FotoPeningkatanJalanCikadu.jpg', '20082019202152VideoPeningkatanJalanCikadu', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', '', 0);
INSERT INTO `progress_mingguan` VALUES (5, '2019-08-15', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 - KM.JKT.82+100', -6.522874, 107.127434, 2.7400, 0.0000, -2.7400, 150.00, 28.00, 0.00, 0.00, 0.00, 122.00, 18.67, '20082019234840FotoRehabCileungsi.jpg', '20082019234840VideoRehabCileungsi', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (6, '2019-08-15', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750 ', -6.436457, 107.052986, 4.3670, 0.4740, -3.8930, 160.00, 28.00, 0.00, 0.00, 0.00, 132.00, 17.50, '20082019235428FotoRehabJembatanCikarang.jpg', '20082019235428VideoJembatanCikarang', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (7, '2019-08-15', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 96+900', -6.434874, 107.047050, 21.3300, 0.0000, -21.3300, 90.00, 28.00, 0.00, 0.00, 0.00, 62.00, 31.11, '20082019235844FotoPbjCileungsi96900.jpg', '20082019235844VideoPerbaikanBadanJalan96900.mp4', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (8, '2019-08-15', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM.BDG 73+762 - KM.BDG 73+885', -6.659006, 107.187561, 3.5700, 0.1400, -3.4300, 120.00, 28.00, 0.00, 0.00, 0.00, 92.00, 23.33, '21082019000317FotoPBJSelajambe.jpg', '21082019000317VideoPBJSelajambe', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', '', 0);
INSERT INTO `progress_mingguan` VALUES (9, '2019-08-15', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 39+869 s.d KM.JKT. 43+200', -6.487520, 107.110527, 0.6520, 0.8210, 0.1690, 170.00, 33.00, 0.00, 0.00, 0.00, 137.00, 19.41, '21082019005514FotoPenignkatanCileungsi.jpg', '21082019005514VideoPeningkatanCileungsi.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (16, '2019-08-15', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC/AC-BC dan Pelebaran menggunakan', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'km.Jkt 57+873 s.d.  km.Jkt. 64+503', -6.409300, 107.004204, 6.0770, 3.1020, -2.9750, 170.00, 33.00, 0.00, 0.00, 0.00, 137.00, 19.41, '29082019102521', '29082019102521', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (19, '2019-08-25', 'Paket peningkatan jalan cikadu - kebon muncang - bts bdg/cjr. (DAK) 6.1km', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 84+904 ', -7.232266, 107.352188, 13.4800, 14.4400, 0.9600, 170.00, 53.00, 0.00, 0.00, 0.00, 117.00, 31.18, '290820191049311fotocikadu25Ags.jpg', '290820191049311videocikadu25Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', '', 0);
INSERT INTO `progress_mingguan` VALUES (20, '2019-08-25', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 s.d KM.JKT. 90+500', -6.522874, 107.127434, 5.2400, 0.8400, -4.4000, 150.00, 41.00, 0.00, 0.00, 0.00, 109.00, 27.33, '290820191055452afotocileungsi25Ags.jpg', '290820191055452avideocileungsi25Ags.mp4', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (23, '2019-08-25', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750', -6.436457, 107.052986, 9.7900, 0.4700, -9.3200, 160.00, 41.00, 0.00, 0.00, 0.00, 119.00, 25.63, '290820191113503fotoJembCikarang25Ags.jpg', '290820191113503videoJembCikarang25Ags.mp4', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (26, '2019-08-25', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM. BDG. 78+500 + KM. BDG. 79+546', -6.659006, 107.187561, 8.1000, 0.1400, -7.9600, 120.00, 41.00, 0.00, 0.00, 0.00, 79.00, 34.17, '290820191134055fotoPBJSelajambe25Ags.jpg', '290820191134055videoPBJSelajambe25Ags.mp4', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', '', 0);
INSERT INTO `progress_mingguan` VALUES (27, '2019-08-25', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Perkerasan Beton Semen', '', 'CILEUNGSI - CIBEET', 'KM.JKT. 75+700 s.d KM.JKT. 77+700', -6.487520, 107.110527, 7.5700, 1.2100, -6.3600, 150.00, 30.00, 0.00, 0.00, 0.00, 120.00, 20.00, '290820191140022fotoCileungsi25Agsting.jpg', '290820191140022videoCileungsi25Agsting.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', '', '', 0);
INSERT INTO `progress_mingguan` VALUES (28, '2019-08-25', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 57+873 s.d KM.JKT. 66+373', -6.409300, 107.004204, 10.0200, 5.8200, -4.2000, 170.00, 48.00, 0.00, 0.00, 0.00, 122.00, 28.24, '290820191148333fotoPedestrian25Ags.jpg', '290820191148333fotoPedestrian25Ags.jpg', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (37, '2019-08-25', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM. JKT 96+900', -6.640184, 107.168022, 22.9300, 20.7900, -2.1400, 90.00, 41.00, 0.00, 0.00, 0.00, 49.00, 45.56, '30082019101433', '30082019101433', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (40, '2019-08-25', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM. JKT 39+869 - KM. JKT KM. JKT 44+869', -6.404000, 106.838402, 1.2460, 0.8900, -0.3560, 170.00, 46.00, 0.00, 0.00, 0.00, 124.00, 27.06, '300820191026001fotoSpTole25Ags.jpg', 'sptole.mp4', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', '', 0);
INSERT INTO `progress_mingguan` VALUES (42, '2019-08-15', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM. JKT 39+869 - KM. JKT KM. JKT 44+869', -6.404000, 106.838402, 0.6520, 0.8210, 0.1690, 170.00, 33.00, 0.00, 0.00, 0.00, 137.00, 19.41, '30082019103801', '', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', '', 0);
INSERT INTO `progress_mingguan` VALUES (43, '2019-08-31', 'Peningkatan Jalan Sp. Tole Iskandar - Pondok Rajeg (Bts. Depok/Bogor) (5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR I', 'SP. JALAN TOLE ISKANDAR - PONDOK RAJEG (BTS. DEPOK/BOGOR)', 'KM.JKT. 39+869 s.d KM.JKT. 44+869', -6.404000, 106.838402, 2.3400, 0.2200, -2.1200, 170.00, 52.00, 0.00, 0.00, 0.00, 118.00, 30.59, '030920190041291FotoTingSpTole31Ags.jpg', '030920190041291VideoTingSpTole31Ags.mp4', 'PT. MUTIARA INDAH PURNAMA', 'peningkatan', 'pr3', '', 0);
INSERT INTO `progress_mingguan` VALUES (44, '2019-08-31', 'Peningkatan Jalan Cileungsi - Cibeet (2 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Perkerasan Beton Semen', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 75+700 s.d KM.JKT. 77+700', -6.487520, 107.110527, 9.6700, 10.2800, 0.6100, 150.00, 36.00, 0.00, 0.00, 0.00, 114.00, 24.00, '030920190045112FotoTingCileungsi31Ags.jpg', '030920190045112VideoTingCIleungsi31Ags.mp4', 'PT. BEKASI RAYA PUTRA', 'peningkatan', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (45, '2019-08-31', 'Pelebaran dan Pembuatan Pedestrian Jalan Ruas Jalan Cileungsi - Cibeet (7,5 Km)', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC dan Pelebaran menggunakan Beton Fc.20 dilapisi aspal  Lapis AC-WC / AC-BC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 57+873 s.d KM.JKT. 66+373', -6.409300, 107.004204, 12.6200, 8.5900, -4.0300, 170.00, 54.00, 0.00, 0.00, 0.00, 116.00, 31.76, '030920190052003FotoPedestrian31Ags.jpg', '03092019005200', 'PT. PRIMA MIXINDO UTAMA', 'peningkatan', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (46, '2019-08-31', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 90+500', -6.522874, 107.127434, 6.2160, 2.0160, -4.2000, 150.00, 47.00, 0.00, 0.00, 0.00, 103.00, 31.33, '030920190058221FotoTingCikadu31Ags.jpg', '030920190058221VideoTingCikadu31Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', '', 0);
INSERT INTO `progress_mingguan` VALUES (47, '2019-08-31', 'Rehabilitasi Jalan Cileungsi - Cibeet (3 Km)', 'Pelapisan Ulang 1 Lapis AC-WC ', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 81+200 s.d KM.JKT. 90+500', -6.522874, 107.127434, 6.2160, 2.0160, -4.2000, 150.00, 47.00, 0.00, 0.00, 0.00, 103.00, 31.33, '030920190103112FotoRehabCileungsi31Ags.jpg', '030920190103112VideoRehabCileungsi31Ags.mp4', 'PT. CAHAYA RAMA PRATAMA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (48, '2019-08-31', 'Peningkatan Jalan Cikadu - Kebon Muncang - Bts. Kab. Bandung/Cianjur (6,1 Km) - DAK', 'Pelapisan Ulang 2 Lapis AC-WC / AC-BC ', 'SPP CIANJUR II', 'BTS. BDG/ CJR - KEBON MUNCANG - CIKADU', 'KM.BDG 58+770 - KM.BDG 84+904 ', -7.232266, 107.352188, 17.5260, 17.5880, 0.0620, 170.00, 59.00, 0.00, 0.00, 0.00, 111.00, 34.71, '030920190107081FotoTingCikadu31Ags.jpg', '030920190107081VideoTingCikadu31Ags.mp4', 'PT. SINAR MUTIARA', 'peningkatan', 'pr2', '', 0);
INSERT INTO `progress_mingguan` VALUES (49, '2019-08-31', 'Rehabilitasi Jembatan Cikarang Ruas Jalan Cileungsi - Cibeet', 'Pelebaran Jembatan menggunakan unit Pracetak Gelagar Type I', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 64+750', -6.436457, 107.052986, 11.6900, 0.4700, -11.2200, 160.00, 47.00, 0.00, 0.00, 0.00, 113.00, 29.38, '030920190110243FotoJembCikarang31Ags.jpg', '030920190110243VideJembCikarang31Ags.mp4', 'PT. RESTU IBU', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (50, '2019-08-31', 'Perbaikan Badan Jalan Cileungsi - Cibeet Km.Jkt. 96+900', 'TPT Beton Fc.30, Baja Tulangan U 24 Polos dan Tiang Bor Beton Dia. 80 cm', 'SPP BOGOR II', 'CILEUNGSI - CIBEET', 'KM.JKT. 96+900', -6.640184, 107.168022, 23.9220, 24.9470, 1.0250, 90.00, 47.00, 0.00, 0.00, 0.00, 43.00, 52.22, '030920190113094FotoPBJ9690031Ags.jpg', '030920190113094VideoPBJ9690031Ags.mp4', 'CV. PUTERA ZIA', 'rehabilitasi', 'pr4', '', 0);
INSERT INTO `progress_mingguan` VALUES (51, '2019-08-31', 'Perbaikan Badan Jalan Selajambe - Cibogo - Cibeet Km.Bdg. 78+500; Km.Bdg. 79+000 dan Km.Bdg. 79+500', 'TPT Beton dan Pelapisan Ulang 1 Lapis AC-WC ', 'SPP CIANJUR I', 'SELAJAMBE - CIBOGO - CIBEET (LEWAT JALAN BARU)', 'KM.BDG 78+500 - KM.BDG 79+546', -6.659006, 107.187561, 13.8400, 13.7500, -0.0900, 120.00, 47.00, 0.00, 0.00, 0.00, 73.00, 39.17, '030920190116255FotoPBJSelajambe31Ags.jpg', '030920190116255VideoPBJSelajambe31Ags.mp4', 'CV. TATA KREATIPA', 'rehabilitasi', 'pr1', '', 0);

-- ----------------------------
-- Table structure for rekap
-- ----------------------------
DROP TABLE IF EXISTS `rekap`;
CREATE TABLE `rekap`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_pekerjaan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ruas_jalan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `volume` double(10, 2) NOT NULL,
  `foto_awal` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_sedang` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto_akhir` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lat` float(10, 6) NOT NULL,
  `lng` float(10, 6) NOT NULL,
  `video` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bulan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `satuan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uptd_id` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rekap
-- ----------------------------

-- ----------------------------
-- Table structure for ruas_jalan
-- ----------------------------
DROP TABLE IF EXISTS `ruas_jalan`;
CREATE TABLE `ruas_jalan`  (
  `id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ruas` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sup` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `panjang` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ruas_jalan
-- ----------------------------
INSERT INTO `ruas_jalan` VALUES ('266', 'CIKAMURANG - BANTARWARU', 'SUP INDRAMAYU II', 'Kab.Indramayu', 30600.00);
INSERT INTO `ruas_jalan` VALUES ('267', 'JANGGA - CIKAMURANG', 'SUP INDRAMAYU II', 'Kab.Indramayu', 34980.00);
INSERT INTO `ruas_jalan` VALUES ('275', 'BTS.SUMEDANG/INDRAMAYU - CIKAMURANG', 'SUP INDRAMAYU II', 'Kab.Indramayu', 610.00);
INSERT INTO `ruas_jalan` VALUES ('286', 'Talaga - Bts. Majalengka/Sumedang (Kirisik)', 'SUP MAJALENGKA II', 'Kab. Majalengka', 24.06);
INSERT INTO `ruas_jalan` VALUES ('286 11 K', 'Jl. Jend. Sudirman (Talaga)', 'SUP MAJALENGKA II', 'Kab. Majalengka', 0.69);
INSERT INTO `ruas_jalan` VALUES ('287', 'Majalengka - Talaga', 'SUP MAJALENGKA II', 'Kab. Majalengka', 23.31);
INSERT INTO `ruas_jalan` VALUES ('287 11 K', 'Jl. KH. Abdul Halim (Majalengka)', 'SUP MAJALENGKA I', 'Kab. Majalengka', 0.70);
INSERT INTO `ruas_jalan` VALUES ('287 12 K', 'Jl. Jend. A. Yani (Talaga)', 'SUP MAJALENGKA II', 'Kab. Majalengka', 0.91);
INSERT INTO `ruas_jalan` VALUES ('288', 'Talaga - Cikijing', 'SUP MAJALENGKA II', 'Kab. Majalengka', 5.77);
INSERT INTO `ruas_jalan` VALUES ('288 11 K', 'Jl. Cipeucang (Talaga)', 'SUP MAJALENGKA II', 'Kab. Majalengka', 0.55);
INSERT INTO `ruas_jalan` VALUES ('288 12 K', 'Jl. Kasturi (Cikijing)', 'SUP MAJALENGKA II', 'Kab. Majalengka', 1490.00);
INSERT INTO `ruas_jalan` VALUES ('289', 'Majalengka - Kadipaten', 'SUP MAJALENGKA I', 'Kab. Majalengka', 6.46);
INSERT INTO `ruas_jalan` VALUES ('289 11 K', 'Jl. KH. Abdul Halim (Majalengka)', 'SUP MAJALENGKA I', 'Kab. Majalengka', 5060.00);
INSERT INTO `ruas_jalan` VALUES ('289 12 K', 'Jl. Raya Majalengka (Kadipaten)', 'SUP MAJALENGKA I', 'Kab. Majalengka', 1430.00);
INSERT INTO `ruas_jalan` VALUES ('290', 'Kadipaten - Bts. Mjlk/Indramayu', 'SUP MAJALENGKA I', 'Kab. Majalengka', 22750.00);
INSERT INTO `ruas_jalan` VALUES ('290 11 K', 'Jl. Pasar Balong', 'SUP MAJALENGKA I', 'Kab. Majalengka', 0.32);
INSERT INTO `ruas_jalan` VALUES ('291', 'BTS.MAJALENGKA/INDRAMAYU - JATIBARANG', 'SUP INDRAMAYU I', 'Kab.Indramayu', 17610.00);
INSERT INTO `ruas_jalan` VALUES ('292', 'PEKANDANGAN - JATIBARANG', 'SUP INDRAMAYU I', 'Kab.Indramayu', 11720.00);
INSERT INTO `ruas_jalan` VALUES ('292 11 K', 'JL.JEND.A.YANI (JATIBARANG)', 'SUP INDRAMAYU I', 'KAB.INDRAMAYU', 230.00);
INSERT INTO `ruas_jalan` VALUES ('292 12 K', 'JL.Mayor Dasuki (Jatibarang)', 'SUP INDRAMAYU I', 'Kab.Indramayu', 1880.00);
INSERT INTO `ruas_jalan` VALUES ('292 13 K', 'JL.IR.SUTAMI', 'SUP INDRAMAYU I', 'Kab.Indramayu', 2100.00);
INSERT INTO `ruas_jalan` VALUES ('293', 'JL.LETNAN JONI (JATIBARANG)', 'SUP INDRAMAYU I', 'Kab.Indramayu', 1750.00);
INSERT INTO `ruas_jalan` VALUES ('294', 'KARANGAMPEL - JATIBARANG', 'SUP INDRAMAYU I', 'Kab.Indramayu', 17400.00);
INSERT INTO `ruas_jalan` VALUES ('294 11 K', 'JL.SILIWANGI (JATIBARANG)', 'SUP INDRAMAYU I', 'Kab.Indramayu', 430.00);
INSERT INTO `ruas_jalan` VALUES ('295', 'Sumber - Bts. Mjlk/Cirebon', 'SUP CIREBON', 'Kab. Cirebon', 6880.00);
INSERT INTO `ruas_jalan` VALUES ('295 11 K', 'Jl. Nyi Ageng Serang (Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 0.20);
INSERT INTO `ruas_jalan` VALUES ('295 12 K', 'Jl. Dewi Sartika (Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 3500.00);
INSERT INTO `ruas_jalan` VALUES ('296', 'Bts. Mjlk/Cirebon - Cigasong', 'SUP MAJALENGKA I', 'Kab. Majalengka', 19530.00);
INSERT INTO `ruas_jalan` VALUES ('297', 'Weru - Sumber/Jl.Fatahillah (Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 6350.00);
INSERT INTO `ruas_jalan` VALUES ('298', 'Sumber - Mandirancan (Jl. P. Kejaksan, Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 4570.00);
INSERT INTO `ruas_jalan` VALUES ('300', 'Leuwimunding - Rajagaluh', 'SUP MAJALENGKA I', 'Kab. Majalengka', 6300.00);
INSERT INTO `ruas_jalan` VALUES ('301', 'Parapatan - Leuwimunding', 'SUP MAJALENGKA I', 'Kab. Majalengka', 5000.00);
INSERT INTO `ruas_jalan` VALUES ('302', 'Parapatan - Budur', 'SUP MAJALENGKA I', 'Kab. Majalengka', 1500.00);
INSERT INTO `ruas_jalan` VALUES ('303', 'Budur - Susukan - Tegalgubug', 'SUP CIREBON', 'Kab. Cirebon', 7600.00);
INSERT INTO `ruas_jalan` VALUES ('304', 'MUNDU - GOPALA', 'SUP INDRAMAYU I', 'Kab.Indramayu', 6100.00);
INSERT INTO `ruas_jalan` VALUES ('305', 'Tegalgubug - Arjawinangun - Jagapura (Bts.Crb/Idm)', 'SUP CIREBON', 'Kab. Cirebon', 16940.00);
INSERT INTO `ruas_jalan` VALUES ('306 K', 'Jl. Nyi Mas Gandasari', 'SUP CIREBON', 'Kota Cirebon', 1035.00);
INSERT INTO `ruas_jalan` VALUES ('307 11 K', 'Jl. Ariodinoto', 'SUP CIREBON', 'Kota Cirebon', 0.20);
INSERT INTO `ruas_jalan` VALUES ('307 12 K', 'Jl. Kasepuhan', 'SUP CIREBON', 'Kota Cirebon', 0.20);
INSERT INTO `ruas_jalan` VALUES ('307 13 K', 'Jl. Pulasaren', 'SUP CIREBON', 'Kota Cirebon', 0.73);
INSERT INTO `ruas_jalan` VALUES ('307 14 K', 'Jl. Lawanggada', 'SUP CIREBON', 'Kota Cirebon', 2240.00);
INSERT INTO `ruas_jalan` VALUES ('307 K', 'Jl. Kesambi', 'SUP CIREBON', 'Kota Cirebon', 2240.00);
INSERT INTO `ruas_jalan` VALUES ('310', 'Bts. Crb/Kuningan (Waled) - Ciledug', 'SUP CIREBON', 'Kab. Cirebon', 3360.00);
INSERT INTO `ruas_jalan` VALUES ('310 11 K', 'Jl. Siliwangi (Ciledug)', 'SUP CIREBON', 'Kab. Cirebon', 3300.00);
INSERT INTO `ruas_jalan` VALUES ('310 12 K', 'Jl. Merdeka Barat (Ciledug)', 'SUP CIREBON', 'Kab. Cirebon', 0.94);
INSERT INTO `ruas_jalan` VALUES ('310 13 K', 'Jl. Merdeka Timur (Ciledug)', 'SUP CIREBON', 'Kab. Cirebon', 0.96);
INSERT INTO `ruas_jalan` VALUES ('311', 'Jl. Ciledug - Losari', 'SUP CIREBON', 'Kab. Cirebon', 10970.00);
INSERT INTO `ruas_jalan` VALUES ('312', 'Ciledug - Bts. Jateng (Bantarsari)', 'SUP CIREBON', 'Kab. Cirebon', 1210.00);
INSERT INTO `ruas_jalan` VALUES ('388 K', 'Jl. Kalitanjung', 'SUP CIREBON', 'Kab. Cirebon', 1930.00);
INSERT INTO `ruas_jalan` VALUES ('389 K', 'Jl. Pangeran Cakrabuana (Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 4530.00);
INSERT INTO `ruas_jalan` VALUES ('390', 'Jl. Sultan Agung (Sumber)', 'SUP CIREBON', 'Kab. Cirebon', 1060.00);
INSERT INTO `ruas_jalan` VALUES ('394', 'PATROL - HAURGEULIS - BANTARWARU', 'SUP INDRAMAYU II', 'Kab.Indramayu', 32080.00);

-- ----------------------------
-- Table structure for tbl_uptd_trx_master_kondisi_jalan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_uptd_trx_master_kondisi_jalan`;
CREATE TABLE `tbl_uptd_trx_master_kondisi_jalan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruas_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kota` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `km_asal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `panjang_km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dari_km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sampai_km` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lebar_rata_rata` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_permukaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `akhir_latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `akhir_longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kondisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sb_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sb_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sba_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sba_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sbak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sbak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `b_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ba_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ba_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sd_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sd_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sda_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sda_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sdak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sdak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jlk_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jlk_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ja_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ja_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parah_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parah_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pa_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pa_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sp_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sp_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spa_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spa_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hancur_lokasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hancur_panjang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ha_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ha_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hak_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hak_long` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal` date NOT NULL,
  `foto_dokumentasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uptd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_uptd_trx_master_kondisi_jalan
-- ----------------------------
INSERT INTO `tbl_uptd_trx_master_kondisi_jalan` VALUES (1, 'JL. JEND. A. YANI (JATIBARANG)', 'INDRAMAYU', 'Cn', '-0.230', '50.193', '49.963', '14.40', 'HOTMIX', '-6.330793', '108.326162', '-6.363998', '108.325401', 'Mantap', ' - ', '0.000', '', '', '', '', '50.193 - 49.963', '-0.230', '-0.230', '108.324328', '-6.364574', '108.325529', ' - ', '', '', '', '', '', ' - ', '', '', '', '', '', ' - ', '', '', '', '', '', ' - ', '', '', '', '', '', ' - ', '', '', '', '', '', '2020-09-21', '210920200413562.png', '', '4', '2020-10-02 07:11:09', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_bidang
-- ----------------------------
DROP TABLE IF EXISTS `user_bidang`;
CREATE TABLE `user_bidang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_delete` int(11) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_bidang
-- ----------------------------
INSERT INTO `user_bidang` VALUES (1, '001', 'JASA KONSTRUKSI', '', 1, 0, '2019-01-16 14:59:49', '2019-01-17 14:47:37', 1, 1);
INSERT INTO `user_bidang` VALUES (2, '002', 'PENGATURAN JASA KONSTRUKSI', '', 1, 0, '2019-01-16 15:13:28', '2019-01-17 14:47:25', 1, 1);
INSERT INTO `user_bidang` VALUES (3, '003', 'PENGAWASAN DATA DAN INFORMASI', '', 1, 0, '2019-01-17 14:47:12', '2019-01-17 14:47:12', 1, 1);
INSERT INTO `user_bidang` VALUES (4, '004', 'PEMBERDAYAAN JASA KONSTRUKSI', '', 1, 0, '2019-01-17 14:48:29', '2019-01-17 14:50:02', 1, 1);
INSERT INTO `user_bidang` VALUES (5, '005', 'TEKNIK JALAN', '', 1, 0, '2019-01-17 14:48:48', '2019-01-17 14:50:15', 1, 1);
INSERT INTO `user_bidang` VALUES (6, '006', 'REKAYASA TEKNIK', '', 1, 0, '2019-01-17 14:49:05', '2019-01-17 14:50:25', 1, 1);
INSERT INTO `user_bidang` VALUES (7, '007', 'SISTEM JARINGAN DAN LEGER JALAN', '', 1, 0, '2019-01-17 14:49:26', '2019-01-17 14:50:34', 1, 1);
INSERT INTO `user_bidang` VALUES (8, '008', 'REGULASI DAN KERJASAMA', '', 1, 0, '2019-01-17 14:49:49', '2019-01-17 14:49:49', 1, 1);
INSERT INTO `user_bidang` VALUES (9, '009', 'PEMELIHARAAN DAN PEMBANGUNAN JALAN', '', 1, 0, '2019-01-17 14:51:07', '2019-01-17 14:51:07', 1, 1);
INSERT INTO `user_bidang` VALUES (10, '010', 'PEMELIHARAAN', '', 1, 0, '2019-01-17 14:51:23', '2019-01-17 14:51:23', 1, 1);
INSERT INTO `user_bidang` VALUES (11, '011', 'PEMBANGUNAN', '', 1, 0, '2019-01-17 14:51:57', '2019-01-17 14:51:57', 1, 1);
INSERT INTO `user_bidang` VALUES (12, '012', 'PENGAWASAN DAN PEMANFAATAN', '', 1, 0, '2019-01-17 14:52:19', '2019-01-17 14:52:19', 1, 1);
INSERT INTO `user_bidang` VALUES (13, '013', 'BIDANG PENATAAN RUANG', '', 1, 0, '2019-01-17 14:52:41', '2019-01-17 14:52:41', 1, 1);
INSERT INTO `user_bidang` VALUES (14, '014', 'PERENCANAAN TATA RUANG', '', 1, 0, '2019-01-17 14:53:00', '2019-01-17 14:53:00', 1, 1);
INSERT INTO `user_bidang` VALUES (15, '015', 'PEMANFAATAN RUANG', '', 1, 0, '2019-01-17 14:53:17', '2019-02-20 20:05:09', 1, 1);
INSERT INTO `user_bidang` VALUES (16, '016', 'PENGENDALIAN DAN PEMANFAATAN RUANG', '', 1, 0, '2019-01-17 14:53:36', '2019-01-17 14:53:36', 1, 1);
INSERT INTO `user_bidang` VALUES (17, '017', 'SEKRETARIATAN', '', 1, 0, '2019-01-17 14:53:48', '2019-01-17 14:53:48', 1, 1);
INSERT INTO `user_bidang` VALUES (18, '018', 'SUB BADAN KEUANGAN DAN ASET', '', 1, 0, '2019-01-17 14:54:10', '2019-01-17 14:54:10', 1, 1);
INSERT INTO `user_bidang` VALUES (19, '019', 'SUB BADAN PERENCANAAN DAN PELAPORAN', '', 1, 0, '2019-01-17 14:54:40', '2019-01-17 14:54:40', 1, 1);
INSERT INTO `user_bidang` VALUES (20, '020', 'SUB BADAN KEPAWAIAN DAN UMUM', '', 1, 0, '2019-01-17 14:54:59', '2019-01-17 14:54:59', 1, 1);
INSERT INTO `user_bidang` VALUES (88, '021', 'UPTD 1', NULL, 1, 0, '2020-09-25 06:59:30', '2020-09-25 06:59:40', NULL, NULL);
INSERT INTO `user_bidang` VALUES (89, '022', 'UPTD 2', NULL, 1, 0, '2020-09-25 06:59:32', '2020-09-25 06:59:40', NULL, NULL);
INSERT INTO `user_bidang` VALUES (90, '023', 'UPTD 3', NULL, 1, 0, '2020-09-25 06:59:34', '2020-09-25 06:59:39', NULL, NULL);
INSERT INTO `user_bidang` VALUES (91, '024', 'UPTD 4', NULL, 1, 0, '2020-09-25 06:59:35', '2020-09-25 06:59:38', NULL, NULL);
INSERT INTO `user_bidang` VALUES (92, '025', 'UPTD 5', NULL, 1, 0, '2020-09-25 06:59:35', '2020-09-25 06:59:37', NULL, NULL);
INSERT INTO `user_bidang` VALUES (93, '026', 'UPTD LAB', NULL, 1, 0, '2020-09-25 06:59:36', '2020-09-25 06:59:37', NULL, NULL);

-- ----------------------------
-- Table structure for user_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `user_pegawai`;
CREATE TABLE `user_pegawai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pegawai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgl_lahir` date NULL DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0=Perempuan, 1=Laki-Laki',
  `no_tlp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `bidang_id` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bidang_id`(`bidang_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `user_pegawai_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_pegawai_ibfk_2` FOREIGN KEY (`bidang_id`) REFERENCES `user_bidang` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1375 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_pegawai
-- ----------------------------
INSERT INTO `user_pegawai` VALUES (1, '1111112', 'Administrator', '1990-05-11', 'Laki-laki', '0214407377', 1, 1, 0, NULL, '2020-12-08 03:49:57', 1, 1);
INSERT INTO `user_pegawai` VALUES (2, '222222', 'Pusing', '2000-05-02', 'Perempuan', '', NULL, 2, 0, NULL, '2019-02-21 21:23:56', NULL, 1);
INSERT INTO `user_pegawai` VALUES (3, '123123213', 'Petugas Tukang Jalan', '2020-11-26', 'Perempuan', '123123123', NULL, 3, 0, '2020-11-19 17:19:25', NULL, NULL, NULL);
INSERT INTO `user_pegawai` VALUES (1374, '1234124214', 'UPTD 6', NULL, NULL, '085723149406', 40, NULL, 0, '2020-12-07 08:33:15', NULL, 1, NULL);

-- ----------------------------
-- Table structure for user_push_notification
-- ----------------------------
DROP TABLE IF EXISTS `user_push_notification`;
CREATE TABLE `user_push_notification`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `device_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_push_notification
-- ----------------------------
INSERT INTO `user_push_notification` VALUES (1, 1, 'fJ_Yo3YJRQu1ct6SGaoGA7:APA91bEK7ZLOw4la8S3B5GV5HdJCfHb5dyFQ_BJvufwY-YIgpXGEimBW6z4kmHjC8qU4_CyfQ_yfnNPccdLlP-jAjmpVq-4LwzMyjEgYZk4YnydDUo8bc-zsKEAwiHRi6UwQDH5uBkd-', '2020-12-14 12:15:17', '2020-12-16 00:32:20');
INSERT INTO `user_push_notification` VALUES (2, 2, 'asaaa', '2020-12-14 15:47:54', '2020-12-14 15:57:45');
INSERT INTO `user_push_notification` VALUES (3, NULL, NULL, '2020-12-15 14:25:31', '2020-12-15 14:25:31');
INSERT INTO `user_push_notification` VALUES (4, 3, 'dW2na4eBS7-OpFPxwqyE6Z:APA91bHGb8PAmEMePnozk-MAX8SGm3_2mKkdeJFKNPNu7hhy5qvRF4RIDV3QFQwA8upiEbdFc9wePayegKoE2G1BI1pIvfxFguS5h55R4mLuQmzseSF0FsFd_yNvQBY89ASZs52EhhMT', '2020-12-16 00:09:49', '2020-12-16 01:12:51');
INSERT INTO `user_push_notification` VALUES (5, 4, 'dW2na4eBS7-OpFPxwqyE6Z:APA91bHGb8PAmEMePnozk-MAX8SGm3_2mKkdeJFKNPNu7hhy5qvRF4RIDV3QFQwA8upiEbdFc9wePayegKoE2G1BI1pIvfxFguS5h55R4mLuQmzseSF0FsFd_yNvQBY89ASZs52EhhMT', '2020-12-16 00:57:03', '2020-12-16 00:57:03');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `is_superadmin` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_deleted` int(11) NULL DEFAULT 0,
  `uptd` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_by` int(11) NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 'admin', 0, 1, 'Administrator', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `user_role` VALUES (2, 'kadis', 0, 0, 'Kepala Dinas', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `user_role` VALUES (3, 'kabid jakon', 2, 0, 'Kepala Bidang Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (4, 'kabid bidtek', 2, 0, 'Kepala Bidang Teknik Jalan', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (5, 'kabid pemeliharan dan pembangunan jalan', 2, 0, 'Kepala Bidang Pemeliharaan dan pembangunan jalan', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (6, 'kabid penataan ruang', 2, 0, 'Kepala Bidang Penataan Ruang', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (7, 'sekretariatan', 2, 0, 'Sekretariatan', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (8, 'kasie pengaturan jakon', 3, 0, 'Kepala Seksi Pengaturan Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `user_role` VALUES (9, 'kasie pengawasan data informasi', 3, 0, 'Kepala Seksi Pengawasan Data Informasi', 1, 0, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `user_role` VALUES (10, 'kasie pemberdayaan jasa konstruksi', 3, 0, 'Kepala Seksi Pemberdayaan Jasa Konstruksi', 1, 0, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `user_role` VALUES (11, 'kasie rekayasa teknik', 4, 0, 'Kepala Seksi Rekayasa Teknik', 1, 0, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `user_role` VALUES (12, 'kepala uptd 1', 2, 0, 'Unit Pelaksana Teknis Dinas 1', 1, 0, 'uptd1', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (13, 'kepala uptd 2', 2, 0, 'Unit Pelaksana Teknis Dinas 2', 1, 0, 'uptd2', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (14, 'kepala uptd 3', 2, 0, 'Unit Pelaksana Teknis Dinas 3', 1, 0, 'uptd3', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (15, 'kepala uptd 4', 2, 0, 'Unit Pelaksana Teknis Dinas 4', 1, 0, 'uptd4', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (16, 'kepala uptd 5', 2, 0, 'Unit Pelaksana Teknis Dinas 5', 1, 0, 'uptd5', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (17, 'kepala uptd 6', 2, 0, 'Unit Pelaksana Teknis Dinas 6', 1, 0, 'uptd6', NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (18, 'UPTD Laboratoriun', 2, 0, 'Unit Pelaksana Teknis Dinas Laboratorium', 1, 0, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `user_role` VALUES (20, 'Mandor', 0, 0, 'Mandor', 1, 0, 'UPTD1', '2020-12-15 09:43:39', NULL, 1, NULL, 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_otp` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'masyarakat',
  `internal_role_id` int(11) NULL DEFAULT NULL,
  `sup` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `blokir` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Administrator', 'admin@mail.com', '2020-10-19 15:33:46', '$2y$10$y1wR2I0NCyLpCz26nnO/2OS5aSqbGgOufKcPMS3EdMeAaCHM6zyFa', '296056', 'internal', 1, NULL, 'N', NULL, NULL, '2020-11-23 09:03:10');
INSERT INTO `users` VALUES (2, 'Masyarakat', 'masyarakat@mail.com', '2020-10-19 15:34:06', '$2y$10$Kg32vyPq7Mt5cl1WtSpIXO0G2/aMolyrJrElW8kr/wNdXcDUFBTti', NULL, 'masyarakat', NULL, NULL, 'N', NULL, NULL, '2020-11-23 09:05:49');
INSERT INTO `users` VALUES (3, 'Kadis', 'kadis@mail.com', '2020-10-19 01:55:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 2, NULL, 'N', NULL, '2020-11-15 01:37:00', '2020-10-19 08:56:07');
INSERT INTO `users` VALUES (4, 'Kabid', 'kabid@mail.com', '2020-10-19 01:55:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 3, NULL, 'N', NULL, NULL, '2020-10-19 08:56:07');
INSERT INTO `users` VALUES (5, 'Kepala UPTD 3', 'uptd3@mail.com', '2020-11-15 01:38:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 14, NULL, 'N', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'Kepala UPTD 1', 'uptd1@mail.com', '2020-11-15 01:38:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '504286', 'internal', 12, NULL, 'N', NULL, NULL, NULL);
INSERT INTO `users` VALUES (30, 'Siapa Ini', 'priyayidimas@gmail.com', '2020-11-02 18:15:15', '$2y$10$O9TK1cSq4iScXdTbB.azuerp6vGBo/YULNU4wxPUc62mSjKnYDlgy', '873697', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-02 17:40:47', '2020-11-02 20:29:13');
INSERT INTO `users` VALUES (34, 'siapa ini', 'priyayidimas@upi.edu', NULL, '$2y$10$Ks9gLAWqf4AXz8mPOkT5R.t8tosLkUWzdHLXr51QotYV6VkwOFiBS', '840879', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-02 19:27:12', '2020-11-02 19:31:02');
INSERT INTO `users` VALUES (35, 'siapa lagi ini', 'mendozadante05@gmail.com', '2020-11-02 19:33:23', '$2y$10$ti2xjEI0pRCtos955DNuzuamppBRFdm8DxaElRg78FPQtFW78eucW', '299279', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-02 19:33:10', '2020-11-02 19:33:23');
INSERT INTO `users` VALUES (36, 'Niko', 'nikop0003@gmail.com', '2020-11-10 18:45:25', '$2y$10$sgxWOoIL6tSe6mFtnnCRQu6VPMid7cvqnqNv5SiLTpxUeiO29Xj/.', '539668', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-10 18:44:32', '2020-11-10 18:45:25');
INSERT INTO `users` VALUES (37, 'andi', 'andi@gmaill.com', NULL, '$2y$10$qpPmvIZZpHipITgZvthvNO.5PpduG7XmaEAm0eeAD9Rc8DLMGmO56', '899998', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-15 16:41:12', '2020-11-15 16:41:12');
INSERT INTO `users` VALUES (38, 'zulkifli', 'izqfly@gmail.com', '2020-11-16 17:00:14', '$2y$10$ZWcNtzQNpCg2zvGzWZK/dO9qlPt4aumh3VdScPqVhvO9Y9hcvg.bi', '318930', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-16 16:58:18', '2020-11-16 17:00:14');
INSERT INTO `users` VALUES (39, 'kaka', 'ekafise.pns@gmail.com', '2020-11-21 07:36:31', '$2y$10$i1FILLdNG2RzzkJ9MfAWLuAJOCVfyM.mgPMbCv7/a8vbVpCngfnGC', '607711', 'masyarakat', NULL, NULL, 'N', NULL, '2020-11-21 07:35:11', '2020-11-21 07:36:31');

-- ----------------------------
-- Table structure for utils_jenis_laporan
-- ----------------------------
DROP TABLE IF EXISTS `utils_jenis_laporan`;
CREATE TABLE `utils_jenis_laporan`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_jenis_laporan
-- ----------------------------
INSERT INTO `utils_jenis_laporan` VALUES ('Jalan Berlubang', 'Jalan Berlubang');
INSERT INTO `utils_jenis_laporan` VALUES ('Jembatan Rusak', 'Jembatan Rusak');
INSERT INTO `utils_jenis_laporan` VALUES ('Kepuasan Masyarakat', 'Kepuasan Masyarakat');
INSERT INTO `utils_jenis_laporan` VALUES ('Tiang & Kabel Listrik Mengganggu', 'Tiang & Kabel Listrik Menganggu');
INSERT INTO `utils_jenis_laporan` VALUES ('Tidak Ada Akses Jalan', 'Tidak Ada Akses Jalan');
INSERT INTO `utils_jenis_laporan` VALUES ('Trotoar Rusak', 'Trotoar Rusak');

-- ----------------------------
-- Table structure for utils_jenis_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `utils_jenis_pekerjaan`;
CREATE TABLE `utils_jenis_pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_jenis_pekerjaan
-- ----------------------------
INSERT INTO `utils_jenis_pekerjaan` VALUES (1, 'pembangunan', 'Pembangunan Jalan dll.');
INSERT INTO `utils_jenis_pekerjaan` VALUES (2, 'rehabilitasi', 'Rehabilitasi jalan');
INSERT INTO `utils_jenis_pekerjaan` VALUES (3, 'peningkatan', 'Peningkatan jalan');
INSERT INTO `utils_jenis_pekerjaan` VALUES (4, 'pemeliharaan', 'Pemeliharaan berkala');

-- ----------------------------
-- Table structure for utils_jenis_ruas_jalan
-- ----------------------------
DROP TABLE IF EXISTS `utils_jenis_ruas_jalan`;
CREATE TABLE `utils_jenis_ruas_jalan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_jenis_ruas_jalan
-- ----------------------------
INSERT INTO `utils_jenis_ruas_jalan` VALUES (1, 'tol', 'Kuning');
INSERT INTO `utils_jenis_ruas_jalan` VALUES (2, 'nasional', 'Merah');
INSERT INTO `utils_jenis_ruas_jalan` VALUES (3, 'provinsi', 'Hijau');
INSERT INTO `utils_jenis_ruas_jalan` VALUES (4, 'kabupaten', 'Putih');

-- ----------------------------
-- Table structure for utils_lokasi
-- ----------------------------
DROP TABLE IF EXISTS `utils_lokasi`;
CREATE TABLE `utils_lokasi`  (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_lokasi
-- ----------------------------
INSERT INTO `utils_lokasi` VALUES (1, 'Kabupaten Bogor');
INSERT INTO `utils_lokasi` VALUES (2, 'Kabupaten Sukabumi');
INSERT INTO `utils_lokasi` VALUES (3, 'Kabupaten Cianjur');
INSERT INTO `utils_lokasi` VALUES (4, 'Kabupaten Bandung');
INSERT INTO `utils_lokasi` VALUES (5, 'Kabupaten Bandung Barat');
INSERT INTO `utils_lokasi` VALUES (6, 'Kabupaten Garut');
INSERT INTO `utils_lokasi` VALUES (7, 'Kabupaten Tasikmalaya');
INSERT INTO `utils_lokasi` VALUES (8, 'Kabupaten Ciamis');
INSERT INTO `utils_lokasi` VALUES (9, 'Kabupaten Kuningan');
INSERT INTO `utils_lokasi` VALUES (10, 'Kabupaten Cirebon');
INSERT INTO `utils_lokasi` VALUES (11, 'Kabupaten Majalengka');
INSERT INTO `utils_lokasi` VALUES (12, 'Kabupaten Sumedang');
INSERT INTO `utils_lokasi` VALUES (13, 'Kabupaten Indramayu');
INSERT INTO `utils_lokasi` VALUES (14, 'Kabupaten Subang');
INSERT INTO `utils_lokasi` VALUES (15, 'Kabupaten Purwakarta');
INSERT INTO `utils_lokasi` VALUES (16, 'Kabupaten Karawang');
INSERT INTO `utils_lokasi` VALUES (17, 'Kabupaten Bekasi');
INSERT INTO `utils_lokasi` VALUES (18, 'Kabupaten Pangandaran');
INSERT INTO `utils_lokasi` VALUES (19, 'Kota Bogor');
INSERT INTO `utils_lokasi` VALUES (20, 'Kota Sukabumi');
INSERT INTO `utils_lokasi` VALUES (21, 'Kota Bandung');
INSERT INTO `utils_lokasi` VALUES (22, 'Kota Cirebon');
INSERT INTO `utils_lokasi` VALUES (23, 'Kota Bekasi');
INSERT INTO `utils_lokasi` VALUES (24, 'Kota Depok');
INSERT INTO `utils_lokasi` VALUES (25, 'Kota Cimahi');
INSERT INTO `utils_lokasi` VALUES (26, 'Kota Tasikmalaya');
INSERT INTO `utils_lokasi` VALUES (27, 'Kota Banjar');

-- ----------------------------
-- Table structure for utils_notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `utils_notifikasi`;
CREATE TABLE `utils_notifikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_notifikasi
-- ----------------------------
INSERT INTO `utils_notifikasi` VALUES (1, 'Pengaduan Jalan Rusak (Internal)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'internal', '2020-09-19 00:00:00', NULL);
INSERT INTO `utils_notifikasi` VALUES (2, 'Pengaduan Jalan Rusak (Internal)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'internal', '2020-09-19 00:00:00', NULL);
INSERT INTO `utils_notifikasi` VALUES (3, 'Pengaduan Jalan Rusak (Masyarakat)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'masyarakat', '2020-09-19 00:00:00', NULL);

-- ----------------------------
-- Table structure for utils_role_access
-- ----------------------------
DROP TABLE IF EXISTS `utils_role_access`;
CREATE TABLE `utils_role_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_access` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `master_grant_role_aplikasi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fr1`(`master_grant_role_aplikasi_id`) USING BTREE,
  CONSTRAINT `fr1` FOREIGN KEY (`master_grant_role_aplikasi_id`) REFERENCES `master_grant_role_aplikasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2185 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_role_access
-- ----------------------------
INSERT INTO `utils_role_access` VALUES (1, 'Create', 1);
INSERT INTO `utils_role_access` VALUES (2, 'View', 1);
INSERT INTO `utils_role_access` VALUES (3, 'Update', 1);
INSERT INTO `utils_role_access` VALUES (4, 'Delete', 1);
INSERT INTO `utils_role_access` VALUES (5, 'Create', 2);
INSERT INTO `utils_role_access` VALUES (6, 'View', 2);
INSERT INTO `utils_role_access` VALUES (7, 'Update', 2);
INSERT INTO `utils_role_access` VALUES (8, 'Delete', 2);
INSERT INTO `utils_role_access` VALUES (9, 'Create', 3);
INSERT INTO `utils_role_access` VALUES (10, 'View', 3);
INSERT INTO `utils_role_access` VALUES (11, 'Update', 3);
INSERT INTO `utils_role_access` VALUES (12, 'Delete', 3);
INSERT INTO `utils_role_access` VALUES (13, 'Create', 4);
INSERT INTO `utils_role_access` VALUES (14, 'View', 4);
INSERT INTO `utils_role_access` VALUES (15, 'Update', 4);
INSERT INTO `utils_role_access` VALUES (16, 'Delete', 4);
INSERT INTO `utils_role_access` VALUES (17, 'Create', 5);
INSERT INTO `utils_role_access` VALUES (18, 'View', 5);
INSERT INTO `utils_role_access` VALUES (19, 'Update', 5);
INSERT INTO `utils_role_access` VALUES (20, 'Delete', 5);
INSERT INTO `utils_role_access` VALUES (21, 'Create', 6);
INSERT INTO `utils_role_access` VALUES (22, 'View', 6);
INSERT INTO `utils_role_access` VALUES (23, 'Update', 6);
INSERT INTO `utils_role_access` VALUES (24, 'Delete', 6);
INSERT INTO `utils_role_access` VALUES (25, 'Create', 7);
INSERT INTO `utils_role_access` VALUES (26, 'View', 7);
INSERT INTO `utils_role_access` VALUES (27, 'Update', 7);
INSERT INTO `utils_role_access` VALUES (28, 'Delete', 7);
INSERT INTO `utils_role_access` VALUES (29, 'Create', 8);
INSERT INTO `utils_role_access` VALUES (30, 'View', 8);
INSERT INTO `utils_role_access` VALUES (31, 'Update', 8);
INSERT INTO `utils_role_access` VALUES (32, 'Delete', 8);
INSERT INTO `utils_role_access` VALUES (33, 'Create', 9);
INSERT INTO `utils_role_access` VALUES (34, 'View', 9);
INSERT INTO `utils_role_access` VALUES (35, 'Update', 9);
INSERT INTO `utils_role_access` VALUES (36, 'Delete', 9);
INSERT INTO `utils_role_access` VALUES (37, 'Create', 10);
INSERT INTO `utils_role_access` VALUES (38, 'View', 10);
INSERT INTO `utils_role_access` VALUES (39, 'Update', 10);
INSERT INTO `utils_role_access` VALUES (40, 'Delete', 10);
INSERT INTO `utils_role_access` VALUES (41, 'Create', 11);
INSERT INTO `utils_role_access` VALUES (42, 'View', 11);
INSERT INTO `utils_role_access` VALUES (43, 'Update', 11);
INSERT INTO `utils_role_access` VALUES (44, 'Delete', 11);
INSERT INTO `utils_role_access` VALUES (45, 'Create', 12);
INSERT INTO `utils_role_access` VALUES (46, 'View', 12);
INSERT INTO `utils_role_access` VALUES (47, 'Update', 12);
INSERT INTO `utils_role_access` VALUES (48, 'Delete', 12);
INSERT INTO `utils_role_access` VALUES (49, 'Create', 13);
INSERT INTO `utils_role_access` VALUES (50, 'View', 13);
INSERT INTO `utils_role_access` VALUES (51, 'Update', 13);
INSERT INTO `utils_role_access` VALUES (52, 'Delete', 13);
INSERT INTO `utils_role_access` VALUES (53, 'Create', 14);
INSERT INTO `utils_role_access` VALUES (54, 'View', 14);
INSERT INTO `utils_role_access` VALUES (55, 'Update', 14);
INSERT INTO `utils_role_access` VALUES (56, 'Delete', 14);
INSERT INTO `utils_role_access` VALUES (57, 'Create', 15);
INSERT INTO `utils_role_access` VALUES (58, 'View', 15);
INSERT INTO `utils_role_access` VALUES (59, 'Update', 15);
INSERT INTO `utils_role_access` VALUES (60, 'Delete', 15);
INSERT INTO `utils_role_access` VALUES (61, 'Create', 16);
INSERT INTO `utils_role_access` VALUES (62, 'View', 16);
INSERT INTO `utils_role_access` VALUES (63, 'Update', 16);
INSERT INTO `utils_role_access` VALUES (64, 'Delete', 16);
INSERT INTO `utils_role_access` VALUES (65, 'Create', 17);
INSERT INTO `utils_role_access` VALUES (66, 'View', 17);
INSERT INTO `utils_role_access` VALUES (67, 'Update', 17);
INSERT INTO `utils_role_access` VALUES (68, 'Delete', 17);
INSERT INTO `utils_role_access` VALUES (69, 'Create', 18);
INSERT INTO `utils_role_access` VALUES (70, 'View', 18);
INSERT INTO `utils_role_access` VALUES (71, 'Update', 18);
INSERT INTO `utils_role_access` VALUES (72, 'Delete', 18);
INSERT INTO `utils_role_access` VALUES (73, 'Create', 19);
INSERT INTO `utils_role_access` VALUES (74, 'View', 19);
INSERT INTO `utils_role_access` VALUES (75, 'Update', 19);
INSERT INTO `utils_role_access` VALUES (76, 'Delete', 19);
INSERT INTO `utils_role_access` VALUES (77, 'Create', 20);
INSERT INTO `utils_role_access` VALUES (78, 'View', 20);
INSERT INTO `utils_role_access` VALUES (79, 'Update', 20);
INSERT INTO `utils_role_access` VALUES (80, 'Delete', 20);
INSERT INTO `utils_role_access` VALUES (81, 'Create', 21);
INSERT INTO `utils_role_access` VALUES (82, 'View', 21);
INSERT INTO `utils_role_access` VALUES (83, 'Update', 21);
INSERT INTO `utils_role_access` VALUES (84, 'Delete', 21);
INSERT INTO `utils_role_access` VALUES (85, 'Create', 22);
INSERT INTO `utils_role_access` VALUES (86, 'View', 22);
INSERT INTO `utils_role_access` VALUES (87, 'Update', 22);
INSERT INTO `utils_role_access` VALUES (88, 'Delete', 22);
INSERT INTO `utils_role_access` VALUES (89, 'Create', 23);
INSERT INTO `utils_role_access` VALUES (90, 'View', 23);
INSERT INTO `utils_role_access` VALUES (91, 'Update', 23);
INSERT INTO `utils_role_access` VALUES (92, 'Delete', 23);
INSERT INTO `utils_role_access` VALUES (93, 'Create', 24);
INSERT INTO `utils_role_access` VALUES (94, 'View', 24);
INSERT INTO `utils_role_access` VALUES (95, 'Update', 24);
INSERT INTO `utils_role_access` VALUES (96, 'Delete', 24);
INSERT INTO `utils_role_access` VALUES (97, 'Create', 25);
INSERT INTO `utils_role_access` VALUES (98, 'View', 25);
INSERT INTO `utils_role_access` VALUES (99, 'Update', 25);
INSERT INTO `utils_role_access` VALUES (100, 'Delete', 25);
INSERT INTO `utils_role_access` VALUES (101, 'Create', 26);
INSERT INTO `utils_role_access` VALUES (102, 'View', 26);
INSERT INTO `utils_role_access` VALUES (103, 'Update', 26);
INSERT INTO `utils_role_access` VALUES (104, 'Delete', 26);
INSERT INTO `utils_role_access` VALUES (105, 'Create', 27);
INSERT INTO `utils_role_access` VALUES (106, 'View', 27);
INSERT INTO `utils_role_access` VALUES (107, 'Update', 27);
INSERT INTO `utils_role_access` VALUES (108, 'Delete', 27);
INSERT INTO `utils_role_access` VALUES (109, 'Create', 28);
INSERT INTO `utils_role_access` VALUES (110, 'View', 28);
INSERT INTO `utils_role_access` VALUES (111, 'Update', 28);
INSERT INTO `utils_role_access` VALUES (112, 'Delete', 28);
INSERT INTO `utils_role_access` VALUES (113, 'Create', 29);
INSERT INTO `utils_role_access` VALUES (114, 'View', 29);
INSERT INTO `utils_role_access` VALUES (115, 'Update', 29);
INSERT INTO `utils_role_access` VALUES (116, 'Delete', 29);
INSERT INTO `utils_role_access` VALUES (117, 'Create', 30);
INSERT INTO `utils_role_access` VALUES (118, 'View', 30);
INSERT INTO `utils_role_access` VALUES (119, 'Update', 30);
INSERT INTO `utils_role_access` VALUES (120, 'Delete', 30);
INSERT INTO `utils_role_access` VALUES (121, 'Create', 31);
INSERT INTO `utils_role_access` VALUES (122, 'View', 31);
INSERT INTO `utils_role_access` VALUES (123, 'Update', 31);
INSERT INTO `utils_role_access` VALUES (124, 'Delete', 31);
INSERT INTO `utils_role_access` VALUES (125, 'Create', 32);
INSERT INTO `utils_role_access` VALUES (126, 'View', 32);
INSERT INTO `utils_role_access` VALUES (127, 'Update', 32);
INSERT INTO `utils_role_access` VALUES (128, 'Delete', 32);
INSERT INTO `utils_role_access` VALUES (129, 'Create', 33);
INSERT INTO `utils_role_access` VALUES (130, 'View', 33);
INSERT INTO `utils_role_access` VALUES (131, 'Update', 33);
INSERT INTO `utils_role_access` VALUES (132, 'Delete', 33);
INSERT INTO `utils_role_access` VALUES (133, 'Create', 34);
INSERT INTO `utils_role_access` VALUES (134, 'View', 34);
INSERT INTO `utils_role_access` VALUES (135, 'Update', 34);
INSERT INTO `utils_role_access` VALUES (136, 'Delete', 34);
INSERT INTO `utils_role_access` VALUES (137, 'Create', 35);
INSERT INTO `utils_role_access` VALUES (138, 'View', 35);
INSERT INTO `utils_role_access` VALUES (139, 'Update', 35);
INSERT INTO `utils_role_access` VALUES (140, 'Delete', 35);
INSERT INTO `utils_role_access` VALUES (141, 'Create', 36);
INSERT INTO `utils_role_access` VALUES (142, 'View', 36);
INSERT INTO `utils_role_access` VALUES (143, 'Update', 36);
INSERT INTO `utils_role_access` VALUES (144, 'Delete', 36);
INSERT INTO `utils_role_access` VALUES (145, 'Create', 37);
INSERT INTO `utils_role_access` VALUES (146, 'View', 37);
INSERT INTO `utils_role_access` VALUES (147, 'Update', 37);
INSERT INTO `utils_role_access` VALUES (148, 'Delete', 37);
INSERT INTO `utils_role_access` VALUES (149, 'Create', 38);
INSERT INTO `utils_role_access` VALUES (150, 'View', 38);
INSERT INTO `utils_role_access` VALUES (151, 'Update', 38);
INSERT INTO `utils_role_access` VALUES (152, 'Delete', 38);
INSERT INTO `utils_role_access` VALUES (153, 'Create', 39);
INSERT INTO `utils_role_access` VALUES (154, 'View', 39);
INSERT INTO `utils_role_access` VALUES (155, 'Update', 39);
INSERT INTO `utils_role_access` VALUES (156, 'Delete', 39);
INSERT INTO `utils_role_access` VALUES (157, 'Create', 40);
INSERT INTO `utils_role_access` VALUES (158, 'View', 40);
INSERT INTO `utils_role_access` VALUES (159, 'Update', 40);
INSERT INTO `utils_role_access` VALUES (160, 'Delete', 40);
INSERT INTO `utils_role_access` VALUES (161, 'Create', 41);
INSERT INTO `utils_role_access` VALUES (162, 'View', 41);
INSERT INTO `utils_role_access` VALUES (163, 'Update', 41);
INSERT INTO `utils_role_access` VALUES (164, 'Delete', 41);
INSERT INTO `utils_role_access` VALUES (165, 'Create', 42);
INSERT INTO `utils_role_access` VALUES (166, 'View', 42);
INSERT INTO `utils_role_access` VALUES (167, 'Update', 42);
INSERT INTO `utils_role_access` VALUES (168, 'Delete', 42);
INSERT INTO `utils_role_access` VALUES (169, 'Create', 43);
INSERT INTO `utils_role_access` VALUES (170, 'View', 43);
INSERT INTO `utils_role_access` VALUES (171, 'Update', 43);
INSERT INTO `utils_role_access` VALUES (172, 'Delete', 43);
INSERT INTO `utils_role_access` VALUES (173, 'Create', 44);
INSERT INTO `utils_role_access` VALUES (174, 'View', 44);
INSERT INTO `utils_role_access` VALUES (175, 'Update', 44);
INSERT INTO `utils_role_access` VALUES (176, 'Delete', 44);
INSERT INTO `utils_role_access` VALUES (177, 'Create', 45);
INSERT INTO `utils_role_access` VALUES (178, 'View', 45);
INSERT INTO `utils_role_access` VALUES (179, 'Update', 45);
INSERT INTO `utils_role_access` VALUES (180, 'Delete', 45);
INSERT INTO `utils_role_access` VALUES (181, 'Create', 46);
INSERT INTO `utils_role_access` VALUES (182, 'View', 46);
INSERT INTO `utils_role_access` VALUES (183, 'Update', 46);
INSERT INTO `utils_role_access` VALUES (184, 'Delete', 46);
INSERT INTO `utils_role_access` VALUES (185, 'Create', 47);
INSERT INTO `utils_role_access` VALUES (186, 'View', 47);
INSERT INTO `utils_role_access` VALUES (187, 'Update', 47);
INSERT INTO `utils_role_access` VALUES (188, 'Delete', 47);
INSERT INTO `utils_role_access` VALUES (189, 'Create', 48);
INSERT INTO `utils_role_access` VALUES (190, 'View', 48);
INSERT INTO `utils_role_access` VALUES (191, 'Update', 48);
INSERT INTO `utils_role_access` VALUES (192, 'Delete', 48);
INSERT INTO `utils_role_access` VALUES (193, 'Create', 49);
INSERT INTO `utils_role_access` VALUES (194, 'View', 49);
INSERT INTO `utils_role_access` VALUES (195, 'Update', 49);
INSERT INTO `utils_role_access` VALUES (196, 'Delete', 49);
INSERT INTO `utils_role_access` VALUES (197, 'Create', 50);
INSERT INTO `utils_role_access` VALUES (198, 'View', 50);
INSERT INTO `utils_role_access` VALUES (199, 'Update', 50);
INSERT INTO `utils_role_access` VALUES (200, 'Delete', 50);
INSERT INTO `utils_role_access` VALUES (201, 'Create', 51);
INSERT INTO `utils_role_access` VALUES (202, 'View', 51);
INSERT INTO `utils_role_access` VALUES (203, 'Update', 51);
INSERT INTO `utils_role_access` VALUES (204, 'Delete', 51);
INSERT INTO `utils_role_access` VALUES (205, 'Create', 52);
INSERT INTO `utils_role_access` VALUES (206, 'View', 52);
INSERT INTO `utils_role_access` VALUES (207, 'Update', 52);
INSERT INTO `utils_role_access` VALUES (208, 'Delete', 52);
INSERT INTO `utils_role_access` VALUES (209, 'Create', 53);
INSERT INTO `utils_role_access` VALUES (210, 'View', 53);
INSERT INTO `utils_role_access` VALUES (211, 'Update', 53);
INSERT INTO `utils_role_access` VALUES (212, 'Delete', 53);
INSERT INTO `utils_role_access` VALUES (213, 'Create', 54);
INSERT INTO `utils_role_access` VALUES (214, 'View', 54);
INSERT INTO `utils_role_access` VALUES (215, 'Update', 54);
INSERT INTO `utils_role_access` VALUES (216, 'Delete', 54);
INSERT INTO `utils_role_access` VALUES (217, 'Create', 55);
INSERT INTO `utils_role_access` VALUES (218, 'View', 55);
INSERT INTO `utils_role_access` VALUES (219, 'Update', 55);
INSERT INTO `utils_role_access` VALUES (220, 'Delete', 55);
INSERT INTO `utils_role_access` VALUES (221, 'Create', 56);
INSERT INTO `utils_role_access` VALUES (222, 'View', 56);
INSERT INTO `utils_role_access` VALUES (223, 'Update', 56);
INSERT INTO `utils_role_access` VALUES (224, 'Delete', 56);
INSERT INTO `utils_role_access` VALUES (225, 'Create', 57);
INSERT INTO `utils_role_access` VALUES (226, 'View', 57);
INSERT INTO `utils_role_access` VALUES (227, 'Update', 57);
INSERT INTO `utils_role_access` VALUES (228, 'Delete', 57);
INSERT INTO `utils_role_access` VALUES (229, 'Create', 58);
INSERT INTO `utils_role_access` VALUES (230, 'View', 58);
INSERT INTO `utils_role_access` VALUES (231, 'Update', 58);
INSERT INTO `utils_role_access` VALUES (232, 'Delete', 58);
INSERT INTO `utils_role_access` VALUES (233, 'Create', 59);
INSERT INTO `utils_role_access` VALUES (234, 'View', 59);
INSERT INTO `utils_role_access` VALUES (235, 'Update', 59);
INSERT INTO `utils_role_access` VALUES (236, 'Delete', 59);
INSERT INTO `utils_role_access` VALUES (237, 'Create', 60);
INSERT INTO `utils_role_access` VALUES (238, 'View', 60);
INSERT INTO `utils_role_access` VALUES (239, 'Update', 60);
INSERT INTO `utils_role_access` VALUES (240, 'Delete', 60);
INSERT INTO `utils_role_access` VALUES (241, 'Create', 61);
INSERT INTO `utils_role_access` VALUES (242, 'View', 61);
INSERT INTO `utils_role_access` VALUES (243, 'Update', 61);
INSERT INTO `utils_role_access` VALUES (244, 'Delete', 61);
INSERT INTO `utils_role_access` VALUES (245, 'Create', 62);
INSERT INTO `utils_role_access` VALUES (246, 'View', 62);
INSERT INTO `utils_role_access` VALUES (247, 'Update', 62);
INSERT INTO `utils_role_access` VALUES (248, 'Delete', 62);
INSERT INTO `utils_role_access` VALUES (249, 'Create', 63);
INSERT INTO `utils_role_access` VALUES (250, 'View', 63);
INSERT INTO `utils_role_access` VALUES (251, 'Update', 63);
INSERT INTO `utils_role_access` VALUES (252, 'Delete', 63);
INSERT INTO `utils_role_access` VALUES (253, 'Create', 64);
INSERT INTO `utils_role_access` VALUES (254, 'View', 64);
INSERT INTO `utils_role_access` VALUES (255, 'Update', 64);
INSERT INTO `utils_role_access` VALUES (256, 'Delete', 64);
INSERT INTO `utils_role_access` VALUES (257, 'Create', 65);
INSERT INTO `utils_role_access` VALUES (258, 'View', 65);
INSERT INTO `utils_role_access` VALUES (259, 'Update', 65);
INSERT INTO `utils_role_access` VALUES (260, 'Delete', 65);
INSERT INTO `utils_role_access` VALUES (261, 'Create', 66);
INSERT INTO `utils_role_access` VALUES (262, 'View', 66);
INSERT INTO `utils_role_access` VALUES (263, 'Update', 66);
INSERT INTO `utils_role_access` VALUES (264, 'Delete', 66);
INSERT INTO `utils_role_access` VALUES (265, 'Create', 67);
INSERT INTO `utils_role_access` VALUES (266, 'View', 67);
INSERT INTO `utils_role_access` VALUES (267, 'Update', 67);
INSERT INTO `utils_role_access` VALUES (268, 'Delete', 67);
INSERT INTO `utils_role_access` VALUES (269, 'Create', 68);
INSERT INTO `utils_role_access` VALUES (270, 'View', 68);
INSERT INTO `utils_role_access` VALUES (271, 'Update', 68);
INSERT INTO `utils_role_access` VALUES (272, 'Delete', 68);
INSERT INTO `utils_role_access` VALUES (273, 'Create', 69);
INSERT INTO `utils_role_access` VALUES (274, 'View', 69);
INSERT INTO `utils_role_access` VALUES (275, 'Update', 69);
INSERT INTO `utils_role_access` VALUES (276, 'Delete', 69);
INSERT INTO `utils_role_access` VALUES (277, 'Create', 70);
INSERT INTO `utils_role_access` VALUES (278, 'View', 70);
INSERT INTO `utils_role_access` VALUES (279, 'Update', 70);
INSERT INTO `utils_role_access` VALUES (280, 'Delete', 70);
INSERT INTO `utils_role_access` VALUES (281, 'Create', 71);
INSERT INTO `utils_role_access` VALUES (282, 'View', 71);
INSERT INTO `utils_role_access` VALUES (283, 'Update', 71);
INSERT INTO `utils_role_access` VALUES (284, 'Delete', 71);
INSERT INTO `utils_role_access` VALUES (285, 'Create', 72);
INSERT INTO `utils_role_access` VALUES (286, 'View', 72);
INSERT INTO `utils_role_access` VALUES (287, 'Update', 72);
INSERT INTO `utils_role_access` VALUES (288, 'Delete', 72);
INSERT INTO `utils_role_access` VALUES (289, 'Create', 73);
INSERT INTO `utils_role_access` VALUES (290, 'View', 73);
INSERT INTO `utils_role_access` VALUES (291, 'Update', 73);
INSERT INTO `utils_role_access` VALUES (292, 'Delete', 73);
INSERT INTO `utils_role_access` VALUES (293, 'Create', 74);
INSERT INTO `utils_role_access` VALUES (294, 'View', 74);
INSERT INTO `utils_role_access` VALUES (295, 'Update', 74);
INSERT INTO `utils_role_access` VALUES (296, 'Delete', 74);
INSERT INTO `utils_role_access` VALUES (297, 'Create', 75);
INSERT INTO `utils_role_access` VALUES (298, 'View', 75);
INSERT INTO `utils_role_access` VALUES (299, 'Update', 75);
INSERT INTO `utils_role_access` VALUES (300, 'Delete', 75);
INSERT INTO `utils_role_access` VALUES (301, 'Create', 76);
INSERT INTO `utils_role_access` VALUES (302, 'View', 76);
INSERT INTO `utils_role_access` VALUES (303, 'Update', 76);
INSERT INTO `utils_role_access` VALUES (304, 'Delete', 76);
INSERT INTO `utils_role_access` VALUES (305, 'Create', 77);
INSERT INTO `utils_role_access` VALUES (306, 'View', 77);
INSERT INTO `utils_role_access` VALUES (307, 'Update', 77);
INSERT INTO `utils_role_access` VALUES (308, 'Delete', 77);
INSERT INTO `utils_role_access` VALUES (309, 'Create', 78);
INSERT INTO `utils_role_access` VALUES (310, 'View', 78);
INSERT INTO `utils_role_access` VALUES (311, 'Update', 78);
INSERT INTO `utils_role_access` VALUES (312, 'Delete', 78);
INSERT INTO `utils_role_access` VALUES (313, 'Create', 79);
INSERT INTO `utils_role_access` VALUES (314, 'View', 79);
INSERT INTO `utils_role_access` VALUES (315, 'Update', 79);
INSERT INTO `utils_role_access` VALUES (316, 'Delete', 79);
INSERT INTO `utils_role_access` VALUES (317, 'Create', 80);
INSERT INTO `utils_role_access` VALUES (318, 'View', 80);
INSERT INTO `utils_role_access` VALUES (319, 'Update', 80);
INSERT INTO `utils_role_access` VALUES (320, 'Delete', 80);
INSERT INTO `utils_role_access` VALUES (321, 'Create', 81);
INSERT INTO `utils_role_access` VALUES (322, 'View', 81);
INSERT INTO `utils_role_access` VALUES (323, 'Update', 81);
INSERT INTO `utils_role_access` VALUES (324, 'Delete', 81);
INSERT INTO `utils_role_access` VALUES (325, 'Create', 82);
INSERT INTO `utils_role_access` VALUES (326, 'View', 82);
INSERT INTO `utils_role_access` VALUES (327, 'Update', 82);
INSERT INTO `utils_role_access` VALUES (328, 'Delete', 82);
INSERT INTO `utils_role_access` VALUES (329, 'Create', 83);
INSERT INTO `utils_role_access` VALUES (330, 'View', 83);
INSERT INTO `utils_role_access` VALUES (331, 'Update', 83);
INSERT INTO `utils_role_access` VALUES (332, 'Delete', 83);
INSERT INTO `utils_role_access` VALUES (333, 'Create', 84);
INSERT INTO `utils_role_access` VALUES (334, 'View', 84);
INSERT INTO `utils_role_access` VALUES (335, 'Update', 84);
INSERT INTO `utils_role_access` VALUES (336, 'Delete', 84);
INSERT INTO `utils_role_access` VALUES (337, 'Create', 85);
INSERT INTO `utils_role_access` VALUES (338, 'View', 85);
INSERT INTO `utils_role_access` VALUES (339, 'Update', 85);
INSERT INTO `utils_role_access` VALUES (340, 'Delete', 85);
INSERT INTO `utils_role_access` VALUES (341, 'Create', 86);
INSERT INTO `utils_role_access` VALUES (342, 'View', 86);
INSERT INTO `utils_role_access` VALUES (343, 'Update', 86);
INSERT INTO `utils_role_access` VALUES (344, 'Delete', 86);
INSERT INTO `utils_role_access` VALUES (345, 'Create', 87);
INSERT INTO `utils_role_access` VALUES (346, 'View', 87);
INSERT INTO `utils_role_access` VALUES (347, 'Update', 87);
INSERT INTO `utils_role_access` VALUES (348, 'Delete', 87);
INSERT INTO `utils_role_access` VALUES (349, 'Create', 88);
INSERT INTO `utils_role_access` VALUES (350, 'View', 88);
INSERT INTO `utils_role_access` VALUES (351, 'Update', 88);
INSERT INTO `utils_role_access` VALUES (352, 'Delete', 88);
INSERT INTO `utils_role_access` VALUES (353, 'Create', 89);
INSERT INTO `utils_role_access` VALUES (354, 'View', 89);
INSERT INTO `utils_role_access` VALUES (355, 'Update', 89);
INSERT INTO `utils_role_access` VALUES (356, 'Delete', 89);
INSERT INTO `utils_role_access` VALUES (357, 'Create', 90);
INSERT INTO `utils_role_access` VALUES (358, 'View', 90);
INSERT INTO `utils_role_access` VALUES (359, 'Update', 90);
INSERT INTO `utils_role_access` VALUES (360, 'Delete', 90);
INSERT INTO `utils_role_access` VALUES (361, 'Create', 91);
INSERT INTO `utils_role_access` VALUES (362, 'View', 91);
INSERT INTO `utils_role_access` VALUES (363, 'Update', 91);
INSERT INTO `utils_role_access` VALUES (364, 'Delete', 91);
INSERT INTO `utils_role_access` VALUES (365, 'Create', 92);
INSERT INTO `utils_role_access` VALUES (366, 'View', 92);
INSERT INTO `utils_role_access` VALUES (367, 'Update', 92);
INSERT INTO `utils_role_access` VALUES (368, 'Delete', 92);
INSERT INTO `utils_role_access` VALUES (369, 'Create', 93);
INSERT INTO `utils_role_access` VALUES (370, 'View', 93);
INSERT INTO `utils_role_access` VALUES (371, 'Update', 93);
INSERT INTO `utils_role_access` VALUES (372, 'Delete', 93);
INSERT INTO `utils_role_access` VALUES (373, 'Create', 94);
INSERT INTO `utils_role_access` VALUES (374, 'View', 94);
INSERT INTO `utils_role_access` VALUES (375, 'Update', 94);
INSERT INTO `utils_role_access` VALUES (376, 'Delete', 94);
INSERT INTO `utils_role_access` VALUES (377, 'Create', 95);
INSERT INTO `utils_role_access` VALUES (378, 'View', 95);
INSERT INTO `utils_role_access` VALUES (379, 'Update', 95);
INSERT INTO `utils_role_access` VALUES (380, 'Delete', 95);
INSERT INTO `utils_role_access` VALUES (381, 'Create', 96);
INSERT INTO `utils_role_access` VALUES (382, 'View', 96);
INSERT INTO `utils_role_access` VALUES (383, 'Update', 96);
INSERT INTO `utils_role_access` VALUES (384, 'Delete', 96);
INSERT INTO `utils_role_access` VALUES (385, 'Create', 97);
INSERT INTO `utils_role_access` VALUES (386, 'View', 97);
INSERT INTO `utils_role_access` VALUES (387, 'Update', 97);
INSERT INTO `utils_role_access` VALUES (388, 'Delete', 97);
INSERT INTO `utils_role_access` VALUES (389, 'Create', 98);
INSERT INTO `utils_role_access` VALUES (390, 'View', 98);
INSERT INTO `utils_role_access` VALUES (391, 'Update', 98);
INSERT INTO `utils_role_access` VALUES (392, 'Delete', 98);
INSERT INTO `utils_role_access` VALUES (393, 'Create', 99);
INSERT INTO `utils_role_access` VALUES (394, 'View', 99);
INSERT INTO `utils_role_access` VALUES (395, 'Update', 99);
INSERT INTO `utils_role_access` VALUES (396, 'Delete', 99);
INSERT INTO `utils_role_access` VALUES (397, 'Create', 100);
INSERT INTO `utils_role_access` VALUES (398, 'View', 100);
INSERT INTO `utils_role_access` VALUES (399, 'Update', 100);
INSERT INTO `utils_role_access` VALUES (400, 'Delete', 100);
INSERT INTO `utils_role_access` VALUES (401, 'Create', 101);
INSERT INTO `utils_role_access` VALUES (402, 'View', 101);
INSERT INTO `utils_role_access` VALUES (403, 'Update', 101);
INSERT INTO `utils_role_access` VALUES (404, 'Delete', 101);
INSERT INTO `utils_role_access` VALUES (405, 'Create', 102);
INSERT INTO `utils_role_access` VALUES (406, 'View', 102);
INSERT INTO `utils_role_access` VALUES (407, 'Update', 102);
INSERT INTO `utils_role_access` VALUES (408, 'Delete', 102);
INSERT INTO `utils_role_access` VALUES (409, 'Create', 103);
INSERT INTO `utils_role_access` VALUES (410, 'View', 103);
INSERT INTO `utils_role_access` VALUES (411, 'Update', 103);
INSERT INTO `utils_role_access` VALUES (412, 'Delete', 103);
INSERT INTO `utils_role_access` VALUES (413, 'Create', 104);
INSERT INTO `utils_role_access` VALUES (414, 'View', 104);
INSERT INTO `utils_role_access` VALUES (415, 'Update', 104);
INSERT INTO `utils_role_access` VALUES (416, 'Delete', 104);
INSERT INTO `utils_role_access` VALUES (417, 'Create', 105);
INSERT INTO `utils_role_access` VALUES (418, 'View', 105);
INSERT INTO `utils_role_access` VALUES (419, 'Update', 105);
INSERT INTO `utils_role_access` VALUES (420, 'Delete', 105);
INSERT INTO `utils_role_access` VALUES (421, 'Create', 106);
INSERT INTO `utils_role_access` VALUES (422, 'View', 106);
INSERT INTO `utils_role_access` VALUES (423, 'Update', 106);
INSERT INTO `utils_role_access` VALUES (424, 'Delete', 106);
INSERT INTO `utils_role_access` VALUES (425, 'Create', 107);
INSERT INTO `utils_role_access` VALUES (426, 'View', 107);
INSERT INTO `utils_role_access` VALUES (427, 'Update', 107);
INSERT INTO `utils_role_access` VALUES (428, 'Delete', 107);
INSERT INTO `utils_role_access` VALUES (429, 'Create', 108);
INSERT INTO `utils_role_access` VALUES (430, 'View', 108);
INSERT INTO `utils_role_access` VALUES (431, 'Update', 108);
INSERT INTO `utils_role_access` VALUES (432, 'Delete', 108);
INSERT INTO `utils_role_access` VALUES (433, 'Create', 109);
INSERT INTO `utils_role_access` VALUES (434, 'View', 109);
INSERT INTO `utils_role_access` VALUES (435, 'Update', 109);
INSERT INTO `utils_role_access` VALUES (436, 'Delete', 109);
INSERT INTO `utils_role_access` VALUES (437, 'Create', 110);
INSERT INTO `utils_role_access` VALUES (438, 'View', 110);
INSERT INTO `utils_role_access` VALUES (439, 'Update', 110);
INSERT INTO `utils_role_access` VALUES (440, 'Delete', 110);
INSERT INTO `utils_role_access` VALUES (441, 'Create', 111);
INSERT INTO `utils_role_access` VALUES (442, 'View', 111);
INSERT INTO `utils_role_access` VALUES (443, 'Update', 111);
INSERT INTO `utils_role_access` VALUES (444, 'Delete', 111);
INSERT INTO `utils_role_access` VALUES (445, 'Create', 112);
INSERT INTO `utils_role_access` VALUES (446, 'View', 112);
INSERT INTO `utils_role_access` VALUES (447, 'Update', 112);
INSERT INTO `utils_role_access` VALUES (448, 'Delete', 112);
INSERT INTO `utils_role_access` VALUES (449, 'Create', 113);
INSERT INTO `utils_role_access` VALUES (450, 'View', 113);
INSERT INTO `utils_role_access` VALUES (451, 'Update', 113);
INSERT INTO `utils_role_access` VALUES (452, 'Delete', 113);
INSERT INTO `utils_role_access` VALUES (453, 'Create', 114);
INSERT INTO `utils_role_access` VALUES (454, 'View', 114);
INSERT INTO `utils_role_access` VALUES (455, 'Update', 114);
INSERT INTO `utils_role_access` VALUES (456, 'Delete', 114);
INSERT INTO `utils_role_access` VALUES (457, 'Create', 115);
INSERT INTO `utils_role_access` VALUES (458, 'View', 115);
INSERT INTO `utils_role_access` VALUES (459, 'Update', 115);
INSERT INTO `utils_role_access` VALUES (460, 'Delete', 115);
INSERT INTO `utils_role_access` VALUES (461, 'Create', 116);
INSERT INTO `utils_role_access` VALUES (462, 'View', 116);
INSERT INTO `utils_role_access` VALUES (463, 'Update', 116);
INSERT INTO `utils_role_access` VALUES (464, 'Delete', 116);
INSERT INTO `utils_role_access` VALUES (465, 'Create', 117);
INSERT INTO `utils_role_access` VALUES (466, 'View', 117);
INSERT INTO `utils_role_access` VALUES (467, 'Update', 117);
INSERT INTO `utils_role_access` VALUES (468, 'Delete', 117);
INSERT INTO `utils_role_access` VALUES (469, 'Create', 118);
INSERT INTO `utils_role_access` VALUES (470, 'View', 118);
INSERT INTO `utils_role_access` VALUES (471, 'Update', 118);
INSERT INTO `utils_role_access` VALUES (472, 'Delete', 118);
INSERT INTO `utils_role_access` VALUES (473, 'Create', 119);
INSERT INTO `utils_role_access` VALUES (474, 'View', 119);
INSERT INTO `utils_role_access` VALUES (475, 'Update', 119);
INSERT INTO `utils_role_access` VALUES (476, 'Delete', 119);
INSERT INTO `utils_role_access` VALUES (477, 'Create', 120);
INSERT INTO `utils_role_access` VALUES (478, 'View', 120);
INSERT INTO `utils_role_access` VALUES (479, 'Update', 120);
INSERT INTO `utils_role_access` VALUES (480, 'Delete', 120);
INSERT INTO `utils_role_access` VALUES (481, 'Create', 121);
INSERT INTO `utils_role_access` VALUES (482, 'View', 121);
INSERT INTO `utils_role_access` VALUES (483, 'Update', 121);
INSERT INTO `utils_role_access` VALUES (484, 'Delete', 121);
INSERT INTO `utils_role_access` VALUES (485, 'Create', 122);
INSERT INTO `utils_role_access` VALUES (486, 'View', 122);
INSERT INTO `utils_role_access` VALUES (487, 'Update', 122);
INSERT INTO `utils_role_access` VALUES (488, 'Delete', 122);
INSERT INTO `utils_role_access` VALUES (489, 'Create', 123);
INSERT INTO `utils_role_access` VALUES (490, 'View', 123);
INSERT INTO `utils_role_access` VALUES (491, 'Update', 123);
INSERT INTO `utils_role_access` VALUES (492, 'Delete', 123);
INSERT INTO `utils_role_access` VALUES (493, 'Create', 124);
INSERT INTO `utils_role_access` VALUES (494, 'View', 124);
INSERT INTO `utils_role_access` VALUES (495, 'Update', 124);
INSERT INTO `utils_role_access` VALUES (496, 'Delete', 124);
INSERT INTO `utils_role_access` VALUES (497, 'Create', 125);
INSERT INTO `utils_role_access` VALUES (498, 'View', 125);
INSERT INTO `utils_role_access` VALUES (499, 'Update', 125);
INSERT INTO `utils_role_access` VALUES (500, 'Delete', 125);
INSERT INTO `utils_role_access` VALUES (501, 'Create', 126);
INSERT INTO `utils_role_access` VALUES (502, 'View', 126);
INSERT INTO `utils_role_access` VALUES (503, 'Update', 126);
INSERT INTO `utils_role_access` VALUES (504, 'Delete', 126);
INSERT INTO `utils_role_access` VALUES (505, 'Create', 127);
INSERT INTO `utils_role_access` VALUES (506, 'View', 127);
INSERT INTO `utils_role_access` VALUES (507, 'Update', 127);
INSERT INTO `utils_role_access` VALUES (508, 'Delete', 127);
INSERT INTO `utils_role_access` VALUES (509, 'Create', 128);
INSERT INTO `utils_role_access` VALUES (510, 'View', 128);
INSERT INTO `utils_role_access` VALUES (511, 'Update', 128);
INSERT INTO `utils_role_access` VALUES (512, 'Delete', 128);
INSERT INTO `utils_role_access` VALUES (513, 'Create', 129);
INSERT INTO `utils_role_access` VALUES (514, 'View', 129);
INSERT INTO `utils_role_access` VALUES (515, 'Update', 129);
INSERT INTO `utils_role_access` VALUES (516, 'Delete', 129);
INSERT INTO `utils_role_access` VALUES (517, 'Create', 130);
INSERT INTO `utils_role_access` VALUES (518, 'View', 130);
INSERT INTO `utils_role_access` VALUES (519, 'Update', 130);
INSERT INTO `utils_role_access` VALUES (520, 'Delete', 130);
INSERT INTO `utils_role_access` VALUES (521, 'Create', 131);
INSERT INTO `utils_role_access` VALUES (522, 'View', 131);
INSERT INTO `utils_role_access` VALUES (523, 'Update', 131);
INSERT INTO `utils_role_access` VALUES (524, 'Delete', 131);
INSERT INTO `utils_role_access` VALUES (525, 'Create', 132);
INSERT INTO `utils_role_access` VALUES (526, 'View', 132);
INSERT INTO `utils_role_access` VALUES (527, 'Update', 132);
INSERT INTO `utils_role_access` VALUES (528, 'Delete', 132);
INSERT INTO `utils_role_access` VALUES (529, 'Create', 133);
INSERT INTO `utils_role_access` VALUES (530, 'View', 133);
INSERT INTO `utils_role_access` VALUES (531, 'Update', 133);
INSERT INTO `utils_role_access` VALUES (532, 'Delete', 133);
INSERT INTO `utils_role_access` VALUES (533, 'Create', 134);
INSERT INTO `utils_role_access` VALUES (534, 'View', 134);
INSERT INTO `utils_role_access` VALUES (535, 'Update', 134);
INSERT INTO `utils_role_access` VALUES (536, 'Delete', 134);
INSERT INTO `utils_role_access` VALUES (537, 'Create', 135);
INSERT INTO `utils_role_access` VALUES (538, 'View', 135);
INSERT INTO `utils_role_access` VALUES (539, 'Update', 135);
INSERT INTO `utils_role_access` VALUES (540, 'Delete', 135);
INSERT INTO `utils_role_access` VALUES (541, 'Create', 136);
INSERT INTO `utils_role_access` VALUES (542, 'View', 136);
INSERT INTO `utils_role_access` VALUES (543, 'Update', 136);
INSERT INTO `utils_role_access` VALUES (544, 'Delete', 136);
INSERT INTO `utils_role_access` VALUES (545, 'Create', 137);
INSERT INTO `utils_role_access` VALUES (546, 'View', 137);
INSERT INTO `utils_role_access` VALUES (547, 'Update', 137);
INSERT INTO `utils_role_access` VALUES (548, 'Delete', 137);
INSERT INTO `utils_role_access` VALUES (549, 'Create', 138);
INSERT INTO `utils_role_access` VALUES (550, 'View', 138);
INSERT INTO `utils_role_access` VALUES (551, 'Update', 138);
INSERT INTO `utils_role_access` VALUES (552, 'Delete', 138);
INSERT INTO `utils_role_access` VALUES (553, 'Create', 139);
INSERT INTO `utils_role_access` VALUES (554, 'View', 139);
INSERT INTO `utils_role_access` VALUES (555, 'Update', 139);
INSERT INTO `utils_role_access` VALUES (556, 'Delete', 139);
INSERT INTO `utils_role_access` VALUES (557, 'Create', 140);
INSERT INTO `utils_role_access` VALUES (558, 'View', 140);
INSERT INTO `utils_role_access` VALUES (559, 'Update', 140);
INSERT INTO `utils_role_access` VALUES (560, 'Delete', 140);
INSERT INTO `utils_role_access` VALUES (561, 'Create', 141);
INSERT INTO `utils_role_access` VALUES (562, 'View', 141);
INSERT INTO `utils_role_access` VALUES (563, 'Update', 141);
INSERT INTO `utils_role_access` VALUES (564, 'Delete', 141);
INSERT INTO `utils_role_access` VALUES (565, 'Create', 142);
INSERT INTO `utils_role_access` VALUES (566, 'View', 142);
INSERT INTO `utils_role_access` VALUES (567, 'Update', 142);
INSERT INTO `utils_role_access` VALUES (568, 'Delete', 142);
INSERT INTO `utils_role_access` VALUES (569, 'Create', 143);
INSERT INTO `utils_role_access` VALUES (570, 'View', 143);
INSERT INTO `utils_role_access` VALUES (571, 'Update', 143);
INSERT INTO `utils_role_access` VALUES (572, 'Delete', 143);
INSERT INTO `utils_role_access` VALUES (573, 'Create', 144);
INSERT INTO `utils_role_access` VALUES (574, 'View', 144);
INSERT INTO `utils_role_access` VALUES (575, 'Update', 144);
INSERT INTO `utils_role_access` VALUES (576, 'Delete', 144);
INSERT INTO `utils_role_access` VALUES (577, 'Create', 145);
INSERT INTO `utils_role_access` VALUES (578, 'View', 145);
INSERT INTO `utils_role_access` VALUES (579, 'Update', 145);
INSERT INTO `utils_role_access` VALUES (580, 'Delete', 145);
INSERT INTO `utils_role_access` VALUES (581, 'Create', 146);
INSERT INTO `utils_role_access` VALUES (582, 'View', 146);
INSERT INTO `utils_role_access` VALUES (583, 'Update', 146);
INSERT INTO `utils_role_access` VALUES (584, 'Delete', 146);
INSERT INTO `utils_role_access` VALUES (585, 'Create', 147);
INSERT INTO `utils_role_access` VALUES (586, 'View', 147);
INSERT INTO `utils_role_access` VALUES (587, 'Update', 147);
INSERT INTO `utils_role_access` VALUES (588, 'Delete', 147);
INSERT INTO `utils_role_access` VALUES (589, 'Create', 148);
INSERT INTO `utils_role_access` VALUES (590, 'View', 148);
INSERT INTO `utils_role_access` VALUES (591, 'Update', 148);
INSERT INTO `utils_role_access` VALUES (592, 'Delete', 148);
INSERT INTO `utils_role_access` VALUES (593, 'Create', 149);
INSERT INTO `utils_role_access` VALUES (594, 'View', 149);
INSERT INTO `utils_role_access` VALUES (595, 'Update', 149);
INSERT INTO `utils_role_access` VALUES (596, 'Delete', 149);
INSERT INTO `utils_role_access` VALUES (597, 'Create', 150);
INSERT INTO `utils_role_access` VALUES (598, 'View', 150);
INSERT INTO `utils_role_access` VALUES (599, 'Update', 150);
INSERT INTO `utils_role_access` VALUES (600, 'Delete', 150);
INSERT INTO `utils_role_access` VALUES (601, 'Create', 151);
INSERT INTO `utils_role_access` VALUES (602, 'View', 151);
INSERT INTO `utils_role_access` VALUES (603, 'Update', 151);
INSERT INTO `utils_role_access` VALUES (604, 'Delete', 151);
INSERT INTO `utils_role_access` VALUES (605, 'Create', 152);
INSERT INTO `utils_role_access` VALUES (606, 'View', 152);
INSERT INTO `utils_role_access` VALUES (607, 'Update', 152);
INSERT INTO `utils_role_access` VALUES (608, 'Delete', 152);
INSERT INTO `utils_role_access` VALUES (609, 'Create', 153);
INSERT INTO `utils_role_access` VALUES (610, 'View', 153);
INSERT INTO `utils_role_access` VALUES (611, 'Update', 153);
INSERT INTO `utils_role_access` VALUES (612, 'Delete', 153);
INSERT INTO `utils_role_access` VALUES (613, 'Create', 154);
INSERT INTO `utils_role_access` VALUES (614, 'View', 154);
INSERT INTO `utils_role_access` VALUES (615, 'Update', 154);
INSERT INTO `utils_role_access` VALUES (616, 'Delete', 154);
INSERT INTO `utils_role_access` VALUES (617, 'Create', 155);
INSERT INTO `utils_role_access` VALUES (618, 'View', 155);
INSERT INTO `utils_role_access` VALUES (619, 'Update', 155);
INSERT INTO `utils_role_access` VALUES (620, 'Delete', 155);
INSERT INTO `utils_role_access` VALUES (621, 'Create', 156);
INSERT INTO `utils_role_access` VALUES (622, 'View', 156);
INSERT INTO `utils_role_access` VALUES (623, 'Update', 156);
INSERT INTO `utils_role_access` VALUES (624, 'Delete', 156);
INSERT INTO `utils_role_access` VALUES (625, 'Create', 157);
INSERT INTO `utils_role_access` VALUES (626, 'View', 157);
INSERT INTO `utils_role_access` VALUES (627, 'Update', 157);
INSERT INTO `utils_role_access` VALUES (628, 'Delete', 157);
INSERT INTO `utils_role_access` VALUES (629, 'Create', 158);
INSERT INTO `utils_role_access` VALUES (630, 'View', 158);
INSERT INTO `utils_role_access` VALUES (631, 'Update', 158);
INSERT INTO `utils_role_access` VALUES (632, 'Delete', 158);
INSERT INTO `utils_role_access` VALUES (633, 'Create', 159);
INSERT INTO `utils_role_access` VALUES (634, 'View', 159);
INSERT INTO `utils_role_access` VALUES (635, 'Update', 159);
INSERT INTO `utils_role_access` VALUES (636, 'Delete', 159);
INSERT INTO `utils_role_access` VALUES (637, 'Create', 160);
INSERT INTO `utils_role_access` VALUES (638, 'View', 160);
INSERT INTO `utils_role_access` VALUES (639, 'Update', 160);
INSERT INTO `utils_role_access` VALUES (640, 'Delete', 160);
INSERT INTO `utils_role_access` VALUES (641, 'Create', 161);
INSERT INTO `utils_role_access` VALUES (642, 'View', 161);
INSERT INTO `utils_role_access` VALUES (643, 'Update', 161);
INSERT INTO `utils_role_access` VALUES (644, 'Delete', 161);
INSERT INTO `utils_role_access` VALUES (645, 'Create', 162);
INSERT INTO `utils_role_access` VALUES (646, 'View', 162);
INSERT INTO `utils_role_access` VALUES (647, 'Update', 162);
INSERT INTO `utils_role_access` VALUES (648, 'Delete', 162);
INSERT INTO `utils_role_access` VALUES (649, 'Create', 163);
INSERT INTO `utils_role_access` VALUES (650, 'View', 163);
INSERT INTO `utils_role_access` VALUES (651, 'Update', 163);
INSERT INTO `utils_role_access` VALUES (652, 'Delete', 163);
INSERT INTO `utils_role_access` VALUES (653, 'Create', 164);
INSERT INTO `utils_role_access` VALUES (654, 'View', 164);
INSERT INTO `utils_role_access` VALUES (655, 'Update', 164);
INSERT INTO `utils_role_access` VALUES (656, 'Delete', 164);
INSERT INTO `utils_role_access` VALUES (657, 'Create', 165);
INSERT INTO `utils_role_access` VALUES (658, 'View', 165);
INSERT INTO `utils_role_access` VALUES (659, 'Update', 165);
INSERT INTO `utils_role_access` VALUES (660, 'Delete', 165);
INSERT INTO `utils_role_access` VALUES (661, 'Create', 166);
INSERT INTO `utils_role_access` VALUES (662, 'View', 166);
INSERT INTO `utils_role_access` VALUES (663, 'Update', 166);
INSERT INTO `utils_role_access` VALUES (664, 'Delete', 166);
INSERT INTO `utils_role_access` VALUES (665, 'Create', 167);
INSERT INTO `utils_role_access` VALUES (666, 'View', 167);
INSERT INTO `utils_role_access` VALUES (667, 'Update', 167);
INSERT INTO `utils_role_access` VALUES (668, 'Delete', 167);
INSERT INTO `utils_role_access` VALUES (669, 'Create', 168);
INSERT INTO `utils_role_access` VALUES (670, 'View', 168);
INSERT INTO `utils_role_access` VALUES (671, 'Update', 168);
INSERT INTO `utils_role_access` VALUES (672, 'Delete', 168);
INSERT INTO `utils_role_access` VALUES (673, 'Create', 169);
INSERT INTO `utils_role_access` VALUES (674, 'View', 169);
INSERT INTO `utils_role_access` VALUES (675, 'Update', 169);
INSERT INTO `utils_role_access` VALUES (676, 'Delete', 169);
INSERT INTO `utils_role_access` VALUES (677, 'Create', 170);
INSERT INTO `utils_role_access` VALUES (678, 'View', 170);
INSERT INTO `utils_role_access` VALUES (679, 'Update', 170);
INSERT INTO `utils_role_access` VALUES (680, 'Delete', 170);
INSERT INTO `utils_role_access` VALUES (681, 'Create', 171);
INSERT INTO `utils_role_access` VALUES (682, 'View', 171);
INSERT INTO `utils_role_access` VALUES (683, 'Update', 171);
INSERT INTO `utils_role_access` VALUES (684, 'Delete', 171);
INSERT INTO `utils_role_access` VALUES (685, 'Create', 172);
INSERT INTO `utils_role_access` VALUES (686, 'View', 172);
INSERT INTO `utils_role_access` VALUES (687, 'Update', 172);
INSERT INTO `utils_role_access` VALUES (688, 'Delete', 172);
INSERT INTO `utils_role_access` VALUES (689, 'Create', 173);
INSERT INTO `utils_role_access` VALUES (690, 'View', 173);
INSERT INTO `utils_role_access` VALUES (691, 'Update', 173);
INSERT INTO `utils_role_access` VALUES (692, 'Delete', 173);
INSERT INTO `utils_role_access` VALUES (693, 'Create', 174);
INSERT INTO `utils_role_access` VALUES (694, 'View', 174);
INSERT INTO `utils_role_access` VALUES (695, 'Update', 174);
INSERT INTO `utils_role_access` VALUES (696, 'Delete', 174);
INSERT INTO `utils_role_access` VALUES (697, 'Create', 175);
INSERT INTO `utils_role_access` VALUES (698, 'View', 175);
INSERT INTO `utils_role_access` VALUES (699, 'Update', 175);
INSERT INTO `utils_role_access` VALUES (700, 'Delete', 175);
INSERT INTO `utils_role_access` VALUES (701, 'Create', 176);
INSERT INTO `utils_role_access` VALUES (702, 'View', 176);
INSERT INTO `utils_role_access` VALUES (703, 'Update', 176);
INSERT INTO `utils_role_access` VALUES (704, 'Delete', 176);
INSERT INTO `utils_role_access` VALUES (705, 'Create', 177);
INSERT INTO `utils_role_access` VALUES (706, 'View', 177);
INSERT INTO `utils_role_access` VALUES (707, 'Update', 177);
INSERT INTO `utils_role_access` VALUES (708, 'Delete', 177);
INSERT INTO `utils_role_access` VALUES (709, 'Create', 178);
INSERT INTO `utils_role_access` VALUES (710, 'View', 178);
INSERT INTO `utils_role_access` VALUES (711, 'Update', 178);
INSERT INTO `utils_role_access` VALUES (712, 'Delete', 178);
INSERT INTO `utils_role_access` VALUES (713, 'Create', 179);
INSERT INTO `utils_role_access` VALUES (714, 'View', 179);
INSERT INTO `utils_role_access` VALUES (715, 'Update', 179);
INSERT INTO `utils_role_access` VALUES (716, 'Delete', 179);
INSERT INTO `utils_role_access` VALUES (717, 'Create', 180);
INSERT INTO `utils_role_access` VALUES (718, 'View', 180);
INSERT INTO `utils_role_access` VALUES (719, 'Update', 180);
INSERT INTO `utils_role_access` VALUES (720, 'Delete', 180);
INSERT INTO `utils_role_access` VALUES (721, 'Create', 181);
INSERT INTO `utils_role_access` VALUES (722, 'View', 181);
INSERT INTO `utils_role_access` VALUES (723, 'Update', 181);
INSERT INTO `utils_role_access` VALUES (724, 'Delete', 181);
INSERT INTO `utils_role_access` VALUES (725, 'Create', 182);
INSERT INTO `utils_role_access` VALUES (726, 'View', 182);
INSERT INTO `utils_role_access` VALUES (727, 'Update', 182);
INSERT INTO `utils_role_access` VALUES (728, 'Delete', 182);
INSERT INTO `utils_role_access` VALUES (729, 'Create', 183);
INSERT INTO `utils_role_access` VALUES (730, 'View', 183);
INSERT INTO `utils_role_access` VALUES (731, 'Update', 183);
INSERT INTO `utils_role_access` VALUES (732, 'Delete', 183);
INSERT INTO `utils_role_access` VALUES (733, 'Create', 184);
INSERT INTO `utils_role_access` VALUES (734, 'View', 184);
INSERT INTO `utils_role_access` VALUES (735, 'Update', 184);
INSERT INTO `utils_role_access` VALUES (736, 'Delete', 184);
INSERT INTO `utils_role_access` VALUES (737, 'Create', 185);
INSERT INTO `utils_role_access` VALUES (738, 'View', 185);
INSERT INTO `utils_role_access` VALUES (739, 'Update', 185);
INSERT INTO `utils_role_access` VALUES (740, 'Delete', 185);
INSERT INTO `utils_role_access` VALUES (741, 'Create', 186);
INSERT INTO `utils_role_access` VALUES (742, 'View', 186);
INSERT INTO `utils_role_access` VALUES (743, 'Update', 186);
INSERT INTO `utils_role_access` VALUES (744, 'Delete', 186);
INSERT INTO `utils_role_access` VALUES (745, 'Create', 187);
INSERT INTO `utils_role_access` VALUES (746, 'View', 187);
INSERT INTO `utils_role_access` VALUES (747, 'Update', 187);
INSERT INTO `utils_role_access` VALUES (748, 'Delete', 187);
INSERT INTO `utils_role_access` VALUES (749, 'Create', 188);
INSERT INTO `utils_role_access` VALUES (750, 'View', 188);
INSERT INTO `utils_role_access` VALUES (751, 'Update', 188);
INSERT INTO `utils_role_access` VALUES (752, 'Delete', 188);
INSERT INTO `utils_role_access` VALUES (753, 'Create', 189);
INSERT INTO `utils_role_access` VALUES (754, 'View', 189);
INSERT INTO `utils_role_access` VALUES (755, 'Update', 189);
INSERT INTO `utils_role_access` VALUES (756, 'Delete', 189);
INSERT INTO `utils_role_access` VALUES (757, 'Create', 190);
INSERT INTO `utils_role_access` VALUES (758, 'View', 190);
INSERT INTO `utils_role_access` VALUES (759, 'Update', 190);
INSERT INTO `utils_role_access` VALUES (760, 'Delete', 190);
INSERT INTO `utils_role_access` VALUES (761, 'Create', 191);
INSERT INTO `utils_role_access` VALUES (762, 'View', 191);
INSERT INTO `utils_role_access` VALUES (763, 'Update', 191);
INSERT INTO `utils_role_access` VALUES (764, 'Delete', 191);
INSERT INTO `utils_role_access` VALUES (765, 'Create', 192);
INSERT INTO `utils_role_access` VALUES (766, 'View', 192);
INSERT INTO `utils_role_access` VALUES (767, 'Update', 192);
INSERT INTO `utils_role_access` VALUES (768, 'Delete', 192);
INSERT INTO `utils_role_access` VALUES (769, 'Create', 193);
INSERT INTO `utils_role_access` VALUES (770, 'View', 193);
INSERT INTO `utils_role_access` VALUES (771, 'Update', 193);
INSERT INTO `utils_role_access` VALUES (772, 'Delete', 193);
INSERT INTO `utils_role_access` VALUES (773, 'Create', 194);
INSERT INTO `utils_role_access` VALUES (774, 'View', 194);
INSERT INTO `utils_role_access` VALUES (775, 'Update', 194);
INSERT INTO `utils_role_access` VALUES (776, 'Delete', 194);
INSERT INTO `utils_role_access` VALUES (777, 'Create', 195);
INSERT INTO `utils_role_access` VALUES (778, 'View', 195);
INSERT INTO `utils_role_access` VALUES (779, 'Update', 195);
INSERT INTO `utils_role_access` VALUES (780, 'Delete', 195);
INSERT INTO `utils_role_access` VALUES (781, 'Create', 196);
INSERT INTO `utils_role_access` VALUES (782, 'View', 196);
INSERT INTO `utils_role_access` VALUES (783, 'Update', 196);
INSERT INTO `utils_role_access` VALUES (784, 'Delete', 196);
INSERT INTO `utils_role_access` VALUES (785, 'Create', 197);
INSERT INTO `utils_role_access` VALUES (786, 'View', 197);
INSERT INTO `utils_role_access` VALUES (787, 'Update', 197);
INSERT INTO `utils_role_access` VALUES (788, 'Delete', 197);
INSERT INTO `utils_role_access` VALUES (789, 'Create', 198);
INSERT INTO `utils_role_access` VALUES (790, 'View', 198);
INSERT INTO `utils_role_access` VALUES (791, 'Update', 198);
INSERT INTO `utils_role_access` VALUES (792, 'Delete', 198);
INSERT INTO `utils_role_access` VALUES (793, 'Create', 199);
INSERT INTO `utils_role_access` VALUES (794, 'View', 199);
INSERT INTO `utils_role_access` VALUES (795, 'Update', 199);
INSERT INTO `utils_role_access` VALUES (796, 'Delete', 199);
INSERT INTO `utils_role_access` VALUES (797, 'Create', 200);
INSERT INTO `utils_role_access` VALUES (798, 'View', 200);
INSERT INTO `utils_role_access` VALUES (799, 'Update', 200);
INSERT INTO `utils_role_access` VALUES (800, 'Delete', 200);
INSERT INTO `utils_role_access` VALUES (801, 'Create', 201);
INSERT INTO `utils_role_access` VALUES (802, 'View', 201);
INSERT INTO `utils_role_access` VALUES (803, 'Update', 201);
INSERT INTO `utils_role_access` VALUES (804, 'Delete', 201);
INSERT INTO `utils_role_access` VALUES (805, 'Create', 202);
INSERT INTO `utils_role_access` VALUES (806, 'View', 202);
INSERT INTO `utils_role_access` VALUES (807, 'Update', 202);
INSERT INTO `utils_role_access` VALUES (808, 'Delete', 202);
INSERT INTO `utils_role_access` VALUES (809, 'Create', 203);
INSERT INTO `utils_role_access` VALUES (810, 'View', 203);
INSERT INTO `utils_role_access` VALUES (811, 'Update', 203);
INSERT INTO `utils_role_access` VALUES (812, 'Delete', 203);
INSERT INTO `utils_role_access` VALUES (813, 'Create', 204);
INSERT INTO `utils_role_access` VALUES (814, 'View', 204);
INSERT INTO `utils_role_access` VALUES (815, 'Update', 204);
INSERT INTO `utils_role_access` VALUES (816, 'Delete', 204);
INSERT INTO `utils_role_access` VALUES (817, 'Create', 205);
INSERT INTO `utils_role_access` VALUES (818, 'View', 205);
INSERT INTO `utils_role_access` VALUES (819, 'Update', 205);
INSERT INTO `utils_role_access` VALUES (820, 'Delete', 205);
INSERT INTO `utils_role_access` VALUES (821, 'Create', 206);
INSERT INTO `utils_role_access` VALUES (822, 'View', 206);
INSERT INTO `utils_role_access` VALUES (823, 'Update', 206);
INSERT INTO `utils_role_access` VALUES (824, 'Delete', 206);
INSERT INTO `utils_role_access` VALUES (825, 'Create', 207);
INSERT INTO `utils_role_access` VALUES (826, 'View', 207);
INSERT INTO `utils_role_access` VALUES (827, 'Update', 207);
INSERT INTO `utils_role_access` VALUES (828, 'Delete', 207);
INSERT INTO `utils_role_access` VALUES (829, 'Create', 208);
INSERT INTO `utils_role_access` VALUES (830, 'View', 208);
INSERT INTO `utils_role_access` VALUES (831, 'Update', 208);
INSERT INTO `utils_role_access` VALUES (832, 'Delete', 208);
INSERT INTO `utils_role_access` VALUES (833, 'Create', 209);
INSERT INTO `utils_role_access` VALUES (834, 'View', 209);
INSERT INTO `utils_role_access` VALUES (835, 'Update', 209);
INSERT INTO `utils_role_access` VALUES (836, 'Delete', 209);
INSERT INTO `utils_role_access` VALUES (837, 'Create', 210);
INSERT INTO `utils_role_access` VALUES (838, 'View', 210);
INSERT INTO `utils_role_access` VALUES (839, 'Update', 210);
INSERT INTO `utils_role_access` VALUES (840, 'Delete', 210);
INSERT INTO `utils_role_access` VALUES (841, 'Create', 211);
INSERT INTO `utils_role_access` VALUES (842, 'View', 211);
INSERT INTO `utils_role_access` VALUES (843, 'Update', 211);
INSERT INTO `utils_role_access` VALUES (844, 'Delete', 211);
INSERT INTO `utils_role_access` VALUES (845, 'Create', 212);
INSERT INTO `utils_role_access` VALUES (846, 'View', 212);
INSERT INTO `utils_role_access` VALUES (847, 'Update', 212);
INSERT INTO `utils_role_access` VALUES (848, 'Delete', 212);
INSERT INTO `utils_role_access` VALUES (849, 'Create', 213);
INSERT INTO `utils_role_access` VALUES (850, 'View', 213);
INSERT INTO `utils_role_access` VALUES (851, 'Update', 213);
INSERT INTO `utils_role_access` VALUES (852, 'Delete', 213);
INSERT INTO `utils_role_access` VALUES (853, 'Create', 214);
INSERT INTO `utils_role_access` VALUES (854, 'View', 214);
INSERT INTO `utils_role_access` VALUES (855, 'Update', 214);
INSERT INTO `utils_role_access` VALUES (856, 'Delete', 214);
INSERT INTO `utils_role_access` VALUES (857, 'Create', 215);
INSERT INTO `utils_role_access` VALUES (858, 'View', 215);
INSERT INTO `utils_role_access` VALUES (859, 'Update', 215);
INSERT INTO `utils_role_access` VALUES (860, 'Delete', 215);
INSERT INTO `utils_role_access` VALUES (861, 'Create', 216);
INSERT INTO `utils_role_access` VALUES (862, 'View', 216);
INSERT INTO `utils_role_access` VALUES (863, 'Update', 216);
INSERT INTO `utils_role_access` VALUES (864, 'Delete', 216);
INSERT INTO `utils_role_access` VALUES (865, 'Create', 217);
INSERT INTO `utils_role_access` VALUES (866, 'View', 217);
INSERT INTO `utils_role_access` VALUES (867, 'Update', 217);
INSERT INTO `utils_role_access` VALUES (868, 'Delete', 217);
INSERT INTO `utils_role_access` VALUES (869, 'Create', 218);
INSERT INTO `utils_role_access` VALUES (870, 'View', 218);
INSERT INTO `utils_role_access` VALUES (871, 'Update', 218);
INSERT INTO `utils_role_access` VALUES (872, 'Delete', 218);
INSERT INTO `utils_role_access` VALUES (873, 'Create', 219);
INSERT INTO `utils_role_access` VALUES (874, 'View', 219);
INSERT INTO `utils_role_access` VALUES (875, 'Update', 219);
INSERT INTO `utils_role_access` VALUES (876, 'Delete', 219);
INSERT INTO `utils_role_access` VALUES (877, 'Create', 220);
INSERT INTO `utils_role_access` VALUES (878, 'View', 220);
INSERT INTO `utils_role_access` VALUES (879, 'Update', 220);
INSERT INTO `utils_role_access` VALUES (880, 'Delete', 220);
INSERT INTO `utils_role_access` VALUES (881, 'Create', 221);
INSERT INTO `utils_role_access` VALUES (882, 'View', 221);
INSERT INTO `utils_role_access` VALUES (883, 'Update', 221);
INSERT INTO `utils_role_access` VALUES (884, 'Delete', 221);
INSERT INTO `utils_role_access` VALUES (885, 'Create', 222);
INSERT INTO `utils_role_access` VALUES (886, 'View', 222);
INSERT INTO `utils_role_access` VALUES (887, 'Update', 222);
INSERT INTO `utils_role_access` VALUES (888, 'Delete', 222);
INSERT INTO `utils_role_access` VALUES (889, 'Create', 223);
INSERT INTO `utils_role_access` VALUES (890, 'View', 223);
INSERT INTO `utils_role_access` VALUES (891, 'Update', 223);
INSERT INTO `utils_role_access` VALUES (892, 'Delete', 223);
INSERT INTO `utils_role_access` VALUES (893, 'Create', 224);
INSERT INTO `utils_role_access` VALUES (894, 'View', 224);
INSERT INTO `utils_role_access` VALUES (895, 'Update', 224);
INSERT INTO `utils_role_access` VALUES (896, 'Delete', 224);
INSERT INTO `utils_role_access` VALUES (897, 'Create', 225);
INSERT INTO `utils_role_access` VALUES (898, 'View', 225);
INSERT INTO `utils_role_access` VALUES (899, 'Update', 225);
INSERT INTO `utils_role_access` VALUES (900, 'Delete', 225);
INSERT INTO `utils_role_access` VALUES (901, 'Create', 226);
INSERT INTO `utils_role_access` VALUES (902, 'View', 226);
INSERT INTO `utils_role_access` VALUES (903, 'Update', 226);
INSERT INTO `utils_role_access` VALUES (904, 'Delete', 226);
INSERT INTO `utils_role_access` VALUES (905, 'Create', 227);
INSERT INTO `utils_role_access` VALUES (906, 'View', 227);
INSERT INTO `utils_role_access` VALUES (907, 'Update', 227);
INSERT INTO `utils_role_access` VALUES (908, 'Delete', 227);
INSERT INTO `utils_role_access` VALUES (909, 'Create', 228);
INSERT INTO `utils_role_access` VALUES (910, 'View', 228);
INSERT INTO `utils_role_access` VALUES (911, 'Update', 228);
INSERT INTO `utils_role_access` VALUES (912, 'Delete', 228);
INSERT INTO `utils_role_access` VALUES (913, 'Create', 229);
INSERT INTO `utils_role_access` VALUES (914, 'View', 229);
INSERT INTO `utils_role_access` VALUES (915, 'Update', 229);
INSERT INTO `utils_role_access` VALUES (916, 'Delete', 229);
INSERT INTO `utils_role_access` VALUES (917, 'Create', 230);
INSERT INTO `utils_role_access` VALUES (918, 'View', 230);
INSERT INTO `utils_role_access` VALUES (919, 'Update', 230);
INSERT INTO `utils_role_access` VALUES (920, 'Delete', 230);
INSERT INTO `utils_role_access` VALUES (921, 'Create', 231);
INSERT INTO `utils_role_access` VALUES (922, 'View', 231);
INSERT INTO `utils_role_access` VALUES (923, 'Update', 231);
INSERT INTO `utils_role_access` VALUES (924, 'Delete', 231);
INSERT INTO `utils_role_access` VALUES (925, 'Create', 232);
INSERT INTO `utils_role_access` VALUES (926, 'View', 232);
INSERT INTO `utils_role_access` VALUES (927, 'Update', 232);
INSERT INTO `utils_role_access` VALUES (928, 'Delete', 232);
INSERT INTO `utils_role_access` VALUES (929, 'Create', 233);
INSERT INTO `utils_role_access` VALUES (930, 'View', 233);
INSERT INTO `utils_role_access` VALUES (931, 'Update', 233);
INSERT INTO `utils_role_access` VALUES (932, 'Delete', 233);
INSERT INTO `utils_role_access` VALUES (933, 'Create', 234);
INSERT INTO `utils_role_access` VALUES (934, 'View', 234);
INSERT INTO `utils_role_access` VALUES (935, 'Update', 234);
INSERT INTO `utils_role_access` VALUES (936, 'Delete', 234);
INSERT INTO `utils_role_access` VALUES (937, 'Create', 235);
INSERT INTO `utils_role_access` VALUES (938, 'View', 235);
INSERT INTO `utils_role_access` VALUES (939, 'Update', 235);
INSERT INTO `utils_role_access` VALUES (940, 'Delete', 235);
INSERT INTO `utils_role_access` VALUES (941, 'Create', 236);
INSERT INTO `utils_role_access` VALUES (942, 'View', 236);
INSERT INTO `utils_role_access` VALUES (943, 'Update', 236);
INSERT INTO `utils_role_access` VALUES (944, 'Delete', 236);
INSERT INTO `utils_role_access` VALUES (945, 'Create', 237);
INSERT INTO `utils_role_access` VALUES (946, 'View', 237);
INSERT INTO `utils_role_access` VALUES (947, 'Update', 237);
INSERT INTO `utils_role_access` VALUES (948, 'Delete', 237);
INSERT INTO `utils_role_access` VALUES (949, 'Create', 238);
INSERT INTO `utils_role_access` VALUES (950, 'View', 238);
INSERT INTO `utils_role_access` VALUES (951, 'Update', 238);
INSERT INTO `utils_role_access` VALUES (952, 'Delete', 238);
INSERT INTO `utils_role_access` VALUES (953, 'Create', 239);
INSERT INTO `utils_role_access` VALUES (954, 'View', 239);
INSERT INTO `utils_role_access` VALUES (955, 'Update', 239);
INSERT INTO `utils_role_access` VALUES (956, 'Delete', 239);
INSERT INTO `utils_role_access` VALUES (957, 'Create', 240);
INSERT INTO `utils_role_access` VALUES (958, 'View', 240);
INSERT INTO `utils_role_access` VALUES (959, 'Update', 240);
INSERT INTO `utils_role_access` VALUES (960, 'Delete', 240);
INSERT INTO `utils_role_access` VALUES (961, 'Create', 241);
INSERT INTO `utils_role_access` VALUES (962, 'View', 241);
INSERT INTO `utils_role_access` VALUES (963, 'Update', 241);
INSERT INTO `utils_role_access` VALUES (964, 'Delete', 241);
INSERT INTO `utils_role_access` VALUES (965, 'Create', 242);
INSERT INTO `utils_role_access` VALUES (966, 'View', 242);
INSERT INTO `utils_role_access` VALUES (967, 'Update', 242);
INSERT INTO `utils_role_access` VALUES (968, 'Delete', 242);
INSERT INTO `utils_role_access` VALUES (969, 'Create', 243);
INSERT INTO `utils_role_access` VALUES (970, 'View', 243);
INSERT INTO `utils_role_access` VALUES (971, 'Update', 243);
INSERT INTO `utils_role_access` VALUES (972, 'Delete', 243);
INSERT INTO `utils_role_access` VALUES (973, 'Create', 244);
INSERT INTO `utils_role_access` VALUES (974, 'View', 244);
INSERT INTO `utils_role_access` VALUES (975, 'Update', 244);
INSERT INTO `utils_role_access` VALUES (976, 'Delete', 244);
INSERT INTO `utils_role_access` VALUES (977, 'Create', 245);
INSERT INTO `utils_role_access` VALUES (978, 'View', 245);
INSERT INTO `utils_role_access` VALUES (979, 'Update', 245);
INSERT INTO `utils_role_access` VALUES (980, 'Delete', 245);
INSERT INTO `utils_role_access` VALUES (981, 'Create', 246);
INSERT INTO `utils_role_access` VALUES (982, 'View', 246);
INSERT INTO `utils_role_access` VALUES (983, 'Update', 246);
INSERT INTO `utils_role_access` VALUES (984, 'Delete', 246);
INSERT INTO `utils_role_access` VALUES (985, 'Create', 247);
INSERT INTO `utils_role_access` VALUES (986, 'View', 247);
INSERT INTO `utils_role_access` VALUES (987, 'Update', 247);
INSERT INTO `utils_role_access` VALUES (988, 'Delete', 247);
INSERT INTO `utils_role_access` VALUES (989, 'Create', 248);
INSERT INTO `utils_role_access` VALUES (990, 'View', 248);
INSERT INTO `utils_role_access` VALUES (991, 'Update', 248);
INSERT INTO `utils_role_access` VALUES (992, 'Delete', 248);
INSERT INTO `utils_role_access` VALUES (993, 'Create', 249);
INSERT INTO `utils_role_access` VALUES (994, 'View', 249);
INSERT INTO `utils_role_access` VALUES (995, 'Update', 249);
INSERT INTO `utils_role_access` VALUES (996, 'Delete', 249);
INSERT INTO `utils_role_access` VALUES (997, 'Create', 250);
INSERT INTO `utils_role_access` VALUES (998, 'View', 250);
INSERT INTO `utils_role_access` VALUES (999, 'Update', 250);
INSERT INTO `utils_role_access` VALUES (1000, 'Delete', 250);
INSERT INTO `utils_role_access` VALUES (1001, 'Create', 251);
INSERT INTO `utils_role_access` VALUES (1002, 'View', 251);
INSERT INTO `utils_role_access` VALUES (1003, 'Update', 251);
INSERT INTO `utils_role_access` VALUES (1004, 'Delete', 251);
INSERT INTO `utils_role_access` VALUES (1005, 'Create', 252);
INSERT INTO `utils_role_access` VALUES (1006, 'View', 252);
INSERT INTO `utils_role_access` VALUES (1007, 'Update', 252);
INSERT INTO `utils_role_access` VALUES (1008, 'Delete', 252);
INSERT INTO `utils_role_access` VALUES (1009, 'Create', 253);
INSERT INTO `utils_role_access` VALUES (1010, 'View', 253);
INSERT INTO `utils_role_access` VALUES (1011, 'Update', 253);
INSERT INTO `utils_role_access` VALUES (1012, 'Delete', 253);
INSERT INTO `utils_role_access` VALUES (1013, 'Create', 254);
INSERT INTO `utils_role_access` VALUES (1014, 'View', 254);
INSERT INTO `utils_role_access` VALUES (1015, 'Update', 254);
INSERT INTO `utils_role_access` VALUES (1016, 'Delete', 254);
INSERT INTO `utils_role_access` VALUES (1017, 'Create', 255);
INSERT INTO `utils_role_access` VALUES (1018, 'View', 255);
INSERT INTO `utils_role_access` VALUES (1019, 'Update', 255);
INSERT INTO `utils_role_access` VALUES (1020, 'Delete', 255);
INSERT INTO `utils_role_access` VALUES (1021, 'Create', 256);
INSERT INTO `utils_role_access` VALUES (1022, 'View', 256);
INSERT INTO `utils_role_access` VALUES (1023, 'Update', 256);
INSERT INTO `utils_role_access` VALUES (1024, 'Delete', 256);
INSERT INTO `utils_role_access` VALUES (1025, 'Create', 257);
INSERT INTO `utils_role_access` VALUES (1026, 'View', 257);
INSERT INTO `utils_role_access` VALUES (1027, 'Update', 257);
INSERT INTO `utils_role_access` VALUES (1028, 'Delete', 257);
INSERT INTO `utils_role_access` VALUES (1029, 'Create', 258);
INSERT INTO `utils_role_access` VALUES (1030, 'View', 258);
INSERT INTO `utils_role_access` VALUES (1031, 'Update', 258);
INSERT INTO `utils_role_access` VALUES (1032, 'Delete', 258);
INSERT INTO `utils_role_access` VALUES (1033, 'Create', 259);
INSERT INTO `utils_role_access` VALUES (1034, 'View', 259);
INSERT INTO `utils_role_access` VALUES (1035, 'Update', 259);
INSERT INTO `utils_role_access` VALUES (1036, 'Delete', 259);
INSERT INTO `utils_role_access` VALUES (1037, 'Create', 260);
INSERT INTO `utils_role_access` VALUES (1038, 'View', 260);
INSERT INTO `utils_role_access` VALUES (1039, 'Update', 260);
INSERT INTO `utils_role_access` VALUES (1040, 'Delete', 260);
INSERT INTO `utils_role_access` VALUES (1041, 'Create', 261);
INSERT INTO `utils_role_access` VALUES (1042, 'View', 261);
INSERT INTO `utils_role_access` VALUES (1043, 'Update', 261);
INSERT INTO `utils_role_access` VALUES (1044, 'Delete', 261);
INSERT INTO `utils_role_access` VALUES (1045, 'Create', 262);
INSERT INTO `utils_role_access` VALUES (1046, 'View', 262);
INSERT INTO `utils_role_access` VALUES (1047, 'Update', 262);
INSERT INTO `utils_role_access` VALUES (1048, 'Delete', 262);
INSERT INTO `utils_role_access` VALUES (1049, 'Create', 263);
INSERT INTO `utils_role_access` VALUES (1050, 'View', 263);
INSERT INTO `utils_role_access` VALUES (1051, 'Update', 263);
INSERT INTO `utils_role_access` VALUES (1052, 'Delete', 263);
INSERT INTO `utils_role_access` VALUES (1053, 'Create', 264);
INSERT INTO `utils_role_access` VALUES (1054, 'View', 264);
INSERT INTO `utils_role_access` VALUES (1055, 'Update', 264);
INSERT INTO `utils_role_access` VALUES (1056, 'Delete', 264);
INSERT INTO `utils_role_access` VALUES (1057, 'Create', 265);
INSERT INTO `utils_role_access` VALUES (1058, 'View', 265);
INSERT INTO `utils_role_access` VALUES (1059, 'Update', 265);
INSERT INTO `utils_role_access` VALUES (1060, 'Delete', 265);
INSERT INTO `utils_role_access` VALUES (1061, 'Create', 266);
INSERT INTO `utils_role_access` VALUES (1062, 'View', 266);
INSERT INTO `utils_role_access` VALUES (1063, 'Update', 266);
INSERT INTO `utils_role_access` VALUES (1064, 'Delete', 266);
INSERT INTO `utils_role_access` VALUES (1065, 'Create', 267);
INSERT INTO `utils_role_access` VALUES (1066, 'View', 267);
INSERT INTO `utils_role_access` VALUES (1067, 'Update', 267);
INSERT INTO `utils_role_access` VALUES (1068, 'Delete', 267);
INSERT INTO `utils_role_access` VALUES (1069, 'Create', 268);
INSERT INTO `utils_role_access` VALUES (1070, 'View', 268);
INSERT INTO `utils_role_access` VALUES (1071, 'Update', 268);
INSERT INTO `utils_role_access` VALUES (1072, 'Delete', 268);
INSERT INTO `utils_role_access` VALUES (1073, 'Create', 269);
INSERT INTO `utils_role_access` VALUES (1074, 'View', 269);
INSERT INTO `utils_role_access` VALUES (1075, 'Update', 269);
INSERT INTO `utils_role_access` VALUES (1076, 'Delete', 269);
INSERT INTO `utils_role_access` VALUES (1077, 'Create', 270);
INSERT INTO `utils_role_access` VALUES (1078, 'View', 270);
INSERT INTO `utils_role_access` VALUES (1079, 'Update', 270);
INSERT INTO `utils_role_access` VALUES (1080, 'Delete', 270);
INSERT INTO `utils_role_access` VALUES (1201, 'Create', 301);
INSERT INTO `utils_role_access` VALUES (1202, 'View', 301);
INSERT INTO `utils_role_access` VALUES (1203, 'Update', 301);
INSERT INTO `utils_role_access` VALUES (1204, 'Delete', 301);
INSERT INTO `utils_role_access` VALUES (1205, 'Create', 302);
INSERT INTO `utils_role_access` VALUES (1206, 'View', 302);
INSERT INTO `utils_role_access` VALUES (1207, 'Update', 302);
INSERT INTO `utils_role_access` VALUES (1208, 'Delete', 302);
INSERT INTO `utils_role_access` VALUES (1209, 'Create', 303);
INSERT INTO `utils_role_access` VALUES (1210, 'View', 303);
INSERT INTO `utils_role_access` VALUES (1211, 'Update', 303);
INSERT INTO `utils_role_access` VALUES (1212, 'Delete', 303);
INSERT INTO `utils_role_access` VALUES (1213, 'Create', 304);
INSERT INTO `utils_role_access` VALUES (1214, 'View', 304);
INSERT INTO `utils_role_access` VALUES (1215, 'Update', 304);
INSERT INTO `utils_role_access` VALUES (1216, 'Delete', 304);
INSERT INTO `utils_role_access` VALUES (1217, 'Create', 305);
INSERT INTO `utils_role_access` VALUES (1218, 'View', 305);
INSERT INTO `utils_role_access` VALUES (1219, 'Update', 305);
INSERT INTO `utils_role_access` VALUES (1220, 'Delete', 305);
INSERT INTO `utils_role_access` VALUES (1221, 'Create', 306);
INSERT INTO `utils_role_access` VALUES (1222, 'View', 306);
INSERT INTO `utils_role_access` VALUES (1223, 'Update', 306);
INSERT INTO `utils_role_access` VALUES (1224, 'Delete', 306);
INSERT INTO `utils_role_access` VALUES (1225, 'Create', 307);
INSERT INTO `utils_role_access` VALUES (1226, 'View', 307);
INSERT INTO `utils_role_access` VALUES (1227, 'Update', 307);
INSERT INTO `utils_role_access` VALUES (1228, 'Delete', 307);
INSERT INTO `utils_role_access` VALUES (1229, 'Create', 308);
INSERT INTO `utils_role_access` VALUES (1230, 'View', 308);
INSERT INTO `utils_role_access` VALUES (1231, 'Update', 308);
INSERT INTO `utils_role_access` VALUES (1232, 'Delete', 308);
INSERT INTO `utils_role_access` VALUES (1233, 'Create', 309);
INSERT INTO `utils_role_access` VALUES (1234, 'View', 309);
INSERT INTO `utils_role_access` VALUES (1235, 'Update', 309);
INSERT INTO `utils_role_access` VALUES (1236, 'Delete', 309);
INSERT INTO `utils_role_access` VALUES (1237, 'Create', 310);
INSERT INTO `utils_role_access` VALUES (1238, 'View', 310);
INSERT INTO `utils_role_access` VALUES (1239, 'Update', 310);
INSERT INTO `utils_role_access` VALUES (1240, 'Delete', 310);
INSERT INTO `utils_role_access` VALUES (1241, 'Create', 311);
INSERT INTO `utils_role_access` VALUES (1242, 'View', 311);
INSERT INTO `utils_role_access` VALUES (1243, 'Update', 311);
INSERT INTO `utils_role_access` VALUES (1244, 'Delete', 311);
INSERT INTO `utils_role_access` VALUES (1245, 'Create', 312);
INSERT INTO `utils_role_access` VALUES (1246, 'View', 312);
INSERT INTO `utils_role_access` VALUES (1247, 'Update', 312);
INSERT INTO `utils_role_access` VALUES (1248, 'Delete', 312);
INSERT INTO `utils_role_access` VALUES (1249, 'Create', 313);
INSERT INTO `utils_role_access` VALUES (1250, 'View', 313);
INSERT INTO `utils_role_access` VALUES (1251, 'Update', 313);
INSERT INTO `utils_role_access` VALUES (1252, 'Delete', 313);
INSERT INTO `utils_role_access` VALUES (1253, 'Create', 314);
INSERT INTO `utils_role_access` VALUES (1254, 'View', 314);
INSERT INTO `utils_role_access` VALUES (1255, 'Update', 314);
INSERT INTO `utils_role_access` VALUES (1256, 'Delete', 314);
INSERT INTO `utils_role_access` VALUES (1257, 'Create', 315);
INSERT INTO `utils_role_access` VALUES (1258, 'View', 315);
INSERT INTO `utils_role_access` VALUES (1259, 'Update', 315);
INSERT INTO `utils_role_access` VALUES (1260, 'Delete', 315);
INSERT INTO `utils_role_access` VALUES (1261, 'Create', 316);
INSERT INTO `utils_role_access` VALUES (1262, 'View', 316);
INSERT INTO `utils_role_access` VALUES (1263, 'Update', 316);
INSERT INTO `utils_role_access` VALUES (1264, 'Delete', 316);
INSERT INTO `utils_role_access` VALUES (1265, 'Create', 317);
INSERT INTO `utils_role_access` VALUES (1266, 'View', 317);
INSERT INTO `utils_role_access` VALUES (1267, 'Update', 317);
INSERT INTO `utils_role_access` VALUES (1268, 'Delete', 317);
INSERT INTO `utils_role_access` VALUES (1269, 'Create', 318);
INSERT INTO `utils_role_access` VALUES (1270, 'View', 318);
INSERT INTO `utils_role_access` VALUES (1271, 'Update', 318);
INSERT INTO `utils_role_access` VALUES (1272, 'Delete', 318);
INSERT INTO `utils_role_access` VALUES (1273, 'Create', 319);
INSERT INTO `utils_role_access` VALUES (1274, 'View', 319);
INSERT INTO `utils_role_access` VALUES (1275, 'Update', 319);
INSERT INTO `utils_role_access` VALUES (1276, 'Delete', 319);
INSERT INTO `utils_role_access` VALUES (1277, 'Create', 320);
INSERT INTO `utils_role_access` VALUES (1278, 'View', 320);
INSERT INTO `utils_role_access` VALUES (1279, 'Update', 320);
INSERT INTO `utils_role_access` VALUES (1280, 'Delete', 320);
INSERT INTO `utils_role_access` VALUES (1281, 'Create', 321);
INSERT INTO `utils_role_access` VALUES (1282, 'View', 321);
INSERT INTO `utils_role_access` VALUES (1283, 'Update', 321);
INSERT INTO `utils_role_access` VALUES (1284, 'Delete', 321);
INSERT INTO `utils_role_access` VALUES (1285, 'Create', 322);
INSERT INTO `utils_role_access` VALUES (1286, 'View', 322);
INSERT INTO `utils_role_access` VALUES (1287, 'Update', 322);
INSERT INTO `utils_role_access` VALUES (1288, 'Delete', 322);
INSERT INTO `utils_role_access` VALUES (1289, 'Create', 323);
INSERT INTO `utils_role_access` VALUES (1290, 'View', 323);
INSERT INTO `utils_role_access` VALUES (1291, 'Update', 323);
INSERT INTO `utils_role_access` VALUES (1292, 'Delete', 323);
INSERT INTO `utils_role_access` VALUES (1293, 'Create', 324);
INSERT INTO `utils_role_access` VALUES (1294, 'View', 324);
INSERT INTO `utils_role_access` VALUES (1295, 'Update', 324);
INSERT INTO `utils_role_access` VALUES (1296, 'Delete', 324);
INSERT INTO `utils_role_access` VALUES (1297, 'Create', 325);
INSERT INTO `utils_role_access` VALUES (1298, 'View', 325);
INSERT INTO `utils_role_access` VALUES (1299, 'Update', 325);
INSERT INTO `utils_role_access` VALUES (1300, 'Delete', 325);
INSERT INTO `utils_role_access` VALUES (1301, 'Create', 326);
INSERT INTO `utils_role_access` VALUES (1302, 'View', 326);
INSERT INTO `utils_role_access` VALUES (1303, 'Update', 326);
INSERT INTO `utils_role_access` VALUES (1304, 'Delete', 326);
INSERT INTO `utils_role_access` VALUES (1305, 'Create', 327);
INSERT INTO `utils_role_access` VALUES (1306, 'View', 327);
INSERT INTO `utils_role_access` VALUES (1307, 'Update', 327);
INSERT INTO `utils_role_access` VALUES (1308, 'Delete', 327);
INSERT INTO `utils_role_access` VALUES (1309, 'Create', 328);
INSERT INTO `utils_role_access` VALUES (1310, 'View', 328);
INSERT INTO `utils_role_access` VALUES (1311, 'Update', 328);
INSERT INTO `utils_role_access` VALUES (1312, 'Delete', 328);
INSERT INTO `utils_role_access` VALUES (1313, 'Create', 329);
INSERT INTO `utils_role_access` VALUES (1314, 'View', 329);
INSERT INTO `utils_role_access` VALUES (1315, 'Update', 329);
INSERT INTO `utils_role_access` VALUES (1316, 'Delete', 329);
INSERT INTO `utils_role_access` VALUES (1317, 'Create', 330);
INSERT INTO `utils_role_access` VALUES (1318, 'View', 330);
INSERT INTO `utils_role_access` VALUES (1319, 'Update', 330);
INSERT INTO `utils_role_access` VALUES (1320, 'Delete', 330);
INSERT INTO `utils_role_access` VALUES (1321, 'Create', 331);
INSERT INTO `utils_role_access` VALUES (1322, 'View', 331);
INSERT INTO `utils_role_access` VALUES (1323, 'Update', 331);
INSERT INTO `utils_role_access` VALUES (1324, 'Delete', 331);
INSERT INTO `utils_role_access` VALUES (1325, 'Create', 332);
INSERT INTO `utils_role_access` VALUES (1326, 'View', 332);
INSERT INTO `utils_role_access` VALUES (1327, 'Update', 332);
INSERT INTO `utils_role_access` VALUES (1328, 'Delete', 332);
INSERT INTO `utils_role_access` VALUES (1329, 'Create', 333);
INSERT INTO `utils_role_access` VALUES (1330, 'View', 333);
INSERT INTO `utils_role_access` VALUES (1331, 'Update', 333);
INSERT INTO `utils_role_access` VALUES (1332, 'Delete', 333);
INSERT INTO `utils_role_access` VALUES (1333, 'Create', 334);
INSERT INTO `utils_role_access` VALUES (1334, 'View', 334);
INSERT INTO `utils_role_access` VALUES (1335, 'Update', 334);
INSERT INTO `utils_role_access` VALUES (1336, 'Delete', 334);
INSERT INTO `utils_role_access` VALUES (1337, 'Create', 335);
INSERT INTO `utils_role_access` VALUES (1338, 'View', 335);
INSERT INTO `utils_role_access` VALUES (1339, 'Update', 335);
INSERT INTO `utils_role_access` VALUES (1340, 'Delete', 335);
INSERT INTO `utils_role_access` VALUES (1341, 'Create', 336);
INSERT INTO `utils_role_access` VALUES (1342, 'View', 336);
INSERT INTO `utils_role_access` VALUES (1343, 'Update', 336);
INSERT INTO `utils_role_access` VALUES (1344, 'Delete', 336);
INSERT INTO `utils_role_access` VALUES (1345, 'Create', 337);
INSERT INTO `utils_role_access` VALUES (1346, 'View', 337);
INSERT INTO `utils_role_access` VALUES (1347, 'Update', 337);
INSERT INTO `utils_role_access` VALUES (1348, 'Delete', 337);
INSERT INTO `utils_role_access` VALUES (1349, 'Create', 338);
INSERT INTO `utils_role_access` VALUES (1350, 'View', 338);
INSERT INTO `utils_role_access` VALUES (1351, 'Update', 338);
INSERT INTO `utils_role_access` VALUES (1352, 'Delete', 338);
INSERT INTO `utils_role_access` VALUES (1353, 'Create', 339);
INSERT INTO `utils_role_access` VALUES (1354, 'View', 339);
INSERT INTO `utils_role_access` VALUES (1355, 'Update', 339);
INSERT INTO `utils_role_access` VALUES (1356, 'Delete', 339);
INSERT INTO `utils_role_access` VALUES (1357, 'Create', 340);
INSERT INTO `utils_role_access` VALUES (1358, 'View', 340);
INSERT INTO `utils_role_access` VALUES (1359, 'Update', 340);
INSERT INTO `utils_role_access` VALUES (1360, 'Delete', 340);
INSERT INTO `utils_role_access` VALUES (1361, 'Create', 341);
INSERT INTO `utils_role_access` VALUES (1362, 'View', 341);
INSERT INTO `utils_role_access` VALUES (1363, 'Update', 341);
INSERT INTO `utils_role_access` VALUES (1364, 'Delete', 341);
INSERT INTO `utils_role_access` VALUES (1365, 'Create', 342);
INSERT INTO `utils_role_access` VALUES (1366, 'View', 342);
INSERT INTO `utils_role_access` VALUES (1367, 'Update', 342);
INSERT INTO `utils_role_access` VALUES (1368, 'Delete', 342);
INSERT INTO `utils_role_access` VALUES (1369, 'Create', 343);
INSERT INTO `utils_role_access` VALUES (1370, 'View', 343);
INSERT INTO `utils_role_access` VALUES (1371, 'Update', 343);
INSERT INTO `utils_role_access` VALUES (1372, 'Delete', 343);
INSERT INTO `utils_role_access` VALUES (1373, 'Create', 344);
INSERT INTO `utils_role_access` VALUES (1374, 'View', 344);
INSERT INTO `utils_role_access` VALUES (1375, 'Update', 344);
INSERT INTO `utils_role_access` VALUES (1376, 'Delete', 344);
INSERT INTO `utils_role_access` VALUES (1377, 'Create', 345);
INSERT INTO `utils_role_access` VALUES (1378, 'View', 345);
INSERT INTO `utils_role_access` VALUES (1379, 'Update', 345);
INSERT INTO `utils_role_access` VALUES (1380, 'Delete', 345);
INSERT INTO `utils_role_access` VALUES (1381, 'Create', 346);
INSERT INTO `utils_role_access` VALUES (1382, 'View', 346);
INSERT INTO `utils_role_access` VALUES (1383, 'Update', 346);
INSERT INTO `utils_role_access` VALUES (1384, 'Delete', 346);
INSERT INTO `utils_role_access` VALUES (1385, 'Create', 347);
INSERT INTO `utils_role_access` VALUES (1386, 'View', 347);
INSERT INTO `utils_role_access` VALUES (1387, 'Update', 347);
INSERT INTO `utils_role_access` VALUES (1388, 'Delete', 347);
INSERT INTO `utils_role_access` VALUES (1389, 'Create', 348);
INSERT INTO `utils_role_access` VALUES (1390, 'View', 348);
INSERT INTO `utils_role_access` VALUES (1391, 'Update', 348);
INSERT INTO `utils_role_access` VALUES (1392, 'Delete', 348);
INSERT INTO `utils_role_access` VALUES (1393, 'Create', 349);
INSERT INTO `utils_role_access` VALUES (1394, 'View', 349);
INSERT INTO `utils_role_access` VALUES (1395, 'Update', 349);
INSERT INTO `utils_role_access` VALUES (1396, 'Delete', 349);
INSERT INTO `utils_role_access` VALUES (1397, 'Create', 350);
INSERT INTO `utils_role_access` VALUES (1398, 'View', 350);
INSERT INTO `utils_role_access` VALUES (1399, 'Update', 350);
INSERT INTO `utils_role_access` VALUES (1400, 'Delete', 350);
INSERT INTO `utils_role_access` VALUES (1401, 'Create', 351);
INSERT INTO `utils_role_access` VALUES (1402, 'View', 351);
INSERT INTO `utils_role_access` VALUES (1403, 'Update', 351);
INSERT INTO `utils_role_access` VALUES (1404, 'Delete', 351);
INSERT INTO `utils_role_access` VALUES (1405, 'Create', 352);
INSERT INTO `utils_role_access` VALUES (1406, 'View', 352);
INSERT INTO `utils_role_access` VALUES (1407, 'Update', 352);
INSERT INTO `utils_role_access` VALUES (1408, 'Delete', 352);
INSERT INTO `utils_role_access` VALUES (1409, 'Create', 353);
INSERT INTO `utils_role_access` VALUES (1410, 'View', 353);
INSERT INTO `utils_role_access` VALUES (1411, 'Update', 353);
INSERT INTO `utils_role_access` VALUES (1412, 'Delete', 353);
INSERT INTO `utils_role_access` VALUES (1413, 'Create', 354);
INSERT INTO `utils_role_access` VALUES (1414, 'View', 354);
INSERT INTO `utils_role_access` VALUES (1415, 'Update', 354);
INSERT INTO `utils_role_access` VALUES (1416, 'Delete', 354);
INSERT INTO `utils_role_access` VALUES (1417, 'Create', 355);
INSERT INTO `utils_role_access` VALUES (1418, 'View', 355);
INSERT INTO `utils_role_access` VALUES (1419, 'Update', 355);
INSERT INTO `utils_role_access` VALUES (1420, 'Delete', 355);
INSERT INTO `utils_role_access` VALUES (1421, 'Create', 356);
INSERT INTO `utils_role_access` VALUES (1422, 'View', 356);
INSERT INTO `utils_role_access` VALUES (1423, 'Update', 356);
INSERT INTO `utils_role_access` VALUES (1424, 'Delete', 356);
INSERT INTO `utils_role_access` VALUES (1425, 'Create', 357);
INSERT INTO `utils_role_access` VALUES (1426, 'View', 357);
INSERT INTO `utils_role_access` VALUES (1427, 'Update', 357);
INSERT INTO `utils_role_access` VALUES (1428, 'Delete', 357);
INSERT INTO `utils_role_access` VALUES (1429, 'Create', 358);
INSERT INTO `utils_role_access` VALUES (1430, 'View', 358);
INSERT INTO `utils_role_access` VALUES (1431, 'Update', 358);
INSERT INTO `utils_role_access` VALUES (1432, 'Delete', 358);
INSERT INTO `utils_role_access` VALUES (1433, 'Create', 359);
INSERT INTO `utils_role_access` VALUES (1434, 'View', 359);
INSERT INTO `utils_role_access` VALUES (1435, 'Update', 359);
INSERT INTO `utils_role_access` VALUES (1436, 'Delete', 359);
INSERT INTO `utils_role_access` VALUES (1437, 'Create', 360);
INSERT INTO `utils_role_access` VALUES (1438, 'View', 360);
INSERT INTO `utils_role_access` VALUES (1439, 'Update', 360);
INSERT INTO `utils_role_access` VALUES (1440, 'Delete', 360);
INSERT INTO `utils_role_access` VALUES (1441, 'Create', 361);
INSERT INTO `utils_role_access` VALUES (1442, 'View', 361);
INSERT INTO `utils_role_access` VALUES (1443, 'Update', 361);
INSERT INTO `utils_role_access` VALUES (1444, 'Delete', 361);
INSERT INTO `utils_role_access` VALUES (1445, 'Create', 362);
INSERT INTO `utils_role_access` VALUES (1446, 'View', 362);
INSERT INTO `utils_role_access` VALUES (1447, 'Update', 362);
INSERT INTO `utils_role_access` VALUES (1448, 'Delete', 362);
INSERT INTO `utils_role_access` VALUES (1449, 'Create', 363);
INSERT INTO `utils_role_access` VALUES (1450, 'View', 363);
INSERT INTO `utils_role_access` VALUES (1451, 'Update', 363);
INSERT INTO `utils_role_access` VALUES (1452, 'Delete', 363);
INSERT INTO `utils_role_access` VALUES (1453, 'Create', 364);
INSERT INTO `utils_role_access` VALUES (1454, 'View', 364);
INSERT INTO `utils_role_access` VALUES (1455, 'Update', 364);
INSERT INTO `utils_role_access` VALUES (1456, 'Delete', 364);
INSERT INTO `utils_role_access` VALUES (1457, 'Create', 365);
INSERT INTO `utils_role_access` VALUES (1458, 'View', 365);
INSERT INTO `utils_role_access` VALUES (1459, 'Update', 365);
INSERT INTO `utils_role_access` VALUES (1460, 'Delete', 365);
INSERT INTO `utils_role_access` VALUES (1461, 'Create', 366);
INSERT INTO `utils_role_access` VALUES (1462, 'View', 366);
INSERT INTO `utils_role_access` VALUES (1463, 'Update', 366);
INSERT INTO `utils_role_access` VALUES (1464, 'Delete', 366);
INSERT INTO `utils_role_access` VALUES (1465, 'Create', 367);
INSERT INTO `utils_role_access` VALUES (1466, 'View', 367);
INSERT INTO `utils_role_access` VALUES (1467, 'Update', 367);
INSERT INTO `utils_role_access` VALUES (1468, 'Delete', 367);
INSERT INTO `utils_role_access` VALUES (1469, 'Create', 368);
INSERT INTO `utils_role_access` VALUES (1470, 'View', 368);
INSERT INTO `utils_role_access` VALUES (1471, 'Update', 368);
INSERT INTO `utils_role_access` VALUES (1472, 'Delete', 368);
INSERT INTO `utils_role_access` VALUES (1473, 'Create', 369);
INSERT INTO `utils_role_access` VALUES (1474, 'View', 369);
INSERT INTO `utils_role_access` VALUES (1475, 'Update', 369);
INSERT INTO `utils_role_access` VALUES (1476, 'Delete', 369);
INSERT INTO `utils_role_access` VALUES (1477, 'Create', 370);
INSERT INTO `utils_role_access` VALUES (1478, 'View', 370);
INSERT INTO `utils_role_access` VALUES (1479, 'Update', 370);
INSERT INTO `utils_role_access` VALUES (1480, 'Delete', 370);
INSERT INTO `utils_role_access` VALUES (1481, 'Create', 371);
INSERT INTO `utils_role_access` VALUES (1482, 'View', 371);
INSERT INTO `utils_role_access` VALUES (1483, 'Update', 371);
INSERT INTO `utils_role_access` VALUES (1484, 'Delete', 371);
INSERT INTO `utils_role_access` VALUES (1485, 'Create', 372);
INSERT INTO `utils_role_access` VALUES (1486, 'View', 372);
INSERT INTO `utils_role_access` VALUES (1487, 'Update', 372);
INSERT INTO `utils_role_access` VALUES (1488, 'Delete', 372);
INSERT INTO `utils_role_access` VALUES (1489, 'Create', 373);
INSERT INTO `utils_role_access` VALUES (1490, 'View', 373);
INSERT INTO `utils_role_access` VALUES (1491, 'Update', 373);
INSERT INTO `utils_role_access` VALUES (1492, 'Delete', 373);
INSERT INTO `utils_role_access` VALUES (1493, 'Create', 374);
INSERT INTO `utils_role_access` VALUES (1494, 'View', 374);
INSERT INTO `utils_role_access` VALUES (1495, 'Update', 374);
INSERT INTO `utils_role_access` VALUES (1496, 'Delete', 374);
INSERT INTO `utils_role_access` VALUES (1497, 'Create', 375);
INSERT INTO `utils_role_access` VALUES (1498, 'View', 375);
INSERT INTO `utils_role_access` VALUES (1499, 'Update', 375);
INSERT INTO `utils_role_access` VALUES (1500, 'Delete', 375);
INSERT INTO `utils_role_access` VALUES (1501, 'Create', 376);
INSERT INTO `utils_role_access` VALUES (1502, 'View', 376);
INSERT INTO `utils_role_access` VALUES (1503, 'Update', 376);
INSERT INTO `utils_role_access` VALUES (1504, 'Delete', 376);
INSERT INTO `utils_role_access` VALUES (1505, 'Create', 377);
INSERT INTO `utils_role_access` VALUES (1506, 'View', 377);
INSERT INTO `utils_role_access` VALUES (1507, 'Update', 377);
INSERT INTO `utils_role_access` VALUES (1508, 'Delete', 377);
INSERT INTO `utils_role_access` VALUES (1509, 'Create', 378);
INSERT INTO `utils_role_access` VALUES (1510, 'View', 378);
INSERT INTO `utils_role_access` VALUES (1511, 'Update', 378);
INSERT INTO `utils_role_access` VALUES (1512, 'Delete', 378);
INSERT INTO `utils_role_access` VALUES (1513, 'Create', 379);
INSERT INTO `utils_role_access` VALUES (1514, 'View', 379);
INSERT INTO `utils_role_access` VALUES (1515, 'Update', 379);
INSERT INTO `utils_role_access` VALUES (1516, 'Delete', 379);
INSERT INTO `utils_role_access` VALUES (1517, 'Create', 380);
INSERT INTO `utils_role_access` VALUES (1518, 'View', 380);
INSERT INTO `utils_role_access` VALUES (1519, 'Update', 380);
INSERT INTO `utils_role_access` VALUES (1520, 'Delete', 380);
INSERT INTO `utils_role_access` VALUES (1521, 'Create', 381);
INSERT INTO `utils_role_access` VALUES (1522, 'View', 381);
INSERT INTO `utils_role_access` VALUES (1523, 'Update', 381);
INSERT INTO `utils_role_access` VALUES (1524, 'Delete', 381);
INSERT INTO `utils_role_access` VALUES (1525, 'Create', 382);
INSERT INTO `utils_role_access` VALUES (1526, 'View', 382);
INSERT INTO `utils_role_access` VALUES (1527, 'Update', 382);
INSERT INTO `utils_role_access` VALUES (1528, 'Delete', 382);
INSERT INTO `utils_role_access` VALUES (1529, 'Create', 383);
INSERT INTO `utils_role_access` VALUES (1530, 'View', 383);
INSERT INTO `utils_role_access` VALUES (1531, 'Update', 383);
INSERT INTO `utils_role_access` VALUES (1532, 'Delete', 383);
INSERT INTO `utils_role_access` VALUES (1533, 'Create', 384);
INSERT INTO `utils_role_access` VALUES (1534, 'View', 384);
INSERT INTO `utils_role_access` VALUES (1535, 'Update', 384);
INSERT INTO `utils_role_access` VALUES (1536, 'Delete', 384);
INSERT INTO `utils_role_access` VALUES (1537, 'Create', 385);
INSERT INTO `utils_role_access` VALUES (1538, 'View', 385);
INSERT INTO `utils_role_access` VALUES (1539, 'Update', 385);
INSERT INTO `utils_role_access` VALUES (1540, 'Delete', 385);
INSERT INTO `utils_role_access` VALUES (1541, 'Create', 386);
INSERT INTO `utils_role_access` VALUES (1542, 'View', 386);
INSERT INTO `utils_role_access` VALUES (1543, 'Update', 386);
INSERT INTO `utils_role_access` VALUES (1544, 'Delete', 386);
INSERT INTO `utils_role_access` VALUES (1545, 'Create', 387);
INSERT INTO `utils_role_access` VALUES (1546, 'View', 387);
INSERT INTO `utils_role_access` VALUES (1547, 'Update', 387);
INSERT INTO `utils_role_access` VALUES (1548, 'Delete', 387);
INSERT INTO `utils_role_access` VALUES (1549, 'Create', 388);
INSERT INTO `utils_role_access` VALUES (1550, 'View', 388);
INSERT INTO `utils_role_access` VALUES (1551, 'Update', 388);
INSERT INTO `utils_role_access` VALUES (1552, 'Delete', 388);
INSERT INTO `utils_role_access` VALUES (1553, 'Create', 389);
INSERT INTO `utils_role_access` VALUES (1554, 'View', 389);
INSERT INTO `utils_role_access` VALUES (1555, 'Update', 389);
INSERT INTO `utils_role_access` VALUES (1556, 'Delete', 389);
INSERT INTO `utils_role_access` VALUES (1557, 'Create', 390);
INSERT INTO `utils_role_access` VALUES (1558, 'View', 390);
INSERT INTO `utils_role_access` VALUES (1559, 'Update', 390);
INSERT INTO `utils_role_access` VALUES (1560, 'Delete', 390);
INSERT INTO `utils_role_access` VALUES (1681, 'Create', 421);
INSERT INTO `utils_role_access` VALUES (1682, 'View', 421);
INSERT INTO `utils_role_access` VALUES (1683, 'Update', 421);
INSERT INTO `utils_role_access` VALUES (1684, 'Delete', 421);
INSERT INTO `utils_role_access` VALUES (1685, 'Create', 422);
INSERT INTO `utils_role_access` VALUES (1686, 'View', 422);
INSERT INTO `utils_role_access` VALUES (1687, 'Update', 422);
INSERT INTO `utils_role_access` VALUES (1688, 'Delete', 422);
INSERT INTO `utils_role_access` VALUES (1689, 'Create', 423);
INSERT INTO `utils_role_access` VALUES (1690, 'View', 423);
INSERT INTO `utils_role_access` VALUES (1691, 'Update', 423);
INSERT INTO `utils_role_access` VALUES (1692, 'Delete', 423);
INSERT INTO `utils_role_access` VALUES (1693, 'Create', 424);
INSERT INTO `utils_role_access` VALUES (1694, 'View', 424);
INSERT INTO `utils_role_access` VALUES (1695, 'Update', 424);
INSERT INTO `utils_role_access` VALUES (1696, 'Delete', 424);
INSERT INTO `utils_role_access` VALUES (1697, 'Create', 425);
INSERT INTO `utils_role_access` VALUES (1698, 'View', 425);
INSERT INTO `utils_role_access` VALUES (1699, 'Update', 425);
INSERT INTO `utils_role_access` VALUES (1700, 'Delete', 425);
INSERT INTO `utils_role_access` VALUES (1701, 'Create', 426);
INSERT INTO `utils_role_access` VALUES (1702, 'View', 426);
INSERT INTO `utils_role_access` VALUES (1703, 'Update', 426);
INSERT INTO `utils_role_access` VALUES (1704, 'Delete', 426);
INSERT INTO `utils_role_access` VALUES (1705, 'Create', 427);
INSERT INTO `utils_role_access` VALUES (1706, 'View', 427);
INSERT INTO `utils_role_access` VALUES (1707, 'Update', 427);
INSERT INTO `utils_role_access` VALUES (1708, 'Delete', 427);
INSERT INTO `utils_role_access` VALUES (1709, 'Create', 428);
INSERT INTO `utils_role_access` VALUES (1710, 'View', 428);
INSERT INTO `utils_role_access` VALUES (1711, 'Update', 428);
INSERT INTO `utils_role_access` VALUES (1712, 'Delete', 428);
INSERT INTO `utils_role_access` VALUES (1713, 'Create', 429);
INSERT INTO `utils_role_access` VALUES (1714, 'View', 429);
INSERT INTO `utils_role_access` VALUES (1715, 'Update', 429);
INSERT INTO `utils_role_access` VALUES (1716, 'Delete', 429);
INSERT INTO `utils_role_access` VALUES (1717, 'Create', 430);
INSERT INTO `utils_role_access` VALUES (1718, 'View', 430);
INSERT INTO `utils_role_access` VALUES (1719, 'Update', 430);
INSERT INTO `utils_role_access` VALUES (1720, 'Delete', 430);
INSERT INTO `utils_role_access` VALUES (1721, 'Create', 431);
INSERT INTO `utils_role_access` VALUES (1722, 'View', 431);
INSERT INTO `utils_role_access` VALUES (1723, 'Update', 431);
INSERT INTO `utils_role_access` VALUES (1724, 'Delete', 431);
INSERT INTO `utils_role_access` VALUES (1725, 'Create', 432);
INSERT INTO `utils_role_access` VALUES (1726, 'View', 432);
INSERT INTO `utils_role_access` VALUES (1727, 'Update', 432);
INSERT INTO `utils_role_access` VALUES (1728, 'Delete', 432);
INSERT INTO `utils_role_access` VALUES (1729, 'Create', 433);
INSERT INTO `utils_role_access` VALUES (1730, 'View', 433);
INSERT INTO `utils_role_access` VALUES (1731, 'Update', 433);
INSERT INTO `utils_role_access` VALUES (1732, 'Delete', 433);
INSERT INTO `utils_role_access` VALUES (1733, 'Create', 434);
INSERT INTO `utils_role_access` VALUES (1734, 'View', 434);
INSERT INTO `utils_role_access` VALUES (1735, 'Update', 434);
INSERT INTO `utils_role_access` VALUES (1736, 'Delete', 434);
INSERT INTO `utils_role_access` VALUES (1737, 'Create', 435);
INSERT INTO `utils_role_access` VALUES (1738, 'View', 435);
INSERT INTO `utils_role_access` VALUES (1739, 'Update', 435);
INSERT INTO `utils_role_access` VALUES (1740, 'Delete', 435);
INSERT INTO `utils_role_access` VALUES (1741, 'Create', 436);
INSERT INTO `utils_role_access` VALUES (1742, 'View', 436);
INSERT INTO `utils_role_access` VALUES (1743, 'Update', 436);
INSERT INTO `utils_role_access` VALUES (1744, 'Delete', 436);
INSERT INTO `utils_role_access` VALUES (1745, 'Create', 437);
INSERT INTO `utils_role_access` VALUES (1746, 'View', 437);
INSERT INTO `utils_role_access` VALUES (1747, 'Update', 437);
INSERT INTO `utils_role_access` VALUES (1748, 'Delete', 437);
INSERT INTO `utils_role_access` VALUES (1749, 'Create', 438);
INSERT INTO `utils_role_access` VALUES (1750, 'View', 438);
INSERT INTO `utils_role_access` VALUES (1751, 'Update', 438);
INSERT INTO `utils_role_access` VALUES (1752, 'Delete', 438);
INSERT INTO `utils_role_access` VALUES (1753, 'Create', 439);
INSERT INTO `utils_role_access` VALUES (1754, 'View', 439);
INSERT INTO `utils_role_access` VALUES (1755, 'Update', 439);
INSERT INTO `utils_role_access` VALUES (1756, 'Delete', 439);
INSERT INTO `utils_role_access` VALUES (1757, 'Create', 440);
INSERT INTO `utils_role_access` VALUES (1758, 'View', 440);
INSERT INTO `utils_role_access` VALUES (1759, 'Update', 440);
INSERT INTO `utils_role_access` VALUES (1760, 'Delete', 440);
INSERT INTO `utils_role_access` VALUES (1761, 'Create', 441);
INSERT INTO `utils_role_access` VALUES (1762, 'View', 441);
INSERT INTO `utils_role_access` VALUES (1763, 'Update', 441);
INSERT INTO `utils_role_access` VALUES (1764, 'Delete', 441);
INSERT INTO `utils_role_access` VALUES (1765, 'Create', 442);
INSERT INTO `utils_role_access` VALUES (1766, 'View', 442);
INSERT INTO `utils_role_access` VALUES (1767, 'Update', 442);
INSERT INTO `utils_role_access` VALUES (1768, 'Delete', 442);
INSERT INTO `utils_role_access` VALUES (1769, 'Create', 443);
INSERT INTO `utils_role_access` VALUES (1770, 'View', 443);
INSERT INTO `utils_role_access` VALUES (1771, 'Update', 443);
INSERT INTO `utils_role_access` VALUES (1772, 'Delete', 443);
INSERT INTO `utils_role_access` VALUES (1773, 'Create', 444);
INSERT INTO `utils_role_access` VALUES (1774, 'View', 444);
INSERT INTO `utils_role_access` VALUES (1775, 'Update', 444);
INSERT INTO `utils_role_access` VALUES (1776, 'Delete', 444);
INSERT INTO `utils_role_access` VALUES (1777, 'Create', 445);
INSERT INTO `utils_role_access` VALUES (1778, 'View', 445);
INSERT INTO `utils_role_access` VALUES (1779, 'Update', 445);
INSERT INTO `utils_role_access` VALUES (1780, 'Delete', 445);
INSERT INTO `utils_role_access` VALUES (1781, 'Create', 446);
INSERT INTO `utils_role_access` VALUES (1782, 'View', 446);
INSERT INTO `utils_role_access` VALUES (1783, 'Update', 446);
INSERT INTO `utils_role_access` VALUES (1784, 'Delete', 446);
INSERT INTO `utils_role_access` VALUES (1785, 'Create', 447);
INSERT INTO `utils_role_access` VALUES (1786, 'View', 447);
INSERT INTO `utils_role_access` VALUES (1787, 'Update', 447);
INSERT INTO `utils_role_access` VALUES (1788, 'Delete', 447);
INSERT INTO `utils_role_access` VALUES (1789, 'Create', 448);
INSERT INTO `utils_role_access` VALUES (1790, 'View', 448);
INSERT INTO `utils_role_access` VALUES (1791, 'Update', 448);
INSERT INTO `utils_role_access` VALUES (1792, 'Delete', 448);
INSERT INTO `utils_role_access` VALUES (1793, 'Create', 449);
INSERT INTO `utils_role_access` VALUES (1794, 'View', 449);
INSERT INTO `utils_role_access` VALUES (1795, 'Update', 449);
INSERT INTO `utils_role_access` VALUES (1796, 'Delete', 449);
INSERT INTO `utils_role_access` VALUES (1797, 'Create', 450);
INSERT INTO `utils_role_access` VALUES (1798, 'View', 450);
INSERT INTO `utils_role_access` VALUES (1799, 'Update', 450);
INSERT INTO `utils_role_access` VALUES (1800, 'Delete', 450);
INSERT INTO `utils_role_access` VALUES (1921, 'Create', 481);
INSERT INTO `utils_role_access` VALUES (1922, 'View', 481);
INSERT INTO `utils_role_access` VALUES (1923, 'Update', 481);
INSERT INTO `utils_role_access` VALUES (1924, 'Delete', 481);
INSERT INTO `utils_role_access` VALUES (1925, 'Create', 482);
INSERT INTO `utils_role_access` VALUES (1926, 'View', 482);
INSERT INTO `utils_role_access` VALUES (1927, 'Update', 482);
INSERT INTO `utils_role_access` VALUES (1928, 'Delete', 482);
INSERT INTO `utils_role_access` VALUES (1929, 'Create', 483);
INSERT INTO `utils_role_access` VALUES (1930, 'View', 483);
INSERT INTO `utils_role_access` VALUES (1931, 'Update', 483);
INSERT INTO `utils_role_access` VALUES (1932, 'Delete', 483);
INSERT INTO `utils_role_access` VALUES (1933, 'Create', 484);
INSERT INTO `utils_role_access` VALUES (1934, 'View', 484);
INSERT INTO `utils_role_access` VALUES (1935, 'Update', 484);
INSERT INTO `utils_role_access` VALUES (1936, 'Delete', 484);
INSERT INTO `utils_role_access` VALUES (1937, 'Create', 485);
INSERT INTO `utils_role_access` VALUES (1938, 'View', 485);
INSERT INTO `utils_role_access` VALUES (1939, 'Update', 485);
INSERT INTO `utils_role_access` VALUES (1940, 'Delete', 485);
INSERT INTO `utils_role_access` VALUES (1941, 'Create', 486);
INSERT INTO `utils_role_access` VALUES (1942, 'View', 486);
INSERT INTO `utils_role_access` VALUES (1943, 'Update', 486);
INSERT INTO `utils_role_access` VALUES (1944, 'Delete', 486);
INSERT INTO `utils_role_access` VALUES (1945, 'Create', 487);
INSERT INTO `utils_role_access` VALUES (1946, 'View', 487);
INSERT INTO `utils_role_access` VALUES (1947, 'Update', 487);
INSERT INTO `utils_role_access` VALUES (1948, 'Delete', 487);
INSERT INTO `utils_role_access` VALUES (1949, 'Create', 488);
INSERT INTO `utils_role_access` VALUES (1950, 'View', 488);
INSERT INTO `utils_role_access` VALUES (1951, 'Update', 488);
INSERT INTO `utils_role_access` VALUES (1952, 'Delete', 488);
INSERT INTO `utils_role_access` VALUES (1953, 'Create', 489);
INSERT INTO `utils_role_access` VALUES (1954, 'View', 489);
INSERT INTO `utils_role_access` VALUES (1955, 'Update', 489);
INSERT INTO `utils_role_access` VALUES (1956, 'Delete', 489);
INSERT INTO `utils_role_access` VALUES (1957, 'Create', 490);
INSERT INTO `utils_role_access` VALUES (1958, 'View', 490);
INSERT INTO `utils_role_access` VALUES (1959, 'Update', 490);
INSERT INTO `utils_role_access` VALUES (1960, 'Delete', 490);
INSERT INTO `utils_role_access` VALUES (1961, 'Create', 491);
INSERT INTO `utils_role_access` VALUES (1962, 'View', 491);
INSERT INTO `utils_role_access` VALUES (1963, 'Update', 491);
INSERT INTO `utils_role_access` VALUES (1964, 'Delete', 491);
INSERT INTO `utils_role_access` VALUES (1965, 'Create', 492);
INSERT INTO `utils_role_access` VALUES (1966, 'View', 492);
INSERT INTO `utils_role_access` VALUES (1967, 'Update', 492);
INSERT INTO `utils_role_access` VALUES (1968, 'Delete', 492);
INSERT INTO `utils_role_access` VALUES (1969, 'Create', 493);
INSERT INTO `utils_role_access` VALUES (1970, 'View', 493);
INSERT INTO `utils_role_access` VALUES (1971, 'Update', 493);
INSERT INTO `utils_role_access` VALUES (1972, 'Delete', 493);
INSERT INTO `utils_role_access` VALUES (1973, 'Create', 494);
INSERT INTO `utils_role_access` VALUES (1974, 'View', 494);
INSERT INTO `utils_role_access` VALUES (1975, 'Update', 494);
INSERT INTO `utils_role_access` VALUES (1976, 'Delete', 494);
INSERT INTO `utils_role_access` VALUES (1977, 'Create', 495);
INSERT INTO `utils_role_access` VALUES (1978, 'View', 495);
INSERT INTO `utils_role_access` VALUES (1979, 'Update', 495);
INSERT INTO `utils_role_access` VALUES (1980, 'Delete', 495);
INSERT INTO `utils_role_access` VALUES (1981, 'Create', 496);
INSERT INTO `utils_role_access` VALUES (1982, 'View', 496);
INSERT INTO `utils_role_access` VALUES (1983, 'Update', 496);
INSERT INTO `utils_role_access` VALUES (1984, 'Delete', 496);
INSERT INTO `utils_role_access` VALUES (1985, 'Create', 497);
INSERT INTO `utils_role_access` VALUES (1986, 'View', 497);
INSERT INTO `utils_role_access` VALUES (1987, 'Update', 497);
INSERT INTO `utils_role_access` VALUES (1988, 'Delete', 497);
INSERT INTO `utils_role_access` VALUES (1989, 'Create', 498);
INSERT INTO `utils_role_access` VALUES (1990, 'View', 498);
INSERT INTO `utils_role_access` VALUES (1991, 'Update', 498);
INSERT INTO `utils_role_access` VALUES (1992, 'Delete', 498);
INSERT INTO `utils_role_access` VALUES (1993, 'Create', 499);
INSERT INTO `utils_role_access` VALUES (1994, 'View', 499);
INSERT INTO `utils_role_access` VALUES (1995, 'Update', 499);
INSERT INTO `utils_role_access` VALUES (1996, 'Delete', 499);
INSERT INTO `utils_role_access` VALUES (1997, 'Create', 500);
INSERT INTO `utils_role_access` VALUES (1998, 'View', 500);
INSERT INTO `utils_role_access` VALUES (1999, 'Update', 500);
INSERT INTO `utils_role_access` VALUES (2000, 'Delete', 500);
INSERT INTO `utils_role_access` VALUES (2001, 'Create', 501);
INSERT INTO `utils_role_access` VALUES (2002, 'View', 501);
INSERT INTO `utils_role_access` VALUES (2003, 'Update', 501);
INSERT INTO `utils_role_access` VALUES (2004, 'Delete', 501);
INSERT INTO `utils_role_access` VALUES (2005, 'Create', 502);
INSERT INTO `utils_role_access` VALUES (2006, 'View', 502);
INSERT INTO `utils_role_access` VALUES (2007, 'Update', 502);
INSERT INTO `utils_role_access` VALUES (2008, 'Delete', 502);
INSERT INTO `utils_role_access` VALUES (2009, 'Create', 503);
INSERT INTO `utils_role_access` VALUES (2010, 'View', 503);
INSERT INTO `utils_role_access` VALUES (2011, 'Update', 503);
INSERT INTO `utils_role_access` VALUES (2012, 'Delete', 503);
INSERT INTO `utils_role_access` VALUES (2013, 'Create', 504);
INSERT INTO `utils_role_access` VALUES (2014, 'View', 504);
INSERT INTO `utils_role_access` VALUES (2015, 'Update', 504);
INSERT INTO `utils_role_access` VALUES (2016, 'Delete', 504);
INSERT INTO `utils_role_access` VALUES (2017, 'Create', 505);
INSERT INTO `utils_role_access` VALUES (2018, 'View', 505);
INSERT INTO `utils_role_access` VALUES (2019, 'Update', 505);
INSERT INTO `utils_role_access` VALUES (2020, 'Delete', 505);
INSERT INTO `utils_role_access` VALUES (2021, 'Create', 506);
INSERT INTO `utils_role_access` VALUES (2022, 'View', 506);
INSERT INTO `utils_role_access` VALUES (2023, 'Update', 506);
INSERT INTO `utils_role_access` VALUES (2024, 'Delete', 506);
INSERT INTO `utils_role_access` VALUES (2025, 'Create', 507);
INSERT INTO `utils_role_access` VALUES (2026, 'View', 507);
INSERT INTO `utils_role_access` VALUES (2027, 'Update', 507);
INSERT INTO `utils_role_access` VALUES (2028, 'Delete', 507);
INSERT INTO `utils_role_access` VALUES (2029, 'Create', 508);
INSERT INTO `utils_role_access` VALUES (2030, 'View', 508);
INSERT INTO `utils_role_access` VALUES (2031, 'Update', 508);
INSERT INTO `utils_role_access` VALUES (2032, 'Delete', 508);
INSERT INTO `utils_role_access` VALUES (2033, 'Create', 509);
INSERT INTO `utils_role_access` VALUES (2034, 'View', 509);
INSERT INTO `utils_role_access` VALUES (2035, 'Update', 509);
INSERT INTO `utils_role_access` VALUES (2036, 'Delete', 509);
INSERT INTO `utils_role_access` VALUES (2037, 'Create', 510);
INSERT INTO `utils_role_access` VALUES (2038, 'View', 510);
INSERT INTO `utils_role_access` VALUES (2039, 'Update', 510);
INSERT INTO `utils_role_access` VALUES (2040, 'Delete', 510);
INSERT INTO `utils_role_access` VALUES (2041, 'Create', 511);
INSERT INTO `utils_role_access` VALUES (2042, 'View', 511);
INSERT INTO `utils_role_access` VALUES (2043, 'Update', 511);
INSERT INTO `utils_role_access` VALUES (2044, 'Delete', 511);
INSERT INTO `utils_role_access` VALUES (2045, 'Create', 512);
INSERT INTO `utils_role_access` VALUES (2046, 'View', 512);
INSERT INTO `utils_role_access` VALUES (2047, 'Update', 512);
INSERT INTO `utils_role_access` VALUES (2048, 'Delete', 512);
INSERT INTO `utils_role_access` VALUES (2049, 'Create', 513);
INSERT INTO `utils_role_access` VALUES (2050, 'View', 513);
INSERT INTO `utils_role_access` VALUES (2051, 'Update', 513);
INSERT INTO `utils_role_access` VALUES (2052, 'Delete', 513);
INSERT INTO `utils_role_access` VALUES (2053, 'Create', 514);
INSERT INTO `utils_role_access` VALUES (2054, 'View', 514);
INSERT INTO `utils_role_access` VALUES (2055, 'Update', 514);
INSERT INTO `utils_role_access` VALUES (2056, 'Delete', 514);
INSERT INTO `utils_role_access` VALUES (2057, 'Create', 515);
INSERT INTO `utils_role_access` VALUES (2058, 'View', 515);
INSERT INTO `utils_role_access` VALUES (2059, 'Update', 515);
INSERT INTO `utils_role_access` VALUES (2060, 'Delete', 515);
INSERT INTO `utils_role_access` VALUES (2061, 'Create', 516);
INSERT INTO `utils_role_access` VALUES (2062, 'View', 516);
INSERT INTO `utils_role_access` VALUES (2063, 'Update', 516);
INSERT INTO `utils_role_access` VALUES (2064, 'Delete', 516);
INSERT INTO `utils_role_access` VALUES (2065, 'Create', 517);
INSERT INTO `utils_role_access` VALUES (2066, 'View', 517);
INSERT INTO `utils_role_access` VALUES (2067, 'Update', 517);
INSERT INTO `utils_role_access` VALUES (2068, 'Delete', 517);
INSERT INTO `utils_role_access` VALUES (2069, 'Create', 518);
INSERT INTO `utils_role_access` VALUES (2070, 'View', 518);
INSERT INTO `utils_role_access` VALUES (2071, 'Update', 518);
INSERT INTO `utils_role_access` VALUES (2072, 'Delete', 518);
INSERT INTO `utils_role_access` VALUES (2073, 'Create', 519);
INSERT INTO `utils_role_access` VALUES (2074, 'View', 519);
INSERT INTO `utils_role_access` VALUES (2075, 'Update', 519);
INSERT INTO `utils_role_access` VALUES (2076, 'Delete', 519);
INSERT INTO `utils_role_access` VALUES (2077, 'Create', 520);
INSERT INTO `utils_role_access` VALUES (2078, 'View', 520);
INSERT INTO `utils_role_access` VALUES (2079, 'Update', 520);
INSERT INTO `utils_role_access` VALUES (2080, 'Delete', 520);
INSERT INTO `utils_role_access` VALUES (2081, 'Create', 521);
INSERT INTO `utils_role_access` VALUES (2082, 'View', 521);
INSERT INTO `utils_role_access` VALUES (2083, 'Update', 521);
INSERT INTO `utils_role_access` VALUES (2084, 'Delete', 521);
INSERT INTO `utils_role_access` VALUES (2085, 'Create', 522);
INSERT INTO `utils_role_access` VALUES (2086, 'View', 522);
INSERT INTO `utils_role_access` VALUES (2087, 'Update', 522);
INSERT INTO `utils_role_access` VALUES (2088, 'Delete', 522);
INSERT INTO `utils_role_access` VALUES (2089, 'Create', 523);
INSERT INTO `utils_role_access` VALUES (2090, 'View', 523);
INSERT INTO `utils_role_access` VALUES (2091, 'Update', 523);
INSERT INTO `utils_role_access` VALUES (2092, 'Delete', 523);
INSERT INTO `utils_role_access` VALUES (2093, 'Create', 524);
INSERT INTO `utils_role_access` VALUES (2094, 'View', 524);
INSERT INTO `utils_role_access` VALUES (2095, 'Update', 524);
INSERT INTO `utils_role_access` VALUES (2096, 'Delete', 524);
INSERT INTO `utils_role_access` VALUES (2097, 'Create', 525);
INSERT INTO `utils_role_access` VALUES (2098, 'View', 525);
INSERT INTO `utils_role_access` VALUES (2099, 'Update', 525);
INSERT INTO `utils_role_access` VALUES (2100, 'Delete', 525);
INSERT INTO `utils_role_access` VALUES (2101, 'Create', 526);
INSERT INTO `utils_role_access` VALUES (2102, 'View', 526);
INSERT INTO `utils_role_access` VALUES (2103, 'Update', 526);
INSERT INTO `utils_role_access` VALUES (2104, 'Delete', 526);
INSERT INTO `utils_role_access` VALUES (2105, 'Create', 527);
INSERT INTO `utils_role_access` VALUES (2106, 'View', 527);
INSERT INTO `utils_role_access` VALUES (2107, 'Update', 527);
INSERT INTO `utils_role_access` VALUES (2108, 'Delete', 527);
INSERT INTO `utils_role_access` VALUES (2109, 'Create', 528);
INSERT INTO `utils_role_access` VALUES (2110, 'View', 528);
INSERT INTO `utils_role_access` VALUES (2111, 'Update', 528);
INSERT INTO `utils_role_access` VALUES (2112, 'Delete', 528);
INSERT INTO `utils_role_access` VALUES (2113, 'Create', 529);
INSERT INTO `utils_role_access` VALUES (2114, 'View', 529);
INSERT INTO `utils_role_access` VALUES (2115, 'Update', 529);
INSERT INTO `utils_role_access` VALUES (2116, 'Delete', 529);
INSERT INTO `utils_role_access` VALUES (2117, 'Create', 530);
INSERT INTO `utils_role_access` VALUES (2118, 'View', 530);
INSERT INTO `utils_role_access` VALUES (2119, 'Update', 530);
INSERT INTO `utils_role_access` VALUES (2120, 'Delete', 530);
INSERT INTO `utils_role_access` VALUES (2121, 'Create', 531);
INSERT INTO `utils_role_access` VALUES (2122, 'View', 531);
INSERT INTO `utils_role_access` VALUES (2123, 'Update', 531);
INSERT INTO `utils_role_access` VALUES (2124, 'Delete', 531);
INSERT INTO `utils_role_access` VALUES (2125, 'Create', 532);
INSERT INTO `utils_role_access` VALUES (2126, 'View', 532);
INSERT INTO `utils_role_access` VALUES (2127, 'Update', 532);
INSERT INTO `utils_role_access` VALUES (2128, 'Delete', 532);
INSERT INTO `utils_role_access` VALUES (2129, 'Create', 533);
INSERT INTO `utils_role_access` VALUES (2130, 'View', 533);
INSERT INTO `utils_role_access` VALUES (2131, 'Update', 533);
INSERT INTO `utils_role_access` VALUES (2132, 'Delete', 533);
INSERT INTO `utils_role_access` VALUES (2133, 'Create', 534);
INSERT INTO `utils_role_access` VALUES (2134, 'View', 534);
INSERT INTO `utils_role_access` VALUES (2135, 'Update', 534);
INSERT INTO `utils_role_access` VALUES (2136, 'Delete', 534);
INSERT INTO `utils_role_access` VALUES (2137, 'Create', 535);
INSERT INTO `utils_role_access` VALUES (2138, 'View', 535);
INSERT INTO `utils_role_access` VALUES (2139, 'Update', 535);
INSERT INTO `utils_role_access` VALUES (2140, 'Delete', 535);
INSERT INTO `utils_role_access` VALUES (2141, 'Create', 536);
INSERT INTO `utils_role_access` VALUES (2142, 'View', 536);
INSERT INTO `utils_role_access` VALUES (2143, 'Update', 536);
INSERT INTO `utils_role_access` VALUES (2144, 'Delete', 536);
INSERT INTO `utils_role_access` VALUES (2145, 'Create', 537);
INSERT INTO `utils_role_access` VALUES (2146, 'View', 537);
INSERT INTO `utils_role_access` VALUES (2147, 'Update', 537);
INSERT INTO `utils_role_access` VALUES (2148, 'Delete', 537);
INSERT INTO `utils_role_access` VALUES (2149, 'Create', 538);
INSERT INTO `utils_role_access` VALUES (2150, 'View', 538);
INSERT INTO `utils_role_access` VALUES (2151, 'Update', 538);
INSERT INTO `utils_role_access` VALUES (2152, 'Delete', 538);
INSERT INTO `utils_role_access` VALUES (2153, 'Create', 539);
INSERT INTO `utils_role_access` VALUES (2154, 'View', 539);
INSERT INTO `utils_role_access` VALUES (2155, 'Update', 539);
INSERT INTO `utils_role_access` VALUES (2156, 'Delete', 539);
INSERT INTO `utils_role_access` VALUES (2157, 'Create', 540);
INSERT INTO `utils_role_access` VALUES (2158, 'View', 540);
INSERT INTO `utils_role_access` VALUES (2159, 'Update', 540);
INSERT INTO `utils_role_access` VALUES (2160, 'Delete', 540);
INSERT INTO `utils_role_access` VALUES (2171, 'Create', 542);
INSERT INTO `utils_role_access` VALUES (2172, 'View', 543);
INSERT INTO `utils_role_access` VALUES (2181, 'Create', 550);
INSERT INTO `utils_role_access` VALUES (2182, 'View', 550);
INSERT INTO `utils_role_access` VALUES (2183, 'Update', 550);
INSERT INTO `utils_role_access` VALUES (2184, 'Delete', 550);

-- ----------------------------
-- Table structure for utils_role_access_uptd
-- ----------------------------
DROP TABLE IF EXISTS `utils_role_access_uptd`;
CREATE TABLE `utils_role_access_uptd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uptd_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `master_grant_role_aplikasi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fr11`(`master_grant_role_aplikasi_id`) USING BTREE,
  CONSTRAINT `fr11` FOREIGN KEY (`master_grant_role_aplikasi_id`) REFERENCES `master_grant_role_aplikasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3260 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_role_access_uptd
-- ----------------------------
INSERT INTO `utils_role_access_uptd` VALUES (1, '1', 1);
INSERT INTO `utils_role_access_uptd` VALUES (2, '2', 1);
INSERT INTO `utils_role_access_uptd` VALUES (3, '3', 1);
INSERT INTO `utils_role_access_uptd` VALUES (4, '4', 1);
INSERT INTO `utils_role_access_uptd` VALUES (5, '5', 1);
INSERT INTO `utils_role_access_uptd` VALUES (6, '6', 1);
INSERT INTO `utils_role_access_uptd` VALUES (7, '1', 2);
INSERT INTO `utils_role_access_uptd` VALUES (8, '2', 2);
INSERT INTO `utils_role_access_uptd` VALUES (9, '3', 2);
INSERT INTO `utils_role_access_uptd` VALUES (10, '4', 2);
INSERT INTO `utils_role_access_uptd` VALUES (11, '5', 2);
INSERT INTO `utils_role_access_uptd` VALUES (12, '6', 2);
INSERT INTO `utils_role_access_uptd` VALUES (13, '1', 3);
INSERT INTO `utils_role_access_uptd` VALUES (14, '2', 3);
INSERT INTO `utils_role_access_uptd` VALUES (15, '3', 3);
INSERT INTO `utils_role_access_uptd` VALUES (16, '4', 3);
INSERT INTO `utils_role_access_uptd` VALUES (17, '5', 3);
INSERT INTO `utils_role_access_uptd` VALUES (18, '6', 3);
INSERT INTO `utils_role_access_uptd` VALUES (19, '1', 4);
INSERT INTO `utils_role_access_uptd` VALUES (20, '2', 4);
INSERT INTO `utils_role_access_uptd` VALUES (21, '3', 4);
INSERT INTO `utils_role_access_uptd` VALUES (22, '4', 4);
INSERT INTO `utils_role_access_uptd` VALUES (23, '5', 4);
INSERT INTO `utils_role_access_uptd` VALUES (24, '6', 4);
INSERT INTO `utils_role_access_uptd` VALUES (25, '1', 5);
INSERT INTO `utils_role_access_uptd` VALUES (26, '2', 5);
INSERT INTO `utils_role_access_uptd` VALUES (27, '3', 5);
INSERT INTO `utils_role_access_uptd` VALUES (28, '4', 5);
INSERT INTO `utils_role_access_uptd` VALUES (29, '5', 5);
INSERT INTO `utils_role_access_uptd` VALUES (30, '6', 5);
INSERT INTO `utils_role_access_uptd` VALUES (31, '1', 6);
INSERT INTO `utils_role_access_uptd` VALUES (32, '2', 6);
INSERT INTO `utils_role_access_uptd` VALUES (33, '3', 6);
INSERT INTO `utils_role_access_uptd` VALUES (34, '4', 6);
INSERT INTO `utils_role_access_uptd` VALUES (35, '5', 6);
INSERT INTO `utils_role_access_uptd` VALUES (36, '6', 6);
INSERT INTO `utils_role_access_uptd` VALUES (37, '1', 7);
INSERT INTO `utils_role_access_uptd` VALUES (38, '2', 7);
INSERT INTO `utils_role_access_uptd` VALUES (39, '3', 7);
INSERT INTO `utils_role_access_uptd` VALUES (40, '4', 7);
INSERT INTO `utils_role_access_uptd` VALUES (41, '5', 7);
INSERT INTO `utils_role_access_uptd` VALUES (42, '6', 7);
INSERT INTO `utils_role_access_uptd` VALUES (43, '1', 8);
INSERT INTO `utils_role_access_uptd` VALUES (44, '2', 8);
INSERT INTO `utils_role_access_uptd` VALUES (45, '3', 8);
INSERT INTO `utils_role_access_uptd` VALUES (46, '4', 8);
INSERT INTO `utils_role_access_uptd` VALUES (47, '5', 8);
INSERT INTO `utils_role_access_uptd` VALUES (48, '6', 8);
INSERT INTO `utils_role_access_uptd` VALUES (49, '1', 9);
INSERT INTO `utils_role_access_uptd` VALUES (50, '2', 9);
INSERT INTO `utils_role_access_uptd` VALUES (51, '3', 9);
INSERT INTO `utils_role_access_uptd` VALUES (52, '4', 9);
INSERT INTO `utils_role_access_uptd` VALUES (53, '5', 9);
INSERT INTO `utils_role_access_uptd` VALUES (54, '6', 9);
INSERT INTO `utils_role_access_uptd` VALUES (55, '1', 10);
INSERT INTO `utils_role_access_uptd` VALUES (56, '2', 10);
INSERT INTO `utils_role_access_uptd` VALUES (57, '3', 10);
INSERT INTO `utils_role_access_uptd` VALUES (58, '4', 10);
INSERT INTO `utils_role_access_uptd` VALUES (59, '5', 10);
INSERT INTO `utils_role_access_uptd` VALUES (60, '6', 10);
INSERT INTO `utils_role_access_uptd` VALUES (61, '1', 11);
INSERT INTO `utils_role_access_uptd` VALUES (62, '2', 11);
INSERT INTO `utils_role_access_uptd` VALUES (63, '3', 11);
INSERT INTO `utils_role_access_uptd` VALUES (64, '4', 11);
INSERT INTO `utils_role_access_uptd` VALUES (65, '5', 11);
INSERT INTO `utils_role_access_uptd` VALUES (66, '6', 11);
INSERT INTO `utils_role_access_uptd` VALUES (67, '1', 12);
INSERT INTO `utils_role_access_uptd` VALUES (68, '2', 12);
INSERT INTO `utils_role_access_uptd` VALUES (69, '3', 12);
INSERT INTO `utils_role_access_uptd` VALUES (70, '4', 12);
INSERT INTO `utils_role_access_uptd` VALUES (71, '5', 12);
INSERT INTO `utils_role_access_uptd` VALUES (72, '6', 12);
INSERT INTO `utils_role_access_uptd` VALUES (73, '1', 13);
INSERT INTO `utils_role_access_uptd` VALUES (74, '2', 13);
INSERT INTO `utils_role_access_uptd` VALUES (75, '3', 13);
INSERT INTO `utils_role_access_uptd` VALUES (76, '4', 13);
INSERT INTO `utils_role_access_uptd` VALUES (77, '5', 13);
INSERT INTO `utils_role_access_uptd` VALUES (78, '6', 13);
INSERT INTO `utils_role_access_uptd` VALUES (79, '1', 14);
INSERT INTO `utils_role_access_uptd` VALUES (80, '2', 14);
INSERT INTO `utils_role_access_uptd` VALUES (81, '3', 14);
INSERT INTO `utils_role_access_uptd` VALUES (82, '4', 14);
INSERT INTO `utils_role_access_uptd` VALUES (83, '5', 14);
INSERT INTO `utils_role_access_uptd` VALUES (84, '6', 14);
INSERT INTO `utils_role_access_uptd` VALUES (85, '1', 15);
INSERT INTO `utils_role_access_uptd` VALUES (86, '2', 15);
INSERT INTO `utils_role_access_uptd` VALUES (87, '3', 15);
INSERT INTO `utils_role_access_uptd` VALUES (88, '4', 15);
INSERT INTO `utils_role_access_uptd` VALUES (89, '5', 15);
INSERT INTO `utils_role_access_uptd` VALUES (90, '6', 15);
INSERT INTO `utils_role_access_uptd` VALUES (91, '1', 16);
INSERT INTO `utils_role_access_uptd` VALUES (92, '2', 16);
INSERT INTO `utils_role_access_uptd` VALUES (93, '3', 16);
INSERT INTO `utils_role_access_uptd` VALUES (94, '4', 16);
INSERT INTO `utils_role_access_uptd` VALUES (95, '5', 16);
INSERT INTO `utils_role_access_uptd` VALUES (96, '6', 16);
INSERT INTO `utils_role_access_uptd` VALUES (97, '1', 17);
INSERT INTO `utils_role_access_uptd` VALUES (98, '2', 17);
INSERT INTO `utils_role_access_uptd` VALUES (99, '3', 17);
INSERT INTO `utils_role_access_uptd` VALUES (100, '4', 17);
INSERT INTO `utils_role_access_uptd` VALUES (101, '5', 17);
INSERT INTO `utils_role_access_uptd` VALUES (102, '6', 17);
INSERT INTO `utils_role_access_uptd` VALUES (103, '1', 18);
INSERT INTO `utils_role_access_uptd` VALUES (104, '2', 18);
INSERT INTO `utils_role_access_uptd` VALUES (105, '3', 18);
INSERT INTO `utils_role_access_uptd` VALUES (106, '4', 18);
INSERT INTO `utils_role_access_uptd` VALUES (107, '5', 18);
INSERT INTO `utils_role_access_uptd` VALUES (108, '6', 18);
INSERT INTO `utils_role_access_uptd` VALUES (109, '1', 19);
INSERT INTO `utils_role_access_uptd` VALUES (110, '2', 19);
INSERT INTO `utils_role_access_uptd` VALUES (111, '3', 19);
INSERT INTO `utils_role_access_uptd` VALUES (112, '4', 19);
INSERT INTO `utils_role_access_uptd` VALUES (113, '5', 19);
INSERT INTO `utils_role_access_uptd` VALUES (114, '6', 19);
INSERT INTO `utils_role_access_uptd` VALUES (115, '1', 20);
INSERT INTO `utils_role_access_uptd` VALUES (116, '2', 20);
INSERT INTO `utils_role_access_uptd` VALUES (117, '3', 20);
INSERT INTO `utils_role_access_uptd` VALUES (118, '4', 20);
INSERT INTO `utils_role_access_uptd` VALUES (119, '5', 20);
INSERT INTO `utils_role_access_uptd` VALUES (120, '6', 20);
INSERT INTO `utils_role_access_uptd` VALUES (121, '1', 21);
INSERT INTO `utils_role_access_uptd` VALUES (122, '2', 21);
INSERT INTO `utils_role_access_uptd` VALUES (123, '3', 21);
INSERT INTO `utils_role_access_uptd` VALUES (124, '4', 21);
INSERT INTO `utils_role_access_uptd` VALUES (125, '5', 21);
INSERT INTO `utils_role_access_uptd` VALUES (126, '6', 21);
INSERT INTO `utils_role_access_uptd` VALUES (127, '1', 22);
INSERT INTO `utils_role_access_uptd` VALUES (128, '2', 22);
INSERT INTO `utils_role_access_uptd` VALUES (129, '3', 22);
INSERT INTO `utils_role_access_uptd` VALUES (130, '4', 22);
INSERT INTO `utils_role_access_uptd` VALUES (131, '5', 22);
INSERT INTO `utils_role_access_uptd` VALUES (132, '6', 22);
INSERT INTO `utils_role_access_uptd` VALUES (133, '1', 23);
INSERT INTO `utils_role_access_uptd` VALUES (134, '2', 23);
INSERT INTO `utils_role_access_uptd` VALUES (135, '3', 23);
INSERT INTO `utils_role_access_uptd` VALUES (136, '4', 23);
INSERT INTO `utils_role_access_uptd` VALUES (137, '5', 23);
INSERT INTO `utils_role_access_uptd` VALUES (138, '6', 23);
INSERT INTO `utils_role_access_uptd` VALUES (139, '1', 24);
INSERT INTO `utils_role_access_uptd` VALUES (140, '2', 24);
INSERT INTO `utils_role_access_uptd` VALUES (141, '3', 24);
INSERT INTO `utils_role_access_uptd` VALUES (142, '4', 24);
INSERT INTO `utils_role_access_uptd` VALUES (143, '5', 24);
INSERT INTO `utils_role_access_uptd` VALUES (144, '6', 24);
INSERT INTO `utils_role_access_uptd` VALUES (145, '1', 25);
INSERT INTO `utils_role_access_uptd` VALUES (146, '2', 25);
INSERT INTO `utils_role_access_uptd` VALUES (147, '3', 25);
INSERT INTO `utils_role_access_uptd` VALUES (148, '4', 25);
INSERT INTO `utils_role_access_uptd` VALUES (149, '5', 25);
INSERT INTO `utils_role_access_uptd` VALUES (150, '6', 25);
INSERT INTO `utils_role_access_uptd` VALUES (151, '1', 26);
INSERT INTO `utils_role_access_uptd` VALUES (152, '2', 26);
INSERT INTO `utils_role_access_uptd` VALUES (153, '3', 26);
INSERT INTO `utils_role_access_uptd` VALUES (154, '4', 26);
INSERT INTO `utils_role_access_uptd` VALUES (155, '5', 26);
INSERT INTO `utils_role_access_uptd` VALUES (156, '6', 26);
INSERT INTO `utils_role_access_uptd` VALUES (157, '1', 27);
INSERT INTO `utils_role_access_uptd` VALUES (158, '2', 27);
INSERT INTO `utils_role_access_uptd` VALUES (159, '3', 27);
INSERT INTO `utils_role_access_uptd` VALUES (160, '4', 27);
INSERT INTO `utils_role_access_uptd` VALUES (161, '5', 27);
INSERT INTO `utils_role_access_uptd` VALUES (162, '6', 27);
INSERT INTO `utils_role_access_uptd` VALUES (163, '1', 28);
INSERT INTO `utils_role_access_uptd` VALUES (164, '2', 28);
INSERT INTO `utils_role_access_uptd` VALUES (165, '3', 28);
INSERT INTO `utils_role_access_uptd` VALUES (166, '4', 28);
INSERT INTO `utils_role_access_uptd` VALUES (167, '5', 28);
INSERT INTO `utils_role_access_uptd` VALUES (168, '6', 28);
INSERT INTO `utils_role_access_uptd` VALUES (169, '1', 29);
INSERT INTO `utils_role_access_uptd` VALUES (170, '2', 29);
INSERT INTO `utils_role_access_uptd` VALUES (171, '3', 29);
INSERT INTO `utils_role_access_uptd` VALUES (172, '4', 29);
INSERT INTO `utils_role_access_uptd` VALUES (173, '5', 29);
INSERT INTO `utils_role_access_uptd` VALUES (174, '6', 29);
INSERT INTO `utils_role_access_uptd` VALUES (175, '1', 30);
INSERT INTO `utils_role_access_uptd` VALUES (176, '2', 30);
INSERT INTO `utils_role_access_uptd` VALUES (177, '3', 30);
INSERT INTO `utils_role_access_uptd` VALUES (178, '4', 30);
INSERT INTO `utils_role_access_uptd` VALUES (179, '5', 30);
INSERT INTO `utils_role_access_uptd` VALUES (180, '6', 30);
INSERT INTO `utils_role_access_uptd` VALUES (181, '1', 31);
INSERT INTO `utils_role_access_uptd` VALUES (182, '2', 31);
INSERT INTO `utils_role_access_uptd` VALUES (183, '3', 31);
INSERT INTO `utils_role_access_uptd` VALUES (184, '4', 31);
INSERT INTO `utils_role_access_uptd` VALUES (185, '5', 31);
INSERT INTO `utils_role_access_uptd` VALUES (186, '6', 31);
INSERT INTO `utils_role_access_uptd` VALUES (187, '1', 32);
INSERT INTO `utils_role_access_uptd` VALUES (188, '2', 32);
INSERT INTO `utils_role_access_uptd` VALUES (189, '3', 32);
INSERT INTO `utils_role_access_uptd` VALUES (190, '4', 32);
INSERT INTO `utils_role_access_uptd` VALUES (191, '5', 32);
INSERT INTO `utils_role_access_uptd` VALUES (192, '6', 32);
INSERT INTO `utils_role_access_uptd` VALUES (193, '1', 33);
INSERT INTO `utils_role_access_uptd` VALUES (194, '2', 33);
INSERT INTO `utils_role_access_uptd` VALUES (195, '3', 33);
INSERT INTO `utils_role_access_uptd` VALUES (196, '4', 33);
INSERT INTO `utils_role_access_uptd` VALUES (197, '5', 33);
INSERT INTO `utils_role_access_uptd` VALUES (198, '6', 33);
INSERT INTO `utils_role_access_uptd` VALUES (199, '1', 34);
INSERT INTO `utils_role_access_uptd` VALUES (200, '2', 34);
INSERT INTO `utils_role_access_uptd` VALUES (201, '3', 34);
INSERT INTO `utils_role_access_uptd` VALUES (202, '4', 34);
INSERT INTO `utils_role_access_uptd` VALUES (203, '5', 34);
INSERT INTO `utils_role_access_uptd` VALUES (204, '6', 34);
INSERT INTO `utils_role_access_uptd` VALUES (205, '1', 35);
INSERT INTO `utils_role_access_uptd` VALUES (206, '2', 35);
INSERT INTO `utils_role_access_uptd` VALUES (207, '3', 35);
INSERT INTO `utils_role_access_uptd` VALUES (208, '4', 35);
INSERT INTO `utils_role_access_uptd` VALUES (209, '5', 35);
INSERT INTO `utils_role_access_uptd` VALUES (210, '6', 35);
INSERT INTO `utils_role_access_uptd` VALUES (211, '1', 36);
INSERT INTO `utils_role_access_uptd` VALUES (212, '2', 36);
INSERT INTO `utils_role_access_uptd` VALUES (213, '3', 36);
INSERT INTO `utils_role_access_uptd` VALUES (214, '4', 36);
INSERT INTO `utils_role_access_uptd` VALUES (215, '5', 36);
INSERT INTO `utils_role_access_uptd` VALUES (216, '6', 36);
INSERT INTO `utils_role_access_uptd` VALUES (217, '1', 37);
INSERT INTO `utils_role_access_uptd` VALUES (218, '2', 37);
INSERT INTO `utils_role_access_uptd` VALUES (219, '3', 37);
INSERT INTO `utils_role_access_uptd` VALUES (220, '4', 37);
INSERT INTO `utils_role_access_uptd` VALUES (221, '5', 37);
INSERT INTO `utils_role_access_uptd` VALUES (222, '6', 37);
INSERT INTO `utils_role_access_uptd` VALUES (223, '1', 38);
INSERT INTO `utils_role_access_uptd` VALUES (224, '2', 38);
INSERT INTO `utils_role_access_uptd` VALUES (225, '3', 38);
INSERT INTO `utils_role_access_uptd` VALUES (226, '4', 38);
INSERT INTO `utils_role_access_uptd` VALUES (227, '5', 38);
INSERT INTO `utils_role_access_uptd` VALUES (228, '6', 38);
INSERT INTO `utils_role_access_uptd` VALUES (229, '1', 39);
INSERT INTO `utils_role_access_uptd` VALUES (230, '2', 39);
INSERT INTO `utils_role_access_uptd` VALUES (231, '3', 39);
INSERT INTO `utils_role_access_uptd` VALUES (232, '4', 39);
INSERT INTO `utils_role_access_uptd` VALUES (233, '5', 39);
INSERT INTO `utils_role_access_uptd` VALUES (234, '6', 39);
INSERT INTO `utils_role_access_uptd` VALUES (235, '1', 40);
INSERT INTO `utils_role_access_uptd` VALUES (236, '2', 40);
INSERT INTO `utils_role_access_uptd` VALUES (237, '3', 40);
INSERT INTO `utils_role_access_uptd` VALUES (238, '4', 40);
INSERT INTO `utils_role_access_uptd` VALUES (239, '5', 40);
INSERT INTO `utils_role_access_uptd` VALUES (240, '6', 40);
INSERT INTO `utils_role_access_uptd` VALUES (241, '1', 41);
INSERT INTO `utils_role_access_uptd` VALUES (242, '2', 41);
INSERT INTO `utils_role_access_uptd` VALUES (243, '3', 41);
INSERT INTO `utils_role_access_uptd` VALUES (244, '4', 41);
INSERT INTO `utils_role_access_uptd` VALUES (245, '5', 41);
INSERT INTO `utils_role_access_uptd` VALUES (246, '6', 41);
INSERT INTO `utils_role_access_uptd` VALUES (247, '1', 42);
INSERT INTO `utils_role_access_uptd` VALUES (248, '2', 42);
INSERT INTO `utils_role_access_uptd` VALUES (249, '3', 42);
INSERT INTO `utils_role_access_uptd` VALUES (250, '4', 42);
INSERT INTO `utils_role_access_uptd` VALUES (251, '5', 42);
INSERT INTO `utils_role_access_uptd` VALUES (252, '6', 42);
INSERT INTO `utils_role_access_uptd` VALUES (253, '1', 43);
INSERT INTO `utils_role_access_uptd` VALUES (254, '2', 43);
INSERT INTO `utils_role_access_uptd` VALUES (255, '3', 43);
INSERT INTO `utils_role_access_uptd` VALUES (256, '4', 43);
INSERT INTO `utils_role_access_uptd` VALUES (257, '5', 43);
INSERT INTO `utils_role_access_uptd` VALUES (258, '6', 43);
INSERT INTO `utils_role_access_uptd` VALUES (259, '1', 44);
INSERT INTO `utils_role_access_uptd` VALUES (260, '2', 44);
INSERT INTO `utils_role_access_uptd` VALUES (261, '3', 44);
INSERT INTO `utils_role_access_uptd` VALUES (262, '4', 44);
INSERT INTO `utils_role_access_uptd` VALUES (263, '5', 44);
INSERT INTO `utils_role_access_uptd` VALUES (264, '6', 44);
INSERT INTO `utils_role_access_uptd` VALUES (265, '1', 45);
INSERT INTO `utils_role_access_uptd` VALUES (266, '2', 45);
INSERT INTO `utils_role_access_uptd` VALUES (267, '3', 45);
INSERT INTO `utils_role_access_uptd` VALUES (268, '4', 45);
INSERT INTO `utils_role_access_uptd` VALUES (269, '5', 45);
INSERT INTO `utils_role_access_uptd` VALUES (270, '6', 45);
INSERT INTO `utils_role_access_uptd` VALUES (271, '1', 46);
INSERT INTO `utils_role_access_uptd` VALUES (272, '2', 46);
INSERT INTO `utils_role_access_uptd` VALUES (273, '3', 46);
INSERT INTO `utils_role_access_uptd` VALUES (274, '4', 46);
INSERT INTO `utils_role_access_uptd` VALUES (275, '5', 46);
INSERT INTO `utils_role_access_uptd` VALUES (276, '6', 46);
INSERT INTO `utils_role_access_uptd` VALUES (277, '1', 47);
INSERT INTO `utils_role_access_uptd` VALUES (278, '2', 47);
INSERT INTO `utils_role_access_uptd` VALUES (279, '3', 47);
INSERT INTO `utils_role_access_uptd` VALUES (280, '4', 47);
INSERT INTO `utils_role_access_uptd` VALUES (281, '5', 47);
INSERT INTO `utils_role_access_uptd` VALUES (282, '6', 47);
INSERT INTO `utils_role_access_uptd` VALUES (283, '1', 48);
INSERT INTO `utils_role_access_uptd` VALUES (284, '2', 48);
INSERT INTO `utils_role_access_uptd` VALUES (285, '3', 48);
INSERT INTO `utils_role_access_uptd` VALUES (286, '4', 48);
INSERT INTO `utils_role_access_uptd` VALUES (287, '5', 48);
INSERT INTO `utils_role_access_uptd` VALUES (288, '6', 48);
INSERT INTO `utils_role_access_uptd` VALUES (289, '1', 49);
INSERT INTO `utils_role_access_uptd` VALUES (290, '2', 49);
INSERT INTO `utils_role_access_uptd` VALUES (291, '3', 49);
INSERT INTO `utils_role_access_uptd` VALUES (292, '4', 49);
INSERT INTO `utils_role_access_uptd` VALUES (293, '5', 49);
INSERT INTO `utils_role_access_uptd` VALUES (294, '6', 49);
INSERT INTO `utils_role_access_uptd` VALUES (295, '1', 50);
INSERT INTO `utils_role_access_uptd` VALUES (296, '2', 50);
INSERT INTO `utils_role_access_uptd` VALUES (297, '3', 50);
INSERT INTO `utils_role_access_uptd` VALUES (298, '4', 50);
INSERT INTO `utils_role_access_uptd` VALUES (299, '5', 50);
INSERT INTO `utils_role_access_uptd` VALUES (300, '6', 50);
INSERT INTO `utils_role_access_uptd` VALUES (301, '1', 51);
INSERT INTO `utils_role_access_uptd` VALUES (302, '2', 51);
INSERT INTO `utils_role_access_uptd` VALUES (303, '3', 51);
INSERT INTO `utils_role_access_uptd` VALUES (304, '4', 51);
INSERT INTO `utils_role_access_uptd` VALUES (305, '5', 51);
INSERT INTO `utils_role_access_uptd` VALUES (306, '6', 51);
INSERT INTO `utils_role_access_uptd` VALUES (307, '1', 52);
INSERT INTO `utils_role_access_uptd` VALUES (308, '2', 52);
INSERT INTO `utils_role_access_uptd` VALUES (309, '3', 52);
INSERT INTO `utils_role_access_uptd` VALUES (310, '4', 52);
INSERT INTO `utils_role_access_uptd` VALUES (311, '5', 52);
INSERT INTO `utils_role_access_uptd` VALUES (312, '6', 52);
INSERT INTO `utils_role_access_uptd` VALUES (313, '1', 53);
INSERT INTO `utils_role_access_uptd` VALUES (314, '2', 53);
INSERT INTO `utils_role_access_uptd` VALUES (315, '3', 53);
INSERT INTO `utils_role_access_uptd` VALUES (316, '4', 53);
INSERT INTO `utils_role_access_uptd` VALUES (317, '5', 53);
INSERT INTO `utils_role_access_uptd` VALUES (318, '6', 53);
INSERT INTO `utils_role_access_uptd` VALUES (319, '1', 54);
INSERT INTO `utils_role_access_uptd` VALUES (320, '2', 54);
INSERT INTO `utils_role_access_uptd` VALUES (321, '3', 54);
INSERT INTO `utils_role_access_uptd` VALUES (322, '4', 54);
INSERT INTO `utils_role_access_uptd` VALUES (323, '5', 54);
INSERT INTO `utils_role_access_uptd` VALUES (324, '6', 54);
INSERT INTO `utils_role_access_uptd` VALUES (325, '1', 55);
INSERT INTO `utils_role_access_uptd` VALUES (326, '2', 55);
INSERT INTO `utils_role_access_uptd` VALUES (327, '3', 55);
INSERT INTO `utils_role_access_uptd` VALUES (328, '4', 55);
INSERT INTO `utils_role_access_uptd` VALUES (329, '5', 55);
INSERT INTO `utils_role_access_uptd` VALUES (330, '6', 55);
INSERT INTO `utils_role_access_uptd` VALUES (331, '1', 56);
INSERT INTO `utils_role_access_uptd` VALUES (332, '2', 56);
INSERT INTO `utils_role_access_uptd` VALUES (333, '3', 56);
INSERT INTO `utils_role_access_uptd` VALUES (334, '4', 56);
INSERT INTO `utils_role_access_uptd` VALUES (335, '5', 56);
INSERT INTO `utils_role_access_uptd` VALUES (336, '6', 56);
INSERT INTO `utils_role_access_uptd` VALUES (337, '1', 57);
INSERT INTO `utils_role_access_uptd` VALUES (338, '2', 57);
INSERT INTO `utils_role_access_uptd` VALUES (339, '3', 57);
INSERT INTO `utils_role_access_uptd` VALUES (340, '4', 57);
INSERT INTO `utils_role_access_uptd` VALUES (341, '5', 57);
INSERT INTO `utils_role_access_uptd` VALUES (342, '6', 57);
INSERT INTO `utils_role_access_uptd` VALUES (343, '1', 58);
INSERT INTO `utils_role_access_uptd` VALUES (344, '2', 58);
INSERT INTO `utils_role_access_uptd` VALUES (345, '3', 58);
INSERT INTO `utils_role_access_uptd` VALUES (346, '4', 58);
INSERT INTO `utils_role_access_uptd` VALUES (347, '5', 58);
INSERT INTO `utils_role_access_uptd` VALUES (348, '6', 58);
INSERT INTO `utils_role_access_uptd` VALUES (349, '1', 59);
INSERT INTO `utils_role_access_uptd` VALUES (350, '2', 59);
INSERT INTO `utils_role_access_uptd` VALUES (351, '3', 59);
INSERT INTO `utils_role_access_uptd` VALUES (352, '4', 59);
INSERT INTO `utils_role_access_uptd` VALUES (353, '5', 59);
INSERT INTO `utils_role_access_uptd` VALUES (354, '6', 59);
INSERT INTO `utils_role_access_uptd` VALUES (355, '1', 60);
INSERT INTO `utils_role_access_uptd` VALUES (356, '2', 60);
INSERT INTO `utils_role_access_uptd` VALUES (357, '3', 60);
INSERT INTO `utils_role_access_uptd` VALUES (358, '4', 60);
INSERT INTO `utils_role_access_uptd` VALUES (359, '5', 60);
INSERT INTO `utils_role_access_uptd` VALUES (360, '6', 60);
INSERT INTO `utils_role_access_uptd` VALUES (361, '1', 61);
INSERT INTO `utils_role_access_uptd` VALUES (362, '2', 61);
INSERT INTO `utils_role_access_uptd` VALUES (363, '3', 61);
INSERT INTO `utils_role_access_uptd` VALUES (364, '4', 61);
INSERT INTO `utils_role_access_uptd` VALUES (365, '5', 61);
INSERT INTO `utils_role_access_uptd` VALUES (366, '6', 61);
INSERT INTO `utils_role_access_uptd` VALUES (367, '1', 62);
INSERT INTO `utils_role_access_uptd` VALUES (368, '2', 62);
INSERT INTO `utils_role_access_uptd` VALUES (369, '3', 62);
INSERT INTO `utils_role_access_uptd` VALUES (370, '4', 62);
INSERT INTO `utils_role_access_uptd` VALUES (371, '5', 62);
INSERT INTO `utils_role_access_uptd` VALUES (372, '6', 62);
INSERT INTO `utils_role_access_uptd` VALUES (373, '1', 63);
INSERT INTO `utils_role_access_uptd` VALUES (374, '2', 63);
INSERT INTO `utils_role_access_uptd` VALUES (375, '3', 63);
INSERT INTO `utils_role_access_uptd` VALUES (376, '4', 63);
INSERT INTO `utils_role_access_uptd` VALUES (377, '5', 63);
INSERT INTO `utils_role_access_uptd` VALUES (378, '6', 63);
INSERT INTO `utils_role_access_uptd` VALUES (379, '1', 64);
INSERT INTO `utils_role_access_uptd` VALUES (380, '2', 64);
INSERT INTO `utils_role_access_uptd` VALUES (381, '3', 64);
INSERT INTO `utils_role_access_uptd` VALUES (382, '4', 64);
INSERT INTO `utils_role_access_uptd` VALUES (383, '5', 64);
INSERT INTO `utils_role_access_uptd` VALUES (384, '6', 64);
INSERT INTO `utils_role_access_uptd` VALUES (385, '1', 65);
INSERT INTO `utils_role_access_uptd` VALUES (386, '2', 65);
INSERT INTO `utils_role_access_uptd` VALUES (387, '3', 65);
INSERT INTO `utils_role_access_uptd` VALUES (388, '4', 65);
INSERT INTO `utils_role_access_uptd` VALUES (389, '5', 65);
INSERT INTO `utils_role_access_uptd` VALUES (390, '6', 65);
INSERT INTO `utils_role_access_uptd` VALUES (391, '1', 66);
INSERT INTO `utils_role_access_uptd` VALUES (392, '2', 66);
INSERT INTO `utils_role_access_uptd` VALUES (393, '3', 66);
INSERT INTO `utils_role_access_uptd` VALUES (394, '4', 66);
INSERT INTO `utils_role_access_uptd` VALUES (395, '5', 66);
INSERT INTO `utils_role_access_uptd` VALUES (396, '6', 66);
INSERT INTO `utils_role_access_uptd` VALUES (397, '1', 67);
INSERT INTO `utils_role_access_uptd` VALUES (398, '2', 67);
INSERT INTO `utils_role_access_uptd` VALUES (399, '3', 67);
INSERT INTO `utils_role_access_uptd` VALUES (400, '4', 67);
INSERT INTO `utils_role_access_uptd` VALUES (401, '5', 67);
INSERT INTO `utils_role_access_uptd` VALUES (402, '6', 67);
INSERT INTO `utils_role_access_uptd` VALUES (403, '1', 68);
INSERT INTO `utils_role_access_uptd` VALUES (404, '2', 68);
INSERT INTO `utils_role_access_uptd` VALUES (405, '3', 68);
INSERT INTO `utils_role_access_uptd` VALUES (406, '4', 68);
INSERT INTO `utils_role_access_uptd` VALUES (407, '5', 68);
INSERT INTO `utils_role_access_uptd` VALUES (408, '6', 68);
INSERT INTO `utils_role_access_uptd` VALUES (409, '1', 69);
INSERT INTO `utils_role_access_uptd` VALUES (410, '2', 69);
INSERT INTO `utils_role_access_uptd` VALUES (411, '3', 69);
INSERT INTO `utils_role_access_uptd` VALUES (412, '4', 69);
INSERT INTO `utils_role_access_uptd` VALUES (413, '5', 69);
INSERT INTO `utils_role_access_uptd` VALUES (414, '6', 69);
INSERT INTO `utils_role_access_uptd` VALUES (415, '1', 70);
INSERT INTO `utils_role_access_uptd` VALUES (416, '2', 70);
INSERT INTO `utils_role_access_uptd` VALUES (417, '3', 70);
INSERT INTO `utils_role_access_uptd` VALUES (418, '4', 70);
INSERT INTO `utils_role_access_uptd` VALUES (419, '5', 70);
INSERT INTO `utils_role_access_uptd` VALUES (420, '6', 70);
INSERT INTO `utils_role_access_uptd` VALUES (421, '1', 71);
INSERT INTO `utils_role_access_uptd` VALUES (422, '2', 71);
INSERT INTO `utils_role_access_uptd` VALUES (423, '3', 71);
INSERT INTO `utils_role_access_uptd` VALUES (424, '4', 71);
INSERT INTO `utils_role_access_uptd` VALUES (425, '5', 71);
INSERT INTO `utils_role_access_uptd` VALUES (426, '6', 71);
INSERT INTO `utils_role_access_uptd` VALUES (427, '1', 72);
INSERT INTO `utils_role_access_uptd` VALUES (428, '2', 72);
INSERT INTO `utils_role_access_uptd` VALUES (429, '3', 72);
INSERT INTO `utils_role_access_uptd` VALUES (430, '4', 72);
INSERT INTO `utils_role_access_uptd` VALUES (431, '5', 72);
INSERT INTO `utils_role_access_uptd` VALUES (432, '6', 72);
INSERT INTO `utils_role_access_uptd` VALUES (433, '1', 73);
INSERT INTO `utils_role_access_uptd` VALUES (434, '2', 73);
INSERT INTO `utils_role_access_uptd` VALUES (435, '3', 73);
INSERT INTO `utils_role_access_uptd` VALUES (436, '4', 73);
INSERT INTO `utils_role_access_uptd` VALUES (437, '5', 73);
INSERT INTO `utils_role_access_uptd` VALUES (438, '6', 73);
INSERT INTO `utils_role_access_uptd` VALUES (439, '1', 74);
INSERT INTO `utils_role_access_uptd` VALUES (440, '2', 74);
INSERT INTO `utils_role_access_uptd` VALUES (441, '3', 74);
INSERT INTO `utils_role_access_uptd` VALUES (442, '4', 74);
INSERT INTO `utils_role_access_uptd` VALUES (443, '5', 74);
INSERT INTO `utils_role_access_uptd` VALUES (444, '6', 74);
INSERT INTO `utils_role_access_uptd` VALUES (445, '1', 75);
INSERT INTO `utils_role_access_uptd` VALUES (446, '2', 75);
INSERT INTO `utils_role_access_uptd` VALUES (447, '3', 75);
INSERT INTO `utils_role_access_uptd` VALUES (448, '4', 75);
INSERT INTO `utils_role_access_uptd` VALUES (449, '5', 75);
INSERT INTO `utils_role_access_uptd` VALUES (450, '6', 75);
INSERT INTO `utils_role_access_uptd` VALUES (451, '1', 76);
INSERT INTO `utils_role_access_uptd` VALUES (452, '2', 76);
INSERT INTO `utils_role_access_uptd` VALUES (453, '3', 76);
INSERT INTO `utils_role_access_uptd` VALUES (454, '4', 76);
INSERT INTO `utils_role_access_uptd` VALUES (455, '5', 76);
INSERT INTO `utils_role_access_uptd` VALUES (456, '6', 76);
INSERT INTO `utils_role_access_uptd` VALUES (457, '1', 77);
INSERT INTO `utils_role_access_uptd` VALUES (458, '2', 77);
INSERT INTO `utils_role_access_uptd` VALUES (459, '3', 77);
INSERT INTO `utils_role_access_uptd` VALUES (460, '4', 77);
INSERT INTO `utils_role_access_uptd` VALUES (461, '5', 77);
INSERT INTO `utils_role_access_uptd` VALUES (462, '6', 77);
INSERT INTO `utils_role_access_uptd` VALUES (463, '1', 78);
INSERT INTO `utils_role_access_uptd` VALUES (464, '2', 78);
INSERT INTO `utils_role_access_uptd` VALUES (465, '3', 78);
INSERT INTO `utils_role_access_uptd` VALUES (466, '4', 78);
INSERT INTO `utils_role_access_uptd` VALUES (467, '5', 78);
INSERT INTO `utils_role_access_uptd` VALUES (468, '6', 78);
INSERT INTO `utils_role_access_uptd` VALUES (469, '1', 79);
INSERT INTO `utils_role_access_uptd` VALUES (470, '2', 79);
INSERT INTO `utils_role_access_uptd` VALUES (471, '3', 79);
INSERT INTO `utils_role_access_uptd` VALUES (472, '4', 79);
INSERT INTO `utils_role_access_uptd` VALUES (473, '5', 79);
INSERT INTO `utils_role_access_uptd` VALUES (474, '6', 79);
INSERT INTO `utils_role_access_uptd` VALUES (475, '1', 80);
INSERT INTO `utils_role_access_uptd` VALUES (476, '2', 80);
INSERT INTO `utils_role_access_uptd` VALUES (477, '3', 80);
INSERT INTO `utils_role_access_uptd` VALUES (478, '4', 80);
INSERT INTO `utils_role_access_uptd` VALUES (479, '5', 80);
INSERT INTO `utils_role_access_uptd` VALUES (480, '6', 80);
INSERT INTO `utils_role_access_uptd` VALUES (481, '1', 81);
INSERT INTO `utils_role_access_uptd` VALUES (482, '2', 81);
INSERT INTO `utils_role_access_uptd` VALUES (483, '3', 81);
INSERT INTO `utils_role_access_uptd` VALUES (484, '4', 81);
INSERT INTO `utils_role_access_uptd` VALUES (485, '5', 81);
INSERT INTO `utils_role_access_uptd` VALUES (486, '6', 81);
INSERT INTO `utils_role_access_uptd` VALUES (487, '1', 82);
INSERT INTO `utils_role_access_uptd` VALUES (488, '2', 82);
INSERT INTO `utils_role_access_uptd` VALUES (489, '3', 82);
INSERT INTO `utils_role_access_uptd` VALUES (490, '4', 82);
INSERT INTO `utils_role_access_uptd` VALUES (491, '5', 82);
INSERT INTO `utils_role_access_uptd` VALUES (492, '6', 82);
INSERT INTO `utils_role_access_uptd` VALUES (493, '1', 83);
INSERT INTO `utils_role_access_uptd` VALUES (494, '2', 83);
INSERT INTO `utils_role_access_uptd` VALUES (495, '3', 83);
INSERT INTO `utils_role_access_uptd` VALUES (496, '4', 83);
INSERT INTO `utils_role_access_uptd` VALUES (497, '5', 83);
INSERT INTO `utils_role_access_uptd` VALUES (498, '6', 83);
INSERT INTO `utils_role_access_uptd` VALUES (499, '1', 84);
INSERT INTO `utils_role_access_uptd` VALUES (500, '2', 84);
INSERT INTO `utils_role_access_uptd` VALUES (501, '3', 84);
INSERT INTO `utils_role_access_uptd` VALUES (502, '4', 84);
INSERT INTO `utils_role_access_uptd` VALUES (503, '5', 84);
INSERT INTO `utils_role_access_uptd` VALUES (504, '6', 84);
INSERT INTO `utils_role_access_uptd` VALUES (505, '1', 85);
INSERT INTO `utils_role_access_uptd` VALUES (506, '2', 85);
INSERT INTO `utils_role_access_uptd` VALUES (507, '3', 85);
INSERT INTO `utils_role_access_uptd` VALUES (508, '4', 85);
INSERT INTO `utils_role_access_uptd` VALUES (509, '5', 85);
INSERT INTO `utils_role_access_uptd` VALUES (510, '6', 85);
INSERT INTO `utils_role_access_uptd` VALUES (511, '1', 86);
INSERT INTO `utils_role_access_uptd` VALUES (512, '2', 86);
INSERT INTO `utils_role_access_uptd` VALUES (513, '3', 86);
INSERT INTO `utils_role_access_uptd` VALUES (514, '4', 86);
INSERT INTO `utils_role_access_uptd` VALUES (515, '5', 86);
INSERT INTO `utils_role_access_uptd` VALUES (516, '6', 86);
INSERT INTO `utils_role_access_uptd` VALUES (517, '1', 87);
INSERT INTO `utils_role_access_uptd` VALUES (518, '2', 87);
INSERT INTO `utils_role_access_uptd` VALUES (519, '3', 87);
INSERT INTO `utils_role_access_uptd` VALUES (520, '4', 87);
INSERT INTO `utils_role_access_uptd` VALUES (521, '5', 87);
INSERT INTO `utils_role_access_uptd` VALUES (522, '6', 87);
INSERT INTO `utils_role_access_uptd` VALUES (523, '1', 88);
INSERT INTO `utils_role_access_uptd` VALUES (524, '2', 88);
INSERT INTO `utils_role_access_uptd` VALUES (525, '3', 88);
INSERT INTO `utils_role_access_uptd` VALUES (526, '4', 88);
INSERT INTO `utils_role_access_uptd` VALUES (527, '5', 88);
INSERT INTO `utils_role_access_uptd` VALUES (528, '6', 88);
INSERT INTO `utils_role_access_uptd` VALUES (529, '1', 89);
INSERT INTO `utils_role_access_uptd` VALUES (530, '2', 89);
INSERT INTO `utils_role_access_uptd` VALUES (531, '3', 89);
INSERT INTO `utils_role_access_uptd` VALUES (532, '4', 89);
INSERT INTO `utils_role_access_uptd` VALUES (533, '5', 89);
INSERT INTO `utils_role_access_uptd` VALUES (534, '6', 89);
INSERT INTO `utils_role_access_uptd` VALUES (535, '1', 90);
INSERT INTO `utils_role_access_uptd` VALUES (536, '2', 90);
INSERT INTO `utils_role_access_uptd` VALUES (537, '3', 90);
INSERT INTO `utils_role_access_uptd` VALUES (538, '4', 90);
INSERT INTO `utils_role_access_uptd` VALUES (539, '5', 90);
INSERT INTO `utils_role_access_uptd` VALUES (540, '6', 90);
INSERT INTO `utils_role_access_uptd` VALUES (541, '1', 91);
INSERT INTO `utils_role_access_uptd` VALUES (542, '2', 91);
INSERT INTO `utils_role_access_uptd` VALUES (543, '3', 91);
INSERT INTO `utils_role_access_uptd` VALUES (544, '4', 91);
INSERT INTO `utils_role_access_uptd` VALUES (545, '5', 91);
INSERT INTO `utils_role_access_uptd` VALUES (546, '6', 91);
INSERT INTO `utils_role_access_uptd` VALUES (547, '1', 92);
INSERT INTO `utils_role_access_uptd` VALUES (548, '2', 92);
INSERT INTO `utils_role_access_uptd` VALUES (549, '3', 92);
INSERT INTO `utils_role_access_uptd` VALUES (550, '4', 92);
INSERT INTO `utils_role_access_uptd` VALUES (551, '5', 92);
INSERT INTO `utils_role_access_uptd` VALUES (552, '6', 92);
INSERT INTO `utils_role_access_uptd` VALUES (553, '1', 93);
INSERT INTO `utils_role_access_uptd` VALUES (554, '2', 93);
INSERT INTO `utils_role_access_uptd` VALUES (555, '3', 93);
INSERT INTO `utils_role_access_uptd` VALUES (556, '4', 93);
INSERT INTO `utils_role_access_uptd` VALUES (557, '5', 93);
INSERT INTO `utils_role_access_uptd` VALUES (558, '6', 93);
INSERT INTO `utils_role_access_uptd` VALUES (559, '1', 94);
INSERT INTO `utils_role_access_uptd` VALUES (560, '2', 94);
INSERT INTO `utils_role_access_uptd` VALUES (561, '3', 94);
INSERT INTO `utils_role_access_uptd` VALUES (562, '4', 94);
INSERT INTO `utils_role_access_uptd` VALUES (563, '5', 94);
INSERT INTO `utils_role_access_uptd` VALUES (564, '6', 94);
INSERT INTO `utils_role_access_uptd` VALUES (565, '1', 95);
INSERT INTO `utils_role_access_uptd` VALUES (566, '2', 95);
INSERT INTO `utils_role_access_uptd` VALUES (567, '3', 95);
INSERT INTO `utils_role_access_uptd` VALUES (568, '4', 95);
INSERT INTO `utils_role_access_uptd` VALUES (569, '5', 95);
INSERT INTO `utils_role_access_uptd` VALUES (570, '6', 95);
INSERT INTO `utils_role_access_uptd` VALUES (571, '1', 96);
INSERT INTO `utils_role_access_uptd` VALUES (572, '2', 96);
INSERT INTO `utils_role_access_uptd` VALUES (573, '3', 96);
INSERT INTO `utils_role_access_uptd` VALUES (574, '4', 96);
INSERT INTO `utils_role_access_uptd` VALUES (575, '5', 96);
INSERT INTO `utils_role_access_uptd` VALUES (576, '6', 96);
INSERT INTO `utils_role_access_uptd` VALUES (577, '1', 97);
INSERT INTO `utils_role_access_uptd` VALUES (578, '2', 97);
INSERT INTO `utils_role_access_uptd` VALUES (579, '3', 97);
INSERT INTO `utils_role_access_uptd` VALUES (580, '4', 97);
INSERT INTO `utils_role_access_uptd` VALUES (581, '5', 97);
INSERT INTO `utils_role_access_uptd` VALUES (582, '6', 97);
INSERT INTO `utils_role_access_uptd` VALUES (583, '1', 98);
INSERT INTO `utils_role_access_uptd` VALUES (584, '2', 98);
INSERT INTO `utils_role_access_uptd` VALUES (585, '3', 98);
INSERT INTO `utils_role_access_uptd` VALUES (586, '4', 98);
INSERT INTO `utils_role_access_uptd` VALUES (587, '5', 98);
INSERT INTO `utils_role_access_uptd` VALUES (588, '6', 98);
INSERT INTO `utils_role_access_uptd` VALUES (589, '1', 99);
INSERT INTO `utils_role_access_uptd` VALUES (590, '2', 99);
INSERT INTO `utils_role_access_uptd` VALUES (591, '3', 99);
INSERT INTO `utils_role_access_uptd` VALUES (592, '4', 99);
INSERT INTO `utils_role_access_uptd` VALUES (593, '5', 99);
INSERT INTO `utils_role_access_uptd` VALUES (594, '6', 99);
INSERT INTO `utils_role_access_uptd` VALUES (595, '1', 100);
INSERT INTO `utils_role_access_uptd` VALUES (596, '2', 100);
INSERT INTO `utils_role_access_uptd` VALUES (597, '3', 100);
INSERT INTO `utils_role_access_uptd` VALUES (598, '4', 100);
INSERT INTO `utils_role_access_uptd` VALUES (599, '5', 100);
INSERT INTO `utils_role_access_uptd` VALUES (600, '6', 100);
INSERT INTO `utils_role_access_uptd` VALUES (601, '1', 101);
INSERT INTO `utils_role_access_uptd` VALUES (602, '2', 101);
INSERT INTO `utils_role_access_uptd` VALUES (603, '3', 101);
INSERT INTO `utils_role_access_uptd` VALUES (604, '4', 101);
INSERT INTO `utils_role_access_uptd` VALUES (605, '5', 101);
INSERT INTO `utils_role_access_uptd` VALUES (606, '6', 101);
INSERT INTO `utils_role_access_uptd` VALUES (607, '1', 102);
INSERT INTO `utils_role_access_uptd` VALUES (608, '2', 102);
INSERT INTO `utils_role_access_uptd` VALUES (609, '3', 102);
INSERT INTO `utils_role_access_uptd` VALUES (610, '4', 102);
INSERT INTO `utils_role_access_uptd` VALUES (611, '5', 102);
INSERT INTO `utils_role_access_uptd` VALUES (612, '6', 102);
INSERT INTO `utils_role_access_uptd` VALUES (613, '1', 103);
INSERT INTO `utils_role_access_uptd` VALUES (614, '2', 103);
INSERT INTO `utils_role_access_uptd` VALUES (615, '3', 103);
INSERT INTO `utils_role_access_uptd` VALUES (616, '4', 103);
INSERT INTO `utils_role_access_uptd` VALUES (617, '5', 103);
INSERT INTO `utils_role_access_uptd` VALUES (618, '6', 103);
INSERT INTO `utils_role_access_uptd` VALUES (619, '1', 104);
INSERT INTO `utils_role_access_uptd` VALUES (620, '2', 104);
INSERT INTO `utils_role_access_uptd` VALUES (621, '3', 104);
INSERT INTO `utils_role_access_uptd` VALUES (622, '4', 104);
INSERT INTO `utils_role_access_uptd` VALUES (623, '5', 104);
INSERT INTO `utils_role_access_uptd` VALUES (624, '6', 104);
INSERT INTO `utils_role_access_uptd` VALUES (625, '1', 105);
INSERT INTO `utils_role_access_uptd` VALUES (626, '2', 105);
INSERT INTO `utils_role_access_uptd` VALUES (627, '3', 105);
INSERT INTO `utils_role_access_uptd` VALUES (628, '4', 105);
INSERT INTO `utils_role_access_uptd` VALUES (629, '5', 105);
INSERT INTO `utils_role_access_uptd` VALUES (630, '6', 105);
INSERT INTO `utils_role_access_uptd` VALUES (631, '1', 106);
INSERT INTO `utils_role_access_uptd` VALUES (632, '2', 106);
INSERT INTO `utils_role_access_uptd` VALUES (633, '3', 106);
INSERT INTO `utils_role_access_uptd` VALUES (634, '4', 106);
INSERT INTO `utils_role_access_uptd` VALUES (635, '5', 106);
INSERT INTO `utils_role_access_uptd` VALUES (636, '6', 106);
INSERT INTO `utils_role_access_uptd` VALUES (637, '1', 107);
INSERT INTO `utils_role_access_uptd` VALUES (638, '2', 107);
INSERT INTO `utils_role_access_uptd` VALUES (639, '3', 107);
INSERT INTO `utils_role_access_uptd` VALUES (640, '4', 107);
INSERT INTO `utils_role_access_uptd` VALUES (641, '5', 107);
INSERT INTO `utils_role_access_uptd` VALUES (642, '6', 107);
INSERT INTO `utils_role_access_uptd` VALUES (643, '1', 108);
INSERT INTO `utils_role_access_uptd` VALUES (644, '2', 108);
INSERT INTO `utils_role_access_uptd` VALUES (645, '3', 108);
INSERT INTO `utils_role_access_uptd` VALUES (646, '4', 108);
INSERT INTO `utils_role_access_uptd` VALUES (647, '5', 108);
INSERT INTO `utils_role_access_uptd` VALUES (648, '6', 108);
INSERT INTO `utils_role_access_uptd` VALUES (649, '1', 109);
INSERT INTO `utils_role_access_uptd` VALUES (650, '2', 109);
INSERT INTO `utils_role_access_uptd` VALUES (651, '3', 109);
INSERT INTO `utils_role_access_uptd` VALUES (652, '4', 109);
INSERT INTO `utils_role_access_uptd` VALUES (653, '5', 109);
INSERT INTO `utils_role_access_uptd` VALUES (654, '6', 109);
INSERT INTO `utils_role_access_uptd` VALUES (655, '1', 110);
INSERT INTO `utils_role_access_uptd` VALUES (656, '2', 110);
INSERT INTO `utils_role_access_uptd` VALUES (657, '3', 110);
INSERT INTO `utils_role_access_uptd` VALUES (658, '4', 110);
INSERT INTO `utils_role_access_uptd` VALUES (659, '5', 110);
INSERT INTO `utils_role_access_uptd` VALUES (660, '6', 110);
INSERT INTO `utils_role_access_uptd` VALUES (661, '1', 111);
INSERT INTO `utils_role_access_uptd` VALUES (662, '2', 111);
INSERT INTO `utils_role_access_uptd` VALUES (663, '3', 111);
INSERT INTO `utils_role_access_uptd` VALUES (664, '4', 111);
INSERT INTO `utils_role_access_uptd` VALUES (665, '5', 111);
INSERT INTO `utils_role_access_uptd` VALUES (666, '6', 111);
INSERT INTO `utils_role_access_uptd` VALUES (667, '1', 112);
INSERT INTO `utils_role_access_uptd` VALUES (668, '2', 112);
INSERT INTO `utils_role_access_uptd` VALUES (669, '3', 112);
INSERT INTO `utils_role_access_uptd` VALUES (670, '4', 112);
INSERT INTO `utils_role_access_uptd` VALUES (671, '5', 112);
INSERT INTO `utils_role_access_uptd` VALUES (672, '6', 112);
INSERT INTO `utils_role_access_uptd` VALUES (673, '1', 113);
INSERT INTO `utils_role_access_uptd` VALUES (674, '2', 113);
INSERT INTO `utils_role_access_uptd` VALUES (675, '3', 113);
INSERT INTO `utils_role_access_uptd` VALUES (676, '4', 113);
INSERT INTO `utils_role_access_uptd` VALUES (677, '5', 113);
INSERT INTO `utils_role_access_uptd` VALUES (678, '6', 113);
INSERT INTO `utils_role_access_uptd` VALUES (679, '1', 114);
INSERT INTO `utils_role_access_uptd` VALUES (680, '2', 114);
INSERT INTO `utils_role_access_uptd` VALUES (681, '3', 114);
INSERT INTO `utils_role_access_uptd` VALUES (682, '4', 114);
INSERT INTO `utils_role_access_uptd` VALUES (683, '5', 114);
INSERT INTO `utils_role_access_uptd` VALUES (684, '6', 114);
INSERT INTO `utils_role_access_uptd` VALUES (685, '1', 115);
INSERT INTO `utils_role_access_uptd` VALUES (686, '2', 115);
INSERT INTO `utils_role_access_uptd` VALUES (687, '3', 115);
INSERT INTO `utils_role_access_uptd` VALUES (688, '4', 115);
INSERT INTO `utils_role_access_uptd` VALUES (689, '5', 115);
INSERT INTO `utils_role_access_uptd` VALUES (690, '6', 115);
INSERT INTO `utils_role_access_uptd` VALUES (691, '1', 116);
INSERT INTO `utils_role_access_uptd` VALUES (692, '2', 116);
INSERT INTO `utils_role_access_uptd` VALUES (693, '3', 116);
INSERT INTO `utils_role_access_uptd` VALUES (694, '4', 116);
INSERT INTO `utils_role_access_uptd` VALUES (695, '5', 116);
INSERT INTO `utils_role_access_uptd` VALUES (696, '6', 116);
INSERT INTO `utils_role_access_uptd` VALUES (697, '1', 117);
INSERT INTO `utils_role_access_uptd` VALUES (698, '2', 117);
INSERT INTO `utils_role_access_uptd` VALUES (699, '3', 117);
INSERT INTO `utils_role_access_uptd` VALUES (700, '4', 117);
INSERT INTO `utils_role_access_uptd` VALUES (701, '5', 117);
INSERT INTO `utils_role_access_uptd` VALUES (702, '6', 117);
INSERT INTO `utils_role_access_uptd` VALUES (703, '1', 118);
INSERT INTO `utils_role_access_uptd` VALUES (704, '2', 118);
INSERT INTO `utils_role_access_uptd` VALUES (705, '3', 118);
INSERT INTO `utils_role_access_uptd` VALUES (706, '4', 118);
INSERT INTO `utils_role_access_uptd` VALUES (707, '5', 118);
INSERT INTO `utils_role_access_uptd` VALUES (708, '6', 118);
INSERT INTO `utils_role_access_uptd` VALUES (709, '1', 119);
INSERT INTO `utils_role_access_uptd` VALUES (710, '2', 119);
INSERT INTO `utils_role_access_uptd` VALUES (711, '3', 119);
INSERT INTO `utils_role_access_uptd` VALUES (712, '4', 119);
INSERT INTO `utils_role_access_uptd` VALUES (713, '5', 119);
INSERT INTO `utils_role_access_uptd` VALUES (714, '6', 119);
INSERT INTO `utils_role_access_uptd` VALUES (715, '1', 120);
INSERT INTO `utils_role_access_uptd` VALUES (716, '2', 120);
INSERT INTO `utils_role_access_uptd` VALUES (717, '3', 120);
INSERT INTO `utils_role_access_uptd` VALUES (718, '4', 120);
INSERT INTO `utils_role_access_uptd` VALUES (719, '5', 120);
INSERT INTO `utils_role_access_uptd` VALUES (720, '6', 120);
INSERT INTO `utils_role_access_uptd` VALUES (721, '1', 121);
INSERT INTO `utils_role_access_uptd` VALUES (722, '2', 121);
INSERT INTO `utils_role_access_uptd` VALUES (723, '3', 121);
INSERT INTO `utils_role_access_uptd` VALUES (724, '4', 121);
INSERT INTO `utils_role_access_uptd` VALUES (725, '5', 121);
INSERT INTO `utils_role_access_uptd` VALUES (726, '6', 121);
INSERT INTO `utils_role_access_uptd` VALUES (727, '1', 122);
INSERT INTO `utils_role_access_uptd` VALUES (728, '2', 122);
INSERT INTO `utils_role_access_uptd` VALUES (729, '3', 122);
INSERT INTO `utils_role_access_uptd` VALUES (730, '4', 122);
INSERT INTO `utils_role_access_uptd` VALUES (731, '5', 122);
INSERT INTO `utils_role_access_uptd` VALUES (732, '6', 122);
INSERT INTO `utils_role_access_uptd` VALUES (733, '1', 123);
INSERT INTO `utils_role_access_uptd` VALUES (734, '2', 123);
INSERT INTO `utils_role_access_uptd` VALUES (735, '3', 123);
INSERT INTO `utils_role_access_uptd` VALUES (736, '4', 123);
INSERT INTO `utils_role_access_uptd` VALUES (737, '5', 123);
INSERT INTO `utils_role_access_uptd` VALUES (738, '6', 123);
INSERT INTO `utils_role_access_uptd` VALUES (739, '1', 124);
INSERT INTO `utils_role_access_uptd` VALUES (740, '2', 124);
INSERT INTO `utils_role_access_uptd` VALUES (741, '3', 124);
INSERT INTO `utils_role_access_uptd` VALUES (742, '4', 124);
INSERT INTO `utils_role_access_uptd` VALUES (743, '5', 124);
INSERT INTO `utils_role_access_uptd` VALUES (744, '6', 124);
INSERT INTO `utils_role_access_uptd` VALUES (745, '1', 125);
INSERT INTO `utils_role_access_uptd` VALUES (746, '2', 125);
INSERT INTO `utils_role_access_uptd` VALUES (747, '3', 125);
INSERT INTO `utils_role_access_uptd` VALUES (748, '4', 125);
INSERT INTO `utils_role_access_uptd` VALUES (749, '5', 125);
INSERT INTO `utils_role_access_uptd` VALUES (750, '6', 125);
INSERT INTO `utils_role_access_uptd` VALUES (751, '1', 126);
INSERT INTO `utils_role_access_uptd` VALUES (752, '2', 126);
INSERT INTO `utils_role_access_uptd` VALUES (753, '3', 126);
INSERT INTO `utils_role_access_uptd` VALUES (754, '4', 126);
INSERT INTO `utils_role_access_uptd` VALUES (755, '5', 126);
INSERT INTO `utils_role_access_uptd` VALUES (756, '6', 126);
INSERT INTO `utils_role_access_uptd` VALUES (757, '1', 127);
INSERT INTO `utils_role_access_uptd` VALUES (758, '2', 127);
INSERT INTO `utils_role_access_uptd` VALUES (759, '3', 127);
INSERT INTO `utils_role_access_uptd` VALUES (760, '4', 127);
INSERT INTO `utils_role_access_uptd` VALUES (761, '5', 127);
INSERT INTO `utils_role_access_uptd` VALUES (762, '6', 127);
INSERT INTO `utils_role_access_uptd` VALUES (763, '1', 128);
INSERT INTO `utils_role_access_uptd` VALUES (764, '2', 128);
INSERT INTO `utils_role_access_uptd` VALUES (765, '3', 128);
INSERT INTO `utils_role_access_uptd` VALUES (766, '4', 128);
INSERT INTO `utils_role_access_uptd` VALUES (767, '5', 128);
INSERT INTO `utils_role_access_uptd` VALUES (768, '6', 128);
INSERT INTO `utils_role_access_uptd` VALUES (769, '1', 129);
INSERT INTO `utils_role_access_uptd` VALUES (770, '2', 129);
INSERT INTO `utils_role_access_uptd` VALUES (771, '3', 129);
INSERT INTO `utils_role_access_uptd` VALUES (772, '4', 129);
INSERT INTO `utils_role_access_uptd` VALUES (773, '5', 129);
INSERT INTO `utils_role_access_uptd` VALUES (774, '6', 129);
INSERT INTO `utils_role_access_uptd` VALUES (775, '1', 130);
INSERT INTO `utils_role_access_uptd` VALUES (776, '2', 130);
INSERT INTO `utils_role_access_uptd` VALUES (777, '3', 130);
INSERT INTO `utils_role_access_uptd` VALUES (778, '4', 130);
INSERT INTO `utils_role_access_uptd` VALUES (779, '5', 130);
INSERT INTO `utils_role_access_uptd` VALUES (780, '6', 130);
INSERT INTO `utils_role_access_uptd` VALUES (781, '1', 131);
INSERT INTO `utils_role_access_uptd` VALUES (782, '2', 131);
INSERT INTO `utils_role_access_uptd` VALUES (783, '3', 131);
INSERT INTO `utils_role_access_uptd` VALUES (784, '4', 131);
INSERT INTO `utils_role_access_uptd` VALUES (785, '5', 131);
INSERT INTO `utils_role_access_uptd` VALUES (786, '6', 131);
INSERT INTO `utils_role_access_uptd` VALUES (787, '1', 132);
INSERT INTO `utils_role_access_uptd` VALUES (788, '2', 132);
INSERT INTO `utils_role_access_uptd` VALUES (789, '3', 132);
INSERT INTO `utils_role_access_uptd` VALUES (790, '4', 132);
INSERT INTO `utils_role_access_uptd` VALUES (791, '5', 132);
INSERT INTO `utils_role_access_uptd` VALUES (792, '6', 132);
INSERT INTO `utils_role_access_uptd` VALUES (793, '1', 133);
INSERT INTO `utils_role_access_uptd` VALUES (794, '2', 133);
INSERT INTO `utils_role_access_uptd` VALUES (795, '3', 133);
INSERT INTO `utils_role_access_uptd` VALUES (796, '4', 133);
INSERT INTO `utils_role_access_uptd` VALUES (797, '5', 133);
INSERT INTO `utils_role_access_uptd` VALUES (798, '6', 133);
INSERT INTO `utils_role_access_uptd` VALUES (799, '1', 134);
INSERT INTO `utils_role_access_uptd` VALUES (800, '2', 134);
INSERT INTO `utils_role_access_uptd` VALUES (801, '3', 134);
INSERT INTO `utils_role_access_uptd` VALUES (802, '4', 134);
INSERT INTO `utils_role_access_uptd` VALUES (803, '5', 134);
INSERT INTO `utils_role_access_uptd` VALUES (804, '6', 134);
INSERT INTO `utils_role_access_uptd` VALUES (805, '1', 135);
INSERT INTO `utils_role_access_uptd` VALUES (806, '2', 135);
INSERT INTO `utils_role_access_uptd` VALUES (807, '3', 135);
INSERT INTO `utils_role_access_uptd` VALUES (808, '4', 135);
INSERT INTO `utils_role_access_uptd` VALUES (809, '5', 135);
INSERT INTO `utils_role_access_uptd` VALUES (810, '6', 135);
INSERT INTO `utils_role_access_uptd` VALUES (811, '1', 136);
INSERT INTO `utils_role_access_uptd` VALUES (812, '2', 136);
INSERT INTO `utils_role_access_uptd` VALUES (813, '3', 136);
INSERT INTO `utils_role_access_uptd` VALUES (814, '4', 136);
INSERT INTO `utils_role_access_uptd` VALUES (815, '5', 136);
INSERT INTO `utils_role_access_uptd` VALUES (816, '6', 136);
INSERT INTO `utils_role_access_uptd` VALUES (817, '1', 137);
INSERT INTO `utils_role_access_uptd` VALUES (818, '2', 137);
INSERT INTO `utils_role_access_uptd` VALUES (819, '3', 137);
INSERT INTO `utils_role_access_uptd` VALUES (820, '4', 137);
INSERT INTO `utils_role_access_uptd` VALUES (821, '5', 137);
INSERT INTO `utils_role_access_uptd` VALUES (822, '6', 137);
INSERT INTO `utils_role_access_uptd` VALUES (823, '1', 138);
INSERT INTO `utils_role_access_uptd` VALUES (824, '2', 138);
INSERT INTO `utils_role_access_uptd` VALUES (825, '3', 138);
INSERT INTO `utils_role_access_uptd` VALUES (826, '4', 138);
INSERT INTO `utils_role_access_uptd` VALUES (827, '5', 138);
INSERT INTO `utils_role_access_uptd` VALUES (828, '6', 138);
INSERT INTO `utils_role_access_uptd` VALUES (829, '1', 139);
INSERT INTO `utils_role_access_uptd` VALUES (830, '2', 139);
INSERT INTO `utils_role_access_uptd` VALUES (831, '3', 139);
INSERT INTO `utils_role_access_uptd` VALUES (832, '4', 139);
INSERT INTO `utils_role_access_uptd` VALUES (833, '5', 139);
INSERT INTO `utils_role_access_uptd` VALUES (834, '6', 139);
INSERT INTO `utils_role_access_uptd` VALUES (835, '1', 140);
INSERT INTO `utils_role_access_uptd` VALUES (836, '2', 140);
INSERT INTO `utils_role_access_uptd` VALUES (837, '3', 140);
INSERT INTO `utils_role_access_uptd` VALUES (838, '4', 140);
INSERT INTO `utils_role_access_uptd` VALUES (839, '5', 140);
INSERT INTO `utils_role_access_uptd` VALUES (840, '6', 140);
INSERT INTO `utils_role_access_uptd` VALUES (841, '1', 141);
INSERT INTO `utils_role_access_uptd` VALUES (842, '2', 141);
INSERT INTO `utils_role_access_uptd` VALUES (843, '3', 141);
INSERT INTO `utils_role_access_uptd` VALUES (844, '4', 141);
INSERT INTO `utils_role_access_uptd` VALUES (845, '5', 141);
INSERT INTO `utils_role_access_uptd` VALUES (846, '6', 141);
INSERT INTO `utils_role_access_uptd` VALUES (847, '1', 142);
INSERT INTO `utils_role_access_uptd` VALUES (848, '2', 142);
INSERT INTO `utils_role_access_uptd` VALUES (849, '3', 142);
INSERT INTO `utils_role_access_uptd` VALUES (850, '4', 142);
INSERT INTO `utils_role_access_uptd` VALUES (851, '5', 142);
INSERT INTO `utils_role_access_uptd` VALUES (852, '6', 142);
INSERT INTO `utils_role_access_uptd` VALUES (853, '1', 143);
INSERT INTO `utils_role_access_uptd` VALUES (854, '2', 143);
INSERT INTO `utils_role_access_uptd` VALUES (855, '3', 143);
INSERT INTO `utils_role_access_uptd` VALUES (856, '4', 143);
INSERT INTO `utils_role_access_uptd` VALUES (857, '5', 143);
INSERT INTO `utils_role_access_uptd` VALUES (858, '6', 143);
INSERT INTO `utils_role_access_uptd` VALUES (859, '1', 144);
INSERT INTO `utils_role_access_uptd` VALUES (860, '2', 144);
INSERT INTO `utils_role_access_uptd` VALUES (861, '3', 144);
INSERT INTO `utils_role_access_uptd` VALUES (862, '4', 144);
INSERT INTO `utils_role_access_uptd` VALUES (863, '5', 144);
INSERT INTO `utils_role_access_uptd` VALUES (864, '6', 144);
INSERT INTO `utils_role_access_uptd` VALUES (865, '1', 145);
INSERT INTO `utils_role_access_uptd` VALUES (866, '2', 145);
INSERT INTO `utils_role_access_uptd` VALUES (867, '3', 145);
INSERT INTO `utils_role_access_uptd` VALUES (868, '4', 145);
INSERT INTO `utils_role_access_uptd` VALUES (869, '5', 145);
INSERT INTO `utils_role_access_uptd` VALUES (870, '6', 145);
INSERT INTO `utils_role_access_uptd` VALUES (871, '1', 146);
INSERT INTO `utils_role_access_uptd` VALUES (872, '2', 146);
INSERT INTO `utils_role_access_uptd` VALUES (873, '3', 146);
INSERT INTO `utils_role_access_uptd` VALUES (874, '4', 146);
INSERT INTO `utils_role_access_uptd` VALUES (875, '5', 146);
INSERT INTO `utils_role_access_uptd` VALUES (876, '6', 146);
INSERT INTO `utils_role_access_uptd` VALUES (877, '1', 147);
INSERT INTO `utils_role_access_uptd` VALUES (878, '2', 147);
INSERT INTO `utils_role_access_uptd` VALUES (879, '3', 147);
INSERT INTO `utils_role_access_uptd` VALUES (880, '4', 147);
INSERT INTO `utils_role_access_uptd` VALUES (881, '5', 147);
INSERT INTO `utils_role_access_uptd` VALUES (882, '6', 147);
INSERT INTO `utils_role_access_uptd` VALUES (883, '1', 148);
INSERT INTO `utils_role_access_uptd` VALUES (884, '2', 148);
INSERT INTO `utils_role_access_uptd` VALUES (885, '3', 148);
INSERT INTO `utils_role_access_uptd` VALUES (886, '4', 148);
INSERT INTO `utils_role_access_uptd` VALUES (887, '5', 148);
INSERT INTO `utils_role_access_uptd` VALUES (888, '6', 148);
INSERT INTO `utils_role_access_uptd` VALUES (889, '1', 149);
INSERT INTO `utils_role_access_uptd` VALUES (890, '2', 149);
INSERT INTO `utils_role_access_uptd` VALUES (891, '3', 149);
INSERT INTO `utils_role_access_uptd` VALUES (892, '4', 149);
INSERT INTO `utils_role_access_uptd` VALUES (893, '5', 149);
INSERT INTO `utils_role_access_uptd` VALUES (894, '6', 149);
INSERT INTO `utils_role_access_uptd` VALUES (895, '1', 150);
INSERT INTO `utils_role_access_uptd` VALUES (896, '2', 150);
INSERT INTO `utils_role_access_uptd` VALUES (897, '3', 150);
INSERT INTO `utils_role_access_uptd` VALUES (898, '4', 150);
INSERT INTO `utils_role_access_uptd` VALUES (899, '5', 150);
INSERT INTO `utils_role_access_uptd` VALUES (900, '6', 150);
INSERT INTO `utils_role_access_uptd` VALUES (901, '1', 151);
INSERT INTO `utils_role_access_uptd` VALUES (902, '2', 151);
INSERT INTO `utils_role_access_uptd` VALUES (903, '3', 151);
INSERT INTO `utils_role_access_uptd` VALUES (904, '4', 151);
INSERT INTO `utils_role_access_uptd` VALUES (905, '5', 151);
INSERT INTO `utils_role_access_uptd` VALUES (906, '6', 151);
INSERT INTO `utils_role_access_uptd` VALUES (907, '1', 152);
INSERT INTO `utils_role_access_uptd` VALUES (908, '2', 152);
INSERT INTO `utils_role_access_uptd` VALUES (909, '3', 152);
INSERT INTO `utils_role_access_uptd` VALUES (910, '4', 152);
INSERT INTO `utils_role_access_uptd` VALUES (911, '5', 152);
INSERT INTO `utils_role_access_uptd` VALUES (912, '6', 152);
INSERT INTO `utils_role_access_uptd` VALUES (913, '1', 153);
INSERT INTO `utils_role_access_uptd` VALUES (914, '2', 153);
INSERT INTO `utils_role_access_uptd` VALUES (915, '3', 153);
INSERT INTO `utils_role_access_uptd` VALUES (916, '4', 153);
INSERT INTO `utils_role_access_uptd` VALUES (917, '5', 153);
INSERT INTO `utils_role_access_uptd` VALUES (918, '6', 153);
INSERT INTO `utils_role_access_uptd` VALUES (919, '1', 154);
INSERT INTO `utils_role_access_uptd` VALUES (920, '2', 154);
INSERT INTO `utils_role_access_uptd` VALUES (921, '3', 154);
INSERT INTO `utils_role_access_uptd` VALUES (922, '4', 154);
INSERT INTO `utils_role_access_uptd` VALUES (923, '5', 154);
INSERT INTO `utils_role_access_uptd` VALUES (924, '6', 154);
INSERT INTO `utils_role_access_uptd` VALUES (925, '1', 155);
INSERT INTO `utils_role_access_uptd` VALUES (926, '2', 155);
INSERT INTO `utils_role_access_uptd` VALUES (927, '3', 155);
INSERT INTO `utils_role_access_uptd` VALUES (928, '4', 155);
INSERT INTO `utils_role_access_uptd` VALUES (929, '5', 155);
INSERT INTO `utils_role_access_uptd` VALUES (930, '6', 155);
INSERT INTO `utils_role_access_uptd` VALUES (931, '1', 156);
INSERT INTO `utils_role_access_uptd` VALUES (932, '2', 156);
INSERT INTO `utils_role_access_uptd` VALUES (933, '3', 156);
INSERT INTO `utils_role_access_uptd` VALUES (934, '4', 156);
INSERT INTO `utils_role_access_uptd` VALUES (935, '5', 156);
INSERT INTO `utils_role_access_uptd` VALUES (936, '6', 156);
INSERT INTO `utils_role_access_uptd` VALUES (937, '1', 157);
INSERT INTO `utils_role_access_uptd` VALUES (938, '2', 157);
INSERT INTO `utils_role_access_uptd` VALUES (939, '3', 157);
INSERT INTO `utils_role_access_uptd` VALUES (940, '4', 157);
INSERT INTO `utils_role_access_uptd` VALUES (941, '5', 157);
INSERT INTO `utils_role_access_uptd` VALUES (942, '6', 157);
INSERT INTO `utils_role_access_uptd` VALUES (943, '1', 158);
INSERT INTO `utils_role_access_uptd` VALUES (944, '2', 158);
INSERT INTO `utils_role_access_uptd` VALUES (945, '3', 158);
INSERT INTO `utils_role_access_uptd` VALUES (946, '4', 158);
INSERT INTO `utils_role_access_uptd` VALUES (947, '5', 158);
INSERT INTO `utils_role_access_uptd` VALUES (948, '6', 158);
INSERT INTO `utils_role_access_uptd` VALUES (949, '1', 159);
INSERT INTO `utils_role_access_uptd` VALUES (950, '2', 159);
INSERT INTO `utils_role_access_uptd` VALUES (951, '3', 159);
INSERT INTO `utils_role_access_uptd` VALUES (952, '4', 159);
INSERT INTO `utils_role_access_uptd` VALUES (953, '5', 159);
INSERT INTO `utils_role_access_uptd` VALUES (954, '6', 159);
INSERT INTO `utils_role_access_uptd` VALUES (955, '1', 160);
INSERT INTO `utils_role_access_uptd` VALUES (956, '2', 160);
INSERT INTO `utils_role_access_uptd` VALUES (957, '3', 160);
INSERT INTO `utils_role_access_uptd` VALUES (958, '4', 160);
INSERT INTO `utils_role_access_uptd` VALUES (959, '5', 160);
INSERT INTO `utils_role_access_uptd` VALUES (960, '6', 160);
INSERT INTO `utils_role_access_uptd` VALUES (961, '1', 161);
INSERT INTO `utils_role_access_uptd` VALUES (962, '2', 161);
INSERT INTO `utils_role_access_uptd` VALUES (963, '3', 161);
INSERT INTO `utils_role_access_uptd` VALUES (964, '4', 161);
INSERT INTO `utils_role_access_uptd` VALUES (965, '5', 161);
INSERT INTO `utils_role_access_uptd` VALUES (966, '6', 161);
INSERT INTO `utils_role_access_uptd` VALUES (967, '1', 162);
INSERT INTO `utils_role_access_uptd` VALUES (968, '2', 162);
INSERT INTO `utils_role_access_uptd` VALUES (969, '3', 162);
INSERT INTO `utils_role_access_uptd` VALUES (970, '4', 162);
INSERT INTO `utils_role_access_uptd` VALUES (971, '5', 162);
INSERT INTO `utils_role_access_uptd` VALUES (972, '6', 162);
INSERT INTO `utils_role_access_uptd` VALUES (973, '1', 163);
INSERT INTO `utils_role_access_uptd` VALUES (974, '2', 163);
INSERT INTO `utils_role_access_uptd` VALUES (975, '3', 163);
INSERT INTO `utils_role_access_uptd` VALUES (976, '4', 163);
INSERT INTO `utils_role_access_uptd` VALUES (977, '5', 163);
INSERT INTO `utils_role_access_uptd` VALUES (978, '6', 163);
INSERT INTO `utils_role_access_uptd` VALUES (979, '1', 164);
INSERT INTO `utils_role_access_uptd` VALUES (980, '2', 164);
INSERT INTO `utils_role_access_uptd` VALUES (981, '3', 164);
INSERT INTO `utils_role_access_uptd` VALUES (982, '4', 164);
INSERT INTO `utils_role_access_uptd` VALUES (983, '5', 164);
INSERT INTO `utils_role_access_uptd` VALUES (984, '6', 164);
INSERT INTO `utils_role_access_uptd` VALUES (985, '1', 165);
INSERT INTO `utils_role_access_uptd` VALUES (986, '2', 165);
INSERT INTO `utils_role_access_uptd` VALUES (987, '3', 165);
INSERT INTO `utils_role_access_uptd` VALUES (988, '4', 165);
INSERT INTO `utils_role_access_uptd` VALUES (989, '5', 165);
INSERT INTO `utils_role_access_uptd` VALUES (990, '6', 165);
INSERT INTO `utils_role_access_uptd` VALUES (991, '1', 166);
INSERT INTO `utils_role_access_uptd` VALUES (992, '2', 166);
INSERT INTO `utils_role_access_uptd` VALUES (993, '3', 166);
INSERT INTO `utils_role_access_uptd` VALUES (994, '4', 166);
INSERT INTO `utils_role_access_uptd` VALUES (995, '5', 166);
INSERT INTO `utils_role_access_uptd` VALUES (996, '6', 166);
INSERT INTO `utils_role_access_uptd` VALUES (997, '1', 167);
INSERT INTO `utils_role_access_uptd` VALUES (998, '2', 167);
INSERT INTO `utils_role_access_uptd` VALUES (999, '3', 167);
INSERT INTO `utils_role_access_uptd` VALUES (1000, '4', 167);
INSERT INTO `utils_role_access_uptd` VALUES (1001, '5', 167);
INSERT INTO `utils_role_access_uptd` VALUES (1002, '6', 167);
INSERT INTO `utils_role_access_uptd` VALUES (1003, '1', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1004, '2', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1005, '3', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1006, '4', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1007, '5', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1008, '6', 168);
INSERT INTO `utils_role_access_uptd` VALUES (1009, '1', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1010, '2', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1011, '3', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1012, '4', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1013, '5', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1014, '6', 169);
INSERT INTO `utils_role_access_uptd` VALUES (1015, '1', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1016, '2', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1017, '3', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1018, '4', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1019, '5', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1020, '6', 170);
INSERT INTO `utils_role_access_uptd` VALUES (1021, '1', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1022, '2', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1023, '3', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1024, '4', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1025, '5', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1026, '6', 171);
INSERT INTO `utils_role_access_uptd` VALUES (1027, '1', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1028, '2', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1029, '3', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1030, '4', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1031, '5', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1032, '6', 172);
INSERT INTO `utils_role_access_uptd` VALUES (1033, '1', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1034, '2', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1035, '3', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1036, '4', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1037, '5', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1038, '6', 173);
INSERT INTO `utils_role_access_uptd` VALUES (1039, '1', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1040, '2', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1041, '3', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1042, '4', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1043, '5', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1044, '6', 174);
INSERT INTO `utils_role_access_uptd` VALUES (1045, '1', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1046, '2', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1047, '3', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1048, '4', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1049, '5', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1050, '6', 175);
INSERT INTO `utils_role_access_uptd` VALUES (1051, '1', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1052, '2', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1053, '3', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1054, '4', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1055, '5', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1056, '6', 176);
INSERT INTO `utils_role_access_uptd` VALUES (1057, '1', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1058, '2', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1059, '3', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1060, '4', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1061, '5', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1062, '6', 177);
INSERT INTO `utils_role_access_uptd` VALUES (1063, '1', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1064, '2', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1065, '3', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1066, '4', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1067, '5', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1068, '6', 178);
INSERT INTO `utils_role_access_uptd` VALUES (1069, '1', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1070, '2', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1071, '3', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1072, '4', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1073, '5', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1074, '6', 179);
INSERT INTO `utils_role_access_uptd` VALUES (1075, '1', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1076, '2', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1077, '3', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1078, '4', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1079, '5', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1080, '6', 180);
INSERT INTO `utils_role_access_uptd` VALUES (1081, '1', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1082, '2', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1083, '3', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1084, '4', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1085, '5', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1086, '6', 181);
INSERT INTO `utils_role_access_uptd` VALUES (1087, '1', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1088, '2', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1089, '3', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1090, '4', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1091, '5', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1092, '6', 182);
INSERT INTO `utils_role_access_uptd` VALUES (1093, '1', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1094, '2', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1095, '3', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1096, '4', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1097, '5', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1098, '6', 183);
INSERT INTO `utils_role_access_uptd` VALUES (1099, '1', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1100, '2', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1101, '3', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1102, '4', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1103, '5', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1104, '6', 184);
INSERT INTO `utils_role_access_uptd` VALUES (1105, '1', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1106, '2', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1107, '3', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1108, '4', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1109, '5', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1110, '6', 185);
INSERT INTO `utils_role_access_uptd` VALUES (1111, '1', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1112, '2', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1113, '3', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1114, '4', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1115, '5', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1116, '6', 186);
INSERT INTO `utils_role_access_uptd` VALUES (1117, '1', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1118, '2', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1119, '3', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1120, '4', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1121, '5', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1122, '6', 187);
INSERT INTO `utils_role_access_uptd` VALUES (1123, '1', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1124, '2', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1125, '3', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1126, '4', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1127, '5', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1128, '6', 188);
INSERT INTO `utils_role_access_uptd` VALUES (1129, '1', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1130, '2', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1131, '3', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1132, '4', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1133, '5', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1134, '6', 189);
INSERT INTO `utils_role_access_uptd` VALUES (1135, '1', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1136, '2', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1137, '3', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1138, '4', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1139, '5', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1140, '6', 190);
INSERT INTO `utils_role_access_uptd` VALUES (1141, '1', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1142, '2', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1143, '3', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1144, '4', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1145, '5', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1146, '6', 191);
INSERT INTO `utils_role_access_uptd` VALUES (1147, '1', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1148, '2', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1149, '3', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1150, '4', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1151, '5', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1152, '6', 192);
INSERT INTO `utils_role_access_uptd` VALUES (1153, '1', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1154, '2', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1155, '3', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1156, '4', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1157, '5', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1158, '6', 193);
INSERT INTO `utils_role_access_uptd` VALUES (1159, '1', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1160, '2', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1161, '3', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1162, '4', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1163, '5', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1164, '6', 194);
INSERT INTO `utils_role_access_uptd` VALUES (1165, '1', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1166, '2', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1167, '3', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1168, '4', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1169, '5', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1170, '6', 195);
INSERT INTO `utils_role_access_uptd` VALUES (1171, '1', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1172, '2', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1173, '3', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1174, '4', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1175, '5', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1176, '6', 196);
INSERT INTO `utils_role_access_uptd` VALUES (1177, '1', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1178, '2', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1179, '3', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1180, '4', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1181, '5', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1182, '6', 197);
INSERT INTO `utils_role_access_uptd` VALUES (1183, '1', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1184, '2', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1185, '3', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1186, '4', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1187, '5', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1188, '6', 198);
INSERT INTO `utils_role_access_uptd` VALUES (1189, '1', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1190, '2', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1191, '3', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1192, '4', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1193, '5', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1194, '6', 199);
INSERT INTO `utils_role_access_uptd` VALUES (1195, '1', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1196, '2', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1197, '3', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1198, '4', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1199, '5', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1200, '6', 200);
INSERT INTO `utils_role_access_uptd` VALUES (1201, '1', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1202, '2', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1203, '3', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1204, '4', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1205, '5', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1206, '6', 201);
INSERT INTO `utils_role_access_uptd` VALUES (1207, '1', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1208, '2', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1209, '3', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1210, '4', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1211, '5', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1212, '6', 202);
INSERT INTO `utils_role_access_uptd` VALUES (1213, '1', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1214, '2', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1215, '3', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1216, '4', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1217, '5', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1218, '6', 203);
INSERT INTO `utils_role_access_uptd` VALUES (1219, '1', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1220, '2', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1221, '3', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1222, '4', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1223, '5', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1224, '6', 204);
INSERT INTO `utils_role_access_uptd` VALUES (1225, '1', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1226, '2', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1227, '3', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1228, '4', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1229, '5', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1230, '6', 205);
INSERT INTO `utils_role_access_uptd` VALUES (1231, '1', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1232, '2', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1233, '3', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1234, '4', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1235, '5', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1236, '6', 206);
INSERT INTO `utils_role_access_uptd` VALUES (1237, '1', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1238, '2', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1239, '3', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1240, '4', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1241, '5', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1242, '6', 207);
INSERT INTO `utils_role_access_uptd` VALUES (1243, '1', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1244, '2', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1245, '3', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1246, '4', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1247, '5', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1248, '6', 208);
INSERT INTO `utils_role_access_uptd` VALUES (1249, '1', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1250, '2', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1251, '3', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1252, '4', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1253, '5', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1254, '6', 209);
INSERT INTO `utils_role_access_uptd` VALUES (1255, '1', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1256, '2', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1257, '3', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1258, '4', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1259, '5', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1260, '6', 210);
INSERT INTO `utils_role_access_uptd` VALUES (1261, '1', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1262, '2', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1263, '3', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1264, '4', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1265, '5', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1266, '6', 211);
INSERT INTO `utils_role_access_uptd` VALUES (1267, '1', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1268, '2', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1269, '3', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1270, '4', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1271, '5', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1272, '6', 212);
INSERT INTO `utils_role_access_uptd` VALUES (1273, '1', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1274, '2', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1275, '3', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1276, '4', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1277, '5', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1278, '6', 213);
INSERT INTO `utils_role_access_uptd` VALUES (1279, '1', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1280, '2', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1281, '3', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1282, '4', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1283, '5', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1284, '6', 214);
INSERT INTO `utils_role_access_uptd` VALUES (1285, '1', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1286, '2', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1287, '3', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1288, '4', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1289, '5', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1290, '6', 215);
INSERT INTO `utils_role_access_uptd` VALUES (1291, '1', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1292, '2', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1293, '3', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1294, '4', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1295, '5', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1296, '6', 216);
INSERT INTO `utils_role_access_uptd` VALUES (1297, '1', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1298, '2', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1299, '3', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1300, '4', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1301, '5', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1302, '6', 217);
INSERT INTO `utils_role_access_uptd` VALUES (1303, '1', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1304, '2', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1305, '3', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1306, '4', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1307, '5', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1308, '6', 218);
INSERT INTO `utils_role_access_uptd` VALUES (1309, '1', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1310, '2', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1311, '3', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1312, '4', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1313, '5', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1314, '6', 219);
INSERT INTO `utils_role_access_uptd` VALUES (1315, '1', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1316, '2', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1317, '3', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1318, '4', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1319, '5', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1320, '6', 220);
INSERT INTO `utils_role_access_uptd` VALUES (1321, '1', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1322, '2', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1323, '3', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1324, '4', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1325, '5', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1326, '6', 221);
INSERT INTO `utils_role_access_uptd` VALUES (1327, '1', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1328, '2', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1329, '3', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1330, '4', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1331, '5', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1332, '6', 222);
INSERT INTO `utils_role_access_uptd` VALUES (1333, '1', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1334, '2', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1335, '3', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1336, '4', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1337, '5', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1338, '6', 223);
INSERT INTO `utils_role_access_uptd` VALUES (1339, '1', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1340, '2', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1341, '3', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1342, '4', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1343, '5', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1344, '6', 224);
INSERT INTO `utils_role_access_uptd` VALUES (1345, '1', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1346, '2', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1347, '3', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1348, '4', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1349, '5', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1350, '6', 225);
INSERT INTO `utils_role_access_uptd` VALUES (1351, '1', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1352, '2', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1353, '3', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1354, '4', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1355, '5', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1356, '6', 226);
INSERT INTO `utils_role_access_uptd` VALUES (1357, '1', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1358, '2', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1359, '3', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1360, '4', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1361, '5', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1362, '6', 227);
INSERT INTO `utils_role_access_uptd` VALUES (1363, '1', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1364, '2', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1365, '3', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1366, '4', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1367, '5', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1368, '6', 228);
INSERT INTO `utils_role_access_uptd` VALUES (1369, '1', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1370, '2', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1371, '3', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1372, '4', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1373, '5', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1374, '6', 229);
INSERT INTO `utils_role_access_uptd` VALUES (1375, '1', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1376, '2', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1377, '3', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1378, '4', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1379, '5', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1380, '6', 230);
INSERT INTO `utils_role_access_uptd` VALUES (1381, '1', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1382, '2', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1383, '3', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1384, '4', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1385, '5', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1386, '6', 231);
INSERT INTO `utils_role_access_uptd` VALUES (1387, '1', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1388, '2', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1389, '3', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1390, '4', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1391, '5', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1392, '6', 232);
INSERT INTO `utils_role_access_uptd` VALUES (1393, '1', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1394, '2', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1395, '3', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1396, '4', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1397, '5', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1398, '6', 233);
INSERT INTO `utils_role_access_uptd` VALUES (1399, '1', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1400, '2', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1401, '3', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1402, '4', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1403, '5', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1404, '6', 234);
INSERT INTO `utils_role_access_uptd` VALUES (1405, '1', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1406, '2', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1407, '3', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1408, '4', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1409, '5', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1410, '6', 235);
INSERT INTO `utils_role_access_uptd` VALUES (1411, '1', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1412, '2', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1413, '3', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1414, '4', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1415, '5', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1416, '6', 236);
INSERT INTO `utils_role_access_uptd` VALUES (1417, '1', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1418, '2', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1419, '3', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1420, '4', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1421, '5', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1422, '6', 237);
INSERT INTO `utils_role_access_uptd` VALUES (1423, '1', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1424, '2', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1425, '3', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1426, '4', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1427, '5', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1428, '6', 238);
INSERT INTO `utils_role_access_uptd` VALUES (1429, '1', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1430, '2', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1431, '3', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1432, '4', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1433, '5', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1434, '6', 239);
INSERT INTO `utils_role_access_uptd` VALUES (1435, '1', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1436, '2', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1437, '3', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1438, '4', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1439, '5', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1440, '6', 240);
INSERT INTO `utils_role_access_uptd` VALUES (1441, '1', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1442, '2', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1443, '3', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1444, '4', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1445, '5', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1446, '6', 241);
INSERT INTO `utils_role_access_uptd` VALUES (1447, '1', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1448, '2', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1449, '3', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1450, '4', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1451, '5', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1452, '6', 242);
INSERT INTO `utils_role_access_uptd` VALUES (1453, '1', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1454, '2', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1455, '3', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1456, '4', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1457, '5', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1458, '6', 243);
INSERT INTO `utils_role_access_uptd` VALUES (1459, '1', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1460, '2', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1461, '3', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1462, '4', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1463, '5', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1464, '6', 244);
INSERT INTO `utils_role_access_uptd` VALUES (1465, '1', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1466, '2', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1467, '3', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1468, '4', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1469, '5', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1470, '6', 245);
INSERT INTO `utils_role_access_uptd` VALUES (1471, '1', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1472, '2', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1473, '3', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1474, '4', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1475, '5', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1476, '6', 246);
INSERT INTO `utils_role_access_uptd` VALUES (1477, '1', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1478, '2', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1479, '3', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1480, '4', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1481, '5', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1482, '6', 247);
INSERT INTO `utils_role_access_uptd` VALUES (1483, '1', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1484, '2', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1485, '3', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1486, '4', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1487, '5', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1488, '6', 248);
INSERT INTO `utils_role_access_uptd` VALUES (1489, '1', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1490, '2', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1491, '3', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1492, '4', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1493, '5', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1494, '6', 249);
INSERT INTO `utils_role_access_uptd` VALUES (1495, '1', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1496, '2', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1497, '3', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1498, '4', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1499, '5', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1500, '6', 250);
INSERT INTO `utils_role_access_uptd` VALUES (1501, '1', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1502, '2', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1503, '3', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1504, '4', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1505, '5', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1506, '6', 251);
INSERT INTO `utils_role_access_uptd` VALUES (1507, '1', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1508, '2', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1509, '3', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1510, '4', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1511, '5', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1512, '6', 252);
INSERT INTO `utils_role_access_uptd` VALUES (1513, '1', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1514, '2', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1515, '3', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1516, '4', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1517, '5', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1518, '6', 253);
INSERT INTO `utils_role_access_uptd` VALUES (1519, '1', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1520, '2', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1521, '3', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1522, '4', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1523, '5', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1524, '6', 254);
INSERT INTO `utils_role_access_uptd` VALUES (1525, '1', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1526, '2', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1527, '3', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1528, '4', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1529, '5', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1530, '6', 255);
INSERT INTO `utils_role_access_uptd` VALUES (1531, '1', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1532, '2', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1533, '3', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1534, '4', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1535, '5', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1536, '6', 256);
INSERT INTO `utils_role_access_uptd` VALUES (1537, '1', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1538, '2', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1539, '3', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1540, '4', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1541, '5', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1542, '6', 257);
INSERT INTO `utils_role_access_uptd` VALUES (1543, '1', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1544, '2', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1545, '3', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1546, '4', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1547, '5', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1548, '6', 258);
INSERT INTO `utils_role_access_uptd` VALUES (1549, '1', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1550, '2', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1551, '3', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1552, '4', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1553, '5', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1554, '6', 259);
INSERT INTO `utils_role_access_uptd` VALUES (1555, '1', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1556, '2', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1557, '3', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1558, '4', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1559, '5', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1560, '6', 260);
INSERT INTO `utils_role_access_uptd` VALUES (1561, '1', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1562, '2', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1563, '3', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1564, '4', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1565, '5', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1566, '6', 261);
INSERT INTO `utils_role_access_uptd` VALUES (1567, '1', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1568, '2', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1569, '3', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1570, '4', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1571, '5', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1572, '6', 262);
INSERT INTO `utils_role_access_uptd` VALUES (1573, '1', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1574, '2', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1575, '3', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1576, '4', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1577, '5', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1578, '6', 263);
INSERT INTO `utils_role_access_uptd` VALUES (1579, '1', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1580, '2', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1581, '3', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1582, '4', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1583, '5', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1584, '6', 264);
INSERT INTO `utils_role_access_uptd` VALUES (1585, '1', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1586, '2', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1587, '3', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1588, '4', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1589, '5', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1590, '6', 265);
INSERT INTO `utils_role_access_uptd` VALUES (1591, '1', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1592, '2', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1593, '3', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1594, '4', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1595, '5', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1596, '6', 266);
INSERT INTO `utils_role_access_uptd` VALUES (1597, '1', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1598, '2', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1599, '3', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1600, '4', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1601, '5', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1602, '6', 267);
INSERT INTO `utils_role_access_uptd` VALUES (1603, '1', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1604, '2', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1605, '3', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1606, '4', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1607, '5', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1608, '6', 268);
INSERT INTO `utils_role_access_uptd` VALUES (1609, '1', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1610, '2', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1611, '3', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1612, '4', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1613, '5', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1614, '6', 269);
INSERT INTO `utils_role_access_uptd` VALUES (1615, '1', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1616, '2', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1617, '3', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1618, '4', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1619, '5', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1620, '6', 270);
INSERT INTO `utils_role_access_uptd` VALUES (1801, '1', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1802, '2', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1803, '3', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1804, '4', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1805, '5', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1806, '6', 301);
INSERT INTO `utils_role_access_uptd` VALUES (1807, '1', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1808, '2', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1809, '3', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1810, '4', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1811, '5', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1812, '6', 302);
INSERT INTO `utils_role_access_uptd` VALUES (1813, '1', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1814, '2', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1815, '3', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1816, '4', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1817, '5', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1818, '6', 303);
INSERT INTO `utils_role_access_uptd` VALUES (1819, '1', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1820, '2', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1821, '3', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1822, '4', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1823, '5', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1824, '6', 304);
INSERT INTO `utils_role_access_uptd` VALUES (1825, '1', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1826, '2', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1827, '3', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1828, '4', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1829, '5', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1830, '6', 305);
INSERT INTO `utils_role_access_uptd` VALUES (1831, '1', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1832, '2', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1833, '3', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1834, '4', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1835, '5', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1836, '6', 306);
INSERT INTO `utils_role_access_uptd` VALUES (1837, '1', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1838, '2', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1839, '3', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1840, '4', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1841, '5', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1842, '6', 307);
INSERT INTO `utils_role_access_uptd` VALUES (1843, '1', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1844, '2', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1845, '3', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1846, '4', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1847, '5', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1848, '6', 308);
INSERT INTO `utils_role_access_uptd` VALUES (1849, '1', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1850, '2', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1851, '3', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1852, '4', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1853, '5', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1854, '6', 309);
INSERT INTO `utils_role_access_uptd` VALUES (1855, '1', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1856, '2', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1857, '3', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1858, '4', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1859, '5', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1860, '6', 310);
INSERT INTO `utils_role_access_uptd` VALUES (1861, '1', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1862, '2', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1863, '3', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1864, '4', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1865, '5', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1866, '6', 311);
INSERT INTO `utils_role_access_uptd` VALUES (1867, '1', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1868, '2', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1869, '3', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1870, '4', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1871, '5', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1872, '6', 312);
INSERT INTO `utils_role_access_uptd` VALUES (1873, '1', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1874, '2', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1875, '3', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1876, '4', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1877, '5', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1878, '6', 313);
INSERT INTO `utils_role_access_uptd` VALUES (1879, '1', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1880, '2', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1881, '3', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1882, '4', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1883, '5', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1884, '6', 314);
INSERT INTO `utils_role_access_uptd` VALUES (1885, '1', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1886, '2', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1887, '3', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1888, '4', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1889, '5', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1890, '6', 315);
INSERT INTO `utils_role_access_uptd` VALUES (1891, '1', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1892, '2', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1893, '3', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1894, '4', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1895, '5', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1896, '6', 316);
INSERT INTO `utils_role_access_uptd` VALUES (1897, '1', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1898, '2', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1899, '3', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1900, '4', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1901, '5', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1902, '6', 317);
INSERT INTO `utils_role_access_uptd` VALUES (1903, '1', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1904, '2', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1905, '3', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1906, '4', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1907, '5', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1908, '6', 318);
INSERT INTO `utils_role_access_uptd` VALUES (1909, '1', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1910, '2', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1911, '3', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1912, '4', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1913, '5', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1914, '6', 319);
INSERT INTO `utils_role_access_uptd` VALUES (1915, '1', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1916, '2', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1917, '3', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1918, '4', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1919, '5', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1920, '6', 320);
INSERT INTO `utils_role_access_uptd` VALUES (1921, '1', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1922, '2', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1923, '3', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1924, '4', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1925, '5', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1926, '6', 321);
INSERT INTO `utils_role_access_uptd` VALUES (1927, '1', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1928, '2', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1929, '3', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1930, '4', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1931, '5', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1932, '6', 322);
INSERT INTO `utils_role_access_uptd` VALUES (1933, '1', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1934, '2', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1935, '3', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1936, '4', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1937, '5', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1938, '6', 323);
INSERT INTO `utils_role_access_uptd` VALUES (1939, '1', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1940, '2', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1941, '3', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1942, '4', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1943, '5', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1944, '6', 324);
INSERT INTO `utils_role_access_uptd` VALUES (1945, '1', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1946, '2', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1947, '3', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1948, '4', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1949, '5', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1950, '6', 325);
INSERT INTO `utils_role_access_uptd` VALUES (1951, '1', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1952, '2', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1953, '3', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1954, '4', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1955, '5', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1956, '6', 326);
INSERT INTO `utils_role_access_uptd` VALUES (1957, '1', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1958, '2', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1959, '3', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1960, '4', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1961, '5', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1962, '6', 327);
INSERT INTO `utils_role_access_uptd` VALUES (1963, '1', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1964, '2', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1965, '3', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1966, '4', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1967, '5', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1968, '6', 328);
INSERT INTO `utils_role_access_uptd` VALUES (1969, '1', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1970, '2', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1971, '3', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1972, '4', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1973, '5', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1974, '6', 329);
INSERT INTO `utils_role_access_uptd` VALUES (1975, '1', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1976, '2', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1977, '3', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1978, '4', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1979, '5', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1980, '6', 330);
INSERT INTO `utils_role_access_uptd` VALUES (1981, '1', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1982, '2', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1983, '3', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1984, '4', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1985, '5', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1986, '6', 331);
INSERT INTO `utils_role_access_uptd` VALUES (1987, '1', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1988, '2', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1989, '3', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1990, '4', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1991, '5', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1992, '6', 332);
INSERT INTO `utils_role_access_uptd` VALUES (1993, '1', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1994, '2', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1995, '3', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1996, '4', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1997, '5', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1998, '6', 333);
INSERT INTO `utils_role_access_uptd` VALUES (1999, '1', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2000, '2', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2001, '3', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2002, '4', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2003, '5', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2004, '6', 334);
INSERT INTO `utils_role_access_uptd` VALUES (2005, '1', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2006, '2', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2007, '3', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2008, '4', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2009, '5', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2010, '6', 335);
INSERT INTO `utils_role_access_uptd` VALUES (2011, '1', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2012, '2', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2013, '3', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2014, '4', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2015, '5', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2016, '6', 336);
INSERT INTO `utils_role_access_uptd` VALUES (2017, '1', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2018, '2', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2019, '3', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2020, '4', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2021, '5', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2022, '6', 337);
INSERT INTO `utils_role_access_uptd` VALUES (2023, '1', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2024, '2', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2025, '3', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2026, '4', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2027, '5', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2028, '6', 338);
INSERT INTO `utils_role_access_uptd` VALUES (2029, '1', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2030, '2', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2031, '3', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2032, '4', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2033, '5', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2034, '6', 339);
INSERT INTO `utils_role_access_uptd` VALUES (2035, '1', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2036, '2', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2037, '3', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2038, '4', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2039, '5', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2040, '6', 340);
INSERT INTO `utils_role_access_uptd` VALUES (2041, '1', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2042, '2', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2043, '3', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2044, '4', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2045, '5', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2046, '6', 341);
INSERT INTO `utils_role_access_uptd` VALUES (2047, '1', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2048, '2', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2049, '3', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2050, '4', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2051, '5', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2052, '6', 342);
INSERT INTO `utils_role_access_uptd` VALUES (2053, '1', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2054, '2', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2055, '3', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2056, '4', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2057, '5', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2058, '6', 343);
INSERT INTO `utils_role_access_uptd` VALUES (2059, '1', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2060, '2', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2061, '3', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2062, '4', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2063, '5', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2064, '6', 344);
INSERT INTO `utils_role_access_uptd` VALUES (2065, '1', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2066, '2', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2067, '3', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2068, '4', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2069, '5', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2070, '6', 345);
INSERT INTO `utils_role_access_uptd` VALUES (2071, '1', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2072, '2', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2073, '3', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2074, '4', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2075, '5', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2076, '6', 346);
INSERT INTO `utils_role_access_uptd` VALUES (2077, '1', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2078, '2', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2079, '3', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2080, '4', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2081, '5', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2082, '6', 347);
INSERT INTO `utils_role_access_uptd` VALUES (2083, '1', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2084, '2', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2085, '3', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2086, '4', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2087, '5', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2088, '6', 348);
INSERT INTO `utils_role_access_uptd` VALUES (2089, '1', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2090, '2', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2091, '3', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2092, '4', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2093, '5', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2094, '6', 349);
INSERT INTO `utils_role_access_uptd` VALUES (2095, '1', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2096, '2', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2097, '3', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2098, '4', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2099, '5', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2100, '6', 350);
INSERT INTO `utils_role_access_uptd` VALUES (2101, '1', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2102, '2', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2103, '3', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2104, '4', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2105, '5', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2106, '6', 351);
INSERT INTO `utils_role_access_uptd` VALUES (2107, '1', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2108, '2', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2109, '3', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2110, '4', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2111, '5', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2112, '6', 352);
INSERT INTO `utils_role_access_uptd` VALUES (2113, '1', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2114, '2', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2115, '3', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2116, '4', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2117, '5', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2118, '6', 353);
INSERT INTO `utils_role_access_uptd` VALUES (2119, '1', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2120, '2', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2121, '3', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2122, '4', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2123, '5', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2124, '6', 354);
INSERT INTO `utils_role_access_uptd` VALUES (2125, '1', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2126, '2', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2127, '3', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2128, '4', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2129, '5', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2130, '6', 355);
INSERT INTO `utils_role_access_uptd` VALUES (2131, '1', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2132, '2', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2133, '3', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2134, '4', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2135, '5', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2136, '6', 356);
INSERT INTO `utils_role_access_uptd` VALUES (2137, '1', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2138, '2', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2139, '3', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2140, '4', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2141, '5', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2142, '6', 357);
INSERT INTO `utils_role_access_uptd` VALUES (2143, '1', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2144, '2', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2145, '3', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2146, '4', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2147, '5', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2148, '6', 358);
INSERT INTO `utils_role_access_uptd` VALUES (2149, '1', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2150, '2', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2151, '3', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2152, '4', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2153, '5', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2154, '6', 359);
INSERT INTO `utils_role_access_uptd` VALUES (2155, '1', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2156, '2', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2157, '3', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2158, '4', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2159, '5', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2160, '6', 360);
INSERT INTO `utils_role_access_uptd` VALUES (2161, '1', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2162, '2', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2163, '3', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2164, '4', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2165, '5', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2166, '6', 361);
INSERT INTO `utils_role_access_uptd` VALUES (2167, '1', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2168, '2', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2169, '3', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2170, '4', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2171, '5', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2172, '6', 362);
INSERT INTO `utils_role_access_uptd` VALUES (2173, '1', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2174, '2', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2175, '3', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2176, '4', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2177, '5', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2178, '6', 363);
INSERT INTO `utils_role_access_uptd` VALUES (2179, '1', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2180, '2', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2181, '3', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2182, '4', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2183, '5', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2184, '6', 364);
INSERT INTO `utils_role_access_uptd` VALUES (2185, '1', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2186, '2', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2187, '3', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2188, '4', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2189, '5', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2190, '6', 365);
INSERT INTO `utils_role_access_uptd` VALUES (2191, '1', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2192, '2', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2193, '3', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2194, '4', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2195, '5', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2196, '6', 366);
INSERT INTO `utils_role_access_uptd` VALUES (2197, '1', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2198, '2', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2199, '3', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2200, '4', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2201, '5', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2202, '6', 367);
INSERT INTO `utils_role_access_uptd` VALUES (2203, '1', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2204, '2', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2205, '3', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2206, '4', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2207, '5', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2208, '6', 368);
INSERT INTO `utils_role_access_uptd` VALUES (2209, '1', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2210, '2', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2211, '3', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2212, '4', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2213, '5', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2214, '6', 369);
INSERT INTO `utils_role_access_uptd` VALUES (2215, '1', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2216, '2', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2217, '3', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2218, '4', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2219, '5', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2220, '6', 370);
INSERT INTO `utils_role_access_uptd` VALUES (2221, '1', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2222, '2', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2223, '3', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2224, '4', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2225, '5', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2226, '6', 371);
INSERT INTO `utils_role_access_uptd` VALUES (2227, '1', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2228, '2', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2229, '3', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2230, '4', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2231, '5', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2232, '6', 372);
INSERT INTO `utils_role_access_uptd` VALUES (2233, '1', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2234, '2', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2235, '3', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2236, '4', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2237, '5', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2238, '6', 373);
INSERT INTO `utils_role_access_uptd` VALUES (2239, '1', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2240, '2', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2241, '3', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2242, '4', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2243, '5', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2244, '6', 374);
INSERT INTO `utils_role_access_uptd` VALUES (2245, '1', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2246, '2', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2247, '3', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2248, '4', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2249, '5', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2250, '6', 375);
INSERT INTO `utils_role_access_uptd` VALUES (2251, '1', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2252, '2', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2253, '3', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2254, '4', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2255, '5', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2256, '6', 376);
INSERT INTO `utils_role_access_uptd` VALUES (2257, '1', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2258, '2', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2259, '3', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2260, '4', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2261, '5', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2262, '6', 377);
INSERT INTO `utils_role_access_uptd` VALUES (2263, '1', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2264, '2', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2265, '3', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2266, '4', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2267, '5', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2268, '6', 378);
INSERT INTO `utils_role_access_uptd` VALUES (2269, '1', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2270, '2', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2271, '3', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2272, '4', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2273, '5', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2274, '6', 379);
INSERT INTO `utils_role_access_uptd` VALUES (2275, '1', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2276, '2', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2277, '3', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2278, '4', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2279, '5', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2280, '6', 380);
INSERT INTO `utils_role_access_uptd` VALUES (2281, '1', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2282, '2', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2283, '3', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2284, '4', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2285, '5', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2286, '6', 381);
INSERT INTO `utils_role_access_uptd` VALUES (2287, '1', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2288, '2', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2289, '3', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2290, '4', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2291, '5', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2292, '6', 382);
INSERT INTO `utils_role_access_uptd` VALUES (2293, '1', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2294, '2', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2295, '3', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2296, '4', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2297, '5', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2298, '6', 383);
INSERT INTO `utils_role_access_uptd` VALUES (2299, '1', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2300, '2', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2301, '3', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2302, '4', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2303, '5', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2304, '6', 384);
INSERT INTO `utils_role_access_uptd` VALUES (2305, '1', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2306, '2', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2307, '3', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2308, '4', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2309, '5', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2310, '6', 385);
INSERT INTO `utils_role_access_uptd` VALUES (2311, '1', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2312, '2', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2313, '3', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2314, '4', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2315, '5', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2316, '6', 386);
INSERT INTO `utils_role_access_uptd` VALUES (2317, '1', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2318, '2', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2319, '3', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2320, '4', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2321, '5', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2322, '6', 387);
INSERT INTO `utils_role_access_uptd` VALUES (2323, '1', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2324, '2', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2325, '3', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2326, '4', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2327, '5', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2328, '6', 388);
INSERT INTO `utils_role_access_uptd` VALUES (2329, '1', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2330, '2', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2331, '3', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2332, '4', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2333, '5', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2334, '6', 389);
INSERT INTO `utils_role_access_uptd` VALUES (2335, '1', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2336, '2', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2337, '3', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2338, '4', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2339, '5', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2340, '6', 390);
INSERT INTO `utils_role_access_uptd` VALUES (2521, '1', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2522, '2', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2523, '3', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2524, '4', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2525, '5', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2526, '6', 421);
INSERT INTO `utils_role_access_uptd` VALUES (2527, '1', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2528, '2', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2529, '3', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2530, '4', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2531, '5', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2532, '6', 422);
INSERT INTO `utils_role_access_uptd` VALUES (2533, '1', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2534, '2', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2535, '3', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2536, '4', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2537, '5', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2538, '6', 423);
INSERT INTO `utils_role_access_uptd` VALUES (2539, '1', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2540, '2', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2541, '3', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2542, '4', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2543, '5', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2544, '6', 424);
INSERT INTO `utils_role_access_uptd` VALUES (2545, '1', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2546, '2', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2547, '3', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2548, '4', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2549, '5', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2550, '6', 425);
INSERT INTO `utils_role_access_uptd` VALUES (2551, '1', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2552, '2', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2553, '3', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2554, '4', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2555, '5', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2556, '6', 426);
INSERT INTO `utils_role_access_uptd` VALUES (2557, '1', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2558, '2', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2559, '3', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2560, '4', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2561, '5', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2562, '6', 427);
INSERT INTO `utils_role_access_uptd` VALUES (2563, '1', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2564, '2', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2565, '3', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2566, '4', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2567, '5', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2568, '6', 428);
INSERT INTO `utils_role_access_uptd` VALUES (2569, '1', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2570, '2', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2571, '3', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2572, '4', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2573, '5', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2574, '6', 429);
INSERT INTO `utils_role_access_uptd` VALUES (2575, '1', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2576, '2', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2577, '3', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2578, '4', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2579, '5', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2580, '6', 430);
INSERT INTO `utils_role_access_uptd` VALUES (2581, '1', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2582, '2', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2583, '3', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2584, '4', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2585, '5', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2586, '6', 431);
INSERT INTO `utils_role_access_uptd` VALUES (2587, '1', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2588, '2', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2589, '3', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2590, '4', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2591, '5', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2592, '6', 432);
INSERT INTO `utils_role_access_uptd` VALUES (2593, '1', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2594, '2', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2595, '3', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2596, '4', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2597, '5', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2598, '6', 433);
INSERT INTO `utils_role_access_uptd` VALUES (2599, '1', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2600, '2', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2601, '3', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2602, '4', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2603, '5', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2604, '6', 434);
INSERT INTO `utils_role_access_uptd` VALUES (2605, '1', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2606, '2', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2607, '3', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2608, '4', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2609, '5', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2610, '6', 435);
INSERT INTO `utils_role_access_uptd` VALUES (2611, '1', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2612, '2', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2613, '3', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2614, '4', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2615, '5', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2616, '6', 436);
INSERT INTO `utils_role_access_uptd` VALUES (2617, '1', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2618, '2', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2619, '3', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2620, '4', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2621, '5', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2622, '6', 437);
INSERT INTO `utils_role_access_uptd` VALUES (2623, '1', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2624, '2', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2625, '3', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2626, '4', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2627, '5', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2628, '6', 438);
INSERT INTO `utils_role_access_uptd` VALUES (2629, '1', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2630, '2', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2631, '3', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2632, '4', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2633, '5', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2634, '6', 439);
INSERT INTO `utils_role_access_uptd` VALUES (2635, '1', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2636, '2', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2637, '3', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2638, '4', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2639, '5', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2640, '6', 440);
INSERT INTO `utils_role_access_uptd` VALUES (2641, '1', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2642, '2', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2643, '3', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2644, '4', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2645, '5', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2646, '6', 441);
INSERT INTO `utils_role_access_uptd` VALUES (2647, '1', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2648, '2', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2649, '3', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2650, '4', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2651, '5', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2652, '6', 442);
INSERT INTO `utils_role_access_uptd` VALUES (2653, '1', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2654, '2', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2655, '3', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2656, '4', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2657, '5', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2658, '6', 443);
INSERT INTO `utils_role_access_uptd` VALUES (2659, '1', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2660, '2', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2661, '3', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2662, '4', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2663, '5', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2664, '6', 444);
INSERT INTO `utils_role_access_uptd` VALUES (2665, '1', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2666, '2', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2667, '3', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2668, '4', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2669, '5', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2670, '6', 445);
INSERT INTO `utils_role_access_uptd` VALUES (2671, '1', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2672, '2', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2673, '3', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2674, '4', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2675, '5', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2676, '6', 446);
INSERT INTO `utils_role_access_uptd` VALUES (2677, '1', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2678, '2', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2679, '3', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2680, '4', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2681, '5', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2682, '6', 447);
INSERT INTO `utils_role_access_uptd` VALUES (2683, '1', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2684, '2', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2685, '3', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2686, '4', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2687, '5', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2688, '6', 448);
INSERT INTO `utils_role_access_uptd` VALUES (2689, '1', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2690, '2', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2691, '3', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2692, '4', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2693, '5', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2694, '6', 449);
INSERT INTO `utils_role_access_uptd` VALUES (2695, '1', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2696, '2', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2697, '3', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2698, '4', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2699, '5', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2700, '6', 450);
INSERT INTO `utils_role_access_uptd` VALUES (2881, '1', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2882, '2', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2883, '3', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2884, '4', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2885, '5', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2886, '6', 481);
INSERT INTO `utils_role_access_uptd` VALUES (2887, '1', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2888, '2', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2889, '3', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2890, '4', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2891, '5', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2892, '6', 482);
INSERT INTO `utils_role_access_uptd` VALUES (2893, '1', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2894, '2', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2895, '3', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2896, '4', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2897, '5', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2898, '6', 483);
INSERT INTO `utils_role_access_uptd` VALUES (2899, '1', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2900, '2', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2901, '3', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2902, '4', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2903, '5', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2904, '6', 484);
INSERT INTO `utils_role_access_uptd` VALUES (2905, '1', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2906, '2', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2907, '3', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2908, '4', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2909, '5', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2910, '6', 485);
INSERT INTO `utils_role_access_uptd` VALUES (2911, '1', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2912, '2', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2913, '3', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2914, '4', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2915, '5', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2916, '6', 486);
INSERT INTO `utils_role_access_uptd` VALUES (2917, '1', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2918, '2', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2919, '3', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2920, '4', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2921, '5', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2922, '6', 487);
INSERT INTO `utils_role_access_uptd` VALUES (2923, '1', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2924, '2', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2925, '3', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2926, '4', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2927, '5', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2928, '6', 488);
INSERT INTO `utils_role_access_uptd` VALUES (2929, '1', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2930, '2', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2931, '3', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2932, '4', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2933, '5', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2934, '6', 489);
INSERT INTO `utils_role_access_uptd` VALUES (2935, '1', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2936, '2', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2937, '3', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2938, '4', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2939, '5', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2940, '6', 490);
INSERT INTO `utils_role_access_uptd` VALUES (2941, '1', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2942, '2', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2943, '3', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2944, '4', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2945, '5', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2946, '6', 491);
INSERT INTO `utils_role_access_uptd` VALUES (2947, '1', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2948, '2', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2949, '3', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2950, '4', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2951, '5', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2952, '6', 492);
INSERT INTO `utils_role_access_uptd` VALUES (2953, '1', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2954, '2', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2955, '3', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2956, '4', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2957, '5', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2958, '6', 493);
INSERT INTO `utils_role_access_uptd` VALUES (2959, '1', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2960, '2', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2961, '3', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2962, '4', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2963, '5', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2964, '6', 494);
INSERT INTO `utils_role_access_uptd` VALUES (2965, '1', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2966, '2', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2967, '3', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2968, '4', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2969, '5', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2970, '6', 495);
INSERT INTO `utils_role_access_uptd` VALUES (2971, '1', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2972, '2', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2973, '3', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2974, '4', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2975, '5', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2976, '6', 496);
INSERT INTO `utils_role_access_uptd` VALUES (2977, '1', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2978, '2', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2979, '3', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2980, '4', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2981, '5', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2982, '6', 497);
INSERT INTO `utils_role_access_uptd` VALUES (2983, '1', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2984, '2', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2985, '3', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2986, '4', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2987, '5', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2988, '6', 498);
INSERT INTO `utils_role_access_uptd` VALUES (2989, '1', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2990, '2', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2991, '3', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2992, '4', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2993, '5', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2994, '6', 499);
INSERT INTO `utils_role_access_uptd` VALUES (2995, '1', 500);
INSERT INTO `utils_role_access_uptd` VALUES (2996, '2', 500);
INSERT INTO `utils_role_access_uptd` VALUES (2997, '3', 500);
INSERT INTO `utils_role_access_uptd` VALUES (2998, '4', 500);
INSERT INTO `utils_role_access_uptd` VALUES (2999, '5', 500);
INSERT INTO `utils_role_access_uptd` VALUES (3000, '6', 500);
INSERT INTO `utils_role_access_uptd` VALUES (3001, '1', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3002, '2', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3003, '3', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3004, '4', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3005, '5', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3006, '6', 501);
INSERT INTO `utils_role_access_uptd` VALUES (3007, '1', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3008, '2', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3009, '3', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3010, '4', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3011, '5', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3012, '6', 502);
INSERT INTO `utils_role_access_uptd` VALUES (3013, '1', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3014, '2', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3015, '3', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3016, '4', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3017, '5', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3018, '6', 503);
INSERT INTO `utils_role_access_uptd` VALUES (3019, '1', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3020, '2', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3021, '3', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3022, '4', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3023, '5', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3024, '6', 504);
INSERT INTO `utils_role_access_uptd` VALUES (3025, '1', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3026, '2', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3027, '3', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3028, '4', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3029, '5', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3030, '6', 505);
INSERT INTO `utils_role_access_uptd` VALUES (3031, '1', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3032, '2', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3033, '3', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3034, '4', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3035, '5', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3036, '6', 506);
INSERT INTO `utils_role_access_uptd` VALUES (3037, '1', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3038, '2', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3039, '3', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3040, '4', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3041, '5', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3042, '6', 507);
INSERT INTO `utils_role_access_uptd` VALUES (3043, '1', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3044, '2', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3045, '3', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3046, '4', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3047, '5', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3048, '6', 508);
INSERT INTO `utils_role_access_uptd` VALUES (3049, '1', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3050, '2', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3051, '3', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3052, '4', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3053, '5', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3054, '6', 509);
INSERT INTO `utils_role_access_uptd` VALUES (3055, '1', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3056, '2', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3057, '3', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3058, '4', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3059, '5', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3060, '6', 510);
INSERT INTO `utils_role_access_uptd` VALUES (3061, '1', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3062, '2', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3063, '3', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3064, '4', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3065, '5', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3066, '6', 511);
INSERT INTO `utils_role_access_uptd` VALUES (3067, '1', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3068, '2', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3069, '3', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3070, '4', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3071, '5', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3072, '6', 512);
INSERT INTO `utils_role_access_uptd` VALUES (3073, '1', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3074, '2', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3075, '3', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3076, '4', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3077, '5', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3078, '6', 513);
INSERT INTO `utils_role_access_uptd` VALUES (3079, '1', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3080, '2', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3081, '3', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3082, '4', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3083, '5', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3084, '6', 514);
INSERT INTO `utils_role_access_uptd` VALUES (3085, '1', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3086, '2', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3087, '3', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3088, '4', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3089, '5', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3090, '6', 515);
INSERT INTO `utils_role_access_uptd` VALUES (3091, '1', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3092, '2', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3093, '3', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3094, '4', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3095, '5', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3096, '6', 516);
INSERT INTO `utils_role_access_uptd` VALUES (3097, '1', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3098, '2', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3099, '3', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3100, '4', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3101, '5', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3102, '6', 517);
INSERT INTO `utils_role_access_uptd` VALUES (3103, '1', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3104, '2', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3105, '3', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3106, '4', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3107, '5', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3108, '6', 518);
INSERT INTO `utils_role_access_uptd` VALUES (3109, '1', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3110, '2', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3111, '3', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3112, '4', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3113, '5', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3114, '6', 519);
INSERT INTO `utils_role_access_uptd` VALUES (3115, '1', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3116, '2', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3117, '3', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3118, '4', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3119, '5', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3120, '6', 520);
INSERT INTO `utils_role_access_uptd` VALUES (3121, '1', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3122, '2', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3123, '3', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3124, '4', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3125, '5', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3126, '6', 521);
INSERT INTO `utils_role_access_uptd` VALUES (3127, '1', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3128, '2', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3129, '3', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3130, '4', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3131, '5', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3132, '6', 522);
INSERT INTO `utils_role_access_uptd` VALUES (3133, '1', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3134, '2', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3135, '3', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3136, '4', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3137, '5', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3138, '6', 523);
INSERT INTO `utils_role_access_uptd` VALUES (3139, '1', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3140, '2', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3141, '3', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3142, '4', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3143, '5', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3144, '6', 524);
INSERT INTO `utils_role_access_uptd` VALUES (3145, '1', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3146, '2', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3147, '3', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3148, '4', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3149, '5', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3150, '6', 525);
INSERT INTO `utils_role_access_uptd` VALUES (3151, '1', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3152, '2', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3153, '3', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3154, '4', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3155, '5', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3156, '6', 526);
INSERT INTO `utils_role_access_uptd` VALUES (3157, '1', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3158, '2', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3159, '3', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3160, '4', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3161, '5', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3162, '6', 527);
INSERT INTO `utils_role_access_uptd` VALUES (3163, '1', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3164, '2', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3165, '3', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3166, '4', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3167, '5', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3168, '6', 528);
INSERT INTO `utils_role_access_uptd` VALUES (3169, '1', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3170, '2', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3171, '3', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3172, '4', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3173, '5', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3174, '6', 529);
INSERT INTO `utils_role_access_uptd` VALUES (3175, '1', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3176, '2', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3177, '3', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3178, '4', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3179, '5', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3180, '6', 530);
INSERT INTO `utils_role_access_uptd` VALUES (3181, '1', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3182, '2', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3183, '3', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3184, '4', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3185, '5', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3186, '6', 531);
INSERT INTO `utils_role_access_uptd` VALUES (3187, '1', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3188, '2', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3189, '3', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3190, '4', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3191, '5', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3192, '6', 532);
INSERT INTO `utils_role_access_uptd` VALUES (3193, '1', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3194, '2', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3195, '3', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3196, '4', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3197, '5', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3198, '6', 533);
INSERT INTO `utils_role_access_uptd` VALUES (3199, '1', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3200, '2', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3201, '3', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3202, '4', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3203, '5', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3204, '6', 534);
INSERT INTO `utils_role_access_uptd` VALUES (3205, '1', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3206, '2', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3207, '3', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3208, '4', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3209, '5', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3210, '6', 535);
INSERT INTO `utils_role_access_uptd` VALUES (3211, '1', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3212, '2', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3213, '3', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3214, '4', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3215, '5', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3216, '6', 536);
INSERT INTO `utils_role_access_uptd` VALUES (3217, '1', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3218, '2', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3219, '3', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3220, '4', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3221, '5', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3222, '6', 537);
INSERT INTO `utils_role_access_uptd` VALUES (3223, '1', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3224, '2', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3225, '3', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3226, '4', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3227, '5', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3228, '6', 538);
INSERT INTO `utils_role_access_uptd` VALUES (3229, '1', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3230, '2', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3231, '3', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3232, '4', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3233, '5', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3234, '6', 539);
INSERT INTO `utils_role_access_uptd` VALUES (3235, '1', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3236, '2', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3237, '3', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3238, '4', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3239, '5', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3240, '6', 540);
INSERT INTO `utils_role_access_uptd` VALUES (3241, 'UPTD 3', 543);
INSERT INTO `utils_role_access_uptd` VALUES (3254, '1', 550);
INSERT INTO `utils_role_access_uptd` VALUES (3255, '2', 550);
INSERT INTO `utils_role_access_uptd` VALUES (3256, '3', 550);
INSERT INTO `utils_role_access_uptd` VALUES (3257, '4', 550);
INSERT INTO `utils_role_access_uptd` VALUES (3258, '5', 550);
INSERT INTO `utils_role_access_uptd` VALUES (3259, '6', 550);

-- ----------------------------
-- Table structure for utils_sup
-- ----------------------------
DROP TABLE IF EXISTS `utils_sup`;
CREATE TABLE `utils_sup`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uptd_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_sup
-- ----------------------------
INSERT INTO `utils_sup` VALUES (1, 'SPP CIANJUR 1', 1);
INSERT INTO `utils_sup` VALUES (2, 'SPP CIANJUR 2', 1);
INSERT INTO `utils_sup` VALUES (3, 'SPP BOGOR 1', 1);
INSERT INTO `utils_sup` VALUES (4, 'SPP BOGOR 2', 1);
INSERT INTO `utils_sup` VALUES (5, 'SPP BEKASI', 1);
INSERT INTO `utils_sup` VALUES (6, 'SPP SUKABUMI 1', 2);
INSERT INTO `utils_sup` VALUES (7, 'SPP SUKABUMI 2', 2);
INSERT INTO `utils_sup` VALUES (8, 'SPP SUKABUMI 3', 2);
INSERT INTO `utils_sup` VALUES (9, 'SPP SUKABUMI 4', 2);
INSERT INTO `utils_sup` VALUES (10, 'SPP SUKABUMI 5', 2);
INSERT INTO `utils_sup` VALUES (11, 'SUP KOTA BANDUNG', 3);
INSERT INTO `utils_sup` VALUES (12, 'SUP KAB BANDUNG', 3);
INSERT INTO `utils_sup` VALUES (13, 'SUP KBB CIMAHI', 3);
INSERT INTO `utils_sup` VALUES (14, 'SUP KAB SUBANG 1', 3);
INSERT INTO `utils_sup` VALUES (15, 'SUP KAB SUBANG 2', 3);
INSERT INTO `utils_sup` VALUES (16, 'SUP KAB PURWAKARTA', 3);
INSERT INTO `utils_sup` VALUES (17, 'SUP KAB KARAWANG', 3);
INSERT INTO `utils_sup` VALUES (18, 'SUP GARUT 1', 4);
INSERT INTO `utils_sup` VALUES (19, 'SUP GARUT 2', 4);
INSERT INTO `utils_sup` VALUES (20, 'SUP GARUT 3', 4);
INSERT INTO `utils_sup` VALUES (21, 'SUP GARUT 4', 4);
INSERT INTO `utils_sup` VALUES (22, 'SUP SUMEDANG 1', 4);
INSERT INTO `utils_sup` VALUES (23, 'SUP SUMEDANG 2', 4);
INSERT INTO `utils_sup` VALUES (24, 'SUP TASIKMALAYA 1', 5);
INSERT INTO `utils_sup` VALUES (25, 'SUP TASIKMALAYA 2', 5);
INSERT INTO `utils_sup` VALUES (26, 'SUP CIAMIS-BANJAR-PANGANDARAN', 5);
INSERT INTO `utils_sup` VALUES (27, 'SUP KUNINGAN 1', 5);
INSERT INTO `utils_sup` VALUES (28, 'SUP KUNINGAN 2', 5);
INSERT INTO `utils_sup` VALUES (29, 'SUP INDRAMAYU 1', 6);
INSERT INTO `utils_sup` VALUES (30, 'SUP INDRAMAYU 2', 6);
INSERT INTO `utils_sup` VALUES (31, 'SUP MAJALENGKA 1', 6);
INSERT INTO `utils_sup` VALUES (32, 'SUP MAJALENGKA 2', 6);
INSERT INTO `utils_sup` VALUES (33, 'SUP CIREBON', 6);

-- ----------------------------
-- Table structure for utils_tipe_bangunan_atas
-- ----------------------------
DROP TABLE IF EXISTS `utils_tipe_bangunan_atas`;
CREATE TABLE `utils_tipe_bangunan_atas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of utils_tipe_bangunan_atas
-- ----------------------------
INSERT INTO `utils_tipe_bangunan_atas` VALUES (1, 'GTI');
INSERT INTO `utils_tipe_bangunan_atas` VALUES (2, 'RBA');
INSERT INTO `utils_tipe_bangunan_atas` VALUES (3, 'RBB');
INSERT INTO `utils_tipe_bangunan_atas` VALUES (4, 'MBI');
INSERT INTO `utils_tipe_bangunan_atas` VALUES (5, 'PTI');
INSERT INTO `utils_tipe_bangunan_atas` VALUES (6, 'MI');

SET FOREIGN_KEY_CHECKS = 1;
