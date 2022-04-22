/*
 Navicat Premium Data Transfer

 Source Server         : 213.name
 Source Server Type    : MySQL
 Source Server Version : 50561
 Source Host           : 213.name:3306
 Source Schema         : teachingopendev

 Target Server Type    : MySQL
 Target Server Version : 50561
 File Encoding         : 65001

 Date: 22/04/2022 15:22:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jeecg_monthly_growth_analysis
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_monthly_growth_analysis`;
CREATE TABLE `jeecg_monthly_growth_analysis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月份',
  `main_income` decimal(18, 2) NULL COMMENT '佣金/主营收入',
  `other_income` decimal(18, 2) NULL COMMENT '其他收入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jeecg_monthly_growth_analysis
-- ----------------------------
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (1, '2018', '1月', 114758.90, 4426054.19);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (2, '2018', '2月', 8970734.12, 1230188.67);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (3, '2018', '3月', 26755421.23, 2048836.84);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (4, '2018', '4月', 2404990.63, 374171.44);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (5, '2018', '5月', 5450793.02, 502306.10);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (6, '2018', '6月', 17186212.11, 1375154.97);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (7, '2018', '7月', 579975.67, 461483.99);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (8, '2018', '8月', 1393590.06, 330403.76);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (9, '2018', '9月', 735761.21, 1647474.92);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (10, '2018', '10月', 1670442.44, 3423368.33);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (11, '2018', '11月', 2993130.34, 3552024.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (12, '2018', '12月', 4206227.26, 3645614.92);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (13, '2019', '1月', 483834.66, 418046.77);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (14, '2019', '2月', 11666578.65, 731352.20);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (15, '2019', '3月', 27080982.08, 1878538.81);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (16, '2019', '4月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (17, '2019', '5月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (18, '2019', '6月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (19, '2019', '7月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (20, '2019', '8月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (21, '2019', '9月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (22, '2019', '10月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (23, '2019', '11月', 0.00, 0.00);
INSERT INTO `jeecg_monthly_growth_analysis` VALUES (24, '2019', '12月', 0.00, 0.00);

-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_customer`;
CREATE TABLE `jeecg_order_customer`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名',
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `idcard_pic` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证扫描件',
  `telphone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话1',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外键',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jeecg_order_customer
-- ----------------------------
INSERT INTO `jeecg_order_customer` VALUES ('15538561502720', '3333', '1', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15538561512681', '3332333', '2', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:12');
INSERT INTO `jeecg_order_customer` VALUES ('15538561550142', '4442', '2', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15541168497342', '444', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15541168499553', '5555', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15541169272690', '小王1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15541169288141', '效力1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15541169441372', '小红1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15543695362380', '1111', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15543695397221', '222', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('15543695398992', '333', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('18dc5eb1068ccdfe90e358951ca1a3d6', 'dr2', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('195d280490fe88ca1475512ddcaf2af9', '12', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('217a2bf83709775d2cd85bf598392327', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('22bc052ae53ed09913b946abba93fa89', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('23bafeae88126c3bf3322a29a04f0d5e', 'x秦风', NULL, NULL, NULL, NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('25c4a552c6843f36fad6303bfa99a382', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('2d32144e2bee63264f3f16215c258381', '33333', '2', NULL, NULL, NULL, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('2d43170d6327f941bd1a017999495e25', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('2e5f62a8b6e0a0ce19b52a6feae23d48', '3', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('313abf99558ac5f13ecca3b87e562ad1', 'scott', '2', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('34a1c5cf6cee360ed610ed0bed70e0f9', '导入秦风', NULL, NULL, NULL, NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('3c87400f8109b4cf43c5598f0d40e34d', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('40964bcbbecb38e5ac15e6d08cf3cd43', '233', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('41e3dee0b0b6e6530eccb7fbb22fd7a3', '4555', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('4808ae8344c7679a4a2f461db5dc3a70', '44', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('4b6cef12f195fad94d57279b2241770d', 'dr12', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('524e695283f8e8c256cc24f39d6d8542', '小王', '2', '370285198604033222', NULL, '18611788674', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('57c2a8367db34016114cbc9fa368dba0', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('5df36a1608b8c7ac99ad9bc408fe54bf', '4', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('6b694e9ba54bb289ae9cc499e40031e7', 'x秦风', '1', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('6c6fd2716c2dcd044ed03c2c95d261f8', '李四', '2', '370285198602058833', '', '18611788676', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('742d008214dee0afff2145555692973e', '秦风', '1', '370285198602058822', NULL, '18611788676', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('7469c3e5d371767ff90a739d297689b5', '导入秦风', '2', NULL, NULL, NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:02');
INSERT INTO `jeecg_order_customer` VALUES ('7a96e2c7b24847d4a29940dbc0eda6e5', 'drscott', NULL, NULL, NULL, NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('7f5a40818e225ee18bda6da7932ac5f9', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('8011575abfd7c8085e71ff66df1124b9', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('8404f31d7196221a573c9bd6c8f15003', '小张', '1', '370285198602058211', NULL, '18611788676', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('859020e10a2f721f201cdbff78cf7b9f', 'scott', NULL, NULL, NULL, NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('8cc3c4d26e3060975df3a2adb781eeb4', 'dr33', NULL, NULL, NULL, NULL, 'b2feb454e43c46b2038768899061e464', 'jeecg-boot', '2019-04-04 17:23:09', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('8d1725c23a6a50685ff0dedfd437030d', '4', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('933cae3a79f60a93922d59aace5346ce', '小王', NULL, '370285198604033222', NULL, '18611788674', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('9bdb5400b709ba4eaf3444de475880d7', 'dr22', NULL, NULL, NULL, NULL, '22c17790dcd04b296c4a2a089f71895f', 'jeecg-boot', '2019-04-04 17:23:09', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('9f87677f70e5f864679314389443a3eb', '33', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('a2c2b7101f75c02deb328ba777137897', '44', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('ab4d002dc552c326147e318c87d3bed4', 'ddddd', '1', '370285198604033222', NULL, '18611755848', '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:47', 'admin', '2019-04-04 17:31:17');
INSERT INTO `jeecg_order_customer` VALUES ('ad116f722a438e5f23095a0b5fcc8e89', 'dr秦风', NULL, NULL, NULL, NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('b1ba147b75f5eaa48212586097fc3fd1', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('b43bf432c251f0e6b206e403b8ec29bc', 'lisi', NULL, NULL, NULL, NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('bcdd300a7d44c45a66bdaac14903c801', '33', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('beb983293e47e2dc1a9b3d649aa3eb34', 'ddd3', NULL, NULL, NULL, NULL, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('c219808196406f1b8c7f1062589de4b5', '44', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('c8ed061d4b27c0c7a64e100f2b1c8ab5', '张经理', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('cc5de4af7f06cd6d250965ebe92a0395', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('cf8817bd703bf7c7c77a2118edc26cc7', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('d72b26fae42e71270fce2097a88da58a', '导入scott', NULL, 'www', NULL, NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:05');
INSERT INTO `jeecg_order_customer` VALUES ('dbdc60a6ac1a8c43f24afee384039b68', 'xiaowang', NULL, NULL, NULL, NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('dc5883b50466de94d900919ed96d97af', '33', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('deeb73e553ad8dc0a0b3cfd5a338de8e', '3333', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('e2570278bf189ac05df3673231326f47', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('e39cb23bb950b2bdedfc284686c6128a', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('e46fe9111a9100844af582a18a2aa402', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('ee7af0acb9beb9bf8d8b3819a8a7fdc3', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('f5d2605e844192d9e548f9bd240ac908', '小张', NULL, '370285198602058211', NULL, '18611788676', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_customer` VALUES ('f6db6547382126613a3e46e7cd58a5f2', '导入scott', NULL, NULL, NULL, NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `order_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime NULL DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10, 3) NULL DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('163e2efcbc6d7d54eb3f8a137da8a75a', 'B100', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('3a867ebf2cebce9bae3f79676d8d86f3', '导入B100', '2222', NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:13');
INSERT INTO `jeecg_order_main` VALUES ('4bca3ea6881d39dbf67ef1e42c649766', '1212', NULL, NULL, NULL, NULL, 'admin', '2019-04-03 10:55:43', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('4cba137333127e8e31df7ad168cc3732', '青岛订单A0001', '2', '2019-04-03 10:56:07', NULL, NULL, 'admin', '2019-04-03 10:56:11', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('54e739bef5b67569c963c38da52581ec', 'NC911', '1', '2019-02-18 09:58:51', 40.000, NULL, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59');
INSERT INTO `jeecg_order_main` VALUES ('5d6e2b9e44037526270b6206196f6689', 'N333', NULL, '2019-04-04 17:19:11', NULL, '聪明00', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('6a719071a29927a14f19482f8693d69a', 'c100', NULL, NULL, 5000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('8ab1186410a65118c4d746eb085d3bed', '导入400', '1', '2019-02-18 09:58:51', 40.000, NULL, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59');
INSERT INTO `jeecg_order_main` VALUES ('9a57c850e4f68cf94ef7d8585dbaf7e6', 'halou100dd', NULL, '2019-04-04 17:30:32', NULL, NULL, 'admin', '2019-04-04 17:30:41', 'admin', '2019-04-04 17:31:08');
INSERT INTO `jeecg_order_main` VALUES ('a2cce75872cc8fcc47f78de9ffd378c2', '导入B100', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('b190737bd04cca8360e6f87c9ef9ec4e', 'B0018888', '1', NULL, NULL, NULL, 'admin', '2019-02-15 18:39:29', 'admin', '2019-02-15 18:39:37');
INSERT INTO `jeecg_order_main` VALUES ('d908bfee3377e946e59220c4a4eb414a', 'SSSS001', NULL, NULL, 599.000, NULL, 'admin', '2019-04-01 15:43:03', 'admin', '2019-04-01 16:26:52');
INSERT INTO `jeecg_order_main` VALUES ('e73434dad84ebdce2d4e0c2a2f06d8ea', '导入200', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('eb13ab35d2946a2b0cfe3452bca1e73f', 'BJ9980', '1', NULL, 90.000, NULL, 'admin', '2019-02-16 17:36:42', 'admin', '2019-02-16 17:46:16');
INSERT INTO `jeecg_order_main` VALUES ('f618a85b17e2c4dd58d268220c8dd9a1', 'N001', NULL, '2019-04-01 19:09:02', 2222.000, NULL, 'admin', '2019-04-01 19:09:47', 'admin', '2019-04-01 19:10:00');
INSERT INTO `jeecg_order_main` VALUES ('f71f7f8930b5b6b1703d9948d189982b', 'BY911', NULL, '2019-04-06 19:08:39', NULL, NULL, 'admin', '2019-04-01 16:36:02', 'admin', '2019-04-01 16:36:08');
INSERT INTO `jeecg_order_main` VALUES ('f8889aaef6d1bccffd98d2889c0aafb5', 'A100', NULL, '2018-10-10 00:00:00', 6000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_main` VALUES ('fe81ee5d19bbf9eef2066d4f29dfbe0f', 'uuuu', NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL);

-- ----------------------------
-- Table structure for jeecg_order_ticket
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_ticket`;
CREATE TABLE `jeecg_order_ticket`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `ticket_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '航班号',
  `tickect_date` datetime NULL DEFAULT NULL COMMENT '航班时间',
  `order_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外键',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jeecg_order_ticket
-- ----------------------------
INSERT INTO `jeecg_order_ticket` VALUES ('0f0e3a40a215958f807eea08a6e1ac0a', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('0fa3bd0bbcf53650c0bb3c0cac6d8cb7', 'ffff', '2019-02-21 00:00:00', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('14221afb4f5f749c1deef26ac56fdac3', '33', '2019-03-09 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15538561502730', '222', NULL, '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15538561526461', '2244', '2019-03-29 00:00:00', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:26');
INSERT INTO `jeecg_order_ticket` VALUES ('15541168478913', 'hhhhh', NULL, 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169272810', '22211', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169302331', '333311', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169713092', '333311', '2019-04-01 19:09:47', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15542604293170', 'c', NULL, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15542604374431', 'd', NULL, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695362380', 'ccc2', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695381291', 'cccc1', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695740352', 'dddd', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('18905bc89ee3851805aab38ed3b505ec', '44', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('1f809cbd26f4e574697e1c10de575d72', 'A100', NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('21051adb51529bdaa8798b5a3dd7f7f7', 'C10029', '2019-02-20 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('269576e766b917f8b6509a2bb0c4d4bd', 'A100', NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('2d473ffc79e5b38a17919e15f8b7078e', '66', '2019-03-29 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('3655b66fca5fef9c6aac6d70182ffda2', 'AA123', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('365d5919155473ade45840fd626c51a9', 'dddd', '2019-04-04 17:25:29', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('4889a782e78706ab4306a925cfb163a5', 'C34', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:35:00', 'admin', '2019-04-01 16:35:07');
INSERT INTO `jeecg_order_ticket` VALUES ('48d385796382cf87fa4bdf13b42d9a28', '导入A100', NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('541faed56efbeb4be9df581bd8264d3a', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('57a27a7dfd6a48e7d981f300c181b355', '6', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('5ce4dc439c874266e42e6c0ff8dc8b5c', '导入A100', NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('5f16e6a64ab22a161bd94cc205f2c662', '222', '2019-02-23 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('645a06152998a576c051474157625c41', '88', '2019-04-04 17:25:31', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('6e3562f2571ea9e96b2d24497b5f5eec', '55', '2019-03-23 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('8fd2b389151568738b1cc4d8e27a6110', '导入A100', NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('93f1a84053e546f59137432ff5564cac', '55', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('969ddc5d2e198d50903686917f996470', 'A10029', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('96e7303a8d22a5c384e08d7bcf7ac2bf', 'A100', NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('9e8a3336f6c63f558f2b68ce2e1e666e', 'dddd', NULL, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:55', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('a28db02c810c65660015095cb81ed434', 'A100', NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('b217bb0e4ec6a45b6cbf6db880060c0f', 'A100', NULL, '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('ba708df70bb2652ed1051a394cfa0bb3', '333', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('beabbfcb195d39bedeeafe8318794562', 'A1345', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:04', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('bf450223cb505f89078a311ef7b6ed16', '777', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c06165b6603e3e1335db187b3c841eef', 'fff', NULL, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:58', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c113136abc26ace3a6da4e41d7dc1c7e', '44', '2019-03-15 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c1abdc2e30aeb25de13ad6ee3488ac24', '77', '2019-03-22 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c23751a7deb44f553ce50a94948c042a', '33', '2019-03-09 00:00:00', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c64547666b634b3d6a0feedcf05f25ce', 'C10019', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('c8b8d3217f37da78dddf711a1f7da485', 'A100', NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('cab691c1c1ff7a6dfd7248421917fd3c', 'A100', NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('cca10a9a850b456d9b72be87da7b0883', '77', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('d2fbba11f4814d9b1d3cb1a3f342234a', 'C10019', '2019-02-18 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('d746c1ed956a562e97eef9c6faf94efa', '111', '2019-02-01 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('dbdb07a16826808e4276e84b2aa4731a', '导入A100', NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('e7075639c37513afc0bbc4bf7b5d98b9', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('fa759dc104d0371f8aa28665b323dab6', '888', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);
INSERT INTO `jeecg_order_ticket` VALUES ('ff197da84a9a3af53878eddc91afbb2e', '33', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);

-- ----------------------------
-- Table structure for jeecg_project_nature_income
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_project_nature_income`;
CREATE TABLE `jeecg_project_nature_income`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目性质',
  `insurance_fee` decimal(18, 2) NULL COMMENT '保险经纪佣金费',
  `risk_consulting_fee` decimal(18, 2) NULL COMMENT '风险咨询费',
  `evaluation_fee` decimal(18, 2) NULL COMMENT '承保公估评估费',
  `insurance_evaluation_fee` decimal(18, 2) NULL COMMENT '保险公估费',
  `bidding_consulting_fee` decimal(18, 2) NULL COMMENT '投标咨询费',
  `interol_consulting_fee` decimal(18, 2) NULL COMMENT '内控咨询费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jeecg_project_nature_income
-- ----------------------------
INSERT INTO `jeecg_project_nature_income` VALUES (1, '市场化-电商业务', 4865.41, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (2, '统筹型', 35767081.88, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (3, '市场化-非股东', 1487045.35, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (4, '市场化-参控股', 382690.56, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (5, '市场化-员工福利', 256684.91, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (6, '市场化-再保险', 563451.03, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (7, '市场化-海外业务', 760576.25, 770458.75, 0.00, 0.00, 0.00, 0.00);
INSERT INTO `jeecg_project_nature_income` VALUES (8, '市场化-风险咨询', 910183.93, 0.00, 0.00, 0.00, 0.00, 226415.09);

-- ----------------------------
-- Table structure for onl_cgform_button
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_button`;
CREATE TABLE `onl_cgform_button`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `BUTTON_ICON` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮图标',
  `BUTTON_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `BUTTON_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮状态',
  `BUTTON_STYLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮样式',
  `EXP` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表达式',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  `OPT_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮类型',
  `ORDER_NUM` int(11) NULL DEFAULT NULL COMMENT '排序',
  `OPT_POSITION` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮位置1侧面 2底部',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_formid`(`CGFORM_HEAD_ID`) USING BTREE,
  INDEX `index_button_code`(`BUTTON_CODE`) USING BTREE,
  INDEX `index_button_status`(`BUTTON_STATUS`) USING BTREE,
  INDEX `index_button_order`(`ORDER_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_button
-- ----------------------------
INSERT INTO `onl_cgform_button` VALUES ('a45bc1c6fba96be6b0c91ffcdd6b54aa', 'genereate_person_config', 'icon-edit', '生成配置', '1', 'link', NULL, 'e2faf977fdaf4b25a524f58c2441a51c', 'js', NULL, '2');

-- ----------------------------
-- Table structure for onl_cgform_enhance_java
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_java`;
CREATE TABLE `onl_cgform_enhance_java`  (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BUTTON_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `CG_JAVA_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型',
  `CG_JAVA_VALUE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数值',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表单ID',
  `ACTIVE_STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '生效状态',
  `EVENT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'end' COMMENT '事件状态(end:结束，start:开始)',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_fmid`(`CGFORM_HEAD_ID`) USING BTREE,
  INDEX `index_buttoncode`(`BUTTON_CODE`) USING BTREE,
  INDEX `index_status`(`ACTIVE_STATUS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_enhance_java
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_js`;
CREATE TABLE `onl_cgform_enhance_js`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `CG_JS` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'JS增强内容',
  `CG_JS_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_fmid`(`CGFORM_HEAD_ID`) USING BTREE,
  INDEX `index_jstype`(`CG_JS_TYPE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_enhance_js
-- ----------------------------
INSERT INTO `onl_cgform_enhance_js` VALUES ('274b5d741a0262d3411958f0c465c5f0', 'genereate_person_config(row){\nconsole.log(\'选择\',row)\nalert(row.name + \'，个人积分配置生成成功！\');\n}', 'list', NULL, 'e2faf977fdaf4b25a524f58c2441a51c');
INSERT INTO `onl_cgform_enhance_js` VALUES ('2cbaf25f1edb620bea2d8de07f8233a1', 'air_china_post_materiel_item_onlChange(){\n    return {\n        wl_name(){\n           \n            let id = event.row.id\n            let cnum = event.row.num\n            let value = event.value\n            let targrt = event.target\n            let columnKey = event.column.key\n           let nval = 200*cnum\n           console.log(\'row\',event.row);\n           console.log(\'cnum\',cnum);\n           let otherValues = {\'jifen\': nval}\n              \n                that.triggleChangeValues(targrt,id,otherValues)\n\n        }\n    }\n}', 'form', NULL, 'e67d26b610dd414c884c4dbb24e71ce3');
INSERT INTO `onl_cgform_enhance_js` VALUES ('35d4ef464e5e8c87c9aa82ea89215fc1', '', 'list', NULL, 'e67d26b610dd414c884c4dbb24e71ce3');
INSERT INTO `onl_cgform_enhance_js` VALUES ('44cad4eec436328ed3cc134855f8d1d5', ' onlChange(){\n   return {\n    name(that, event) {\n      that.executeMainFillRule()\n    }\n  }\n }', 'form', NULL, '4adec929a6594108bef5b35ee9966e9f');
INSERT INTO `onl_cgform_enhance_js` VALUES ('90394fbc3d48978cc0937bc56f2d5370', '', 'list', NULL, 'deea5a8ec619460c9245ba85dbc59e80');
INSERT INTO `onl_cgform_enhance_js` VALUES ('f405e10ba82d8ad5eec378b624cd33bf', 'created(){\nconsole.log(\"init\")\n}', 'list', NULL, 'b5f6dafc26d7438a8ec64a1a101dea5e');

-- ----------------------------
-- Table structure for onl_cgform_enhance_sql
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_enhance_sql`;
CREATE TABLE `onl_cgform_enhance_sql`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮编码',
  `CGB_SQL` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'SQL内容',
  `CGB_SQL_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Sql名称',
  `CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单ID',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_formid`(`CGFORM_HEAD_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_enhance_sql
-- ----------------------------

-- ----------------------------
-- Table structure for onl_cgform_field
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_field`;
CREATE TABLE `onl_cgform_field`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `cgform_head_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表ID',
  `db_field_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名字',
  `db_field_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段备注',
  `db_field_name_old` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原字段名',
  `db_is_key` tinyint(1) NULL DEFAULT NULL COMMENT '是否主键 0否 1是',
  `db_is_null` tinyint(1) NULL DEFAULT NULL COMMENT '是否允许为空0否 1是',
  `db_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库字段类型',
  `db_length` int(11) NOT NULL COMMENT '数据库字段长度',
  `db_point_length` int(11) NULL DEFAULT NULL COMMENT '小数点',
  `db_default_val` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表字段默认值',
  `dict_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典code',
  `dict_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典表',
  `dict_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典Text',
  `field_show_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单控件类型',
  `field_href` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跳转URL',
  `field_length` int(11) NULL DEFAULT NULL COMMENT '表单控件长度',
  `field_valid_type` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单字段校验规则',
  `field_must_input` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段是否必填',
  `field_extend_json` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '扩展参数JSON',
  `field_default_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '控件默认值，不同的表达式展示不同的结果。\r\n1. 纯字符串直接赋给默认值；\r\n2. #{普通变量}；\r\n3. {{ 动态JS表达式 }}；\r\n4. ${填值规则编码}；\r\n填值规则表达式只允许存在一个，且不能和其他规则混用。',
  `is_query` tinyint(1) NULL DEFAULT NULL COMMENT '是否查询条件0否 1是',
  `is_show_form` tinyint(1) NULL DEFAULT NULL COMMENT '表单是否显示0否 1是',
  `is_show_list` tinyint(1) NULL DEFAULT NULL COMMENT '列表是否显示0否 1是',
  `is_read_only` tinyint(1) NULL DEFAULT 0 COMMENT '是否是只读（1是 0否）',
  `query_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `main_table` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键主表名',
  `main_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外键主键字段',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `converter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义值转换器',
  `query_def_val` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询默认值',
  `query_dict_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典text',
  `query_dict_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典code',
  `query_dict_table` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询配置字典table',
  `query_show_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询显示控件',
  `query_config_flag` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用查询配置1是0否',
  `query_valid_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询字段校验类型',
  `query_must_input` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询字段是否必填1是0否',
  `sort_flag` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否支持排序1是0否',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inex_table_id`(`cgform_head_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_field
-- ----------------------------
INSERT INTO `onl_cgform_field` VALUES ('0021c969dc23a9150d6f70a13b52e73e', '402860816aa5921f016aa5921f480000', 'begin_date', '开始时间', 'begin_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('005c44d779a4dc653844d8f3c8f15675', 'd6cb8d561355467086159ab8cfbe0aec', 'work_id', '作业ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'teaching_work', 'id', 7, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('01ae8a86852747aa75f03bdc1602b502', '1e65c54cea44446897c5fec4d967d3f6', 'course_id', '课程ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'sel_user', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('01c368a63771ef11dfa4bece9a9ec766', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_name', '文件名', NULL, 0, 1, 'String', 128, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('020c1622c3df0aef30185f57874f6959', '79091e8277c744158530321513119c68', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 8, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:29:26', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('02b20e692456403e2fed1a89a06833b4', '402860816bff91c0016bff91d2810005', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('03668009f0ad92b20abb1a377197ee47', 'deea5a8ec619460c9245ba85dbc59e80', 'order_fk_id', '订单外键ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'test_order_main', 'id', 10, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:42:53', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('03709092184fdf4a66b0cdb4dd10a159', '402860816bff91c0016bffa220a9000b', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 46, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:34:44', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('03c105d2706c8286416833684de67406', '79091e8277c744158530321513119c68', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('03fd5ab69f331ff760c3f7d86b4a93f8', '4028318169e81b970169e81b97650000', 'log_content', '日志内容', 'log_content', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('043cb16a0d88c211fe9f5a227e71e2a4', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_location', '存储位置', NULL, 0, 0, 'String', 32, 0, '', 'file_location', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 10, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('045eb432c418b2b103b1e1b8e8a8a75d', 'fb7125a344a649b990c12949945cb6c1', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', NULL, NULL, NULL, '2019-03-26 19:24:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('04e4185a503e6aaaa31c243829ff4ac7', 'd35109c3632c4952a19ecc094943dd71', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('04f6c01bb8d9ce8b8a6b5a26681af8a6', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 5, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('04ff134cb4aae845059e10b3b85f1451', '7ea60a25fa27470e9080d6a921aabbd1', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('051dd70c504c97a028daab2af261ea35', '1acb6f81a1d9439da6cc4e868617b565', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('052dcc6f34976b66754fd99415bd22ce', '79091e8277c744158530321513119c68', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('054db05394e83b318f097a60bc044134', '402860816bff91c0016bffa220a9000b', 'residence_address', '户籍地址', 'residence_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 28, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0604945c206e867644e9a44b4c9b20c6', 'fb19fb067cd841f9ae93d4eb3b883dc0', '2', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0617de6d735b37a3f80f2f35ad5d1511', '4028839a6de2ebd3016de2ebd3870000', 'size_type', '尺码类型', 'size_type', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 13, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('06a1badae6119abf4ec48858a3e94e1c', '402860816bff91c0016bffa220a9000b', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 43, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('06f1cfff58395ff62526b894f6182641', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0791be829fcf72da4e0f4ae3acb45f31', 'd6cb8d561355467086159ab8cfbe0aec', 'comment', '评论内容', NULL, 0, 0, 'String', 512, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('07a307972076a392ffc61b11437f89dd', '402860816bff91c0016bff91c0cb0000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('07f4776fd641389a8c98a85713990dce', '402860816bff91c0016bff91c0cb0000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('09114685037d0977427891901ffac08d', '1e65c54cea44446897c5fec4d967d3f6', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('09450359eb90b40d224ec43588a62f9e', '402860816bff91c0016bff91c0cb0000', 'user_id', '用户ID', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0a453a63e33654aa1b9ee2affa854a6d', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('0a4cdcb7e54f614ab952024f6c72bb6d', 'beee191324fd40c1afec4fda18bd9d47', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0adc06d9b497684bcbb5a781e044517c', '1acb6f81a1d9439da6cc4e868617b565', 'supplier', '供应商', NULL, 0, 1, 'String', 32, 0, '', 'air_china_ supplier', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 15, 'admin', '2019-06-10 14:47:14', '2019-04-24 16:52:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0b3e833ac4aae3a13ec2f8ae460708f8', '4028839a6de2ebd3016de2ebd3870000', 'no', '预算表序号', 'no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0b49594972b112415c1e7114cda8eb1f', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'price', '订单金额', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0ba1bf74e2a6a94a7a63010ec7230706', '402860816bff91c0016bffa220a9000b', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 42, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0cba94f0497d4d3d829fc573f58eff9f', '402860816bff91c0016bffa220a9000b', 'graduation_time', '毕业时间', 'graduation_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0d00c51a4ddad2598a587fadc968a8b2', '402860816bff91c0016bff91cfea0004', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0ddd0c0afc967a9ab6050401ca62a4be', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0fb6fa76c5c78a1e957dbb411e110738', '402860816bff91c0016bff91d8830007', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('0fefad65ef0a1f160099e7509378b812', 'd6cb8d561355467086159ab8cfbe0aec', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('101a73df0aa5199ac05c4ce92a4f0e3e', '4adec929a6594108bef5b35ee9966e9f', 'name', '姓名', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserCode}', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('105c8e44ad13026b641f0363601f30f3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'num', '循环数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1130f1e252533529bb1167b896dffe32', 'deea5a8ec619460c9245ba85dbc59e80', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('117fc4ba649d6690a3ac482ad5e4ad38', '56870166aba54ebfacb20ba6c770bd73', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('13246645b7650491b70205d99703ca06', '402860816aa5921f016aa5dedcb90009', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('135dd0ee50712722db65b8762bd487ea', '8994f2817b5a45d9890aa04497a317c5', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('14ec4c83c29966ab42b6b718c5a3e774', '7ea60a25fa27470e9080d6a921aabbd1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1566008177fe3c2cd6b8a2a57516f7b4', '1e65c54cea44446897c5fec4d967d3f6', 'del_flag', '删除标识', NULL, 0, 0, 'int', 32, 0, '0', 'del_flag', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 16, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('16363d0bc125125e395772278d0cf22e', '4b556f0168f64976a3d20bfb932bc798', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('179c290e383009810fb738f07bd5af8d', '402860816bff91c0016bff91d2810005', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('17cbda69da9dd3632625a0647c259070', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '1', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('17d57b1a745ed965d51c68a5d16f3842', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('18fefb2257901f05508f8ec13ada78a3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1973ef1d3728fbff2db6a352e001f5f7', 'fb7125a344a649b990c12949945cb6c1', 'name', '用户名', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1a8d692d3b3b08fa3f4396d9587455ac', '1e65c54cea44446897c5fec4d967d3f6', 'collect_num', '收藏次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 15, NULL, NULL, '2020-04-11 21:43:06', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1ab5be1f937f393b3e5cc214ef1b855c', '7ea60a25fa27470e9080d6a921aabbd1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1b6c7b95028bed9ff656d65557dd2bdf', '402860816bff91c0016bffa220a9000b', 'user_id', '用户id', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1c2f307e315bac77a6d3f02e88387a43', 'deea5a8ec619460c9245ba85dbc59e80', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1c3b2ad0a52ecb47fa7fd53f25875beb', 'deea5a8ec619460c9245ba85dbc59e80', 'price', '价格', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1c4d25a12388c80d397bb4f4664fe4e6', '4b556f0168f64976a3d20bfb932bc798', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1cfe967bb457cbaa6e041e45d019b583', '402860816bff91c0016bff91c7010001', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d899ea6457241fcd4b356923b87c3e7', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'order_no', '订单编号', NULL, 0, 0, 'String', 40, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 8, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1d95bdf1120c5a1776df022d0a571f21', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('1df4f99b12ae83566dbf5eb477a69919', '699d6a7064064ca7805c68ea0f06932c', 'price', '现价', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'money', '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1e18ef1d2f321b836b9bfe314bc555ec', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'source_user', '来源用户', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 16, 'jeecg', '2020-04-11 23:10:38', '2020-03-08 00:19:05', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1e3d8cfbf12155559666a23ee2c6c5ca', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1ed46fdeb289bd7805c9b83332ccd3b4', '402860816bff91c0016bff91d2810005', 'relation', '关系', 'relation', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1f0c6d33b79713fe79fb30373c81f6f7', '758334cb1e7445e2822b60e807aec4a3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('1fa5f07b3e70d4925b69b2bf51309421', '56870166aba54ebfacb20ba6c770bd73', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('209ddb923d8dab9f454d56d82c0cc725', '3d447fa919b64f6883a834036c14aa67', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('20ff34fb0466089cb633d73d5a6f08d6', 'd35109c3632c4952a19ecc094943dd71', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2113a4ec7b88b4820dcbbdf96e46bbb7', 'fbc35f067da94a70adb622ddba259352', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('214cfdcf2c826cf0c71ce54dc75caddf', '2d869ad51818483faea70b2bd62ea34e', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2150e48b2cb6072d2d8ecd79a7daf7cc', '402860816bff91c0016bff91ca7e0002', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2323239efb5a40b73034411868dfc41d', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('23f42061ed218bdbc1262913c071e1cd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'iz_valid', '启动状态', NULL, 0, 1, 'int', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('242cc59b23965a92161eca69ffdbf018', 'd35109c3632c4952a19ecc094943dd71', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('265702edb8872e322fe72d3640e34ac5', '402860816bff91c0016bff91cfea0004', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2739ab1ece4d6053ba931bb6572f4ed8', '4028839a6de2ebd3016de2ebd3870000', 'iz_valid', '启用状态', 'iz_valid', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('283f42283b9d0bf3b95ba3384ab2d255', '758334cb1e7445e2822b60e807aec4a3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('284864d99fddfdcb00e188e3a512cb28', '1acb6f81a1d9439da6cc4e868617b565', 'no', '预算表序号', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2889d3cef706f91e092d76a56b8055be', '402860816bff91c0016bff91cda80003', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('295c57a1c75d2064b695cfd1d0090fd8', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'pay_mode', '支付方式', NULL, 0, 0, 'int', 3, 0, '', 'pay_method', '', '', 'radio', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 13, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('29e4abea55d9fa7dbbd0c8dbbb2b3756', '402860816bff91c0016bff91cda80003', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2c1bb6cb503ae3ac125d408beedeb4b9', 'd6cb8d561355467086159ab8cfbe0aec', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2d53a66f0b72d820b86ff445e2181d76', 'beee191324fd40c1afec4fda18bd9d47', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2d94df48bedc50800784255729c9fca6', '699d6a7064064ca7805c68ea0f06932c', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 3, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2dfc4c81926f678c5f8d5ffd27858201', 'e2faf977fdaf4b25a524f58c2441a51c', 'account', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2e5275b6407e1b4265af8519077fa4a5', 'd3ae1c692b9640e0a091f8c46e17bb01', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2e66b9db37648389e0846e2204111732', '73162c3b8161413e8ecdca7eb288d0c9', 'has_child', '是否有子节点', NULL, 0, 1, 'string', 3, 0, '', 'valid_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2e6f741fa96a49a0adccc7b4682c1cef', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'name', '名称', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{sysUserName}', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('2ee58d8e4844dfe1fa6b1b841ae0b312', '402860816bff91c0016bff91d2810005', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('2f111722eb3a994450e67e3211fd69a8', '402860816bff91c0016bff91ca7e0002', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('30143cc3de69c413828f9fba20662026', '402860816bff91c0016bffa220a9000b', 'healthy', '健康状况', 'healthy', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('31fd90306c3942f09cb79deabbf2f541', '402860816bff91c0016bff91d2810005', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('321c55ce96964bc886605c8fcfd1f772', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'user_id', '用户ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2020-04-11 23:03:48', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3301548c2e848843e4272fca7f8ebe07', 'd6cb8d561355467086159ab8cfbe0aec', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('336495117e3a31351fed6963b950dddb', '402860816bff91c0016bffa220a9000b', 'inside_transfer', '内部工作调动情况', 'inside_transfer', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 37, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('345c8b48e1e128e77c4c6e2b36512804', '402860816aa5921f016aa5dedcb90009', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('351faaeb2dd8105e9c66f678211c9d4f', 'dbf4675875e14676a3f9a8b2b8941140', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('354b2ce39c5e8ec3f0bbb01bf8ff0fb7', '32f75e4043ef4070919dbd4337186a3d', 'content', '描述', NULL, 0, 1, 'String', 300, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-11 10:15:31', '2019-03-28 15:24:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('35ca1c8aa1501bc8a79c880928841f18', '402860816aa5921f016aa5921f480000', 'update_by', '修改人id', 'update_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 11, 'admin', '2019-05-11 15:31:55', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3635793767371c6db9f76b4b79f9d321', '402860816bff91c0016bff91d8830007', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('370a6eebc2d732eaf121fe0830d853a6', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_code', '物料编码', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3712fd14e5ed78fc780dcb255091da2e', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'grade', '年级', NULL, 0, 1, 'int', 2, 0, '', 'grade', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('37462a4d78968d0e432d746423603b81', '3d447fa919b64f6883a834036c14aa67', 'province', '省份', NULL, 0, 1, 'String', 100, 0, '', '', '{table:\'sys_category\',txt:\'name\',key:\'id\',linkField:\'city,area\',idField:\'id\',pidField:\'pid\', condition:\" pid = \'1230769196661510146\' \"         }', '', 'link_down', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('37e2548874f09ef7d08642a30bc918fa', 'fbc35f067da94a70adb622ddba259352', 'group_name', '小组名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('390dfe0e329046ff1e3f86e2fc6fddcc', '441e68dc1d0147d5a69fb54260d1dbb3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('391e7cbd9f29743b11bb555c50547b1f', '32f75e4043ef4070919dbd4337186a3d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('39d9d9c92e8e5b964e7e0d6e9b98b310', '2d869ad51818483faea70b2bd62ea34e', 'comment', '评语', NULL, 0, 1, 'String', 512, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3b439859f98e30e34d25e983eb22e408', '402860816bff91c0016bff91c7010001', 'award_time', '获奖时间', 'award_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3bf44e68de518f3ddf72b87671d0ff90', '8994f2817b5a45d9890aa04497a317c5', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3cd2061ea15ce9eeb4b7cf2e544ccb6b', 'd35109c3632c4952a19ecc094943dd71', 'file_kk', '附件', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'file', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-08-23 23:45:15', '2019-06-10 20:06:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3cfd4d60c7d8409ae716a579bcb0910d', '402860816bff91c0016bff91c0cb0000', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3e32f6c30c9028872388f70743c5d6a5', '402860816bff91c0016bff91c0cb0000', 'reason', '申请理由', 'reason', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3e70d1c516c3533c6698300665c669e1', '402860816bff91c0016bff91c0cb0000', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:31', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('3f2ace8f968a0e5b91d1340ee2957cda', '402860816bff91c0016bff91d8830007', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('40471eb4560bf0bbd2ffef17d48a269d', 'dbf4675875e14676a3f9a8b2b8941140', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('404b516d4f2229f292783db595b02ba1', '402860816bff91c0016bff91d8830007', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('405de5ea82e54138a0613dd41b006dfb', '56870166aba54ebfacb20ba6c770bd73', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4164314d6a51d100169a29872b7504d8', '402860816bff91c0016bff91ca7e0002', 'cert_time', '发证时间', 'cert_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('41d4215c01b0d26871f2cb83d3e532ae', '402860816bff91c0016bff91c0cb0000', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 17, 'admin', '2019-07-19 18:09:01', '2019-07-19 15:35:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('422a44a15fa39fd57c3c23eb601f7c03', '56870166aba54ebfacb20ba6c770bd73', 'descc', '描述', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('42cccfa014c9e131a0a1b23f563d3688', '402860816bff91c0016bffa220a9000b', 'sex', '性别', 'sex', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4312f618c83e07db82e468b81a1eaa45', '402860816bff91c0016bffa220a9000b', 'photo', '照片', 'photo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 20, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('435b57180fc995e3c4ec42516963bca3', '4028839a6de2ebd3016de2ebd3870000', 'wl_code', '物料编码', 'wl_code', 0, 1, 'string', 60, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('44bdc595f1e565fc053e01134b92bb47', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('44e81e24d2384b0f187e8f69eda55390', '402860816bff91c0016bff91cda80003', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('45c0a1a89a1e2a72533b9af894be1011', '27fc5f91274344afa7673a732b279939', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('45d59eb647257fcbcb9d143ff1ba2080', 'deea5a8ec619460c9245ba85dbc59e80', 'pro_type', '产品类型', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 16:07:16', '2019-04-23 20:54:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('469b250595f15dfebe69991d72e4bfb2', 'e9faf717024b4aae95cff224ae9b6d97', 'name', '员工姓名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('46be01bef342519e268902d0d36a7473', 'deea5a8ec619460c9245ba85dbc59e80', 'descc', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('46f1a875f86a4f48d0540ad0d5e667d7', '56870166aba54ebfacb20ba6c770bd73', 'order_date', '下单时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('47c21a6b45e59a6b70bb9c0cc4510a68', '1acb6f81a1d9439da6cc4e868617b565', 'integral_val', '积分值', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('47fa05530f3537a1be8f9e7a9e98be82', 'd35109c3632c4952a19ecc094943dd71', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', 'sex', '', '', 'list', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('48167d12b7f2cafeec9ea655c5703c42', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'action_id', '活动ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 12, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4851697fdf63709d2bc7451b7415f4af', '32f75e4043ef4070919dbd4337186a3d', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '1', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('485a8ddce2c033f88af674ec98b68e32', '402860816bff91c0016bffa220a9000b', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 40, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('492a462b212fc34b0ee70e872684ed7e', '7ea60a25fa27470e9080d6a921aabbd1', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('499a5dac033a01ce58009e4c5b786697', 'e9faf717024b4aae95cff224ae9b6d97', 'age', '员工年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('49cd3dbd4f7f7cf0d19b1ee1045cfa69', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_code', '岗位编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4a6b4ec5d171cbdcb43108398450b258', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 2, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4a7a9267954a7783f156423c1ef84912', '1e65c54cea44446897c5fec4d967d3f6', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4ba7c553ca4babcec75273c531cd65e1', '402860816bff91c0016bff91cfea0004', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c004b60419d92b198fd588b55e365c1', '699d6a7064064ca7805c68ea0f06932c', 'original_price', '原价', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'money', '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c2cba9fc950333421c4193576b8384d', '32f75e4043ef4070919dbd4337186a3d', 'salary', '工资', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-11 10:15:32', '2019-03-28 15:24:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4c4f4067fa31737f3ff9e088130ef793', '4adec929a6594108bef5b35ee9966e9f', 'sex', '性别', NULL, 0, 1, 'String', 200, 0, '', 'sex', '', '', 'list', '', 120, NULL, '0', '', '{{ 2 }}', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('4c570c5cf05590348e12621ca62773cf', '402860816aa5921f016aa5921f480000', 'name', '请假人', 'name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4cacfa054e96791ab938b5c8f8e02cd1', '27fc5f91274344afa7673a732b279939', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2019-07-01 16:28:20', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4d4a04ae2c9bcfd4f6b7993cd6f0af93', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4e4badeb77eaede913891c84d40815f5', '699d6a7064064ca7805c68ea0f06932c', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4f718d95ad9de33eac18fd0663e4c1f1', '32f75e4043ef4070919dbd4337186a3d', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4f7cba71de7afe6efbd024f5f9935521', '402860816bff91c0016bff91cda80003', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('4fe6b159890dce2577daef83bd107532', '441e68dc1d0147d5a69fb54260d1dbb3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('506c9b0b2331a24e5c284274d28fe569', '27fc5f91274344afa7673a732b279939', 'kkk', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('508eb28e1409a2a9501cdf6fd7eb24c7', 'dbf4675875e14676a3f9a8b2b8941140', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('509a4f63f02e784bc04499a6a9be8528', 'd35109c3632c4952a19ecc094943dd71', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('519f68557b953fc2d38400182b187366', '402860816bff91c0016bffa220a9000b', 'residence_type', '户籍类别', 'residence_type', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('52ee861bc1b62cd8e4f10632b3d9d1b2', '79091e8277c744158530321513119c68', 'name', '顺序会签标题', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('530fe633beacf43d1f4b229a77d15ff2', '699d6a7064064ca7805c68ea0f06932c', 'end_time', '结束时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('56a7800e4e476812c74217c2aad781aa', '32feeb502544416c9bf41329c10a88f4', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('56cd0a76f922bf76d982b24a509e4782', '4028839a6de2ebd3016de2ebd3870000', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('56e247f12d62b49cd9bd537e3efecf16', '402860816bff91c0016bff91c0cb0000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('58595ad35988bfbca9a66170645f90a8', '699d6a7064064ca7805c68ea0f06932c', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('588400f6ebcdd0bc9bb560dd36636af9', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('58a96f945912d33b64ebf5dee98156dc', '402860816bff91c0016bffa220a9000b', 'mobile', '手机号', 'mobile', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 19, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('58d6138138e85df4af6bd1bf622dea49', '699d6a7064064ca7805c68ea0f06932c', 'coures_id', '绑定课程', NULL, 0, 1, 'String', 1024, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('58eea85add4788b83c893092434bc413', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('59ae1e853668c676e85329aa029c68a6', '402860816bff91c0016bff91c0cb0000', 'status', '状态（1：申请中 2：通过）', 'status', 0, 1, 'string', 2, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a1ab458d88bb766f92c3d791495cdcd', '402860816bff91c0016bff91d2810005', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a4ef083dd572114aeb581b6828de545', '402860816bff91c0016bff91c7010001', 'award_name', '获奖名称', 'award_name', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a621f27aa443fe9eccc73717e4fa172', '4028318169e81b970169e81b97650000', 'method', '请求java方法', 'method', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a655b208d6318ed02f236f15a319b5f', 'fbc35f067da94a70adb622ddba259352', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5a6f88710c49bbe8e2e0ca58e149abad', '402860816bff91c0016bff91cda80003', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5b17ba693745c258f6b66380ac851e5f', 'd35109c3632c4952a19ecc094943dd71', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5c76f5ecc774d7339eb0c2199c0052bc', '402860816bff91c0016bff91c0cb0000', 'biz_no', '编号', 'biz_no', 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5c8c8d573e01e4f40b5a7c451515e1d2', '32feeb502544416c9bf41329c10a88f4', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5d46e7fefacd273eae3ca0ed880588ac', '441e68dc1d0147d5a69fb54260d1dbb3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5dfbea516ee2390d712eace5405c5219', '402860816bff91c0016bff91ca7e0002', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5e4484b7348dc3e59a0c58bdc3828cc0', '27fc5f91274344afa7673a732b279939', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5e4ac29ac2007ceabf93368330290a42', '402860816bff91c0016bff91d8830007', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('5f5ac4d37fd1a3a09e2b19f0d4d99c0f', '4adec929a6594108bef5b35ee9966e9f', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('6053128ef2a0d8ef44c1dd409321dedf', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_type', '文件类型', NULL, 0, 1, 'int', 2, 0, '', 'file_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 7, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('617349b18dab429009ccd304fd7d459c', '4028839a6de2ebd3016de2ebd3870000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('61c7a0058c264dd746eb35e6f50fc15b', '402860816aa5921f016aa5dedcb90009', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('61f66737c6533ce2a6a3c889b65749bb', '699d6a7064064ca7805c68ea0f06932c', 'start_time', '开始时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6232ade7e2a0c1e97e2c0945b32e61b6', '402860816bff91c0016bffa220a9000b', 'paying_social_insurance', '是否上社保', 'paying_social_insurance', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 32, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6490a98dccb6df218feaeb4ce11bc03b', '402860816aa5921f016aa5921f480000', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 10, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('654362725195829005036b3db47ec826', '402860816bff91c0016bffa220a9000b', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('66a7ef842bc34e105a90186e48167ef2', 'dbf4675875e14676a3f9a8b2b8941140', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('68769fa7e4696e3a28f4cecf63076b7b', '402860816bff91c0016bff91ca7e0002', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('69666f21896136af16a6303aff440156', '402860816bff91c0016bffa220a9000b', 'nation', '民族', 'nation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('69d11490788fecfc9fb7d74bf449ba86', '32f75e4043ef4070919dbd4337186a3d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6a0082c8ffbae092e99689520f1c83f7', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 9, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('6a30c2e6f01ddd24349da55a37025cc0', 'd35109c3632c4952a19ecc094943dd71', 'top_pic', '头像', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'image', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-08-23 23:45:15', '2019-06-10 20:06:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6b6f3aa00b8e73fb785154e795189739', '402860816aa5921f016aa5dedcb90009', 'start_time', '会签发起时间', 'start_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6cfb5acbbb69782bf0c7043b53f595b2', '402860816bff91c0016bff91cda80003', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6e5c9d8e8b7eb6980ec246cb813b180b', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('6ef59dc42540bf317f1cb13fe8506e47', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'scene', '自定义场景', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 15, 'jeecg', '2020-04-11 23:10:38', '2020-03-08 00:19:05', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('6f73e96a659c200c083006b6fce1f043', '402860816bff91c0016bff91ca7e0002', 'cert_name', '证书名称', 'cert_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('70e1749e4e8acacb42fec366cb97872e', '2d869ad51818483faea70b2bd62ea34e', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7154c75d754a5f88bef2b68829baf576', '4028318169e81b970169e81b97650000', 'operate_type', '操作类型', 'operate_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('71afb00a1971125ecfa13b4dfa49665e', '402860816bff91c0016bff91cfea0004', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('71d5b0675df5aba71688c9d7d75cccee', '4028318169e81b970169e81b97650000', 'log_type', '日志类型（1登录日志，2操作日志）', 'log_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('71e9ab74dae687837365e50eed090591', '1acb6f81a1d9439da6cc4e868617b565', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7280c56a210e6a47794fda855d0c6abb', 'fbc35f067da94a70adb622ddba259352', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('72e784af5c47bbbc0534b29bf656bd61', '4028839a6de2ebd3016de2ebd3870000', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'group', NULL, NULL, 1, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7365f05f551092716223d5d449efd8c7', 'beee191324fd40c1afec4fda18bd9d47', 'name', 'ss', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('742329ccdb185cf5d3e0b5b0c05dcffa', '402860816bff91c0016bffa220a9000b', 'interest', '兴趣爱好', 'interest', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 34, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('744444a7ada3bbb05c6b114b5ba0d477', '402860816aa5921f016aa5dedcb90009', 'id', 'id', 'id', 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('749a6357649a8c993feae0208e69c5bd', '699d6a7064064ca7805c68ea0f06932c', 'max_student', '参数学员上限', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'z', '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('74af99545de724a4abd2022581a36026', 'fb7125a344a649b990c12949945cb6c1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('756b07656386dbd91245f7ffda32ae61', '402860816bff91c0016bff91d8830007', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('75841fa7c75ebdc94655bd5e44fbc9f6', '402860816bff91c0016bffa220a9000b', 'native_place', '籍贯', 'native_place', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('75ba781c67711bed71bba1c3e3c68e11', '8994f2817b5a45d9890aa04497a317c5', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('75e82f151e8cc12455f7f0d25bf4dac0', '4028839a6de2ebd3016de2ebd3870000', 'wl_name', '物料名称', 'wl_name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7639c1bc4327f1f674ffeab2ca261134', '32f75e4043ef4070919dbd4337186a3d', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('764c84ff74e7b45e0ede62c540b32e88', '1e65c54cea44446897c5fec4d967d3f6', 'work_type', '作业类型', NULL, 0, 0, 'String', 32, 0, '', 'work_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 10, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('766ca866b72d118f5d8883de46a8c043', '4028839a6de2ebd3016de2ebd3870000', 'supplier', '供应商', 'supplier', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 15, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('78a40344207c791b8d7ac7de721ce1c4', '79091e8277c744158530321513119c68', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('78eb7e3b77cd49f9acb9b024cfe834e1', '402860816aa5921f016aa5dedcb90009', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('78fd804d93dc716fd8c2ccc45f788565', 'fb7125a344a649b990c12949945cb6c1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('790c9f3dba773ed9a6ea3ad627393f57', '402860816bff91c0016bffa220a9000b', 'archives_location', '档案所在地', 'archives_location', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 36, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7a665ed90ef64b4d65632c941e5795b2', '4b556f0168f64976a3d20bfb932bc798', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-12 23:38:29', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7b4c181e4ebd76022f75535ed6fd9de3', '4adec929a6594108bef5b35ee9966e9f', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('7b642d983ac06bfef91edde2c932dbe7', '1acb6f81a1d9439da6cc4e868617b565', 'xg_shangxian', '选购上限', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7b849e57debfb889caea5e0fef09062b', 'beee191324fd40c1afec4fda18bd9d47', 'sex2', 'dd', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7b851d70d0bdb3f25f0cc7fdc0879cdb', '1e65c54cea44446897c5fec4d967d3f6', 'create_by', '创建人', NULL, 0, 0, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7beb639aa9ffda07edb5ce1e49c2287f', '402860816bff91c0016bff91d2810005', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7bf091da401b74d55b107fe9f930ea54', '4028839a6de2ebd3016de2ebd3870000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c6aecc377816c69147f1193b17dfcc5', 'e9faf717024b4aae95cff224ae9b6d97', 'sex', '员工性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7c6b7487b5a4d92e80289ffdc7b205d7', 'c8c8621a42434b4eb743027b07c17bd9', 'activity_id', '活动ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', 'teaching_activity', 'id', 2, NULL, NULL, '2020-04-11 23:05:40', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7cadf4e0be0b173bb5b8d39613e25190', '402860816bff91c0016bffa220a9000b', 'residence_postcode', '户籍邮编', 'residence_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 29, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7cdbe0d563e15f3fb1fb32d996fe4ba7', '3d447fa919b64f6883a834036c14aa67', 'area', '区', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7d107728408c21ece332406a21f2d692', '402860816bff91c0016bff91cfea0004', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7dde2ba0930b6150126bcbf6fb1c3205', '1e65c54cea44446897c5fec4d967d3f6', 'user_id', '用户ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'sel_user', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7e066f60680158d47b328ef519d80e49', 'beee191324fd40c1afec4fda18bd9d47', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('7f10901c6ade3aa9d9ff46ed7039c70f', '1acb6f81a1d9439da6cc4e868617b565', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('81ed9556c9fda1bbb46d94a53a6c90c7', '402860816bff91c0016bff91c0cb0000', 'depart_name', '部门名称', 'depart', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8422485e1cbf4455f9ded7d0af59379c', '402860816bff91c0016bff91cfea0004', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('845c70568d44a074f067d6d277950525', '402860816bff91c0016bffa220a9000b', 'entrytime', '入职时间', 'entrytime', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 23, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8529ddaed8d5f3d9084e873203d55cac', '402860816bff91c0016bffa220a9000b', 'marital_status', '婚姻状况', 'marital_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 24, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('857a0daa9cd8a058f2f15fc7c5fb3571', '402860816bff91c0016bffa220a9000b', 'email', '邮箱', 'email', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 17, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8652ca69a947fd4c961a3ac7c0fa252a', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('86bbafef5683674a736cf7241c458d44', '27fc5f91274344afa7673a732b279939', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('86e0f3a8f31c60698157f139ed993954', '402860816bff91c0016bffa220a9000b', 'having_reserve_funds', '是否有公积金', 'having_reserve_funds', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 33, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('873e2bb041b17bff77d3aca72900ea1b', '56870166aba54ebfacb20ba6c770bd73', 'order_code', '订单编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('877391ae770a4ce2c95181ef410982ce', '4028318169e81b970169e81b97650000', 'request_param', '请求参数', 'request_param', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('87e82e3c723a6abb020122babdac6bd1', '8994f2817b5a45d9890aa04497a317c5', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('87f7a2703c5850f0b063dd866d0e2917', '402860816bff91c0016bffa220a9000b', 'birthday', '出生日期', 'birthday', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('87fafe1a4a8a626e3875697574c19f15', '402860816bff91c0016bff91d2810005', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('88a12570e14c9f6f442e731ae5ad0eb1', 'beee191324fd40c1afec4fda18bd9d47', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('89ab9eedbac6141e7a0df6d37a3655d0', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8a24fb45e2af120c253c8b61c0085f7a', '402860816bff91c0016bff91cda80003', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8ac8a0c0087469a4e7579229ff17f273', 'e5464aa8fa7b47c580e91593cf9b46dc', 'jifen', '合计积分', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8bd4deadc9e96c1a6d7abd77033105f6', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8c6518fec11fc4769ba4eb770c9e00f7', '4028839a6de2ebd3016de2ebd3870000', 'integral_val', '积分值', 'integral_val', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8ca56210938fbe649f840e505eb9fd41', '56870166aba54ebfacb20ba6c770bd73', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8e080f4ded1e3b2a1daa5b11eca4a0ff', '4adec929a6594108bef5b35ee9966e9f', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('8ea43fd1e4ce82becee61b2f1e2e843f', '32feeb502544416c9bf41329c10a88f4', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8f1d302868640b72cef52171a023a203', 'e9faf717024b4aae95cff224ae9b6d97', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8f3e6fb68179c690f748f3c541fb50f1', '7ea60a25fa27470e9080d6a921aabbd1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('8fc0be84bed1216635c69af918e097ff', '402860816aa5921f016aa5dedcb90009', 'name', '并行会签标题', 'name', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9003470850f58d5d9d743ea97b1c5e68', 'c8c8621a42434b4eb743027b07c17bd9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-04-11 23:05:40', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('90a822b8a63bbbc1e9575c9f4e21e021', 'd35109c3632c4952a19ecc094943dd71', 'descc', '描述', NULL, 0, 1, 'string', 500, 0, '', '', '', '', 'textarea', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('90f39a6e29dae2e1fbb59d7d605f7c09', '1acb6f81a1d9439da6cc4e868617b565', 'iz_valid', '启用状态', NULL, 0, 1, 'String', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('91f7cd9b59c0da033363f8a09b02ec96', '3d447fa919b64f6883a834036c14aa67', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('92440b9e1cb8efe1f4c60c35cbe7f13f', '2d869ad51818483faea70b2bd62ea34e', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9341a3b2a734d8c73455c136e1cac8ad', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 8, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('9370c9304af30b8d29defe0a5ada6e5b', '62e29cdb81ac44d1a2d8ff89851b853d', 'DC_DDSA', 'DD', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9371f61d39c5d57ddb0a2db96b2e2412', '402860816bff91c0016bffa220a9000b', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('947174892512ea97fafde899d427ea7e', '402860816bff91c0016bff91c0cb0000', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('94b8bf435175cc545366e11992280757', '32f75e4043ef4070919dbd4337186a3d', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('94e682cb802777fe4205536888f69353', '402860816bff91c0016bff91d2810005', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('951c51699d728072d88196d30f7aad10', '4adec929a6594108bef5b35ee9966e9f', 'address', '地址', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '{{ demoFieldDefVal_getAddress() }}', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('957386b500be42a200d6a56d54345392', 'deea5a8ec619460c9245ba85dbc59e80', 'num', '数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('960d2847922b61dadeb3518ef55fb0c1', '1acb6f81a1d9439da6cc4e868617b565', 'wl_name', '物料名称', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9665f02764774fdd77c19923d3ff3c3e', '4028318169e81b970169e81b97650000', 'cost_time', '耗时', 'cost_time', 0, 1, 'string', 19, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('966a4988298d5cb0be47848735ce8cb7', '4028839a6de2ebd3016de2ebd3870000', 'xg_shangxian', '选购上限', 'xg_shangxian', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('96c585a4f71e5c38ed25b9741366365b', '402860816bff91c0016bff91c7010001', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('96eb15b73c8ed9188d907700bf71d169', '1e65c54cea44446897c5fec4d967d3f6', 'star_num', '点赞次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 14, NULL, NULL, '2020-04-11 21:43:06', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9765efa2cafde6d0ede2215848c9e80b', '32f75e4043ef4070919dbd4337186a3d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('97f9e8b335a85ebe9b447ef27a833695', 'd6cb8d561355467086159ab8cfbe0aec', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('98e82cb1595609a3b42fa75c60ac1229', '402860816bff91c0016bff91d2810005', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9914a0c84805e72c4b6075e36edb13f9', '402860816aa5921f016aa5921f480000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 9, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9920ecec9c9109fc6b93e86f8fdfa03b', '402860816bff91c0016bffa220a9000b', 'depart_name', '所在部门', 'depart_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('99b43bbb23237815ebb74b12b4d7ea2f', '62e29cdb81ac44d1a2d8ff89851b853d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('99f9a419d6bc8d151a0b9b102a59e6a5', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'status', '状态 ', NULL, 0, 1, 'int', 2, 0, '', 'student_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9a2af3ead21550c6415f9d26d5f66604', '441e68dc1d0147d5a69fb54260d1dbb3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9a579c506f75f75baf88352a5eb2c249', '1acb6f81a1d9439da6cc4e868617b565', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '1', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 16, 'admin', '2019-06-10 14:47:14', '2019-05-07 16:54:43', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9bd056786694d67666f6924cc225b1a0', '3d447fa919b64f6883a834036c14aa67', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9c40fb4db8afed3c682c6b8a732fd69d', 'e2faf977fdaf4b25a524f58c2441a51c', 'post', '用户岗位', NULL, 0, 1, 'String', 32, 0, '', 'post_code', 'air_china_post_materiel_main', 'post_name', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9ceff249ef81ca6fa145456667c89051', '4adec929a6594108bef5b35ee9966e9f', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 8, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('9d85bafa399f28a40e1de1eeef747223', '4028318169e81b970169e81b97650000', 'ip', 'IP', 'ip', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9d89ff1a019f41d80307652041490944', '32feeb502544416c9bf41329c10a88f4', 'name', '请假人', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9e3d2f1bb9ee1d8564794d6fa5f8ccb8', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'channel', '投放渠道', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 0, 0, 1, 'single', '', '', 14, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9e50680eb4e79b3af352a5933d239dff', 'dbf4675875e14676a3f9a8b2b8941140', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('9ebb14a58aae8cccc4073650cf924368', '699d6a7064064ca7805c68ea0f06932c', 'activity_name', '活动名称', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, '*', '0', '', '', 1, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a01a7fe5660206e6f407ed98b6c732d6', '402860816bff91c0016bff91cfea0004', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a0f658753758e32e8c625a5f3f6b33c3', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 3, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a1f5daba36f536e7acf6a939826183b0', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a430c6bc60432fecdd8065faf6867f2b', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_tag', '文件标签', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a45eba33810c485b9d8e6f70818a1dfa', '402860816aa5921f016aa5921f480000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 50, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a461504efe53d9c86788849eb58ccba5', '1e65c54cea44446897c5fec4d967d3f6', 'work_name', '作业名', NULL, 0, 0, 'String', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a583ca9058204bae2a5506e591eade41', 'd6cb8d561355467086159ab8cfbe0aec', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 3, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a6471d4fb3dbffef01dab1f7d452bb30', '27fc5f91274344afa7673a732b279939', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a6722b498602d7d7b5177b16789d8cc1', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a76f561057ac9e43a8ca09e478a1eab8', '402860816bff91c0016bff91ca7e0002', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a770d3f8121d6eb7f2468f806d733df7', 'd6cb8d561355467086159ab8cfbe0aec', 'nickname', '用户昵称', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 8, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a7822f6e4cffb37fc0729cbd4cfd8655', '32f75e4043ef4070919dbd4337186a3d', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a82ca42a76e9d2b8dae6d57dbb5edb54', 'deea5a8ec619460c9245ba85dbc59e80', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a940adc4585fa3b5bd2114ea9abe8491', '402860816bff91c0016bff91ca7e0002', 'cert_level', '证书级别', 'cert_level', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a94f1d7da64f3aa35c32155ea00ccb2f', '402860816bff91c0016bffa220a9000b', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('a9780eace237a15f26931dd6a9ec02e9', '758334cb1e7445e2822b60e807aec4a3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('aa07931514727913413880b7a2b76dcb', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('aa4780601419c21dabb6c42fc511e71c', '402860816bff91c0016bffa220a9000b', 'have_children', '有无子女', 'have_children', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 25, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab10e0aa029ded2f4420a33420de225d', '1acb6f81a1d9439da6cc4e868617b565', 'wl_code', '物料编码', NULL, 0, 1, 'String', 60, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab1f880ba593f3757dac70e003945aa2', '402860816bff91c0016bff91c0cb0000', 'depart_id', '部门ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-19 18:09:01', '2019-07-17 19:38:45', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab58f43f853fd1f65f83c22966883afb', 'beee191324fd40c1afec4fda18bd9d47', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ab8e6f1cca421c5ce395a2c1fdfd2100', '32feeb502544416c9bf41329c10a88f4', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('abe61a8ddf966a979457b763329a537b', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ac91565da5fb8fe43a4da3dec660b25f', '402860816bff91c0016bff91c7010001', 'award_place', '获奖地点', 'award_place', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('acff5c8aef3b6288b87fd91215012206', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ad061417d5b53c67975eb83657505218', '73162c3b8161413e8ecdca7eb288d0c9', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ad93762c6c4a1dd8331e5fa11215b568', 'e2faf977fdaf4b25a524f58c2441a51c', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ae31da96f38fc2941cb93d1bb1ab9431', 'deea5a8ec619460c9245ba85dbc59e80', 'product_name', '产品名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ae77bb317366622698c8ab9bf2325833', 'deea5a8ec619460c9245ba85dbc59e80', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('af0fe0df8b626129de62e22212732517', '402860816bff91c0016bff91cda80003', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('af6c582b902e2f2bf9930eba61ae7938', '73162c3b8161413e8ecdca7eb288d0c9', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('afd3ef1d494a9b69d2c7a3cdde937f6f', '402860816bff91c0016bffa220a9000b', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 39, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b01304904babd7479de2acfe8a77157f', '402860816aa5921f016aa5921f480000', 'id', 'ID', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b05b4cbb74f389a7376f51ed9fd97030', '402860816bff91c0016bff91d8830007', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b0a06bdbefd304d81a1838d8d94deda9', '4b556f0168f64976a3d20bfb932bc798', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b0b1cf271dd6b221a902da2d2f8f889a', 'e9faf717024b4aae95cff224ae9b6d97', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b16c18435f937224ca6f1ce2d846e0a7', 'd6cb8d561355467086159ab8cfbe0aec', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 2, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b1fc6e2ca671b19e57b08a4f57fc2454', 'fb7125a344a649b990c12949945cb6c1', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b22694cf34ffb967b8717647816ad5df', 'e5464aa8fa7b47c580e91593cf9b46dc', 'fk_id', '外键', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'air_china_post_materiel_main', 'id', 15, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b276facab025f9750b0aff391693cc4b', '402860816bff91c0016bff91c7010001', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b2b0cb30159639bb1190e150322b7541', '4028839a6de2ebd3016de2ebd3870000', 'wl_unit', '计量单位', 'wl_unit', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 14, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b348c7fc71fb04b852ff7bf0324f8605', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'user_id', '用户ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 7, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b3542d3e7908ed885ecc4ba9e7300705', '4b556f0168f64976a3d20bfb932bc798', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b47af4d937e55c6208939bac5378bfad', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b4d1ef3a2a3aff4034c863592ed17f23', '1e65c54cea44446897c5fec4d967d3f6', 'work_file', '作文文件', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 11, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b53203fc52d067bb4730dbcb7e496bd3', '56870166aba54ebfacb20ba6c770bd73', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b5cfd3c9691a884430f3d9cd5ecb211f', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b6874a05734cad8bd96ffd2f31f1ebca', '402860816bff91c0016bff91c7010001', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b733fa73519603b22d401fabbf9e9781', '402860816bff91c0016bff91c0cb0000', 'hiredate', '入职时间', 'hiredate', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b7938e4518f9062ce62702cf45986e06', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b7a1243aaa712e2c152c0c7a46f88683', '402860816bff91c0016bff91d8830007', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b91258e3dc15b28c2e3f0d934e6e27e8', 'fb7125a344a649b990c12949945cb6c1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b92572ae142f8dd5f2ac02fb45e6b2c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', 'realname,username', 'report_user', 'name,account', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('b9fbace24688c9c9a8c9be72c1d014e7', '402860816bff91c0016bffa220a9000b', 'phone', '电话', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 18, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ba5f4b2affa94f36eda7f6f133db7ae3', '402860816bff91c0016bff91d2810005', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bad02e68ea37bf387337516af84a1ddb', '73162c3b8161413e8ecdca7eb288d0c9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bb44475e1d1738a19745bf9f3ebf9e40', '402860816bff91c0016bff91cfea0004', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bbbb38347b1a5340a1d293e455c632ce', 'fb19fb067cd841f9ae93d4eb3b883dc0', '3', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc648624ad14c826bbc6e9b23a2b9858', '402860816bff91c0016bff91ca7e0002', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc793fdbef9f6474425456c4eb9d197a', '402860816bff91c0016bff91cfea0004', 'witness', '证明人', 'references', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bc7df6f3cf49f670c36a3de25e25e715', '402860816bff91c0016bff91d2810005', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bd39cb237049ac60218b3f4dd844f30c', '402860816bff91c0016bffa220a9000b', 'current_address', '现居住地', 'current_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 30, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bde81809057b1a4c974fa0f090501fdd', '402860816aa5921f016aa5dedcb90009', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('be3f8c157d8a1b40e6f7b836552a8095', '8994f2817b5a45d9890aa04497a317c5', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:16', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('be5eeda7d51dace73d3818bd8467b53b', '402860816bff91c0016bff91c0cb0000', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('be868eed386da3cfcf49ea9afcdadf11', 'd35109c3632c4952a19ecc094943dd71', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bec3082fc5f0f194be5cd72cc2866ff4', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', 'wl_code', 'air_china_materiel', 'wl_name', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bed0bc67f570613eaa6a1bd8bcaaddcc', '4b556f0168f64976a3d20bfb932bc798', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bef85fd2846dd7ffc42d747095557d14', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'date', '日期', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '#{date}', 0, 1, 1, 0, 'single', '', '', 4, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('bf61aa04c5ca77ad54c764f8f8b2bdec', '402860816bff91c0016bff91d8830007', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bf98a3a2ebe6c681b704b461421ded7d', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 4, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('bfc2f19fae367f885adb8bd82a344391', '4028318169e81b970169e81b97650000', 'userid', '操作用户账号', 'userid', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c07defeaa4319844575f06e152174ae6', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'comment', '备注', NULL, 0, 1, 'String', 256, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 17, 'jeecg', '2020-04-11 23:10:39', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c0c80f370e1d400fe670d8702c3b84da', '4adec929a6594108bef5b35ee9966e9f', 'address_param', '地址（传参）', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '{{ demoFieldDefVal_getAddress(\"昌平区\") }}', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:40:53', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('c0d66c95773774e7ac1f2a88df307e7a', '402860816aa5921f016aa5921f480000', 'reason', '请假原因', 'reason', 0, 1, 'string', 500, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c0f1dc6dab2f1dc0980626c2e6bda654', '1e65c54cea44446897c5fec4d967d3f6', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c217349cc1dfc9e41e005e21babe9e32', '2d869ad51818483faea70b2bd62ea34e', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c29216d975fee50af175bca8c664a475', 'e67d26b610dd414c884c4dbb24e71ce3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:56', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c2b9eae184afe56d59ea7940d77cfced', '4adec929a6594108bef5b35ee9966e9f', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:57', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('c382877700a9987f4bcc2deea9ee9daf', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('c43b2d9c766e5c539b9f1e05dbeefc47', '2d869ad51818483faea70b2bd62ea34e', 'work_id', '作业ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'teaching_work', 'id', 7, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c43d87b6340c29c0c354aa9c579f387f', '32feeb502544416c9bf41329c10a88f4', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c53dbd2d8d798931c5ac498ea36eae16', '2d869ad51818483faea70b2bd62ea34e', 'score', '评分', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c5dd2fc34ae825ebfced2ec74948654c', '402860816aa5921f016aa5921f480000', 'end_date', '请假结束时间', 'end_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c5f6ea01a6523a60df153cc61dc92f4d', 'fbc35f067da94a70adb622ddba259352', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c6730e00df5efd77fedf181df29102de', '402860816bff91c0016bff91c7010001', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c75a7cb0a21958aa7ca5442f66019669', 'e9faf717024b4aae95cff224ae9b6d97', 'depart', '所属部门', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c772ed9cbe2d1dc69e9ffa73d3487021', '4b556f0168f64976a3d20bfb932bc798', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-12 23:38:28', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c91b697b1bcd2be943fc746e2660bc9e', '402860816bff91c0016bff91d2810005', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c988bd2b6125c01ceb3579a207dd8784', '3d447fa919b64f6883a834036c14aa67', 'city', '市', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, 'admin', '2020-02-21 17:58:46', '2020-02-20 16:19:00', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('c9b698d3f75aa780ee1eb67ef090b15b', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_code', '物料编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('caf5a071f2299c0f9ff2f3038d6d0fc6', '402860816bff91c0016bff91ca7e0002', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cb33a708b95e19085f8c9001d2d5c64c', 'e9faf717024b4aae95cff224ae9b6d97', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cb7da49a981a1b0acc5f7e8a0130bdcd', 'd35109c3632c4952a19ecc094943dd71', 'user_code', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 0, 0, 'single', '', '', 10, 'admin', '2019-08-23 23:45:15', '2019-05-11 16:26:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cb871284e845e26e88242a96fac9c576', '402860816bff91c0016bff91c7010001', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cc1ddc1304d3eb5d9a189da0a509ccd0', '32f75e4043ef4070919dbd4337186a3d', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ccf2f331af46ddc411b8039dd187621b', '4028839a6de2ebd3016de2ebd3870000', 'price', '单价', 'price', 0, 1, 'double', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cd5618190b06941514dd024d55cf639e', '441e68dc1d0147d5a69fb54260d1dbb3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'group', '', '', 2, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cee3c1dbf67b4a7d9626b8032897a4c7', '402860816bff91c0016bff91d8830007', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf1c78922787b987e14f8118956c1440', '1e65c54cea44446897c5fec4d967d3f6', 'view_num', '查看次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 13, NULL, NULL, '2020-04-11 21:43:06', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cf4c5a4c06ae6bac701edfeedfcd16aa', 'd3ae1c692b9640e0a091f8c46e17bb01', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('cfeb6491427aec2b4db9694af867da23', 'e9faf717024b4aae95cff224ae9b6d97', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d015ec0700ee55552e876a54811d3425', '441e68dc1d0147d5a69fb54260d1dbb3', 'del_flag', '是否删除', NULL, 0, 0, 'int', 1, 0, '0', 'del_flag', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 12, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d1a98298072bc18695126a5609a5460c', 'c8c8621a42434b4eb743027b07c17bd9', 'depart_id', '班级ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', 'sys_depart', 'id', 3, NULL, NULL, '2020-04-11 23:05:40', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d2551b70dc96a45a73b304bf755a996f', '402860816bff91c0016bff91d8830007', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d29dcdba14ea61808391fff2d927efea', '402860816bff91c0016bff91c0cb0000', 'work_summary', '工作总结', 'work_summary', 0, 1, 'Text', 65535, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d3a701472d27ca8435d6a781a597038d', 'deea5a8ec619460c9245ba85dbc59e80', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d431c06441419555533d99215324340d', '1e65c54cea44446897c5fec4d967d3f6', 'work_cover', '作业封面', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 12, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d44b89cc5f1828f7ceb9be196d549665', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'code', '编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '${order_num_rule_param}', 0, 1, 1, 0, 'single', '', '', 2, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:01', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('d48bfd2a840f9b1d00bd3b5599dca0f0', '402860816bff91c0016bff91cda80003', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d4d8cae3cd9ea93e378fc14303eee105', 'd35109c3632c4952a19ecc094943dd71', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d4dea775487aef5a7aea41791d3a65db', 'e5464aa8fa7b47c580e91593cf9b46dc', 'cycle_time', '发放周期(年)', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d52c79620e21128fb69b4e8628cf25cc', 'dbf4675875e14676a3f9a8b2b8941140', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-05-27 18:02:07', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d530ab1bc3c51e8249a506a25d1003c7', '79091e8277c744158530321513119c68', 'start_time', '会签发起时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d53e70411c206efecb8dcd00174e907c', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d5df0a35352ee960053686e959e9084b', '1acb6f81a1d9439da6cc4e868617b565', 'wl_unit', '计量单位', NULL, 0, 1, 'String', 100, 0, '', 'air_china_unit', '', '', 'list_multi', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d6f26667e3c1141a9cf7c6d636c7fb66', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'pay_price', '实付金额', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'group', '', '', 10, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d6fad89f4f26d733291863c2dfbc5945', '27fc5f91274344afa7673a732b279939', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d766ea5809e2ec9ff2cdbcb18f610ab3', '7ea60a25fa27470e9080d6a921aabbd1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d76a2791e3c67aa75d9a833fc20ac202', '699d6a7064064ca7805c68ea0f06932c', 'activity_type', '活动类型', NULL, 0, 1, 'int', 3, 0, '', 'activity_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d7c3b107f004cbc99dfe1fe6c79894d8', '402860816bff91c0016bffa220a9000b', 'social_insurance_type', '参加社保类型', 'social_insurance_type', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 35, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d8234b56acea1a752271a6c911dd91a0', '7ea60a25fa27470e9080d6a921aabbd1', 'age', '年龄', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-17 00:22:21', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d86909d794b01ad7fbb5e61d28b6603b', '73162c3b8161413e8ecdca7eb288d0c9', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d949d9157831c2fb7ba9f175081fe036', '402860816bff91c0016bff91cda80003', 'school', '学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d9d308feb95968dbb322c9bff0c18452', '32feeb502544416c9bf41329c10a88f4', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d9dde2f59bb148c6b7e95256acad8972', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_name', '岗位名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('d9f9ae6986cb85019a3a4030f62f4d1a', '402860816bff91c0016bff91cfea0004', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('db1fb3e12385cb967b63420cfe97cde6', '402860816bff91c0016bff91cda80003', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('db6f082bbfbf5230e4ec565ab8c4ed57', '699d6a7064064ca7805c68ea0f06932c', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dc2bec862a4f0d600751c632d246f0ed', '4028839a6de2ebd3016de2ebd3870000', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dcb06b60e2c557a5c8a2a3e6f4d31534', '1e65c54cea44446897c5fec4d967d3f6', 'create_time', '创建日期', NULL, 0, 0, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dd3e1e13d7429807b83a00a090e060b7', '402860816bff91c0016bffa220a9000b', 'join_party_info', '入党（团）时间地点', 'join_party_info', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 26, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ddc302f84c75a5f056855c664b82202a', '402860816aa5921f016aa5921f480000', 'days', '请假天数', 'days', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ddcc14a2105588982b4ae657f2893d81', '32feeb502544416c9bf41329c10a88f4', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('dedb920a5e876e27eb144464209ebe1e', '27fc5f91274344afa7673a732b279939', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('df489194c6008f3bd21b2c1c11fde337', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:48', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('df58a7b1c3ed8f58a1994c0c0855db16', '4adec929a6594108bef5b35ee9966e9f', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 11, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('e0c5d6e483897d5c4e7894dc66dd1aff', '32feeb502544416c9bf41329c10a88f4', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:58', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e24de426223dc0271a55eccc1d5457d0', '73162c3b8161413e8ecdca7eb288d0c9', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e2d73ccda7f10f5a1ccce3c48b1e699e', '402860816bff91c0016bffa220a9000b', 'residence_street', '户口所在街道', 'residence_street', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 27, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e3965246be17a5b304633f92f14b82c9', '441e68dc1d0147d5a69fb54260d1dbb3', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e43e5bf1cd221bb9df15b114babe0097', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_path', '文件路径', NULL, 0, 0, 'String', 1024, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 9, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e4914fdff68ac72486ada105e6e9fa36', 'e9faf717024b4aae95cff224ae9b6d97', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e4a4c1d50b7b46678bc14fd5b90ee082', '73162c3b8161413e8ecdca7eb288d0c9', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e50b4398731e06572c247993a0dcc38d', 'd35109c3632c4952a19ecc094943dd71', 'name', '用户名', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, '*', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e53f53766d1f7718b3ee5eabe105b969', '402860816bff91c0016bffa220a9000b', 'social_insurance_time', '五险一金日期', 'social_insurance_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 38, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e5597fa13c0f214e9e8c7917fe507908', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e672d5974a06d5c37b3b4c94a6f29f96', '4028318169e81b970169e81b97650000', 'request_url', '请求路径', 'request_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e6e4aa4f3680fc5a8c8316d58777e066', '699d6a7064064ca7805c68ea0f06932c', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e7aade12ca722b59c1ec681d14247ff8', '402860816bff91c0016bff91d8830007', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e845925368919482df6dac58e6ed708d', '402860816bff91c0016bff91d8830007', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e88d328af34dd8a17f51437c52b68a2d', '402860816bff91c0016bff91cfea0004', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('e99cc08f4d88dd8f788399db8d448ee8', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ea644c4c208739640933ba6e568045c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'ruz_date', '入职时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ea96d1c33f0f0d7245045e70a5793257', '402860816bff91c0016bffa220a9000b', 'current_postcode', '现居住地邮编', 'current_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 31, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ebc41362681919cc680fcc58bf87fdcb', '1acb6f81a1d9439da6cc4e868617b565', 'price', '单价', NULL, 0, 1, 'double', 10, 2, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ec20e66d5eb9b8b7f58de9edc0f7630b', '1acb6f81a1d9439da6cc4e868617b565', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ec5e9cb5809b2f8ce1446df4a27693f0', '27fc5f91274344afa7673a732b279939', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ed16f23d08e7bcda11a1383fda68057e', '402860816bff91c0016bff91c7010001', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('edda30c64e1dccee510d40b77a8ca094', 'fb7125a344a649b990c12949945cb6c1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ee0656f99ba7257571d2539bd7bb5f1a', '1e65c54cea44446897c5fec4d967d3f6', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ee09e0e21fa350b9346b70292dcfca00', '79091e8277c744158530321513119c68', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ee4ffe04a25fcf556e78183f1f521546', '402860816aa5921f016aa5921f480000', 'create_by', '创建人id', 'create_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ee5803611f63643059b6375166d71567', '402860816bff91c0016bff91c7010001', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ef37edbd31f12f6e5b11a66991182e1f', '699d6a7064064ca7805c68ea0f06932c', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ef81373c5fd7130d7e23859d90c9eb3e', '402860816bff91c0016bff91cda80003', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('efa86c23d31ef04ab8f3ed541e6df014', '2d869ad51818483faea70b2bd62ea34e', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('efd1b955a75b5046e9857e00fe94ae2c', 'fbc35f067da94a70adb622ddba259352', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f015cc2ffdcc2c4be1e9b3622eb69b52', 'fbc35f067da94a70adb622ddba259352', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-03 19:44:23', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f06b2bb01ea1fae487b7e3c3eb521d5b', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f0967fd139b440f79f21248bf4e4a209', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-24 14:47:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f0a453930aa16ca32f2e3be860bfe542', '402860816bff91c0016bffa220a9000b', 'education', '学历', 'education', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f12753b4a3815697a72017a7436fe733', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1ab7d3b55ade57eeac6c55b32ce813a', '1acb6f81a1d9439da6cc4e868617b565', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f1c7fde21f26c7ed64a0ef1095900c52', '4028318169e81b970169e81b97650000', 'request_type', '请求类型', 'request_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f4647a91a4ac5d6d32bb0692b800bffe', '402860816bff91c0016bff91c0cb0000', 'probation_post', '试用期职位', 'probation_post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f4b0bc7f3d6562e28d7c5e2d56510ecd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'first_num', '首次数量', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:31:31', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f4f1e41d27c078aae72e84c5c35e0540', '2d869ad51818483faea70b2bd62ea34e', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2020-04-11 21:39:07', 'jeecg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f558359b06aea79a992c102ce3563a4d', '4028318169e81b970169e81b97650000', 'username', '操作用户名称', 'username', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-04-04 19:28:36', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f57c7254e74ac121710eba824af25018', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'status', '订单状态', NULL, 0, 0, 'int', 4, 0, '', 'order_status', '', '', 'radio', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f6afcb7d8ea81879593ff737b55ddcc0', '402860816bff91c0016bff91cda80003', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f6f8aed87ec73994f6a12abbc079dbb1', '402860816bff91c0016bffa220a9000b', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 41, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f7332af7586c83c87f7b9ea144a5292d', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-11 14:01:14', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f76719783433487f4710232e2ae0e521', '402860816bff91c0016bff91cfea0004', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f7e7eb84ddc34d7e09d10af213ac6667', '402860816bff91c0016bff91d2810005', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f81d7103c0c857e5c744cda2bc4c000a', '402860816bff91c0016bff91ca7e0002', 'cert_organizations', '发证机关', 'cert_organizations', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f82db8edef5babf741914b0fa221329b', '4028839a6de2ebd3016de2ebd3870000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 16, NULL, NULL, '2019-10-19 15:29:30', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f8a0fd20a1173270afdfed1129d5c669', '402860816bff91c0016bffa220a9000b', 'depart_id', '所在部门id', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 44, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:33:44', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f8cc6be747fec10802eb625ac529c16f', '402860816bff91c0016bff91cfea0004', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f90bcb38fb89988bd40d1618aa75cea0', '758334cb1e7445e2822b60e807aec4a3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f94db83e41c69f407d3c9a81c5892269', '402860816bff91c0016bffa220a9000b', 'first_job_time', '首次工作时间', 'first_job_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 22, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('f95d2cbefd25444909c83aaf8c4f72fb', '402860816bff91c0016bff91ca7e0002', 'memo', '备注', 'memo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa3a12d7abf72b23afe425f8dbd57f86', '1acb6f81a1d9439da6cc4e868617b565', 'size_type', '尺码类型', NULL, 0, 1, 'String', 2, 0, '', 'air_china_size', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fa8f5a0ba673e0208934567462844eab', '402860816bff91c0016bff91ca7e0002', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('faaaca21b7b2b16089c885f3224e4dc5', '4fb8e12a697f4d5bbe9b9fb1e9009486', 'main_id', '主表ID', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'demo_field_def_val_main', 'id', 5, 'admin', '2020-04-10 19:51:27', '2020-04-10 19:47:55', 'admin', '', '', '', '', '', NULL, '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('fafb32cf7e63bca93bbd70b0a0ea11fc', '758334cb1e7445e2822b60e807aec4a3', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fc55d467102c2c782286f546d7820c3d', '73162c3b8161413e8ecdca7eb288d0c9', 'pid', '父物料', NULL, 0, 1, 'String', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fc76a3832d232829852cae6c66e44f67', '402860816bff91c0016bffa220a9000b', 'identity_no', '身份证号', 'identity_no', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 21, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fcd519058d68fa4dab192335602b5d24', '402860816bff91c0016bffa220a9000b', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fd0586cae06685959415d9017b2bdf49', '758334cb1e7445e2822b60e807aec4a3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-10-18 18:02:09', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fde00160a5d664effaa4b5552e814e74', 'fb7125a344a649b990c12949945cb6c1', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('fed133a00f57245d4cfb02dd3c3ce7c1', '4adec929a6594108bef5b35ee9966e9f', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 9, 'admin', '2020-04-10 19:43:38', '2020-04-10 19:35:58', 'admin', '', '', '', '', '', 'text', '0', NULL, NULL, '0');
INSERT INTO `onl_cgform_field` VALUES ('ff49b468e54e137032f7e4d976b83b5a', '402860816bff91c0016bffa220a9000b', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ff601f75d0e7ced226748eb8fba2c896', '402860816bff91c0016bff91d8830007', 'relation', '关系', 'relation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ffacafee9fa46eb297ca3252f95acef9', '402860816bff91c0016bffa220a9000b', 'school', '毕业学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `onl_cgform_field` VALUES ('ffcbf379fffabbd13aa2c22ce565ec12', '79091e8277c744158530321513119c68', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_head`;
CREATE TABLE `onl_cgform_head`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  `table_type` int(11) NOT NULL COMMENT '表类型: 0单表、1主表、2附表',
  `table_version` int(11) NULL DEFAULT 1 COMMENT '表版本',
  `table_txt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表说明',
  `is_checkbox` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否带checkbox',
  `is_db_synch` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '同步数据库状态',
  `is_page` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否分页',
  `is_tree` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否是树',
  `id_sequence` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键生成序列',
  `id_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主键类型',
  `query_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '查询模式',
  `relation_type` int(11) NULL DEFAULT NULL COMMENT '映射关系 0一对多  1一对一',
  `sub_table_str` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表',
  `tab_order_num` int(11) NULL DEFAULT NULL COMMENT '附表排序序号',
  `tree_parent_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树形表单父id',
  `tree_id_field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树表主键字段',
  `tree_fieldname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '树开表单列字段',
  `form_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'bdfl_ptbd' COMMENT '表单分类',
  `form_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PC表单模板',
  `form_template_mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单模板样式(移动端)',
  `scroll` int(3) NULL DEFAULT 0 COMMENT '是否有横向滚动条',
  `copy_version` int(11) NULL DEFAULT NULL COMMENT '复制版本号',
  `copy_type` int(3) NULL DEFAULT 0 COMMENT '复制表类型1为复制表 0为原始表',
  `physic_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始表ID',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `theme_template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题模板',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlineform_table_name`(`table_name`) USING BTREE,
  INDEX `index_form_templdate`(`form_template`) USING BTREE,
  INDEX `index_templdate_mobile`(`form_template_mobile`) USING BTREE,
  INDEX `index_onlineform_table_version`(`table_version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_head
-- ----------------------------
INSERT INTO `onl_cgform_head` VALUES ('1e65c54cea44446897c5fec4d967d3f6', 'teaching_work', 2, 2, '作业列表', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'teaching_work_correct,teaching_work_comment', NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 13:38:41', 'jeecg', '2020-04-11 21:34:29', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('2d869ad51818483faea70b2bd62ea34e', 'teaching_work_correct', 3, 1, '作业批改', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 1, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 11:16:16', 'jeecg', '2020-04-11 21:39:07', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('3d447fa919b64f6883a834036c14aa67', 'test_enhance_select', 1, 5, 'js增强实现下拉联动效果', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2020-02-21 17:58:46', 'admin', '2020-02-20 16:19:00', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('441e68dc1d0147d5a69fb54260d1dbb3', 'sys_file', 1, 8, '文件管理', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 1, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 11:10:38', 'jeecg', '2020-04-11 21:02:05', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('56870166aba54ebfacb20ba6c770bd73', 'test_order_main', 2, 5, '测试订单主表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'test_order_product', NULL, NULL, NULL, NULL, 'bdfl_include', '2', NULL, 0, NULL, 0, NULL, 'admin', '2019-11-21 17:58:28', 'admin', '2019-04-20 11:38:39', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('699d6a7064064ca7805c68ea0f06932c', 'teaching_activity', 2, 5, '营销活动', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, '', NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2022-04-17 16:19:28', 'admin', '2020-03-08 19:28:36', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('b5f6dafc26d7438a8ec64a1a101dea5e', 'teaching_order', 1, 6, '订单表', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-11 23:10:39', 'admin', '2020-03-07 20:48:27', 'erp');
INSERT INTO `onl_cgform_head` VALUES ('d35109c3632c4952a19ecc094943dd71', 'test_demo', 1, 14, '测试用户表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2019-03-22 21:51:35', 'admin', '2019-03-15 14:24:35', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('d384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'teaching_student', 1, 6, '学生附加信息', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-11 23:03:48', 'admin', '2020-03-08 14:31:49', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('d6cb8d561355467086159ab8cfbe0aec', 'teaching_work_comment', 3, 3, '作品评论', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, 2, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 13:38:46', 'jeecg', '2020-04-11 21:46:47', 'normal');
INSERT INTO `onl_cgform_head` VALUES ('deea5a8ec619460c9245ba85dbc59e80', 'test_order_product', 3, 7, '订单产品明细', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2019-04-20 11:42:53', 'admin', '2019-04-20 11:41:19', 'normal');

-- ----------------------------
-- Table structure for onl_cgform_index
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgform_index`;
CREATE TABLE `onl_cgform_index`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `cgform_head_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主表id',
  `index_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引名称',
  `index_field` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引栏位',
  `index_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '索引类型',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `is_db_synch` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否同步数据库 N未同步 Y已同步',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '是否删除 0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_id`(`cgform_head_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgform_index
-- ----------------------------
INSERT INTO `onl_cgform_index` VALUES ('01778f3d46006808d25507fed1107e1d', '1e65c54cea44446897c5fec4d967d3f6', 'workName', 'work_name', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('18454d76a789b78e0b644197dc95b12f', '699d6a7064064ca7805c68ea0f06932c', 'activityname', 'activity_name', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('300332a0c2c93aaf8d7589cba7310539', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'userid', 'user_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('57c77341ebebe6215cd880159594ad4a', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'actionid', 'action_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('64e0b4ae77f6e5b48a88fd694e7165b3', '441e68dc1d0147d5a69fb54260d1dbb3', 'filetag', 'file_tag', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('7f6ca69355c146336902371f028b602c', '441e68dc1d0147d5a69fb54260d1dbb3', 'filename', 'file_name', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('81ae57fb23f8f85d9e663d8968bc3462', '2d869ad51818483faea70b2bd62ea34e', 'workId', 'work_id', 'unique', 'jeecg', '2020-04-11 21:39:07', NULL, NULL, 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('87b3b10c9ac082d81df7e3e54e6695c7', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'phone', 'phone', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('97aab1a82907b798a23f7031a8ed8a33', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'orderno', 'order_no', 'unique', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('982ab4c17e3d35e2d836a7f29b05fe0d', '1e65c54cea44446897c5fec4d967d3f6', 'courseId', 'course_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('a62597c38718ce67054bb1d221019cb2', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'student_name', 'student_name', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('a84a6fd29e3f95d14ea84613043045a5', '699d6a7064064ca7805c68ea0f06932c', 'courseid', 'coures_id', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('b4a8465de9e0e52b9fdca988168b32fc', '1e65c54cea44446897c5fec4d967d3f6', 'userId', 'user_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06', 'N', 0);
INSERT INTO `onl_cgform_index` VALUES ('dd81266751fa6f588af8ee6ca4e3aafb', 'd6cb8d561355467086159ab8cfbe0aec', 'workId', 'work_id', 'normal', 'jeecg', '2020-04-11 21:46:47', 'jeecg', '2020-04-12 13:38:41', 'N', 0);

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_onlinereport_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO `onl_cgreport_head` VALUES ('6c7f59741c814347905a938f06ee003c', 'report_user', '统计在线用户', 'select * from sys_user', NULL, NULL, '1', NULL, NULL, '2019-11-22 16:34:31', 'admin', '2019-03-25 11:20:45', 'admin');

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段文本',
  `field_width` int(3) NULL DEFAULT NULL,
  `field_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '查询模式',
  `is_order` int(2) NULL DEFAULT 0 COMMENT '是否排序  0否,1是',
  `is_search` int(2) NULL DEFAULT 0 COMMENT '是否查询  0否,1是',
  `dict_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int(2) NULL DEFAULT 1 COMMENT '是否显示  0否,1显示',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取值表达式',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_CGRHEAD_ID`(`cgrhead_id`) USING BTREE,
  INDEX `index_isshow`(`is_show`) USING BTREE,
  INDEX `index_order_num`(`order_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO `onl_cgreport_item` VALUES ('1740bb02519db90c44cb2cba8b755136', '6c7f59741c814347905a938f06ee003c', 'realname', '用户名称', NULL, 'String', NULL, 0, 0, '', '', 1, 3, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('627768efd9ba2c41e905579048f21000', '6c7f59741c814347905a938f06ee003c', 'username', '用户账号', NULL, 'String', 'single', 0, 1, '', '', 1, 2, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('8bb087a9aa2000bcae17a1b3f5768435', '6c7f59741c814347905a938f06ee003c', 'sex', '性别', NULL, 'Integer', 'single', 0, 1, 'sex', '', 1, 5, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('90d4fa57d301801abb26a9b86b6b94c4', '6c7f59741c814347905a938f06ee003c', 'birthday', '生日', NULL, 'Date', 'single', 0, 0, '', '', 1, 4, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('a4ac355f07a05218854e5f23e2930163', '6c7f59741c814347905a938f06ee003c', 'avatar', '头像', NULL, 'String', NULL, 0, 0, '', '', 0, 6, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('b27bea35b1264003c79d38cb86d6929e', '6c7f59741c814347905a938f06ee003c', 'id', 'id', NULL, 'String', NULL, 0, 0, '', '', 0, 1, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('d6e86b5ffd096ddcc445c0f320a45004', '6c7f59741c814347905a938f06ee003c', 'phone', '手机号', NULL, 'String', NULL, 0, 0, '', '', 1, 11, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);
INSERT INTO `onl_cgreport_item` VALUES ('df365cd357699eea96c29763d1dd7f9d', '6c7f59741c814347905a938f06ee003c', 'email', '邮箱', NULL, 'String', NULL, 0, 0, '', '', 1, 14, '', 'admin', '2019-11-22 16:34:31', NULL, NULL);

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cgrhead_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数默认值',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_cgrheadid`(`cgrhead_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Oss File' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oss_file
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', '3/30 * * * * ? *', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000001740009706172616D65746572707800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('MyScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('MyScheduler', 'TinyMonster1650611772510', 1650612129210, 10000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 1583505033000, 1583505003000, 5, 'PAUSED', 'CRON', 1583462974000, 0, NULL, 0, '');

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `start_time` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime NULL DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指定用户',
  `msg_abstract` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '摘要',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO `sys_announcement` VALUES ('1b714f8ebc3cc33f8b4f906103b6a18d', '5467567', NULL, NULL, NULL, 'admin', NULL, '2', NULL, '1', '2019-03-30 12:40:38', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:23:26', 'admin', '2019-02-26 17:35:10', NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('3d11237ccdf62450d20bb8abdb331178', '111222', NULL, NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-29 17:19:47', 'admin', '2019-03-29 17:19:50', NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('7ef04e95f8de030b1d5f7a9144090dc6', '111', NULL, '2019-02-06 17:28:10', '2019-03-08 17:28:11', NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:17', 'admin', '2019-03-26 19:59:49', NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('93a9060a1c20e4bf98b3f768a02c2ff9', '111', '111', '2019-02-06 17:20:17', '2019-02-21 17:20:20', 'admin', 'M', '2', 'ALL', '1', '2019-02-26 17:24:29', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:16:26', 'admin', '2019-02-26 17:19:35', NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('de1dc57f31037079e1e55c8347fe6ef7', '222', '2222', '2019-02-06 17:28:26', '2019-02-23 17:28:28', 'admin', 'M', '2', 'ALL', '1', '2019-03-29 17:19:56', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:36', 'admin', '2019-02-26 17:28:40', NULL, NULL);
INSERT INTO `sys_announcement` VALUES ('e52f3eb6215f139cb2224c52517af3bd', '334', '334', NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-30 12:40:28', 'admin', '2019-03-30 12:40:32', NULL, NULL);

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `annt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime NULL DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户通告阅读标记表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------
INSERT INTO `sys_announcement_send` VALUES ('646c0c405ec643d4dc4160db2446f8ff', '93a9060a1c20e4bf98b3f768a02c2ff9', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2022-04-15 18:47:06', 'admin', '2019-05-17 11:50:56', 'admin', '2022-04-15 18:47:06');
INSERT INTO `sys_announcement_send` VALUES ('1197434450981543938', '93a9060a1c20e4bf98b3f768a02c2ff9', 'a75d45a015c44384a04449ee80dc3503', '1', '2020-03-02 16:55:06', 'jeecg', '2019-11-21 16:39:55', 'jeecg', '2020-03-02 16:55:06');

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有子节点',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自定义值',
  `comment` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_code`(`code`) USING BTREE,
  UNIQUE INDEX `pid_value_uindex`(`pid`, `value`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES ('1441319390847008770', '0', '素材库标签', 'A03', 'admin', '2021-09-24 03:31:35', 'admin', '2021-09-24 03:53:37', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441324936413061121', '1441319390847008770', '背景', 'A03A01', 'admin', '2021-09-24 03:53:38', 'admin', '2021-09-24 03:54:27', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441325142940590082', '1441324936413061121', '奇幻', 'A03A01A01', 'admin', '2021-09-24 03:54:27', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category` VALUES ('1441325189015019522', '1441324936413061121', '音乐', 'A03A01A02', 'admin', '2021-09-24 03:54:38', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category` VALUES ('1441328672250335233', '1441319390847008770', '声音', 'A03A02', 'admin', '2021-09-24 04:08:28', 'admin', '2021-09-24 04:09:49', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441328704135434241', '1441319390847008770', '角色', 'A03A03', 'admin', '2021-09-24 04:08:36', 'admin', '2021-09-24 04:11:06', 'A04', '1', NULL, NULL);
INSERT INTO `sys_category` VALUES ('1441328791544729601', '1441324936413061121', '运动', 'A03A01A03', 'admin', '2021-09-24 04:08:57', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441328825422123010', '1441324936413061121', '户外', 'A03A01A04', 'admin', '2021-09-24 04:09:05', NULL, NULL, 'A04', NULL, 'outdoors', NULL);
INSERT INTO `sys_category` VALUES ('1441328859848970242', '1441324936413061121', '室内', 'A03A01A05', 'admin', '2021-09-24 04:09:13', NULL, NULL, 'A04', NULL, 'indoors', NULL);
INSERT INTO `sys_category` VALUES ('1441328891092340738', '1441324936413061121', '太空', 'A03A01A06', 'admin', '2021-09-24 04:09:20', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category` VALUES ('1441328921211637762', '1441324936413061121', '水下', 'A03A01A07', 'admin', '2021-09-24 04:09:28', NULL, NULL, 'A04', NULL, 'underwater', NULL);
INSERT INTO `sys_category` VALUES ('1441328958427697154', '1441324936413061121', '图案', 'A03A01A08', 'admin', '2021-09-24 04:09:36', NULL, NULL, 'A04', NULL, 'patterns', NULL);
INSERT INTO `sys_category` VALUES ('1441329010533535746', '1441328672250335233', '动物', 'A03A02A01', 'admin', '2021-09-24 04:09:49', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category` VALUES ('1441329053705506818', '1441328672250335233', '效果', 'A03A02A02', 'admin', '2021-09-24 04:09:59', NULL, NULL, 'A04', NULL, 'effects', NULL);
INSERT INTO `sys_category` VALUES ('1441329085334753282', '1441328672250335233', '可循环', 'A03A02A03', 'admin', '2021-09-24 04:10:07', NULL, NULL, 'A04', NULL, 'loops', NULL);
INSERT INTO `sys_category` VALUES ('1441329116032864258', '1441328672250335233', '音符', 'A03A02A04', 'admin', '2021-09-24 04:10:14', NULL, NULL, 'A04', NULL, 'notes', NULL);
INSERT INTO `sys_category` VALUES ('1441329157548085250', '1441328672250335233', '打击乐器', 'A03A02A05', 'admin', '2021-09-24 04:10:24', NULL, NULL, 'A04', NULL, 'percussion', NULL);
INSERT INTO `sys_category` VALUES ('1441329188107784194', '1441328672250335233', '太空', 'A03A02A06', 'admin', '2021-09-24 04:10:31', NULL, NULL, 'A04', NULL, 'space', NULL);
INSERT INTO `sys_category` VALUES ('1441329223457378305', '1441328672250335233', '运动', 'A03A02A07', 'admin', '2021-09-24 04:10:40', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441329259465478146', '1441328672250335233', '人声', 'A03A02A08', 'admin', '2021-09-24 04:10:48', NULL, NULL, 'A04', NULL, 'voice', NULL);
INSERT INTO `sys_category` VALUES ('1441329291728064514', '1441328672250335233', '古怪', 'A03A02A09', 'admin', '2021-09-24 04:10:56', NULL, NULL, 'A04', NULL, 'wacky', NULL);
INSERT INTO `sys_category` VALUES ('1441329333524303873', '1441328704135434241', '动物', 'A03A03A01', 'admin', '2021-09-24 04:11:06', NULL, NULL, 'A04', NULL, 'animals', NULL);
INSERT INTO `sys_category` VALUES ('1441329369280745474', '1441328704135434241', '人物', 'A03A03A02', 'admin', '2021-09-24 04:11:14', NULL, NULL, 'A04', NULL, 'people', NULL);
INSERT INTO `sys_category` VALUES ('1441329396858294273', '1441328704135434241', '奇幻', 'A03A03A03', 'admin', '2021-09-24 04:11:21', NULL, NULL, 'A04', NULL, 'fantasy', NULL);
INSERT INTO `sys_category` VALUES ('1441329422980419585', '1441328704135434241', '舞蹈', 'A03A03A04', 'admin', '2021-09-24 04:11:27', NULL, NULL, 'A04', NULL, 'dance', NULL);
INSERT INTO `sys_category` VALUES ('1441329456912338945', '1441328704135434241', '音乐', 'A03A03A05', 'admin', '2021-09-24 04:11:35', NULL, NULL, 'A04', NULL, 'music', NULL);
INSERT INTO `sys_category` VALUES ('1441329488424144898', '1441328704135434241', '运动', 'A03A03A06', 'admin', '2021-09-24 04:11:43', NULL, NULL, 'A04', NULL, 'sports', NULL);
INSERT INTO `sys_category` VALUES ('1441329526349041665', '1441328704135434241', '食物', 'A03A03A07', 'admin', '2021-09-24 04:11:52', NULL, NULL, 'A04', NULL, 'food', NULL);
INSERT INTO `sys_category` VALUES ('1441329558519353346', '1441328704135434241', '时尚', 'A03A03A08', 'admin', '2021-09-24 04:12:00', NULL, NULL, 'A04', NULL, 'fashion', NULL);
INSERT INTO `sys_category` VALUES ('1441329606007263234', '1441328704135434241', '字母', 'A03A03A09', 'admin', '2021-09-24 04:12:11', NULL, NULL, 'A04', NULL, 'letters', NULL);

-- ----------------------------
-- Table structure for sys_check_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_check_rule`;
CREATE TABLE `sys_check_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_check_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_check_rule
-- ----------------------------
INSERT INTO `sys_check_rule` VALUES ('1224980593992388610', '通用编码规则', 'common', '[{\"digits\":\"1\",\"pattern\":\"^[a-z|A-Z]$\",\"message\":\"第一位只能是字母\"},{\"digits\":\"*\",\"pattern\":\"^[0-9|a-z|A-Z|_]{0,}$\",\"message\":\"只能填写数字、大小写字母、下划线\"},{\"digits\":\"*\",\"pattern\":\"^.{3,}$\",\"message\":\"最少输入3位数\"},{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"最多输入12位数\"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27');
INSERT INTO `sys_check_rule` VALUES ('1225001845524004866', '负责的功能测试', 'test', '[{\"digits\":\"*\",\"pattern\":\"^.{3,12}$\",\"message\":\"只能输入3-12位字符\"},{\"digits\":\"3\",\"pattern\":\"^\\\\d{3}$\",\"message\":\"前3位必须是数字\"},{\"digits\":\"*\",\"pattern\":\"^[^pP]*$\",\"message\":\"不能输入P\"},{\"digits\":\"4\",\"pattern\":\"^@{4}$\",\"message\":\"第4-7位必须都为 @\"},{\"digits\":\"2\",\"pattern\":\"^#=$\",\"message\":\"第8-9位必须是 #=\"},{\"digits\":\"1\",\"pattern\":\"^O$\",\"message\":\"第10位必须为大写的O\"},{\"digits\":\"*\",\"pattern\":\"^.*。$\",\"message\":\"必须以。结尾\"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `config_key` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置属性',
  `config_value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置值',
  `config_enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否生效',
  `comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1481959780167823362', '_address', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780360761346', 'brandName', 'Teaching教学平台', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780637585409', 'footer', '<p>Copyright &copy; 2020&nbsp;<a href=\"https://teaching.vip\" target=\"_blank\" rel=\"noopener\">Teaching</a> | Teaching开源Steam教学平台 <a href=\"https://github.com/open-scratch/teaching\" target=\"_blank\" rel=\"noopener\">Github</a></p>\n<p><a href=\"http://beian.miit.gov.cn/\" target=\"_blank\" rel=\"noopener\">沪ICP备20009532号-4</a></p>', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959780801163266', '_phone', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959781103153153', '_defaultRole', '1252532277234982913', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959781228982274', 'logo', '7294427e3a8b49c08d10e64d3235726c.png', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959782168506369', 'allowReg', '1', 1, NULL);
INSERT INTO `sys_config` VALUES ('1481959782298529794', '_linkman', '', 1, NULL);
INSERT INTO `sys_config` VALUES ('1514923379054829570', '_defaultDepart', '4338928a0bbc4bb89fce1523142083a6', 1, NULL);
INSERT INTO `sys_config` VALUES ('1515593345009672194', 'brandDesc', '开源STEAM教学平台', 1, NULL);

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据ID',
  `data_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '数据内容',
  `data_version` int(11) NULL DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sindex`(`data_table`, `data_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_data_source_code_uni`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES ('1209779538310004737', NULL, 'MySQL5.7', '本地数据库MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'root', 'admin', '2019-12-25 18:14:53', NULL, NULL, 'A01');

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) NULL DEFAULT 0 COMMENT '排序',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `org_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '传真',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_depart_org_code`(`org_code`) USING BTREE,
  INDEX `index_depart_parent_id`(`parent_id`) USING BTREE,
  INDEX `index_depart_depart_order`(`depart_order`) USING BTREE,
  INDEX `index_depart_org_code`(`org_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('26c7f056a6b94ae78d736c67cd24baac', 'c6d7cb4deeac411cb3384b1b31278596', '校区1', NULL, NULL, 0, NULL, '2', '2', 'A01A06', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:31:07', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('4338928a0bbc4bb89fce1523142083a6', '791a3001726c461d98488a7dabd00bbb', 'Scratch初级班', NULL, NULL, 0, NULL, '3', '3', 'A03A01A01', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-21 17:42:52', 'jeecg', '2020-04-21 17:43:04');
INSERT INTO `sys_depart` VALUES ('57197590443c44f083d42ae24ef26a2c', 'c6d7cb4deeac411cb3384b1b31278596', '校区2', NULL, NULL, 0, NULL, '1', '2', 'A01A05', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-21 16:14:41', 'jeecg', '2020-04-10 15:31:30');
INSERT INTO `sys_depart` VALUES ('6cf9b69c6f3d47c998418ad8b2b4820c', '57197590443c44f083d42ae24ef26a2c', '班级2', NULL, NULL, 0, NULL, '3', '3', 'A01A05A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2021-09-23 15:09:07', 'admin', '2021-11-30 16:11:44');
INSERT INTO `sys_depart` VALUES ('791a3001726c461d98488a7dabd00bbb', 'da4a5578694b45a8a34411347e51d55f', '上海XX校区', NULL, NULL, 0, NULL, '2', '2', 'A03A01', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-21 17:42:33', NULL, NULL);
INSERT INTO `sys_depart` VALUES ('c6d7cb4deeac411cb3384b1b31278596', '', 'Teaching', NULL, NULL, 0, NULL, '1', '1', 'A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-11 14:21:51', 'admin', '2020-11-01 21:02:25');
INSERT INTO `sys_depart` VALUES ('d2b37ffcc3fd46ddb5bc1c3da7fc41c0', '26c7f056a6b94ae78d736c67cd24baac', '班级1', NULL, NULL, 0, NULL, '3', '3', 'A01A06A01', '', NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:31:40', 'jeecg', '2020-04-22 11:34:15');
INSERT INTO `sys_depart` VALUES ('da4a5578694b45a8a34411347e51d55f', '', '上海地区', NULL, NULL, 0, NULL, '1', '1', 'A03', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-21 17:42:19', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_permission`;
CREATE TABLE `sys_depart_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据规则id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_permission
-- ----------------------------
INSERT INTO `sys_depart_permission` VALUES ('1248516556356153345', '26c7f056a6b94ae78d736c67cd24baac', '1236542260197023745', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556381319170', '26c7f056a6b94ae78d736c67cd24baac', '1236542357244829698', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556385513473', '26c7f056a6b94ae78d736c67cd24baac', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556385513474', '26c7f056a6b94ae78d736c67cd24baac', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556393902082', '26c7f056a6b94ae78d736c67cd24baac', '7593c9e3523a17bca83b8d7fe8a34e58', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556398096385', '26c7f056a6b94ae78d736c67cd24baac', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556402290690', '26c7f056a6b94ae78d736c67cd24baac', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO `sys_depart_permission` VALUES ('1248516556402290691', '26c7f056a6b94ae78d736c67cd24baac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);

-- ----------------------------
-- Table structure for sys_depart_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role`;
CREATE TABLE `sys_depart_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role
-- ----------------------------
INSERT INTO `sys_depart_role` VALUES ('1248515697224282114', '26c7f056a6b94ae78d736c67cd24baac', '校长', 'schoolmaster', NULL, 'jeecg', '2020-04-10 15:38:33', NULL, NULL);
INSERT INTO `sys_depart_role` VALUES ('1248515744204681217', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', '老师', 'teacher', NULL, 'jeecg', '2020-04-10 15:38:44', NULL, NULL);

-- ----------------------------
-- Table structure for sys_depart_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_permission`;
CREATE TABLE `sys_depart_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depart_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart_role_user`;
CREATE TABLE `sys_depart_role_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门角色用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_depart_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `type` int(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `indextable_dict_code`(`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1174511106530525185', '机构类型', 'org_category', '机构类型 1机构，2部门 3班级', 0, 'admin', '2019-09-19 10:30:43', 'admin', '2022-04-17 16:15:31', 0);
INSERT INTO `sys_dict` VALUES ('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL);
INSERT INTO `sys_dict` VALUES ('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1232913193820581889', 'Online表单业务分类', 'ol_form_biz_type', '', 0, 'admin', '2020-02-27 14:19:46', 'admin', '2020-02-27 14:20:23', 0);
INSERT INTO `sys_dict` VALUES ('1236290896288133121', '订单状态', 'order_status', '', 0, 'admin', '2020-03-07 22:01:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236290944946253825', '支付方式', 'pay_method', '', 0, 'admin', '2020-03-07 22:01:45', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236543470144708610', '学生状态', 'student_status', '', 1, 'admin', '2020-03-08 14:45:11', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1236543506538684417', '学生年级', 'grade', '', 0, 'admin', '2020-03-08 14:45:20', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1237261139620921345', '活动类型', 'activity_type', '', 1, 'jeecg', '2020-03-10 14:16:57', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249164380827549698', '文件类型', 'file_type', '', 0, 'jeecg', '2020-04-12 10:36:11', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249164719404351490', '文件位置', 'file_location', '存储位置', 0, 'jeecg', '2020-04-12 10:37:32', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1249175047563493377', '作业类型', 'work_type', '作品类型', 0, 'jeecg', '2020-04-12 11:18:34', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'quartz_status', '', 0, 'admin', '2020-04-16 15:30:14', '', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('1252531120982810626', '课程资源类型', 'course_media_type', '', 0, 'jeecg', '2020-04-21 17:34:24', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1278612830199599105', '作业状态', 'work_status', '', 0, 'admin', '2020-07-02 16:53:48', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1362358951581159425', '附加作业状态', 'additional_work_status', '', 0, 'admin', '2021-02-18 05:11:00', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('1439110468358717442', 'Scratch素材类型', 'scratch_asset_type', 'scratch素材库的素材类型', 1, 'admin', '2021-09-18 01:14:07', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 1, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0);
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0);
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1);
INSERT INTO `sys_dict` VALUES ('404a04a15f371566c658ee9ef9fc392a', 'cehis2', '22', NULL, 1, 'admin', '2019-01-30 11:17:21', 'admin', '2019-03-30 11:18:12', 0);
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1);
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0);
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0);
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0);
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 1, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0);
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0);
INSERT INTO `sys_dict` VALUES ('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 1, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1);
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 1, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0);
INSERT INTO `sys_dict` VALUES ('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 1, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1);
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 1, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0);
INSERT INTO `sys_dict` VALUES ('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0);
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0);
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 1, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0);
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dict_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) NULL DEFAULT NULL COMMENT '排序',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_dict_id`(`dict_id`) USING BTREE,
  INDEX `index_table_sort_order`(`sort_order`) USING BTREE,
  INDEX `index_table_dict_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11');
INSERT INTO `sys_dict_item` VALUES ('1174509082208395266', '1174511106530525185', '班级', '3', '班级', 1, 1, 'admin', '2019-09-19 10:31:16', 'admin', '2022-04-17 16:15:10');
INSERT INTO `sys_dict_item` VALUES ('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39');
INSERT INTO `sys_dict_item` VALUES ('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47');
INSERT INTO `sys_dict_item` VALUES ('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56');
INSERT INTO `sys_dict_item` VALUES ('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06');
INSERT INTO `sys_dict_item` VALUES ('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12');
INSERT INTO `sys_dict_item` VALUES ('1174511197735665665', '1174511106530525185', '机构', '1', '机构', 1, 1, 'admin', '2019-09-19 10:31:05', 'admin', '2022-04-17 16:15:20');
INSERT INTO `sys_dict_item` VALUES ('1174511244036587521', '1174511106530525185', '部门', '2', '部门', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18');
INSERT INTO `sys_dict_item` VALUES ('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24');
INSERT INTO `sys_dict_item` VALUES ('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520817285701634', '1199520177767587841', '列表', '1', '', 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199520835035996161', '1199520177767587841', '链接', '2', '', 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525490575060993', '1199525215290306561', '进行中', '1', '', 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1199525506429530114', '1199525215290306561', '已完成', '2', '', 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02');
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1209733775114702850', '1209733563293962241', 'MySQL', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 1, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 1, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1232913424813486081', '1232913193820581889', '官方示例', 'demo', '', 1, 1, 'admin', '2020-02-27 14:20:42', 'admin', '2020-02-27 14:21:37');
INSERT INTO `sys_dict_item` VALUES ('1232913493717512194', '1232913193820581889', '流程表单', 'bpm', '', 2, 1, 'admin', '2020-02-27 14:20:58', 'admin', '2020-02-27 14:22:20');
INSERT INTO `sys_dict_item` VALUES ('1232913605382467585', '1232913193820581889', '测试表单', 'temp', '', 4, 1, 'admin', '2020-02-27 14:21:25', 'admin', '2020-02-27 14:22:16');
INSERT INTO `sys_dict_item` VALUES ('1232914232372195330', '1232913193820581889', '导入表单', 'bdfl_include', '', 5, 1, 'admin', '2020-02-27 14:23:54', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371726545010689', '4e4602b3e3686f0911384e188dc7efb4', '左模糊', 'LEFT_LIKE', '左模糊', 7, 1, 'admin', '2020-03-02 14:55:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1234371809495760898', '4e4602b3e3686f0911384e188dc7efb4', '右模糊', 'RIGHT_LIKE', '右模糊', 7, 1, 'admin', '2020-03-02 14:55:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543560674566145', '1236543470144708610', '1', '正常', '', 1, 1, 'admin', '2020-03-08 14:45:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543601355120642', '1236543506538684417', '一年级', '1', '', 1, 1, 'admin', '2020-03-08 14:45:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543635719053313', '1236543506538684417', '二年级', '2', '', 2, 1, 'admin', '2020-03-08 14:45:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543668619173890', '1236543506538684417', '三年级', '3', '', 3, 1, 'admin', '2020-03-08 14:45:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543696263831553', '1236543506538684417', '四年级', '4', '', 4, 1, 'admin', '2020-03-08 14:46:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543726525734913', '1236543506538684417', '五年级', '5', '', 5, 1, 'admin', '2020-03-08 14:46:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543782658105345', '1236543506538684417', '六年级', '6', '', 6, 1, 'admin', '2020-03-08 14:46:26', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543882511900673', '1236290944946253825', '公众号支付', '1', '', 1, 1, 'admin', '2020-03-08 14:46:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543928443723778', '1236290896288133121', '待付款', '0', '', 1, 1, 'admin', '2020-03-08 14:47:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1236543953907343361', '1236290896288133121', '已付款', '1', '', 1, 1, 'admin', '2020-03-08 14:47:07', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1237261278674681857', '1237261139620921345', '免费领取', '0', '', 1, 1, 'jeecg', '2020-03-10 14:17:30', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1237261306734575618', '1237261139620921345', '直接购买', '1', '', 1, 1, 'jeecg', '2020-03-10 14:17:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1237261383096074241', '1237261139620921345', '三人拼团', '2', '', 1, 1, 'jeecg', '2020-03-10 14:17:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164487870382081', '1249164380827549698', '未分类', '1', '', 1, 1, 'jeecg', '2020-04-12 10:36:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164519654817793', '1249164380827549698', '学生作业文件', '2', '', 1, 1, 'jeecg', '2020-04-12 10:36:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164593684283393', '1249164380827549698', '课程视频', '3', '', 1, 1, 'jeecg', '2020-04-12 10:37:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164623228960770', '1249164380827549698', '课程作业', '4', '', 1, 1, 'jeecg', '2020-04-12 10:37:09', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164652408733697', '1249164380827549698', '课程教案', '5', '', 1, 1, 'jeecg', '2020-04-12 10:37:16', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164757589295106', '1249164719404351490', '本地', '1', '', 1, 1, 'jeecg', '2020-04-12 10:37:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249164781949812738', '1249164719404351490', '七牛', '2', '', 1, 1, 'jeecg', '2020-04-12 10:37:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1249175102324326401', '1249175047563493377', 'Scratch2.0', '1', '', 2, 1, 'jeecg', '2020-04-12 11:18:47', 'admin', '2022-04-17 16:14:12');
INSERT INTO `sys_dict_item` VALUES ('1249175128622612481', '1249175047563493377', 'Scratch3.0', '2', '', 3, 1, 'jeecg', '2020-04-12 11:18:53', 'admin', '2022-04-17 16:14:17');
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, 1, 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, 1, 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1252531170790170625', '1252531120982810626', '课程视频', '1', '', 1, 1, 'jeecg', '2020-04-21 17:34:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1252531204344602626', '1252531120982810626', '课程答案', '2', '', 2, 0, 'jeecg', '2020-04-21 17:34:44', 'jeecg', '2020-04-21 17:35:18');
INSERT INTO `sys_dict_item` VALUES ('1252531254416203778', '1252531120982810626', '课程PPT', '3', '', 3, 1, 'jeecg', '2020-04-21 17:34:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1252531329372610561', '1252531120982810626', '课程教案', '4', '', 4, 0, 'jeecg', '2020-04-21 17:35:14', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1252531400281513985', '1252531120982810626', '作业文件', '5', '', 5, 1, 'jeecg', '2020-04-21 17:35:31', 'jeecg', '2020-04-21 17:35:40');
INSERT INTO `sys_dict_item` VALUES ('1278612880279588866', '1278612830199599105', '已保存', '0', '', 1, 1, 'admin', '2020-07-02 16:54:00', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1278612903998377985', '1278612830199599105', '待批改', '1', '', 1, 1, 'admin', '2020-07-02 16:54:06', 'admin', '2022-04-17 16:32:17');
INSERT INTO `sys_dict_item` VALUES ('1322863092397105153', '1249175047563493377', 'ScratchJr', '3', '', 4, 1, 'admin', '2020-11-01 19:28:33', 'admin', '2022-04-17 16:14:32');
INSERT INTO `sys_dict_item` VALUES ('1342341222996488194', '1249175047563493377', '图形化Python', '4', '', 5, 1, 'admin', '2020-12-24 23:27:41', 'admin', '2022-04-17 16:14:22');
INSERT INTO `sys_dict_item` VALUES ('1362358984892321794', '1362358951581159425', '未发布', '0', '', 1, 1, 'admin', '2021-02-18 05:11:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1362359007336042498', '1362358951581159425', '已发布', '1', '', 1, 1, 'admin', '2021-02-18 05:11:13', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1472853906186854401', '1362358951581159425', '已结束', '2', '', 2, 1, 'admin', '2021-12-20 16:58:30', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1478676963631595521', '1249175047563493377', '文件', '0', '', 1, 1, 'admin', '2022-01-05 18:37:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1498944561787031554', '1249175047563493377', '积木编程', '10', '', 10, 1, 'admin', '2022-03-02 16:53:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1515609003021717505', '1278612830199599105', '已批改', '2', '', 3, 1, 'admin', '2022-04-17 16:31:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1515609292537745409', '1278612830199599105', '首页展示', '3', '', 4, 1, 'admin', '2022-04-17 16:33:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57');
INSERT INTO `sys_dict_item` VALUES ('1b8a6341163062dad8cb2fddd34e0c3b', '404a04a15f371566c658ee9ef9fc392a', '22', '222', NULL, 1, 1, 'admin', '2019-03-30 11:17:48', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36');
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2321496db6febc956a6c70fab94cb0c', '404a04a15f371566c658ee9ef9fc392a', '3', '3', NULL, 1, 1, 'admin', '2019-03-30 11:18:18', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO `sys_dict_item` VALUES ('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06');
INSERT INTO `sys_dict_item` VALUES ('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30');
INSERT INTO `sys_dict_item` VALUES ('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `file_type` tinyint(4) NULL DEFAULT NULL COMMENT '文件类型',
  `file_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件路径',
  `file_location` tinyint(4) NOT NULL COMMENT '存储位置',
  `file_tag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件标签',
  `del_flag` int(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `filetag`(`file_tag`) USING BTREE,
  INDEX `filename`(`file_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('1515608503719186433', '2022-04-17 16:30:00', NULL, 'admin', NULL, 'A01', 2, 'project3/c51771f8-044b-4de5-a6f7-63449a8ca87b.jpg', 'project3/c51771f8-044b-4de5-a6f7-63449a8ca87b.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515608504516104193', '2022-04-17 16:30:00', NULL, 'admin', NULL, 'A01', 2, 'project3/c51771f8-044b-4de5-a6f7-63449a8ca87b.sb3', 'project3/c51771f8-044b-4de5-a6f7-63449a8ca87b.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515610657402114049', '2022-04-17 16:38:34', NULL, 'admin', NULL, 'A01', 2, 'project3/9b8f66ec-57e7-40b7-b5a3-0189406c2c43.jpg', 'project3/9b8f66ec-57e7-40b7-b5a3-0189406c2c43.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515610657859293185', '2022-04-17 16:38:34', NULL, 'admin', NULL, 'A01', 2, 'project3/9b8f66ec-57e7-40b7-b5a3-0189406c2c43.sb3', 'project3/9b8f66ec-57e7-40b7-b5a3-0189406c2c43.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515610671859879938', '2022-04-17 16:38:37', NULL, 'admin', NULL, 'A01', 2, 'project3/f26e0829-5e7b-4063-887e-9aa48f68de62.jpg', 'project3/f26e0829-5e7b-4063-887e-9aa48f68de62.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515610673516630017', '2022-04-17 16:38:37', NULL, 'admin', NULL, 'A01', 2, 'project3/f26e0829-5e7b-4063-887e-9aa48f68de62.sb3', 'project3/f26e0829-5e7b-4063-887e-9aa48f68de62.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515612029354758146', '2022-04-17 16:44:01', NULL, 'admin', NULL, 'A01', 2, 'project3/95de6df6-2c74-41c6-a79c-0352528b7283.jpg', 'project3/95de6df6-2c74-41c6-a79c-0352528b7283.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515612029782577154', '2022-04-17 16:44:01', NULL, 'admin', NULL, 'A01', 2, 'project3/95de6df6-2c74-41c6-a79c-0352528b7283.sb3', 'project3/95de6df6-2c74-41c6-a79c-0352528b7283.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515612041920892930', '2022-04-17 16:44:04', NULL, 'admin', NULL, 'A01', 2, 'project3/b0dda1bb-2b6f-409d-8404-60ec99209ed8.sb3', 'project3/b0dda1bb-2b6f-409d-8404-60ec99209ed8.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515612042982051841', '2022-04-17 16:44:04', NULL, 'admin', NULL, 'A01', 2, 'project3/b0dda1bb-2b6f-409d-8404-60ec99209ed8.jpg', 'project3/b0dda1bb-2b6f-409d-8404-60ec99209ed8.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515612054998732802', '2022-04-17 16:44:07', NULL, 'admin', NULL, 'A01', 2, 'project3/832aa725-3457-45e9-9a5b-2a5a28fad2fb.jpg', 'project3/832aa725-3457-45e9-9a5b-2a5a28fad2fb.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515612056634511361', '2022-04-17 16:44:07', NULL, 'admin', NULL, 'A01', 2, 'project3/832aa725-3457-45e9-9a5b-2a5a28fad2fb.sb3', 'project3/832aa725-3457-45e9-9a5b-2a5a28fad2fb.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515612476119437313', '2022-04-17 16:45:47', NULL, 'admin', NULL, 'A01', 2, 'project3/ed89de0f-5c01-49f4-b697-b1bdf4c77b55.sb3', 'project3/ed89de0f-5c01-49f4-b697-b1bdf4c77b55.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515612476488536065', '2022-04-17 16:45:47', NULL, 'admin', NULL, 'A01', 2, 'project3/ed89de0f-5c01-49f4-b697-b1bdf4c77b55.jpg', 'project3/ed89de0f-5c01-49f4-b697-b1bdf4c77b55.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1515614532653797378', '2022-04-17 16:53:57', NULL, 'admin', NULL, 'A01', 2, 'project3/272a61de-d759-450d-8749-0c352876bb99.sb3', 'project3/272a61de-d759-450d-8749-0c352876bb99.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1515614533073227778', '2022-04-17 16:53:58', NULL, 'admin', NULL, 'A01', 2, 'project3/272a61de-d759-450d-8749-0c352876bb99.jpg', 'project3/272a61de-d759-450d-8749-0c352876bb99.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517392481371623425', '2022-04-22 14:38:54', NULL, 'admin', NULL, 'A03', NULL, '6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg', 'a9a5f11099be41ed835b5afed91057ec.jpg', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517392538988777474', '2022-04-22 14:39:07', NULL, 'admin', NULL, 'A03', NULL, '6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg', 'f336c87d32b44ede9876f32f9f3795b6.jpg', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517392674829701122', '2022-04-22 14:39:40', NULL, 'admin', NULL, 'A03', NULL, '6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg', 'cdde0d1286084ea981b10fff7246955c.jpg', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517392814554550274', '2022-04-22 14:40:13', NULL, 'admin', NULL, 'A03', NULL, 'test.pptx', 'f3359d8cb4044440964af742ae4aaf24.pptx', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517392834825621505', '2022-04-22 14:40:18', NULL, 'admin', NULL, 'A03', NULL, '新建文本文档.zip', '02e545a1105c4e508361a4857c78e23e.zip', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517393019450494978', '2022-04-22 14:41:02', NULL, 'admin', NULL, 'A03', NULL, 'cctv.mp4', '68eab0373242436986414ad2fc7ff706.mp4', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517394959613890561', '2022-04-22 14:48:44', NULL, 'admin', NULL, 'A03', NULL, 'cctv.mp4', '48fb413ad3c94b1bbdaafae77184bd43.mp4', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517395581432041474', '2022-04-22 14:51:13', NULL, 'admin', NULL, 'A03', 2, 'project3/47c28064-fd48-4c81-840b-bd827b5147a6.jpg', 'project3/47c28064-fd48-4c81-840b-bd827b5147a6.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517395582551920641', '2022-04-22 14:51:13', NULL, 'admin', NULL, 'A03', 2, 'project3/47c28064-fd48-4c81-840b-bd827b5147a6.sb3', 'project3/47c28064-fd48-4c81-840b-bd827b5147a6.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1517395624650149889', '2022-04-22 14:51:23', NULL, 'admin', NULL, 'A03', 2, 'project3/9bd180fe-e66b-4ded-8527-237e8676524a.sb3', 'project3/9bd180fe-e66b-4ded-8527-237e8676524a.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1517395625098940418', '2022-04-22 14:51:23', NULL, 'admin', NULL, 'A03', 2, 'project3/9bd180fe-e66b-4ded-8527-237e8676524a.jpg', 'project3/9bd180fe-e66b-4ded-8527-237e8676524a.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517395655587336193', '2022-04-22 14:51:30', NULL, 'admin', NULL, 'A03', 2, 'project3/a94ec49d-826b-404d-9985-5c61f420c38e.jpg', 'project3/a94ec49d-826b-404d-9985-5c61f420c38e.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517395657600602113', '2022-04-22 14:51:31', NULL, 'admin', NULL, 'A03', 2, 'project3/a94ec49d-826b-404d-9985-5c61f420c38e.sb3', 'project3/a94ec49d-826b-404d-9985-5c61f420c38e.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1517395751389433858', '2022-04-22 14:51:53', NULL, 'admin', NULL, 'A03', 2, 'project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.jpg', 'project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517395754593882113', '2022-04-22 14:51:54', NULL, 'admin', NULL, 'A03', 2, 'project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.sb3', 'project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1517396213991804929', '2022-04-22 14:53:43', NULL, 'admin', NULL, 'A03', NULL, '新作品.sb3', '55246252c13741bfaa9bf8f525692ebb.sb3', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517396245046431746', '2022-04-22 14:53:51', NULL, 'admin', NULL, 'A03', NULL, 'test.pptx', '4769b8f563224d1692a1f6273f88bf9b.pptx', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517396274138124289', '2022-04-22 14:53:58', NULL, 'admin', NULL, 'A03', NULL, '6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg', 'fc859277a2484353bbd401ad9729643d.jpg', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517396540770029569', '2022-04-22 14:55:01', NULL, 'student', NULL, 'A01A05A01', 2, 'project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.jpg', 'project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.jpg', 2, '学生作业-封面', 0);
INSERT INTO `sys_file` VALUES ('1517396541818605569', '2022-04-22 14:55:02', NULL, 'student', NULL, 'A01A05A01', 2, 'project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.sb3', 'project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.sb3', 2, '学生作业-sb3', 0);
INSERT INTO `sys_file` VALUES ('1517398548180701185', '2022-04-22 15:03:00', NULL, 'admin', NULL, 'A01', NULL, '6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg', '/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517398700459102210', '2022-04-22 15:03:36', NULL, 'admin', NULL, 'A01', NULL, 'student.615cea8d.png', '/internalapi/asset/24d693da2c5d4fe88c7cfe42581b7f73.png', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517398774090108930', '2022-04-22 15:03:54', NULL, 'admin', NULL, 'A01', NULL, 'student.615cea8d.png', '/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517398782696820737', '2022-04-22 15:03:56', NULL, 'admin', NULL, 'A01', NULL, 'teacher.f50f69d6.png', '/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517398789881663489', '2022-04-22 15:03:58', NULL, 'admin', NULL, 'A01', NULL, 'worker.1928367c.png', '/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png', 2, '后台上传', 0);
INSERT INTO `sys_file` VALUES ('1517400067542159361', '2022-04-22 15:09:02', NULL, 'teacher', NULL, 'A01A06A01', NULL, 'MyBass.wav', '/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav', 2, '后台上传', 0);

-- ----------------------------
-- Table structure for sys_fill_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_fill_rule`;
CREATE TABLE `sys_fill_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_sys_fill_rule_code`(`rule_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_fill_rule
-- ----------------------------
INSERT INTO `sys_fill_rule` VALUES ('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{\"parentId\":\"c6d7cb4deeac411cb3384b1b31278596\"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35');
INSERT INTO `sys_fill_rule` VALUES ('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{\"pid\":\"\"}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `log_type` int(2) NULL DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) NULL DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `request_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) NULL DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_table_userid`(`userid`) USING BTREE,
  INDEX `index_logt_ype`(`log_type`) USING BTREE,
  INDEX `index_operate_type`(`operate_type`) USING BTREE,
  INDEX `index_log_type`(`log_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1515623142289022978', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-17 17:28:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517385967877529601', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1437fc18', NULL, 399, 'admin', '2022-04-22 14:13:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517385987813056514', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6e02dbf', NULL, 223, 'admin', '2022-04-22 14:13:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517386462482440194', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@28fe166f', NULL, 165, 'admin', '2022-04-22 14:14:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517391873239457793', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@40e73287', NULL, 190, 'admin', '2022-04-22 14:36:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392449629130754', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1829b88c', NULL, 847, 'admin', '2022-04-22 14:38:46', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392481635864577', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609534002,\"fileLocation\":2,\"fileName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg\",\"filePath\":\"a9a5f11099be41ed835b5afed91057ec.jpg\",\"fileTag\":\"后台上传\",\"id\":\"1517392481371623425\",\"sysOrgCode\":\"A03\"}]', NULL, 48, 'admin', '2022-04-22 14:38:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392486220238849', 2, '课程-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.edit()', NULL, '[{\"courseCover\":\"a9a5f11099be41ed835b5afed91057ec.jpg\",\"courseDesc\":\"123\",\"courseName\":\"Scratch入门课\",\"createBy\":\"admin\",\"createTime\":1632973203000,\"id\":\"1443420350180347906\",\"isShared\":true,\"orderNum\":1,\"showType\":2,\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1650609535137}]', NULL, 30, 'admin', '2022-04-22 14:38:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392488824901633', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@33525c16', NULL, 193, 'admin', '2022-04-22 14:38:55', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392539118800897', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609547750,\"fileLocation\":2,\"fileName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg\",\"filePath\":\"f336c87d32b44ede9876f32f9f3795b6.jpg\",\"fileTag\":\"后台上传\",\"id\":\"1517392538988777474\",\"sysOrgCode\":\"A03\"}]', NULL, 24, 'admin', '2022-04-22 14:39:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392581766483970', 2, '课程-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.edit()', NULL, '[{\"courseCover\":\"f336c87d32b44ede9876f32f9f3795b6.jpg\",\"courseDesc\":\"Scratch进阶课程\",\"courseName\":\"Scratch进阶课\",\"createBy\":\"admin\",\"createTime\":1638941991000,\"id\":\"1468455261786087426\",\"isShared\":true,\"orderNum\":2,\"showType\":1,\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1650609557914}]', NULL, 29, 'admin', '2022-04-22 14:39:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392584157237250', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7c986fc7', NULL, 149, 'admin', '2022-04-22 14:39:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392619460694017', 2, '课程-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.edit()', NULL, '[{\"courseCover\":\"a9a5f11099be41ed835b5afed91057ec.jpg\",\"courseDesc\":\"Scratch入门课程\",\"courseName\":\"Scratch入门课\",\"createBy\":\"admin\",\"createTime\":1632973203000,\"id\":\"1443420350180347906\",\"isShared\":true,\"orderNum\":1,\"showType\":2,\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1650609566859}]', NULL, 80, 'admin', '2022-04-22 14:39:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392625286582273', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@78cffbde', NULL, 749, 'admin', '2022-04-22 14:39:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392645008199682', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6a096704', NULL, 159, 'admin', '2022-04-22 14:39:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392646383931394', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@33c6a562', NULL, 201, 'admin', '2022-04-22 14:39:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392674896809985', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609580135,\"fileLocation\":2,\"fileName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg\",\"filePath\":\"cdde0d1286084ea981b10fff7246955c.jpg\",\"fileTag\":\"后台上传\",\"id\":\"1517392674829701122\",\"sysOrgCode\":\"A03\"}]', NULL, 20, 'admin', '2022-04-22 14:39:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392768530452481', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: 0b5051d7d90f41c7b55b3ab520c8236a.txt', NULL, 19, 'admin', '2022-04-22 14:40:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392784976318465', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: 561f8e5139e64acf8e73c2b7fb5af3cb.sb3', NULL, 17, 'admin', '2022-04-22 14:40:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392814684573698', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609613450,\"fileLocation\":2,\"fileName\":\"test.pptx\",\"filePath\":\"f3359d8cb4044440964af742ae4aaf24.pptx\",\"fileTag\":\"后台上传\",\"id\":\"1517392814554550274\",\"sysOrgCode\":\"A03\"}]', NULL, 26, 'admin', '2022-04-22 14:40:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392834959839233', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609618289,\"fileLocation\":2,\"fileName\":\"新建文本文档.zip\",\"filePath\":\"02e545a1105c4e508361a4857c78e23e.zip\",\"fileTag\":\"后台上传\",\"id\":\"1517392834825621505\",\"sysOrgCode\":\"A03\"}]', NULL, 24, 'admin', '2022-04-22 14:40:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392850562650113', 2, '课程单元-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.edit()', NULL, '[{\"courseCase\":\"8d8e18ba87ed45a291238a44bb826e79.sb3\",\"courseId\":\"1443420350180347906\",\"coursePpt\":\"f3359d8cb4044440964af742ae4aaf24.pptx,02e545a1105c4e508361a4857c78e23e.zip\",\"courseVideo\":\"bb1b5cba8e754610b0bb0d391f34b4d0.mp4\",\"courseVideoSource\":1,\"courseWork\":\"0e30dc8234e6429f8349776f6a863636.sb3\",\"courseWorkType\":2,\"createBy\":\"admin\",\"createTime\":1632973252000,\"id\":\"1443420554338095106\",\"orderNum\":1,\"sysOrgCode\":\"A01\",\"unitCover\":\"cdde0d1286084ea981b10fff7246955c.jpg\",\"unitIntro\":\"第一课，Scratch是什么\",\"unitName\":\"第一课\",\"updateBy\":\"admin\",\"updateTime\":1650609622009}]', NULL, 29, 'admin', '2022-04-22 14:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392852143902721', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@50edad3e', NULL, 154, 'admin', '2022-04-22 14:40:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392863359471618', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@475aa16', NULL, 147, 'admin', '2022-04-22 14:40:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392863560798209', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@555e53dc', NULL, 178, 'admin', '2022-04-22 14:40:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392867486666754', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 30, 'admin', '2022-04-22 14:40:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392868136783873', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@261510b5', NULL, 181, 'admin', '2022-04-22 14:40:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392885576699906', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2c03b168', NULL, 112, 'admin', '2022-04-22 14:40:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392887040512001', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@42f465c', NULL, 157, 'admin', '2022-04-22 14:40:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392893109669890', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 16, 'admin', '2022-04-22 14:40:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392893562654722', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2fa26b4a', NULL, 126, 'admin', '2022-04-22 14:40:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392904203603969', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@36590a13', NULL, 122, 'admin', '2022-04-22 14:40:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392905646444545', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@69176a6c', NULL, 165, 'admin', '2022-04-22 14:40:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392909689753601', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 21, 'admin', '2022-04-22 14:40:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392910155321345', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@309c4031', NULL, 131, 'admin', '2022-04-22 14:40:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392969852850178', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e8c316', NULL, 504, 'admin', '2022-04-22 14:40:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517392970775597058', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@358ab090', NULL, 717, 'admin', '2022-04-22 14:40:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517393004946591746', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: bb1b5cba8e754610b0bb0d391f34b4d0.mp4', NULL, 162, 'admin', '2022-04-22 14:40:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517393016065691650', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: 8d8e18ba87ed45a291238a44bb826e79.sb3', NULL, 75, 'admin', '2022-04-22 14:41:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517393019517603841', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650609662294,\"fileLocation\":2,\"fileName\":\"cctv.mp4\",\"filePath\":\"68eab0373242436986414ad2fc7ff706.mp4\",\"fileTag\":\"后台上传\",\"id\":\"1517393019450494978\",\"sysOrgCode\":\"A03\"}]', NULL, 20, 'admin', '2022-04-22 14:41:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394395261898753', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 20, 'admin', '2022-04-22 14:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394395366756353', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 40, 'admin', '2022-04-22 14:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394395874267138', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@f9a60f3', NULL, 162, 'admin', '2022-04-22 14:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394395932987394', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6a85b2f2', NULL, 175, 'admin', '2022-04-22 14:46:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394834015457281', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 24, 'admin', '2022-04-22 14:48:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394834380361729', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1518ffac', NULL, 109, 'admin', '2022-04-22 14:48:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394894937722881', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@bc2bb05', NULL, 135, 'admin', '2022-04-22 14:48:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394895063552002', 2, '课程-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryPageList()', NULL, '  teachingCourse: TeachingCourse(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, delFlag=null, isShared=null, courseName=null, courseDesc=null, courseIcon=null, courseCover=null, showType=null, courseMap=null, orderNum=null)  pageNo: 1  pageSize: 999  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3e298c92', NULL, 165, 'admin', '2022-04-22 14:48:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394944669585409', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: bb1b5cba8e754610b0bb0d391f34b4d0.mp4', NULL, 157, 'admin', '2022-04-22 14:48:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394959915880449', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610124865,\"fileLocation\":2,\"fileName\":\"cctv.mp4\",\"filePath\":\"48fb413ad3c94b1bbdaafae77184bd43.mp4\",\"fileTag\":\"后台上传\",\"id\":\"1517394959613890561\",\"sysOrgCode\":\"A03\"}]', NULL, 72, 'admin', '2022-04-22 14:48:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394970221285377', 2, '课程单元-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.edit()', NULL, '[{\"courseCase\":\"8d8e18ba87ed45a291238a44bb826e79.sb3\",\"courseId\":\"1443420350180347906\",\"coursePpt\":\"f3359d8cb4044440964af742ae4aaf24.pptx,02e545a1105c4e508361a4857c78e23e.zip\",\"courseVideo\":\"48fb413ad3c94b1bbdaafae77184bd43.mp4\",\"courseVideoSource\":1,\"courseWork\":\"0e30dc8234e6429f8349776f6a863636.sb3\",\"courseWorkType\":2,\"createBy\":\"admin\",\"createTime\":1632973252000,\"id\":\"1443420554338095106\",\"orderNum\":1,\"sysOrgCode\":\"A01\",\"unitIntro\":\"第一课，Scratch是什么\",\"unitName\":\"第一课\",\"updateBy\":\"admin\",\"updateTime\":1650610127370}]', NULL, 23, 'admin', '2022-04-22 14:48:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394971609600001', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5b0d681b', NULL, 107, 'admin', '2022-04-22 14:48:47', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394976995086338', 2, '课程-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseController.queryById()', NULL, '  id: 1443420350180347906', NULL, 21, 'admin', '2022-04-22 14:48:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517394978576338945', 2, '课程单元-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingCourseUnitController.queryPageList()', NULL, '  teachingCourseUnit: CourseUnitModel(courseName=null, courseWorkIdList=null, courseWorkNameList=null, courseWorks=null)  pageNo: 1  pageSize: 99  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5ea5ff41', NULL, 100, 'admin', '2022-04-22 14:48:49', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395326418358273', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@18ad4e5c', NULL, 185, 'admin', '2022-04-22 14:50:12', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395347163385857', 2, '附加作业-通过id删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.delete()', NULL, '  id: 1478670617058246657', NULL, 55, 'admin', '2022-04-22 14:50:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395349226983426', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@201e335', NULL, 111, 'admin', '2022-04-22 14:50:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395369632272386', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: 071d0ec9a1e54ddc8e7862f90ec8f641.jpg', NULL, 33, 'admin', '2022-04-22 14:50:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395408689631233', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@24a0ea4d', NULL, 189, 'admin', '2022-04-22 14:50:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395450246795266', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@37c121d7', NULL, 260, 'admin', '2022-04-22 14:50:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395497403355138', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@79b2ab77', NULL, 170, 'admin', '2022-04-22 14:50:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395543683305474', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@435361e2', NULL, 173, 'admin', '2022-04-22 14:51:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395581826306050', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610273117,\"fileLocation\":2,\"fileName\":\"project3/47c28064-fd48-4c81-840b-bd827b5147a6.jpg\",\"filePath\":\"project3/47c28064-fd48-4c81-840b-bd827b5147a6.jpg\",\"fileTag\":\"学生作业-封面\",\"fileType\":2,\"id\":\"1517395581432041474\",\"sysOrgCode\":\"A03\"}]', NULL, 93, 'admin', '2022-04-22 14:51:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395582614835201', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610273384,\"fileLocation\":2,\"fileName\":\"project3/47c28064-fd48-4c81-840b-bd827b5147a6.sb3\",\"filePath\":\"project3/47c28064-fd48-4c81-840b-bd827b5147a6.sb3\",\"fileTag\":\"学生作业-sb3\",\"fileType\":2,\"id\":\"1517395582551920641\",\"sysOrgCode\":\"A03\"}]', NULL, 16, 'admin', '2022-04-22 14:51:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395624738230274', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610283422,\"fileLocation\":2,\"fileName\":\"project3/9bd180fe-e66b-4ded-8527-237e8676524a.sb3\",\"filePath\":\"project3/9bd180fe-e66b-4ded-8527-237e8676524a.sb3\",\"fileTag\":\"学生作业-sb3\",\"fileType\":2,\"id\":\"1517395624650149889\",\"sysOrgCode\":\"A03\"}]', NULL, 20, 'admin', '2022-04-22 14:51:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395625195409409', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610283529,\"fileLocation\":2,\"fileName\":\"project3/9bd180fe-e66b-4ded-8527-237e8676524a.jpg\",\"filePath\":\"project3/9bd180fe-e66b-4ded-8527-237e8676524a.jpg\",\"fileTag\":\"学生作业-封面\",\"fileType\":2,\"id\":\"1517395625098940418\",\"sysOrgCode\":\"A03\"}]', NULL, 23, 'admin', '2022-04-22 14:51:23', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395655658639362', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610290797,\"fileLocation\":2,\"fileName\":\"project3/a94ec49d-826b-404d-9985-5c61f420c38e.jpg\",\"filePath\":\"project3/a94ec49d-826b-404d-9985-5c61f420c38e.jpg\",\"fileTag\":\"学生作业-封面\",\"fileType\":2,\"id\":\"1517395655587336193\",\"sysOrgCode\":\"A03\"}]', NULL, 18, 'admin', '2022-04-22 14:51:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395657684488194', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610291278,\"fileLocation\":2,\"fileName\":\"project3/a94ec49d-826b-404d-9985-5c61f420c38e.sb3\",\"filePath\":\"project3/a94ec49d-826b-404d-9985-5c61f420c38e.sb3\",\"fileTag\":\"学生作业-sb3\",\"fileType\":2,\"id\":\"1517395657600602113\",\"sysOrgCode\":\"A03\"}]', NULL, 20, 'admin', '2022-04-22 14:51:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395752161185794', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610313639,\"fileLocation\":2,\"fileName\":\"project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.jpg\",\"filePath\":\"project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.jpg\",\"fileTag\":\"学生作业-封面\",\"fileType\":2,\"id\":\"1517395751389433858\",\"sysOrgCode\":\"A03\"}]', NULL, 183, 'admin', '2022-04-22 14:51:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395754669379586', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610314403,\"fileLocation\":2,\"fileName\":\"project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.sb3\",\"filePath\":\"project3/fff2d0a0-948c-4c58-ab2d-229994818a3f.sb3\",\"fileTag\":\"学生作业-sb3\",\"fileType\":2,\"id\":\"1517395754593882113\",\"sysOrgCode\":\"A03\"}]', NULL, 17, 'admin', '2022-04-22 14:51:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395765629095937', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@4ec912f4', NULL, 475, 'admin', '2022-04-22 14:51:57', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395780011364353', 2, '作品评论集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '  id: 1517395755046866945', NULL, 19, 'admin', '2022-04-22 14:52:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395780103639041', 2, '作业批改集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '  id: 1517395755046866945', NULL, 31, 'admin', '2022-04-22 14:52:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395806649389058', 2, '作业列表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{\"collectNum\":0,\"courseId\":\"\",\"createBy\":\"admin\",\"createTime\":1650610314000,\"delFlag\":0,\"id\":\"1517395755046866945\",\"starNum\":0,\"sysOrgCode\":\"A03\",\"teachingWorkCorrectList\":[{\"comment\":\"很棒\",\"createBy\":\"admin\",\"createTime\":1650610326762,\"id\":\"1517395806435479553\",\"score\":5,\"sysOrgCode\":\"A03\",\"workId\":\"1517395755046866945\"}],\"userId\":\"e9ca23d68d884d4ebb19d07889727dae\",\"viewNum\":0,\"workCover\":\"1517395751389433858\",\"workFile\":\"1517395754593882113\",\"workName\":\"Glitchy Logo Tutorial\",\"workStatus\":\"3\",\"workType\":\"2\"}]', NULL, 172, 'admin', '2022-04-22 14:52:06', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395811065991169', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@49d627a9', NULL, 602, 'admin', '2022-04-22 14:52:07', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395832691822594', 2, '作品评论集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '  id: 1517395658737258497', NULL, 15, 'admin', '2022-04-22 14:52:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395832758931458', 2, '作业批改集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '  id: 1517395658737258497', NULL, 24, 'admin', '2022-04-22 14:52:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395848856670209', 2, '作业列表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{\"collectNum\":0,\"courseId\":\"\",\"createBy\":\"admin\",\"createTime\":1650610291000,\"delFlag\":0,\"id\":\"1517395658737258497\",\"starNum\":0,\"sysOrgCode\":\"A03\",\"teachingWorkCorrectList\":[],\"userId\":\"e9ca23d68d884d4ebb19d07889727dae\",\"viewNum\":0,\"workCover\":\"1517395655587336193\",\"workFile\":\"1517395657600602113\",\"workName\":\"新作品\",\"workStatus\":\"3\",\"workType\":\"2\"}]', NULL, 114, 'admin', '2022-04-22 14:52:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395851549413378', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d68a95a', NULL, 519, 'admin', '2022-04-22 14:52:17', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395864522395650', 2, '作品评论集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '  id: 1517395625572896770', NULL, 18, 'admin', '2022-04-22 14:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395864560144385', 2, '作业批改集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '  id: 1517395625572896770', NULL, 18, 'admin', '2022-04-22 14:52:20', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395886760595458', 2, '作业列表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{\"collectNum\":0,\"courseId\":\"\",\"createBy\":\"admin\",\"createTime\":1650610283000,\"delFlag\":0,\"id\":\"1517395625572896770\",\"starNum\":0,\"sysOrgCode\":\"A03\",\"teachingWorkCorrectList\":[{\"comment\":\"厉害\",\"createBy\":\"admin\",\"createTime\":1650610345869,\"id\":\"1517395886576046082\",\"score\":5,\"sysOrgCode\":\"A03\",\"workId\":\"1517395625572896770\"}],\"userId\":\"e9ca23d68d884d4ebb19d07889727dae\",\"viewNum\":0,\"workCover\":\"1517395625098940418\",\"workFile\":\"1517395624650149889\",\"workName\":\"2 PacMan\",\"workStatus\":\"3\",\"workType\":\"2\"}]', NULL, 127, 'admin', '2022-04-22 14:52:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395890594189314', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@40509103', NULL, 484, 'admin', '2022-04-22 14:52:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395893303709697', 2, '作品评论集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '  id: 1517395583084597249', NULL, 34, 'admin', '2022-04-22 14:52:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395894499086337', 2, '作业批改集合-通过id查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '  id: 1517395583084597249', NULL, 20, 'admin', '2022-04-22 14:52:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395916049420290', 2, '作业列表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{\"collectNum\":0,\"courseId\":\"\",\"createBy\":\"admin\",\"createTime\":1650610273000,\"delFlag\":0,\"id\":\"1517395583084597249\",\"starNum\":0,\"sysOrgCode\":\"A03\",\"teachingWorkCorrectList\":[{\"comment\":\"太神奇了\",\"createBy\":\"admin\",\"createTime\":1650610352851,\"id\":\"1517395915856482305\",\"score\":5,\"sysOrgCode\":\"A03\",\"workId\":\"1517395583084597249\"}],\"userId\":\"e9ca23d68d884d4ebb19d07889727dae\",\"viewNum\":0,\"workCover\":\"1517395581432041474\",\"workFile\":\"1517395582551920641\",\"workName\":\"Epic Ninja v1.12\",\"workStatus\":\"3\",\"workType\":\"2\"}]', NULL, 114, 'admin', '2022-04-22 14:52:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517395918847021057', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@127c13f3', NULL, 516, 'admin', '2022-04-22 14:52:33', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396139958145026', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@e20c26f', NULL, 124, 'admin', '2022-04-22 14:53:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396145922445314', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1820e3ec', NULL, 110, 'admin', '2022-04-22 14:53:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396166633918466', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@414191db', NULL, 123, 'admin', '2022-04-22 14:53:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396186942738433', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: 071d0ec9a1e54ddc8e7862f90ec8f641.jpg', NULL, 23, 'admin', '2022-04-22 14:53:37', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396199227854850', 2, '文件管理-通过filePath删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: d65a1b21b3cd4c218a331dbadb3341f4.sb3', NULL, 21, 'admin', '2022-04-22 14:53:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396214151188481', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610423932,\"fileLocation\":2,\"fileName\":\"新作品.sb3\",\"filePath\":\"55246252c13741bfaa9bf8f525692ebb.sb3\",\"fileTag\":\"后台上传\",\"id\":\"1517396213991804929\",\"sysOrgCode\":\"A03\"}]', NULL, 40, 'admin', '2022-04-22 14:53:43', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396245155483649', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610431335,\"fileLocation\":2,\"fileName\":\"test.pptx\",\"filePath\":\"4769b8f563224d1692a1f6273f88bf9b.pptx\",\"fileTag\":\"后台上传\",\"id\":\"1517396245046431746\",\"sysOrgCode\":\"A03\"}]', NULL, 27, 'admin', '2022-04-22 14:53:51', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396274255564802', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610438272,\"fileLocation\":2,\"fileName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg\",\"filePath\":\"fc859277a2484353bbd401ad9729643d.jpg\",\"fileTag\":\"后台上传\",\"id\":\"1517396274138124289\",\"sysOrgCode\":\"A03\"}]', NULL, 26, 'admin', '2022-04-22 14:53:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396278923825154', 2, '附加作业-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.edit()', NULL, '[{\"codeType\":2,\"createBy\":\"admin\",\"createTime\":1641369366000,\"id\":\"1478636409044680705\",\"status\":1,\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1650610439390,\"workCover\":\"fc859277a2484353bbd401ad9729643d.jpg\",\"workDept\":\"d2b37ffcc3fd46ddb5bc1c3da7fc41c0\",\"workDesc\":\"Scratch3班级作业Scratch3班级作业\",\"workDocumentUrl\":\"4769b8f563224d1692a1f6273f88bf9b.pptx\",\"workName\":\"Scratch3班级作业\",\"workUrl\":\"55246252c13741bfaa9bf8f525692ebb.sb3\"}]', NULL, 20, 'admin', '2022-04-22 14:53:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396281163583490', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3a051e5b', NULL, 114, 'admin', '2022-04-22 14:53:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396328987037698', 2, '附加作业-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.edit()', NULL, '[{\"codeType\":2,\"createBy\":\"admin\",\"createTime\":1641369366000,\"id\":\"1478636409044680705\",\"status\":1,\"sysOrgCode\":\"A01\",\"updateBy\":\"admin\",\"updateTime\":1650610451325,\"workCover\":\"fc859277a2484353bbd401ad9729643d.jpg\",\"workDept\":\"d2b37ffcc3fd46ddb5bc1c3da7fc41c0\",\"workDesc\":\"班级1的作业\",\"workDocumentUrl\":\"4769b8f563224d1692a1f6273f88bf9b.pptx\",\"workName\":\"Scratch3班级作业\",\"workUrl\":\"55246252c13741bfaa9bf8f525692ebb.sb3\"}]', NULL, 22, 'admin', '2022-04-22 14:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396330455044098', 2, '附加作业-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@78904d17', NULL, 131, 'admin', '2022-04-22 14:54:11', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396339149836289', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@43505859', NULL, 494, 'admin', '2022-04-22 14:54:13', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396344447242241', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@74d80ed0', NULL, 481, 'admin', '2022-04-22 14:54:15', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396349216165890', 2, '作业列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@58ca3d2a', NULL, 552, 'admin', '2022-04-22 14:54:16', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396363317415937', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 14:54:19', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396408284549122', 1, '用户名: student,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 14:54:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396540883275778', 2, '文件管理-添加', 2, 'student', '学生', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"student\",\"createTime\":1650610501842,\"fileLocation\":2,\"fileName\":\"project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.jpg\",\"filePath\":\"project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.jpg\",\"fileTag\":\"学生作业-封面\",\"fileType\":2,\"id\":\"1517396540770029569\",\"sysOrgCode\":\"A01A05A01\"}]', NULL, 27, 'student', '2022-04-22 14:55:01', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396541898297345', 2, '文件管理-添加', 2, 'student', '学生', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"student\",\"createTime\":1650610502091,\"fileLocation\":2,\"fileName\":\"project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.sb3\",\"filePath\":\"project3/e026be88-3af1-42c7-828d-8fcbabaedcfd.sb3\",\"fileTag\":\"学生作业-sb3\",\"fileType\":2,\"id\":\"1517396541818605569\",\"sysOrgCode\":\"A01A05A01\"}]', NULL, 18, 'student', '2022-04-22 14:55:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396566720188418', 1, '用户名: 学生,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 14:55:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396609455951874', 1, '用户名: teacher,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 14:55:18', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396639642357761', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e15b6bf', NULL, 109, 'teacher', '2022-04-22 14:55:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517396648823689218', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5341a6ed', NULL, 103, 'teacher', '2022-04-22 14:55:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397061165715457', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1a1a03b4', NULL, 121, 'teacher', '2022-04-22 14:57:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397129990049794', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@15e010d7', NULL, 126, 'teacher', '2022-04-22 14:57:22', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397155432697857', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@770373fb', NULL, 183, 'teacher', '2022-04-22 14:57:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397162458157058', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@35c1cd65', NULL, 151, 'teacher', '2022-04-22 14:57:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397165360615425', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@72cd4677', NULL, 100, 'teacher', '2022-04-22 14:57:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397170704158721', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5d68f1a9', NULL, 126, 'teacher', '2022-04-22 14:57:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397173984104449', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5b02e99a', NULL, 132, 'teacher', '2022-04-22 14:57:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397247980015617', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 14:57:50', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397454499155970', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@6878f166', NULL, 36, 'admin', '2022-04-22 14:58:39', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397475923660802', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, '  sysPosition: SysPosition(id=null, code=null, name=null, postRank=null, companyId=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null)  pageNo: 1  pageSize: 5  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@40ea3dc5', NULL, 21, 'admin', '2022-04-22 14:58:44', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397534954295298', 2, '附加作业-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingAdditionalWorkController.queryPageList()', NULL, '  teachingAdditionalWork: TeachingAdditionalWork(id=null, createBy=null, createTime=null, updateBy=null, updateTime=null, sysOrgCode=null, codeType=null, workName=null, workDesc=null, workCover=null, workDocumentUrl=null, workUrl=null, workDept=null, status=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@28dc9037', NULL, 150, 'teacher', '2022-04-22 14:58:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397537714147329', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@39889f03', NULL, 121, 'teacher', '2022-04-22 14:58:59', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397556781453314', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@60f26408', NULL, 143, 'teacher', '2022-04-22 14:59:04', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397762512064513', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1368162d', NULL, 12959, 'teacher', '2022-04-22 14:59:53', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517397850206572546', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@34dd8a7d', NULL, 147, 'teacher', '2022-04-22 15:00:14', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398175986552833', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@61a039c8', NULL, 550, 'teacher', '2022-04-22 15:01:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398396585971714', 2, '作业批改集合-通过id查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '  id: 1517396542489694209', NULL, 16, 'teacher', '2022-04-22 15:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398396846018561', 2, '作品评论集合-通过id查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '  id: 1517396542489694209', NULL, 68, 'teacher', '2022-04-22 15:02:24', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398409202438145', 2, '作业列表-编辑', 3, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{\"collectNum\":0,\"courseId\":\"\",\"createBy\":\"student\",\"createTime\":1650610502000,\"delFlag\":0,\"id\":\"1517396542489694209\",\"starNum\":0,\"sysOrgCode\":\"A01A05A01\",\"teachingWorkCorrectList\":[{\"createBy\":\"teacher\",\"createTime\":1650610947266,\"id\":\"1517398409009500161\",\"score\":5,\"sysOrgCode\":\"A01A06A01\",\"workId\":\"1517396542489694209\"}],\"userId\":\"2cb6e8e9b9ac4ccca17a1c3020a118d4\",\"viewNum\":0,\"workCover\":\"1517396540770029569\",\"workFile\":\"1517396541818605569\",\"workName\":\"ScrollingDemo\",\"workStatus\":\"3\",\"workType\":\"2\"}]', NULL, 124, 'teacher', '2022-04-22 15:02:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398413312856066', 2, '作业列表-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, '  studentWorkModel: StudentWorkModel(username=null, realname=null, workFileKey=null, coverFileKey=null, courseName=null, sysOrgCode=null, avatar=null, teacherComment=null, score=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@77f15ca3', NULL, 537, 'teacher', '2022-04-22 15:02:28', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398462654648322', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@22637577', NULL, 27, 'teacher', '2022-04-22 15:02:40', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398500013314050', 2, 'Scratch素材库-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3b1c94fa', NULL, 14, 'admin', '2022-04-22 15:02:48', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398548373639170', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650610980458,\"fileLocation\":2,\"fileName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code.jpg\",\"filePath\":\"/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg\",\"fileTag\":\"后台上传\",\"id\":\"1517398548180701185\",\"sysOrgCode\":\"A01\"}]', NULL, 42, 'admin', '2022-04-22 15:03:00', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398589649784834', 2, 'Scratch素材库-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.add()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"6e67087d-e48a-4dd3-9632-ee669ffc0187code\\\",\\\"tags\\\":[\\\"patterns\\\"],\\\"md5ext\\\":\\\"7aace28370994d3b8b9c3efe05e099f0.jpg\\\",\\\"assetId\\\":\\\"7aace28370994d3b8b9c3efe05e099f0\\\",\\\"dataFormat\\\":\\\"jpg\\\",\\\"rotationCenterY\\\":150,\\\"rotationCenterX\\\":269,\\\"bitmapResolution\\\":2}\",\"assetName\":\"6e67087d-e48a-4dd3-9632-ee669ffc0187code\",\"assetType\":1,\"createBy\":\"admin\",\"createTime\":1650610990307,\"id\":\"1517398589515567106\",\"md5Ext\":\"/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg\",\"tags\":\"patterns\"}]', NULL, 32, 'admin', '2022-04-22 15:03:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398591566581762', 2, 'Scratch素材库-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5c55f4bb', NULL, 30, 'admin', '2022-04-22 15:03:10', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398700589125633', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650611016762,\"fileLocation\":2,\"fileName\":\"student.615cea8d.png\",\"filePath\":\"/internalapi/asset/24d693da2c5d4fe88c7cfe42581b7f73.png\",\"fileTag\":\"后台上传\",\"id\":\"1517398700459102210\",\"sysOrgCode\":\"A01\"}]', NULL, 23, 'admin', '2022-04-22 15:03:36', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398722965737474', 2, 'Scratch素材库-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.add()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"student\\\",\\\"tags\\\":[\\\"people\\\"],\\\"md5ext\\\":\\\"24d693da2c5d4fe88c7cfe42581b7f73.png\\\",\\\"assetId\\\":\\\"24d693da2c5d4fe88c7cfe42581b7f73\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2}\",\"assetName\":\"student\",\"assetType\":3,\"createBy\":\"admin\",\"createTime\":1650611022106,\"id\":\"1517398722898628609\",\"md5Ext\":\"/internalapi/asset/24d693da2c5d4fe88c7cfe42581b7f73.png\",\"tags\":\"people\"}]', NULL, 22, 'admin', '2022-04-22 15:03:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398724152725505', 2, 'Scratch素材库-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@23826ed7', NULL, 41, 'admin', '2022-04-22 15:03:42', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398774224326657', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650611034318,\"fileLocation\":2,\"fileName\":\"student.615cea8d.png\",\"filePath\":\"/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png\",\"fileTag\":\"后台上传\",\"id\":\"1517398774090108930\",\"sysOrgCode\":\"A01\"}]', NULL, 20, 'admin', '2022-04-22 15:03:54', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398782826844161', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650611036370,\"fileLocation\":2,\"fileName\":\"teacher.f50f69d6.png\",\"filePath\":\"/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png\",\"fileTag\":\"后台上传\",\"id\":\"1517398782696820737\",\"sysOrgCode\":\"A01\"}]', NULL, 26, 'admin', '2022-04-22 15:03:56', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398789944578050', 2, '文件管理-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"admin\",\"createTime\":1650611038071,\"fileLocation\":2,\"fileName\":\"worker.1928367c.png\",\"filePath\":\"/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png\",\"fileTag\":\"后台上传\",\"id\":\"1517398789881663489\",\"sysOrgCode\":\"A01\"}]', NULL, 22, 'admin', '2022-04-22 15:03:58', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398819799633921', 2, 'Scratch素材库-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.add()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"role\\\",\\\"tags\\\":[\\\"people\\\"],\\\"isStage\\\":false,\\\"variables\\\":{},\\\"blocks\\\":{},\\\"sounds\\\":[],\\\"costumes\\\":[{\\\"name\\\":\\\"student\\\",\\\"md5ext\\\":\\\"447430fd7e1842f98f629b0352b1c97c.png\\\",\\\"assetId\\\":\\\"447430fd7e1842f98f629b0352b1c97c\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2},{\\\"name\\\":\\\"teacher\\\",\\\"md5ext\\\":\\\"c784768cb9ad4e9c9d38d5ceddaaf5d3.png\\\",\\\"assetId\\\":\\\"c784768cb9ad4e9c9d38d5ceddaaf5d3\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2},{\\\"name\\\":\\\"worker\\\",\\\"md5ext\\\":\\\"1aa502aaec1d44d1b6f502b099ae48f5.png\\\",\\\"assetId\\\":\\\"1aa502aaec1d44d1b6f502b099ae48f5\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2}]}\",\"assetName\":\"role\",\"assetType\":4,\"createBy\":\"admin\",\"createTime\":1650611045186,\"id\":\"1517398819669610497\",\"md5Ext\":\"/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png,/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png,/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png\",\"tags\":\"people\"}]', NULL, 21, 'admin', '2022-04-22 15:04:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398820915318785', 2, 'Scratch素材库-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@63af6e21', NULL, 49, 'admin', '2022-04-22 15:04:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398909981364225', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@2e5e2304', NULL, 38, 'teacher', '2022-04-22 15:04:26', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398941828714498', 2, 'Scratch素材库-编辑', 3, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.edit()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"少儿编程\\\",\\\"tags\\\":[\\\"patterns\\\"],\\\"md5ext\\\":\\\"7aace28370994d3b8b9c3efe05e099f0.jpg\\\",\\\"assetId\\\":\\\"7aace28370994d3b8b9c3efe05e099f0\\\",\\\"dataFormat\\\":\\\"jpg\\\",\\\"rotationCenterY\\\":150,\\\"rotationCenterX\\\":269,\\\"bitmapResolution\\\":2}\",\"assetName\":\"少儿编程\",\"assetType\":1,\"createBy\":\"admin\",\"createTime\":1650610990000,\"delFlag\":0,\"id\":\"1517398589515567106\",\"md5Ext\":\"/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg\",\"tags\":\"patterns\",\"updateBy\":\"teacher\"}]', NULL, 27, 'teacher', '2022-04-22 15:04:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398942940205057', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@1ddc37ab', NULL, 43, 'teacher', '2022-04-22 15:04:34', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398970886852610', 2, 'Scratch素材库-编辑', 3, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.edit()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"角色\\\",\\\"tags\\\":[\\\"people\\\"],\\\"isStage\\\":false,\\\"variables\\\":{},\\\"blocks\\\":{},\\\"sounds\\\":[],\\\"costumes\\\":[{\\\"name\\\":\\\"student\\\",\\\"md5ext\\\":\\\"447430fd7e1842f98f629b0352b1c97c.png\\\",\\\"assetId\\\":\\\"447430fd7e1842f98f629b0352b1c97c\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2},{\\\"name\\\":\\\"teacher\\\",\\\"md5ext\\\":\\\"c784768cb9ad4e9c9d38d5ceddaaf5d3.png\\\",\\\"assetId\\\":\\\"c784768cb9ad4e9c9d38d5ceddaaf5d3\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2},{\\\"name\\\":\\\"worker\\\",\\\"md5ext\\\":\\\"1aa502aaec1d44d1b6f502b099ae48f5.png\\\",\\\"assetId\\\":\\\"1aa502aaec1d44d1b6f502b099ae48f5\\\",\\\"dataFormat\\\":\\\"png\\\",\\\"rotationCenterY\\\":100,\\\"rotationCenterX\\\":100,\\\"bitmapResolution\\\":2}]}\",\"assetName\":\"角色\",\"assetType\":4,\"createBy\":\"admin\",\"createTime\":1650611045000,\"delFlag\":0,\"id\":\"1517398819669610497\",\"md5Ext\":\"/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png,/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png,/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png\",\"tags\":\"people\",\"updateBy\":\"teacher\"}]', NULL, 30, 'teacher', '2022-04-22 15:04:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517398971813793794', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@5c431fe4', NULL, 32, 'teacher', '2022-04-22 15:04:41', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517399669028753409', 2, '文件管理-添加', 2, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"teacher\",\"createTime\":1650611247658,\"fileLocation\":2,\"fileName\":\"Epic Japanese Music - Shadow Ninja d.wav\",\"filePath\":\"/internalapi/asset/a4adf084ea25470d8b37f252432dc430.wav\",\"fileTag\":\"后台上传\",\"id\":\"1517399668894535682\",\"sysOrgCode\":\"A01A06A01\"}]', NULL, 21, 'teacher', '2022-04-22 15:07:27', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517399701849182210', 2, 'Scratch素材库-添加', 2, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.add()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"Epic Japanese Music - Shadow Ninja d\\\",\\\"tags\\\":[\\\"percussion\\\"]}\",\"assetName\":\"Epic Japanese Music - Shadow Ninja d\",\"assetType\":2,\"createBy\":\"teacher\",\"createTime\":1650611255480,\"id\":\"1517399701723353090\",\"md5Ext\":\"/internalapi/asset/a4adf084ea25470d8b37f252432dc430.wav\",\"tags\":\"percussion\"}]', NULL, 22, 'teacher', '2022-04-22 15:07:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517399703732424705', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@60a0ea79', NULL, 38, 'teacher', '2022-04-22 15:07:35', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400067609268225', 2, '文件管理-添加', 2, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{\"createBy\":\"teacher\",\"createTime\":1650611342691,\"fileLocation\":2,\"fileName\":\"MyBass.wav\",\"filePath\":\"/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav\",\"fileTag\":\"后台上传\",\"id\":\"1517400067542159361\",\"sysOrgCode\":\"A01A06A01\"}]', NULL, 28, 'teacher', '2022-04-22 15:09:02', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400077444911105', 2, '文件管理-通过filePath删除', 4, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.deleteByPath()', NULL, '  filePath: /internalapi/asset/a4adf084ea25470d8b37f252432dc430.wav', NULL, 2672, 'teacher', '2022-04-22 15:09:05', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400089797136385', 2, 'Scratch素材库-编辑', 3, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.edit()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"Bass\\\",\\\"tags\\\":[\\\"percussion\\\"],\\\"md5ext\\\":\\\"e04a8cdd0ade4b30829c226e3c3cf396.wav\\\",\\\"assetId\\\":\\\"e04a8cdd0ade4b30829c226e3c3cf396\\\",\\\"dataFormat\\\":\\\"wav\\\",\\\"sampleCount\\\":61300,\\\"rate\\\":48000}\",\"assetName\":\"Bass\",\"assetType\":2,\"createBy\":\"teacher\",\"createTime\":1650611255000,\"delFlag\":0,\"id\":\"1517399701723353090\",\"md5Ext\":\"/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav\",\"tags\":\"percussion\",\"updateBy\":\"teacher\"}]', NULL, 38, 'teacher', '2022-04-22 15:09:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400091768459265', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@7ffaef59', NULL, 36, 'teacher', '2022-04-22 15:09:08', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400163692384257', 2, 'Scratch素材库-编辑', 3, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.edit()', NULL, '[{\"assetData\":\"{\\\"name\\\":\\\"贝斯\\\",\\\"tags\\\":[\\\"percussion\\\"],\\\"md5ext\\\":\\\"e04a8cdd0ade4b30829c226e3c3cf396.wav\\\",\\\"assetId\\\":\\\"e04a8cdd0ade4b30829c226e3c3cf396\\\",\\\"dataFormat\\\":\\\"wav\\\",\\\"sampleCount\\\":61300,\\\"rate\\\":48000}\",\"assetName\":\"贝斯\",\"assetType\":2,\"createBy\":\"teacher\",\"createTime\":1650611255000,\"delFlag\":0,\"id\":\"1517399701723353090\",\"md5Ext\":\"/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav\",\"tags\":\"percussion\",\"updateBy\":\"teacher\"}]', NULL, 33, 'teacher', '2022-04-22 15:09:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400164749348866', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@493ab667', NULL, 34, 'teacher', '2022-04-22 15:09:25', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400180322799617', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3f3575f0', NULL, 35, 'teacher', '2022-04-22 15:09:29', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400183703408642', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@dc166ba', NULL, 36, 'teacher', '2022-04-22 15:09:30', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400187113377793', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@539437a6', NULL, 32, 'teacher', '2022-04-22 15:09:31', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400191152492546', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3d1d664e', NULL, 40, 'teacher', '2022-04-22 15:09:32', NULL, NULL);
INSERT INTO `sys_log` VALUES ('1517400202577776642', 2, 'Scratch素材库-分页列表查询', 1, 'teacher', '老师', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingScratchAssetsController.queryPageList()', NULL, '  teachingScratchAssets: TeachingScratchAssets(id=null, assetType=null, assetName=null, assetData=null, md5Ext=null, tags=null, createBy=null, createTime=null, updateBy=null, udpateTime=null, delFlag=null)  pageNo: 1  pageSize: 10  req: org.apache.shiro.web.servlet.ShiroHttpServletRequest@3016e98b', NULL, 38, 'teacher', '2022-04-22 15:09:34', NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) NULL DEFAULT 1 COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) NULL DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) NULL DEFAULT 0 COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
  INDEX `index_prem_is_route`(`is_route`) USING BTREE,
  INDEX `index_prem_is_leaf`(`is_leaf`) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE,
  INDEX `index_prem_del_flag`(`del_flag`) USING BTREE,
  INDEX `index_menu_type`(`menu_type`) USING BTREE,
  INDEX `index_menu_hidden`(`hidden`) USING BTREE,
  INDEX `index_menu_status`(`status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('00a2a0ae65cdca5e93209cdbde97cbe6', '2e42e3835c2b44ec9f7bc26c146ee531', '成功', '/result/success', 'result/Success', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('020b06793e4de2eee0007f603000c769', 'f0675b52d89100ee88472b6800754a08', 'ViserChartDemo', '/report/ViserChartDemo', 'jeecg/report/ViserChartDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 19:08:53', 'admin', '2019-04-03 19:08:53', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat信息', '/monitor/TomcatInfo', 'modules/monitor/TomcatInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:44:29', 'admin', '2019-05-07 15:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('043780fa095ff1b2bec4dc406d76f023', '2a470fc0c3954d9dbb61de6d80846549', '表格合计', '/jeecg/tableTotal', 'jeecg/TableTotal', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-08-14 10:28:46', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('05b3c82ddb2536a4a5ee1a4c46b5abef', '540a2936940846cb98114ffb0d145cb8', '用户列表', '/list/user-list', 'list/UserList', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('0620e402857b8c5b605e1ad9f4b89350', '2a470fc0c3954d9dbb61de6d80846549', '异步树列表Demo', '/jeecg/JeecgTreeTable', 'jeecg/JeecgTreeTable', NULL, NULL, 1, NULL, '0', 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-05-13 17:30:30', 'admin', '2019-05-13 17:32:17', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('078f9558cdeab239aecb2bda1a8ed0d1', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（文章）', '/list/search/article', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:00:34', 'admin', '2019-02-12 14:17:54', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', '', '系统监控', '/dashboard3', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 20.00, 0, 'dashboard', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-11-01 21:11:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('0ac2ad938963b6c6d1af25477d5b8b51', '8d4683aacaa997ab86b966b464360338', '代码生成按钮', NULL, NULL, NULL, NULL, 2, 'online:goGenerateCode', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-06-11 14:20:09', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1166535831146504193', '2a470fc0c3954d9dbb61de6d80846549', '对象存储', '/oss/file', 'modules/oss/OSSFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, '', 1, 1, 0, 0, NULL, 'admin', '2019-08-28 02:19:50', 'admin', '2019-08-28 02:20:57', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('1170592628746878978', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理2', '/isystem/newPermissionList', 'system/NewPermissionList', NULL, NULL, 1, NULL, '1', 100.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2022-04-17 16:16:24', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1174506953255182338', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '职务管理', '/isystem/position', 'system/SysPositionList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-09-19 10:14:13', 'admin', '2021-04-20 11:26:32', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1174590283938041857', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '通讯录', '/isystem/addressList', 'system/AddressList', NULL, NULL, 1, NULL, '1', 3.00, 0, 'idcard', 1, 1, 0, 0, NULL, 'admin', '2019-09-19 15:45:21', 'jeecg', '2020-04-21 17:58:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1192318987661234177', 'e41b69c57a941a3bbcce45032fe57605', '系统编码生成规则', '/isystem/fillRule', 'system/SysFillRuleList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:42:30', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1209731624921534465', 'e41b69c57a941a3bbcce45032fe57605', '多数据源管理', '/isystem/dataSource', 'system/SysDataSourceList', NULL, NULL, 1, NULL, '1', 6.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-25 15:04:30', 'admin', '2020-02-23 22:43:37', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1224641973866467330', 'e41b69c57a941a3bbcce45032fe57605', '系统编码校验规则', '/isystem/checkRule', 'system/SysCheckRuleList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:43:05', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1229674163694841857', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单ERP', '/online/cgformErpList/:code', 'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-02-18 15:49:00', 'admin', '2020-02-18 15:52:25', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1235823781053313025', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线内嵌子表', '/online/cgformInnerTableList/:code', 'modules/online/cgform/auto/innerTable/OnlCgformInnerTableList', NULL, NULL, 1, NULL, '1', 999.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-03-06 15:05:24', 'admin', '2020-03-06 15:07:42', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249162576878370817', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '文件管理', '/isystem/file', 'system/SysFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'folder', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 10:29:01', 'jeecg', '2020-04-12 10:30:47', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249206567527260161', '1478631237925072897', '作业管理', '/teaching/workList', 'teaching/TeachingWorkList', NULL, NULL, 1, NULL, '1', 10.00, 0, '', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 13:23:49', 'admin', '2022-01-05 15:38:14', 0, 1, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249217230806978561', '', '创作', '/create', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'highlight', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-12 14:06:11', 'admin', '2020-11-01 21:09:00', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249217881238671362', '1249217230806978561', 'Scratch3.0', '{{ window._CONFIG[\'webURL\'] }}/scratch3/index.html?scene=create', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 14:08:46', 'jeecg', '2020-04-12 21:25:01', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1249315662297042946', '', '课程单元', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 0.20, 0, 'user', 1, 0, 0, 1, NULL, 'jeecg', '2020-04-12 20:37:19', 'admin', '2020-11-01 21:10:25', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249316121405558786', '', '我的作品', '/account/center', 'account/center/Index', NULL, NULL, 0, NULL, '1', 3.00, 0, 'picture', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:39:09', 'admin', '2020-11-01 21:16:12', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320110008307713', '', '作品列表', '/account/mineWork', 'account/center/MineWorkList', NULL, NULL, 0, NULL, '1', 4.00, 0, 'form', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:55:00', 'admin', '2020-11-01 21:16:23', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320400874901505', '', '个人设置', '/account/settings/base', 'account/settings/Index', NULL, NULL, 0, NULL, '1', 10.00, 1, 'setting', 1, 0, 0, 1, NULL, 'jeecg', '2020-04-12 20:56:09', 'admin', '2022-04-17 16:11:02', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249320532483772418', '1249320400874901505', '基本信息', '/account/settings/base', 'account/settings/BaseSetting', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:56:40', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249927823277002753', '', '课程管理', '/course', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 11.00, 0, 'book', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-14 13:09:49', 'admin', '2020-11-01 21:11:15', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249928454356176898', '1249927823277002753', '课程包管理', '/course/course', 'teaching/TeachingCourseList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'read', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 13:12:20', 'admin', '2020-07-01 21:15:17', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249928626473635842', '1249927823277002753', '课程单元管理', '/course/courseUnit', 'teaching/TeachingCourseUnitList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'bars', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 13:13:01', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249990084771192834', '', '我的课程', '/teaching/mineCourse/cardList', 'account/course/CourseListCard', NULL, NULL, 0, NULL, '1', 3.00, 0, 'read', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-14 17:17:14', 'admin', '2020-11-01 21:10:13', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1249993808843472897', '1249315662297042946', '课程单元-地图', '/teaching/mineCourse/courseUnitMap', 'account/course/CourseUnitMap', NULL, NULL, 1, NULL, '1', 1.00, 0, 'idcard', 1, 1, 0, 1, NULL, 'jeecg', '2020-04-14 17:32:02', 'admin', '2020-05-27 21:14:20', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1265632389934919681', '1249315662297042946', '课程单元-卡片', '/teaching/mineCourse/courseUnitCard', 'account/course/CourseUnitListCard', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-05-27 21:14:10', 'admin', '2020-05-27 21:18:28', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('13212d3416eb690c2e1d5033166ff47a', '2e42e3835c2b44ec9f7bc26c146ee531', '失败', '/result/fail', 'result/Error', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1322864365905240066', '1249217230806978561', 'ScratchJr', '{{ window._CONFIG[\'webURL\'] }}/scratchjr/home.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-11-01 19:33:37', NULL, NULL, 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1342341595266134017', '1249217230806978561', '图形化Python', '{{ window._CONFIG[\'webURL\'] }}/python/index.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-12-24 23:29:10', 'admin', '2021-09-26 18:23:08', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/BaseSetting', 'account/settings/BaseSetting', 'account-settings-base', NULL, 1, 'BaseSettings', NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, '2018-12-26 18:58:35', 'admin', '2019-03-20 12:57:31', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('1439107239277322241', 'd7d6e2e4e2934f2c9385a623fd98c6f3', 'Scratch素材库', '/scratch/assets', 'teaching/TeachingScratchAssetsList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'picture', 1, 1, 0, 0, NULL, 'admin', '2021-09-18 01:01:17', 'admin', '2022-04-17 16:23:26', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1472819323378683905', '', '班级作业', '/center/myAdditionalWork', 'account/course/MyAdditionalWorkList', NULL, NULL, 0, NULL, '1', 6.00, 0, 'form', 1, 1, 0, 0, NULL, 'admin', '2021-12-20 14:41:05', 'admin', '2022-01-05 15:48:12', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1478631237925072897', '', '作业管理', '/work', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 11.00, 0, 'form', 1, 0, 0, 0, NULL, 'admin', '2022-01-05 15:35:33', 'admin', '2022-01-05 15:40:49', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1478631727777837058', '1478631237925072897', '布置班级作业', '/work/additionalWork', 'teaching/TeachingAdditionalWorkList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-01-05 15:37:30', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1479321067621249026', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '网站配置', '/sys/sysConfig', 'system/SysConfig', NULL, NULL, 1, NULL, '1', 1.00, 0, 'tool', 1, 1, 0, 0, NULL, 'admin', '2022-01-07 13:16:41', 'admin', '2022-01-07 13:38:53', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1481550648382185474', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '前台菜单管理', '/teaching/menu', 'teaching/TeachingMenuList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'bars', 1, 1, 0, 0, NULL, 'yuki', '2022-01-13 16:56:14', NULL, NULL, 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('1498944880717713410', '1249217230806978561', 'Blockly', '{{ window._CONFIG[\'webURL\'] }}/blockly/index.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 10.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2022-03-02 16:54:43', 'admin', '2022-04-17 16:03:38', 0, 0, '1', 1);
INSERT INTO `sys_permission` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.50, 0, 'team', 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'admin', '2022-04-17 16:16:45', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '手机号禁用', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1.00, 0, NULL, 0, 1, NULL, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2019-05-11 18:00:22', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('200006f0edf145a2b50eacca07585451', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（应用）', '/list/search/application', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:02:51', 'admin', '2019-02-12 14:14:01', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('22d6a3d39a59dd7ea9a30acfa6bfb0a5', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO动态表单', '/online/df/:table/:id', 'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 0, 1, NULL, 1, NULL, 'admin', '2019-04-22 15:15:43', 'admin', '2019-04-30 18:18:26', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('265de841c58907954b8877fb85212622', '2a470fc0c3954d9dbb61de6d80846549', '图片拖拽排序', '/jeecg/imgDragSort', 'jeecg/ImgDragSort', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:43:08', 'admin', '2019-04-25 10:46:26', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('277bfabef7d76e89b33062b16a9a5020', 'e3c13679c73a4f829bcff2aba8fd68b1', '基础表单', '/form/base-form', 'form/BasicForm', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-26 17:02:08', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2a470fc0c3954d9dbb61de6d80846549', '', '常见案例', '/jeecg', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 7.00, 0, 'qrcode', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:45:43', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('2aeddae571695cd6380f6d6d334d6e7d', 'f0675b52d89100ee88472b6800754a08', '布局统计报表', '/report/ArchivesStatisticst', 'jeecg/report/ArchivesStatisticst', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 18:32:48', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2dbbafa22cda07fa5d169d741b81fe12', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '在线文档', '{{ window._CONFIG[\'domianURL\'] }}/doc.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 10:00:01', 'admin', '2019-03-23 19:44:43', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('2e42e3835c2b44ec9f7bc26c146ee531', '', '结果页', '/result', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'check-circle-o', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:13', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('339329ed54cf255e1f9392e84f136901', '2a470fc0c3954d9dbb61de6d80846549', 'helloworld', '/jeecg/helloworld', 'jeecg/helloworld', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-15 16:24:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', '', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 0, NULL, NULL, 10.00, 0, 'idcard', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-17 16:12:17', 0, 1, NULL, 0);
INSERT INTO `sys_permission` VALUES ('3fac0d3c9cd40fa53ab70d4c583821f8', '2a470fc0c3954d9dbb61de6d80846549', '分屏', '/jeecg/splitPanel', 'jeecg/SplitPanel', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 16:27:06', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4148ec82b6acd69f470bea75fe41c357', '2a470fc0c3954d9dbb61de6d80846549', '单表模型示例', '/jeecg/jeecgDemoList', 'jeecg/JeecgDemoList', 'DemoList', NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-28 15:57:30', 'admin', '2019-02-15 16:24:37', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('418964ba087b90a84897b62474496b93', '540a2936940846cb98114ffb0d145cb8', '查询表格', '/list/query-list', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4356a1a67b564f0988a484f5531fd4d9', '2a470fc0c3954d9dbb61de6d80846549', '内嵌Table', '/jeecg/TableExpandeSub', 'jeecg/TableExpandeSub', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-04 22:48:13', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '部门管理', '/isystem/depart', 'system/DepartList', NULL, NULL, 1, NULL, NULL, 1.40, 0, 'cluster', 1, 1, 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'jeecg', '2020-04-12 23:04:43', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('4875ebe289344e14844d8e3ea1edd73f', '', '详情页', '/profile', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'profile', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:45:49', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', NULL, NULL, 1, 'BindingSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:01:20', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('4f84f9400e5e92c95f05b554724c2b58', '540a2936940846cb98114ffb0d145cb8', '角色列表', '/list/role-list', 'list/RoleList', NULL, NULL, 1, NULL, NULL, 4.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('53a9230444d33de28aa11cc108fb1dba', '5c8042bd6c601270b2bbd9b20bccc68b', '我的消息', '/isps/userAnnouncement', 'system/UserAnnouncementList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-19 10:16:00', 'admin', '2019-12-25 09:54:34', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54097c6a3cf50fad0793a34beff1efdf', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单', '/online/cgformList/:code', 'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-19 16:03:06', 'admin', '2019-04-30 18:19:03', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('540a2936940846cb98114ffb0d145cb8', '', '列表页', '/list', 'layouts/PageView', NULL, '/list/query-list', 0, NULL, NULL, 9.00, 0, 'table', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:19', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '后台菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, 'bars', 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-01 16:21:30', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '日志管理', '/isystem/log', 'system/LogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, '', 1, 1, NULL, 0, NULL, NULL, '2018-12-26 10:11:18', 'admin', '2019-04-02 11:38:17', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('58b9204feaf07e47284ddb36cd2d8468', '2a470fc0c3954d9dbb61de6d80846549', '图片翻页', '/jeecg/imgTurnPage', 'jeecg/ImgTurnPage', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 11:36:42', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('5c2f42277948043026b7a14692456828', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '班级管理', '/isystem/departDetailList', 'system/DepartDetailList', NULL, NULL, 1, NULL, NULL, 2.00, 0, 'cluster', 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:12:24', 'admin', '2020-11-01 21:04:09', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('5c8042bd6c601270b2bbd9b20bccc68b', '', '消息中心', '/message', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'message', 1, 0, 0, 1, NULL, 'admin', '2019-04-09 11:05:04', 'admin', '2022-04-15 18:47:32', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('6531cf3421b1265aeeeabaab5e176e6d', 'e3c13679c73a4f829bcff2aba8fd68b1', '分步表单', '/form/step-form', 'form/stepForm/StepForm', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('655563cd64b75dcf52ef7bcdd4836953', '2a470fc0c3954d9dbb61de6d80846549', '图片预览', '/jeecg/ImagPreview', 'jeecg/ImagPreview', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-17 11:18:45', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('65a8f489f25a345836b7f44b1181197a', 'c65321e57b7949b7a975313220de0422', '403', '/exception/403', 'exception/403', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('6ad53fd1b220989a8b71ff482d683a5a', '2a470fc0c3954d9dbb61de6d80846549', '一对多Tab示例', '/jeecg/tablist/JeecgOrderDMainList', 'jeecg/tablist/JeecgOrderDMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-20 14:45:09', 'admin', '2019-02-21 16:26:21', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings/Index', 'account/settings/Index', NULL, NULL, 1, NULL, NULL, 2.00, 1, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-19 09:41:05', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('700b7f95165c46cc7a78bf227aa8fed3', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '性能监控', '/monitor', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-04-02 11:34:34', 'admin', '2019-05-05 17:49:47', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('717f6bee46f44a3897eca9abd6e2ec44', '', '个人页', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'user', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-02-23 22:41:37', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('73678f9daa45ed17a3674131b03432fb', '540a2936940846cb98114ffb0d145cb8', '权限列表', '/list/permission-list', 'list/PermissionList', NULL, NULL, 1, NULL, NULL, 5.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('7593c9e3523a17bca83b8d7fe8a34e58', '3f915b2769fc80648e92d04e84ca059d', '添加用户按钮', '', NULL, NULL, NULL, 2, 'user:add', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-16 11:20:33', 'admin', '2019-05-17 18:31:25', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('7960961b0063228937da5fa8dd73d371', '2a470fc0c3954d9dbb61de6d80846549', 'JEditableTable示例', '/jeecg/JEditableTable', 'jeecg/JeecgEditableTableExample', NULL, NULL, 1, NULL, NULL, 2.10, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-22 15:22:18', 'admin', '2019-12-25 09:48:16', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('7ac9eb9ccbde2f7a033cd4944272bf1e', '540a2936940846cb98114ffb0d145cb8', '卡片列表', '/list/card', 'list/CardList', NULL, NULL, 1, NULL, NULL, 7.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/sys/dataLog-list', 'system/DataLogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-11 19:26:49', 'admin', '2019-03-12 11:40:47', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', NULL, NULL, 1, 'CustomSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:00:46', NULL, '2018-12-26 21:13:25', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '服务器信息', '/monitor/SystemInfo', 'modules/monitor/SystemInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis监控', '/monitor/redis/info', 'modules/monitor/RedisInfo', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 13:11:33', 'admin', '2019-05-07 15:18:54', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8d4683aacaa997ab86b966b464360338', 'e41b69c57a941a3bbcce45032fe57605', 'Online表单开发', '/online/cgform', 'modules/online/cgform/OnlCgformHeadList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-03-12 15:48:14', 'admin', '2019-06-11 14:19:17', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('8fb8172747a78756c11916216b8b8066', '717f6bee46f44a3897eca9abd6e2ec44', '工作台', '/dashboard/workplace', 'dashboard/Workplace', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:45:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('944abf0a8fc22fe1f1154a389a574154', '5c8042bd6c601270b2bbd9b20bccc68b', '消息管理', '/modules/message/sysMessageList', 'modules/message/SysMessageList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:27:53', 'admin', '2019-04-09 19:31:23', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/index', 'dashboard/Index', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-03-07 17:41:27', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('97c8629abc7848eccdb6d77c24bb3ebb', '700b7f95165c46cc7a78bf227aa8fed3', '磁盘监控', '/monitor/Disk', 'modules/monitor/DiskMonitoring', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 14:30:06', 'admin', '2019-05-05 14:37:14', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9a90363f216a6a08f32eecb3f0bf12a3', '2a470fc0c3954d9dbb61de6d80846549', '自定义组件', '/jeecg/SelectDemo', 'jeecg/SelectDemo', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-19 11:19:05', 'admin', '2019-12-25 09:47:04', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-30 18:19:10', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('a400e4f4d54f79bf5ce160ae432231af', '2a470fc0c3954d9dbb61de6d80846549', '百度', 'http://www.baidu.com', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-29 19:44:06', 'admin', '2019-02-15 16:25:02', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('ae4fed059f67086fd52a73d913cf473d', '540a2936940846cb98114ffb0d145cb8', '内联编辑表格', '/list/edit-table', 'list/TableInnerEditList', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('aedbf679b5773c1f25e9f7b10111da73', '08e6b9dc3c04489c8e1ff2ce6f105aa4', 'SQL监控', '{{ window._CONFIG[\'domianURL\'] }}/druid/', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 09:43:22', 'admin', '2019-03-23 19:00:46', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b1cb0a3fedf7ed0e4653cb5a229837ee', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '定时任务', '/isystem/QuartzJobList', 'system/QuartzJobList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2019-01-03 09:38:52', 'admin', '2019-04-02 10:24:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b3c824fc22bd953e2eb16ae6914ac8f9', '4875ebe289344e14844d8e3ea1edd73f', '高级详情页', '/profile/advanced', 'profile/advanced/Advanced', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b4dfc7d5dd9e8d5b6dd6d4579b1aa559', 'c65321e57b7949b7a975313220de0422', '500', '/exception/500', 'exception/500', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('c431130c0bc0ec71b0a5be37747bb36a', '2a470fc0c3954d9dbb61de6d80846549', '一对多JEditable', '/jeecg/JeecgOrderMainListForJEditableTable', 'jeecg/JeecgOrderMainListForJEditableTable', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-29 10:51:59', 'admin', '2019-04-04 20:09:39', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('c65321e57b7949b7a975313220de0422', '', '异常页', '/exception', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'warning', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:45:54', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('c6cf95444d80435eb37b2f9db3971ae6', '2a470fc0c3954d9dbb61de6d80846549', '数据回执模拟', '/jeecg/InterfaceTest', 'jeecg/InterfaceTest', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 16:02:23', 'admin', '2019-02-21 16:25:45', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('cc50656cf9ca528e6f2150eba4714ad2', '4875ebe289344e14844d8e3ea1edd73f', '基础详情页', '/profile/basic', 'profile/basic/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM信息', '/monitor/JvmInfo', 'modules/monitor/JvmInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d2bbf9ebca5a8fa2e227af97d2da7548', 'c65321e57b7949b7a975313220de0422', '404', '/exception/404', 'exception/404', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 13.00, 0, 'setting', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-11-01 21:11:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('de13e0f6328c069748de7399fcc1dbbd', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（项目）', '/list/search/project', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:01:40', 'admin', '2019-02-12 14:14:18', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6.00, 0, '', 1, 1, 0, 1, NULL, NULL, '2019-01-02 17:23:01', 'admin', '2021-04-20 11:26:50', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e1979bb53e9ea51cecc74d86fd9d2f64', '2a470fc0c3954d9dbb61de6d80846549', 'PDF预览', '/jeecg/jeecgPdfView', 'jeecg/JeecgPdfView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:39:35', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e3c13679c73a4f829bcff2aba8fd68b1', '', '表单页', '/form', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'form', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2022-04-15 18:46:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 99.00, 0, 'cloud', 1, 0, 0, 0, NULL, 'admin', '2019-03-08 10:43:10', 'admin', '2022-01-05 15:47:47', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('e5973686ed495c379d829ea8b2881fc6', 'e3c13679c73a4f829bcff2aba8fd68b1', '高级表单', '/form/advanced-form', 'form/advancedForm/AdvancedForm', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('e6bfd1fcabfd7942fdd05f076d1dad38', '2a470fc0c3954d9dbb61de6d80846549', '打印测试', '/jeecg/PrintDemo', 'jeecg/PrintDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 15:58:48', 'admin', '2019-05-07 20:14:39', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('ebb9d82ea16ad864071158e0c449d186', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '分类字典', '/isys/category', 'system/SysCategoryList', NULL, NULL, 1, NULL, '1', 5.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-05-29 18:48:07', 'admin', '2020-02-23 22:45:33', 0, 0, '1', 0);
INSERT INTO `sys_permission` VALUES ('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', NULL, NULL, 1, 'SecuritySettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 18:59:52', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('f0675b52d89100ee88472b6800754a08', '', '统计报表', '/report', 'layouts/RouteView', NULL, '15', 0, NULL, NULL, 15.00, 0, 'bar-chart', 1, 0, 0, 1, NULL, 'admin', '2019-04-03 18:32:02', 'admin', '2022-04-17 16:17:34', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2020-02-23 22:45:25', 0, 0, NULL, 0);
INSERT INTO `sys_permission` VALUES ('f23d9bfff4d9aa6b68569ba2cff38415', '540a2936940846cb98114ffb0d145cb8', '标准列表', '/list/basic-list', 'list/StandardList', NULL, NULL, 1, NULL, NULL, 6.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('f2849d3814fc97993bfc519ae6bbf049', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO复制表单', '/online/copyform/:code', 'modules/online/cgform/OnlCgformCopyList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-08-29 16:05:37', NULL, NULL, 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('f780d0d3083d849ccbdb1b1baee4911d', '5c8042bd6c601270b2bbd9b20bccc68b', '模板管理', '/modules/message/sysMessageTemplateList', 'modules/message/SysMessageTemplateList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:50:31', 'admin', '2019-04-12 10:16:34', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fb07ca05a3e13674dbf6d3245956da2e', '540a2936940846cb98114ffb0d145cb8', '搜索列表', '/list/search', 'list/search/SearchLayout', NULL, '/list/search/article', 1, NULL, NULL, 8.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-12 15:09:13', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fb367426764077dcf94640c843733985', '2a470fc0c3954d9dbb61de6d80846549', '一对多示例', '/jeecg/JeecgOrderMainList', 'jeecg/JeecgOrderMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-15 16:24:11', 'admin', '2019-02-18 10:50:14', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fba41089766888023411a978d13c0aa4', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO树表单列表', '/online/cgformTreeList/:code', 'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, 1, NULL, '1', 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-05-21 14:46:50', 'admin', '2019-06-11 13:52:52', 0, 0, '1', NULL);
INSERT INTO `sys_permission` VALUES ('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '请求追踪', '/monitor/HttpTrace', 'modules/monitor/HttpTrace', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', 0, 0, NULL, NULL);
INSERT INTO `sys_permission` VALUES ('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', NULL, NULL, 1, 'NotificationSettings', NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:02:05', NULL, NULL, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_fucntionid`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO `sys_permission_data_rule` VALUES ('1252537480092921858', '1249206567527260161', '本部门和子部门', '', 'USE_SQL_RULES', 'teaching_work.sys_org_code like \'#{sys_org_code}%\'', '1', '2020-04-21 17:59:40', 'jeecg', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('1252537667125325826', '3f915b2769fc80648e92d04e84ca059d', '本部门和子部门', '', 'USE_SQL_RULES', 'sys_depart.org_code like \'#{sys_org_code}%\'', '1', '2020-04-21 18:00:25', 'jeecg', '2020-04-21 21:46:06', 'jeecg');
INSERT INTO `sys_permission_data_rule` VALUES ('32b62cb04d6c788d9d92e3ff5e66854e', '8d4683aacaa997ab86b966b464360338', '000', '00', '!=', '00', '1', '2019-04-02 18:36:08', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like \'%张%\' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott');
INSERT INTO `sys_permission_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL);
INSERT INTO `sys_permission_data_rule` VALUES ('53609e1854f4a87eb23ed23a18a1042c', '4148ec82b6acd69f470bea75fe41c357', '只看当前部门数据', 'sysOrgCode', '=', '#{sys_org_code}', '1', '2019-05-11 19:40:39', 'admin', '2019-05-11 19:40:50', 'admin');
INSERT INTO `sys_permission_data_rule` VALUES ('a7d661ef5ac168b2b162420c6804dac5', '4148ec82b6acd69f470bea75fe41c357', '只看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2019-05-11 19:19:05', 'admin', '2019-05-11 19:24:58', 'admin');
INSERT INTO `sys_permission_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', NULL, '小于', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
DROP TABLE IF EXISTS `sys_position`;
CREATE TABLE `sys_position`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构编码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_code`(`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_position
-- ----------------------------

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_job_class_name`(`job_class_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_role_role_code`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1236319727061430274', '开发调试', 'dev', NULL, 'admin', '2020-03-07 23:56:07', NULL, NULL);
INSERT INTO `sys_role` VALUES ('1252532277234982913', '学生', 'student', NULL, 'jeecg', '2020-04-21 17:39:00', NULL, NULL);
INSERT INTO `sys_role` VALUES ('1252532323347161090', '教师', 'teacher', NULL, 'jeecg', '2020-04-21 17:39:11', NULL, NULL);
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2019-05-20 11:40:26');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_group_role_per_id`(`role_id`, `permission_id`) USING BTREE,
  INDEX `index_group_role_id`(`role_id`) USING BTREE,
  INDEX `index_group_per_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('00b0748f04d3ea52c8cfa179c1c9d384', '52b0cf022ac4187b2a70dfa4f8b2d940', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('115a6673ae6c0816d3f60de221520274', '21c5a3187763729408b40afb0d0fdfa8', '63b551e81c5956d5c861593d366d8c57', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319684904480770', 'f6817f48af4fb3af11b9e8bf182f618b', '1236319333954482178', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319684917063682', 'f6817f48af4fb3af11b9e8bf182f618b', '1236319494499856386', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773794365442', '1236319727061430274', '1367a93f2c410b169faa7abcbad2f77c', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773802754049', '1236319727061430274', '4f66409ef3bbd69c1d80469d6e2a885e', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773811142658', '1236319727061430274', '882a73768cfd7f78f3a37584f7299656', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773811142659', '1236319727061430274', 'ec8d607d0156e198b11853760319c646', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773815336961', '1236319727061430274', 'fedfbf4420536cacc0218557d263dfea', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773823725570', '1236319727061430274', '700b7f95165c46cc7a78bf227aa8fed3', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773827919873', '1236319727061430274', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773827919874', '1236319727061430274', '9a90363f216a6a08f32eecb3f0bf12a3', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773827919875', '1236319727061430274', '1166535831146504193', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773836308481', '1236319727061430274', '1205098241075453953', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773840502786', '1236319727061430274', '1236319333954482178', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773840502787', '1236319727061430274', '1236319494499856386', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773840502788', '1236319727061430274', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773840502789', '1236319727061430274', '078f9558cdeab239aecb2bda1a8ed0d1', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773853085697', '1236319727061430274', '0ac2ad938963b6c6d1af25477d5b8b51', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773857280002', '1236319727061430274', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773857280003', '1236319727061430274', '200006f0edf145a2b50eacca07585451', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773869862913', '1236319727061430274', '277bfabef7d76e89b33062b16a9a5020', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773869862914', '1236319727061430274', '2aeddae571695cd6380f6d6d334d6e7d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773869862915', '1236319727061430274', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773869862916', '1236319727061430274', '418964ba087b90a84897b62474496b93', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773878251522', '1236319727061430274', '4356a1a67b564f0988a484f5531fd4d9', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773878251523', '1236319727061430274', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773878251524', '1236319727061430274', '655563cd64b75dcf52ef7bcdd4836953', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773878251525', '1236319727061430274', '65a8f489f25a345836b7f44b1181197a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773886640129', '1236319727061430274', '7593c9e3523a17bca83b8d7fe8a34e58', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773886640130', '1236319727061430274', '841057b8a1bef8f6b4b20f9a618a7fa6', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773886640131', '1236319727061430274', '8d1ebd663688965f1fd86a2f0ead3416', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773886640132', '1236319727061430274', '8d4683aacaa997ab86b966b464360338', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773895028737', '1236319727061430274', '944abf0a8fc22fe1f1154a389a574154', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773895028738', '1236319727061430274', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773895028739', '1236319727061430274', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773895028740', '1236319727061430274', 'b6bcee2ccc854052d3cc3e9c96d90197', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773895028741', '1236319727061430274', 'cc50656cf9ca528e6f2150eba4714ad2', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773903417346', '1236319727061430274', 'd86f58e7ab516d3bc6bfb1fe10585f97', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773903417347', '1236319727061430274', 'de13e0f6328c069748de7399fcc1dbbd', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773903417348', '1236319727061430274', 'f0675b52d89100ee88472b6800754a08', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773903417349', '1236319727061430274', 'f2849d3814fc97993bfc519ae6bbf049', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773911805954', '1236319727061430274', 'f780d0d3083d849ccbdb1b1baee4911d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773911805955', '1236319727061430274', '1205097455226462210', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773911805956', '1236319727061430274', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773916000257', '1236319727061430274', '190c2b43bec6a5f7a4194a85db67d96a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773916000258', '1236319727061430274', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773916000259', '1236319727061430274', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773928583169', '1236319727061430274', '1174506953255182338', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773932777474', '1236319727061430274', '1205306106780364802', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773932777475', '1236319727061430274', '109c78a583d4693ce2f16551b7786786', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773941166081', '1236319727061430274', '13212d3416eb690c2e1d5033166ff47a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773941166082', '1236319727061430274', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773945360385', '1236319727061430274', '6531cf3421b1265aeeeabaab5e176e6d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773945360386', '1236319727061430274', '6ad53fd1b220989a8b71ff482d683a5a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773945360387', '1236319727061430274', '6e73eb3c26099c191bf03852ee1310a1', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773953748994', '1236319727061430274', 'ae4fed059f67086fd52a73d913cf473d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773953748995', '1236319727061430274', 'b3c824fc22bd953e2eb16ae6914ac8f9', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773953748996', '1236319727061430274', 'd2bbf9ebca5a8fa2e227af97d2da7548', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773953748997', '1236319727061430274', 'fb367426764077dcf94640c843733985', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773953748998', '1236319727061430274', '7960961b0063228937da5fa8dd73d371', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137601', '1236319727061430274', '1174590283938041857', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137602', '1236319727061430274', '1192318987661234177', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137603', '1236319727061430274', '020b06793e4de2eee0007f603000c769', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137604', '1236319727061430274', '043780fa095ff1b2bec4dc406d76f023', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137605', '1236319727061430274', '05b3c82ddb2536a4a5ee1a4c46b5abef', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773962137606', '1236319727061430274', '0620e402857b8c5b605e1ad9f4b89350', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773970526209', '1236319727061430274', '2dbbafa22cda07fa5d169d741b81fe12', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773970526210', '1236319727061430274', '53a9230444d33de28aa11cc108fb1dba', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773970526211', '1236319727061430274', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773970526212', '1236319727061430274', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773978914818', '1236319727061430274', 'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773978914819', '1236319727061430274', 'c431130c0bc0ec71b0a5be37747bb36a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773978914820', '1236319727061430274', 'e1979bb53e9ea51cecc74d86fd9d2f64', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773978914821', '1236319727061430274', 'e5973686ed495c379d829ea8b2881fc6', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773978914822', '1236319727061430274', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773987303425', '1236319727061430274', '024f1fd1283dc632458976463d8984e1', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773987303426', '1236319727061430274', '265de841c58907954b8877fb85212622', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773995692033', '1236319727061430274', '339329ed54cf255e1f9392e84f136901', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773999886337', '1236319727061430274', '4f84f9400e5e92c95f05b554724c2b58', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773999886338', '1236319727061430274', '58b9204feaf07e47284ddb36cd2d8468', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319773999886339', '1236319727061430274', '8b3bff2eee6f1939147f5c68292a1642', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774008274946', '1236319727061430274', 'a400e4f4d54f79bf5ce160ae432231af', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774008274947', '1236319727061430274', 'd07a2c87a451434c99ab06296727ec4f', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774008274948', '1236319727061430274', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774016663554', '1236319727061430274', 'fc810a2267dd183e4ef7c71cc60f4670', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774016663555', '1236319727061430274', '1224641973866467330', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774016663556', '1236319727061430274', '1229674163694841857', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774025052162', '1236319727061430274', '73678f9daa45ed17a3674131b03432fb', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774025052163', '1236319727061430274', 'e41b69c57a941a3bbcce45032fe57605', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774029246465', '1236319727061430274', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774029246466', '1236319727061430274', 'ebb9d82ea16ad864071158e0c449d186', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774029246467', '1236319727061430274', '1209731624921534465', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774029246468', '1236319727061430274', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774037635073', '1236319727061430274', '3fac0d3c9cd40fa53ab70d4c583821f8', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774037635074', '1236319727061430274', '5c8042bd6c601270b2bbd9b20bccc68b', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774037635075', '1236319727061430274', '97c8629abc7848eccdb6d77c24bb3ebb', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774037635076', '1236319727061430274', 'c6cf95444d80435eb37b2f9db3971ae6', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774046023681', '1236319727061430274', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774046023682', '1236319727061430274', 'f23d9bfff4d9aa6b68569ba2cff38415', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774050217986', '1236319727061430274', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774050217987', '1236319727061430274', '7ac9eb9ccbde2f7a033cd4944272bf1e', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774050217988', '1236319727061430274', '2e42e3835c2b44ec9f7bc26c146ee531', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774058606594', '1236319727061430274', '4875ebe289344e14844d8e3ea1edd73f', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774058606595', '1236319727061430274', 'c65321e57b7949b7a975313220de0422', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774071189505', '1236319727061430274', 'fb07ca05a3e13674dbf6d3245956da2e', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774071189506', '1236319727061430274', '22d6a3d39a59dd7ea9a30acfa6bfb0a5', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774071189507', '1236319727061430274', '54097c6a3cf50fad0793a34beff1efdf', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774079578114', '1236319727061430274', '540a2936940846cb98114ffb0d145cb8', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774079578115', '1236319727061430274', '717f6bee46f44a3897eca9abd6e2ec44', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774079578116', '1236319727061430274', '9fe26464838de2ea5e90f2367e35efa0', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774079578117', '1236319727061430274', 'e3c13679c73a4f829bcff2aba8fd68b1', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774087966721', '1236319727061430274', 'fba41089766888023411a978d13c0aa4', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236319774087966722', '1236319727061430274', '1170592628746878978', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236543084176465922', 'f6817f48af4fb3af11b9e8bf182f618b', '1236542260197023745', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236543084222603266', 'f6817f48af4fb3af11b9e8bf182f618b', '1236542357244829698', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236618023768272898', 'f6817f48af4fb3af11b9e8bf182f618b', '1236617970584498178', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236918387444826114', '1236319727061430274', '1236617970584498178', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236918387457409025', '1236319727061430274', '1236542260197023745', NULL);
INSERT INTO `sys_role_permission` VALUES ('1236918387465797634', '1236319727061430274', '1236542357244829698', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249162649481773057', '1236319727061430274', '1249162576878370817', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249206651438505986', '1236319727061430274', '1249206567527260161', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249217981478342658', '1236319727061430274', '1249217230806978561', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249217981486731266', '1236319727061430274', '1249217881238671362', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249321530140921857', '1236319727061430274', '1249315662297042946', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249321530170281986', '1236319727061430274', '1249316121405558786', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249321530170281987', '1236319727061430274', '1249320110008307713', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249321530178670593', '1236319727061430274', '1249320400874901505', NULL);
INSERT INTO `sys_role_permission` VALUES ('1249321530178670594', '1236319727061430274', '1249320532483772418', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577303085058', '1236319727061430274', '1249990084771192834', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577349222401', '1236319727061430274', '1249993808843472897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577357611009', '1236319727061430274', '1249927823277002753', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577357611010', '1236319727061430274', '1249928454356176898', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577365999618', '1236319727061430274', '1249928626473635842', NULL);
INSERT INTO `sys_role_permission` VALUES ('1251087577370193921', '1236319727061430274', '1249928212038651906', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419610632193', '1252532277234982913', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419627409410', '1252532277234982913', '1249217230806978561', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419627409411', '1252532277234982913', '1249217881238671362', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419635798018', '1252532277234982913', '1249315662297042946', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419635798019', '1252532277234982913', '1249316121405558786', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419639992321', '1252532277234982913', '1249993808843472897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419639992322', '1252532277234982913', '1249990084771192834', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419648380930', '1252532277234982913', '1249320110008307713', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419652575233', '1252532277234982913', '1249320400874901505', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532419652575234', '1252532277234982913', '1249320532483772418', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721726349313', 'f6817f48af4fb3af11b9e8bf182f618b', '1249217230806978561', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721730543617', 'f6817f48af4fb3af11b9e8bf182f618b', '1249217881238671362', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721738932225', 'f6817f48af4fb3af11b9e8bf182f618b', '1249315662297042946', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721738932226', 'f6817f48af4fb3af11b9e8bf182f618b', '1249993808843472897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721738932227', 'f6817f48af4fb3af11b9e8bf182f618b', '1249316121405558786', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721747320833', 'f6817f48af4fb3af11b9e8bf182f618b', '1249990084771192834', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721751515138', 'f6817f48af4fb3af11b9e8bf182f618b', '1249320110008307713', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721751515139', 'f6817f48af4fb3af11b9e8bf182f618b', '1249320400874901505', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721764098049', 'f6817f48af4fb3af11b9e8bf182f618b', '1249320532483772418', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721764098050', 'f6817f48af4fb3af11b9e8bf182f618b', '1249206567527260161', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721768292353', 'f6817f48af4fb3af11b9e8bf182f618b', 'f0675b52d89100ee88472b6800754a08', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721768292354', 'f6817f48af4fb3af11b9e8bf182f618b', '2aeddae571695cd6380f6d6d334d6e7d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721768292355', 'f6817f48af4fb3af11b9e8bf182f618b', '1249162576878370817', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721776680962', 'f6817f48af4fb3af11b9e8bf182f618b', '5c2f42277948043026b7a14692456828', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721776680963', 'f6817f48af4fb3af11b9e8bf182f618b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721780875265', 'f6817f48af4fb3af11b9e8bf182f618b', '700b7f95165c46cc7a78bf227aa8fed3', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721780875266', 'f6817f48af4fb3af11b9e8bf182f618b', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721780875267', 'f6817f48af4fb3af11b9e8bf182f618b', '841057b8a1bef8f6b4b20f9a618a7fa6', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721780875268', 'f6817f48af4fb3af11b9e8bf182f618b', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721789263873', 'f6817f48af4fb3af11b9e8bf182f618b', '97c8629abc7848eccdb6d77c24bb3ebb', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721789263874', 'f6817f48af4fb3af11b9e8bf182f618b', 'fc810a2267dd183e4ef7c71cc60f4670', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721789263875', 'f6817f48af4fb3af11b9e8bf182f618b', '8b3bff2eee6f1939147f5c68292a1642', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721797652481', 'f6817f48af4fb3af11b9e8bf182f618b', '024f1fd1283dc632458976463d8984e1', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721797652482', 'f6817f48af4fb3af11b9e8bf182f618b', '8d1ebd663688965f1fd86a2f0ead3416', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721797652483', 'f6817f48af4fb3af11b9e8bf182f618b', 'd07a2c87a451434c99ab06296727ec4f', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721797652484', 'f6817f48af4fb3af11b9e8bf182f618b', '1174506953255182338', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721806041090', 'f6817f48af4fb3af11b9e8bf182f618b', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721806041091', 'f6817f48af4fb3af11b9e8bf182f618b', '1174590283938041857', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721806041092', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721806041093', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252532721814429698', 'f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791708737538', '1252532323347161090', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791725514754', '1252532323347161090', '1249217230806978561', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791725514755', '1252532323347161090', '1249217881238671362', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791738097665', '1252532323347161090', '1249315662297042946', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791742291969', '1252532323347161090', '1249316121405558786', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791742291970', '1252532323347161090', '1249993808843472897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791750680578', '1252532323347161090', '1249990084771192834', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791759069185', '1252532323347161090', '1249320110008307713', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791759069186', '1252532323347161090', '1249320400874901505', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537791767457794', '1252532323347161090', '1249206567527260161', '');
INSERT INTO `sys_role_permission` VALUES ('1252537791771652097', '1252532323347161090', '1249320532483772418', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252537902933291010', '1252532323347161090', '3f915b2769fc80648e92d04e84ca059d', '1252537667125325826');
INSERT INTO `sys_role_permission` VALUES ('1252537902937485313', '1252532323347161090', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091560185858', 'f6817f48af4fb3af11b9e8bf182f618b', '020b06793e4de2eee0007f603000c769', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091572768770', 'f6817f48af4fb3af11b9e8bf182f618b', 'e41b69c57a941a3bbcce45032fe57605', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091572768771', 'f6817f48af4fb3af11b9e8bf182f618b', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091581157377', 'f6817f48af4fb3af11b9e8bf182f618b', 'f2849d3814fc97993bfc519ae6bbf049', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091585351681', 'f6817f48af4fb3af11b9e8bf182f618b', '5c8042bd6c601270b2bbd9b20bccc68b', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091593740289', 'f6817f48af4fb3af11b9e8bf182f618b', '944abf0a8fc22fe1f1154a389a574154', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091597934593', 'f6817f48af4fb3af11b9e8bf182f618b', 'f780d0d3083d849ccbdb1b1baee4911d', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091597934594', 'f6817f48af4fb3af11b9e8bf182f618b', '53a9230444d33de28aa11cc108fb1dba', NULL);
INSERT INTO `sys_role_permission` VALUES ('1252593091606323201', 'f6817f48af4fb3af11b9e8bf182f618b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265627831519195137', 'f6817f48af4fb3af11b9e8bf182f618b', '1249927823277002753', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265627831531778050', 'f6817f48af4fb3af11b9e8bf182f618b', '1249928454356176898', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265627831531778051', 'f6817f48af4fb3af11b9e8bf182f618b', '1249928626473635842', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265632765861998593', '1252532277234982913', '1265632389934919681', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265632788922281985', 'f6817f48af4fb3af11b9e8bf182f618b', '1265632389934919681', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265632808824254466', '1236319727061430274', '1265632389934919681', NULL);
INSERT INTO `sys_role_permission` VALUES ('1265632832886976513', '1252532323347161090', '1265632389934919681', NULL);
INSERT INTO `sys_role_permission` VALUES ('1322864411233083393', 'f6817f48af4fb3af11b9e8bf182f618b', '1322864365905240066', NULL);
INSERT INTO `sys_role_permission` VALUES ('1322886462249492481', '1252532323347161090', '1322864365905240066', NULL);
INSERT INTO `sys_role_permission` VALUES ('1322886531925270530', '1236319727061430274', '1322864365905240066', NULL);
INSERT INTO `sys_role_permission` VALUES ('1322886531942047745', '1236319727061430274', '1235823781053313025', NULL);
INSERT INTO `sys_role_permission` VALUES ('1322886558236139521', '1252532277234982913', '1322864365905240066', NULL);
INSERT INTO `sys_role_permission` VALUES ('1384346075054292993', 'f6817f48af4fb3af11b9e8bf182f618b', '1384345850621280257', NULL);
INSERT INTO `sys_role_permission` VALUES ('1384346847716392961', '1252532277234982913', '1384345850621280257', NULL);
INSERT INTO `sys_role_permission` VALUES ('1384346952469135361', '1252532323347161090', '1384345850621280257', NULL);
INSERT INTO `sys_role_permission` VALUES ('1439108051370074113', 'f6817f48af4fb3af11b9e8bf182f618b', '1439107239277322241', NULL);
INSERT INTO `sys_role_permission` VALUES ('1442012990119362561', 'f6817f48af4fb3af11b9e8bf182f618b', 'ebb9d82ea16ad864071158e0c449d186', NULL);
INSERT INTO `sys_role_permission` VALUES ('1442072262710784002', 'f6817f48af4fb3af11b9e8bf182f618b', '1342341595266134017', NULL);
INSERT INTO `sys_role_permission` VALUES ('1442072282252046337', '1252532277234982913', '1342341595266134017', NULL);
INSERT INTO `sys_role_permission` VALUES ('1442072299402555393', '1252532323347161090', '1342341595266134017', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478632197464387585', 'f6817f48af4fb3af11b9e8bf182f618b', '1478631237925072897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478632197472776193', 'f6817f48af4fb3af11b9e8bf182f618b', '1478631727777837058', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478634614725668866', 'f6817f48af4fb3af11b9e8bf182f618b', '1472819323378683905', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478634977759457281', '1252532277234982913', '1472819323378683905', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478635093937483778', '1252532323347161090', '1472819323378683905', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478635210396528642', '1252532323347161090', '1478631237925072897', NULL);
INSERT INTO `sys_role_permission` VALUES ('1478635210396528643', '1252532323347161090', '1478631727777837058', NULL);
INSERT INTO `sys_role_permission` VALUES ('1479341095267700738', 'f6817f48af4fb3af11b9e8bf182f618b', '1479321067621249026', NULL);
INSERT INTO `sys_role_permission` VALUES ('1481958531557076994', 'f6817f48af4fb3af11b9e8bf182f618b', '1481550648382185474', NULL);
INSERT INTO `sys_role_permission` VALUES ('1498944956328431618', 'f6817f48af4fb3af11b9e8bf182f618b', '1498944880717713410', NULL);
INSERT INTO `sys_role_permission` VALUES ('1498945522433642498', '1252532277234982913', '1498944880717713410', NULL);
INSERT INTO `sys_role_permission` VALUES ('1498945557233782785', '1252532323347161090', '1498944880717713410', NULL);
INSERT INTO `sys_role_permission` VALUES ('1517397351902285825', '1252532323347161090', '1439107239277322241', NULL);
INSERT INTO `sys_role_permission` VALUES ('17ead5b7d97ed365398ab20009a69ea3', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e08cb190ef230d5d4f03824198773950', NULL);
INSERT INTO `sys_role_permission` VALUES ('1ac1688ef8456f384091a03d88a89ab1', '52b0cf022ac4187b2a70dfa4f8b2d940', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO `sys_role_permission` VALUES ('1fe4d408b85f19618c15bcb768f0ec22', '1750a8fb3e6d90cb7957c02de1dc8e59', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('248d288586c6ff3bd14381565df84163', '52b0cf022ac4187b2a70dfa4f8b2d940', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_role_permission` VALUES ('27489816708b18859768dfed5945c405', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('296f9c75ca0e172ae5ce4c1022c996df', '646c628b2b8295fbdab2d34044de0354', '732d48f8e0abe99fe6a23d18a3171cd1', NULL);
INSERT INTO `sys_role_permission` VALUES ('2c462293cbb0eab7e8ae0a3600361b5f', '52b0cf022ac4187b2a70dfa4f8b2d940', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('2fdaed22dfa4c8d4629e44ef81688c6a', '52b0cf022ac4187b2a70dfa4f8b2d940', 'aedbf679b5773c1f25e9f7b10111da73', NULL);
INSERT INTO `sys_role_permission` VALUES ('300c462b7fec09e2ff32574ef8b3f0bd', '52b0cf022ac4187b2a70dfa4f8b2d940', '2a470fc0c3954d9dbb61de6d80846549', NULL);
INSERT INTO `sys_role_permission` VALUES ('35ac7cae648de39eb56213ca1b649713', '52b0cf022ac4187b2a70dfa4f8b2d940', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL);
INSERT INTO `sys_role_permission` VALUES ('3e563751942b0879c88ca4de19757b50', '1750a8fb3e6d90cb7957c02de1dc8e59', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO `sys_role_permission` VALUES ('412e2de37a35b3442d68db8dd2f3c190', '52b0cf022ac4187b2a70dfa4f8b2d940', 'f1cb187abf927c88b89470d08615f5ac', NULL);
INSERT INTO `sys_role_permission` VALUES ('4204f91fb61911ba8ce40afa7c02369f', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_role_permission` VALUES ('439568ff7db6f329bf6dd45b3dfc9456', 'f6817f48af4fb3af11b9e8bf182f618b', '7593c9e3523a17bca83b8d7fe8a34e58', NULL);
INSERT INTO `sys_role_permission` VALUES ('4f2fd4a190db856e21476de2704bbd99', 'f6817f48af4fb3af11b9e8bf182f618b', '1a0811914300741f4e11838ff37a1d3a', NULL);
INSERT INTO `sys_role_permission` VALUES ('4faad8ff93cb2b5607cd3d07c1b624ee', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '70b8f33da5f39de1981bf89cf6c99792', NULL);
INSERT INTO `sys_role_permission` VALUES ('57c0b3a547b815ea3ec8e509b08948b3', '1750a8fb3e6d90cb7957c02de1dc8e59', '3f915b2769fc80648e92d04e84ca059d', NULL);
INSERT INTO `sys_role_permission` VALUES ('593ee05c4fe4645c7826b7d5e14f23ec', '52b0cf022ac4187b2a70dfa4f8b2d940', '8fb8172747a78756c11916216b8b8066', NULL);
INSERT INTO `sys_role_permission` VALUES ('5fc194b709336d354640fe29fefd65a3', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9ba60e626bf2882c31c488aba62b89f0', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588591820806', '16457350655250432', '5129710648430592', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588604403712', '16457350655250432', '5129710648430593', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588612792320', '16457350655250432', '40238597734928384', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588625375232', '16457350655250432', '57009744761589760', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588633763840', '16457350655250432', '16392452747300864', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588637958144', '16457350655250432', '16392767785668608', NULL);
INSERT INTO `sys_role_permission` VALUES ('75002588650541056', '16457350655250432', '16439068543946752', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277779875336192', '496138616573952', '5129710648430592', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780043108352', '496138616573952', '5129710648430593', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780055691264', '496138616573952', '15701400130424832', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780064079872', '496138616573952', '16678126574637056', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780072468480', '496138616573952', '15701915807518720', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780076662784', '496138616573952', '15708892205944832', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780085051392', '496138616573952', '16678447719911424', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780089245696', '496138616573952', '25014528525733888', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780097634304', '496138616573952', '56898976661639168', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780135383040', '496138616573952', '40238597734928384', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780139577344', '496138616573952', '45235621697949696', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780147965952', '496138616573952', '45235787867885568', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780156354560', '496138616573952', '45235939278065664', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780164743168', '496138616573952', '43117268627886080', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780168937472', '496138616573952', '45236734832676864', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780181520384', '496138616573952', '45237010692050944', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780189908992', '496138616573952', '45237170029465600', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780198297600', '496138616573952', '57009544286441472', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780206686208', '496138616573952', '57009744761589760', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780215074816', '496138616573952', '57009981228060672', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780219269120', '496138616573952', '56309618086776832', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780227657728', '496138616573952', '57212882168844288', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780236046336', '496138616573952', '61560041605435392', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780244434944', '496138616573952', '61560275261722624', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780257017856', '496138616573952', '61560480518377472', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780265406464', '496138616573952', '44986029924421632', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780324126720', '496138616573952', '45235228800716800', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780332515328', '496138616573952', '45069342940860416', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780340903937', '496138616573952', '5129710648430594', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780349292544', '496138616573952', '16687383932047360', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780357681152', '496138616573952', '16689632049631232', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780366069760', '496138616573952', '16689745006432256', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780370264064', '496138616573952', '16689883993083904', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780374458369', '496138616573952', '16690313745666048', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780387041280', '496138616573952', '5129710648430595', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780395429888', '496138616573952', '16694861252005888', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780403818496', '496138616573952', '16695107491205120', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780412207104', '496138616573952', '16695243126607872', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780420595712', '496138616573952', '75002207560273920', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780428984320', '496138616573952', '76215889006956544', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780433178624', '496138616573952', '76216071333351424', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780441567232', '496138616573952', '76216264070008832', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780449955840', '496138616573952', '76216459709124608', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780458344448', '496138616573952', '76216594207870976', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780466733056', '496138616573952', '76216702639017984', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780475121664', '496138616573952', '58480609315524608', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780483510272', '496138616573952', '61394706252173312', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780491898880', '496138616573952', '61417744146370560', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780496093184', '496138616573952', '76606430504816640', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780504481792', '496138616573952', '76914082455752704', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780508676097', '496138616573952', '76607201262702592', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780517064704', '496138616573952', '39915540965232640', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780525453312', '496138616573952', '41370251991977984', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780538036224', '496138616573952', '45264987354042368', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780546424832', '496138616573952', '45265487029866496', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780554813440', '496138616573952', '45265762415284224', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780559007744', '496138616573952', '45265886315024384', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780567396352', '496138616573952', '45266070000373760', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780571590656', '496138616573952', '41363147411427328', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780579979264', '496138616573952', '41363537456533504', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780588367872', '496138616573952', '41364927394353152', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780596756480', '496138616573952', '41371711400054784', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780605145088', '496138616573952', '41469219249852416', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780613533696', '496138616573952', '39916171171991552', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780621922304', '496138616573952', '39918482854252544', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780630310912', '496138616573952', '41373430515240960', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780718391296', '496138616573952', '41375330996326400', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780722585600', '496138616573952', '63741744973352960', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780730974208', '496138616573952', '42082442672082944', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780739362816', '496138616573952', '41376192166629376', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780747751424', '496138616573952', '41377034236071936', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780756140032', '496138616573952', '56911328312299520', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780764528640', '496138616573952', '41378916912336896', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780768722944', '496138616573952', '63482475359244288', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780772917249', '496138616573952', '64290663792906240', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780785500160', '496138616573952', '66790433014943744', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780789694464', '496138616573952', '42087054753927168', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780798083072', '496138616573952', '67027338952445952', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780806471680', '496138616573952', '67027909637836800', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780810665985', '496138616573952', '67042515441684480', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780823248896', '496138616573952', '67082402312228864', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780827443200', '496138616573952', '16392452747300864', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780835831808', '496138616573952', '16392767785668608', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780840026112', '496138616573952', '16438800255291392', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780844220417', '496138616573952', '16438962738434048', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277780852609024', '496138616573952', '16439068543946752', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860062040064', '496138616573953', '5129710648430592', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860070428672', '496138616573953', '5129710648430593', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860078817280', '496138616573953', '40238597734928384', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860091400192', '496138616573953', '43117268627886080', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860099788800', '496138616573953', '57009744761589760', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860112371712', '496138616573953', '56309618086776832', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860120760320', '496138616573953', '44986029924421632', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860129148928', '496138616573953', '5129710648430594', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860141731840', '496138616573953', '5129710648430595', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860150120448', '496138616573953', '75002207560273920', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860158509056', '496138616573953', '58480609315524608', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860162703360', '496138616573953', '76606430504816640', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860171091968', '496138616573953', '76914082455752704', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860179480576', '496138616573953', '76607201262702592', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860187869184', '496138616573953', '39915540965232640', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860196257792', '496138616573953', '41370251991977984', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860204646400', '496138616573953', '41363147411427328', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860208840704', '496138616573953', '41371711400054784', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860213035009', '496138616573953', '39916171171991552', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860221423616', '496138616573953', '39918482854252544', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860225617920', '496138616573953', '41373430515240960', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860234006528', '496138616573953', '41375330996326400', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860242395136', '496138616573953', '63741744973352960', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860250783744', '496138616573953', '42082442672082944', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860254978048', '496138616573953', '41376192166629376', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860263366656', '496138616573953', '41377034236071936', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860271755264', '496138616573953', '56911328312299520', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860313698304', '496138616573953', '41378916912336896', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860322086912', '496138616573953', '63482475359244288', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860326281216', '496138616573953', '64290663792906240', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860334669824', '496138616573953', '66790433014943744', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860343058432', '496138616573953', '42087054753927168', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860347252736', '496138616573953', '67027338952445952', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860351447041', '496138616573953', '67027909637836800', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860359835648', '496138616573953', '67042515441684480', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860364029952', '496138616573953', '67082402312228864', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860368224256', '496138616573953', '16392452747300864', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860372418560', '496138616573953', '16392767785668608', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860376612865', '496138616573953', '16438800255291392', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860385001472', '496138616573953', '16438962738434048', NULL);
INSERT INTO `sys_role_permission` VALUES ('77277860389195776', '496138616573953', '16439068543946752', NULL);
INSERT INTO `sys_role_permission` VALUES ('7a5d31ba48fe3fb1266bf186dc5f7ba7', '52b0cf022ac4187b2a70dfa4f8b2d940', '58857ff846e61794c69208e9d3a85466', NULL);
INSERT INTO `sys_role_permission` VALUES ('7de42bdc0b8c5446b7d428c66a7abc12', '52b0cf022ac4187b2a70dfa4f8b2d940', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO `sys_role_permission` VALUES ('7e19d90cec0dd87aaef351b9ff8f4902', '646c628b2b8295fbdab2d34044de0354', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL);
INSERT INTO `sys_role_permission` VALUES ('8a60df8d8b4c9ee5fa63f48aeee3ec00', '1750a8fb3e6d90cb7957c02de1dc8e59', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('8ce1022dac4e558ff9694600515cf510', '1750a8fb3e6d90cb7957c02de1dc8e59', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL);
INSERT INTO `sys_role_permission` VALUES ('8d848ca7feec5b7ebb3ecb32b2c8857a', '52b0cf022ac4187b2a70dfa4f8b2d940', '4148ec82b6acd69f470bea75fe41c357', NULL);
INSERT INTO `sys_role_permission` VALUES ('9264104cee9b10c96241d527b2d0346d', '1750a8fb3e6d90cb7957c02de1dc8e59', '54dd5457a3190740005c1bfec55b1c34', NULL);
INSERT INTO `sys_role_permission` VALUES ('980171fda43adfe24840959b1d048d4d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);
INSERT INTO `sys_role_permission` VALUES ('9d8772c310b675ae43eacdbc6c7fa04a', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '1663f3faba244d16c94552f849627d84', NULL);
INSERT INTO `sys_role_permission` VALUES ('9f8311ecccd44e079723098cf2ffe1cc', '1750a8fb3e6d90cb7957c02de1dc8e59', '693ce69af3432bd00be13c3971a57961', NULL);
INSERT INTO `sys_role_permission` VALUES ('aefc8c22e061171806e59cd222f6b7e1', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e8af452d8948ea49d37c934f5100ae6a', NULL);
INSERT INTO `sys_role_permission` VALUES ('d37ad568e26f46ed0feca227aa9c2ffa', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL);
INSERT INTO `sys_role_permission` VALUES ('d3fe195d59811531c05d31d8436f5c8b', '1750a8fb3e6d90cb7957c02de1dc8e59', 'e8af452d8948ea49d37c934f5100ae6a', NULL);
INSERT INTO `sys_role_permission` VALUES ('e3e922673f4289b18366bb51b6200f17', '52b0cf022ac4187b2a70dfa4f8b2d940', '45c966826eeff4c99b8f8ebfe74511fc', NULL);
INSERT INTO `sys_role_permission` VALUES ('f17ab8ad1e71341140857ef4914ef297', '21c5a3187763729408b40afb0d0fdfa8', '732d48f8e0abe99fe6a23d18a3171cd1', NULL);
INSERT INTO `sys_role_permission` VALUES ('fed41a4671285efb266cd404f24dd378', '52b0cf022ac4187b2a70dfa4f8b2d940', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `es_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推送内容',
  `es_send_time` datetime NULL DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) NULL DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_type`(`es_type`) USING BTREE,
  INDEX `index_receiver`(`es_receiver`) USING BTREE,
  INDEX `index_sendtime`(`es_send_time`) USING BTREE,
  INDEX `index_status`(`es_send_status`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `template_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_templatecode`(`template_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `birthday` datetime NULL DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) NULL DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `third_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方登录的唯一标识',
  `third_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方类型',
  `activiti_sync` tinyint(1) NULL DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `user_identity` tinyint(1) NULL DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '负责部门',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_user_name`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_work_no`(`work_no`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_phone`(`phone`) USING BTREE,
  UNIQUE INDEX `uniq_sys_user_email`(`email`) USING BTREE,
  INDEX `index_user_status`(`status`) USING BTREE,
  INDEX `index_user_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2cb6e8e9b9ac4ccca17a1c3020a118d4', 'student', '学生', 'e4e236c0add71a04', 'F8tqiPzu', '[]', NULL, 1, NULL, NULL, 'A01A05A01', 1, 0, NULL, NULL, 1, NULL, NULL, NULL, 'jeecg', '2020-04-21 17:41:46', 'admin', '2022-04-17 17:06:36', 1, '');
INSERT INTO `sys_user` VALUES ('d05cb1b6d5f64789a9d6f0e8ee1185db', 'teacher', '老师', '3b1b68508ed6b0f5', 'kafIgeoy', '[]', NULL, NULL, NULL, NULL, 'A01A06A01', 1, 0, NULL, NULL, 1, '101', '', NULL, 'admin', '2020-04-21 21:39:06', 'jeecg', '2020-04-22 11:34:52', 2, 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0');
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', '87c5ddef062b471a847cd9d3840318d1.jpg', '2018-12-05 00:00:00', 1, 'goodat@vip.qq.com', '18566666661', 'A01', 1, 0, NULL, NULL, 1, '1', '', NULL, NULL, '2038-06-21 17:54:10', 'admin', '2022-04-17 17:06:16', 2, 'c6d7cb4deeac411cb3384b1b31278596,da4a5578694b45a8a34411347e51d55f');

-- ----------------------------
-- Table structure for sys_user_agent
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_agent`;
CREATE TABLE `sys_user_agent`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '序号',
  `user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime NULL DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime NULL DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`user_name`) USING BTREE,
  INDEX `statux_index`(`status`) USING BTREE,
  INDEX `begintime_index`(`start_time`) USING BTREE,
  INDEX `endtime_index`(`end_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户代理人设置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_agent
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `index_depart_groupk_userid`(`user_id`) USING BTREE,
  INDEX `index_depart_groupkorgid`(`dep_id`) USING BTREE,
  INDEX `index_depart_groupk_uidanddid`(`user_id`, `dep_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO `sys_user_depart` VALUES ('1515617714561748993', '2cb6e8e9b9ac4ccca17a1c3020a118d4', '6cf9b69c6f3d47c998418ad8b2b4820c');
INSERT INTO `sys_user_depart` VALUES ('1515617714624663554', '2cb6e8e9b9ac4ccca17a1c3020a118d4', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0');
INSERT INTO `sys_user_depart` VALUES ('0c42ba309c2c4cad35836ec2336676fa', '42d153bffeea74f72a9c1697874fa4a7', '6d35e179cd814e3299bd588ea7daed3f');
INSERT INTO `sys_user_depart` VALUES ('1252532866262065153', 'a75d45a015c44384a04449ee80dc3503', 'c6d7cb4deeac411cb3384b1b31278596');
INSERT INTO `sys_user_depart` VALUES ('1f3a0267811327b9eca86b0cc2b956f3', 'bcbe1290783a469a83ae3bd8effe15d4', '5159cde220114246b045e574adceafe9');
INSERT INTO `sys_user_depart` VALUES ('1252803029632888833', 'd05cb1b6d5f64789a9d6f0e8ee1185db', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0');
INSERT INTO `sys_user_depart` VALUES ('1515617631313203201', 'e9ca23d68d884d4ebb19d07889727dae', 'c6d7cb4deeac411cb3384b1b31278596');
INSERT INTO `sys_user_depart` VALUES ('1515617631376117762', 'e9ca23d68d884d4ebb19d07889727dae', 'da4a5578694b45a8a34411347e51d55f');
INSERT INTO `sys_user_depart` VALUES ('ac52f23ae625eb6560c9227170b88166', 'f0019fdebedb443c98dcb17d88222c38', '57197590443c44f083d42ae24ef26a2c');
INSERT INTO `sys_user_depart` VALUES ('179660a8b9a122f66b73603799a10924', 'f0019fdebedb443c98dcb17d88222c38', '67fc001af12a4f9b8458005d3f19934a');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index2_groupuu_user_id`(`user_id`) USING BTREE,
  INDEX `index2_groupuu_ole_id`(`role_id`) USING BTREE,
  INDEX `index2_groupuu_useridandroleid`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('b3ffd9311a1ca296c44e2409b547384f', '01b802058ea94b978a2c96f4807f6b48', '1');
INSERT INTO `sys_user_role` VALUES ('1515617713718693890', '2cb6e8e9b9ac4ccca17a1c3020a118d4', '1252532277234982913');
INSERT INTO `sys_user_role` VALUES ('f2922a38ba24fb53749e45a0c459adb3', '439ae3e9bcf7418583fcd429cadb1d72', '1');
INSERT INTO `sys_user_role` VALUES ('ee45d0343ecec894b6886effc92cb0b7', '4d8fef4667574b24a9ccfedaf257810c', 'f6817f48af4fb3af11b9e8bf182f618b');
INSERT INTO `sys_user_role` VALUES ('1252532865448370177', 'a75d45a015c44384a04449ee80dc3503', '1236319727061430274');
INSERT INTO `sys_user_role` VALUES ('1252803028907274242', 'd05cb1b6d5f64789a9d6f0e8ee1185db', '1252532323347161090');
INSERT INTO `sys_user_role` VALUES ('1515617630386262018', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');

-- ----------------------------
-- Table structure for teaching_additional_work
-- ----------------------------
DROP TABLE IF EXISTS `teaching_additional_work`;
CREATE TABLE `teaching_additional_work`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `code_type` tinyint(4) NULL DEFAULT NULL COMMENT '代码类型',
  `work_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业名',
  `work_desc` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业描述',
  `work_cover` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业封面',
  `work_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业文件',
  `work_dept` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分配班级逗号分割',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态0 未发布 1发布',
  `work_document_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业资料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附加作业' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_additional_work
-- ----------------------------
INSERT INTO `teaching_additional_work` VALUES ('1478636409044680705', 'admin', '2022-01-05 15:56:06', 'admin', '2022-04-22 14:54:11', 'A01', 2, 'Scratch3班级作业', '班级1的作业', 'fc859277a2484353bbd401ad9729643d.jpg', '55246252c13741bfaa9bf8f525692ebb.sb3', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', 1, '4769b8f563224d1692a1f6273f88bf9b.pptx');

-- ----------------------------
-- Table structure for teaching_course
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course`;
CREATE TABLE `teaching_course`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `del_flag` int(1) NULL DEFAULT NULL COMMENT '删除标志',
  `course_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目名',
  `course_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '科目介绍',
  `course_icon` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目图标',
  `course_cover` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科目封面',
  `show_type` int(11) NULL DEFAULT NULL COMMENT '展示类型',
  `course_map` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程地图',
  `is_shared` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否共享课程',
  `order_num` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courseName`(`course_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_course
-- ----------------------------
INSERT INTO `teaching_course` VALUES ('1443420350180347906', 'admin', '2021-09-30 11:40:03', 'admin', '2022-04-22 14:39:26', 'A01', NULL, 'Scratch入门课', 'Scratch入门课程', NULL, 'a9a5f11099be41ed835b5afed91057ec.jpg', 2, NULL, 1, 1);
INSERT INTO `teaching_course` VALUES ('1468455261786087426', 'admin', '2021-12-08 13:39:51', 'admin', '2022-04-22 14:39:17', 'A01', NULL, 'Scratch进阶课', 'Scratch进阶课程', NULL, 'f336c87d32b44ede9876f32f9f3795b6.jpg', 1, NULL, 1, 2);

-- ----------------------------
-- Table structure for teaching_course_dept
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course_dept`;
CREATE TABLE `teaching_course_dept`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `dept_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程',
  `open_time` datetime NULL DEFAULT NULL COMMENT '课程开课时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_course_dept
-- ----------------------------
INSERT INTO `teaching_course_dept` VALUES ('1465594437010829313', 'admin', '2021-11-30 16:11:57', NULL, NULL, 'A01', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', '1443420350180347906', NULL);

-- ----------------------------
-- Table structure for teaching_course_unit
-- ----------------------------
DROP TABLE IF EXISTS `teaching_course_unit`;
CREATE TABLE `teaching_course_unit`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `del_flag` int(11) NULL DEFAULT NULL COMMENT '删除标识',
  `unit_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单元名称',
  `unit_intro` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单元简介',
  `unit_cover` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程封面',
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程外键ID',
  `course_video` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程视频',
  `course_video_source` tinyint(4) NULL DEFAULT 1,
  `course_case` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '课程作业案例',
  `course_ppt` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课件PPT',
  `course_work_type` int(11) NULL DEFAULT NULL COMMENT '作业类型',
  `course_work` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程作业',
  `course_work_answer` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程作业答案',
  `course_plan` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教案',
  `map_x` int(11) NULL DEFAULT NULL COMMENT '地图X坐标',
  `map_y` int(11) NULL DEFAULT NULL COMMENT '地图Y坐标',
  `order_num` int(11) NOT NULL DEFAULT 1 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courseId`(`course_id`) USING BTREE,
  INDEX `unitName`(`unit_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_course_unit
-- ----------------------------
INSERT INTO `teaching_course_unit` VALUES ('1443420554338095106', 'admin', '2021-09-30 11:40:52', 'admin', '2022-04-22 14:48:47', 'A01', NULL, '第一课', '第一课，Scratch是什么', 'cdde0d1286084ea981b10fff7246955c.jpg', '1443420350180347906', '48fb413ad3c94b1bbdaafae77184bd43.mp4', 1, '8d8e18ba87ed45a291238a44bb826e79.sb3', 'f3359d8cb4044440964af742ae4aaf24.pptx,02e545a1105c4e508361a4857c78e23e.zip', 2, '0e30dc8234e6429f8349776f6a863636.sb3', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for teaching_menu
-- ----------------------------
DROP TABLE IF EXISTS `teaching_menu`;
CREATE TABLE `teaching_menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `menu_type` int(11) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单)',
  `sort_no` double(8, 2) NULL DEFAULT NULL COMMENT '菜单排序',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `is_leaf` tinyint(1) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) NULL DEFAULT 0 COMMENT '删除状态 0正常 1已删除',
  `internal_or_external` tinyint(1) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  `is_route` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否路由',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否隐藏',
  `need_login` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否需要登录',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_prem_pid`(`parent_id`) USING BTREE,
  INDEX `index_prem_sort_no`(`sort_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前端菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_menu
-- ----------------------------
INSERT INTO `teaching_menu` VALUES ('1481554549722439681', '', '首页', '/home', 0, 1.00, 'home', 1, NULL, 'yuki', '2022-01-13 17:11:45', 'admin', '2022-04-01 17:25:44', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481554751841755137', '', '创作', '/cms', 0, 1.00, 'build', 0, NULL, 'yuki', '2022-01-13 17:12:33', 'admin', '2022-04-01 16:23:36', 0, 0, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481555191698415617', '1481554751841755137', '图形化编程', '/scratch3/index.html?scene=create', 1, 1.00, NULL, 1, NULL, 'yuki', '2022-01-13 17:14:18', 'admin', '2022-04-01 17:01:54', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1481959345444990978', '', '个人中心', '/account/center', 0, 3.00, NULL, 1, NULL, 'admin', '2022-01-14 20:00:16', 'admin', '2022-04-01 17:18:00', 0, 0, 1, 0, 1);
INSERT INTO `teaching_menu` VALUES ('1509808945860902914', '1481554751841755137', 'Python', '/python/index.html', 1, 2.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:38', 'admin', '2022-04-01 17:02:11', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1509809019143782402', '1481554751841755137', 'ScratchJr', '/scratchjr/home.html', 1, 1.00, NULL, 1, NULL, 'admin', '2022-04-01 16:24:55', 'admin', '2022-04-01 17:01:59', 0, 1, 1, 0, 0);
INSERT INTO `teaching_menu` VALUES ('1515601801083052034', '1481554751841755137', 'Blockly', '/blockly/index.html', 1, 4.00, NULL, 1, NULL, 'admin', '2022-04-17 16:03:22', NULL, NULL, 0, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for teaching_scratch_assets
-- ----------------------------
DROP TABLE IF EXISTS `teaching_scratch_assets`;
CREATE TABLE `teaching_scratch_assets`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `asset_type` tinyint(4) NOT NULL COMMENT '素材类型 1背景 2声音 3造型 4角色',
  `asset_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余 素材名',
  `asset_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '素材json数据',
  `md5_ext` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余 素材md5',
  `tags` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `udpate_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `assetNameIndex`(`asset_name`) USING BTREE,
  INDEX `md5extindex`(`md5_ext`(255)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_scratch_assets
-- ----------------------------
INSERT INTO `teaching_scratch_assets` VALUES ('1517398589515567106', 1, '少儿编程', '{\"name\":\"少儿编程\",\"tags\":[\"patterns\"],\"md5ext\":\"7aace28370994d3b8b9c3efe05e099f0.jpg\",\"assetId\":\"7aace28370994d3b8b9c3efe05e099f0\",\"dataFormat\":\"jpg\",\"rotationCenterY\":150,\"rotationCenterX\":269,\"bitmapResolution\":2}', '/internalapi/asset/7aace28370994d3b8b9c3efe05e099f0.jpg', 'patterns', 'admin', '2022-04-22 15:03:10', 'teacher', NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517398722898628609', 3, 'student', '{\"name\":\"student\",\"tags\":[\"people\"],\"md5ext\":\"24d693da2c5d4fe88c7cfe42581b7f73.png\",\"assetId\":\"24d693da2c5d4fe88c7cfe42581b7f73\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2}', '/internalapi/asset/24d693da2c5d4fe88c7cfe42581b7f73.png', 'people', 'admin', '2022-04-22 15:03:42', NULL, NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517398819669610497', 4, '角色', '{\"name\":\"角色\",\"tags\":[\"people\"],\"isStage\":false,\"variables\":{},\"blocks\":{},\"sounds\":[],\"costumes\":[{\"name\":\"student\",\"md5ext\":\"447430fd7e1842f98f629b0352b1c97c.png\",\"assetId\":\"447430fd7e1842f98f629b0352b1c97c\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2},{\"name\":\"teacher\",\"md5ext\":\"c784768cb9ad4e9c9d38d5ceddaaf5d3.png\",\"assetId\":\"c784768cb9ad4e9c9d38d5ceddaaf5d3\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2},{\"name\":\"worker\",\"md5ext\":\"1aa502aaec1d44d1b6f502b099ae48f5.png\",\"assetId\":\"1aa502aaec1d44d1b6f502b099ae48f5\",\"dataFormat\":\"png\",\"rotationCenterY\":100,\"rotationCenterX\":100,\"bitmapResolution\":2}]}', '/internalapi/asset/447430fd7e1842f98f629b0352b1c97c.png,/internalapi/asset/c784768cb9ad4e9c9d38d5ceddaaf5d3.png,/internalapi/asset/1aa502aaec1d44d1b6f502b099ae48f5.png', 'people', 'admin', '2022-04-22 15:04:05', 'teacher', NULL, 0);
INSERT INTO `teaching_scratch_assets` VALUES ('1517399701723353090', 2, '贝斯', '{\"name\":\"贝斯\",\"tags\":[\"percussion\"],\"md5ext\":\"e04a8cdd0ade4b30829c226e3c3cf396.wav\",\"assetId\":\"e04a8cdd0ade4b30829c226e3c3cf396\",\"dataFormat\":\"wav\",\"sampleCount\":61300,\"rate\":48000}', '/internalapi/asset/e04a8cdd0ade4b30829c226e3c3cf396.wav', 'percussion', 'teacher', '2022-04-22 15:07:35', 'teacher', NULL, 0);

-- ----------------------------
-- Table structure for teaching_work
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work`;
CREATE TABLE `teaching_work`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `course_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程ID',
  `work_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业名',
  `work_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作业类型',
  `work_file` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作文文件',
  `work_cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业封面',
  `work_status` int(11) NULL DEFAULT 0 COMMENT '作业状态',
  `star_num` int(11) NOT NULL DEFAULT 0 COMMENT '点赞次数',
  `collect_num` int(11) NOT NULL DEFAULT 0 COMMENT '收藏次数',
  `del_flag` int(11) NOT NULL DEFAULT 0 COMMENT '删除标识',
  `view_num` int(11) NOT NULL DEFAULT 0 COMMENT '查看次数',
  `additional_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workName`(`work_name`) USING BTREE,
  INDEX `courseId`(`course_id`) USING BTREE,
  INDEX `userId`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work
-- ----------------------------
INSERT INTO `teaching_work` VALUES ('1515608509045952514', 'admin', '2022-04-17 16:53:58', 'admin', '2022-04-17 16:59:28', 'A01', 'e9ca23d68d884d4ebb19d07889727dae', '', '管理员作品', '2', '1515614532653797378', '1515614533073227778', 1, 1, 0, 0, 6, '');
INSERT INTO `teaching_work` VALUES ('1517395583084597249', 'admin', '2022-04-22 14:51:13', 'admin', '2022-04-22 14:53:10', 'A03', 'e9ca23d68d884d4ebb19d07889727dae', '', 'Epic Ninja v1.12', '2', '1517395582551920641', '1517395581432041474', 3, 1, 0, 0, 4, '');
INSERT INTO `teaching_work` VALUES ('1517395625572896770', 'admin', '2022-04-22 14:51:23', 'admin', '2022-04-22 14:52:25', 'A03', 'e9ca23d68d884d4ebb19d07889727dae', '', '2 PacMan', '2', '1517395624650149889', '1517395625098940418', 3, 0, 0, 0, 0, '');
INSERT INTO `teaching_work` VALUES ('1517395658737258497', 'admin', '2022-04-22 14:51:31', 'admin', '2022-04-22 14:52:16', 'A03', 'e9ca23d68d884d4ebb19d07889727dae', '', '新作品', '2', '1517395657600602113', '1517395655587336193', 3, 0, 0, 0, 0, '');
INSERT INTO `teaching_work` VALUES ('1517395755046866945', 'admin', '2022-04-22 14:51:54', 'teacher', '2022-04-22 15:10:55', 'A03', 'e9ca23d68d884d4ebb19d07889727dae', '', 'Glitchy Logo Tutorial', '2', '1517395754593882113', '1517395751389433858', 3, 0, 0, 0, 8, '');
INSERT INTO `teaching_work` VALUES ('1517396542489694209', 'student', '2022-04-22 14:55:02', 'teacher', '2022-04-22 15:02:27', 'A01A05A01', '2cb6e8e9b9ac4ccca17a1c3020a118d4', '', 'ScrollingDemo', '2', '1517396541818605569', '1517396540770029569', 3, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for teaching_work_comment
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work_comment`;
CREATE TABLE `teaching_work_comment`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业ID',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workId`(`work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work_comment
-- ----------------------------
INSERT INTO `teaching_work_comment` VALUES ('1517396058051776513', 'admin', '2022-04-22 14:53:06', NULL, NULL, 'A03', '1517395583084597249', '这个作品太强了！', 'e9ca23d68d884d4ebb19d07889727dae');

-- ----------------------------
-- Table structure for teaching_work_correct
-- ----------------------------
DROP TABLE IF EXISTS `teaching_work_correct`;
CREATE TABLE `teaching_work_correct`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业ID',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  `comment` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评语',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `workId`(`work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teaching_work_correct
-- ----------------------------
INSERT INTO `teaching_work_correct` VALUES ('1515613512401932290', 'admin', '2022-04-17 16:49:54', NULL, NULL, 'A01', '1515608509045952514', 5, '不错');
INSERT INTO `teaching_work_correct` VALUES ('1517395806435479553', 'admin', '2022-04-22 14:52:06', NULL, NULL, 'A03', '1517395755046866945', 5, '很棒');
INSERT INTO `teaching_work_correct` VALUES ('1517395886576046082', 'admin', '2022-04-22 14:52:25', NULL, NULL, 'A03', '1517395625572896770', 5, '厉害');
INSERT INTO `teaching_work_correct` VALUES ('1517395915856482305', 'admin', '2022-04-22 14:52:32', NULL, NULL, 'A03', '1517395583084597249', 5, '太神奇了');
INSERT INTO `teaching_work_correct` VALUES ('1517398409009500161', 'teacher', '2022-04-22 15:02:27', NULL, NULL, 'A01A06A01', '1517396542489694209', 5, NULL);

-- ----------------------------
-- Table structure for wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `wechat_user`;
CREATE TABLE `wechat_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联用户ID',
  `open_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `union_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'unionid',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别',
  `city` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `province` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `county` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `qr_scene` int(11) NULL DEFAULT NULL COMMENT '二维码场景',
  `qr_scene_str` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码场景',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '组ID',
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属部门',
  `app_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信APPID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `wechat_user_open_id_uindex`(`open_id`) USING BTREE,
  INDEX `wechat_user_union_id_index`(`union_id`) USING BTREE,
  INDEX `wechat_user_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wechat_user
-- ----------------------------
INSERT INTO `wechat_user` VALUES ('1236921740769107969', NULL, 'oJgzvv5A0yUkNGprRqd7l4OhVJLg', 'ooKi0v9gOeFDqMA7e3hRi-7Mee9o', '创客*赵文栋', NULL, '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/LbPiaLiaWH3Zx4xXOicj9LLfviasiaHcj8Jj27ibbFCNmTbnAcPceA2IvecgbxIC0yD26wLxyDzj9EtiaZNicqnpfZ8iaNg/132', NULL, NULL, NULL, NULL, '2020-03-09 15:48:18', NULL, '2020-03-09 22:33:17', NULL, 'wx2154aa8b958db927');
INSERT INTO `wechat_user` VALUES ('1236926173020168194', NULL, 'oJgzvv2z2Ern6UccZy007CwPj7JU', 'ooKi0vweMEO8vi_4W3mvzDo8Vn8E', 'Evil Lord', NULL, '菏泽', '山东', '菏泽', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGKnRsqeCd7Seuqt6vWKOicbQCkdGXSiaLYpPrm4pZwKWibTZdibpPia7hic7k3DQTjAlxIEX36lCicqD3g/132', NULL, NULL, NULL, NULL, '2020-03-09 16:05:55', 'admin', '2020-03-09 18:01:30', NULL, 'wx2154aa8b958db927');
INSERT INTO `wechat_user` VALUES ('1236943560297684994', '1236947419388825601', 'oJgzvv7Q58w_l7KSLSFz8xIlv_cM', 'ooKi0v9p1LOLeW1CDlex1i1Wvi6M', '程宇', NULL, '金山', '上海', '金山', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLUNenNGYxS1TIj3XDBTaIxk3UWQ78CiadVFvplFkeT1WqUNxZ5FZibfy3iaPGIpqXIibXNlXibcMIcUSw/132', NULL, NULL, NULL, NULL, '2020-03-09 17:15:00', NULL, '2020-03-09 17:30:20', NULL, 'wx2154aa8b958db927');
INSERT INTO `wechat_user` VALUES ('1236951423414030338', NULL, 'oJgzvv9UJ2T7e6a-pLR17ol3D0i8', 'ooKi0v5b01XJgrmCtAKCa0vsNiXU', '请假', NULL, '徐汇', '上海', '徐汇', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKQNUgjtVPmh2SjWGHghzSSPl0ONy26LfDfbWsSrNdecQXibv5A1YVjhgoTL8ON0WdDabcoibS0LdJw/132', NULL, NULL, NULL, NULL, '2020-03-09 17:46:15', NULL, '2020-03-09 17:46:56', NULL, 'wx2154aa8b958db927');
INSERT INTO `wechat_user` VALUES ('1237023690286288897', NULL, 'oJgzvv7XGJkPwZ1onrZ8vEFo5cfo', 'ooKi0v5qdNUy024SN4JBuDmg46Hw', '毓', NULL, '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erFX7Vn1goXrtxOjJEx0VyUmRJ5DicicRaXoibBCNqibwvUFSicoFFA9reZXjWuiapoeicp1pOsGkuYicSUXg/132', NULL, NULL, NULL, NULL, '2020-03-09 22:33:25', NULL, NULL, NULL, 'wx2154aa8b958db927');

SET FOREIGN_KEY_CHECKS = 1;
