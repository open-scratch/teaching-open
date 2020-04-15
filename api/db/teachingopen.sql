-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-04-15 11:39:07
-- 服务器版本： 5.5.61-log
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teachingopen`
--

-- --------------------------------------------------------

--
-- 表的结构 `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10,3) DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10,2) DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `demo`
--

INSERT INTO `demo` (`id`, `name`, `key_word`, `punch_time`, `salary_money`, `bonus_money`, `sex`, `age`, `birthday`, `email`, `content`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`) VALUES
('08375a2dff80e821d5a158dd98302b23', '导入小虎', NULL, NULL, NULL, NULL, '2', 28, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:42:57', NULL, NULL, NULL),
('1c2ba51b29a42d9de02bbd708ea8121a', '777777', '777', '2018-12-07 19:43:17', NULL, NULL, NULL, 7, '2018-12-07', NULL, NULL, NULL, NULL, 'admin', '2019-02-21 18:26:04', NULL),
('1dc29e80be14d1400f165b5c6b30c707', 'zhang daihao', NULL, NULL, NULL, NULL, '2', NULL, NULL, 'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL),
('304e651dc769d5c9b6e08fb30457a602', '小白兔', NULL, NULL, NULL, NULL, '2', 28, NULL, NULL, NULL, 'scott', '2019-01-19 13:12:53', 'qinfeng', '2019-01-19 13:13:12', NULL),
('4', 'Sandy', '开源，很好', '2018-12-15 00:00:00', NULL, NULL, '2', 21, '2018-12-15', 'test4@baomidou.com', '聪明00', NULL, NULL, 'admin', '2019-02-25 16:29:27', NULL),
('42c08b1a2e5b2a96ffa4cc88383d4b11', '秦50090', NULL, '2019-01-05 20:33:31', NULL, NULL, NULL, 28, '2019-01-05', NULL, NULL, 'admin', '2019-01-19 20:33:54', 'admin', '2019-01-19 20:34:29', NULL),
('4436302a0de50bb83025286bc414d6a9', 'zhang daihao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zhangdaiscott@163.com', NULL, 'admin', '2019-01-19 15:39:04', NULL, NULL, NULL),
('4981637bf71b0c1ed1365241dfcfa0ea', '小虎', NULL, NULL, NULL, NULL, '2', 28, NULL, NULL, NULL, 'scott', '2019-01-19 13:12:53', 'qinfeng', '2019-01-19 13:13:12', NULL),
('5c16e6a5c31296bcd3f1053d5d118815', '导入zhangdaiscott', NULL, NULL, NULL, NULL, '1', NULL, '2019-01-03', NULL, NULL, 'jeecg-boot', '2019-04-10 11:42:57', 'admin', '2019-05-19 18:35:51', NULL),
('7', 'zhangdaiscott', NULL, NULL, NULL, NULL, '1', NULL, '2019-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('73bc58611012617ca446d8999379e4ac', '郭靖11a', '777', '2018-12-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:16:39', NULL, NULL, NULL),
('917e240eaa0b1b2d198ae869b64a81c3', 'zhang daihao', NULL, NULL, NULL, NULL, '2', 0, '2018-11-29', 'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL),
('94420c5d8fc4420dde1e7196154b3a24', '秦111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scott', '2019-01-19 12:54:58', 'qinfeng', '2019-01-19 13:12:10', NULL),
('95740656751c5f22e5932ab0ae33b1e4', '杨康22a', '奸臣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:16:39', NULL, NULL, NULL),
('b86897900c770503771c7bb88e5d1e9b', 'scott1', '开源、很好、hello', NULL, NULL, NULL, '1', NULL, NULL, 'zhangdaiscott@163.com', NULL, 'scott', '2019-01-19 12:22:34', NULL, NULL, NULL),
('c0b7c3de7c62a295ab715943de8a315d', '秦风555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2019-01-19 13:18:30', 'admin', '2019-01-19 13:18:50', NULL),
('c28fa8391ef81d6fabd8bd894a7615aa', '小麦', NULL, NULL, NULL, NULL, '2', NULL, NULL, 'zhangdaiscott@163.com', NULL, 'jeecg-boot', '2019-04-04 17:18:09', NULL, NULL, NULL),
('c2c0d49e3c01913067cf8d1fb3c971d2', 'zhang daihao', NULL, NULL, NULL, NULL, '2', NULL, NULL, 'zhangdaiscott@163.com', NULL, 'admin', '2019-01-19 23:37:18', 'admin', '2019-01-21 16:49:06', NULL),
('c96279c666b4b82e3ef1e4e2978701ce', '报名时间', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:00:52', NULL, NULL, NULL),
('d24668721446e8478eeeafe4db66dcff', 'zhang daihao999', NULL, NULL, NULL, NULL, '1', NULL, NULL, 'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL),
('eaa6c1116b41dc10a94eae34cf990133', 'zhang daihao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zhangdaiscott@163.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ffa9da1ad40632dfcabac51d766865bd', '秦999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2019-01-19 23:36:34', 'admin', '2019-02-14 17:30:43', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_monthly_growth_analysis`
--

CREATE TABLE IF NOT EXISTS `jeecg_monthly_growth_analysis` (
  `id` int(11) NOT NULL,
  `year` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL COMMENT '月份',
  `main_income` decimal(18,2) DEFAULT '0.00' COMMENT '佣金/主营收入',
  `other_income` decimal(18,2) DEFAULT '0.00' COMMENT '其他收入'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `jeecg_monthly_growth_analysis`
--

INSERT INTO `jeecg_monthly_growth_analysis` (`id`, `year`, `month`, `main_income`, `other_income`) VALUES
(1, '2018', '1月', '114758.90', '4426054.19'),
(2, '2018', '2月', '8970734.12', '1230188.67'),
(3, '2018', '3月', '26755421.23', '2048836.84'),
(4, '2018', '4月', '2404990.63', '374171.44'),
(5, '2018', '5月', '5450793.02', '502306.10'),
(6, '2018', '6月', '17186212.11', '1375154.97'),
(7, '2018', '7月', '579975.67', '461483.99'),
(8, '2018', '8月', '1393590.06', '330403.76'),
(9, '2018', '9月', '735761.21', '1647474.92'),
(10, '2018', '10月', '1670442.44', '3423368.33'),
(11, '2018', '11月', '2993130.34', '3552024.00'),
(12, '2018', '12月', '4206227.26', '3645614.92'),
(13, '2019', '1月', '483834.66', '418046.77'),
(14, '2019', '2月', '11666578.65', '731352.20'),
(15, '2019', '3月', '27080982.08', '1878538.81'),
(16, '2019', '4月', '0.00', '0.00'),
(17, '2019', '5月', '0.00', '0.00'),
(18, '2019', '6月', '0.00', '0.00'),
(19, '2019', '7月', '0.00', '0.00'),
(20, '2019', '8月', '0.00', '0.00'),
(21, '2019', '9月', '0.00', '0.00'),
(22, '2019', '10月', '0.00', '0.00'),
(23, '2019', '11月', '0.00', '0.00'),
(24, '2019', '12月', '0.00', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_customer`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_customer` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '客户名',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `idcard` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `idcard_pic` varchar(500) DEFAULT NULL COMMENT '身份证扫描件',
  `telphone` varchar(32) DEFAULT NULL COMMENT '电话1',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `jeecg_order_customer`
--

INSERT INTO `jeecg_order_customer` (`id`, `name`, `sex`, `idcard`, `idcard_pic`, `telphone`, `order_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('15538561502720', '3333', '1', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL),
('15538561512681', '3332333', '2', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:12'),
('15538561550142', '4442', '2', '', NULL, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL),
('15541168497342', '444', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('15541168499553', '5555', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('15541169272690', '小王1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15541169288141', '效力1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15541169441372', '小红1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15543695362380', '1111', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('15543695397221', '222', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('15543695398992', '333', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('18dc5eb1068ccdfe90e358951ca1a3d6', 'dr2', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL),
('195d280490fe88ca1475512ddcaf2af9', '12', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('217a2bf83709775d2cd85bf598392327', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('22bc052ae53ed09913b946abba93fa89', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('23bafeae88126c3bf3322a29a04f0d5e', 'x秦风', NULL, NULL, NULL, NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('25c4a552c6843f36fad6303bfa99a382', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('2d32144e2bee63264f3f16215c258381', '33333', '2', NULL, NULL, NULL, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL),
('2d43170d6327f941bd1a017999495e25', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('2e5f62a8b6e0a0ce19b52a6feae23d48', '3', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('313abf99558ac5f13ecca3b87e562ad1', 'scott', '2', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL),
('34a1c5cf6cee360ed610ed0bed70e0f9', '导入秦风', NULL, NULL, NULL, NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('3c87400f8109b4cf43c5598f0d40e34d', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('40964bcbbecb38e5ac15e6d08cf3cd43', '233', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('41e3dee0b0b6e6530eccb7fbb22fd7a3', '4555', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('4808ae8344c7679a4a2f461db5dc3a70', '44', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('4b6cef12f195fad94d57279b2241770d', 'dr12', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL),
('524e695283f8e8c256cc24f39d6d8542', '小王', '2', '370285198604033222', NULL, '18611788674', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL),
('57c2a8367db34016114cbc9fa368dba0', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('5df36a1608b8c7ac99ad9bc408fe54bf', '4', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('6b694e9ba54bb289ae9cc499e40031e7', 'x秦风', '1', NULL, NULL, NULL, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL),
('6c6fd2716c2dcd044ed03c2c95d261f8', '李四', '2', '370285198602058833', '', '18611788676', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('742d008214dee0afff2145555692973e', '秦风', '1', '370285198602058822', NULL, '18611788676', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('7469c3e5d371767ff90a739d297689b5', '导入秦风', '2', NULL, NULL, NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:02'),
('7a96e2c7b24847d4a29940dbc0eda6e5', 'drscott', NULL, NULL, NULL, NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('7f5a40818e225ee18bda6da7932ac5f9', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('8011575abfd7c8085e71ff66df1124b9', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('8404f31d7196221a573c9bd6c8f15003', '小张', '1', '370285198602058211', NULL, '18611788676', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL),
('859020e10a2f721f201cdbff78cf7b9f', 'scott', NULL, NULL, NULL, NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('8cc3c4d26e3060975df3a2adb781eeb4', 'dr33', NULL, NULL, NULL, NULL, 'b2feb454e43c46b2038768899061e464', 'jeecg-boot', '2019-04-04 17:23:09', NULL, NULL),
('8d1725c23a6a50685ff0dedfd437030d', '4', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('933cae3a79f60a93922d59aace5346ce', '小王', NULL, '370285198604033222', NULL, '18611788674', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('9bdb5400b709ba4eaf3444de475880d7', 'dr22', NULL, NULL, NULL, NULL, '22c17790dcd04b296c4a2a089f71895f', 'jeecg-boot', '2019-04-04 17:23:09', NULL, NULL),
('9f87677f70e5f864679314389443a3eb', '33', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('a2c2b7101f75c02deb328ba777137897', '44', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('ab4d002dc552c326147e318c87d3bed4', 'ddddd', '1', '370285198604033222', NULL, '18611755848', '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:47', 'admin', '2019-04-04 17:31:17'),
('ad116f722a438e5f23095a0b5fcc8e89', 'dr秦风', NULL, NULL, NULL, NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('b1ba147b75f5eaa48212586097fc3fd1', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('b43bf432c251f0e6b206e403b8ec29bc', 'lisi', NULL, NULL, NULL, NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('bcdd300a7d44c45a66bdaac14903c801', '33', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('beb983293e47e2dc1a9b3d649aa3eb34', 'ddd3', NULL, NULL, NULL, NULL, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL),
('c219808196406f1b8c7f1062589de4b5', '44', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('c8ed061d4b27c0c7a64e100f2b1c8ab5', '张经理', '2', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('cc5de4af7f06cd6d250965ebe92a0395', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('cf8817bd703bf7c7c77a2118edc26cc7', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('d72b26fae42e71270fce2097a88da58a', '导入scott', NULL, 'www', NULL, NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:05'),
('dbdc60a6ac1a8c43f24afee384039b68', 'xiaowang', NULL, NULL, NULL, NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('dc5883b50466de94d900919ed96d97af', '33', '1', '370285198602058823', NULL, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('deeb73e553ad8dc0a0b3cfd5a338de8e', '3333', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('e2570278bf189ac05df3673231326f47', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('e39cb23bb950b2bdedfc284686c6128a', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('e46fe9111a9100844af582a18a2aa402', '1', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('ee7af0acb9beb9bf8d8b3819a8a7fdc3', '2', NULL, NULL, NULL, NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('f5d2605e844192d9e548f9bd240ac908', '小张', NULL, '370285198602058211', NULL, '18611788676', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('f6db6547382126613a3e46e7cd58a5f2', '导入scott', NULL, NULL, NULL, NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_main`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_main` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10,3) DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `jeecg_order_main`
--

INSERT INTO `jeecg_order_main` (`id`, `order_code`, `ctype`, `order_date`, `order_money`, `content`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('163e2efcbc6d7d54eb3f8a137da8a75a', 'B100', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('3a867ebf2cebce9bae3f79676d8d86f3', '导入B100', '2222', NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:13'),
('4bca3ea6881d39dbf67ef1e42c649766', '1212', NULL, NULL, NULL, NULL, 'admin', '2019-04-03 10:55:43', NULL, NULL),
('4cba137333127e8e31df7ad168cc3732', '青岛订单A0001', '2', '2019-04-03 10:56:07', NULL, NULL, 'admin', '2019-04-03 10:56:11', NULL, NULL),
('54e739bef5b67569c963c38da52581ec', 'NC911', '1', '2019-02-18 09:58:51', 40.000, NULL, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59'),
('5d6e2b9e44037526270b6206196f6689', 'N333', NULL, '2019-04-04 17:19:11', NULL, '聪明00', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('6a719071a29927a14f19482f8693d69a', 'c100', NULL, NULL, 5000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('8ab1186410a65118c4d746eb085d3bed', '导入400', '1', '2019-02-18 09:58:51', 40.000, NULL, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59'),
('9a57c850e4f68cf94ef7d8585dbaf7e6', 'halou100dd', NULL, '2019-04-04 17:30:32', NULL, NULL, 'admin', '2019-04-04 17:30:41', 'admin', '2019-04-04 17:31:08'),
('a2cce75872cc8fcc47f78de9ffd378c2', '导入B100', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('b190737bd04cca8360e6f87c9ef9ec4e', 'B0018888', '1', NULL, NULL, NULL, 'admin', '2019-02-15 18:39:29', 'admin', '2019-02-15 18:39:37'),
('d908bfee3377e946e59220c4a4eb414a', 'SSSS001', NULL, NULL, 599.000, NULL, 'admin', '2019-04-01 15:43:03', 'admin', '2019-04-01 16:26:52'),
('e73434dad84ebdce2d4e0c2a2f06d8ea', '导入200', NULL, NULL, 3000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('eb13ab35d2946a2b0cfe3452bca1e73f', 'BJ9980', '1', NULL, 90.000, NULL, 'admin', '2019-02-16 17:36:42', 'admin', '2019-02-16 17:46:16'),
('f618a85b17e2c4dd58d268220c8dd9a1', 'N001', NULL, '2019-04-01 19:09:02', 2222.000, NULL, 'admin', '2019-04-01 19:09:47', 'admin', '2019-04-01 19:10:00'),
('f71f7f8930b5b6b1703d9948d189982b', 'BY911', NULL, '2019-04-06 19:08:39', NULL, NULL, 'admin', '2019-04-01 16:36:02', 'admin', '2019-04-01 16:36:08'),
('f8889aaef6d1bccffd98d2889c0aafb5', 'A100', NULL, '2018-10-10 00:00:00', 6000.000, NULL, 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('fe81ee5d19bbf9eef2066d4f29dfbe0f', 'uuuu', NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_order_ticket`
--

CREATE TABLE IF NOT EXISTS `jeecg_order_ticket` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `ticket_code` varchar(100) NOT NULL COMMENT '航班号',
  `tickect_date` datetime DEFAULT NULL COMMENT '航班时间',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `jeecg_order_ticket`
--

INSERT INTO `jeecg_order_ticket` (`id`, `ticket_code`, `tickect_date`, `order_id`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('0f0e3a40a215958f807eea08a6e1ac0a', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('0fa3bd0bbcf53650c0bb3c0cac6d8cb7', 'ffff', '2019-02-21 00:00:00', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', NULL, NULL),
('14221afb4f5f749c1deef26ac56fdac3', '33', '2019-03-09 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('15538561502730', '222', NULL, '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', NULL, NULL),
('15538561526461', '2244', '2019-03-29 00:00:00', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:26'),
('15541168478913', 'hhhhh', NULL, 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('15541169272810', '22211', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15541169302331', '333311', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15541169713092', '333311', '2019-04-01 19:09:47', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', NULL, NULL),
('15542604293170', 'c', NULL, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL),
('15542604374431', 'd', NULL, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', NULL, NULL),
('15543695362380', 'ccc2', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('15543695381291', 'cccc1', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('15543695740352', 'dddd', NULL, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', NULL, NULL),
('18905bc89ee3851805aab38ed3b505ec', '44', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('1f809cbd26f4e574697e1c10de575d72', 'A100', NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('21051adb51529bdaa8798b5a3dd7f7f7', 'C10029', '2019-02-20 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('269576e766b917f8b6509a2bb0c4d4bd', 'A100', NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('2d473ffc79e5b38a17919e15f8b7078e', '66', '2019-03-29 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('3655b66fca5fef9c6aac6d70182ffda2', 'AA123', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', NULL, NULL),
('365d5919155473ade45840fd626c51a9', 'dddd', '2019-04-04 17:25:29', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL),
('4889a782e78706ab4306a925cfb163a5', 'C34', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:35:00', 'admin', '2019-04-01 16:35:07'),
('48d385796382cf87fa4bdf13b42d9a28', '导入A100', NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('541faed56efbeb4be9df581bd8264d3a', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('57a27a7dfd6a48e7d981f300c181b355', '6', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('5ce4dc439c874266e42e6c0ff8dc8b5c', '导入A100', NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('5f16e6a64ab22a161bd94cc205f2c662', '222', '2019-02-23 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL),
('645a06152998a576c051474157625c41', '88', '2019-04-04 17:25:31', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL),
('6e3562f2571ea9e96b2d24497b5f5eec', '55', '2019-03-23 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('8fd2b389151568738b1cc4d8e27a6110', '导入A100', NULL, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('93f1a84053e546f59137432ff5564cac', '55', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('969ddc5d2e198d50903686917f996470', 'A10029', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('96e7303a8d22a5c384e08d7bcf7ac2bf', 'A100', NULL, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('9e8a3336f6c63f558f2b68ce2e1e666e', 'dddd', NULL, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:55', NULL, NULL),
('a28db02c810c65660015095cb81ed434', 'A100', NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('b217bb0e4ec6a45b6cbf6db880060c0f', 'A100', NULL, '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('ba708df70bb2652ed1051a394cfa0bb3', '333', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('beabbfcb195d39bedeeafe8318794562', 'A1345', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:04', NULL, NULL),
('bf450223cb505f89078a311ef7b6ed16', '777', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('c06165b6603e3e1335db187b3c841eef', 'fff', NULL, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:58', NULL, NULL),
('c113136abc26ace3a6da4e41d7dc1c7e', '44', '2019-03-15 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('c1abdc2e30aeb25de13ad6ee3488ac24', '77', '2019-03-22 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('c23751a7deb44f553ce50a94948c042a', '33', '2019-03-09 00:00:00', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', NULL, NULL),
('c64547666b634b3d6a0feedcf05f25ce', 'C10019', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', NULL, NULL),
('c8b8d3217f37da78dddf711a1f7da485', 'A100', NULL, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('cab691c1c1ff7a6dfd7248421917fd3c', 'A100', NULL, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('cca10a9a850b456d9b72be87da7b0883', '77', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('d2fbba11f4814d9b1d3cb1a3f342234a', 'C10019', '2019-02-18 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('d746c1ed956a562e97eef9c6faf94efa', '111', '2019-02-01 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', NULL, NULL),
('dbdb07a16826808e4276e84b2aa4731a', '导入A100', NULL, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', NULL, NULL),
('e7075639c37513afc0bbc4bf7b5d98b9', '88', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('fa759dc104d0371f8aa28665b323dab6', '888', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL),
('ff197da84a9a3af53878eddc91afbb2e', '33', NULL, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeecg_project_nature_income`
--

CREATE TABLE IF NOT EXISTS `jeecg_project_nature_income` (
  `id` int(11) NOT NULL,
  `nature` varchar(50) NOT NULL COMMENT '项目性质',
  `insurance_fee` decimal(18,2) DEFAULT '0.00' COMMENT '保险经纪佣金费',
  `risk_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '风险咨询费',
  `evaluation_fee` decimal(18,2) DEFAULT '0.00' COMMENT '承保公估评估费',
  `insurance_evaluation_fee` decimal(18,2) DEFAULT '0.00' COMMENT '保险公估费',
  `bidding_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '投标咨询费',
  `interol_consulting_fee` decimal(18,2) DEFAULT '0.00' COMMENT '内控咨询费'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `jeecg_project_nature_income`
--

INSERT INTO `jeecg_project_nature_income` (`id`, `nature`, `insurance_fee`, `risk_consulting_fee`, `evaluation_fee`, `insurance_evaluation_fee`, `bidding_consulting_fee`, `interol_consulting_fee`) VALUES
(1, '市场化-电商业务', '4865.41', '0.00', '0.00', '0.00', '0.00', '0.00'),
(2, '统筹型', '35767081.88', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, '市场化-非股东', '1487045.35', '0.00', '0.00', '0.00', '0.00', '0.00'),
(4, '市场化-参控股', '382690.56', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, '市场化-员工福利', '256684.91', '0.00', '0.00', '0.00', '0.00', '0.00'),
(6, '市场化-再保险', '563451.03', '0.00', '0.00', '0.00', '0.00', '0.00'),
(7, '市场化-海外业务', '760576.25', '770458.75', '0.00', '0.00', '0.00', '0.00'),
(8, '市场化-风险咨询', '910183.93', '0.00', '0.00', '0.00', '0.00', '226415.09');

-- --------------------------------------------------------

--
-- 表的结构 `joa_demo`
--

CREATE TABLE IF NOT EXISTS `joa_demo` (
  `id` varchar(32) DEFAULT NULL COMMENT 'ID',
  `name` varchar(100) DEFAULT NULL COMMENT '请假人',
  `days` int(11) DEFAULT NULL COMMENT '请假天数',
  `begin_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '请假结束时间',
  `reason` varchar(500) DEFAULT NULL COMMENT '请假原因',
  `bpm_status` varchar(50) DEFAULT '1' COMMENT '流程状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程测试';

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_button`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_button` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) DEFAULT NULL COMMENT '按钮编码',
  `BUTTON_ICON` varchar(20) DEFAULT NULL COMMENT '按钮图标',
  `BUTTON_NAME` varchar(50) DEFAULT NULL COMMENT '按钮名称',
  `BUTTON_STATUS` varchar(2) DEFAULT NULL COMMENT '按钮状态',
  `BUTTON_STYLE` varchar(20) DEFAULT NULL COMMENT '按钮样式',
  `EXP` varchar(255) DEFAULT NULL COMMENT '表达式',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID',
  `OPT_TYPE` varchar(20) DEFAULT NULL COMMENT '按钮类型',
  `ORDER_NUM` int(11) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgform_button`
--

INSERT INTO `onl_cgform_button` (`ID`, `BUTTON_CODE`, `BUTTON_ICON`, `BUTTON_NAME`, `BUTTON_STATUS`, `BUTTON_STYLE`, `EXP`, `CGFORM_HEAD_ID`, `OPT_TYPE`, `ORDER_NUM`) VALUES
('a45bc1c6fba96be6b0c91ffcdd6b54aa', 'genereate_person_config', 'icon-edit', '生成配置', '1', 'link', NULL, 'e2faf977fdaf4b25a524f58c2441a51c', 'js', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_enhance_java`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_enhance_java` (
  `ID` varchar(36) NOT NULL,
  `BUTTON_CODE` varchar(32) DEFAULT NULL COMMENT '按钮编码',
  `CG_JAVA_TYPE` varchar(32) NOT NULL COMMENT '类型',
  `CG_JAVA_VALUE` varchar(200) NOT NULL COMMENT '数值',
  `CGFORM_HEAD_ID` varchar(32) NOT NULL COMMENT '表单ID',
  `ACTIVE_STATUS` varchar(2) DEFAULT '1' COMMENT '生效状态',
  `EVENT` varchar(10) NOT NULL DEFAULT 'end' COMMENT '事件状态(end:结束，start:开始)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_enhance_js`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_enhance_js` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CG_JS` longtext COMMENT 'JS增强内容',
  `CG_JS_TYPE` varchar(20) DEFAULT NULL COMMENT '类型',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgform_enhance_js`
--

INSERT INTO `onl_cgform_enhance_js` (`ID`, `CG_JS`, `CG_JS_TYPE`, `CONTENT`, `CGFORM_HEAD_ID`) VALUES
('274b5d741a0262d3411958f0c465c5f0', 'genereate_person_config(row){\nconsole.log(''选择'',row)\nalert(row.name + ''，个人积分配置生成成功！'');\n}', 'list', NULL, 'e2faf977fdaf4b25a524f58c2441a51c'),
('2cbaf25f1edb620bea2d8de07f8233a1', 'air_china_post_materiel_item_onlChange(){\n    return {\n        wl_name(){\n           \n            let id = event.row.id\n            let cnum = event.row.num\n            let value = event.value\n            let targrt = event.target\n            let columnKey = event.column.key\n           let nval = 200*cnum\n           console.log(''row'',event.row);\n           console.log(''cnum'',cnum);\n           let otherValues = {''jifen'': nval}\n              \n                that.triggleChangeValues(targrt,id,otherValues)\n\n        }\n    }\n}', 'form', NULL, 'e67d26b610dd414c884c4dbb24e71ce3'),
('35d4ef464e5e8c87c9aa82ea89215fc1', '', 'list', NULL, 'e67d26b610dd414c884c4dbb24e71ce3'),
('90394fbc3d48978cc0937bc56f2d5370', '', 'list', NULL, 'deea5a8ec619460c9245ba85dbc59e80'),
('f405e10ba82d8ad5eec378b624cd33bf', 'created(){\nconsole.log("init")\n}', 'list', NULL, 'b5f6dafc26d7438a8ec64a1a101dea5e');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_enhance_sql`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_enhance_sql` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `BUTTON_CODE` varchar(50) DEFAULT NULL COMMENT '按钮编码',
  `CGB_SQL` longtext COMMENT 'SQL内容',
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL COMMENT 'Sql名称',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CGFORM_HEAD_ID` varchar(32) DEFAULT NULL COMMENT '表单ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_field`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_field` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `cgform_head_id` varchar(32) NOT NULL COMMENT '表ID',
  `db_field_name` varchar(32) NOT NULL COMMENT '字段名字',
  `db_field_txt` varchar(200) DEFAULT NULL COMMENT '字段备注',
  `db_field_name_old` varchar(32) DEFAULT NULL COMMENT '原字段名',
  `db_is_key` tinyint(1) DEFAULT NULL COMMENT '是否主键 0否 1是',
  `db_is_null` tinyint(1) DEFAULT NULL COMMENT '是否允许为空0否 1是',
  `db_type` varchar(32) NOT NULL COMMENT '数据库字段类型',
  `db_length` int(11) NOT NULL COMMENT '数据库字段长度',
  `db_point_length` int(11) DEFAULT NULL COMMENT '小数点',
  `db_default_val` varchar(20) DEFAULT NULL COMMENT '表字段默认值',
  `dict_field` varchar(100) DEFAULT NULL COMMENT '字典code',
  `dict_table` varchar(100) DEFAULT NULL COMMENT '字典表',
  `dict_text` varchar(100) DEFAULT NULL COMMENT '字典Text',
  `field_show_type` varchar(10) DEFAULT NULL COMMENT '表单控件类型',
  `field_href` varchar(200) DEFAULT NULL COMMENT '跳转URL',
  `field_length` int(11) DEFAULT NULL COMMENT '表单控件长度',
  `field_valid_type` varchar(300) DEFAULT NULL COMMENT '表单字段校验规则',
  `field_must_input` varchar(2) DEFAULT NULL COMMENT '字段是否必填',
  `field_extend_json` varchar(500) DEFAULT NULL COMMENT '扩展参数JSON',
  `field_value_rule_code` varchar(500) DEFAULT NULL COMMENT '填值规则code',
  `is_query` tinyint(1) DEFAULT NULL COMMENT '是否查询条件0否 1是',
  `is_show_form` tinyint(1) DEFAULT NULL COMMENT '表单是否显示0否 1是',
  `is_show_list` tinyint(1) DEFAULT NULL COMMENT '列表是否显示0否 1是',
  `is_read_only` tinyint(1) DEFAULT '0' COMMENT '是否是只读（1是 0否）',
  `query_mode` varchar(10) DEFAULT NULL COMMENT '查询模式',
  `main_table` varchar(100) DEFAULT NULL COMMENT '外键主表名',
  `main_field` varchar(100) DEFAULT NULL COMMENT '外键主键字段',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgform_field`
--

INSERT INTO `onl_cgform_field` (`id`, `cgform_head_id`, `db_field_name`, `db_field_txt`, `db_field_name_old`, `db_is_key`, `db_is_null`, `db_type`, `db_length`, `db_point_length`, `db_default_val`, `dict_field`, `dict_table`, `dict_text`, `field_show_type`, `field_href`, `field_length`, `field_valid_type`, `field_must_input`, `field_extend_json`, `field_value_rule_code`, `is_query`, `is_show_form`, `is_show_list`, `is_read_only`, `query_mode`, `main_table`, `main_field`, `order_num`, `update_by`, `update_time`, `create_time`, `create_by`) VALUES
('0021c969dc23a9150d6f70a13b52e73e', '402860816aa5921f016aa5921f480000', 'begin_date', '开始时间', 'begin_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('005c44d779a4dc653844d8f3c8f15675', 'd6cb8d561355467086159ab8cfbe0aec', 'work_id', '作业ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'teaching_work', 'id', 7, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('01ae8a86852747aa75f03bdc1602b502', '1e65c54cea44446897c5fec4d967d3f6', 'course_id', '课程ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'sel_user', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('01c368a63771ef11dfa4bece9a9ec766', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_name', '文件名', NULL, 0, 1, 'String', 128, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('020c1622c3df0aef30185f57874f6959', '79091e8277c744158530321513119c68', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 8, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:29:26', 'admin'),
('02b20e692456403e2fed1a89a06833b4', '402860816bff91c0016bff91d2810005', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('03668009f0ad92b20abb1a377197ee47', 'deea5a8ec619460c9245ba85dbc59e80', 'order_fk_id', '订单外键ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'test_order_main', 'id', 10, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:42:53', 'admin'),
('03709092184fdf4a66b0cdb4dd10a159', '402860816bff91c0016bffa220a9000b', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 46, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:34:44', 'admin'),
('03c105d2706c8286416833684de67406', '79091e8277c744158530321513119c68', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('03fd5ab69f331ff760c3f7d86b4a93f8', '4028318169e81b970169e81b97650000', 'log_content', '日志内容', 'log_content', 0, 1, 'string', 1000, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('043cb16a0d88c211fe9f5a227e71e2a4', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_location', '存储位置', NULL, 0, 0, 'String', 32, 0, '', 'file_location', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 10, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('045eb432c418b2b103b1e1b8e8a8a75d', 'fb7125a344a649b990c12949945cb6c1', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', NULL, NULL, NULL, '2019-03-26 19:24:11', 'admin'),
('04e4185a503e6aaaa31c243829ff4ac7', 'd35109c3632c4952a19ecc094943dd71', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('04f6c01bb8d9ce8b8a6b5a26681af8a6', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 5, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('04ff134cb4aae845059e10b3b85f1451', '7ea60a25fa27470e9080d6a921aabbd1', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('051dd70c504c97a028daab2af261ea35', '1acb6f81a1d9439da6cc4e868617b565', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('052dcc6f34976b66754fd99415bd22ce', '79091e8277c744158530321513119c68', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('054db05394e83b318f097a60bc044134', '402860816bff91c0016bffa220a9000b', 'residence_address', '户籍地址', 'residence_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 28, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('0604945c206e867644e9a44b4c9b20c6', 'fb19fb067cd841f9ae93d4eb3b883dc0', '2', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('0617de6d735b37a3f80f2f35ad5d1511', '4028839a6de2ebd3016de2ebd3870000', 'size_type', '尺码类型', 'size_type', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 13, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('06a1badae6119abf4ec48858a3e94e1c', '402860816bff91c0016bffa220a9000b', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 43, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('06f1cfff58395ff62526b894f6182641', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('0791be829fcf72da4e0f4ae3acb45f31', 'd6cb8d561355467086159ab8cfbe0aec', 'comment', '评论内容', NULL, 0, 0, 'String', 512, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('07a307972076a392ffc61b11437f89dd', '402860816bff91c0016bff91c0cb0000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('07f4776fd641389a8c98a85713990dce', '402860816bff91c0016bff91c0cb0000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('09114685037d0977427891901ffac08d', '1e65c54cea44446897c5fec4d967d3f6', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('09450359eb90b40d224ec43588a62f9e', '402860816bff91c0016bff91c0cb0000', 'user_id', '用户ID', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('0a4cdcb7e54f614ab952024f6c72bb6d', 'beee191324fd40c1afec4fda18bd9d47', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('0adc06d9b497684bcbb5a781e044517c', '1acb6f81a1d9439da6cc4e868617b565', 'supplier', '供应商', NULL, 0, 1, 'String', 32, 0, '', 'air_china_ supplier', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 15, 'admin', '2019-06-10 14:47:14', '2019-04-24 16:52:00', 'admin'),
('0b3e833ac4aae3a13ec2f8ae460708f8', '4028839a6de2ebd3016de2ebd3870000', 'no', '预算表序号', 'no', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('0b49594972b112415c1e7114cda8eb1f', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'price', '订单金额', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('0ba1bf74e2a6a94a7a63010ec7230706', '402860816bff91c0016bffa220a9000b', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 42, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('0cba94f0497d4d3d829fc573f58eff9f', '402860816bff91c0016bffa220a9000b', 'graduation_time', '毕业时间', 'graduation_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('0d00c51a4ddad2598a587fadc968a8b2', '402860816bff91c0016bff91cfea0004', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('0ddd0c0afc967a9ab6050401ca62a4be', 'e67d26b610dd414c884c4dbb24e71ce3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('0fb6fa76c5c78a1e957dbb411e110738', '402860816bff91c0016bff91d8830007', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('0fefad65ef0a1f160099e7509378b812', 'd6cb8d561355467086159ab8cfbe0aec', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('105c8e44ad13026b641f0363601f30f3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'num', '循环数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('1130f1e252533529bb1167b896dffe32', 'deea5a8ec619460c9245ba85dbc59e80', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('117fc4ba649d6690a3ac482ad5e4ad38', '56870166aba54ebfacb20ba6c770bd73', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin'),
('13246645b7650491b70205d99703ca06', '402860816aa5921f016aa5dedcb90009', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 32, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('135dd0ee50712722db65b8762bd487ea', '8994f2817b5a45d9890aa04497a317c5', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:16', 'admin'),
('14ec4c83c29966ab42b6b718c5a3e774', '7ea60a25fa27470e9080d6a921aabbd1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('1566008177fe3c2cd6b8a2a57516f7b4', '1e65c54cea44446897c5fec4d967d3f6', 'del_flag', '删除标识', NULL, 0, 0, 'int', 32, 0, '0', 'del_flag', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 16, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('16363d0bc125125e395772278d0cf22e', '4b556f0168f64976a3d20bfb932bc798', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('179c290e383009810fb738f07bd5af8d', '402860816bff91c0016bff91d2810005', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('17cbda69da9dd3632625a0647c259070', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '1', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('17d57b1a745ed965d51c68a5d16f3842', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('18fefb2257901f05508f8ec13ada78a3', 'e5464aa8fa7b47c580e91593cf9b46dc', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin'),
('1973ef1d3728fbff2db6a352e001f5f7', 'fb7125a344a649b990c12949945cb6c1', 'name', '用户名', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('1a8d692d3b3b08fa3f4396d9587455ac', '1e65c54cea44446897c5fec4d967d3f6', 'collect_num', '收藏次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 15, NULL, NULL, '2020-04-11 21:43:06', 'jeecg'),
('1ab5be1f937f393b3e5cc214ef1b855c', '7ea60a25fa27470e9080d6a921aabbd1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('1b6c7b95028bed9ff656d65557dd2bdf', '402860816bff91c0016bffa220a9000b', 'user_id', '用户id', 'user_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('1c2f307e315bac77a6d3f02e88387a43', 'deea5a8ec619460c9245ba85dbc59e80', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('1c3b2ad0a52ecb47fa7fd53f25875beb', 'deea5a8ec619460c9245ba85dbc59e80', 'price', '价格', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('1c4d25a12388c80d397bb4f4664fe4e6', '4b556f0168f64976a3d20bfb932bc798', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('1cfe967bb457cbaa6e041e45d019b583', '402860816bff91c0016bff91c7010001', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('1d899ea6457241fcd4b356923b87c3e7', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'order_no', '订单编号', NULL, 0, 0, 'String', 40, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 8, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('1df4f99b12ae83566dbf5eb477a69919', '699d6a7064064ca7805c68ea0f06932c', 'price', '现价', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'money', '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('1e18ef1d2f321b836b9bfe314bc555ec', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'source_user', '来源用户', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 16, 'jeecg', '2020-04-11 23:10:38', '2020-03-08 00:19:05', 'admin'),
('1e3d8cfbf12155559666a23ee2c6c5ca', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('1ed46fdeb289bd7805c9b83332ccd3b4', '402860816bff91c0016bff91d2810005', 'relation', '关系', 'relation', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('1f0c6d33b79713fe79fb30373c81f6f7', '758334cb1e7445e2822b60e807aec4a3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('1fa5f07b3e70d4925b69b2bf51309421', '56870166aba54ebfacb20ba6c770bd73', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin'),
('20ff34fb0466089cb633d73d5a6f08d6', 'd35109c3632c4952a19ecc094943dd71', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('2113a4ec7b88b4820dcbbdf96e46bbb7', 'fbc35f067da94a70adb622ddba259352', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('214cfdcf2c826cf0c71ce54dc75caddf', '2d869ad51818483faea70b2bd62ea34e', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('2150e48b2cb6072d2d8ecd79a7daf7cc', '402860816bff91c0016bff91ca7e0002', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('2323239efb5a40b73034411868dfc41d', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('23f42061ed218bdbc1262913c071e1cd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'iz_valid', '启动状态', NULL, 0, 1, 'int', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin'),
('242cc59b23965a92161eca69ffdbf018', 'd35109c3632c4952a19ecc094943dd71', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('265702edb8872e322fe72d3640e34ac5', '402860816bff91c0016bff91cfea0004', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('2739ab1ece4d6053ba931bb6572f4ed8', '4028839a6de2ebd3016de2ebd3870000', 'iz_valid', '启用状态', 'iz_valid', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('283f42283b9d0bf3b95ba3384ab2d255', '758334cb1e7445e2822b60e807aec4a3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('284864d99fddfdcb00e188e3a512cb28', '1acb6f81a1d9439da6cc4e868617b565', 'no', '预算表序号', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('2889d3cef706f91e092d76a56b8055be', '402860816bff91c0016bff91cda80003', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('295c57a1c75d2064b695cfd1d0090fd8', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'pay_mode', '支付方式', NULL, 0, 0, 'int', 3, 0, '', 'pay_method', '', '', 'radio', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 13, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('29e4abea55d9fa7dbbd0c8dbbb2b3756', '402860816bff91c0016bff91cda80003', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('2c1bb6cb503ae3ac125d408beedeb4b9', 'd6cb8d561355467086159ab8cfbe0aec', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('2d53a66f0b72d820b86ff445e2181d76', 'beee191324fd40c1afec4fda18bd9d47', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('2d94df48bedc50800784255729c9fca6', '699d6a7064064ca7805c68ea0f06932c', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 3, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('2dfc4c81926f678c5f8d5ffd27858201', 'e2faf977fdaf4b25a524f58c2441a51c', 'account', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('2e5275b6407e1b4265af8519077fa4a5', 'd3ae1c692b9640e0a091f8c46e17bb01', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('2e66b9db37648389e0846e2204111732', '73162c3b8161413e8ecdca7eb288d0c9', 'has_child', '是否有子节点', NULL, 0, 1, 'string', 3, 0, '', 'valid_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 10, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('2ee58d8e4844dfe1fa6b1b841ae0b312', '402860816bff91c0016bff91d2810005', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('2f111722eb3a994450e67e3211fd69a8', '402860816bff91c0016bff91ca7e0002', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('30143cc3de69c413828f9fba20662026', '402860816bff91c0016bffa220a9000b', 'healthy', '健康状况', 'healthy', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('31fd90306c3942f09cb79deabbf2f541', '402860816bff91c0016bff91d2810005', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('321c55ce96964bc886605c8fcfd1f772', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'user_id', '用户ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2020-04-11 23:03:48', 'jeecg'),
('3301548c2e848843e4272fca7f8ebe07', 'd6cb8d561355467086159ab8cfbe0aec', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('336495117e3a31351fed6963b950dddb', '402860816bff91c0016bffa220a9000b', 'inside_transfer', '内部工作调动情况', 'inside_transfer', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 37, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('345c8b48e1e128e77c4c6e2b36512804', '402860816aa5921f016aa5dedcb90009', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('351faaeb2dd8105e9c66f678211c9d4f', 'dbf4675875e14676a3f9a8b2b8941140', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('354b2ce39c5e8ec3f0bbb01bf8ff0fb7', '32f75e4043ef4070919dbd4337186a3d', 'content', '描述', NULL, 0, 1, 'String', 300, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-04-11 10:15:31', '2019-03-28 15:24:24', 'admin'),
('35ca1c8aa1501bc8a79c880928841f18', '402860816aa5921f016aa5921f480000', 'update_by', '修改人id', 'update_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 11, 'admin', '2019-05-11 15:31:55', '2019-05-11 14:26:19', 'admin'),
('3635793767371c6db9f76b4b79f9d321', '402860816bff91c0016bff91d8830007', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('370a6eebc2d732eaf121fe0830d853a6', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_code', '物料编码', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 7, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('3712fd14e5ed78fc780dcb255091da2e', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'grade', '年级', NULL, 0, 1, 'int', 2, 0, '', 'grade', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin'),
('37e2548874f09ef7d08642a30bc918fa', 'fbc35f067da94a70adb622ddba259352', 'group_name', '小组名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('390dfe0e329046ff1e3f86e2fc6fddcc', '441e68dc1d0147d5a69fb54260d1dbb3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('391e7cbd9f29743b11bb555c50547b1f', '32f75e4043ef4070919dbd4337186a3d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('39d9d9c92e8e5b964e7e0d6e9b98b310', '2d869ad51818483faea70b2bd62ea34e', 'comment', '评语', NULL, 0, 1, 'String', 512, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('3b439859f98e30e34d25e983eb22e408', '402860816bff91c0016bff91c7010001', 'award_time', '获奖时间', 'award_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('3bf44e68de518f3ddf72b87671d0ff90', '8994f2817b5a45d9890aa04497a317c5', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 3, NULL, NULL, '2019-03-23 11:39:16', 'admin'),
('3cd2061ea15ce9eeb4b7cf2e544ccb6b', 'd35109c3632c4952a19ecc094943dd71', 'file_kk', '附件', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'file', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-08-23 23:45:15', '2019-06-10 20:06:57', 'admin'),
('3cfd4d60c7d8409ae716a579bcb0910d', '402860816bff91c0016bff91c0cb0000', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 16, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('3e32f6c30c9028872388f70743c5d6a5', '402860816bff91c0016bff91c0cb0000', 'reason', '申请理由', 'reason', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('3e70d1c516c3533c6698300665c669e1', '402860816bff91c0016bff91c0cb0000', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:31', 'admin'),
('3f2ace8f968a0e5b91d1340ee2957cda', '402860816bff91c0016bff91d8830007', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('40471eb4560bf0bbd2ffef17d48a269d', 'dbf4675875e14676a3f9a8b2b8941140', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('404b516d4f2229f292783db595b02ba1', '402860816bff91c0016bff91d8830007', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('405de5ea82e54138a0613dd41b006dfb', '56870166aba54ebfacb20ba6c770bd73', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin'),
('4164314d6a51d100169a29872b7504d8', '402860816bff91c0016bff91ca7e0002', 'cert_time', '发证时间', 'cert_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('41d4215c01b0d26871f2cb83d3e532ae', '402860816bff91c0016bff91c0cb0000', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 32, 0, '1', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 17, 'admin', '2019-07-19 18:09:01', '2019-07-19 15:35:23', 'admin'),
('422a44a15fa39fd57c3c23eb601f7c03', '56870166aba54ebfacb20ba6c770bd73', 'descc', '描述', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin'),
('42cccfa014c9e131a0a1b23f563d3688', '402860816bff91c0016bffa220a9000b', 'sex', '性别', 'sex', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('4312f618c83e07db82e468b81a1eaa45', '402860816bff91c0016bffa220a9000b', 'photo', '照片', 'photo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 20, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('435b57180fc995e3c4ec42516963bca3', '4028839a6de2ebd3016de2ebd3870000', 'wl_code', '物料编码', 'wl_code', 0, 1, 'string', 60, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('44bdc595f1e565fc053e01134b92bb47', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('44e81e24d2384b0f187e8f69eda55390', '402860816bff91c0016bff91cda80003', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('45c0a1a89a1e2a72533b9af894be1011', '27fc5f91274344afa7673a732b279939', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('45d59eb647257fcbcb9d143ff1ba2080', 'deea5a8ec619460c9245ba85dbc59e80', 'pro_type', '产品类型', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'radio', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 16:07:16', '2019-04-23 20:54:08', 'admin'),
('469b250595f15dfebe69991d72e4bfb2', 'e9faf717024b4aae95cff224ae9b6d97', 'name', '员工姓名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('46be01bef342519e268902d0d36a7473', 'deea5a8ec619460c9245ba85dbc59e80', 'descc', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('46f1a875f86a4f48d0540ad0d5e667d7', '56870166aba54ebfacb20ba6c770bd73', 'order_date', '下单时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin'),
('47c21a6b45e59a6b70bb9c0cc4510a68', '1acb6f81a1d9439da6cc4e868617b565', 'integral_val', '积分值', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('47fa05530f3537a1be8f9e7a9e98be82', 'd35109c3632c4952a19ecc094943dd71', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', 'sex', '', '', 'list', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('48167d12b7f2cafeec9ea655c5703c42', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'action_id', '活动ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 12, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('4851697fdf63709d2bc7451b7415f4af', '32f75e4043ef4070919dbd4337186a3d', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '1', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('485a8ddce2c033f88af674ec98b68e32', '402860816bff91c0016bffa220a9000b', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 40, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('492a462b212fc34b0ee70e872684ed7e', '7ea60a25fa27470e9080d6a921aabbd1', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('499a5dac033a01ce58009e4c5b786697', 'e9faf717024b4aae95cff224ae9b6d97', 'age', '员工年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('49cd3dbd4f7f7cf0d19b1ee1045cfa69', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_code', '岗位编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('4a6b4ec5d171cbdcb43108398450b258', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 2, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('4a7a9267954a7783f156423c1ef84912', '1e65c54cea44446897c5fec4d967d3f6', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('4ba7c553ca4babcec75273c531cd65e1', '402860816bff91c0016bff91cfea0004', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('4c004b60419d92b198fd588b55e365c1', '699d6a7064064ca7805c68ea0f06932c', 'original_price', '原价', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'money', '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('4c2cba9fc950333421c4193576b8384d', '32f75e4043ef4070919dbd4337186a3d', 'salary', '工资', NULL, 0, 1, 'double', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-11 10:15:32', '2019-03-28 15:24:24', 'admin'),
('4c570c5cf05590348e12621ca62773cf', '402860816aa5921f016aa5921f480000', 'name', '请假人', 'name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('4cacfa054e96791ab938b5c8f8e02cd1', '27fc5f91274344afa7673a732b279939', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, NULL, NULL, '2019-07-01 16:28:20', 'admin'),
('4d4a04ae2c9bcfd4f6b7993cd6f0af93', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin'),
('4e4badeb77eaede913891c84d40815f5', '699d6a7064064ca7805c68ea0f06932c', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('4f718d95ad9de33eac18fd0663e4c1f1', '32f75e4043ef4070919dbd4337186a3d', 'birthday', '生日', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('4f7cba71de7afe6efbd024f5f9935521', '402860816bff91c0016bff91cda80003', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('4fe6b159890dce2577daef83bd107532', '441e68dc1d0147d5a69fb54260d1dbb3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('506c9b0b2331a24e5c284274d28fe569', '27fc5f91274344afa7673a732b279939', 'kkk', '描述', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('508eb28e1409a2a9501cdf6fd7eb24c7', 'dbf4675875e14676a3f9a8b2b8941140', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('509a4f63f02e784bc04499a6a9be8528', 'd35109c3632c4952a19ecc094943dd71', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('519f68557b953fc2d38400182b187366', '402860816bff91c0016bffa220a9000b', 'residence_type', '户籍类别', 'residence_type', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('52ee861bc1b62cd8e4f10632b3d9d1b2', '79091e8277c744158530321513119c68', 'name', '顺序会签标题', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('530fe633beacf43d1f4b229a77d15ff2', '699d6a7064064ca7805c68ea0f06932c', 'end_time', '结束时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin'),
('56a7800e4e476812c74217c2aad781aa', '32feeb502544416c9bf41329c10a88f4', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('56cd0a76f922bf76d982b24a509e4782', '4028839a6de2ebd3016de2ebd3870000', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 3, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('56e247f12d62b49cd9bd537e3efecf16', '402860816bff91c0016bff91c0cb0000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('58595ad35988bfbca9a66170645f90a8', '699d6a7064064ca7805c68ea0f06932c', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('588400f6ebcdd0bc9bb560dd36636af9', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('58a96f945912d33b64ebf5dee98156dc', '402860816bff91c0016bffa220a9000b', 'mobile', '手机号', 'mobile', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 19, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('58d6138138e85df4af6bd1bf622dea49', '699d6a7064064ca7805c68ea0f06932c', 'coures_id', '绑定课程', NULL, 0, 1, 'String', 1024, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin'),
('58eea85add4788b83c893092434bc413', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 4, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('59ae1e853668c676e85329aa029c68a6', '402860816bff91c0016bff91c0cb0000', 'status', '状态（1：申请中 2：通过）', 'status', 0, 1, 'string', 2, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('5a1ab458d88bb766f92c3d791495cdcd', '402860816bff91c0016bff91d2810005', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('5a4ef083dd572114aeb581b6828de545', '402860816bff91c0016bff91c7010001', 'award_name', '获奖名称', 'award_name', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('5a621f27aa443fe9eccc73717e4fa172', '4028318169e81b970169e81b97650000', 'method', '请求java方法', 'method', 0, 1, 'string', 500, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 8, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('5a655b208d6318ed02f236f15a319b5f', 'fbc35f067da94a70adb622ddba259352', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('5a6f88710c49bbe8e2e0ca58e149abad', '402860816bff91c0016bff91cda80003', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('5b17ba693745c258f6b66380ac851e5f', 'd35109c3632c4952a19ecc094943dd71', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('5c76f5ecc774d7339eb0c2199c0052bc', '402860816bff91c0016bff91c0cb0000', 'biz_no', '编号', 'biz_no', 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('5c8c8d573e01e4f40b5a7c451515e1d2', '32feeb502544416c9bf41329c10a88f4', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('5d46e7fefacd273eae3ca0ed880588ac', '441e68dc1d0147d5a69fb54260d1dbb3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('5dfbea516ee2390d712eace5405c5219', '402860816bff91c0016bff91ca7e0002', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('5e4484b7348dc3e59a0c58bdc3828cc0', '27fc5f91274344afa7673a732b279939', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('5e4ac29ac2007ceabf93368330290a42', '402860816bff91c0016bff91d8830007', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('6053128ef2a0d8ef44c1dd409321dedf', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_type', '文件类型', NULL, 0, 1, 'int', 2, 0, '', 'file_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 7, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('617349b18dab429009ccd304fd7d459c', '4028839a6de2ebd3016de2ebd3870000', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('61c7a0058c264dd746eb35e6f50fc15b', '402860816aa5921f016aa5dedcb90009', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('61f66737c6533ce2a6a3c889b65749bb', '699d6a7064064ca7805c68ea0f06932c', 'start_time', '开始时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin'),
('6232ade7e2a0c1e97e2c0945b32e61b6', '402860816bff91c0016bffa220a9000b', 'paying_social_insurance', '是否上社保', 'paying_social_insurance', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 32, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('6490a98dccb6df218feaeb4ce11bc03b', '402860816aa5921f016aa5921f480000', 'update_time', '修改时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 10, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('654362725195829005036b3db47ec826', '402860816bff91c0016bffa220a9000b', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('66a7ef842bc34e105a90186e48167ef2', 'dbf4675875e14676a3f9a8b2b8941140', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('68769fa7e4696e3a28f4cecf63076b7b', '402860816bff91c0016bff91ca7e0002', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('69666f21896136af16a6303aff440156', '402860816bff91c0016bffa220a9000b', 'nation', '民族', 'nation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('69d11490788fecfc9fb7d74bf449ba86', '32f75e4043ef4070919dbd4337186a3d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin');
INSERT INTO `onl_cgform_field` (`id`, `cgform_head_id`, `db_field_name`, `db_field_txt`, `db_field_name_old`, `db_is_key`, `db_is_null`, `db_type`, `db_length`, `db_point_length`, `db_default_val`, `dict_field`, `dict_table`, `dict_text`, `field_show_type`, `field_href`, `field_length`, `field_valid_type`, `field_must_input`, `field_extend_json`, `field_value_rule_code`, `is_query`, `is_show_form`, `is_show_list`, `is_read_only`, `query_mode`, `main_table`, `main_field`, `order_num`, `update_by`, `update_time`, `create_time`, `create_by`) VALUES
('6a30c2e6f01ddd24349da55a37025cc0', 'd35109c3632c4952a19ecc094943dd71', 'top_pic', '头像', NULL, 0, 1, 'String', 500, 0, '', '', '', '', 'image', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-08-23 23:45:15', '2019-06-10 20:06:56', 'admin'),
('6b6f3aa00b8e73fb785154e795189739', '402860816aa5921f016aa5dedcb90009', 'start_time', '会签发起时间', 'start_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('6cfb5acbbb69782bf0c7043b53f595b2', '402860816bff91c0016bff91cda80003', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('6ef59dc42540bf317f1cb13fe8506e47', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'scene', '自定义场景', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 15, 'jeecg', '2020-04-11 23:10:38', '2020-03-08 00:19:05', 'admin'),
('6f73e96a659c200c083006b6fce1f043', '402860816bff91c0016bff91ca7e0002', 'cert_name', '证书名称', 'cert_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('70e1749e4e8acacb42fec366cb97872e', '2d869ad51818483faea70b2bd62ea34e', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('7154c75d754a5f88bef2b68829baf576', '4028318169e81b970169e81b97650000', 'operate_type', '操作类型', 'operate_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 4, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('71afb00a1971125ecfa13b4dfa49665e', '402860816bff91c0016bff91cfea0004', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('71d5b0675df5aba71688c9d7d75cccee', '4028318169e81b970169e81b97650000', 'log_type', '日志类型（1登录日志，2操作日志）', 'log_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('71e9ab74dae687837365e50eed090591', '1acb6f81a1d9439da6cc4e868617b565', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('7280c56a210e6a47794fda855d0c6abb', 'fbc35f067da94a70adb622ddba259352', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('72e784af5c47bbbc0534b29bf656bd61', '4028839a6de2ebd3016de2ebd3870000', 'id', '主键', 'id', 1, 0, 'string', 36, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 0, 0, 0, 'group', NULL, NULL, 1, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('7365f05f551092716223d5d449efd8c7', 'beee191324fd40c1afec4fda18bd9d47', 'name', 'ss', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('742329ccdb185cf5d3e0b5b0c05dcffa', '402860816bff91c0016bffa220a9000b', 'interest', '兴趣爱好', 'interest', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 34, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('744444a7ada3bbb05c6b114b5ba0d477', '402860816aa5921f016aa5dedcb90009', 'id', 'id', 'id', 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('749a6357649a8c993feae0208e69c5bd', '699d6a7064064ca7805c68ea0f06932c', 'max_student', '参数学员上限', NULL, 0, 1, 'int', 9, 0, '', '', '', '', 'text', '', 120, 'z', '0', '', '', 0, 1, 1, 0, 'single', '', '', 13, 'jeecg', '2020-04-11 23:04:13', '2020-03-08 19:28:36', 'admin'),
('74af99545de724a4abd2022581a36026', 'fb7125a344a649b990c12949945cb6c1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('756b07656386dbd91245f7ffda32ae61', '402860816bff91c0016bff91d8830007', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('75841fa7c75ebdc94655bd5e44fbc9f6', '402860816bff91c0016bffa220a9000b', 'native_place', '籍贯', 'native_place', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('75ba781c67711bed71bba1c3e3c68e11', '8994f2817b5a45d9890aa04497a317c5', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:16', 'admin'),
('75e82f151e8cc12455f7f0d25bf4dac0', '4028839a6de2ebd3016de2ebd3870000', 'wl_name', '物料名称', 'wl_name', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('7639c1bc4327f1f674ffeab2ca261134', '32f75e4043ef4070919dbd4337186a3d', 'update_by', '更新人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('764c84ff74e7b45e0ede62c540b32e88', '1e65c54cea44446897c5fec4d967d3f6', 'work_type', '作业类型', NULL, 0, 0, 'String', 32, 0, '', 'work_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 10, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('766ca866b72d118f5d8883de46a8c043', '4028839a6de2ebd3016de2ebd3870000', 'supplier', '供应商', 'supplier', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 15, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('78a40344207c791b8d7ac7de721ce1c4', '79091e8277c744158530321513119c68', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('78eb7e3b77cd49f9acb9b024cfe834e1', '402860816aa5921f016aa5dedcb90009', 'create_time', '创建日期', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('78fd804d93dc716fd8c2ccc45f788565', 'fb7125a344a649b990c12949945cb6c1', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('790c9f3dba773ed9a6ea3ad627393f57', '402860816bff91c0016bffa220a9000b', 'archives_location', '档案所在地', 'archives_location', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 36, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('7a665ed90ef64b4d65632c941e5795b2', '4b556f0168f64976a3d20bfb932bc798', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-12 23:38:29', 'admin'),
('7b642d983ac06bfef91edde2c932dbe7', '1acb6f81a1d9439da6cc4e868617b565', 'xg_shangxian', '选购上限', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 14, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('7b849e57debfb889caea5e0fef09062b', 'beee191324fd40c1afec4fda18bd9d47', 'sex2', 'dd', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('7b851d70d0bdb3f25f0cc7fdc0879cdb', '1e65c54cea44446897c5fec4d967d3f6', 'create_by', '创建人', NULL, 0, 0, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('7beb639aa9ffda07edb5ce1e49c2287f', '402860816bff91c0016bff91d2810005', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('7bf091da401b74d55b107fe9f930ea54', '4028839a6de2ebd3016de2ebd3870000', 'create_by', '创建人', 'create_by', 0, 1, 'string', 50, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 2, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('7c6aecc377816c69147f1193b17dfcc5', 'e9faf717024b4aae95cff224ae9b6d97', 'sex', '员工性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('7c6b7487b5a4d92e80289ffdc7b205d7', 'c8c8621a42434b4eb743027b07c17bd9', 'activity_id', '活动ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', 'teaching_activity', 'id', 2, NULL, NULL, '2020-04-11 23:05:40', 'jeecg'),
('7cadf4e0be0b173bb5b8d39613e25190', '402860816bff91c0016bffa220a9000b', 'residence_postcode', '户籍邮编', 'residence_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 29, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('7d107728408c21ece332406a21f2d692', '402860816bff91c0016bff91cfea0004', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('7dde2ba0930b6150126bcbf6fb1c3205', '1e65c54cea44446897c5fec4d967d3f6', 'user_id', '用户ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'sel_user', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('7e066f60680158d47b328ef519d80e49', 'beee191324fd40c1afec4fda18bd9d47', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('7f10901c6ade3aa9d9ff46ed7039c70f', '1acb6f81a1d9439da6cc4e868617b565', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('81ed9556c9fda1bbb46d94a53a6c90c7', '402860816bff91c0016bff91c0cb0000', 'depart_name', '部门名称', 'depart', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('8422485e1cbf4455f9ded7d0af59379c', '402860816bff91c0016bff91cfea0004', 'to_time', '截止时间', 'to_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('845c70568d44a074f067d6d277950525', '402860816bff91c0016bffa220a9000b', 'entrytime', '入职时间', 'entrytime', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 23, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('8529ddaed8d5f3d9084e873203d55cac', '402860816bff91c0016bffa220a9000b', 'marital_status', '婚姻状况', 'marital_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 24, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('857a0daa9cd8a058f2f15fc7c5fb3571', '402860816bff91c0016bffa220a9000b', 'email', '邮箱', 'email', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 17, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('8652ca69a947fd4c961a3ac7c0fa252a', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('86bbafef5683674a736cf7241c458d44', '27fc5f91274344afa7673a732b279939', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('86e0f3a8f31c60698157f139ed993954', '402860816bff91c0016bffa220a9000b', 'having_reserve_funds', '是否有公积金', 'having_reserve_funds', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 33, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('873e2bb041b17bff77d3aca72900ea1b', '56870166aba54ebfacb20ba6c770bd73', 'order_code', '订单编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-11-21 17:58:28', '2019-04-20 11:38:39', 'admin'),
('877391ae770a4ce2c95181ef410982ce', '4028318169e81b970169e81b97650000', 'request_param', '请求参数', 'request_param', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('87e82e3c723a6abb020122babdac6bd1', '8994f2817b5a45d9890aa04497a317c5', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 1, NULL, NULL, '2019-03-23 11:39:16', 'admin'),
('87f7a2703c5850f0b063dd866d0e2917', '402860816bff91c0016bffa220a9000b', 'birthday', '出生日期', 'birthday', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('87fafe1a4a8a626e3875697574c19f15', '402860816bff91c0016bff91d2810005', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('88a12570e14c9f6f442e731ae5ad0eb1', 'beee191324fd40c1afec4fda18bd9d47', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('89ab9eedbac6141e7a0df6d37a3655d0', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('8a24fb45e2af120c253c8b61c0085f7a', '402860816bff91c0016bff91cda80003', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('8ac8a0c0087469a4e7579229ff17f273', 'e5464aa8fa7b47c580e91593cf9b46dc', 'jifen', '合计积分', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 10, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('8bd4deadc9e96c1a6d7abd77033105f6', 'e67d26b610dd414c884c4dbb24e71ce3', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('8c6518fec11fc4769ba4eb770c9e00f7', '4028839a6de2ebd3016de2ebd3870000', 'integral_val', '积分值', 'integral_val', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('8ca56210938fbe649f840e505eb9fd41', '56870166aba54ebfacb20ba6c770bd73', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin'),
('8ea43fd1e4ce82becee61b2f1e2e843f', '32feeb502544416c9bf41329c10a88f4', 'sex', '性别', NULL, 0, 1, 'String', 32, 0, '', 'sex', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('8f1d302868640b72cef52171a023a203', 'e9faf717024b4aae95cff224ae9b6d97', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('8f3e6fb68179c690f748f3c541fb50f1', '7ea60a25fa27470e9080d6a921aabbd1', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('8fc0be84bed1216635c69af918e097ff', '402860816aa5921f016aa5dedcb90009', 'name', '并行会签标题', 'name', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('9003470850f58d5d9d743ea97b1c5e68', 'c8c8621a42434b4eb743027b07c17bd9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, NULL, NULL, '2020-04-11 23:05:40', 'jeecg'),
('90a822b8a63bbbc1e9575c9f4e21e021', 'd35109c3632c4952a19ecc094943dd71', 'descc', '描述', NULL, 0, 1, 'string', 500, 0, '', '', '', '', 'textarea', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('90f39a6e29dae2e1fbb59d7d605f7c09', '1acb6f81a1d9439da6cc4e868617b565', 'iz_valid', '启用状态', NULL, 0, 1, 'String', 2, 0, '', 'air_china_valid', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('92440b9e1cb8efe1f4c60c35cbe7f13f', '2d869ad51818483faea70b2bd62ea34e', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('9370c9304af30b8d29defe0a5ada6e5b', '62e29cdb81ac44d1a2d8ff89851b853d', 'DC_DDSA', 'DD', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('9371f61d39c5d57ddb0a2db96b2e2412', '402860816bff91c0016bffa220a9000b', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('947174892512ea97fafde899d427ea7e', '402860816bff91c0016bff91c0cb0000', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('94b8bf435175cc545366e11992280757', '32f75e4043ef4070919dbd4337186a3d', 'age', '年龄', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('94e682cb802777fe4205536888f69353', '402860816bff91c0016bff91d2810005', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('957386b500be42a200d6a56d54345392', 'deea5a8ec619460c9245ba85dbc59e80', 'num', '数量', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, 'n', '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('960d2847922b61dadeb3518ef55fb0c1', '1acb6f81a1d9439da6cc4e868617b565', 'wl_name', '物料名称', NULL, 0, 1, 'String', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('9665f02764774fdd77c19923d3ff3c3e', '4028318169e81b970169e81b97650000', 'cost_time', '耗时', 'cost_time', 0, 1, 'string', 19, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('966a4988298d5cb0be47848735ce8cb7', '4028839a6de2ebd3016de2ebd3870000', 'xg_shangxian', '选购上限', 'xg_shangxian', 0, 1, 'int', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 12, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('96c585a4f71e5c38ed25b9741366365b', '402860816bff91c0016bff91c7010001', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('96eb15b73c8ed9188d907700bf71d169', '1e65c54cea44446897c5fec4d967d3f6', 'star_num', '点赞次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 14, NULL, NULL, '2020-04-11 21:43:06', 'jeecg'),
('9765efa2cafde6d0ede2215848c9e80b', '32f75e4043ef4070919dbd4337186a3d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('97f9e8b335a85ebe9b447ef27a833695', 'd6cb8d561355467086159ab8cfbe0aec', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('98e82cb1595609a3b42fa75c60ac1229', '402860816bff91c0016bff91d2810005', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('9914a0c84805e72c4b6075e36edb13f9', '402860816aa5921f016aa5921f480000', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 9, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('9920ecec9c9109fc6b93e86f8fdfa03b', '402860816bff91c0016bffa220a9000b', 'depart_name', '所在部门', 'depart_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'group', '', '', 2, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('99b43bbb23237815ebb74b12b4d7ea2f', '62e29cdb81ac44d1a2d8ff89851b853d', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('99f9a419d6bc8d151a0b9b102a59e6a5', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'status', '状态 ', NULL, 0, 1, 'int', 2, 0, '', 'student_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 23:03:48', '2020-03-08 14:31:49', 'admin'),
('9a2af3ead21550c6415f9d26d5f66604', '441e68dc1d0147d5a69fb54260d1dbb3', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('9a579c506f75f75baf88352a5eb2c249', '1acb6f81a1d9439da6cc4e868617b565', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '1', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'single', '', '', 16, 'admin', '2019-06-10 14:47:14', '2019-05-07 16:54:43', 'admin'),
('9c40fb4db8afed3c682c6b8a732fd69d', 'e2faf977fdaf4b25a524f58c2441a51c', 'post', '用户岗位', NULL, 0, 1, 'String', 32, 0, '', 'post_code', 'air_china_post_materiel_main', 'post_name', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('9d85bafa399f28a40e1de1eeef747223', '4028318169e81b970169e81b97650000', 'ip', 'IP', 'ip', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 7, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('9d89ff1a019f41d80307652041490944', '32feeb502544416c9bf41329c10a88f4', 'name', '请假人', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('9e3d2f1bb9ee1d8564794d6fa5f8ccb8', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'channel', '投放渠道', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 0, 0, 1, 'single', '', '', 14, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('9e50680eb4e79b3af352a5933d239dff', 'dbf4675875e14676a3f9a8b2b8941140', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('9ebb14a58aae8cccc4073650cf924368', '699d6a7064064ca7805c68ea0f06932c', 'activity_name', '活动名称', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, '*', '0', '', '', 1, 1, 1, 0, 'single', '', '', 7, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('a01a7fe5660206e6f407ed98b6c732d6', '402860816bff91c0016bff91cfea0004', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('a0f658753758e32e8c625a5f3f6b33c3', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 3, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('a1f5daba36f536e7acf6a939826183b0', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('a430c6bc60432fecdd8065faf6867f2b', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_tag', '文件标签', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('a45eba33810c485b9d8e6f70818a1dfa', '402860816aa5921f016aa5921f480000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 50, 0, '1', 'bpm_status', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 1, 0, 'group', '', '', 7, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('a461504efe53d9c86788849eb58ccba5', '1e65c54cea44446897c5fec4d967d3f6', 'work_name', '作业名', NULL, 0, 0, 'String', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 9, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('a583ca9058204bae2a5506e591eade41', 'd6cb8d561355467086159ab8cfbe0aec', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 3, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('a6471d4fb3dbffef01dab1f7d452bb30', '27fc5f91274344afa7673a732b279939', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('a6722b498602d7d7b5177b16789d8cc1', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-24 17:09:48', '2019-04-24 11:05:10', 'admin'),
('a76f561057ac9e43a8ca09e478a1eab8', '402860816bff91c0016bff91ca7e0002', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('a770d3f8121d6eb7f2468f806d733df7', 'd6cb8d561355467086159ab8cfbe0aec', 'nickname', '用户昵称', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 8, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('a7822f6e4cffb37fc0729cbd4cfd8655', '32f75e4043ef4070919dbd4337186a3d', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('a82ca42a76e9d2b8dae6d57dbb5edb54', 'deea5a8ec619460c9245ba85dbc59e80', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('a940adc4585fa3b5bd2114ea9abe8491', '402860816bff91c0016bff91ca7e0002', 'cert_level', '证书级别', 'cert_level', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('a94f1d7da64f3aa35c32155ea00ccb2f', '402860816bff91c0016bffa220a9000b', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('a9780eace237a15f26931dd6a9ec02e9', '758334cb1e7445e2822b60e807aec4a3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('aa07931514727913413880b7a2b76dcb', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('aa4780601419c21dabb6c42fc511e71c', '402860816bff91c0016bffa220a9000b', 'have_children', '有无子女', 'have_children', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 25, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ab10e0aa029ded2f4420a33420de225d', '1acb6f81a1d9439da6cc4e868617b565', 'wl_code', '物料编码', NULL, 0, 1, 'String', 60, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('ab1f880ba593f3757dac70e003945aa2', '402860816bff91c0016bff91c0cb0000', 'depart_id', '部门ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-07-19 18:09:01', '2019-07-17 19:38:45', 'admin'),
('ab58f43f853fd1f65f83c22966883afb', 'beee191324fd40c1afec4fda18bd9d47', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-04-13 13:41:13', '2019-04-13 13:40:56', 'admin'),
('ab8e6f1cca421c5ce395a2c1fdfd2100', '32feeb502544416c9bf41329c10a88f4', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('abe61a8ddf966a979457b763329a537b', 'e5464aa8fa7b47c580e91593cf9b46dc', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('ac91565da5fb8fe43a4da3dec660b25f', '402860816bff91c0016bff91c7010001', 'award_place', '获奖地点', 'award_place', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('acff5c8aef3b6288b87fd91215012206', 'e5464aa8fa7b47c580e91593cf9b46dc', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('ad061417d5b53c67975eb83657505218', '73162c3b8161413e8ecdca7eb288d0c9', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('ad93762c6c4a1dd8331e5fa11215b568', 'e2faf977fdaf4b25a524f58c2441a51c', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('ae31da96f38fc2941cb93d1bb1ab9431', 'deea5a8ec619460c9245ba85dbc59e80', 'product_name', '产品名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('ae77bb317366622698c8ab9bf2325833', 'deea5a8ec619460c9245ba85dbc59e80', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('af0fe0df8b626129de62e22212732517', '402860816bff91c0016bff91cda80003', 'speciality', '专业', 'speciality', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('af6c582b902e2f2bf9930eba61ae7938', '73162c3b8161413e8ecdca7eb288d0c9', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('afd3ef1d494a9b69d2c7a3cdde937f6f', '402860816bff91c0016bffa220a9000b', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 39, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('b01304904babd7479de2acfe8a77157f', '402860816aa5921f016aa5921f480000', 'id', 'ID', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('b05b4cbb74f389a7376f51ed9fd97030', '402860816bff91c0016bff91d8830007', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('b0a06bdbefd304d81a1838d8d94deda9', '4b556f0168f64976a3d20bfb932bc798', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('b0b1cf271dd6b221a902da2d2f8f889a', 'e9faf717024b4aae95cff224ae9b6d97', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('b16c18435f937224ca6f1ce2d846e0a7', 'd6cb8d561355467086159ab8cfbe0aec', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 2, 'jeecg', '2020-04-12 13:38:40', '2020-04-11 21:46:47', 'jeecg'),
('b1fc6e2ca671b19e57b08a4f57fc2454', 'fb7125a344a649b990c12949945cb6c1', 'update_time', '更新日期', NULL, 0, 1, 'date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('b22694cf34ffb967b8717647816ad5df', 'e5464aa8fa7b47c580e91593cf9b46dc', 'fk_id', '外键', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'air_china_post_materiel_main', 'id', 15, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('b276facab025f9750b0aff391693cc4b', '402860816bff91c0016bff91c7010001', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('b2b0cb30159639bb1190e150322b7541', '4028839a6de2ebd3016de2ebd3870000', 'wl_unit', '计量单位', 'wl_unit', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 14, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('b348c7fc71fb04b852ff7bf0324f8605', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'user_id', '用户ID', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'single', '', '', 7, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('b3542d3e7908ed885ecc4ba9e7300705', '4b556f0168f64976a3d20bfb932bc798', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('b47af4d937e55c6208939bac5378bfad', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('b4d1ef3a2a3aff4034c863592ed17f23', '1e65c54cea44446897c5fec4d967d3f6', 'work_file', '作文文件', NULL, 0, 0, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 11, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('b53203fc52d067bb4730dbcb7e496bd3', '56870166aba54ebfacb20ba6c770bd73', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-11-21 17:58:27', '2019-04-20 11:38:39', 'admin'),
('b5cfd3c9691a884430f3d9cd5ecb211f', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('b6874a05734cad8bd96ffd2f31f1ebca', '402860816bff91c0016bff91c7010001', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('b733fa73519603b22d401fabbf9e9781', '402860816bff91c0016bff91c0cb0000', 'hiredate', '入职时间', 'hiredate', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('b7938e4518f9062ce62702cf45986e06', 'e2faf977fdaf4b25a524f58c2441a51c', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('b7a1243aaa712e2c152c0c7a46f88683', '402860816bff91c0016bff91d8830007', 'age', '年龄', 'age', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('b91258e3dc15b28c2e3f0d934e6e27e8', 'fb7125a344a649b990c12949945cb6c1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 0, NULL, NULL, '2019-03-26 19:01:52', 'admin'),
('b92572ae142f8dd5f2ac02fb45e6b2c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', 'realname,username', 'report_user', 'name,account', 'sel_search', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('b9fbace24688c9c9a8c9be72c1d014e7', '402860816bff91c0016bffa220a9000b', 'phone', '电话', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 18, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ba5f4b2affa94f36eda7f6f133db7ae3', '402860816bff91c0016bff91d2810005', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('bad02e68ea37bf387337516af84a1ddb', '73162c3b8161413e8ecdca7eb288d0c9', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('bb44475e1d1738a19745bf9f3ebf9e40', '402860816bff91c0016bff91cfea0004', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('bbbb38347b1a5340a1d293e455c632ce', 'fb19fb067cd841f9ae93d4eb3b883dc0', '3', '4', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('bc648624ad14c826bbc6e9b23a2b9858', '402860816bff91c0016bff91ca7e0002', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('bc793fdbef9f6474425456c4eb9d197a', '402860816bff91c0016bff91cfea0004', 'witness', '证明人', 'references', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('bc7df6f3cf49f670c36a3de25e25e715', '402860816bff91c0016bff91d2810005', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('bd39cb237049ac60218b3f4dd844f30c', '402860816bff91c0016bffa220a9000b', 'current_address', '现居住地', 'current_address', 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 30, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('bde81809057b1a4c974fa0f090501fdd', '402860816aa5921f016aa5dedcb90009', 'update_by', '更新人', 'update_by', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 4, 'admin', '2019-05-11 15:56:47', '2019-05-11 15:50:08', 'admin'),
('be3f8c157d8a1b40e6f7b836552a8095', '8994f2817b5a45d9890aa04497a317c5', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:16', 'admin'),
('be5eeda7d51dace73d3818bd8467b53b', '402860816bff91c0016bff91c0cb0000', 'update_time', '更新时间', 'update_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 15, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('be868eed386da3cfcf49ea9afcdadf11', 'd35109c3632c4952a19ecc094943dd71', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('bec3082fc5f0f194be5cd72cc2866ff4', 'e5464aa8fa7b47c580e91593cf9b46dc', 'wl_name', '物料名字', NULL, 0, 1, 'String', 200, 0, '', 'wl_code', 'air_china_materiel', 'wl_name', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-04-24 17:09:49', '2019-04-24 11:05:10', 'admin'),
('bed0bc67f570613eaa6a1bd8bcaaddcc', '4b556f0168f64976a3d20bfb932bc798', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('bf61aa04c5ca77ad54c764f8f8b2bdec', '402860816bff91c0016bff91d8830007', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 12, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('bf98a3a2ebe6c681b704b461421ded7d', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 4, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('bfc2f19fae367f885adb8bd82a344391', '4028318169e81b970169e81b97650000', 'userid', '操作用户账号', 'userid', 0, 1, 'string', 32, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('c07defeaa4319844575f06e152174ae6', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'comment', '备注', NULL, 0, 1, 'String', 256, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 17, 'jeecg', '2020-04-11 23:10:39', '2020-03-07 20:48:27', 'admin'),
('c0d66c95773774e7ac1f2a88df307e7a', '402860816aa5921f016aa5921f480000', 'reason', '请假原因', 'reason', 0, 1, 'string', 500, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('c0f1dc6dab2f1dc0980626c2e6bda654', '1e65c54cea44446897c5fec4d967d3f6', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('c217349cc1dfc9e41e005e21babe9e32', '2d869ad51818483faea70b2bd62ea34e', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('c29216d975fee50af175bca8c664a475', 'e67d26b610dd414c884c4dbb24e71ce3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:56', 'admin'),
('c43b2d9c766e5c539b9f1e05dbeefc47', '2d869ad51818483faea70b2bd62ea34e', 'work_id', '作业ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', 'teaching_work', 'id', 7, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('c43d87b6340c29c0c354aa9c579f387f', '32feeb502544416c9bf41329c10a88f4', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('c53dbd2d8d798931c5ac498ea36eae16', '2d869ad51818483faea70b2bd62ea34e', 'score', '评分', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('c5dd2fc34ae825ebfced2ec74948654c', '402860816aa5921f016aa5921f480000', 'end_date', '请假结束时间', 'end_date', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('c5f6ea01a6523a60df153cc61dc92f4d', 'fbc35f067da94a70adb622ddba259352', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('c6730e00df5efd77fedf181df29102de', '402860816bff91c0016bff91c7010001', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('c75a7cb0a21958aa7ca5442f66019669', 'e9faf717024b4aae95cff224ae9b6d97', 'depart', '所属部门', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('c772ed9cbe2d1dc69e9ffa73d3487021', '4b556f0168f64976a3d20bfb932bc798', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-12 23:38:28', 'admin'),
('c91b697b1bcd2be943fc746e2660bc9e', '402860816bff91c0016bff91d2810005', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('c9b698d3f75aa780ee1eb67ef090b15b', '73162c3b8161413e8ecdca7eb288d0c9', 'wl_code', '物料编码', NULL, 0, 1, 'String', 200, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('caf5a071f2299c0f9ff2f3038d6d0fc6', '402860816bff91c0016bff91ca7e0002', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin');
INSERT INTO `onl_cgform_field` (`id`, `cgform_head_id`, `db_field_name`, `db_field_txt`, `db_field_name_old`, `db_is_key`, `db_is_null`, `db_type`, `db_length`, `db_point_length`, `db_default_val`, `dict_field`, `dict_table`, `dict_text`, `field_show_type`, `field_href`, `field_length`, `field_valid_type`, `field_must_input`, `field_extend_json`, `field_value_rule_code`, `is_query`, `is_show_form`, `is_show_list`, `is_read_only`, `query_mode`, `main_table`, `main_field`, `order_num`, `update_by`, `update_time`, `create_time`, `create_by`) VALUES
('cb33a708b95e19085f8c9001d2d5c64c', 'e9faf717024b4aae95cff224ae9b6d97', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('cb7da49a981a1b0acc5f7e8a0130bdcd', 'd35109c3632c4952a19ecc094943dd71', 'user_code', '用户编码', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 0, 0, 'single', '', '', 10, 'admin', '2019-08-23 23:45:15', '2019-05-11 16:26:37', 'admin'),
('cb871284e845e26e88242a96fac9c576', '402860816bff91c0016bff91c7010001', 'order_no', '序号', 'order_no', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('cc1ddc1304d3eb5d9a189da0a509ccd0', '32f75e4043ef4070919dbd4337186a3d', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-04-11 10:15:32', '2019-03-27 15:54:49', 'admin'),
('ccf2f331af46ddc411b8039dd187621b', '4028839a6de2ebd3016de2ebd3870000', 'price', '单价', 'price', 0, 1, 'double', 10, 2, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 10, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('cd5618190b06941514dd024d55cf639e', '441e68dc1d0147d5a69fb54260d1dbb3', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 1, 0, 0, 0, 'group', '', '', 2, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('cee3c1dbf67b4a7d9626b8032897a4c7', '402860816bff91c0016bff91d8830007', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('cf1c78922787b987e14f8118956c1440', '1e65c54cea44446897c5fec4d967d3f6', 'view_num', '查看次数', NULL, 0, 0, 'int', 32, 0, '0', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 13, NULL, NULL, '2020-04-11 21:43:06', 'jeecg'),
('cf4c5a4c06ae6bac701edfeedfcd16aa', 'd3ae1c692b9640e0a091f8c46e17bb01', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('cfeb6491427aec2b4db9694af867da23', 'e9faf717024b4aae95cff224ae9b6d97', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('d015ec0700ee55552e876a54811d3425', '441e68dc1d0147d5a69fb54260d1dbb3', 'del_flag', '是否删除', NULL, 0, 0, 'int', 1, 0, '0', 'del_flag', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 12, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('d1a98298072bc18695126a5609a5460c', 'c8c8621a42434b4eb743027b07c17bd9', 'depart_id', '班级ID', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', 'sys_depart', 'id', 3, NULL, NULL, '2020-04-11 23:05:40', 'jeecg'),
('d2551b70dc96a45a73b304bf755a996f', '402860816bff91c0016bff91d8830007', 'workplace', '工作单位', 'workplace', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('d29dcdba14ea61808391fff2d927efea', '402860816bff91c0016bff91c0cb0000', 'work_summary', '工作总结', 'work_summary', 0, 1, 'Text', 65535, 0, '', '', '', '', 'textarea', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('d3a701472d27ca8435d6a781a597038d', 'deea5a8ec619460c9245ba85dbc59e80', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-06-10 16:07:16', '2019-04-20 11:41:19', 'admin'),
('d431c06441419555533d99215324340d', '1e65c54cea44446897c5fec4d967d3f6', 'work_cover', '作业封面', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 12, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('d48bfd2a840f9b1d00bd3b5599dca0f0', '402860816bff91c0016bff91cda80003', 'post', '职务', 'post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('d4d8cae3cd9ea93e378fc14303eee105', 'd35109c3632c4952a19ecc094943dd71', 'create_by', '创建人登录名称', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('d4dea775487aef5a7aea41791d3a65db', 'e5464aa8fa7b47c580e91593cf9b46dc', 'cycle_time', '发放周期(年)', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 11, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:09:06', 'admin'),
('d52c79620e21128fb69b4e8628cf25cc', 'dbf4675875e14676a3f9a8b2b8941140', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-05-27 18:02:07', 'admin'),
('d530ab1bc3c51e8249a506a25d1003c7', '79091e8277c744158530321513119c68', 'start_time', '会签发起时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('d53e70411c206efecb8dcd00174e907c', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('d5df0a35352ee960053686e959e9084b', '1acb6f81a1d9439da6cc4e868617b565', 'wl_unit', '计量单位', NULL, 0, 1, 'String', 100, 0, '', 'air_china_unit', '', '', 'list_multi', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('d6f26667e3c1141a9cf7c6d636c7fb66', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'pay_price', '实付金额', NULL, 0, 1, 'int', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 1, 1, 1, 1, 'group', '', '', 10, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('d6fad89f4f26d733291863c2dfbc5945', '27fc5f91274344afa7673a732b279939', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('d766ea5809e2ec9ff2cdbcb18f610ab3', '7ea60a25fa27470e9080d6a921aabbd1', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('d76a2791e3c67aa75d9a833fc20ac202', '699d6a7064064ca7805c68ea0f06932c', 'activity_type', '活动类型', NULL, 0, 1, 'int', 3, 0, '', 'activity_type', '', '', 'list', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 8, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('d7c3b107f004cbc99dfe1fe6c79894d8', '402860816bff91c0016bffa220a9000b', 'social_insurance_type', '参加社保类型', 'social_insurance_type', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 35, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('d8234b56acea1a752271a6c911dd91a0', '7ea60a25fa27470e9080d6a921aabbd1', 'age', '年龄', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, NULL, NULL, '2019-04-17 00:22:21', 'admin'),
('d86909d794b01ad7fbb5e61d28b6603b', '73162c3b8161413e8ecdca7eb288d0c9', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('d949d9157831c2fb7ba9f175081fe036', '402860816bff91c0016bff91cda80003', 'school', '学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('d9d308feb95968dbb322c9bff0c18452', '32feeb502544416c9bf41329c10a88f4', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('d9dde2f59bb148c6b7e95256acad8972', 'e67d26b610dd414c884c4dbb24e71ce3', 'post_name', '岗位名字', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-04-24 11:03:32', '2019-04-24 11:02:57', 'admin'),
('d9f9ae6986cb85019a3a4030f62f4d1a', '402860816bff91c0016bff91cfea0004', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('db1fb3e12385cb967b63420cfe97cde6', '402860816bff91c0016bff91cda80003', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('db6f082bbfbf5230e4ec565ab8c4ed57', '699d6a7064064ca7805c68ea0f06932c', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('dc2bec862a4f0d600751c632d246f0ed', '4028839a6de2ebd3016de2ebd3870000', 'update_time', '更新日期', 'update_time', 0, 1, 'Date', 0, 0, NULL, NULL, NULL, NULL, 'date', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 5, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('dcb06b60e2c557a5c8a2a3e6f4d31534', '1e65c54cea44446897c5fec4d967d3f6', 'create_time', '创建日期', NULL, 0, 0, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('dd3e1e13d7429807b83a00a090e060b7', '402860816bff91c0016bffa220a9000b', 'join_party_info', '入党（团）时间地点', 'join_party_info', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 26, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ddc302f84c75a5f056855c664b82202a', '402860816aa5921f016aa5921f480000', 'days', '请假天数', 'days', 0, 1, 'int', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('ddcc14a2105588982b4ae657f2893d81', '32feeb502544416c9bf41329c10a88f4', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:23', 'admin'),
('dedb920a5e876e27eb144464209ebe1e', '27fc5f91274344afa7673a732b279939', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('df489194c6008f3bd21b2c1c11fde337', 'fb19fb067cd841f9ae93d4eb3b883dc0', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 2, NULL, NULL, '2019-03-23 11:39:48', 'admin'),
('e0c5d6e483897d5c4e7894dc66dd1aff', '32feeb502544416c9bf41329c10a88f4', 'bpm_status', '流程状态', NULL, 0, 1, 'String', 2, 0, '', 'bpm_status', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-08-23 20:03:40', '2019-07-02 18:23:58', 'admin'),
('e24de426223dc0271a55eccc1d5457d0', '73162c3b8161413e8ecdca7eb288d0c9', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('e2d73ccda7f10f5a1ccce3c48b1e699e', '402860816bff91c0016bffa220a9000b', 'residence_street', '户口所在街道', 'residence_street', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 27, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('e3965246be17a5b304633f92f14b82c9', '441e68dc1d0147d5a69fb54260d1dbb3', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('e43e5bf1cd221bb9df15b114babe0097', '441e68dc1d0147d5a69fb54260d1dbb3', 'file_path', '文件路径', NULL, 0, 0, 'String', 1024, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 1, 'single', '', '', 9, 'jeecg', '2020-04-12 11:10:32', '2020-04-11 21:02:05', 'jeecg'),
('e4914fdff68ac72486ada105e6e9fa36', 'e9faf717024b4aae95cff224ae9b6d97', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-07-03 18:23:49', '2019-07-03 18:22:35', 'admin'),
('e4a4c1d50b7b46678bc14fd5b90ee082', '73162c3b8161413e8ecdca7eb288d0c9', 'create_time', '创建日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('e50b4398731e06572c247993a0dcc38d', 'd35109c3632c4952a19ecc094943dd71', 'name', '用户名', NULL, 0, 1, 'string', 200, 0, '', '', '', '', 'text', '', 120, '*', '0', '', '', 0, 1, 1, 0, 'single', '', '', 5, 'admin', '2019-08-23 23:45:15', '2019-03-15 14:24:35', 'admin'),
('e53f53766d1f7718b3ee5eabe105b969', '402860816bff91c0016bffa220a9000b', 'social_insurance_time', '五险一金日期', 'social_insurance_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 38, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('e5597fa13c0f214e9e8c7917fe507908', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('e672d5974a06d5c37b3b4c94a6f29f96', '4028318169e81b970169e81b97650000', 'request_url', '请求路径', 'request_url', 0, 1, 'string', 255, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 9, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('e6e4aa4f3680fc5a8c8316d58777e066', '699d6a7064064ca7805c68ea0f06932c', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 1, 'single', '', '', 1, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('e7aade12ca722b59c1ec681d14247ff8', '402860816bff91c0016bff91d8830007', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('e845925368919482df6dac58e6ed708d', '402860816bff91c0016bff91d8830007', 'phone', '联系方式', 'phone', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('e88d328af34dd8a17f51437c52b68a2d', '402860816bff91c0016bff91cfea0004', 'create_by', '创建人', 'create_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('e99cc08f4d88dd8f788399db8d448ee8', '62e29cdb81ac44d1a2d8ff89851b853d', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('ea644c4c208739640933ba6e568045c1', 'e2faf977fdaf4b25a524f58c2441a51c', 'ruz_date', '入职时间', NULL, 0, 1, 'Date', 32, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('ea96d1c33f0f0d7245045e70a5793257', '402860816bff91c0016bffa220a9000b', 'current_postcode', '现居住地邮编', 'current_postcode', 0, 1, 'string', 10, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 31, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ebc41362681919cc680fcc58bf87fdcb', '1acb6f81a1d9439da6cc4e868617b565', 'price', '单价', NULL, 0, 1, 'double', 10, 2, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 12, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('ec20e66d5eb9b8b7f58de9edc0f7630b', '1acb6f81a1d9439da6cc4e868617b565', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('ec5e9cb5809b2f8ce1446df4a27693f0', '27fc5f91274344afa7673a732b279939', 'name', '用户名', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 7, 'admin', '2019-07-01 16:28:20', '2019-07-01 16:26:42', 'admin'),
('ed16f23d08e7bcda11a1383fda68057e', '402860816bff91c0016bff91c7010001', 'employee_id', '员工ID', 'employee_id', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', 'oa_employee_info', 'id', 2, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('edda30c64e1dccee510d40b77a8ca094', 'fb7125a344a649b990c12949945cb6c1', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 0, 0, 0, 'single', '', '', 3, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('ee0656f99ba7257571d2539bd7bb5f1a', '1e65c54cea44446897c5fec4d967d3f6', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'jeecg', '2020-04-11 21:43:06', '2020-04-11 21:34:29', 'jeecg'),
('ee09e0e21fa350b9346b70292dcfca00', '79091e8277c744158530321513119c68', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin'),
('ee4ffe04a25fcf556e78183f1f521546', '402860816aa5921f016aa5921f480000', 'create_by', '创建人id', 'create_by', 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 8, 'admin', '2019-05-11 15:31:54', '2019-05-11 14:26:19', 'admin'),
('ee5803611f63643059b6375166d71567', '402860816bff91c0016bff91c7010001', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:07:47', '2019-07-17 18:54:32', 'admin'),
('ef37edbd31f12f6e5b11a66991182e1f', '699d6a7064064ca7805c68ea0f06932c', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, 'jeecg', '2020-04-11 23:04:12', '2020-03-08 19:28:36', 'admin'),
('ef81373c5fd7130d7e23859d90c9eb3e', '402860816bff91c0016bff91cda80003', 'from_time', '开始日期', 'from_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 3, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('efa86c23d31ef04ab8f3ed541e6df014', '2d869ad51818483faea70b2bd62ea34e', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('efd1b955a75b5046e9857e00fe94ae2c', 'fbc35f067da94a70adb622ddba259352', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('f015cc2ffdcc2c4be1e9b3622eb69b52', 'fbc35f067da94a70adb622ddba259352', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-07-03 19:44:23', 'admin'),
('f06b2bb01ea1fae487b7e3c3eb521d5b', 'd3ae1c692b9640e0a091f8c46e17bb01', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('f0967fd139b440f79f21248bf4e4a209', 'd3ae1c692b9640e0a091f8c46e17bb01', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, NULL, NULL, '2019-07-24 14:47:30', 'admin'),
('f0a453930aa16ca32f2e3be860bfe542', '402860816bff91c0016bffa220a9000b', 'education', '学历', 'education', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 14, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('f12753b4a3815697a72017a7436fe733', 'e2faf977fdaf4b25a524f58c2441a51c', 'update_time', '更新日期', NULL, 0, 1, 'Date', 20, 0, '', '', '', '', 'datetime', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 5, 'admin', '2019-06-10 17:27:00', '2019-04-24 17:12:11', 'admin'),
('f1ab7d3b55ade57eeac6c55b32ce813a', '1acb6f81a1d9439da6cc4e868617b565', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('f1c7fde21f26c7ed64a0ef1095900c52', '4028318169e81b970169e81b97650000', 'request_type', '请求类型', 'request_type', 0, 1, 'string', 10, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 11, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('f4647a91a4ac5d6d32bb0692b800bffe', '402860816bff91c0016bff91c0cb0000', 'probation_post', '试用期职位', 'probation_post', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-19 18:09:01', '2019-07-17 18:54:32', 'admin'),
('f4b0bc7f3d6562e28d7c5e2d56510ecd', 'e5464aa8fa7b47c580e91593cf9b46dc', 'first_num', '首次数量', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 8, 'admin', '2019-04-24 17:09:49', '2019-04-24 14:31:31', 'admin'),
('f4f1e41d27c078aae72e84c5c35e0540', '2d869ad51818483faea70b2bd62ea34e', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2020-04-11 21:39:07', 'jeecg'),
('f558359b06aea79a992c102ce3563a4d', '4028318169e81b970169e81b97650000', 'username', '操作用户名称', 'username', 0, 1, 'string', 100, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 6, NULL, NULL, '2019-04-04 19:28:36', 'admin'),
('f57c7254e74ac121710eba824af25018', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'status', '订单状态', NULL, 0, 0, 'int', 4, 0, '', 'order_status', '', '', 'radio', '', 120, NULL, '0', '', '', 1, 1, 1, 0, 'single', '', '', 11, 'jeecg', '2020-04-11 23:10:38', '2020-03-07 20:48:27', 'admin'),
('f6afcb7d8ea81879593ff737b55ddcc0', '402860816bff91c0016bff91cda80003', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:06:36', '2019-07-17 18:54:34', 'admin'),
('f6f8aed87ec73994f6a12abbc079dbb1', '402860816bff91c0016bffa220a9000b', 'update_by', '更新人', 'update_by', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 41, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('f7332af7586c83c87f7b9ea144a5292d', '62e29cdb81ac44d1a2d8ff89851b853d', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, NULL, NULL, '2019-05-11 14:01:14', 'admin'),
('f76719783433487f4710232e2ae0e521', '402860816bff91c0016bff91cfea0004', 'id', 'id', 'id', 1, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'group', '', '', 1, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('f7e7eb84ddc34d7e09d10af213ac6667', '402860816bff91c0016bff91d2810005', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 11, 'admin', '2019-07-19 18:05:55', '2019-07-17 18:54:35', 'admin'),
('f81d7103c0c857e5c744cda2bc4c000a', '402860816bff91c0016bff91ca7e0002', 'cert_organizations', '发证机关', 'cert_organizations', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 6, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('f82db8edef5babf741914b0fa221329b', '4028839a6de2ebd3016de2ebd3870000', 'bpm_status', '流程状态', 'bpm_status', 0, 1, 'string', 2, 0, NULL, NULL, NULL, NULL, 'text', NULL, 120, NULL, '0', NULL, NULL, 0, 1, 1, 0, 'group', NULL, NULL, 16, NULL, NULL, '2019-10-19 15:29:30', 'admin'),
('f8a0fd20a1173270afdfed1129d5c669', '402860816bff91c0016bffa220a9000b', 'depart_id', '所在部门id', NULL, 0, 1, 'String', 32, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 44, 'admin', '2019-07-22 16:15:32', '2019-07-19 15:33:44', 'admin'),
('f8cc6be747fec10802eb625ac529c16f', '402860816bff91c0016bff91cfea0004', 'create_time', '创建时间', 'create_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 10, 'admin', '2019-07-19 18:05:13', '2019-07-17 18:54:35', 'admin'),
('f90bcb38fb89988bd40d1618aa75cea0', '758334cb1e7445e2822b60e807aec4a3', 'id', '主键', NULL, 1, 0, 'string', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 1, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('f94db83e41c69f407d3c9a81c5892269', '402860816bff91c0016bffa220a9000b', 'first_job_time', '首次工作时间', 'first_job_time', 0, 1, 'Date', 0, 0, '', '', '', '', 'date', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 22, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('f95d2cbefd25444909c83aaf8c4f72fb', '402860816bff91c0016bff91ca7e0002', 'memo', '备注', 'memo', 0, 1, 'string', 255, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 7, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('fa3a12d7abf72b23afe425f8dbd57f86', '1acb6f81a1d9439da6cc4e868617b565', 'size_type', '尺码类型', NULL, 0, 1, 'String', 2, 0, '', 'air_china_size', '', '', 'list', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-06-10 14:47:14', '2019-04-23 22:58:19', 'admin'),
('fa8f5a0ba673e0208934567462844eab', '402860816bff91c0016bff91ca7e0002', 'sys_org_code', '组织机构编码', 'sys_org_code', 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 13, 'admin', '2019-07-19 18:07:13', '2019-07-17 18:54:33', 'admin'),
('fafb32cf7e63bca93bbd70b0a0ea11fc', '758334cb1e7445e2822b60e807aec4a3', 'sys_org_code', '所属部门', NULL, 0, 1, 'string', 64, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 6, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('fc55d467102c2c782286f546d7820c3d', '73162c3b8161413e8ecdca7eb288d0c9', 'pid', '父物料', NULL, 0, 1, 'String', 36, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'single', '', '', 9, 'admin', '2019-07-01 14:23:32', '2019-06-10 15:18:34', 'admin'),
('fc76a3832d232829852cae6c66e44f67', '402860816bff91c0016bffa220a9000b', 'identity_no', '身份证号', 'identity_no', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 21, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('fcd519058d68fa4dab192335602b5d24', '402860816bff91c0016bffa220a9000b', 'real_name', '姓名', 'real_name', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 5, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('fd0586cae06685959415d9017b2bdf49', '758334cb1e7445e2822b60e807aec4a3', 'create_by', '创建人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 2, NULL, NULL, '2019-10-18 18:02:09', 'admin'),
('fde00160a5d664effaa4b5552e814e74', 'fb7125a344a649b990c12949945cb6c1', 'sex', '性别', NULL, 0, 1, 'string', 32, 0, '', '', '', '', 'text', '', 120, '', '0', '', '', 0, 1, 1, 0, 'single', '', '', 6, 'admin', '2019-03-26 19:24:11', '2019-03-26 19:01:52', 'admin'),
('ff49b468e54e137032f7e4d976b83b5a', '402860816bff91c0016bffa220a9000b', 'politically_status', '政治面貌', 'politically_status', 0, 1, 'string', 20, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 8, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ff601f75d0e7ced226748eb8fba2c896', '402860816bff91c0016bff91d8830007', 'relation', '关系', 'relation', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 4, 'admin', '2019-07-19 18:04:41', '2019-07-17 18:54:37', 'admin'),
('ffacafee9fa46eb297ca3252f95acef9', '402860816bff91c0016bffa220a9000b', 'school', '毕业学校', 'school', 0, 1, 'string', 100, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 1, 1, 0, 'group', '', '', 9, 'admin', '2019-07-22 16:15:32', '2019-07-17 19:12:24', 'admin'),
('ffcbf379fffabbd13aa2c22ce565ec12', '79091e8277c744158530321513119c68', 'update_by', '更新人', NULL, 0, 1, 'string', 50, 0, '', '', '', '', 'text', '', 120, NULL, '0', '', '', 0, 0, 0, 0, 'single', '', '', 4, 'admin', '2019-05-11 15:29:47', '2019-05-11 15:27:17', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_head`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_head` (
  `id` varchar(32) NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) NOT NULL COMMENT '表名',
  `table_type` int(11) NOT NULL COMMENT '表类型: 0单表、1主表、2附表',
  `table_version` int(11) DEFAULT '1' COMMENT '表版本',
  `table_txt` varchar(200) NOT NULL COMMENT '表说明',
  `is_checkbox` varchar(5) NOT NULL COMMENT '是否带checkbox',
  `is_db_synch` varchar(20) NOT NULL DEFAULT 'N' COMMENT '同步数据库状态',
  `is_page` varchar(5) NOT NULL COMMENT '是否分页',
  `is_tree` varchar(5) NOT NULL COMMENT '是否是树',
  `id_sequence` varchar(200) DEFAULT NULL COMMENT '主键生成序列',
  `id_type` varchar(100) DEFAULT NULL COMMENT '主键类型',
  `query_mode` varchar(10) NOT NULL COMMENT '查询模式',
  `relation_type` int(11) DEFAULT NULL COMMENT '映射关系 0一对多  1一对一',
  `sub_table_str` varchar(1000) DEFAULT NULL COMMENT '子表',
  `tab_order_num` int(11) DEFAULT NULL COMMENT '附表排序序号',
  `tree_parent_id_field` varchar(50) DEFAULT NULL COMMENT '树形表单父id',
  `tree_id_field` varchar(50) DEFAULT NULL COMMENT '树表主键字段',
  `tree_fieldname` varchar(50) DEFAULT NULL COMMENT '树开表单列字段',
  `form_category` varchar(50) NOT NULL DEFAULT 'bdfl_ptbd' COMMENT '表单分类',
  `form_template` varchar(50) DEFAULT NULL COMMENT 'PC表单模板',
  `form_template_mobile` varchar(50) DEFAULT NULL COMMENT '表单模板样式(移动端)',
  `scroll` int(3) DEFAULT '0' COMMENT '是否有横向滚动条',
  `copy_version` int(11) DEFAULT NULL COMMENT '复制版本号',
  `copy_type` int(3) DEFAULT '0' COMMENT '复制表类型1为复制表 0为原始表',
  `physic_id` varchar(32) DEFAULT NULL COMMENT '原始表ID',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `theme_template` varchar(50) DEFAULT NULL COMMENT '主题模板'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgform_head`
--

INSERT INTO `onl_cgform_head` (`id`, `table_name`, `table_type`, `table_version`, `table_txt`, `is_checkbox`, `is_db_synch`, `is_page`, `is_tree`, `id_sequence`, `id_type`, `query_mode`, `relation_type`, `sub_table_str`, `tab_order_num`, `tree_parent_id_field`, `tree_id_field`, `tree_fieldname`, `form_category`, `form_template`, `form_template_mobile`, `scroll`, `copy_version`, `copy_type`, `physic_id`, `update_by`, `update_time`, `create_by`, `create_time`, `theme_template`) VALUES
('1e65c54cea44446897c5fec4d967d3f6', 'teaching_work', 2, 2, '作业列表', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'teaching_work_correct,teaching_work_comment', NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 13:38:41', 'jeecg', '2020-04-11 21:34:29', 'normal'),
('2d869ad51818483faea70b2bd62ea34e', 'teaching_work_correct', 3, 1, '作业批改', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 1, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 11:16:16', 'jeecg', '2020-04-11 21:39:07', 'normal'),
('441e68dc1d0147d5a69fb54260d1dbb3', 'sys_file', 1, 8, '文件管理', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 1, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 11:10:38', 'jeecg', '2020-04-11 21:02:05', 'normal'),
('56870166aba54ebfacb20ba6c770bd73', 'test_order_main', 2, 5, '测试订单主表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'test_order_product', NULL, NULL, NULL, NULL, 'bdfl_include', '2', NULL, 0, NULL, 0, NULL, 'admin', '2019-11-21 17:58:28', 'admin', '2019-04-20 11:38:39', 'normal'),
('699d6a7064064ca7805c68ea0f06932c', 'teaching_activity', 2, 5, '营销活动', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, 'teaching_activity_depart', NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-11 23:05:40', 'admin', '2020-03-08 19:28:36', 'normal'),
('b5f6dafc26d7438a8ec64a1a101dea5e', 'teaching_order', 1, 6, '订单表', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-11 23:10:39', 'admin', '2020-03-07 20:48:27', 'erp'),
('c8c8621a42434b4eb743027b07c17bd9', 'teaching_activity_depart', 3, 1, '活动绑定班级', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, 1, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, NULL, NULL, 'jeecg', '2020-04-11 23:05:40', 'normal'),
('d35109c3632c4952a19ecc094943dd71', 'test_demo', 1, 14, '测试用户表', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2019-03-22 21:51:35', 'admin', '2019-03-15 14:24:35', 'normal'),
('d384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'teaching_student', 1, 6, '学生附加信息', 'Y', 'N', 'Y', 'N', NULL, 'UUID', 'single', NULL, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-11 23:03:48', 'admin', '2020-03-08 14:31:49', 'normal'),
('d6cb8d561355467086159ab8cfbe0aec', 'teaching_work_comment', 3, 3, '作品评论', 'Y', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, 2, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'jeecg', '2020-04-12 13:38:46', 'jeecg', '2020-04-11 21:46:47', 'normal'),
('deea5a8ec619460c9245ba85dbc59e80', 'test_order_product', 3, 7, '订单产品明细', 'N', 'Y', 'Y', 'N', NULL, 'UUID', 'single', 0, NULL, NULL, NULL, NULL, NULL, 'bdfl_include', '1', NULL, 0, NULL, 0, NULL, 'admin', '2019-04-20 11:42:53', 'admin', '2019-04-20 11:41:19', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgform_index`
--

CREATE TABLE IF NOT EXISTS `onl_cgform_index` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `cgform_head_id` varchar(32) DEFAULT NULL COMMENT '主表id',
  `index_name` varchar(100) DEFAULT NULL COMMENT '索引名称',
  `index_field` varchar(500) DEFAULT NULL COMMENT '索引栏位',
  `index_type` varchar(32) DEFAULT NULL COMMENT '索引类型',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgform_index`
--

INSERT INTO `onl_cgform_index` (`id`, `cgform_head_id`, `index_name`, `index_field`, `index_type`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('01778f3d46006808d25507fed1107e1d', '1e65c54cea44446897c5fec4d967d3f6', 'workName', 'work_name', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06'),
('18454d76a789b78e0b644197dc95b12f', '699d6a7064064ca7805c68ea0f06932c', 'activityname', 'activity_name', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13'),
('300332a0c2c93aaf8d7589cba7310539', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'userid', 'user_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39'),
('57c77341ebebe6215cd880159594ad4a', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'actionid', 'action_id', 'normal', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39'),
('64e0b4ae77f6e5b48a88fd694e7165b3', '441e68dc1d0147d5a69fb54260d1dbb3', 'filetag', 'file_tag', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32'),
('7f6ca69355c146336902371f028b602c', '441e68dc1d0147d5a69fb54260d1dbb3', 'filename', 'file_name', 'normal', 'jeecg', '2020-04-11 21:09:02', 'jeecg', '2020-04-12 11:10:32'),
('81ae57fb23f8f85d9e663d8968bc3462', '2d869ad51818483faea70b2bd62ea34e', 'workId', 'work_id', 'unique', 'jeecg', '2020-04-11 21:39:07', NULL, NULL),
('87b3b10c9ac082d81df7e3e54e6695c7', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'phone', 'phone', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48'),
('97aab1a82907b798a23f7031a8ed8a33', 'b5f6dafc26d7438a8ec64a1a101dea5e', 'orderno', 'order_no', 'unique', 'admin', '2020-03-07 21:11:25', 'jeecg', '2020-04-11 23:10:39'),
('982ab4c17e3d35e2d836a7f29b05fe0d', '1e65c54cea44446897c5fec4d967d3f6', 'courseId', 'course_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06'),
('a62597c38718ce67054bb1d221019cb2', 'd384fd5dbb0a4bdbbd9cd74b5b52b9eb', 'student_name', 'student_name', 'normal', 'admin', '2020-03-08 14:38:21', 'jeecg', '2020-04-11 23:03:48'),
('a84a6fd29e3f95d14ea84613043045a5', '699d6a7064064ca7805c68ea0f06932c', 'courseid', 'coures_id', 'normal', 'admin', '2020-03-08 19:34:09', 'jeecg', '2020-04-11 23:04:13'),
('b4a8465de9e0e52b9fdca988168b32fc', '1e65c54cea44446897c5fec4d967d3f6', 'userId', 'user_id', 'normal', 'jeecg', '2020-04-11 21:34:29', 'jeecg', '2020-04-11 21:43:06'),
('dd81266751fa6f588af8ee6ca4e3aafb', 'd6cb8d561355467086159ab8cfbe0aec', 'workId', 'work_id', 'normal', 'jeecg', '2020-04-11 21:46:47', 'jeecg', '2020-04-12 13:38:41');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgreport_head`
--

CREATE TABLE IF NOT EXISTS `onl_cgreport_head` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) NOT NULL COMMENT '报表编码',
  `name` varchar(100) NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) DEFAULT NULL COMMENT '描述',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgreport_head`
--

INSERT INTO `onl_cgreport_head` (`id`, `code`, `name`, `cgr_sql`, `return_val_field`, `return_txt_field`, `return_type`, `db_source`, `content`, `update_time`, `update_by`, `create_time`, `create_by`) VALUES
('6c7f59741c814347905a938f06ee003c', 'report_user', '统计在线用户', 'select * from sys_user', NULL, NULL, '1', NULL, NULL, '2019-11-22 16:34:31', 'admin', '2019-03-25 11:20:45', 'admin'),
('87b55a515d3441b6b98e48e5b35474a6', 'demo', 'Report Demo', 'select * from demo', NULL, NULL, '1', NULL, NULL, '2019-03-15 18:18:17', 'admin', '2019-03-12 11:25:16', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgreport_item`
--

CREATE TABLE IF NOT EXISTS `onl_cgreport_item` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) DEFAULT NULL COMMENT '字段文本',
  `field_width` int(3) DEFAULT NULL,
  `field_type` varchar(10) DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) DEFAULT NULL COMMENT '查询模式',
  `is_order` int(2) DEFAULT '0' COMMENT '是否排序  0否,1是',
  `is_search` int(2) DEFAULT '0' COMMENT '是否查询  0否,1是',
  `dict_code` varchar(500) DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int(2) DEFAULT '1' COMMENT '是否显示  0否,1显示',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) DEFAULT NULL COMMENT '取值表达式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgreport_item`
--

INSERT INTO `onl_cgreport_item` (`id`, `cgrhead_id`, `field_name`, `field_txt`, `field_width`, `field_type`, `search_mode`, `is_order`, `is_search`, `dict_code`, `field_href`, `is_show`, `order_num`, `replace_val`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('0ba0dc69589a85a96be30f59451c81df', 'b32a3fdd008f4506b2bac4ac00f0bd4f', '222', '222', NULL, 'String', NULL, 0, 0, '', '', 1, 0, '', 'admin', '2019-05-31 14:37:25', 'admin', '2019-05-31 14:37:30'),
('1740bb02519db90c44cb2cba8b755136', '6c7f59741c814347905a938f06ee003c', 'realname', '用户名称', NULL, 'String', NULL, 0, 0, '', '', 1, 3, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('1b181e6d2813bcb263adc39737f9df46', '87b55a515d3441b6b98e48e5b35474a6', 'name', '用户名', NULL, 'String', 'single', 0, 1, '', '', 1, 4, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('1fb45af29af4e792bdc5a4a2c06a4d4d', '402880ec5d872157015d87f2dd940010', 'data_table', '表名', NULL, 'String', NULL, 0, 0, NULL, NULL, 1, 0, NULL, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08'),
('402881f167cf82600167cfa154ec0003', '402880e64e1ef94d014e1efefc2a0001', 'id', 'id', 0, 'String', '', NULL, 0, '', '', 0, 0, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0004', '402880e64e1ef94d014e1efefc2a0001', 'accountname', 'accountname', 0, 'String', '', NULL, 0, '', '', 0, 1, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0005', '402880e64e1ef94d014e1efefc2a0001', 'accounttoken', 'accounttoken', 0, 'String', '', NULL, 0, '', '', 0, 2, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0006', '402880e64e1ef94d014e1efefc2a0001', 'accountnumber', 'accountnumber', 0, 'String', '', NULL, 0, '', '', 0, 3, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0007', '402880e64e1ef94d014e1efefc2a0001', 'accounttype', 'accounttype', 0, 'String', '', NULL, 0, '', '', 0, 4, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0008', '402880e64e1ef94d014e1efefc2a0001', 'accountemail', 'accountemail', 0, 'String', '', NULL, 0, '', '', 0, 5, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ed0009', '402880e64e1ef94d014e1efefc2a0001', 'accountdesc', 'accountdesc', 0, 'String', '', NULL, 0, '', '', 0, 6, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee000b', '402880e64e1ef94d014e1efefc2a0001', 'accountappid', 'accountappid', 0, 'String', '', NULL, 0, '', '', 0, 8, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee000c', '402880e64e1ef94d014e1efefc2a0001', 'accountappsecret', 'accountappsecret', 0, 'String', '', NULL, 0, '', '', 0, 9, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee000d', '402880e64e1ef94d014e1efefc2a0001', 'ADDTOEKNTIME', 'ADDTOEKNTIME', 0, 'String', '', NULL, 0, '', '', 0, 10, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee000e', '402880e64e1ef94d014e1efefc2a0001', 'USERNAME', 'USERNAME', 0, 'String', '', NULL, 0, '', '', 0, 11, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee0010', '402880e64e1ef94d014e1efefc2a0001', 'jsapiticket', 'jsapiticket', 0, 'String', '', NULL, 0, '', '', 0, 13, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ee0011', '402880e64e1ef94d014e1efefc2a0001', 'jsapitickettime', 'jsapitickettime', 0, 'String', '', NULL, 0, '', '', 0, 14, '', NULL, NULL, NULL, NULL),
('402881f167cf82600167cfa154ef0012', '402880e64e1ef94d014e1efefc2a0001', 'init_data_flag', 'init_data_flag', 0, 'String', '', NULL, 0, '', '', 0, 15, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490002', '402881f363aa9a380163aa9ebe480001', 'id', 'id', 0, 'String', '', NULL, 0, '', '', 0, 0, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490003', '402881f363aa9a380163aa9ebe480001', 'name', 'name', 0, 'String', 'single', NULL, 0, '', '', 0, 10, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490004', '402881f363aa9a380163aa9ebe480001', 'sex', 'sex', 0, 'String', 'single', NULL, 0, 'sex', '', 0, 11, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490005', '402881f363aa9a380163aa9ebe480001', 'age', 'age', 0, 'String', '', NULL, 0, '', '', 0, 12, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490006', '402881f363aa9a380163aa9ebe480001', 'address', 'address', 0, 'String', '', NULL, 0, '', '', 0, 13, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe490007', '402881f363aa9a380163aa9ebe480001', 'phone', 'phone', 0, 'String', '', NULL, 0, '', '', 0, 14, '', NULL, NULL, NULL, NULL),
('402881f363aa9a380163aa9ebe4a0008', '402881f363aa9a380163aa9ebe480001', 'memo', 'memo', 0, 'String', '', NULL, 0, '', '', 0, 15, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2c0004', '402880e64eb9a22c014eb9a4d5890001', 'ID', 'ID', 0, 'String', '', NULL, 0, '', '', 0, 0, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2c0005', '402880e64eb9a22c014eb9a4d5890001', 'activitiSync', 'activitiSync', 0, 'String', '', NULL, 0, '', '', 0, 1, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2d0006', '402880e64eb9a22c014eb9a4d5890001', 'browser', 'browser', 0, 'String', '', NULL, 0, '', '', 0, 2, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2d0007', '402880e64eb9a22c014eb9a4d5890001', 'password', 'password', 0, 'String', '', NULL, 0, '', '', 0, 3, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2e0008', '402880e64eb9a22c014eb9a4d5890001', 'realname', 'realname', 0, 'String', '', NULL, 0, '', '', 0, 4, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2e0009', '402880e64eb9a22c014eb9a4d5890001', 'signature', 'signature', 0, 'String', '', NULL, 0, '', '', 0, 5, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d2f000a', '402880e64eb9a22c014eb9a4d5890001', 'status', 'status', 0, 'String', '', NULL, 0, '', '', 0, 6, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d30000b', '402880e64eb9a22c014eb9a4d5890001', 'userkey', 'userkey', 0, 'String', '', NULL, 0, '', '', 0, 7, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d30000c', '402880e64eb9a22c014eb9a4d5890001', 'username', 'username', 0, 'String', '', NULL, 0, '', '', 0, 8, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d31000d', '402880e64eb9a22c014eb9a4d5890001', 'departid', 'departid', 0, 'String', '', NULL, 0, '', '', 0, 9, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d31000e', '402880e64eb9a22c014eb9a4d5890001', 'user_name_en', 'user_name_en', 0, 'String', '', NULL, 0, '', '', 0, 10, '', NULL, NULL, NULL, NULL),
('402881f36402f3de016403035d32000f', '402880e64eb9a22c014eb9a4d5890001', 'delete_flag', 'delete_flag', 0, 'String', '', NULL, 0, '', '', 0, 11, '', NULL, NULL, NULL, NULL),
('402881f3647e95be01647eb88c400003', '402880e74d76e784014d76f9e783001e', 'account', 'account', 0, 'String', 'single', NULL, 0, '', '', 0, 0, '', NULL, NULL, NULL, NULL),
('402881f3647e95be01647eb88c410004', '402880e74d76e784014d76f9e783001e', 'realname', 'realname', 0, 'String', '', NULL, 0, '', '', 0, 1, '', NULL, NULL, NULL, NULL),
('61ef5b323134938fdd07ad5e3ea16cd3', '87b55a515d3441b6b98e48e5b35474a6', 'key_word', '关键词', NULL, 'String', 'single', 0, 1, '', '', 1, 5, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('627768efd9ba2c41e905579048f21000', '6c7f59741c814347905a938f06ee003c', 'username', '用户账号', NULL, 'String', 'single', 0, 1, '', '', 1, 2, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('8a2dfe672f3c0d391ace4a9f9bf564ff', '402880ec5d872157015d87f2dd940010', 'data_id', '数据ID', NULL, 'String', NULL, 0, 0, NULL, NULL, 1, 0, NULL, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08'),
('8bb087a9aa2000bcae17a1b3f5768435', '6c7f59741c814347905a938f06ee003c', 'sex', '性别', NULL, 'Integer', 'single', 0, 1, 'sex', '', 1, 5, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('90d4fa57d301801abb26a9b86b6b94c4', '6c7f59741c814347905a938f06ee003c', 'birthday', '生日', NULL, 'Date', 'single', 0, 0, '', '', 1, 4, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('9a0a7375479b7657e16c6a228354b495', '402880ec5d872157015d87f2dd940010', 'data_version', '数据版本', NULL, 'String', NULL, 0, 0, NULL, NULL, 1, 0, NULL, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08'),
('a4ac355f07a05218854e5f23e2930163', '6c7f59741c814347905a938f06ee003c', 'avatar', '头像', NULL, 'String', NULL, 0, 0, '', '', 0, 6, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('ae4d621e391a1392779175cf5a65134c', '87b55a515d3441b6b98e48e5b35474a6', 'update_by', '修改人', NULL, 'String', NULL, 0, 0, '', '', 1, 7, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('b27bea35b1264003c79d38cb86d6929e', '6c7f59741c814347905a938f06ee003c', 'id', 'id', NULL, 'String', NULL, 0, 0, '', '', 0, 1, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('ce5168755a734ea09dd190e28bf8d9f4', '87b55a515d3441b6b98e48e5b35474a6', 'update_time', '修改时间', NULL, 'String', NULL, 0, 0, '', '', 1, 2, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('d6e86b5ffd096ddcc445c0f320a45004', '6c7f59741c814347905a938f06ee003c', 'phone', '手机号', NULL, 'String', NULL, 0, 0, '', '', 1, 11, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('df365cd357699eea96c29763d1dd7f9d', '6c7f59741c814347905a938f06ee003c', 'email', '邮箱', NULL, 'String', NULL, 0, 0, '', '', 1, 14, '', 'admin', '2019-11-22 16:34:31', NULL, NULL),
('edf9932912b81ad01dd557d3d593a559', '87b55a515d3441b6b98e48e5b35474a6', 'age', '年龄', NULL, 'String', NULL, 0, 0, '', '', 1, 8, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('f985883e509a6faaaf62ca07fd24a73c', '87b55a515d3441b6b98e48e5b35474a6', 'birthday', '生日', NULL, 'Date', 'single', 0, 1, '', '', 1, 1, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04'),
('fce83e4258de3e2f114ab3116397670c', '87b55a515d3441b6b98e48e5b35474a6', 'punch_time', '发布时间', NULL, 'String', NULL, 0, 0, '', '', 1, 3, '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');

-- --------------------------------------------------------

--
-- 表的结构 `onl_cgreport_param`
--

CREATE TABLE IF NOT EXISTS `onl_cgreport_param` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) DEFAULT NULL COMMENT '参数默认值',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `onl_cgreport_param`
--

INSERT INTO `onl_cgreport_param` (`id`, `cgrhead_id`, `param_name`, `param_txt`, `param_value`, `order_num`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('402881f36402f3de016403035d350010', '402880e64eb9a22c014eb9a4d5890001', 'usekey', 'usekey', '', 0, 'admin', '2018-06-15 18:35:09', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oss_file`
--

CREATE TABLE IF NOT EXISTS `oss_file` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `url` varchar(255) DEFAULT NULL COMMENT '文件地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Oss File';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_blob_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_calendars`
--

CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_cron_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

--
-- 转存表中的数据 `qrtz_cron_triggers`
--

INSERT INTO `qrtz_cron_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `CRON_EXPRESSION`, `TIME_ZONE_ID`) VALUES
('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', '3/30 * * * * ? *', 'Asia/Shanghai');

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_fired_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_job_details`
--

CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qrtz_job_details`
--

INSERT INTO `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `JOB_CLASS_NAME`, `IS_DURABLE`, `IS_NONCONCURRENT`, `IS_UPDATE_DATA`, `REQUESTS_RECOVERY`, `JOB_DATA`) VALUES
('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', '0', '0', '0', '0', 0xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c77080000001000000001740009706172616d65746572707800);

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_locks`
--

CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `qrtz_locks`
--

INSERT INTO `qrtz_locks` (`SCHED_NAME`, `LOCK_NAME`) VALUES
('quartzScheduler', 'TRIGGER_ACCESS');

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_paused_trigger_grps`
--

CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_scheduler_state`
--

CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_simple_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_simprop_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- --------------------------------------------------------

--
-- 表的结构 `qrtz_triggers`
--

CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`';

--
-- 转存表中的数据 `qrtz_triggers`
--

INSERT INTO `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `NEXT_FIRE_TIME`, `PREV_FIRE_TIME`, `PRIORITY`, `TRIGGER_STATE`, `TRIGGER_TYPE`, `START_TIME`, `END_TIME`, `CALENDAR_NAME`, `MISFIRE_INSTR`, `JOB_DATA`) VALUES
('quartzScheduler', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', 'DEFAULT', NULL, 1583505033000, 1583505003000, 5, 'PAUSED', 'CRON', 1583462974000, 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `sys_announcement`
--

CREATE TABLE IF NOT EXISTS `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `bus_type` varchar(20) DEFAULT NULL COMMENT '业务类型(email:邮件 bpm:流程)',
  `bus_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `open_type` varchar(20) DEFAULT NULL COMMENT '打开方式(组件：component 路由：url)',
  `open_page` varchar(255) DEFAULT NULL COMMENT '组件/路由 地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';

--
-- 转存表中的数据 `sys_announcement`
--

INSERT INTO `sys_announcement` (`id`, `titile`, `msg_content`, `start_time`, `end_time`, `sender`, `priority`, `msg_category`, `msg_type`, `send_status`, `send_time`, `cancel_time`, `del_flag`, `bus_type`, `bus_id`, `open_type`, `open_page`, `create_by`, `create_time`, `update_by`, `update_time`, `user_ids`) VALUES
('1b714f8ebc3cc33f8b4f906103b6a18d', '5467567', NULL, NULL, NULL, 'admin', NULL, '2', NULL, '1', '2019-03-30 12:40:38', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:23:26', 'admin', '2019-02-26 17:35:10', NULL),
('3d11237ccdf62450d20bb8abdb331178', '111222', NULL, NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-29 17:19:47', 'admin', '2019-03-29 17:19:50', NULL),
('7ef04e95f8de030b1d5f7a9144090dc6', '111', NULL, '2019-02-06 17:28:10', '2019-03-08 17:28:11', NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:17', 'admin', '2019-03-26 19:59:49', NULL),
('93a9060a1c20e4bf98b3f768a02c2ff9', '111', '111', '2019-02-06 17:20:17', '2019-02-21 17:20:20', 'admin', 'M', '2', 'ALL', '1', '2019-02-26 17:24:29', NULL, '0', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:16:26', 'admin', '2019-02-26 17:19:35', NULL),
('de1dc57f31037079e1e55c8347fe6ef7', '222', '2222', '2019-02-06 17:28:26', '2019-02-23 17:28:28', 'admin', 'M', '2', 'ALL', '1', '2019-03-29 17:19:56', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-02-26 17:28:36', 'admin', '2019-02-26 17:28:40', NULL),
('e52f3eb6215f139cb2224c52517af3bd', '334', '334', NULL, NULL, NULL, NULL, '2', NULL, '0', NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2019-03-30 12:40:28', 'admin', '2019-03-30 12:40:32', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_announcement_send`
--

CREATE TABLE IF NOT EXISTS `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';

--
-- 转存表中的数据 `sys_announcement_send`
--

INSERT INTO `sys_announcement_send` (`id`, `annt_id`, `user_id`, `read_flag`, `read_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('646c0c405ec643d4dc4160db2446f8ff', '93a9060a1c20e4bf98b3f768a02c2ff9', 'e9ca23d68d884d4ebb19d07889727dae', '1', '2019-11-21 16:30:01', 'admin', '2019-05-17 11:50:56', 'admin', '2019-11-21 16:30:01'),
('1197434450981543938', '93a9060a1c20e4bf98b3f768a02c2ff9', 'a75d45a015c44384a04449ee80dc3503', '1', '2020-03-02 16:55:06', 'jeecg', '2019-11-21 16:39:55', 'jeecg', '2020-03-02 16:55:06');

-- --------------------------------------------------------

--
-- 表的结构 `sys_category`
--

CREATE TABLE IF NOT EXISTS `sys_category` (
  `id` varchar(36) NOT NULL,
  `pid` varchar(36) DEFAULT NULL COMMENT '父级节点',
  `name` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `code` varchar(100) DEFAULT NULL COMMENT '类型编码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `has_child` varchar(3) DEFAULT NULL COMMENT '是否有子节点'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_category`
--

INSERT INTO `sys_category` (`id`, `pid`, `name`, `code`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `has_child`) VALUES
('1183693424827564034', '0', '物料树', 'B02', 'admin', '2019-10-14 18:37:59', 'admin', '2019-10-14 18:38:15', 'A01', '1'),
('1183693491043041282', '1183693424827564034', '上衣', 'B02A01', 'admin', '2019-10-14 18:38:15', 'admin', '2019-10-14 18:38:43', 'A01', '1'),
('1183693534173069314', '1183693424827564034', '裤子', 'B02A02', 'admin', '2019-10-14 18:38:25', NULL, NULL, 'A01', NULL),
('1183693610534567937', '1183693491043041282', '秋衣', 'B02A01A01', 'admin', '2019-10-14 18:38:43', NULL, NULL, 'A01', NULL),
('1183693700254924802', '1183693491043041282', '兵装', 'B02A01A02', 'admin', '2019-10-14 18:39:05', NULL, NULL, 'A01', NULL),
('1183693773974011906', '1183693491043041282', '女装', 'B02A01A03', 'admin', '2019-10-14 18:39:22', NULL, NULL, 'A01', NULL),
('1185039122143719425', '0', '电脑产品', 'A01', 'admin', '2019-10-18 11:45:18', 'admin', '2019-10-18 11:45:31', 'A01', '1'),
('1185039176799694850', '1185039122143719425', 'thinkpad', 'A01A01', 'admin', '2019-10-18 11:45:31', NULL, NULL, 'A01', NULL),
('1185039255115739138', '1185039122143719425', 'mackbook', 'A01A02', 'admin', '2019-10-18 11:45:50', NULL, NULL, 'A01', NULL),
('1185039299051073537', '1185039122143719425', '华为电脑', 'A01A03', 'admin', '2019-10-18 11:46:01', NULL, NULL, 'A01', NULL),
('22a50b413c5e1ef661fb8aea9469cf52', 'e9ded10fd33e5753face506f4f1564b5', 'MacBook', 'B01-2-1', 'admin', '2019-06-10 15:43:13', NULL, NULL, 'A01', NULL),
('5c8f68845e57f68ab93a2c8d82d26ae1', '0', '笔记本', 'B01', 'admin', '2019-06-10 15:34:11', 'admin', '2019-06-10 15:34:24', 'A01', '1'),
('937fd2e9aa13b8bab1da1ca36d3fd344', 'e9ded10fd33e5753face506f4f1564b5', '台式机', 'B02-2-2', 'admin', '2019-06-10 15:43:32', 'admin', '2019-08-21 12:01:59', 'A01', NULL),
('e9ded10fd33e5753face506f4f1564b5', '5c8f68845e57f68ab93a2c8d82d26ae1', '苹果电脑', 'B01-2', 'admin', '2019-06-10 15:41:14', 'admin', '2019-06-10 15:43:13', 'A01', '1'),
('f39a06bf9f390ba4a53d11bc4e0018d7', '5c8f68845e57f68ab93a2c8d82d26ae1', '华为', 'B01-1', 'admin', '2019-06-10 15:34:24', 'admin', '2019-08-21 12:01:56', 'A01', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_check_rule`
--

CREATE TABLE IF NOT EXISTS `sys_check_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键id',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_json` varchar(1024) DEFAULT NULL COMMENT '规则JSON',
  `rule_description` varchar(200) DEFAULT NULL COMMENT '规则描述',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_check_rule`
--

INSERT INTO `sys_check_rule` (`id`, `rule_name`, `rule_code`, `rule_json`, `rule_description`, `update_by`, `update_time`, `create_by`, `create_time`) VALUES
('1224980593992388610', '通用编码规则', 'common', '[{"digits":"1","pattern":"^[a-z|A-Z]$","message":"第一位只能是字母"},{"digits":"*","pattern":"^[0-9|a-z|A-Z|_]{0,}$","message":"只能填写数字、大小写字母、下划线"},{"digits":"*","pattern":"^.{3,}$","message":"最少输入3位数"},{"digits":"*","pattern":"^.{3,12}$","message":"最多输入12位数"}]', '规则：1、首位只能是字母；2、只能填写数字、大小写字母、下划线；3、最少3位数，最多12位数。', 'admin', '2020-02-07 11:25:48', 'admin', '2020-02-05 16:58:27'),
('1225001845524004866', '负责的功能测试', 'test', '[{"digits":"*","pattern":"^.{3,12}$","message":"只能输入3-12位字符"},{"digits":"3","pattern":"^\\\\d{3}$","message":"前3位必须是数字"},{"digits":"*","pattern":"^[^pP]*$","message":"不能输入P"},{"digits":"4","pattern":"^@{4}$","message":"第4-7位必须都为 @"},{"digits":"2","pattern":"^#=$","message":"第8-9位必须是 #="},{"digits":"1","pattern":"^O$","message":"第10位必须为大写的O"},{"digits":"*","pattern":"^.*。$","message":"必须以。结尾"}]', '包含长度校验、特殊字符校验等', 'admin', '2020-02-07 11:57:31', 'admin', '2020-02-05 18:22:54');

-- --------------------------------------------------------

--
-- 表的结构 `sys_data_log`
--

CREATE TABLE IF NOT EXISTS `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_data_log`
--

INSERT INTO `sys_data_log` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `data_table`, `data_id`, `data_content`, `data_version`) VALUES
('402880f05ab0d198015ab12274bf0006', 'admin', '2017-03-09 11:35:09', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 23, 2016 12:00:00 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"9001","status":"1","content":"111","id":"4028ef81550c1a7901550c1cd6e70001"}', 3),
('402880f05ab6d12b015ab700bead0009', 'admin', '2017-03-10 14:56:03', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab700be8d0008', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Mar 10, 2017 2:56:03 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"111","status":"0","id":"402880f05ab6d12b015ab700be8d0008"}', 1),
('402880f05ab6d12b015ab705a23f000d', 'admin', '2017-03-10 15:01:24', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab705a233000c', '{"mobilePhone":"","officePhone":"11","email":"","createDate":"Mar 10, 2017 3:01:24 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"11","status":"0","id":"402880f05ab6d12b015ab705a233000c"}', 1),
('402880f05ab6d12b015ab712a6420013', 'admin', '2017-03-10 15:15:37', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Mar 10, 2017 3:15:37 PM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"小王","status":"0","id":"402880f05ab6d12b015ab712a6360012"}', 1),
('402880f05ab6d12b015ab712d0510015', 'admin', '2017-03-10 15:15:47', NULL, NULL, 'jeecg_demo', '402880f05ab6d12b015ab712a6360012', '{"mobilePhone":"18611788525","officePhone":"","email":"","createDate":"Mar 10, 2017 3:15:37 AM","sex":"0","depId":"402880e447e99cf10147e9a03b320003","userName":"小王","status":"0","id":"402880f05ab6d12b015ab712a6360012"}', 2),
('402880f05ab6d12b015ab71308240018', 'admin', '2017-03-10 15:16:02', NULL, NULL, 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{"mobilePhone":"13111111111","officePhone":"66666666","email":"demo@jeecg.com","age":12,"salary":10.00,"birthday":"Feb 14, 2014 12:00:00 AM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"小明","status":"","content":"","id":"8a8ab0b246dc81120146dc81860f016f"}', 1),
('402880f05ab6d12b015ab72806c3001b', 'admin', '2017-03-10 15:38:58', NULL, NULL, 'jeecg_demo', '8a8ab0b246dc81120146dc81860f016f', '{"mobilePhone":"18611788888","officePhone":"66666666","email":"demo@jeecg.com","age":12,"salary":10.00,"birthday":"Feb 14, 2014 12:00:00 AM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"小明","status":"","content":"","id":"8a8ab0b246dc81120146dc81860f016f"}', 2),
('4028ef815318148a0153181567690001', 'admin', '2016-02-25 18:59:29', NULL, NULL, 'jeecg_demo', '4028ef815318148a0153181566270000', '{"mobilePhone":"13423423423","officePhone":"1","email":"","age":1,"salary":1,"birthday":"Feb 25, 2016 12:00:00 AM","createDate":"Feb 25, 2016 6:59:24 PM","depId":"402880e447e9a9570147e9b6a3be0005","userName":"1","status":"0","id":"4028ef815318148a0153181566270000"}', 1),
('4028ef815318148a01531815ec5c0003', 'admin', '2016-02-25 19:00:03', NULL, NULL, 'jeecg_demo', '4028ef815318148a0153181566270000', '{"mobilePhone":"13426498659","officePhone":"1","email":"","age":1,"salary":1.00,"birthday":"Feb 25, 2016 12:00:00 AM","createDate":"Feb 25, 2016 6:59:24 AM","depId":"402880e447e9a9570147e9b6a3be0005","userName":"1","status":"0","id":"4028ef815318148a0153181566270000"}', 2),
('4028ef8153c028db0153c0502e6b0003', 'admin', '2016-03-29 10:59:53', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{"mobilePhone":"18455477548","officePhone":"123","email":"","createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', 1),
('4028ef8153c028db0153c0509aa40006', 'admin', '2016-03-29 11:00:21', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{"mobilePhone":"13565486458","officePhone":"","email":"","createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', 1),
('4028ef8153c028db0153c051c4a70008', 'admin', '2016-03-29 11:01:37', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{"mobilePhone":"13565486458","officePhone":"","email":"","createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', 2),
('4028ef8153c028db0153c051d4b5000a', 'admin', '2016-03-29 11:01:41', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{"mobilePhone":"13565486458","officePhone":"123","email":"","createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', 2),
('4028ef8153c028db0153c07033d8000d', 'admin', '2016-03-29 11:34:52', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0502d420002', '{"mobilePhone":"13565486458","officePhone":"123","email":"","age":23,"createDate":"Mar 29, 2016 10:59:53 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"123","status":"0","id":"4028ef8153c028db0153c0502d420002"}', 3),
('4028ef8153c028db0153c070492e000f', 'admin', '2016-03-29 11:34:57', NULL, NULL, 'jeecg_demo', '4028ef8153c028db0153c0509a3e0005', '{"mobilePhone":"13565486458","officePhone":"","email":"","age":22,"createDate":"Mar 29, 2016 11:00:21 AM","depId":"402880e447e99cf10147e9a03b320003","userName":"22","status":"0","id":"4028ef8153c028db0153c0509a3e0005"}', 3),
('4028ef81550c1a7901550c1cd7850002', 'admin', '2016-06-01 21:17:44', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 1, 2016 9:17:44 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"121221","status":"0","id":"4028ef81550c1a7901550c1cd6e70001"}', 1),
('4028ef81568c31ec01568c3307080004', 'admin', '2016-08-15 11:16:09', NULL, NULL, 'jeecg_demo', '4028ef81550c1a7901550c1cd6e70001', '{"mobilePhone":"","officePhone":"","email":"","createDate":"Jun 23, 2016 12:00:00 PM","sex":"1","depId":"402880e447e99cf10147e9a03b320003","userName":"9001","status":"1","content":"111","id":"4028ef81550c1a7901550c1cd6e70001"}', 2);

-- --------------------------------------------------------

--
-- 表的结构 `sys_data_source`
--

CREATE TABLE IF NOT EXISTS `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '数据源编码',
  `name` varchar(100) DEFAULT NULL COMMENT '数据源名称',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `db_type` varchar(10) DEFAULT NULL COMMENT '数据库类型',
  `db_driver` varchar(100) DEFAULT NULL COMMENT '驱动类',
  `db_url` varchar(500) DEFAULT NULL COMMENT '数据源地址',
  `db_name` varchar(100) DEFAULT NULL COMMENT '数据库名称',
  `db_username` varchar(100) DEFAULT NULL COMMENT '用户名',
  `db_password` varchar(100) DEFAULT NULL COMMENT '密码',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_data_source`
--

INSERT INTO `sys_data_source` (`id`, `code`, `name`, `remark`, `db_type`, `db_driver`, `db_url`, `db_name`, `db_username`, `db_password`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`) VALUES
('1209779538310004737', NULL, 'MySQL5.7', '本地数据库MySQL5.7', '1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/jeecg-boot?characterEncoding=UTF-8&useUnicode=true&useSSL=false', 'jeecg-boot', 'root', 'root', 'admin', '2019-12-25 18:14:53', NULL, NULL, 'A01');

-- --------------------------------------------------------

--
-- 表的结构 `sys_depart`
--

CREATE TABLE IF NOT EXISTS `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `org_category` varchar(10) NOT NULL DEFAULT '1' COMMENT '机构类别 1组织机构，2岗位',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型 1一级部门 2子部门',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状态（1启用，0不启用）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='组织机构表';

--
-- 转存表中的数据 `sys_depart`
--

INSERT INTO `sys_depart` (`id`, `parent_id`, `depart_name`, `depart_name_en`, `depart_name_abbr`, `depart_order`, `description`, `org_category`, `org_type`, `org_code`, `mobile`, `fax`, `address`, `memo`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('26c7f056a6b94ae78d736c67cd24baac', 'c6d7cb4deeac411cb3384b1b31278596', '校区1', NULL, NULL, 0, NULL, '2', '2', 'A01A06', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:31:07', NULL, NULL),
('57197590443c44f083d42ae24ef26a2c', 'c6d7cb4deeac411cb3384b1b31278596', '校区2', NULL, NULL, 0, NULL, '1', '2', 'A01A05', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-21 16:14:41', 'jeecg', '2020-04-10 15:31:30'),
('743ba9dbdc114af8953a11022ef3096a', 'f28c6f53abd841ac87ead43afc483433', '财务部', NULL, NULL, 0, NULL, '1', '2', 'A03A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-03-22 16:45:43', NULL, NULL),
('8d9f61e822ff43b6b2a35bce778b7a62', '', '羽流年工作室', NULL, NULL, 0, NULL, '1', '1', 'A02', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:30:47', NULL, NULL),
('c6d7cb4deeac411cb3384b1b31278596', '', '鸽蛋网络科技', NULL, NULL, 0, NULL, '1', '1', 'A01', NULL, NULL, NULL, NULL, NULL, '0', 'admin', '2019-02-11 14:21:51', 'admin', '2020-03-09 15:33:47'),
('d2b37ffcc3fd46ddb5bc1c3da7fc41c0', '26c7f056a6b94ae78d736c67cd24baac', '班级1', NULL, NULL, 0, NULL, '2', '3', 'A01A06A01', '', NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:31:40', NULL, NULL),
('f9e8ed95e3e44440a3baf701869951e5', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', '小组1', NULL, NULL, 0, NULL, '3', '4', 'A01A06A01A01', NULL, NULL, NULL, NULL, NULL, '0', 'jeecg', '2020-04-10 15:31:49', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_depart_permission`
--

CREATE TABLE IF NOT EXISTS `sys_depart_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL COMMENT '数据规则id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门权限表';

--
-- 转存表中的数据 `sys_depart_permission`
--

INSERT INTO `sys_depart_permission` (`id`, `depart_id`, `permission_id`, `data_rule_ids`) VALUES
('1248516556356153345', '26c7f056a6b94ae78d736c67cd24baac', '1236542260197023745', NULL),
('1248516556381319170', '26c7f056a6b94ae78d736c67cd24baac', '1236542357244829698', NULL),
('1248516556385513473', '26c7f056a6b94ae78d736c67cd24baac', '3f915b2769fc80648e92d04e84ca059d', NULL),
('1248516556385513474', '26c7f056a6b94ae78d736c67cd24baac', '1a0811914300741f4e11838ff37a1d3a', NULL),
('1248516556393902082', '26c7f056a6b94ae78d736c67cd24baac', '7593c9e3523a17bca83b8d7fe8a34e58', NULL),
('1248516556398096385', '26c7f056a6b94ae78d736c67cd24baac', '5c2f42277948043026b7a14692456828', NULL),
('1248516556402290690', '26c7f056a6b94ae78d736c67cd24baac', '45c966826eeff4c99b8f8ebfe74511fc', NULL),
('1248516556402290691', '26c7f056a6b94ae78d736c67cd24baac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_depart_role`
--

CREATE TABLE IF NOT EXISTS `sys_depart_role` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '部门角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '部门角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色表';

--
-- 转存表中的数据 `sys_depart_role`
--

INSERT INTO `sys_depart_role` (`id`, `depart_id`, `role_name`, `role_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1248515697224282114', '26c7f056a6b94ae78d736c67cd24baac', '校长', 'schoolmaster', NULL, 'jeecg', '2020-04-10 15:38:33', NULL, NULL),
('1248515744204681217', 'd2b37ffcc3fd46ddb5bc1c3da7fc41c0', '老师', 'teacher', NULL, 'jeecg', '2020-04-10 15:38:44', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_depart_role_permission`
--

CREATE TABLE IF NOT EXISTS `sys_depart_role_permission` (
  `id` varchar(32) NOT NULL,
  `depart_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门角色权限表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_depart_role_user`
--

CREATE TABLE IF NOT EXISTS `sys_depart_role_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `drole_id` varchar(32) DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门角色用户表';

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict`
--

CREATE TABLE IF NOT EXISTS `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(100) DEFAULT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_dict`
--

INSERT INTO `sys_dict` (`id`, `dict_name`, `dict_code`, `description`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `type`) VALUES
('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'msg_category', '消息类型1:通知公告2:系统消息', 0, 'admin', '2019-04-22 18:01:35', NULL, NULL, 0),
('1174509082208395266', '职务职级', 'position_rank', '职务表职级字典', 0, 'admin', '2019-09-19 10:22:41', NULL, NULL, 0),
('1174511106530525185', '机构类型', 'org_category', '机构类型 1组织机构，2岗位', 0, 'admin', '2019-09-19 10:30:43', NULL, NULL, 0),
('1178295274528845826', '表单权限策略', 'form_perms_type', '', 0, 'admin', '2019-09-29 21:07:39', 'admin', '2019-09-29 21:08:26', NULL),
('1199517671259906049', '紧急程度', 'urgent_level', '日程计划紧急程度', 0, 'admin', '2019-11-27 10:37:53', NULL, NULL, 0),
('1199518099888414722', '日程计划类型', 'eoa_plan_type', '', 0, 'admin', '2019-11-27 10:39:36', NULL, NULL, 0),
('1199520177767587841', '分类栏目类型', 'eoa_cms_menu_type', '', 0, 'admin', '2019-11-27 10:47:51', 'admin', '2019-11-27 10:49:35', 0),
('1199525215290306561', '日程计划状态', 'eoa_plan_status', '', 0, 'admin', '2019-11-27 11:07:52', 'admin', '2019-11-27 11:10:11', 0),
('1209733563293962241', '数据库类型', 'database_type', '', 0, 'admin', '2019-12-25 15:12:12', NULL, NULL, 0),
('1236290896288133121', '订单状态', 'order_status', '', 0, 'admin', '2020-03-07 22:01:33', NULL, NULL, 0),
('1236290944946253825', '支付方式', 'pay_method', '', 0, 'admin', '2020-03-07 22:01:45', NULL, NULL, 0),
('1236543470144708610', '学生状态', 'student_status', '', 0, 'admin', '2020-03-08 14:45:11', NULL, NULL, 0),
('1236543506538684417', '学生年级', 'grade', '', 0, 'admin', '2020-03-08 14:45:20', NULL, NULL, 0),
('1237261139620921345', '活动类型', 'activity_type', '', 0, 'jeecg', '2020-03-10 14:16:57', NULL, NULL, 0),
('1249164380827549698', '文件类型', 'file_type', '', 0, 'jeecg', '2020-04-12 10:36:11', NULL, NULL, 0),
('1249164719404351490', '文件位置', 'file_location', '存储位置', 0, 'jeecg', '2020-04-12 10:37:32', NULL, NULL, 0),
('1249175047563493377', '作业类型', 'work_type', '作品类型', 0, 'jeecg', '2020-04-12 11:18:34', NULL, NULL, 0),
('236e8a4baff0db8c62c00dd95632834f', '同步工作流引擎', 'activiti_sync', '同步工作流引擎', 0, 'admin', '2019-05-15 15:27:33', NULL, NULL, 0),
('2e02df51611a4b9632828ab7e5338f00', '权限策略', 'perms_type', '权限策略', 0, 'admin', '2019-04-26 18:26:55', NULL, NULL, 0),
('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', 0, 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', 0),
('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', NULL, 0, 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', 0),
('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', NULL, 0, NULL, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', 1),
('404a04a15f371566c658ee9ef9fc392a', 'cehis2', '22', NULL, 1, 'admin', '2019-01-30 11:17:21', 'admin', '2019-03-30 11:18:12', 0),
('4274efc2292239b6f000b153f50823ff', '全局权限策略', 'global_perms_type', '全局权限策略', 0, 'admin', '2019-05-10 17:54:05', NULL, NULL, 0),
('4c03fca6bf1f0299c381213961566349', 'Online图表展示模板', 'online_graph_display_template', 'Online图表展示模板', 0, 'admin', '2019-04-12 17:28:50', NULL, NULL, 0),
('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', NULL, 0, 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', 1),
('4d7fec1a7799a436d26d02325eff295e', '优先级', 'priority', '优先级', 0, 'admin', '2019-03-16 17:03:34', 'admin', '2019-04-16 17:39:23', 0),
('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', 0, 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', 0),
('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', NULL, 0, 'admin', '2019-04-11 14:27:09', NULL, NULL, 0),
('68168534ff5065a152bfab275c2136f8', '有效无效状态', 'valid_status', '有效无效状态', 0, 'admin', '2020-09-26 19:21:14', 'admin', '2019-04-26 19:21:23', 0),
('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', NULL, 1, NULL, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', 0),
('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', 0, 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', 0),
('78bda155fe380b1b3f175f1e88c284c6', '流程状态', 'bpm_status', '流程状态', 0, 'admin', '2019-05-09 16:31:52', NULL, NULL, 0),
('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', NULL, 0, 'admin', '2019-03-18 23:22:19', NULL, NULL, 1),
('845da5006c97754728bf48b6a10f79cc', '状态', 'status', NULL, 1, 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', 0),
('880a895c98afeca9d9ac39f29e67c13e', '操作类型', 'operate_type', '操作类型', 0, 'admin', '2019-07-22 10:54:29', NULL, NULL, 0),
('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'send_status', '发布状态', 0, 'admin', '2019-04-16 17:40:42', NULL, NULL, 0),
('a7adbcd86c37f7dbc9b66945c82ef9e6', '1是0否', 'yn', '', 1, 'admin', '2019-05-22 19:29:29', NULL, NULL, 0),
('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', NULL, 0, 'admin', '2019-04-12 18:18:17', NULL, NULL, 0),
('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', NULL, 0, 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', 1),
('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', NULL, 1, 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', 0),
('bd1b8bc28e65d6feefefb6f3c79f42fd', 'Online图表数据类型', 'online_graph_data_type', 'Online图表数据类型', 0, 'admin', '2019-04-12 17:24:24', 'admin', '2019-04-12 17:24:57', 0),
('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', NULL, 0, 'admin', '2019-03-18 21:59:51', NULL, NULL, 0),
('c5a14c75172783d72cbee6ee7f5df5d1', 'Online图表类型', 'online_graph_type', 'Online图表类型', 0, 'admin', '2019-04-12 17:04:06', NULL, NULL, 0),
('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', NULL, 0, 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', 0),
('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', NULL, 0, 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sys_dict_item`
--

CREATE TABLE IF NOT EXISTS `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_dict_item`
--

INSERT INTO `sys_dict_item` (`id`, `dict_id`, `item_text`, `item_value`, `description`, `sort_order`, `status`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, 1, 'admin', '2019-04-16 17:04:59', NULL, NULL),
('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, 1, 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20'),
('096c2e758d823def3855f6376bc736fb', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'SQL', 'sql', NULL, 1, 1, 'admin', '2019-04-12 17:26:26', NULL, NULL),
('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, 1, 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28'),
('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', NULL, 3, 1, 'admin', '2019-03-27 10:13:43', NULL, NULL),
('1030a2652608f5eac3b49d70458b8532', '2e02df51611a4b9632828ab7e5338f00', '禁用', '2', '禁用', 2, 1, 'admin', '2021-03-26 18:27:28', 'admin', '2019-04-26 18:39:11'),
('1174509601047994369', '1174509082208395266', '员级', '1', '', 1, 1, 'admin', '2019-09-19 10:24:45', 'admin', '2019-09-23 11:46:39'),
('1174509667297026049', '1174509082208395266', '助级', '2', '', 2, 1, 'admin', '2019-09-19 10:25:01', 'admin', '2019-09-23 11:46:47'),
('1174509713568587777', '1174509082208395266', '中级', '3', '', 3, 1, 'admin', '2019-09-19 10:25:12', 'admin', '2019-09-23 11:46:56'),
('1174509788361416705', '1174509082208395266', '副高级', '4', '', 4, 1, 'admin', '2019-09-19 10:25:30', 'admin', '2019-09-23 11:47:06'),
('1174509835803189250', '1174509082208395266', '正高级', '5', '', 5, 1, 'admin', '2019-09-19 10:25:41', 'admin', '2019-09-23 11:47:12'),
('1174511197735665665', '1174511106530525185', '组织机构', '1', '组织机构', 1, 1, 'admin', '2019-09-19 10:31:05', NULL, NULL),
('1174511244036587521', '1174511106530525185', '岗位', '2', '岗位', 1, 1, 'admin', '2019-09-19 10:31:16', NULL, NULL),
('1178295553450061826', '1178295274528845826', '可编辑(未授权禁用)', '2', '', 2, 1, 'admin', '2019-09-29 21:08:46', 'admin', '2019-09-29 21:09:18'),
('1178295639554928641', '1178295274528845826', '可见(未授权不可见)', '1', '', 1, 1, 'admin', '2019-09-29 21:09:06', 'admin', '2019-09-29 21:09:24'),
('1199517884758368257', '1199517671259906049', '一般', '1', '', 1, 1, 'admin', '2019-11-27 10:38:44', NULL, NULL),
('1199517914017832962', '1199517671259906049', '重要', '2', '', 1, 1, 'admin', '2019-11-27 10:38:51', NULL, NULL),
('1199517941339529217', '1199517671259906049', '紧急', '3', '', 1, 1, 'admin', '2019-11-27 10:38:58', NULL, NULL),
('1199518186144276482', '1199518099888414722', '日常记录', '1', '', 1, 1, 'admin', '2019-11-27 10:39:56', NULL, NULL),
('1199518214858481666', '1199518099888414722', '本周工作', '2', '', 1, 1, 'admin', '2019-11-27 10:40:03', NULL, NULL),
('1199518235943247874', '1199518099888414722', '下周计划', '3', '', 1, 1, 'admin', '2019-11-27 10:40:08', NULL, NULL),
('1199520817285701634', '1199520177767587841', '列表', '1', '', 1, 1, 'admin', '2019-11-27 10:50:24', NULL, NULL),
('1199520835035996161', '1199520177767587841', '链接', '2', '', 1, 1, 'admin', '2019-11-27 10:50:28', NULL, NULL),
('1199525468672405505', '1199525215290306561', '未开始', '0', '', 1, 1, 'admin', '2019-11-27 11:08:52', NULL, NULL),
('1199525490575060993', '1199525215290306561', '进行中', '1', '', 1, 1, 'admin', '2019-11-27 11:08:58', NULL, NULL),
('1199525506429530114', '1199525215290306561', '已完成', '2', '', 1, 1, 'admin', '2019-11-27 11:09:02', 'admin', '2019-11-27 11:10:02'),
('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, 1, 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46'),
('1209733775114702850', '1209733563293962241', 'MySQL', '1', '', 1, 1, 'admin', '2019-12-25 15:13:02', NULL, NULL),
('1209733839933476865', '1209733563293962241', 'Oracle', '2', '', 1, 1, 'admin', '2019-12-25 15:13:18', NULL, NULL),
('1209733903020003330', '1209733563293962241', 'SQLServer', '3', '', 1, 1, 'admin', '2019-12-25 15:13:33', NULL, NULL),
('1236543560674566145', '1236543470144708610', '1', '正常', '', 1, 1, 'admin', '2020-03-08 14:45:33', NULL, NULL),
('1236543601355120642', '1236543506538684417', '一年级', '1', '', 1, 1, 'admin', '2020-03-08 14:45:43', NULL, NULL),
('1236543635719053313', '1236543506538684417', '二年级', '2', '', 2, 1, 'admin', '2020-03-08 14:45:51', NULL, NULL),
('1236543668619173890', '1236543506538684417', '三年级', '3', '', 3, 1, 'admin', '2020-03-08 14:45:59', NULL, NULL),
('1236543696263831553', '1236543506538684417', '四年级', '4', '', 4, 1, 'admin', '2020-03-08 14:46:05', NULL, NULL),
('1236543726525734913', '1236543506538684417', '五年级', '5', '', 5, 1, 'admin', '2020-03-08 14:46:12', NULL, NULL),
('1236543782658105345', '1236543506538684417', '六年级', '6', '', 6, 1, 'admin', '2020-03-08 14:46:26', NULL, NULL),
('1236543882511900673', '1236290944946253825', '公众号支付', '1', '', 1, 1, 'admin', '2020-03-08 14:46:50', NULL, NULL),
('1236543928443723778', '1236290896288133121', '待付款', '0', '', 1, 1, 'admin', '2020-03-08 14:47:01', NULL, NULL),
('1236543953907343361', '1236290896288133121', '已付款', '1', '', 1, 1, 'admin', '2020-03-08 14:47:07', NULL, NULL),
('1237261278674681857', '1237261139620921345', '免费领取', '0', '', 1, 1, 'jeecg', '2020-03-10 14:17:30', NULL, NULL),
('1237261306734575618', '1237261139620921345', '直接购买', '1', '', 1, 1, 'jeecg', '2020-03-10 14:17:37', NULL, NULL),
('1237261383096074241', '1237261139620921345', '三人拼团', '2', '', 1, 1, 'jeecg', '2020-03-10 14:17:55', NULL, NULL),
('1249164487870382081', '1249164380827549698', '未分类', '1', '', 1, 1, 'jeecg', '2020-04-12 10:36:36', NULL, NULL),
('1249164519654817793', '1249164380827549698', '学生作业文件', '2', '', 1, 1, 'jeecg', '2020-04-12 10:36:44', NULL, NULL),
('1249164593684283393', '1249164380827549698', '课程视频', '3', '', 1, 1, 'jeecg', '2020-04-12 10:37:02', NULL, NULL),
('1249164623228960770', '1249164380827549698', '课程作业', '4', '', 1, 1, 'jeecg', '2020-04-12 10:37:09', NULL, NULL),
('1249164652408733697', '1249164380827549698', '课程教案', '5', '', 1, 1, 'jeecg', '2020-04-12 10:37:16', NULL, NULL),
('1249164757589295106', '1249164719404351490', '本地', '1', '', 1, 1, 'jeecg', '2020-04-12 10:37:41', NULL, NULL),
('1249164781949812738', '1249164719404351490', '七牛', '2', '', 1, 1, 'jeecg', '2020-04-12 10:37:47', NULL, NULL),
('1249175102324326401', '1249175047563493377', 'Scratch2.0', '1', '', 1, 1, 'jeecg', '2020-04-12 11:18:47', 'jeecg', '2020-04-12 17:01:26'),
('1249175128622612481', '1249175047563493377', 'Scratch3.0', '2', '', 1, 1, 'jeecg', '2020-04-12 11:18:53', 'jeecg', '2020-04-12 17:01:20'),
('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', NULL, 1, 1, 'admin', '2019-03-22 19:27:05', NULL, NULL),
('1543fe7e5e26fb97cdafe4981bedc0c8', '4c03fca6bf1f0299c381213961566349', '单排布局', 'single', NULL, 2, 1, 'admin', '2022-07-12 17:43:39', 'admin', '2019-04-12 17:43:57'),
('1b8a6341163062dad8cb2fddd34e0c3b', '404a04a15f371566c658ee9ef9fc392a', '22', '222', NULL, 1, 1, 'admin', '2019-03-30 11:17:48', NULL, NULL),
('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', NULL, 1, 1, 'admin', '2019-03-22 16:34:34', NULL, NULL),
('1db531bcff19649fa82a644c8a939dc4', '4c03fca6bf1f0299c381213961566349', '组合布局', 'combination', '', 4, 1, 'admin', '2019-05-11 16:07:08', NULL, NULL),
('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, 1, 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11'),
('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', 3, 1, 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40'),
('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', 6, 1, 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10'),
('2d51376643f220afdeb6d216a8ac2c01', '68168534ff5065a152bfab275c2136f8', '有效', '1', '有效', 2, 1, 'admin', '2019-04-26 19:22:01', NULL, NULL),
('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, 1, 'admin', '2019-04-16 17:41:24', NULL, NULL),
('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, 1, 'admin', '2019-04-16 17:41:12', NULL, NULL),
('337ea1e401bda7233f6258c284ce4f50', 'bd1b8bc28e65d6feefefb6f3c79f42fd', 'JSON', 'json', NULL, 1, 1, 'admin', '2019-04-12 17:26:33', NULL, NULL),
('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, 1, 'admin', '2019-04-12 18:20:02', NULL, NULL),
('3fbc03d6c994ae06d083751248037c0e', '78bda155fe380b1b3f175f1e88c284c6', '已完成', '3', '已完成', 3, 1, 'admin', '2019-05-09 16:33:25', NULL, NULL),
('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, 1, 'admin', '2019-04-22 18:01:57', NULL, NULL),
('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', 4, 1, 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00'),
('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 21:45:51', NULL, NULL),
('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:22:49', NULL, NULL),
('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', NULL, 3, 1, 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39'),
('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, 1, 'admin', '2019-05-22 19:29:45', NULL, NULL),
('538fca35afe004972c5f3947c039e766', '2e02df51611a4b9632828ab7e5338f00', '显示', '1', '显示', 1, 1, 'admin', '2025-03-26 18:27:13', 'admin', '2019-04-26 18:39:07'),
('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', 9, 1, 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27'),
('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', NULL, 2, 1, 'admin', '2019-03-27 10:13:36', NULL, NULL),
('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, 1, 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09'),
('5d833f69296f691843ccdd0c91212b6b', '880a895c98afeca9d9ac39f29e67c13e', '修改', '3', '', 3, 1, 'admin', '2019-07-22 10:55:07', 'admin', '2019-07-22 10:55:41'),
('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, 1, NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12'),
('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', 1, 1, 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29'),
('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', NULL, 1, 1, 'admin', '2019-03-22 16:32:15', NULL, NULL),
('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, 1, 'admin', '2019-04-12 18:19:23', NULL, NULL),
('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, 1, 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03'),
('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', NULL, 1, 1, 'admin', '2019-03-27 10:13:29', NULL, NULL),
('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', 7, 1, 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20'),
('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, 1, 'admin', '2019-04-16 17:04:24', NULL, NULL),
('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', NULL, NULL, 1, 'admin', '2019-02-21 19:59:47', NULL, NULL),
('7050c1522702bac3be40e3b7d2e1dfd8', 'c5a14c75172783d72cbee6ee7f5df5d1', '柱状图', 'bar', NULL, 1, 1, 'admin', '2019-04-12 17:05:17', NULL, NULL),
('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', NULL, 2, 1, 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36'),
('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54'),
('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:29:28', NULL, NULL),
('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:30:28', NULL, NULL),
('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:25:40', NULL, NULL),
('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 23:30:37', NULL, NULL),
('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, 1, 'admin', '2019-05-10 17:54:51', NULL, NULL),
('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', 5, 1, 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05'),
('848d4da35ebd93782029c57b103e5b36', 'c5a14c75172783d72cbee6ee7f5df5d1', '饼图', 'pie', NULL, 3, 1, 'admin', '2019-04-12 17:05:49', NULL, NULL),
('84dfc178dd61b95a72900fcdd624c471', '78bda155fe380b1b3f175f1e88c284c6', '处理中', '2', '处理中', 2, 1, 'admin', '2019-05-09 16:33:01', NULL, NULL),
('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:25:27', NULL, NULL),
('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, 1, 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31'),
('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 0, 1, 'admin', '2020-07-18 23:19:27', 'admin', '2019-05-17 14:51:18'),
('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, 1, 'admin', '2019-05-10 17:55:38', NULL, NULL),
('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, 1, 'admin', '2019-04-16 17:04:40', NULL, NULL),
('948923658baa330319e59b2213cda97c', '880a895c98afeca9d9ac39f29e67c13e', '添加', '2', '', 2, 1, 'admin', '2019-07-22 10:54:59', 'admin', '2019-07-22 10:55:36'),
('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', NULL, 1, 1, 'admin', '2019-03-18 23:19:53', NULL, NULL),
('a1e7d1ca507cff4a480c8caba7c1339e', '880a895c98afeca9d9ac39f29e67c13e', '导出', '6', '', 6, 1, 'admin', '2019-07-22 12:06:50', NULL, NULL),
('a2321496db6febc956a6c70fab94cb0c', '404a04a15f371566c658ee9ef9fc392a', '3', '3', NULL, 1, 1, 'admin', '2019-03-30 11:18:18', NULL, NULL),
('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, 1, 'admin', '2019-04-16 17:41:39', NULL, NULL),
('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, 1, 'admin', '2019-03-18 23:24:52', NULL, NULL),
('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', 8, 1, 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24'),
('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, 1, 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13'),
('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, 1, 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20'),
('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', NULL, NULL, 0, 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27'),
('b5f3bd5f66bb9a83fecd89228c0d93d1', '68168534ff5065a152bfab275c2136f8', '无效', '0', '无效', 1, 1, 'admin', '2019-04-26 19:21:49', NULL, NULL),
('b9fbe2a3602d4a27b45c100ac5328484', '78bda155fe380b1b3f175f1e88c284c6', '待提交', '1', '待提交', 1, 1, 'admin', '2019-05-09 16:32:35', NULL, NULL),
('ba27737829c6e0e582e334832703d75e', '236e8a4baff0db8c62c00dd95632834f', '同步', '1', '同步', 1, 1, 'admin', '2019-05-15 15:28:15', NULL, NULL),
('bcec04526b04307e24a005d6dcd27fd6', '880a895c98afeca9d9ac39f29e67c13e', '导入', '5', '', 5, 1, 'admin', '2019-07-22 12:06:41', NULL, NULL),
('c53da022b9912e0aed691bbec3c78473', '880a895c98afeca9d9ac39f29e67c13e', '查询', '1', '', 1, 1, 'admin', '2019-07-22 10:54:51', NULL, NULL),
('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, 1, 'admin', '2019-05-22 19:29:55', NULL, NULL),
('cbfcc5b88fc3a90975df23ffc8cbe29c', 'c5a14c75172783d72cbee6ee7f5df5d1', '曲线图', 'line', NULL, 2, 1, 'admin', '2019-05-12 17:05:30', 'admin', '2019-04-12 17:06:06'),
('d217592908ea3e00ff986ce97f24fb98', 'c5a14c75172783d72cbee6ee7f5df5d1', '数据列表', 'table', NULL, 4, 1, 'admin', '2019-04-12 17:05:56', NULL, NULL),
('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, 1, NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44'),
('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', 2, 1, 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34'),
('e94eb7af89f1dbfa0d823580a7a6e66a', '236e8a4baff0db8c62c00dd95632834f', '不同步', '0', '不同步', 2, 1, 'admin', '2019-05-15 15:28:28', NULL, NULL),
('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', NULL, 1, 1, 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57'),
('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, 1, 'admin', '2019-04-12 18:19:43', NULL, NULL),
('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', NULL, NULL, 1, 'admin', '2019-03-18 21:46:02', NULL, NULL),
('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', NULL, NULL, 1, 'admin', '2019-03-18 23:22:37', NULL, NULL),
('f753aff60ff3931c0ecb4812d8b5e643', '4c03fca6bf1f0299c381213961566349', '双排布局', 'double', NULL, 3, 1, 'admin', '2019-04-12 17:43:51', NULL, NULL),
('f80a8f6838215753b05e1a5ba3346d22', '880a895c98afeca9d9ac39f29e67c13e', '删除', '4', '', 4, 1, 'admin', '2019-07-22 10:55:14', 'admin', '2019-07-22 10:55:30'),
('fcec03570f68a175e1964808dc3f1c91', '4c03fca6bf1f0299c381213961566349', 'Tab风格', 'tab', NULL, 1, 1, 'admin', '2019-04-12 17:43:31', NULL, NULL),
('fe50b23ae5e68434def76f67cef35d2d', '78bda155fe380b1b3f175f1e88c284c6', '已作废', '4', '已作废', 4, 1, 'admin', '2021-09-09 16:33:43', 'admin', '2019-05-09 16:34:40');

-- --------------------------------------------------------

--
-- 表的结构 `sys_file`
--

CREATE TABLE IF NOT EXISTS `sys_file` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `file_type` int(2) DEFAULT NULL COMMENT '文件类型',
  `file_name` varchar(128) DEFAULT NULL COMMENT '文件名',
  `file_path` varchar(1024) NOT NULL COMMENT '文件路径',
  `file_location` varchar(32) NOT NULL COMMENT '存储位置',
  `file_tag` varchar(32) DEFAULT NULL COMMENT '文件标签',
  `del_flag` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sys_file`
--

INSERT INTO `sys_file` (`id`, `create_time`, `update_by`, `create_by`, `update_time`, `sys_org_code`, `file_type`, `file_name`, `file_path`, `file_location`, `file_tag`, `del_flag`) VALUES
('1249171781207310337', '2020-04-12 11:05:35', NULL, 'jeecg', NULL, 'A01', 1, '123', '59fc4df7-aef7-4941-a59c-8a9cb0ab8bd9.jpg', '2', NULL, 0),
('1249265886453125122', '2020-04-12 17:19:32', NULL, 'jeecg', NULL, 'A01', 2, 'project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.jpg', 'project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.jpg', '2', '学生作业-封面', 0),
('1249265886541205505', '2020-04-12 17:19:32', NULL, 'jeecg', NULL, 'A01', 2, 'project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.sb3', 'project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.sb3', '2', '学生作业-sb3', 0),
('1249266770755006466', '2020-04-12 17:23:03', NULL, 'jeecg', NULL, 'A01', 2, 'project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.sb3', 'project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.sb3', '2', '学生作业-sb3', 0),
('1249266770788560898', '2020-04-12 17:23:03', NULL, 'jeecg', NULL, 'A01', 2, 'project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.jpg', 'project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.jpg', '2', '学生作业-封面', 0),
('1249267727727407106', '2020-04-12 17:26:51', NULL, 'jeecg', NULL, 'A01', 2, 'project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.jpg', 'project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.jpg', '2', '学生作业-封面', 0),
('1249267729023447042', '2020-04-12 17:26:51', NULL, 'jeecg', NULL, 'A01', 2, 'project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.sb3', 'project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.sb3', '2', '学生作业-sb3', 0),
('1249283604631785473', '2020-04-12 18:29:56', NULL, 'jeecg', NULL, 'A01', 2, 'project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.jpg', 'project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.jpg', '2', '学生作业-封面', 0),
('1249283605948796930', '2020-04-12 18:29:56', NULL, 'jeecg', NULL, 'A01', 2, 'project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.sb3', 'project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.sb3', '2', '学生作业-sb3', 0),
('1249284563583897601', '2020-04-12 18:33:45', NULL, 'jeecg', NULL, 'A01', 2, 'project3/aec93f79-f8f7-4d95-8ea4-95354534254a.jpg', 'project3/aec93f79-f8f7-4d95-8ea4-95354534254a.jpg', '2', '学生作业-封面', 0),
('1249284572001865729', '2020-04-12 18:33:47', NULL, 'jeecg', NULL, 'A01', 2, 'project3/aec93f79-f8f7-4d95-8ea4-95354534254a.sb3', 'project3/aec93f79-f8f7-4d95-8ea4-95354534254a.sb3', '2', '学生作业-sb3', 0),
('1249285354197618689', '2020-04-12 18:36:53', NULL, 'jeecg', NULL, 'A01', 2, 'project3/b6762e1e-678e-4661-a18e-09466f3eb19c.jpg', 'project3/b6762e1e-678e-4661-a18e-09466f3eb19c.jpg', '2', '学生作业-封面', 0),
('1249285356554817537', '2020-04-12 18:36:54', NULL, 'jeecg', NULL, 'A01', 2, 'project3/b6762e1e-678e-4661-a18e-09466f3eb19c.sb3', 'project3/b6762e1e-678e-4661-a18e-09466f3eb19c.sb3', '2', '学生作业-sb3', 0),
('1249297576437223425', '2020-04-12 19:25:27', NULL, 'jeecg', NULL, 'A01', 2, 'project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.sb3', 'project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.sb3', '2', '学生作业-sb3', 0),
('1249297576772767746', '2020-04-12 19:25:27', NULL, 'jeecg', NULL, 'A01', 2, 'project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.jpg', 'project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.jpg', '2', '学生作业-封面', 0),
('1249327738251952130', '2020-04-12 21:25:18', NULL, 'jeecg', NULL, 'A01', 2, 'project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.sb3', 'project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.sb3', '2', '学生作业-sb3', 0),
('1249327739447328769', '2020-04-12 21:25:19', NULL, 'jeecg', NULL, 'A01', 2, 'project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.jpg', 'project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.jpg', '2', '学生作业-封面', 0),
('1249327811425779714', '2020-04-12 21:25:36', NULL, 'jeecg', NULL, 'A01', 2, 'project3/efddab15-78c0-4ddb-84da-cf662d178417.jpg', 'project3/efddab15-78c0-4ddb-84da-cf662d178417.jpg', '2', '学生作业-封面', 0),
('1249327816664465409', '2020-04-12 21:25:37', NULL, 'jeecg', NULL, 'A01', 2, 'project3/efddab15-78c0-4ddb-84da-cf662d178417.sb3', 'project3/efddab15-78c0-4ddb-84da-cf662d178417.sb3', '2', '学生作业-sb3', 0),
('1249329346851479554', '2020-04-12 21:31:42', NULL, 'jeecg', NULL, 'A01', 2, 'project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.sb3', 'project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.sb3', '2', '学生作业-sb3', 0),
('1249329347333824514', '2020-04-12 21:31:42', NULL, 'jeecg', NULL, 'A01', 2, 'project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.jpg', 'project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.jpg', '2', '学生作业-封面', 0),
('1249329365260279809', '2020-04-12 21:31:46', NULL, 'jeecg', NULL, 'A01', 2, 'project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.sb3', 'project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.sb3', '2', '学生作业-sb3', 0),
('1249329367315488770', '2020-04-12 21:31:47', NULL, 'jeecg', NULL, 'A01', 2, 'project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.jpg', 'project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.jpg', '2', '学生作业-封面', 0),
('1249334840617930753', '2020-04-12 21:53:32', NULL, 'jeecg', NULL, 'A01', 2, 'project3/528436b4-0d81-4c52-86ed-8e249e607011.sb3', 'project3/528436b4-0d81-4c52-86ed-8e249e607011.sb3', '2', '学生作业-sb3', 0),
('1249334841465180161', '2020-04-12 21:53:32', NULL, 'jeecg', NULL, 'A01', 2, 'project3/528436b4-0d81-4c52-86ed-8e249e607011.jpg', 'project3/528436b4-0d81-4c52-86ed-8e249e607011.jpg', '2', '学生作业-封面', 0),
('1249335188527058945', '2020-04-12 21:54:55', NULL, 'jeecg', NULL, 'A01', 2, 'project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.sb3', 'project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.sb3', '2', '学生作业-sb3', 0),
('1249335189294616578', '2020-04-12 21:54:55', NULL, 'jeecg', NULL, 'A01', 2, 'project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.jpg', 'project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.jpg', '2', '学生作业-封面', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sys_fill_rule`
--

CREATE TABLE IF NOT EXISTS `sys_fill_rule` (
  `id` varchar(32) CHARACTER SET utf8 NOT NULL COMMENT '主键ID',
  `rule_name` varchar(100) DEFAULT NULL COMMENT '规则名称',
  `rule_code` varchar(100) DEFAULT NULL COMMENT '规则Code',
  `rule_class` varchar(100) DEFAULT NULL COMMENT '规则实现类',
  `rule_params` varchar(200) DEFAULT NULL COMMENT '规则参数',
  `update_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_by` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_fill_rule`
--

INSERT INTO `sys_fill_rule` (`id`, `rule_name`, `rule_code`, `rule_class`, `rule_params`, `update_by`, `update_time`, `create_by`, `create_time`) VALUES
('1202551334738382850', '机构编码生成', 'org_num_role', 'org.jeecg.modules.system.rule.OrgCodeRule', '{"parentId":"c6d7cb4deeac411cb3384b1b31278596"}', 'admin', '2019-12-09 10:37:06', 'admin', '2019-12-05 19:32:35'),
('1202787623203065858', '分类字典编码生成', 'category_code_rule', 'org.jeecg.modules.system.rule.CategoryCodeRule', '{"pid":""}', 'admin', '2019-12-09 10:36:54', 'admin', '2019-12-06 11:11:31');

-- --------------------------------------------------------

--
-- 表的结构 `sys_log`
--

CREATE TABLE IF NOT EXISTS `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(2) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` longtext COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';

--
-- 转存表中的数据 `sys_log`
--

INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('b09ccd219a1ce5c7270bb659748b8330', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:34:38', NULL, NULL),
('a22ddd4b5b0b84bd7794edd24b25fc64', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1547883299809,"email":"zhangdaiscott@163.com","id":"7eac655877842eb39dc2f0469f3964ec","name":"zhang daihao"}]', NULL, 25, 'admin', '2019-01-19 15:34:59', NULL, NULL),
('07a0b3f8b4140a7a586305c2f40a2310', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '["7eac655877842eb39dc2f0469f3964ec"]', NULL, 14, 'admin', '2019-01-19 15:38:11', NULL, NULL),
('d7902eeab2c34611fad046a79bff1c1b', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1547883544104,"email":"zhangdaiscott@163.com","id":"4436302a0de50bb83025286bc414d6a9","name":"zhang daihao"}]', NULL, 1682, 'admin', '2019-01-19 15:39:05', NULL, NULL),
('a68160f37cace166fedd299c4ca0be10', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:40:00', NULL, NULL),
('c6c0316b6989bf1eea0a3803f593bf69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:47:19', NULL, NULL),
('4b1341863a8fffeccda8bbe413bd815f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 15:59:52', NULL, NULL),
('ed50b1fbc80c3b953f4551081b10335e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:19:06', NULL, NULL),
('dabdcb8e15ea9215a1af22f7567ff73d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:48:13', NULL, NULL),
('446724ea6dd41f4a03111c42e00d80cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 16:56:36', NULL, NULL),
('0e41fe3a34d5715bf4c88e220663583a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:04:06', NULL, NULL),
('9f2db1ffaf89518a25cc6701da0c5858', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:05:07', NULL, NULL),
('954f1ccb8b230d2d7d4858eec3aba0a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 17:08:37', NULL, NULL),
('7374f3a2ccb20216cf8eecb26037ce0a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 18:08:51', NULL, NULL),
('130de55edac71aab730786307cc65936', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:22:57', NULL, NULL),
('0bc44e2d682c9f28525d203589a90b43', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:31:08', NULL, NULL),
('122edcafd54dd06e12838f41123d9d5d', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"age":28,"birthday":1546617600000,"createBy":"admin","createTime":1547901234989,"id":"42c08b1a2e5b2a96ffa4cc88383d4b11","name":"秦500","punchTime":1546691611000}]', NULL, 21387, 'admin', '2019-01-19 20:34:11', NULL, NULL),
('1a570aac0c30ac2955b59e2dc7a6204c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 20:58:26', NULL, NULL),
('c18db091677ec01d55e913662b9028a9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:19:07', NULL, NULL),
('88d8b4b50bdab58c52fe25fa711fbbef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:21:39', NULL, NULL),
('6b876be6e384337b36ad28a4a5868be8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:22:12', NULL, NULL),
('cb6b52fbbdd4c5698c17edaf9960e11e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:22:23', NULL, NULL),
('fea8e1e2d229557185be0d9a10ebce17', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:55:55', NULL, NULL),
('c1842fc83cdf0b0cc0264bf093e9c55d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 21:56:15', NULL, NULL),
('543970eba4d1c522e3cb597b0fd4ad13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 22:53:18', NULL, NULL),
('e9ce2b3f7ac1fa3f5f7fd247207ca5c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 22:53:35', NULL, NULL),
('0e365a21c60e4460813bdc4e3cb320a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:01:34', NULL, NULL),
('d3df1a4057b6d7fb4dab073a727ba21f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:14:02', NULL, NULL),
('8f616500d666a5a67bc98e7ccd73c2e2', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1547912194199,"id":"ffa9da1ad40632dfcabac51d766865bd","name":"秦999"}]', NULL, 386, 'admin', '2019-01-19 23:36:34', NULL, NULL),
('055cf35c8865761b479c7f289dc36616', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1547912238787,"email":"zhangdaiscott@163.com","id":"c2c0d49e3c01913067cf8d1fb3c971d2","name":"zhang daihao"}]', NULL, 16, 'admin', '2019-01-19 23:37:18', NULL, NULL),
('69e3164d007be2b9834e4fb398186f39', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-19 23:38:17', NULL, NULL),
('92e514fee917a1a459c4ffdb0ca42516', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 10:20:52', NULL, NULL),
('d3f08843a9b2b3284711e376fb785beb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 10:58:03', NULL, NULL),
('76bea561f662ec0ccf05bc370f1ffe35', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 11:08:55', NULL, NULL),
('273081678d85acebaa6615973bff31db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:02:50', NULL, NULL),
('b26369680b41d581649cf865e88331e9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:07', NULL, NULL),
('7313b43ff53015d79a58b4dc7c660721', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:07', NULL, NULL),
('f99912c5ff252594f14d31b768f8ad15', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:03:10', NULL, NULL),
('dcec1957987abbe6658f1f2c96980366', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:05:21', NULL, NULL),
('c7b6156c4f42b70c562b507766f4546c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:14:08', NULL, NULL),
('52673feae24ea5bc3ca111f19c9a85d4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:16:46', NULL, NULL),
('507b55d3b5ddc487fb40ca1f716a1253', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:43:02', NULL, NULL),
('7351132f4f5f65e5bf157dd7ad5344a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:51:36', NULL, NULL),
('961992e05772bc7ad2ca927cf7649440', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 15:55:10', NULL, NULL),
('3b07fda32423a5696b2097e1c23c00d4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:04:32', NULL, NULL),
('8447099784da63b3b2cd2fbbc5eabcea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:04:49', NULL, NULL),
('b20ff98a10af3c25c1991741fd59ea64', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:07:48', NULL, NULL),
('9acebd2d37c9078f9568125fb9696976', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:07:59', NULL, NULL),
('d70c2847d8d0936a2a761f745a84aa48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 16:39:34', NULL, NULL),
('279e519d647f1a4e1f85f9b90ab370b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:01:30', NULL, NULL),
('b605a83a9b5f3cdaaa1b3f4f41a5f12d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:04:20', NULL, NULL),
('0a24b1f04f79a2bcb83c4cd12d077cbc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 17:34:37', NULL, NULL),
('661c4792f00b0814e486c3d623d7259f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:06:11', NULL, NULL),
('d1746c5c937fcb650bd835ff74dabdff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:06:32', NULL, NULL),
('8ec3a287a37d155047e80a80769d5226', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 18:37:14', NULL, NULL),
('6cbd2a9257fae1cb7ff7bc2eb264b3ab', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 19:08:14', NULL, NULL),
('f06e8fa83b408be905b4dc7caeaf9a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 19:40:33', NULL, NULL),
('f84e86c9a21149134b1f2599a424164b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-21 20:12:27', NULL, NULL),
('88bfc5b77b4be0d6d0f7c8661cf24853', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:25:53', NULL, NULL),
('b9bf472a12fc25a9d4b500421b08b025', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:53:54', NULL, NULL),
('dbbcfb7f59311637a613ec9a6c63f04a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:53:57', NULL, NULL),
('69ea2322f72b41bcdc7f235889132703', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:54:43', NULL, NULL),
('62d197757e2cb40f9e8cb57fa6a207f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:54:54', NULL, NULL),
('ccad29843623a6c3ca59548b1d533b15', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 10:56:33', NULL, NULL),
('4d9299e2daac1f49eac0cec75a90c32e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 11:28:39', NULL, NULL),
('43848099c1e70910ba1572868ee40415', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 11:28:48', NULL, NULL),
('6fb7db45b11bc22347b234fda07700c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:00:22', NULL, NULL),
('e8cde8dcd6253b249d67a05aaf10f968', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:30:28', NULL, NULL),
('6a4231540c73ad67128d5a24e6a877ff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 12:54:30', NULL, NULL),
('2b3be3da6ba9d1ee49f378d729d69c50', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 13:24:41', NULL, NULL),
('78f519b618f82a39adad391fbf6b9c7a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 13:49:58', NULL, NULL),
('1487d69ff97888f3a899e2ababb5ae48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 14:21:17', NULL, NULL),
('cc7fa5567e7833a3475b29b7441a2976', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 14:21:31', NULL, NULL),
('52e36d72cd04bea2604747e006b038ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:47:17', NULL, NULL),
('523a54948d5edaf421566014b66f9465', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:50:27', NULL, NULL),
('48e4e10ac7e583050fd85734f0676a7c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 19:58:08', NULL, NULL),
('dee4d42c439b51b228ab5db5d0723fc0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-22 20:02:56', NULL, NULL),
('965c74ffe09d8a06bb817efa6d62254b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 10:01:35', NULL, NULL),
('059bac84373e9dae94363ea18802d70f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 10:06:56', NULL, NULL),
('9ef3f1ed07003e3abec3445920b062f1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:17:05', NULL, NULL),
('0169622dcd4e89b177a0917778ac7f9c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:17:18', NULL, NULL),
('f8960d64e93606fa52220cc9c4ae35a2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:21:02', NULL, NULL),
('4261867172d0fd5c04c993638661ac0b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:24:47', NULL, NULL),
('32464c6f7f772ddda0a963b19ad2fd70', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 11:30:20', NULL, NULL),
('d29cf7aae44523bf2f3d187e91356fe8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 12:20:35', NULL, NULL),
('0e9c0d0d26ddc652a7277912e0784d11', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 12:27:41', NULL, NULL),
('25f8b1b345b1c8a070fe81d715540c85', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-23 15:39:46', NULL, NULL),
('8327cced60486bad4009276e14403502', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 09:56:29', NULL, NULL),
('515c28df59f07478339b61ca5b1b54a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 10:34:51', NULL, NULL),
('fa0612372b332b6c3ce787d9ca6dd2cc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 11:48:21', NULL, NULL),
('8300e85a2c2f16c2358d31e8b364edf7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 11:55:39', NULL, NULL),
('3d9874f248a984608ca98c36c21c5a7a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:05:56', NULL, NULL),
('cc8ab347f332c55570830c5fc39bbf9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:08:38', NULL, NULL),
('8742a458bf166fd5f134ac65fa8903f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-24 13:09:10', NULL, NULL),
('bbe2e637bafa0d7f465dc9e1266cff3d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:16:50', NULL, NULL),
('b3474fc5aad9ec2f36ccbbf7bf864a69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:17:24', NULL, NULL),
('260bb025d91b59d0135d635ef85eeb82', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:40:13', NULL, NULL),
('1a5b71c9458c17f9bcb19a5747fd47dd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 11:56:48', NULL, NULL),
('e720278084b0d4316448ec59d4e3399d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 15:52:45', NULL, NULL),
('f6646950c8465da1d1219b7a7a209fc2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:14:07', NULL, NULL),
('36358cacfc5eb3ba7e85cfe156218b71', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:14:17', NULL, NULL),
('ee2bb63c47c868d59a45503b3d2f34ea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:16:14', NULL, NULL),
('b0d11dfec52e02f504c63e2f8224b00d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-25 19:27:44', NULL, NULL),
('4acfbc327681d89dab861c77401f8992', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 10:54:36', NULL, NULL),
('96ada57ac17c4477f4e4c8d596d4cc1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 10:54:44', NULL, NULL),
('e4e40e21437b23b74324e0402cceb71a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 11:34:40', NULL, NULL),
('d92d9e003666c6b020f079eaee721f9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 12:08:43', NULL, NULL),
('68f7394ca53c59438b2b41e7bb9f3094', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:09:34', NULL, NULL),
('a9b34565c6460dc9cede00ad150393f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:17:53', NULL, NULL),
('fa427f74dc6bd9cca3db478b5842f7f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:19:07', NULL, NULL),
('8b66ec251e3107765768dbd0590eeb29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:25:48', NULL, NULL),
('e42a38382fce916909d6d09f66147006', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-28 14:28:44', NULL, NULL),
('ed0bbe9047a7471ae1cdc1c2941eccb1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-29 17:52:38', NULL, NULL),
('36fd54ce8bc1ee4aac9e3ea4bfdcd5a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-29 18:49:34', NULL, NULL),
('40b3a9bee45b23548250936310b273f4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 14:42:03', NULL, NULL),
('c9be887c9292153e39861c91243b7432', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:12:15', NULL, NULL),
('e40823376fa8c0e74a4e760de695e824', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:36:38', NULL, NULL),
('993010965223b8e3a7a784409f7e377e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 15:50:41', NULL, NULL),
('aa47c8cf2a4f2de16f415b9d9d3dbf05', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 16:14:36', NULL, NULL),
('4a0020835a71fc6dcaefd01968d21f81', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-30 18:46:37', NULL, NULL),
('fa9cebbb6af23d2830584b3aacd51e46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 13:59:17', NULL, NULL),
('60a975067f02cf05e74fa7b71e8e862a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 14:31:58', NULL, NULL),
('fbb8834e9736bdd4b6d3baee895c4ca4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-01-31 18:05:03', NULL, NULL),
('623e4bc7c098f368abcc368227235caf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:48:57', NULL, NULL),
('9f31eedbe3f3c5c431b490d5fec0094c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:56:36', NULL, NULL),
('b945fe8b63e0fc26d02c85466f36ebd9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 09:57:34', NULL, NULL),
('968d434c45aae64c9ad0e86d18238065', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 10:02:22', NULL, NULL),
('732a1015057fde25d81ee12a7fbf66b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-01 10:05:08', NULL, NULL),
('d9a0bb9fe6d2c675aa84f9441c0bd8bb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 10:56:23', NULL, NULL),
('9c64406daa2b6e7ad1f6776789d61e43', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 10:56:46', NULL, NULL),
('1912a44dd4a6ffa1636d2dde9c2f1ab7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:01:03', NULL, NULL),
('d19b6e77ab1b6d6aa58996a93918754c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:33:06', NULL, NULL),
('81f7a606359aff9f97f95c15ce8e7c69', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 11:33:42', NULL, NULL),
('7da063020a42db99e0f3bb9500498828', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 13:45:36', NULL, NULL),
('b6ee157afd006ceddc8c7558c251192e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-11 14:20:56', NULL, NULL),
('65ace1ae98891f48ab4121d9258e4f1e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 10:45:20', NULL, NULL),
('e2af7674bb716a7c0b703c7c7e20b906', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 11:38:55', NULL, NULL),
('60d4f59974170c67826e64480533d793', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:25:40', NULL, NULL),
('775e987a2ca37edc4f21e022b265a84a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:36:13', NULL, NULL),
('dd6fbb9b6224c927c0923c16b9285525', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:37:01', NULL, NULL),
('f3d371d6f71409ea2fe52405b725db4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 13:38:15', NULL, NULL),
('c33b4e0bbf998330e44fad65e9d0029e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 15:54:56', NULL, NULL),
('189842bf681338dc99dfa66d366a0e6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 15:55:01', NULL, NULL),
('e14cd21cf5eaad9ea3689730a824a50c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 16:12:32', NULL, NULL),
('5cf2431447eab30fd3623e831033eea0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-12 19:17:29', NULL, NULL),
('9bfe7312f2951503082a28c2cc966ce4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 10:24:02', NULL, NULL),
('da9a15efcf4e1e4f24647db7e2143238', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:19:54', NULL, NULL),
('8317a81bce60a10afeb44af6ef6c807a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:27:58', NULL, NULL),
('0a6eb1fa998b749012216542a2447ae7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 11:29:30', NULL, NULL),
('e5a9b045449136719d4c19c429c2dd56', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 13:08:05', NULL, NULL),
('aaf10eab9c2b6ed6af1d7a9ce844d146', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 13:08:10', NULL, NULL),
('b4ccdfc1280e73439eb1ad183076675b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 14:10:45', NULL, NULL),
('018fe8d3f049a32fb8b541c893058713', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 15:17:42', NULL, NULL),
('f3aab8f9dff7bf705aa29c6dcce49011', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 15:18:27', NULL, NULL),
('efa591832b375b4609a5890b0c6f3250', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:00:13', NULL, NULL),
('2c6822927334eb0810b71465fd9c4945', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:02:47', NULL, NULL),
('7289cf420ac87ea0538bde81435b1aaa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:03:51', NULL, NULL),
('db8adca4aa7972fdc283be96d877efe0', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:04:28', NULL, NULL),
('c5e541648bab341230c93377b4d4e262', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:05:09', NULL, NULL),
('e261674e2640fe6d0a3cd86df631537d', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:05:51', NULL, NULL),
('406e79995e3340d052d85a74a5d40d1b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:23:16', NULL, NULL),
('4de1ed55165f7086f1a425a26a2f56ec', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 16:26:27', NULL, NULL),
('d8eed69045aae6cedbff402b4e35f495', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-13 18:22:52', NULL, NULL),
('bbf4fb593d6918cc767bb50c9b6c16c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 10:44:20', NULL, NULL),
('506ce2d73a038b6e491a35a6c74a7343', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 13:44:04', NULL, NULL),
('4303dbb3e502f11a3c4078f899bb3070', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 17:28:44', NULL, NULL),
('2de252a92b59ebfbf16860cc563e3865', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:04:17', NULL, NULL),
('e4c330b381e2fbfde49f1d4dd43e68b7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:22:01', NULL, NULL),
('22735c059b01949a87cb918f5ef3be76', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:41:28', NULL, NULL),
('c5954beca75d6a0c014e2de3b621275a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-14 22:41:31', NULL, NULL),
('db8c89112bf4706fb558664dd741aa46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 09:33:23', NULL, NULL),
('fa0ce422c12a565461eca56006052891', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 10:13:21', NULL, NULL),
('a34ed4c6fef2b9f07a20e54ef4501b99', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 10:48:00', NULL, NULL),
('b55cc05e8dd4279c0fa145833db19ba8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 11:37:40', NULL, NULL),
('5c675eeb69795180eee2c1069efc114b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 12:59:43', NULL, NULL),
('5dee273feb8dd12989b40c2c92ce8c4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 13:42:58', NULL, NULL),
('994efef0ebca19292e14a39b385b0e21', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 16:22:24', NULL, NULL),
('fc22aaf9660e66558689a58dfa443074', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 16:30:55', NULL, NULL),
('2c6ede513b83fbc23aaedb89dbfa868a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 18:03:00', NULL, NULL),
('13c1e763e9d624a69727a38b85411352', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 18:39:00', NULL, NULL),
('fadb32d678346ee4bab02997988ff3bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-15 22:55:16', NULL, NULL),
('0aa792eadeae39a1ed2a98ea5d2f6d27', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-16 09:11:39', NULL, NULL),
('0aa9272c0581e1d7f62b1293375b4574', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-16 17:26:36', NULL, NULL),
('81c9056ac38e6f881d60f3d41df1845e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 11:44:47', NULL, NULL),
('eb4536aa50a58985baf0a763a1ce2ebf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 19:48:49', NULL, NULL),
('f9062582881b42f6b139c313d8ab0463', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 20:47:26', NULL, NULL),
('22d8a2fbd53eafb21f6f62ae073c0fc1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-17 22:28:52', NULL, NULL),
('7bc7b1ff923dbb19fb0ecd800cd690bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 09:34:59', NULL, NULL),
('faea0dbfb7f86b571fed0dd270623831', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 14:12:14', NULL, NULL),
('063baad688535096d2ed906ae6f3a128', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-18 22:09:21', NULL, NULL),
('528baecc596a66eaadc8887bff911f55', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:08:48', NULL, NULL),
('e540ca989819c54baefffbc3d05e8b58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:10:54', NULL, NULL),
('0643f3ad4394de9fb3c491080c6a7a03', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 10:18:42', NULL, NULL),
('eb0b8a7cdf77df133566d7bd5a5f1fc0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 11:02:55', NULL, NULL),
('0913bb0e92715892c470cf538726dfbc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 16:17:09', NULL, NULL),
('5034aec34f0b79da510e66008dbf2fcc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 16:18:29', NULL, NULL),
('e4afd66ac249dde9c3bd9da50f9c2469', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 17:41:54', NULL, NULL),
('07132c1228b1c165f62ea35f4ff1cbe9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 18:15:44', NULL, NULL),
('4f7f587bec68ed5bf9f68b0ccd76d62b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-19 21:01:47', NULL, NULL),
('12709e62742056aa4a57fa8c2c82d84a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:13:10', NULL, NULL),
('680b3e6e4768d80d6ea0ce8ba71bdd0e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:14:03', NULL, NULL),
('a6e323785535592ee208aa7e53554644', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:15:27', NULL, NULL),
('3a4a0e27d77aa8b624180e5fd5e4004e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 09:51:58', NULL, NULL),
('b98b7ac9e890657aa86a900763afbe2a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 11:49:44', NULL, NULL),
('d1eb2a8ebed28d34199c5fc4a1579c4c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 12:55:09', NULL, NULL),
('85949de2d54078e6b8f3df0a3c79c43d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:08:44', NULL, NULL),
('77579d78a903635cc4942882f568e9e5', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:13:33', NULL, NULL),
('679e12ba247575749e03aa8f67347ac6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:14:42', NULL, NULL),
('5c35117cbeb39428fcc2ddd90ce96a2b', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:18:51', NULL, NULL),
('7225200c3cec4789af4f1da2c46b129d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:19:23', NULL, NULL),
('22ad9f87788506456c774801389d6a01', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 17:20:10', NULL, NULL),
('81c95e1c8805fa191753fc99ba54c3e9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:01:21', NULL, NULL),
('7285730e2644f49def0937dc99bfbe3d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:07:01', NULL, NULL),
('4922f2f1173a1edc11dfd11cb2a100ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:08:27', NULL, NULL),
('e37cce529d0c98c47b4977d7ddf963c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:17:54', NULL, NULL),
('66493cd0347eeb6ee2ef5ee923604683', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:29:47', NULL, NULL),
('f04910792a74c563d057c4fcb345f963', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:30:00', NULL, NULL),
('210a01dcb34302eaed0d1e95820655d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:30:15', NULL, NULL),
('48929ec94226d9ccff9fae4ff48e95e3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:32:55', NULL, NULL),
('d2ac19a709ea08f7259286df28efd635', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:35:37', NULL, NULL),
('d8fd478e6ceb03a575719e1a54342333', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:43:43', NULL, NULL),
('a35a476c303983701045507c9af3fa03', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-20 18:44:58', NULL, NULL),
('7e41208e29d412d586fc39375628b0d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-21 15:34:35', NULL, NULL),
('1f33d11e1833ae497e3ef65a3f02dd5b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-21 19:51:12', NULL, NULL),
('dae0658783324c81fa6909b6e4a25a65', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 11:46:41', NULL, NULL),
('a77d29673cfe97c9e03cfb879b934f62', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 12:41:15', NULL, NULL),
('baaf37e5937f938ac92856bc74cc2b86', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 13:48:53', NULL, NULL),
('3f47afcdce94596494746ac34eebf13b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 13:59:10', NULL, NULL),
('b99fc7c53d4e3edc0c618edc11d3a073', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 15:58:43', NULL, NULL),
('024a4c5ba78538d05373dac650b227d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 15:59:50', NULL, NULL),
('873f425879ef9ca7ced982acda19ea58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 16:35:59', NULL, NULL),
('1b05434820cbcb038028da9f5cda31bb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 17:45:16', NULL, NULL),
('5f314fc45492d7f90b74d1ca74d1d392', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 17:45:48', NULL, NULL),
('20751803c1e5b2d758b981ba22f61fcd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 18:11:05', NULL, NULL),
('50e8de3e6b45f8625b8fd5590c9fd834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 18:23:18', NULL, NULL),
('6737424e01b38f2273e9728bf39f3e37', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-22 19:43:37', NULL, NULL),
('0473dedf4aa653b253b008dacff2937c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 13:04:44', NULL, NULL),
('a95192071de908f37f4998af4c269bcb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 14:26:53', NULL, NULL),
('3569ada5c43a4022d3d13ac801aff40e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 14:50:55', NULL, NULL),
('562092eb81561ee0f63be5dd9367d298', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:20:59', NULL, NULL),
('131ccd390401b6e3894a37e4d1d195d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:26:52', NULL, NULL),
('c12e3d7655a5a8b192bb9964a2a66946', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:35:45', NULL, NULL),
('6bc98b7dc91a3924f794202867367aca', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:50:34', NULL, NULL),
('002b7112a147edeb6149a891494577d0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:52:15', NULL, NULL),
('202344b08b69ad70754e6adaa777eae0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:54:22', NULL, NULL),
('eeb1f2e2c1b480e0bb62533848cbb176', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:55:46', NULL, NULL),
('94fe4465d779e0438cfe6f0cb1a1aa7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:57:42', NULL, NULL),
('d03aaee882d13b796db860cb95f27724', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 22:59:54', NULL, NULL),
('1db82f78233c120c6ec7648ca1177986', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:07:39', NULL, NULL),
('7dc448f04edf4b9655362ad1a1c58753', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:10:17', NULL, NULL),
('fce1553149aea9bfd93e089f387199c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:11:35', NULL, NULL),
('e713a89e753cbecf1e10247b2112c3f8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-24 23:14:36', NULL, NULL),
('0a634ed086442afa7a5fc9aa000b898a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:10:39', NULL, NULL),
('bfa0766f53dbd3a0fe4043f57bd9bbee', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:35:33', NULL, NULL),
('e3b531fa12e47ac19a2ab0c883dee595', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:40:13', NULL, NULL),
('18eafaeec588403245269a41732d1a74', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:45:14', NULL, NULL),
('99357d793f2507cfb7b270677b4fe56c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:46:42', NULL, NULL),
('b38f42f4e15ee72e494bdf6f6feb0ae7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:49:58', NULL, NULL),
('bfe758860662ae07a15598396a12cfaa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:50:00', NULL, NULL),
('69a7a5b960d6aedda5c4bd8b877be0a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:50:48', NULL, NULL),
('4084f184160940a96e47d7be1fab4ea3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:11', NULL, NULL),
('1241cf8e9fd0e28478a07bf755f528c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:12', NULL, NULL),
('e0da357be27d66de1c9e9b8ecb22f9f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL),
('9f4960f89a10d7fdcf22d1ea46143fff', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL),
('ab8a71b7565d356d12e12c6730b0ceb0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:13', NULL, NULL),
('35fdedc363d9fe514b44095da40f170b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:51:30', NULL, NULL),
('7126b35521cd0dba932e6f04b0dac88f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:52:22', NULL, NULL),
('9bd6e11c5a2f0bb70215cfa097a4b29c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 10:57:52', NULL, NULL),
('7e2edea80050d2e46aa2e8faef8e29ce', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:01:38', NULL, NULL),
('190eb7b4d493eb01b13c5b97916eeb13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:09:05', NULL, NULL),
('ea268ad02db29012b2f1bd3d4aea1419', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:10:22', NULL, NULL),
('7dc498b45fbf25c59686d9dda0d3eb66', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:12:38', NULL, NULL),
('583d3aa445d408f4ecd19ee0a85514af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:18:04', NULL, NULL),
('9cea908c7a78dc77fdaed975819983bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:20:15', NULL, NULL),
('d70329497664391dabc25effe7406c50', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:25:12', NULL, NULL),
('0b9940fc5487026a3f16cade73efead5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:28:28', NULL, NULL),
('f21f9f700bf4f5bd9edda7a16ed338f8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:30:05', NULL, NULL),
('f5c08b45885d248c422a5d406cd5f223', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:41:54', NULL, NULL),
('e9a31bfc128b3f5ae01656916c605ddb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:44:56', NULL, NULL),
('6baccd034e970c6f109791cff43bc327', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:46:12', NULL, NULL),
('d2b516c5d834bd0fca91cda416fe499e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:46:42', NULL, NULL),
('f9abb524e0dc3571571dc6e50ec6db75', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:47:13', NULL, NULL),
('d1111594fef195980370c5f91ccf9212', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:48:09', NULL, NULL),
('9174fe77fe8ba69243f72d5577b391d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:48:38', NULL, NULL),
('2ab9cf95ac35fdbb8fe976e13c404c41', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:49:05', NULL, NULL),
('9be945480d69038865279f02df5cee45', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:49:47', NULL, NULL),
('c2bfe3b92e6bfb7016cc82e95419a602', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 11:54:05', NULL, NULL),
('7c310b99a84411798a2aaf4074a28e7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:42:57', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('b23293288a84ba965509f466ed0e7e2f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:43:11', NULL, NULL),
('cf590576a5f6a42b347e6b5bf5ebf5bd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:43:31', NULL, NULL),
('b5df1807f08af5db640da11affec24d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:49:25', NULL, NULL),
('2746af3dd0309cdeeff7d27999fbcda1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:52:55', NULL, NULL),
('2a383edf5445dc8493f5240144ca72f5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 12:56:05', NULL, NULL),
('d2910961a0ff046cc3ef6cf8d33a8094', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:38:47', NULL, NULL),
('00f763e007e5a6bddf4cb8e562a53005', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:41:31', NULL, NULL),
('8ab131214232450ca202103ef81f0a2d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 15:46:29', NULL, NULL),
('606cb4f81f9bb412e2b2bdaa0f3e5dda', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:27:23', NULL, NULL),
('7b85fba62bc001773fff1a54e1609aef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:28:20', NULL, NULL),
('b3127e34f395e1f1790450da5689a4a1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 16:28:35', NULL, NULL),
('fb2871cda1421b766f8e68cb36a22bf3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:35:01', NULL, NULL),
('29fb5d4297748af3cd1c7f2611b7a2d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:38:05', NULL, NULL),
('580256f7c7ea658786dba919009451b6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:39:43', NULL, NULL),
('8802209912ca66d56f2ea241ffd0cc13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:52:34', NULL, NULL),
('4778fe2992fd5efd65f86cb0e00e338e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:53:11', NULL, NULL),
('d68957c067fb27e80a23babebdb1591f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:55:06', NULL, NULL),
('472c34745b8f86a46efa28f408465a63', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 17:56:31', NULL, NULL),
('26975f09c66025d1c8d87a6894a3c262', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:29:08', NULL, NULL),
('e4a166fcd0fc4037cb26e35cc1fb87b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:32:41', NULL, NULL),
('286af82485388bfcd3bb9821ff1a4727', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:34:37', NULL, NULL),
('eaf74cd1489b02d39c470eed131fc918', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 18:37:39', NULL, NULL),
('e48a6bd82c92a8005c80c5ef36746117', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 19:32:26', NULL, NULL),
('10922e0d030960e6b026c67c6179247b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-25 20:07:59', NULL, NULL),
('b53c9e8ce1e129a09a3cda8c01fe644c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:38:49', NULL, NULL),
('65be8e015c9f2c493bd0a4e405dd8221', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:40:20', NULL, NULL),
('8ff27392165c8c707ee10ec0010c7bb8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:44:07', NULL, NULL),
('337b647a4085e48f61c7832e6527517d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:45:16', NULL, NULL),
('caee69e55ec929f7ba904280cac971e6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:49:15', NULL, NULL),
('bdeae62057ae9858b6a546c1bdb6efc7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:49:29', NULL, NULL),
('ea66ed22fde49640cee5d73c6ef69718', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:50:04', NULL, NULL),
('47c5a5b799e10255c96ccd65286541ef', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:50:35', NULL, NULL),
('cfba34db2d7fbb15a2971212f09b59ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 11:51:43', NULL, NULL),
('faad055dd212ed9506b444f8f1a920b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:00:38', NULL, NULL),
('ef7219725c4b84cc71f56f97a8eab01a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:08:00', NULL, NULL),
('2811e224e4e8d70f2946c815988b9b7c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:08:14', NULL, NULL),
('7feae2fb5001ca0095c05a8b08270317', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:17:31', NULL, NULL),
('b4c3c7af9899b9af3f42f730cfabc9b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:17:58', NULL, NULL),
('28e8a7ed786eaced3182c70f68c7ea78', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:18:33', NULL, NULL),
('3a76114e431912ff9a19a4b6eb795112', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:19:41', NULL, NULL),
('557b3c346d9bc8f7a83fac9f5b12dc1b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:20:28', NULL, NULL),
('e92544c6102243e7908e0cbb217f5198', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 12:48:28', NULL, NULL),
('61445cc950f5d04d91339089b18edef9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:13:22', NULL, NULL),
('776c2e546c9ab0375d97590b048b8a9d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:13:51', NULL, NULL),
('ef7669ac0350730d198f59b8411b19d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:28:43', NULL, NULL),
('b3cceb535fa5577cc21b12502535ad29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:29:01', NULL, NULL),
('18a51a5f04eeaad6530665f6b0883f0c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:11', NULL, NULL),
('8a13971104d70e35111d10dd99de392e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:25', NULL, NULL),
('6d93d5667245ef8e5d6eafdbc9113f51', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:34:42', NULL, NULL),
('7ba3df5d2612ac3dd724e07a55411386', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:35:03', NULL, NULL),
('7148b3d58f121ef04bcbea5dd2e5fe3b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:35:23', NULL, NULL),
('709b0f2bf8cb8f785f883509e54ace28', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:37:37', NULL, NULL),
('4114145795da30b34545e9e39b7822d9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:39:33', NULL, NULL),
('f543c25bdd741055aeb4f77c5b5acf58', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:40:58', NULL, NULL),
('bc594b8921a0bcdb26d4a93916316092', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 14:42:58', NULL, NULL),
('11f511eeeb2e91af86b9d5e05132fc89', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 15:13:43', NULL, NULL),
('810deb9fd39fa2f0a8e30e3db42f7c2b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 18:51:00', NULL, NULL),
('d5b9e5d9bfbbd8e6d651087ead76d9f7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 20:17:41', NULL, NULL),
('016510fc662d9bb24d0186c5478df268', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-02-26 20:27:18', NULL, NULL),
('eb6f5196de91dd2e8316696bddd61345', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 22:26:36', NULL, NULL),
('d762a1cba3dc23068f352323d98909e0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-02-26 22:26:49', NULL, NULL),
('69fc2407b46abad64fa44482c0dca59f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 12:04:25', NULL, NULL),
('0d6cd835072c83f46d1d2a3cf13225d3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 12:04:44', NULL, NULL),
('e78f8832d61c1603c17767ee2b78ef07', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 19:50:03', NULL, NULL),
('0475b4445d5f58f29212258c1644f339', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-01 20:20:23', NULL, NULL),
('2b5a76869a7d1900487cd220de378dba', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 16:32:00', NULL, NULL),
('21b8493a05050584d9bb06cfc2a05a6b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 17:29:52', NULL, NULL),
('a61d9db83888d42b0d24621de48a880d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 22:49:48', NULL, NULL),
('097be3e8fdf77a245f5c85884e97b88c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-05 22:52:45', NULL, NULL),
('7b2b322a47e1ce131d71c50b46d7d29e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 15:55:20', NULL, NULL),
('cedf399271592c27dcb6f6ce3312e77d', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '["7501"]', NULL, 24, 'admin', '2019-03-06 16:03:13', NULL, NULL),
('efe77038e00cfff98d6931c3e7a4c3d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 16:20:19', NULL, NULL),
('ffac84fff3c65bb17aa1bda3a0d2029e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-06 20:10:50', NULL, NULL),
('45819fe1b96af820575a12e9f973014e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 09:19:22', NULL, NULL),
('87885bc889d23c7c208614da8e021fb0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 10:23:22', NULL, NULL),
('54c2bad38dafd9e636ce992aa93b26af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 11:57:14', NULL, NULL),
('d3c4f120d8a23b62ec9e24b431a58496', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 14:17:24', NULL, NULL),
('d01d658731dac4b580a879d986b03456', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 15:00:37', NULL, NULL),
('ab550d09101a88bc999ea57cbb05aa5a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 17:59:59', NULL, NULL),
('aeb738ab880c262772453d35fc98f2f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 18:50:30', NULL, NULL),
('375aadb2833e57a0d5a2ce0546a65ca4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 20:38:52', NULL, NULL),
('96d7fe922f46123e0497e22dedf89328', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-07 23:10:48', NULL, NULL),
('636d37d423199e15b4030f35c60859fe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:07:21', NULL, NULL),
('a7d1f4a774eb8644e2b1d37ca5f93641', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:16:03', NULL, NULL),
('017e9596f489951f1cc7d978085adc00', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 10:58:00', NULL, NULL),
('0b42292a532c796495a34d8d9c633afa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 12:58:03', NULL, NULL),
('b428718441be738cf8b5ce92109068c3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 16:21:37', NULL, NULL),
('89d2bc84e056f327291c53821d421034', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 16:57:46', NULL, NULL),
('e09bb0a74c268a9aaf1f94edcc2eb65a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-08 18:26:14', NULL, NULL),
('0dc22e52c9173e4e880728bc7734ff65', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 11:14:47', NULL, NULL),
('5358b182eab53a79eec236a9cee1e0fc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 13:01:21', NULL, NULL),
('23176e4b29c3d2f3abadd99ebeffa347', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 16:37:50', NULL, NULL),
('703fbcb7e198e8e64978ec0518971420', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 17:53:55', NULL, NULL),
('9e9d01c430b72703ce3a94589be54bbe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 18:26:06', NULL, NULL),
('ef54197116da89bf091c0ed58321eea4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 19:22:06', NULL, NULL),
('111156480d4d18ebf40427083f25830f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 19:48:58', NULL, NULL),
('a9bd713f975bfbff87638432a104b715', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:04:44', NULL, NULL),
('06fbb85b34f518cd211b948552de72f8', 1, '登录失败，用户名:null不存在！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:08:38', NULL, NULL),
('9b568a868e57f24c5ba146848061613f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:09:15', NULL, NULL),
('02026841bf8a9204db2c500c86a4a9be', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:44:58', NULL, NULL),
('c1a68605bee6b3d1264390c1cfe7a9fa', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:49:55', NULL, NULL),
('cbd720f20fc090c7350a98be0738816a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 20:55:19', NULL, NULL),
('2676be4ffc66f83221fd95e23d494827', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 21:31:28', NULL, NULL),
('e9d3202c14f7f2812346fb4c2b781c67', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 21:38:36', NULL, NULL),
('d9e0150666b69cced93eb4defb19788b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 23:11:12', NULL, NULL),
('1f0b36f7e021aa5d059ffb0a74ef6de4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-09 23:11:25', NULL, NULL),
('326b2df4ab05a8dbb03a0a0087e82a25', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 11:53:20', NULL, NULL),
('7ae9cad197aee3d50e93bc3a242d68ec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 13:12:26', NULL, NULL),
('78caf9e97aedfb8c7feef0fc8fdb4fb5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 17:04:46', NULL, NULL),
('d00964eee24c6f9a8609a42eeebef957', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-10 17:04:48', NULL, NULL),
('04f97d7f906c1e97384a94f3728606a4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:08:51', NULL, NULL),
('2b433e88db411bef115bc9357ba6a78b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:09:36', NULL, NULL),
('63ccf8dda5d9bf825ecdbfb9ff9f456c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:14:08', NULL, NULL),
('404d5fb6cce1001c3553a69089a618c8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 12:29:12', NULL, NULL),
('9ed114408a130e69c0de4c91b2d6bf7e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:03:40', NULL, NULL),
('2eb964935df6f3a4d2f3af6ac5f2ded1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.200', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:27:18', NULL, NULL),
('e864c0007983211026d6987bd0cd4dc8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.114', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 13:37:08', NULL, NULL),
('8b2ad448021fbb5509ea04c9a780b165', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 14:35:25', NULL, NULL),
('69a9dfb2fb02e4537b86c9c5c05184ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.104', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 15:22:14', NULL, NULL),
('98b7fc431e4654f403e27ec9af845c7b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 17:31:38', NULL, NULL),
('42bf42af90d4df949ad0a6cd1b39805e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.200', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 17:39:01', NULL, NULL),
('e234abc35a52f0dd2512b0ce2ea0e4f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-11 20:05:26', NULL, NULL),
('69baa4f883fe881f401ea063ddfd0079', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-12 20:51:03', NULL, NULL),
('a867c282a8d97f7758235f881804bb48', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-13 18:28:20', NULL, NULL),
('1aa593c64062f0137c0691eabac07521', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 10:45:10', NULL, NULL),
('de978382f59685babf3684d1c090d136', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 12:55:55', NULL, NULL),
('75c7fa1a7d3639be1b112e263561e43a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 17:07:59', NULL, NULL),
('7a9d307d22fb2301d6a9396094afc82f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 18:45:04', NULL, NULL),
('28dbc8d16f98fb4b1f481462fcaba48b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 20:56:57', NULL, NULL),
('f1186792c6584729a0f6da4432d951f9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-14 21:45:52', NULL, NULL),
('4f31f3ebaf5d1a159d2bb11dd9984909', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 11:14:15', NULL, NULL),
('9a5c1fbf3543880af6461182e24b75db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 13:51:27', NULL, NULL),
('b86958d773b2c2bd79baa2e8c3c84050', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 16:49:36', NULL, NULL),
('a052befb699ee69b3197b139fd9263f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 17:34:58', NULL, NULL),
('6836a652dc96246c028577e510695c6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-15 20:47:02', NULL, NULL),
('8fe913a5b037943c6667ee4908f88bea', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:18:48', NULL, NULL),
('9410b7974fbc9df415867095b210e572', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:18:58', NULL, NULL),
('98d4b573769af6d9c10cd5c509bfb7af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:21:25', NULL, NULL),
('18b16a451fec0fe7bf491ab348c65e30', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 11:55:45', NULL, NULL),
('0d85728028ed67da696137c0e82ab2f6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-16 12:58:43', NULL, NULL),
('4aa770f37a7de0039ba0f720c5246486', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:26:12', NULL, NULL),
('2fecb508d344c5b3a40f471d7b110f14', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:36:53', NULL, NULL),
('61aac4cfe67ec6437cd901f95fbd6f45', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:40:21', NULL, NULL),
('62e208389a400e37250cfa51c204bdc8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:44:49', NULL, NULL),
('eb9a522fd947c7a706c5a106ca32b8c9', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:50:17', NULL, NULL),
('bd9167a87aee4574a30d67825acaad0a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:51:03', NULL, NULL),
('49f1ec54eb16af2001ff6809a089e940', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:10', NULL, NULL),
('bdfd95b4d4c271d7d8d38f89f4a55da9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:12', NULL, NULL),
('95063e0bdfa5c9817cc0f66e96baad93', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 17:59:16', NULL, NULL),
('30da94dd068a5a57f3cece2ca5ac1a25', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:01:43', NULL, NULL),
('8fde5f89e8ad30cf3811b8683a9a77b1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:02:41', NULL, NULL),
('2ebe7f0432f01788d69d39bc6df04a1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 18:05:09', NULL, NULL),
('beb9ef68b586f05bd7cf43058e01ad4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-17 22:29:02', NULL, NULL),
('befbcf5a27ef8d2ca8e6234077f9413d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:01:33', NULL, NULL),
('378b44af9c1042c1438450b11c707fcf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:07:39', NULL, NULL),
('0571e5730ee624d0dd1b095ad7101738', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:10:50', NULL, NULL),
('3ec2023daa4a7d6a542bf28b11acf586', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 16:18:20', NULL, NULL),
('64c00f27ddc93fda22f91b38d2b828b5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:34:45', NULL, NULL),
('21bad1470a40da8336294ca7330f443d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:35:32', NULL, NULL),
('72ee87d0637fb3365fdff9ccbf286c4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:36:44', NULL, NULL),
('d8c43edd685431ab3ef7b867efc29214', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:37:18', NULL, NULL),
('0ad51ba59da2c8763a4e6ed6e0a292b2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 17:37:53', NULL, NULL),
('d916bd1d956418e569549ee1c7220576', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 19:18:42', NULL, NULL),
('917dbb5db85d1a6f142135827e259bbf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 20:21:03', NULL, NULL),
('db2b518e7086a0561f936d327a0ab522', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:39:23', NULL, NULL),
('61d2d2fd3e9e23f67c23b893a1ae1e72', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:44:56', NULL, NULL),
('671a44fd91bf267549d407e0c2a680ee', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 22:45:16', NULL, NULL),
('586e8244eff6d6761077ef15ab9a82d9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-18 23:03:51', NULL, NULL),
('2b4d33d9be98e1e4cdd408a55f731050', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:32:00', NULL, NULL),
('3267222d9387284b864792531b450bfe', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:33:23', NULL, NULL),
('a28de45f52c027a3348a557efab6f430', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 10:34:26', NULL, NULL),
('9db7e7d214dbe9fe8fff5ff20634e282', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 11:19:34', NULL, NULL),
('74209dfc97285eb7919868545fc2c649', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 11:23:08', NULL, NULL),
('49d48fda33126595f6936a5d64e47af0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 13:17:51', NULL, NULL),
('fe0dc06eaef69047131f39052fcce5c4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 13:56:05', NULL, NULL),
('f540eff3f6e86c1e0beccd300efd357f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 15:15:26', NULL, NULL),
('3fd0d771bbdd34fae8b48690ddd57799', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 17:17:22', NULL, NULL),
('27e8812c9a16889f14935eecacf188eb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 18:52:19', NULL, NULL),
('88bab180edf685549c7344ec8db7d954', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 19:07:06', NULL, NULL),
('ed9b4ffc8afab10732aac2d0f84c567b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-19 19:10:52', NULL, NULL),
('ad97829fe7fefcd38c80d1eb1328e40f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 09:28:18', NULL, NULL),
('3d25a4cdd75b9c4c137394ce68e67154', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 09:59:31', NULL, NULL),
('5c7e834e089ef86555d8c2627b1b29b5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:25:26', NULL, NULL),
('b3adf055f54878657611ef430f85803e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:33:57', NULL, NULL),
('8d105ea6c89691bc8ee7d4fd568aa690', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:39:33', NULL, NULL),
('445436e800d306ec1d7763c0fe28ad38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:43:00', NULL, NULL),
('7f9c3d539030049a39756208670be394', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:44:40', NULL, NULL),
('feaf7c377abc5824c1757d280dd3c164', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 11:58:54', NULL, NULL),
('c72bb25acd132303788699834ae039b4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:06:06', NULL, NULL),
('e4c06405615399d6b1ebea45c8112b4d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:07:26', NULL, NULL),
('f95d517f43ba2229c80c14c1883a4ee9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:11:59', NULL, NULL),
('d18bff297a5c2fa54d708f25a7d790d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:13:05', NULL, NULL),
('b5f6636c6e24e559ddf1feb3e1a77fd5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:14:05', NULL, NULL),
('aeca30df24ce26f008a7e2101f7c513c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:27:53', NULL, NULL),
('cd7a7c49e02ca9613b6879fda4e563cf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 12:29:08', NULL, NULL),
('a7ee4b4c236bc0e8f56db5fdf1e5ac38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 13:21:36', NULL, NULL),
('6d45672f99bbfd01d6385153e9c3ad91', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 13:49:20', NULL, NULL),
('905d2cf4308f70a3a2121a3476e38ed0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 14:00:30', NULL, NULL),
('27d23027dc320175d22391d06f50082f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 15:50:06', NULL, NULL),
('52fde989fb8bb78d03fb9c14242f5613', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-20 17:04:09', NULL, NULL),
('952947331f8f3379494c4742be797fc3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-20 18:42:11', NULL, NULL),
('39caf3d5d308001aeb0a18e15ae480b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 10:31:07', NULL, NULL),
('772f238d46531a75fff31bae5841057c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 11:31:16', NULL, NULL),
('f79af48e6aeb150432640483f3bb7f2a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:09:11', NULL, NULL),
('20fc3263762c80ab9268ddd3d4b06500', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:36:44', NULL, NULL),
('e8b37ad67ef15925352a4ac3342cef07', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:38:10', NULL, NULL),
('d6aaf0f8e2428bf3c957becbf4bcedb4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:38:14', NULL, NULL),
('3bc73699a9fd3245b87336787422729b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:07', NULL, NULL),
('862aa0e6e101a794715174eef96f7847', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:09', NULL, NULL),
('a6209166e1e9b224cca09de1e9ea1ed7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:10', NULL, NULL),
('b954f7c34dfbe9f6a1fc12244e0a7d59', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:10', NULL, NULL),
('64711edfb8c4eb24517d86baca005c96', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:41:11', NULL, NULL),
('0efc9df0d52c65ec318e7b46db21655f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:42:47', NULL, NULL),
('c03985d6e038b5d8ebdeec27fce249ba', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:43:24', NULL, NULL),
('69e6fd7891d4b42b0cccdc0874a43752', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:45:58', NULL, NULL),
('9b23981621d5265a55681883ec19fa91', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:05', NULL, NULL),
('37ca8ff7098b9d118adb0a586bdc0d13', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:07', NULL, NULL),
('ea5f9191b0f593a1d6cb585538caa815', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:08', NULL, NULL),
('8e03def9e0283005161d062d4c0a5a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:46:09', NULL, NULL),
('f78e24f5e841acac2a720f46f6c554bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:17', NULL, NULL),
('f93279c6899dc5e6cec975906f8bf811', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:20', NULL, NULL),
('cd5af66a87bb40026c72a748155b47e8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:47:26', NULL, NULL),
('5902fb4ba61ccf7ff4d2dd97072b7e5b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:48:30', NULL, NULL),
('e1d1fc464cf48ec26b7412585bdded1a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 13:49:15', NULL, NULL),
('5ea258e1f478d27e0879e2f4bcb89ecd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 14:01:59', NULL, NULL),
('2e44c368eda5a7f7a23305b61d82cddb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:14:23', NULL, NULL),
('34a6b86424857a63159f0e8254e238c2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:22:08', NULL, NULL),
('ffc6178ffa099bb90b9a4d0a64dae42b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 18:28:32', NULL, NULL),
('3612f8d40add5a7754ea3d54de0b5f20', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 19:59:59', NULL, NULL),
('7a511b225189342b778647db3db385cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 20:50:10', NULL, NULL),
('b7085f003b4336af4d4ba18147f8e5ae', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 22:29:37', NULL, NULL),
('c66e22782dd3916d1361c76b0cc4ec8a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-21 22:44:06', NULL, NULL),
('c6cbe54fcb194d025a081e5f91a7e3f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 10:26:38', NULL, NULL),
('1ab7c74d217152081f4fa59e4a56cc7b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 12:03:39', NULL, NULL),
('5f00b5514a11cd2fe240c131e9ddd136', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:30:52', NULL, NULL),
('82cee1c403025fc1db514c60fc7d8d29', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:41:50', NULL, NULL),
('af5869701738a6f4c2c58fe8dfe02726', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 16:42:40', NULL, NULL),
('233e39d8b7aa90459ebef23587c25448', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 17:38:36', NULL, NULL),
('b0cebd174565a88bb850a2475ce14625', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 18:19:39', NULL, NULL),
('26529d5753ceebbd0d774542ec83a43e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 20:17:41', NULL, NULL),
('f3e1f7fb81004ccd64df12d94ef1e695', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 21:30:37', NULL, NULL),
('a2e0435673b17f4fb848eecdf8ecacd6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 21:32:37', NULL, NULL),
('5323f848cddbb80ba4f0d19c0580eba9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 22:58:40', NULL, NULL),
('5858f2f8436460a94a517904c0bfcacb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-22 23:42:21', NULL, NULL),
('8d9ce65020320d46882be43b22b12a62', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 10:56:43', NULL, NULL),
('11802c7a3644af411bc4e085553cfd4f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 14:46:35', NULL, NULL),
('fc69a1640a4772c8edf2548d053fa6de', 1, '用户名: admin,登录成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-23 14:55:33', NULL, NULL),
('e3031f999984909f9048d8ec15543ad0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:43:02', NULL, NULL),
('f43e38800d779422c75075448af738d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:47:11', NULL, NULL),
('dcfe23b155d5c6fa9a302c063b19451e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:47:21', NULL, NULL),
('802cec0efbe9d862b7cea29fefc5448b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 18:58:50', NULL, NULL),
('f58e160e97d13a851f59b70bf54e0d06', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:11:58', NULL, NULL),
('b8bd2a9de3fb917dfb6b435e58389901', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:13:31', NULL, NULL),
('e01ed1516e8ae3a2180acbd4e4508fa5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 20:28:12', NULL, NULL),
('b7f33b5a514045878447fc64636ac3e6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:00:34', NULL, NULL),
('d0ce9bfc790a573d48d49d3bbbf1a1cb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:09:06', NULL, NULL),
('74c991568d8bcb2049a0dbff53f72875', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:12:15', NULL, NULL),
('0251bbee51c28f83459f4a57eeb61777', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:14:27', NULL, NULL),
('a5848ab4e8d0fb6ecf71ee1d99165468', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 22:14:50', NULL, NULL),
('79a1737fcc199c8262f344e48afb000d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-23 23:25:25', NULL, NULL),
('6cfeaf6a6be5bb993b9578667999c354', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-24 11:43:34', NULL, NULL),
('c5d4597b38275dcb890c6568a7c113f2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-24 12:18:46', NULL, NULL),
('0f173ec7e8819358819aa14aafc724c0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:15:58', NULL, NULL),
('ce9893f4d0dd163e900fcd537f2c292d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:55:55', NULL, NULL),
('90711ddb861e28bd8774631c98f3edb9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:57:42', NULL, NULL),
('fb73d58bf6503270025972f99e50335d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:57:56', NULL, NULL),
('3a290289b4b30a1caaac2d03ad3161cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:58:13', NULL, NULL),
('716f9f5f066a6f75a58b7b05f2f7f861', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:59:01', NULL, NULL),
('151a9f1b01e4e749124d274313cd138c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 11:59:17', NULL, NULL),
('0ef3e7ae8c073a7e3bdd736068f86c84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:27', NULL, NULL),
('d7e7cb4c21372e48b8e0ec7e679466e3', 1, '用户名: null,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:34', NULL, NULL),
('15b9599cb02b49a62fb4a1a71ccebc18', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:02:50', NULL, NULL),
('ecfee5b948602a274093b8890e5e7f3f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:05:11', NULL, NULL),
('cbf83d11486a8d57814ae38c9822b022', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:05:39', NULL, NULL),
('f2ce8024e62740f63c134c3cfb3cae23', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:07:41', NULL, NULL),
('c665d704539483630cc9ed5715ed57a8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:10:12', NULL, NULL),
('e93f1a170e3cd33f90dd132540c7a39b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:12:43', NULL, NULL),
('fded8eb5d78d13791baec769019fee54', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:15:07', NULL, NULL),
('03ec66b6b6d17c007ec2f918efe5b898', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:16:03', NULL, NULL),
('5e8bac7831de49146d568c9a8477ddad', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:16:37', NULL, NULL),
('cd064a2f6cb6c640cb97a74aaa6041d7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:17:10', NULL, NULL),
('a521d9f2a0087daa37923fa704dea85b', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:52', NULL, NULL),
('4816854636129e31c2a5f9d38af842ef', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:54', NULL, NULL),
('90b4bad7939233a1e0d7935f079ea0fa', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:45:54', NULL, NULL),
('aec0817ecc0063bde76c1f6b6889d117', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:47:06', NULL, NULL),
('e169938510c9320cb1495ddb9aabb9d1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:47:40', NULL, NULL),
('b7478d917ab6f663e03d458f0bb022a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:50:55', NULL, NULL),
('642e48f2e5ac8fe64f1bfacf4d234dc8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:51:21', NULL, NULL),
('ed2740de487c684be9fa3cf72113ae30', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:51:43', NULL, NULL),
('b1e9797721dbfcc51bbe7182142cbdcd', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:52:25', NULL, NULL),
('6a67bf2ff924548dee04aa97e1d64d38', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:52:41', NULL, NULL),
('a56661bbc72b8586778513c71f4764f5', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:53:09', NULL, NULL),
('ae61be664d2f30d4f2248347c5998a45', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 12:53:17', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('4ab79469ba556fa890258a532623d1dc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:54:20', NULL, NULL),
('3a0330033a8d3b51ffbfb2e0a7db9bba', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:54:27', NULL, NULL),
('b972484d206b36420efac466fae1c53f', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 12:54:38', NULL, NULL),
('7e92abdc0c1f54596df499a5a2d11683', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 12:59:34', NULL, NULL),
('fa9b4d7d42bc9d1ba058455b4afedbfb', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 12:59:46', NULL, NULL),
('1d970c0e396ffc869e3a723d51f88b46', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 13:01:17', NULL, NULL),
('88d7136ed5c7630057451816dbaff183', 1, '用户名: jeecg,退出成功！', NULL, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-03-25 13:01:24', NULL, NULL),
('48eac0dd1c11fe8f0cb49f1bd14529c2', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 13:01:31', NULL, NULL),
('a8c7ba2d11315b171940def2cbeb0e8f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-25 13:01:40', NULL, NULL),
('20fea778f4e1ac5c01b5a5a58e3805be', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 19:01:49', NULL, NULL),
('48e5faf2d21ead650422dc2eaf1bb6c5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 22:08:09', NULL, NULL),
('f74f759b43afa639fd1c4f215c984ae0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-25 22:08:18', NULL, NULL),
('d82b170459d99fc05eb8aa1774e1a1c9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 18:45:14', NULL, NULL),
('e088a2607864d3e6aadf239874d51756', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 18:46:56', NULL, NULL),
('95d906e6f048c3e71ddbcc0c9448cf49', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 19:23:30', NULL, NULL),
('3767186b722b7fefd465e147d3170ad1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-26 21:57:19', NULL, NULL),
('f21e30d73c337ea913849ed65808525c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 10:23:22', NULL, NULL),
('189e3428e35e27dfe92ece2848b10ba8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 15:52:21', NULL, NULL),
('e2b6d0e751f130d35c0c3b8c6bd2a77e', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-27 16:18:40', NULL, NULL),
('586002e1fb4e60902735070bab48afe3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 16:18:52', NULL, NULL),
('611fa74c70bd5a7a8af376464a2133e8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 17:48:13', NULL, NULL),
('90555a39c0b02180df74752e4d33f253', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 18:26:25', NULL, NULL),
('217aa2f713b0903e6be699136e374012', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-27 20:07:32', NULL, NULL),
('5554869b3475770046602061775e0e57', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 14:38:05', NULL, NULL),
('bfec8c8c88868391041667d924e3af7f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 14:38:27', NULL, NULL),
('675153568c479d8b7c6fe63327066c9f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 15:29:42', NULL, NULL),
('4930e32672465979adbc592e116226a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 16:53:28', NULL, NULL),
('9a1456ef58a2b1fb63cdc54b723f2539', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 17:26:39', NULL, NULL),
('484cdb8db40e3f76ef686552f57d8099', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:14:49', NULL, NULL),
('02d4447c9d97ac4fc1c3a9a4c789c2a8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 18:24:18', NULL, NULL),
('59558082e1b1d754fa3def125ed4db3c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 18:24:19', NULL, NULL),
('c434dc5172dc993ee7cd96187ca58653', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:08', NULL, NULL),
('a6261bbbf8e964324935722ea1384a5d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:46:27', NULL, NULL),
('f0748a25728348591c7b73a66f273457', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:27', NULL, NULL),
('14f447d9b60725cc86b3100a5cb20b75', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:46:30', NULL, NULL),
('7c88e9cf6018a1b97b420b8cb6122815', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-28 19:46:30', NULL, NULL),
('cb7c6178101ef049d3f1820ee41df539', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 19:59:19', NULL, NULL),
('21fed0f2d080e04cf0901436721a77a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-28 21:53:31', NULL, NULL),
('4ba055970859a6f1afcc01227cb82a2d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 09:43:56', NULL, NULL),
('3ba1e54aa9aa760b59dfe1d1259459bc', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 09:44:07', NULL, NULL),
('7b44138c1b80b67da13b89db756a22b0', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"jeecg-boot","createTime":1553824172062,"id":"5fce01cb7f0457746c97d8ca05628f81","name":"1212"}]', NULL, 25, 'jeecg-boot', '2019-03-29 09:49:32', NULL, NULL),
('d7e8a7f14967c70d68f5569cb4d11d0a', 2, '删除测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '["5fce01cb7f0457746c97d8ca05628f81"]', NULL, 9, 'jeecg-boot', '2019-03-29 09:49:39', NULL, NULL),
('e7f2b0a7493e7858c5db1f1595fa54b1', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"jeecg-boot","createTime":1553824376817,"id":"e771211b77cd3b326d3e61edfd9a5a19","keyWord":"222","name":"222"}]', NULL, 7, 'jeecg-boot', '2019-03-29 09:52:56', NULL, NULL),
('997bb4cb1ad24439b6f7656222af0710', 2, '添加测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"jeecg-boot","createTime":1553824768819,"id":"ee84471f0dff5ae88c45e852bfa0280f","keyWord":"22","name":"222"}]', NULL, 5, 'jeecg-boot', '2019-03-29 09:59:28', NULL, NULL),
('a6c3b28530416dace21371abe8cae00b', 2, '删除测试DEMO', NULL, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '["ee84471f0dff5ae88c45e852bfa0280f"]', NULL, 9, 'jeecg-boot', '2019-03-29 09:59:48', NULL, NULL),
('d2fe98d661f1651b639bf74499f124db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 10:16:29', NULL, NULL),
('2186244ae450e83d1487aa01fbeae664', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 14:47:43', NULL, NULL),
('a5daa58b078cb8b3653af869aeecebd0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 17:14:31', NULL, NULL),
('f29f3b7b7e14b1389a0c53d263c0b26b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 17:44:25', NULL, NULL),
('2659c59136fb1a284ab0642361b10cdd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-29 18:40:22', NULL, NULL),
('a42e5cd05566ea226c2e2fc201860f2c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 11:15:50', NULL, NULL),
('f06048c147c5bcdbed672e32b2c86b1c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 14:07:28', NULL, NULL),
('13c83c56a0de8a702aeb2aa0c330e42c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 14:53:52', NULL, NULL),
('ab1d707bbfdf44aa17307d30ca872403', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 15:50:42', NULL, NULL),
('5d8ed15778aa7d99224ee62c606589fb', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 15:51:02', NULL, NULL),
('42aef93749cc6222d5debe3fb31ba41b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 15:51:04', NULL, NULL),
('5c04e3d9429e3bcff4d55f6205c4aa83', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:14:29', NULL, NULL),
('af8fe96a9f0b325e4833fc0d9c4721bf', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 18:14:56', NULL, NULL),
('21910e350c9083e107d39ff4278f51d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:14:59', NULL, NULL),
('636309eec5e750bc94ce06fb98526fb2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-03-30 18:15:03', NULL, NULL),
('9d0416e09fae7aeeeefc8511a61650c2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 18:15:05', NULL, NULL),
('2e63fd1b3b6a6145bc04b2a1df18d2f5', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 19:01:33', NULL, NULL),
('2966ed2bdf67c9f3306b058d13bef301', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 21:25:10', NULL, NULL),
('3683743d1936d06f3aaa03d6470e5178', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-30 22:40:12', NULL, NULL),
('0ba24c5f61ff53f93134cf932dd486db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-31 21:06:05', NULL, NULL),
('bbd3e1f27e025502a67cf54945b0b269', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-03-31 22:13:16', NULL, NULL),
('1f8f46118336b2cacf854c1abf8ae144', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 11:02:59', NULL, NULL),
('ac8cf22c2f10a38c7a631fc590551c40', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 12:04:16', NULL, NULL),
('7d11535270734de80bd52ec0daa4fc1f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.1.105', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 12:20:14', NULL, NULL),
('6b4cdd499885ccba43b40f10abf64a78', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 13:04:43', NULL, NULL),
('77a329e5eb85754075165b06b7d877fd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 13:25:17', NULL, NULL),
('0e754ee377033067f7b2f10b56b8784c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 17:17:45', NULL, NULL),
('9b7a830914668881335da1b0ce2274b1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 17:19:02', NULL, NULL),
('a1b870eee811cfa4960f577b667b0973', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:23:44', NULL, NULL),
('85b3106d757d136b48172a9ab1f35bb6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:34:34', NULL, NULL),
('7f31435ca2f5a4ef998a4152b2433dec', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 18:36:40', NULL, NULL),
('f20cf3fe228ba6196a48015b98d0d354', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 19:25:22', NULL, NULL),
('65771bce3f5786dfb4d84570df61a47a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:07:57', NULL, NULL),
('c98a6367b152cf5311d0eec98fab390c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:13:34', NULL, NULL),
('93b4d26f60d7fb45a60524760bf053e4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:20:06', NULL, NULL),
('3087ac4988a961fa1ec0b4713615c719', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-01 22:54:24', NULL, NULL),
('a69f4ff4e48754de96ae6fa4fabc1579', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:18:48', NULL, NULL),
('a63147887c6ca54ce31f6c9e6279a714', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:19:07', NULL, NULL),
('a2950ae3b86f786a6a6c1ce996823b53', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:11', NULL, NULL),
('615625178b01fc20c60184cd28e64a70', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:47:13', NULL, NULL),
('89fbc93e77defb34c609c84a7fe83039', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:14', NULL, NULL),
('432067d777447423f1ce3db11a273f6f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:47:17', NULL, NULL),
('7d8539ff876aad698fba235a1c467fb8', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:47:18', NULL, NULL),
('689b8f2110f99c52e18268cbaf05bbb6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:58:44', NULL, NULL),
('2919d2f18db064978a619707bde4d613', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:58:45', NULL, NULL),
('0dc6d04b99e76ad400eef1ded2d3d97c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 09:59:45', NULL, NULL),
('45f0309632984f5f7c70b3d40dbafe8b', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 09:59:46', NULL, NULL),
('d869534109332e770c70fad65ef37998', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:02:30', NULL, NULL),
('c21422fa08f8480a53367fda7ddddf12', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:02:30', NULL, NULL),
('1e4533a02fb9c739a3555fa7be6e7899', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:04:56', NULL, NULL),
('03c0ab177bd7d840b778713b37daf86f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:04:57', NULL, NULL),
('60886d5de8a18935824faf8b0bed489e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:11:35', NULL, NULL),
('4218b30015501ee966548c139c14f43f', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:11:35', NULL, NULL),
('de938485a45097d1bf3fa311d0216ed4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:15:22', NULL, NULL),
('e1d0b1fd3be59e465b740e32346e85b0', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:16:37', NULL, NULL),
('4234117751af62ac87343cbf8a6f1e0f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:17:17', NULL, NULL),
('845f732f6a0f0d575debc4103e92bea2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 10:17:18', NULL, NULL),
('cc39057ae0a8a996fb0b3a8ad5b8f341', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 10:20:05', NULL, NULL),
('155d2991204d541388d837d1457e56ab', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 11:32:57', NULL, NULL),
('2312c2693d6b50ca06799fee0ad2554a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:11:32', NULL, NULL),
('d98115c02c0ac478a16d6c35de35053d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:09', NULL, NULL),
('55e906361eeabb6ec16d66c7196a06f0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:20', NULL, NULL),
('3836dc3f91d072e838092bc8d3143906', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 12:50:32', NULL, NULL),
('add13f513772a63f8ca8bf85634bb72c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 13:09:03', NULL, NULL),
('a6971e63e3d9158020e0186cda81467d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 14:59:23', NULL, NULL),
('2eb75cb6ca5bc60241e01fa7471c0ccf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:34:04', NULL, NULL),
('3e69108be63179550afe424330a8a9e4', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-02 18:38:05', NULL, NULL),
('6c558d70dc5794f9f473d8826485727a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:38:44', NULL, NULL),
('687810e7fea7e480962c58db515a5e1c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:42:30', NULL, NULL),
('d23e6766cecf911fb2e593eeee354e18', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:42:35', NULL, NULL),
('0819ea9729ddf70f64ace59370a62cf1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 18:59:43', NULL, NULL),
('939b3ff4733247a47efe1352157b1f27', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 19:01:06', NULL, NULL),
('6cf638853ef5384bf81ed84572a6445d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-02 19:25:24', NULL, NULL),
('bc28d4275c7c7fcd067e1aef40ec1dd4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 10:53:03', NULL, NULL),
('43536edd8aa99f9b120872e2c768206c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 10:53:26', NULL, NULL),
('7268539fbe77c5cc572fb46d71d838f1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 13:22:48', NULL, NULL),
('f0409312093beb563ac4016f2b2c6dfd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 13:24:59', NULL, NULL),
('a710ed2de7e31fd72b1efb1b54ba5a87', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 15:30:43', NULL, NULL),
('b01c3f89bcfd263de7cb1a9b0210a7af', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 17:53:55', NULL, NULL),
('e1fa52ecbcc0970622cc5a0c06de9317', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-03 18:33:04', NULL, NULL),
('790b722fa99a8f3a0bc38f61e13c1cf4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 18:34:07', NULL, NULL),
('20e5887d0c9c7981159fe91a51961141', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 20:12:07', NULL, NULL),
('ce6aa822166b97a78b0bbea62366f8e0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 20:14:29', NULL, NULL),
('3e6116220fa8d4808175738c6de51b12', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:04:46', NULL, NULL),
('10a434c326e39b1d046defddc8c57f4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:18:29', NULL, NULL),
('317e3ae1b6ccdfb5db6940789e12d300', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-03 21:44:31', NULL, NULL),
('2b801129457c05d23653ecaca88f1711', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-03 21:44:34', NULL, NULL),
('7a99cf653439ca82ac3b0d189ddaad4a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 10:41:34', NULL, NULL),
('68e90e08a866de748e9901e923406959', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 12:37:06', NULL, NULL),
('2942a12521ac8e3d441429e6c4b04207', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 14:12:10', NULL, NULL),
('dfacaa7c01ccf0bade680044cced3f11', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 15:25:10', NULL, NULL),
('f3cafb545e5693e446f641fa0b5ac8cd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 17:07:56', NULL, NULL),
('060d541a9571ca2b0d24790a98d170a6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 19:28:04', NULL, NULL),
('9df97c1b3213aa64eda81c6bf818b02b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:42:48', NULL, NULL),
('43079866b75ee6a031835795bb681e16', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-04 22:44:16', NULL, NULL),
('55d649432efa7eaecd750b4b6b883f83', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:44:19', NULL, NULL),
('ca737885d9034f71f70c4ae7986fafa8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL),
('1534f0c50e67c5682e91af5160a67a80', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL),
('93bb98ba996dacebfb4f61503067352e', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 22:47:28', NULL, NULL),
('5c48703e3a2d4f81ee5227f0e2245990', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-04 23:12:04', NULL, NULL),
('70849167f54fd50d8906647176d90fdf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 23:12:29', NULL, NULL),
('310bb368795f4985ed4eada030a435a0', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-04 23:22:20', NULL, NULL),
('477592ab95cd219a2ccad79de2f69f51', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 10:38:24', NULL, NULL),
('e39f051ba6fdb7447f975421f3b090a7', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 12:49:18', NULL, NULL),
('4d1be4b4991a5c2d4d17d0275e4209cf', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 20:47:21', NULL, NULL),
('9eb3fb6d9d45e3847a88f65ed47da935', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '192.168.3.22', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 20:52:47', NULL, NULL),
('6664dc299f547f6702f93e2358810cc1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '192.168.3.22', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-05 21:04:14', NULL, NULL),
('9c32ec437d8f8d407b1bd1165fc0305d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 15:01:25', NULL, NULL),
('68df65639e82cc6a889282fbef53afbb', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 15:01:37', NULL, NULL),
('79e76353faffd0beb0544c0aede8564f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 17:28:14', NULL, NULL),
('da3fda67aea2e565574ec2bcfab5b750', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-08 22:36:20', NULL, NULL),
('de37620b6921abcfe642606a0358d30f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 15:42:46', NULL, NULL),
('b0e6b3a0ec5d8c73166fb8129d21a834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 16:56:16', NULL, NULL),
('01075aa535274735e0df0a8bc44f62f9', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-09 16:56:46', NULL, NULL),
('01ebe1cbeae916a9228770f63130fdac', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 16:56:50', NULL, NULL),
('baa53d6a534e669f6150ea47565fa5b9', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-09 17:27:24', NULL, NULL),
('e232f89df26cc9e5eced10476c4e4a2b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 10:05:11', NULL, NULL),
('335956cbad23d1974138752199bf1d84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 10:05:36', NULL, NULL),
('bd6d7d720b9dd803f8ad26e2d40870f3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:04:06', NULL, NULL),
('ff3f7dbda20cd2734b1238fa5ba17fcf', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-10 11:26:43', NULL, NULL),
('672b527c49dc349689288ebf2c43ed4d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:26:47', NULL, NULL),
('21510ebaa4eca640852420ed6f6cbe01', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 11:41:26', NULL, NULL),
('3e2574b7b723fbc9c712b8e200ea0c84', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 14:24:34', NULL, NULL),
('0d4582c6b7719b0bfc0260939d97274f', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 21:48:47', NULL, NULL),
('3e64011b4bea7cdb76953bfbf57135ce', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-10 23:09:32', NULL, NULL),
('a83e37b55a07fe48272b0005a193dee6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 09:17:59', NULL, NULL),
('30ec2dc50347240f131c1004ee9b3a40', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 10:19:05', NULL, NULL),
('7ce1934fb542a406e92867aec5b7254d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 14:53:23', NULL, NULL),
('5ee6d5fe1e6adcc4ad441b230fae802d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 15:56:33', NULL, NULL),
('d4ef00700436645680657f72445d38db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 18:05:29', NULL, NULL),
('aa49341b29865b45588ad2f9b89c47ea', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-11 19:42:42', NULL, NULL),
('d3b54be0510db6a6da27bf30becb5335', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 19:42:46', NULL, NULL),
('dd4e1ab492e59719173d8ae0f5dbc9a2', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-04-11 19:47:12', NULL, NULL),
('056dd4466f4ed51de26c535fd9864828', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-11 19:47:15', NULL, NULL),
('89bfd8b9d6fa57a8e7017a2345ec1534', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-12 09:27:32', NULL, NULL),
('51aeabed335ab4e238640a4d17dd51a3', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg-boot', '2019-04-12 10:12:41', NULL, NULL),
('67181c36b55b06047a16a031fd1262c1', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 13:55:22', NULL, NULL),
('2d5af41d2df82b316ba31fcdf6168d6a', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 14:43:58', NULL, NULL),
('e2f703771f64b1bcd709204669ae3d93', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-05-17 14:48:39', NULL, NULL),
('8143ce0b35bfe6e7b8113e1ecc066acd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 14:48:48', NULL, NULL),
('2bca2d6666c1f6630225252c7b31326c', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-05-17 18:30:48', NULL, NULL),
('11695a9dcf44859cda97a4226bebe21b', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-17 18:30:57', NULL, NULL),
('40209016cadff6b571a8150c6218cfa8', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-18 11:33:28', NULL, NULL),
('23a314588249752842447e4f98783be4', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-19 18:28:48', NULL, NULL),
('5f0a5e85efbe9c79645ffc0c15fcee1a', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1558261833637,"id":"94f78b1c9753dfb1202d731f540666e1","keyWord":"1","name":"1","sysOrgCode":"A01"}]', NULL, 30, 'admin', '2019-05-19 18:30:33', NULL, NULL),
('57264fff74c4f857bddf5d766951f3c9', 2, '添加测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.add()', NULL, '[{"createBy":"admin","createTime":1558262155067,"id":"dcb45a2fc661e5cdc341b806e5914873","name":"111","sysOrgCode":"A01"}]', NULL, 5, 'admin', '2019-05-19 18:35:55', NULL, NULL),
('eef5b90eea8e7394193443cfd7476529', 2, '删除测试DEMO', NULL, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.demo.test.controller.JeecgDemoController.delete()', NULL, '["dcb45a2fc661e5cdc341b806e5914873"]', NULL, 9, 'admin', '2019-05-19 18:36:02', NULL, NULL),
('488fc8f3d040fa75c6802898ea88f7d6', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 11:38:38', NULL, NULL),
('6c99cfe2774c15ad030b83723f81d70d', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:07:25', NULL, NULL),
('1bf5c5603b79f749d4ee75965b3698db', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:54:39', NULL, NULL),
('5bca377b50c362009738d612cac82006', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 14:54:38', NULL, NULL),
('2255d6f5e2a3d0839b8b9cfc67816c5c', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-05-20 15:01:51', NULL, NULL),
('c7384ed6a6b09ff6704a6b1c1e378cee', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-07-05 14:45:30', NULL, NULL),
('63c998d68b4d0d1529d86b4c0628e072', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-07-05 14:45:40', NULL, NULL),
('b096a9e76395f1a52d8c260c4eb811fd', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 18:51:24', NULL, NULL),
('da7d2236f6f9e0f61897e5ea9b968d4d', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 20:02:07', NULL, NULL),
('6ee846271a3d4b9e576b5a0749c49d12', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 20:02:16', NULL, NULL),
('f6b0f562257bf02c983b9e3998ff864e', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 22:43:40', NULL, NULL),
('9e1da5d8758f2681543971ee43ee14e2', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 22:43:48', NULL, NULL),
('dd9b2cfffb798a22d90dada4fdbbbc61', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 23:39:56', NULL, NULL),
('b99f5b6975350d86db4c5dd91de9f608', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-08-23 23:40:05', NULL, NULL),
('1185035214331654145', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:46', NULL, NULL),
('1185035238713143298', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:52', NULL, NULL),
('1185035239463923713', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:29:53', NULL, NULL),
('1185037047527714817', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 11:37:04', NULL, NULL),
('1185037216109375490', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 133, 'admin', '2019-10-18 11:37:44', NULL, NULL),
('1185037734533738497', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 24, 'admin', '2019-10-18 11:39:48', NULL, NULL),
('1185037756142792705', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-10-18 11:39:53', NULL, NULL),
('1185037829144653825', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 12, 'admin', '2019-10-18 11:40:10', NULL, NULL),
('1185039907581669377', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 6, 'admin', '2019-10-18 11:48:26', NULL, NULL),
('1185039947956039681', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 5, 'admin', '2019-10-18 11:48:35', NULL, NULL),
('1185040064834514945', 2, '职务表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.add()', NULL, '[{"code":"devleader","createBy":"admin","createTime":1571370543072,"id":"1185040064792571906","name":"研发部经理","rank":"3","sysOrgCode":"A01"}]', NULL, 22, 'admin', '2019-10-18 11:49:03', NULL, NULL),
('1185040066562568193', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2019-10-18 11:49:04', NULL, NULL),
('1185129808478158850', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-18 17:45:39', NULL, NULL),
('1185452151318528001', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-19 15:06:32', NULL, NULL),
('1185452231589117953', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-10-19 15:06:51', NULL, NULL),
('1197430985244905474', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:26:08', NULL, NULL),
('1197431068325679105', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:26:29', NULL, NULL),
('1197431850395602945', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2019-11-21 16:29:35', NULL, NULL),
('1197431872520556545', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 65, 'admin', '2019-11-21 16:29:40', NULL, NULL),
('1197431893076840450', 2, '职务表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, '[{"code":"devleader","createBy":"admin","createTime":1571370543000,"id":"1185040064792571906","name":"研发部经理","postRank":"2","sysOrgCode":"A01","updateBy":"admin","updateTime":1574324985161}]', NULL, 19, 'admin', '2019-11-21 16:29:45', NULL, NULL),
('1197431893756317697', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-11-21 16:29:45', NULL, NULL),
('1197433172830294018', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 22, 'admin', '2019-11-21 16:34:50', NULL, NULL),
('1197433546278539266', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 16, 'admin', '2019-11-21 16:36:19', NULL, NULL),
('1197433566151151618', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:36:24', NULL, NULL),
('1197434320656130049', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:24', NULL, NULL),
('1197434360204222466', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 240, 'admin', '2019-11-21 16:39:33', NULL, NULL),
('1197434364826345474', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2019-11-21 16:39:34', NULL, NULL),
('1197434403829178369', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:44', NULL, NULL),
('1197434443708620802', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 16:39:53', NULL, NULL),
('1197434470036267009', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 45, 'jeecg', '2019-11-21 16:40:00', NULL, NULL),
('1197434579583098881', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 46, 'jeecg', '2019-11-21 16:40:26', NULL, NULL),
('1197448449475338242', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 17:35:33', NULL, NULL),
('1197448475219976193', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-21 17:35:39', NULL, NULL),
('1197448491221245953', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 98, 'admin', '2019-11-21 17:35:42', NULL, NULL),
('1197449269478547458', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 43, 'admin', '2019-11-21 17:38:48', NULL, NULL),
('1197450304582443009', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 27, 'admin', '2019-11-21 17:42:55', NULL, NULL),
('1197453216322797569', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 526, 'admin', '2019-11-21 17:54:29', NULL, NULL),
('1197454357987155969', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 329, 'admin', '2019-11-21 17:59:01', NULL, NULL),
('1197792320302452738', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-22 16:21:57', NULL, NULL),
('1197792369866543106', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2019-11-22 16:22:10', NULL, NULL),
('1197793164787802113', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 381, 'admin', '2019-11-22 16:25:19', NULL, NULL),
('1209402348671193089', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-24 17:16:04', NULL, NULL),
('1209402408473579521', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-24 17:16:18', NULL, NULL),
('1209402471128092673', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 472, 'admin', '2019-12-24 17:16:33', NULL, NULL),
('1209417003212853250', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-12-24 18:14:18', NULL, NULL),
('1209646296664756226', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 09:25:26', NULL, NULL),
('1209646643298816001', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 09:26:49', NULL, NULL),
('1209648067323744257', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 28, 'admin', '2019-12-25 09:32:28', NULL, NULL),
('1209648217823760385', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 21, 'admin', '2019-12-25 09:33:04', NULL, NULL),
('1209648344894394369', 2, '填值规则-批量删除', 4, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.deleteBatch()', NULL, '["1192350056519323649,1192349918153428994,"]', NULL, 23, 'admin', '2019-12-25 09:33:34', NULL, NULL),
('1209648345854889985', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2019-12-25 09:33:34', NULL, NULL),
('1209648456588709890', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 122, 'admin', '2019-12-25 09:34:01', NULL, NULL),
('1209648997351936002', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 24, 'admin', '2019-12-25 09:36:10', NULL, NULL),
('1209649005795069954', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 25, 'admin', '2019-12-25 09:36:12', NULL, NULL),
('1209649012203966466', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2019-12-25 09:36:13', NULL, NULL),
('1209653324963500034', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 19, 'admin', '2019-12-25 09:53:22', NULL, NULL),
('1209653453917376513', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 15, 'admin', '2019-12-25 09:53:52', NULL, NULL),
('1209660332378755073', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 126, 'admin', '2019-12-25 10:21:12', NULL, NULL),
('1209660342411530241', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2019-12-25 10:21:15', NULL, NULL),
('1209672160353783810', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 170, 'admin', '2019-12-25 11:08:12', NULL, NULL),
('1209672431796555778', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2019-12-25 11:09:17', NULL, NULL),
('1209847153045913602', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-25 22:43:34', NULL, NULL),
('1231582569151074306', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:20', NULL, NULL),
('1231582603032662018', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:29', NULL, NULL),
('1231582605322752002', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:12:29', NULL, NULL),
('1231586195961556994', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 22:26:45', NULL, NULL),
('1231586370448797697', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 540, 'admin', '2020-02-23 22:27:27', NULL, NULL),
('1231589034586804226', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 37, 'admin', '2020-02-23 22:38:02', NULL, NULL),
('1231589059643576321', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-02-23 22:38:08', NULL, NULL),
('1231590342991548417', 2, '填值规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 26, 'admin', '2020-02-23 22:43:14', NULL, NULL),
('1231590348280565761', 2, '编码校验规则-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, 27, 'admin', '2020-02-23 22:43:16', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1231590455747022850', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 6, 'admin', '2020-02-23 22:43:41', NULL, NULL),
('1231590510293946370', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 15, 'admin', '2020-02-23 22:43:54', NULL, NULL),
('1231590533404561410', 2, '编辑用户，id： e9ca23d68d884d4ebb19d07889727dae', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-02-23 22:44:00', NULL, NULL),
('1231590588148617218', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 45, 'admin', '2020-02-23 22:44:13', NULL, NULL),
('1231590598588239874', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 8, 'admin', '2020-02-23 22:44:15', NULL, NULL),
('1231590600106577921', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 11, 'admin', '2020-02-23 22:44:16', NULL, NULL),
('1231590978101448705', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2020-02-23 22:45:46', NULL, NULL),
('1231591017582432257', 2, '多数据源管理-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDataSourceController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2020-02-23 22:45:55', NULL, NULL),
('1231593459988566017', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 22, 'admin', '2020-02-23 22:55:37', NULL, NULL),
('1231593466594594817', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 13, 'admin', '2020-02-23 22:55:39', NULL, NULL),
('1231593479697600513', 2, '职务表-编辑', 3, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.edit()', NULL, '[{"code":"devleader","createBy":"admin","createTime":1571370543000,"id":"1185040064792571906","name":"研发部经理","postRank":"2","sysOrgCode":"A01","updateBy":"admin","updateTime":1582469742105}]', NULL, 16, 'admin', '2020-02-23 22:55:42', NULL, NULL),
('1231593480725204994', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 16, 'admin', '2020-02-23 22:55:42', NULL, NULL),
('1231596465543032834', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:07:33', NULL, NULL),
('1231596468936224769', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:07:35', NULL, NULL),
('1231596595327381506', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:05', NULL, NULL),
('1231596596799582209', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:05', NULL, NULL),
('1231596742199324674', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:40', NULL, NULL),
('1231596743692496897', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:08:40', NULL, NULL),
('1231597287962157057', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:10:49', NULL, NULL),
('1231597290327744513', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:10:51', NULL, NULL),
('1231598580457857025', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-23 23:15:57', NULL, NULL),
('1231599446049009666', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 62, 'admin', '2020-02-23 23:19:24', NULL, NULL),
('1231599453611339778', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2020-02-23 23:19:26', NULL, NULL),
('1231599534171336706', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 25, 'admin', '2020-02-23 23:19:46', NULL, NULL),
('1231599542991958018', 2, '部门角色-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 23, 'admin', '2020-02-23 23:19:48', NULL, NULL),
('1231615277050998786', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 00:22:19', NULL, NULL),
('1231615300820119553', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-24 00:22:25', NULL, NULL),
('1234399647276806145', 2, '获取七牛上传Token', 1, NULL, NULL, '0:0:0:0:0:0:0:1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 12, NULL, '2020-03-02 16:46:24', NULL, NULL),
('1234401803564343297', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-02 16:54:58', NULL, NULL),
('1235502039660867586', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-05 17:46:55', NULL, NULL),
('1235502117452623874', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-05 17:47:13', NULL, NULL),
('1235527327081885698', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1, 183.195.19.228', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 121, 'jeecg', '2020-03-05 19:27:24', NULL, NULL),
('1235551201962065921', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-05 21:02:16', NULL, NULL),
('1235551252197244929', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-05 21:02:28', NULL, NULL),
('1235758555760517122', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 10:46:13', NULL, NULL),
('1235758615105724417', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 10:46:27', NULL, NULL),
('1235759045281931266', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 10:48:10', NULL, NULL),
('1235759084100214785', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 10:48:19', NULL, NULL),
('1235935691913854978', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 22:30:06', NULL, NULL),
('1235935721378840577', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 22:30:13', NULL, NULL),
('1235935754899718146', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1, 183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-06 22:30:21', NULL, NULL),
('1236193455048089602', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 15:34:20', NULL, NULL),
('1236199223621181441', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 15:57:17', NULL, NULL),
('1236199250611527682', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 15:57:23', NULL, NULL),
('1236208454600613889', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 16:33:57', NULL, NULL),
('1236208501031559170', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 16:34:08', NULL, NULL),
('1236220193576706050', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 17:20:36', NULL, NULL),
('1236220274820374529', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 17:20:56', NULL, NULL),
('1236228278206717953', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 17:52:44', NULL, NULL),
('1236251541699903490', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 19:25:10', NULL, NULL),
('1236251658272194561', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 19:25:38', NULL, NULL),
('1236251736290443265', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 19:25:57', NULL, NULL),
('1236256016917413890', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 19:42:57', NULL, NULL),
('1236256060471066625', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 19:43:08', NULL, NULL),
('1236261028900978689', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 20:02:52', NULL, NULL),
('1236263890934644737', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 20:14:14', NULL, NULL),
('1236272049229217793', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 20:46:40', NULL, NULL),
('1236272242687295490', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 20:47:26', NULL, NULL),
('1236277691335655426', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 21:09:05', NULL, NULL),
('1236278106823409665', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 21:10:44', NULL, NULL),
('1236290536190357505', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 22:00:07', NULL, NULL),
('1236290770790363137', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 22:01:03', NULL, NULL),
('1236318857057923073', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 23:52:39', NULL, NULL),
('1236318906995306498', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-07 23:52:51', NULL, NULL),
('1236319890316324866', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 314, 'admin', '2020-03-07 23:56:46', NULL, NULL),
('1236320853286580225', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 42, 'admin', '2020-03-08 00:00:35', NULL, NULL),
('1236324182993514498', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 144, 'admin', '2020-03-08 00:13:49', NULL, NULL),
('1236324225024634881', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 17, 'admin', '2020-03-08 00:13:59', NULL, NULL),
('1236324586238095362', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 22, 'admin', '2020-03-08 00:15:25', NULL, NULL),
('1236488978204315649', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 11:08:39', NULL, NULL),
('1236489022768795650', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 66, 'admin', '2020-03-08 11:08:50', NULL, NULL),
('1236502397552807938', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 12:01:59', NULL, NULL),
('1236538376623841282', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 14:24:57', NULL, NULL),
('1236540047726829570', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 14:31:35', NULL, NULL),
('1236540085462982658', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 14:31:44', NULL, NULL),
('1236543122302689282', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2020-03-08 14:43:48', NULL, NULL),
('1236543228271779841', 2, '学生列表-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.add()', NULL, '[{"age":12,"createBy":"admin","createTime":1583649854077,"id":"1236543228020121601","phone":"15618334710","studentName":"测试学生","sysOrgCode":"A01"}]', NULL, 60, 'admin', '2020-03-08 14:44:14', NULL, NULL),
('1236543229446184961', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 121, 'admin', '2020-03-08 14:44:14', NULL, NULL),
('1236543295158345729', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 21, 'admin', '2020-03-08 14:44:30', NULL, NULL),
('1236543305128206338', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 36, 'admin', '2020-03-08 14:44:32', NULL, NULL),
('1236543330587631618', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 41, 'admin', '2020-03-08 14:44:38', NULL, NULL),
('1236544086648676353', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 267, 'admin', '2020-03-08 14:47:38', NULL, NULL),
('1236544189883080705', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 83, 'admin', '2020-03-08 14:48:03', NULL, NULL),
('1236544770928402434', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 35, 'admin', '2020-03-08 14:50:21', NULL, NULL),
('1236547455014526977', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 47, 'admin', '2020-03-08 15:01:01', NULL, NULL),
('1236547744761241601', 2, '学生列表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 16, 'admin', '2020-03-08 15:02:10', NULL, NULL),
('1236612603532128257', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 19:19:54', NULL, NULL),
('1236612707836080130', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 19:20:19', NULL, NULL),
('1236614542365929474', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 19:27:36', NULL, NULL),
('1236614560158167041', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-08 19:27:40', NULL, NULL),
('1236619885972115458', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 116, 'admin', '2020-03-08 19:48:50', NULL, NULL),
('1236620183151136769', 2, '营销活动-添加', 2, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.add()', NULL, '[{"activityName":"测试支付","createBy":"admin","createTime":1583668201572,"endTime":1583668195000,"id":"1236620182987558913","maxStudent":9999,"originalPrice":999,"price":1,"startTime":1583668192000,"sysOrgCode":"A01"}]', NULL, 40, 'admin', '2020-03-08 19:50:01', NULL, NULL),
('1236620184199712769', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 45, 'admin', '2020-03-08 19:50:01', NULL, NULL),
('1236620390492360705', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 46, 'admin', '2020-03-08 19:50:51', NULL, NULL),
('1236624617079922690', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 143, 'admin', '2020-03-08 20:07:38', NULL, NULL),
('1236624809636225025', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 36, 'admin', '2020-03-08 20:08:24', NULL, NULL),
('1236625160812716033', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 68, 'admin', '2020-03-08 20:09:48', NULL, NULL),
('1236625400252948482', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 37, 'admin', '2020-03-08 20:10:45', NULL, NULL),
('1236625783201292289', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 40, 'admin', '2020-03-08 20:12:16', NULL, NULL),
('1236626045093634049', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 38, 'admin', '2020-03-08 20:13:19', NULL, NULL),
('1236626203428610049', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 44, 'admin', '2020-03-08 20:13:56', NULL, NULL),
('1236626731457929218', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 445, 'admin', '2020-03-08 20:16:02', NULL, NULL),
('1236627903463907330', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-03-08 20:20:42', NULL, NULL),
('1236627903463907329', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-03-08 20:20:42', NULL, NULL),
('1236909708112945154', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 15:00:29', NULL, NULL),
('1236909766191472641', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 190, 'admin', '2020-03-09 15:00:43', NULL, NULL),
('1236909789985759234', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 236, 'admin', '2020-03-09 15:00:49', NULL, NULL),
('1236910609120641025', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 253, 'admin', '2020-03-09 15:04:04', NULL, NULL),
('1236910714607386626', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 110, 'admin', '2020-03-09 15:04:29', NULL, NULL),
('1236911076349329409', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 86, 'admin', '2020-03-09 15:05:55', NULL, NULL),
('1236911106586066946', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 80, 'admin', '2020-03-09 15:06:03', NULL, NULL),
('1236911164450684929', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 91, 'admin', '2020-03-09 15:06:16', NULL, NULL),
('1236911488389365761', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 81, 'admin', '2020-03-09 15:07:34', NULL, NULL),
('1236911830766206978', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 87, 'admin', '2020-03-09 15:08:55', NULL, NULL),
('1236911910701252609', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 90, 'admin', '2020-03-09 15:09:14', NULL, NULL),
('1236911989721939970', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 92, 'admin', '2020-03-09 15:09:33', NULL, NULL),
('1236912035901227009', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 78, 'admin', '2020-03-09 15:09:44', NULL, NULL),
('1236912067903766530', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 86, 'admin', '2020-03-09 15:09:52', NULL, NULL),
('1236912096869629953', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 198, 'admin', '2020-03-09 15:09:59', NULL, NULL),
('1236912123847393282', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 74, 'admin', '2020-03-09 15:10:05', NULL, NULL),
('1236912174963376129', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 83, 'admin', '2020-03-09 15:10:17', NULL, NULL),
('1236912332245581826', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 88, 'admin', '2020-03-09 15:10:55', NULL, NULL),
('1236912548348706818', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 88, 'admin', '2020-03-09 15:11:46', NULL, NULL),
('1236912694046244865', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 71, 'admin', '2020-03-09 15:12:21', NULL, NULL),
('1236912760853118977', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 86, 'admin', '2020-03-09 15:12:37', NULL, NULL),
('1236913089179041794', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 76, 'admin', '2020-03-09 15:13:55', NULL, NULL),
('1236913680588488705', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 306, 'admin', '2020-03-09 15:16:16', NULL, NULL),
('1236914036756201473', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 97, 'admin', '2020-03-09 15:17:41', NULL, NULL),
('1236914166666379266', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 85, 'admin', '2020-03-09 15:18:12', NULL, NULL),
('1236914261747056641', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 78, 'admin', '2020-03-09 15:18:35', NULL, NULL),
('1236914344878161921', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 77, 'admin', '2020-03-09 15:18:55', NULL, NULL),
('1236914633555329025', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 88, 'admin', '2020-03-09 15:20:04', NULL, NULL),
('1236914718464819201', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 99, 'admin', '2020-03-09 15:20:24', NULL, NULL),
('1236914881556135938', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 567, 'admin', '2020-03-09 15:21:03', NULL, NULL),
('1236914937017417730', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 99, 'admin', '2020-03-09 15:21:16', NULL, NULL),
('1236914980654956546', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 83, 'admin', '2020-03-09 15:21:26', NULL, NULL),
('1236915039769477122', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 92, 'admin', '2020-03-09 15:21:40', NULL, NULL),
('1236915207847821314', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 86, 'admin', '2020-03-09 15:22:20', NULL, NULL),
('1236915236272619522', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 74, 'admin', '2020-03-09 15:22:27', NULL, NULL),
('1236915969021722625', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 75, 'admin', '2020-03-09 15:25:22', NULL, NULL),
('1236916290607398913', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 95, 'admin', '2020-03-09 15:26:39', NULL, NULL),
('1236916401857118209', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 88, 'admin', '2020-03-09 15:27:05', NULL, NULL),
('1236916435659014145', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 69, 'admin', '2020-03-09 15:27:13', NULL, NULL),
('1236917569937227777', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 67, 'admin', '2020-03-09 15:31:44', NULL, NULL),
('1236917593152700418', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 49, 'admin', '2020-03-09 15:31:49', NULL, NULL),
('1236917740163055618', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 1211, 'admin', '2020-03-09 15:32:24', NULL, NULL),
('1236917990864994305', 2, '编辑用户，id： a75d45a015c44384a04449ee80dc3503', 2, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-03-09 15:33:24', NULL, NULL),
('1236918286949302273', 2, '职务表-分页列表查询', 1, 'admin', '管理员', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 73, 'admin', '2020-03-09 15:34:35', NULL, NULL),
('1236920322575056898', 1, '用户名: 管理员,退出成功！', NULL, 'admin', '管理员', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-03-09 15:42:40', NULL, NULL),
('1236921345158160385', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 15:46:44', NULL, NULL),
('1236921381799600129', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 15:46:52', NULL, NULL),
('1236921414401925122', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 15:47:00', NULL, NULL),
('1236921431565017090', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 128, 'admin', '2020-03-09 15:47:04', NULL, NULL),
('1236921447612424193', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 67, 'admin', '2020-03-09 15:47:08', NULL, NULL),
('1236921457859108865', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 533, 'admin', '2020-03-09 15:47:11', NULL, NULL),
('1236921559172521986', 2, '删除用户，id： f0019fdebedb443c98dcb17d88222c38', 3, 'admin', '管理员', '183.195.19.228', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-03-09 15:47:35', NULL, NULL),
('1236921626738565121', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 61, 'admin', '2020-03-09 15:47:51', NULL, NULL),
('1236922377472843777', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '219.137.143.216', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 15:50:50', NULL, NULL),
('1236922411157299202', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 66, 'admin', '2020-03-09 15:50:58', NULL, NULL),
('1236922423345946626', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 153, 'admin', '2020-03-09 15:51:01', NULL, NULL),
('1236922431721971714', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 34, 'admin', '2020-03-09 15:51:03', NULL, NULL),
('1236922506053427201', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 69, 'admin', '2020-03-09 15:51:21', NULL, NULL),
('1236922522520264706', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 170, 'admin', '2020-03-09 15:51:24', NULL, NULL),
('1236922529277288449', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 29, 'admin', '2020-03-09 15:51:26', NULL, NULL),
('1236922602069434370', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 31, 'admin', '2020-03-09 15:51:43', NULL, NULL),
('1236922606582505474', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 153, 'admin', '2020-03-09 15:51:44', NULL, NULL),
('1236922610596454401', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '219.137.143.216', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 58, 'admin', '2020-03-09 15:51:45', NULL, NULL),
('1236922933746606082', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 30, 'admin', '2020-03-09 15:53:02', NULL, NULL),
('1236922938989486082', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 150, 'admin', '2020-03-09 15:53:04', NULL, NULL),
('1236923572941758466', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 39, 'admin', '2020-03-09 15:55:35', NULL, NULL),
('1236923583234580481', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 63, 'admin', '2020-03-09 15:55:37', NULL, NULL),
('1236923611349000193', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 157, 'admin', '2020-03-09 15:55:44', NULL, NULL),
('1236923633343930369', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 61, 'admin', '2020-03-09 15:55:49', NULL, NULL),
('1236926335599779842', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '14.24.25.23', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 16:06:34', NULL, NULL),
('1236943254302236674', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 17:13:47', NULL, NULL),
('1236943290369056769', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '183.195.19.228', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-09 17:13:56', NULL, NULL),
('1236943343963873282', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 159, 'admin', '2020-03-09 17:14:09', NULL, NULL),
('1236943366621503490', 2, '订单表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.delete()', NULL, '["1236623280107773954"]', NULL, 47, 'admin', '2020-03-09 17:14:14', NULL, NULL),
('1236943367531667457', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 88, 'admin', '2020-03-09 17:14:14', NULL, NULL),
('1236943379506405378', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 68, 'admin', '2020-03-09 17:14:17', NULL, NULL),
('1236943504823820289', 2, '学生表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.delete()', NULL, '["1236608822027231234"]', NULL, 32, 'admin', '2020-03-09 17:14:47', NULL, NULL),
('1236943505331331074', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 15, 'admin', '2020-03-09 17:14:47', NULL, NULL),
('1236947357304737793', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 166, 'admin', '2020-03-09 17:30:05', NULL, NULL),
('1236950685308801026', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 163, 'admin', '2020-03-09 17:43:19', NULL, NULL),
('1236951064717152258', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 150, 'admin', '2020-03-09 17:44:49', NULL, NULL),
('1236951071360929794', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 144, 'admin', '2020-03-09 17:44:51', NULL, NULL),
('1236951122808262658', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 145, 'admin', '2020-03-09 17:45:03', NULL, NULL),
('1236952202564718593', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 145, 'admin', '2020-03-09 17:49:21', NULL, NULL),
('1236952249792581633', 2, '订单表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.delete()', NULL, '["1236947419829227521"]', NULL, 27, 'admin', '2020-03-09 17:49:32', NULL, NULL),
('1236952250623053825', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 85, 'admin', '2020-03-09 17:49:32', NULL, NULL),
('1236952450477445121', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 131, 'admin', '2020-03-09 17:50:20', NULL, NULL),
('1236952465824403458', 2, '订单表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.delete()', NULL, '["1236952388204613633"]', NULL, 24, 'admin', '2020-03-09 17:50:23', NULL, NULL),
('1236952466591961090', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 82, 'admin', '2020-03-09 17:50:24', NULL, NULL),
('1236952511093526529', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 184, 'admin', '2020-03-09 17:50:34', NULL, NULL),
('1236952521965162498', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 83, 'admin', '2020-03-09 17:50:37', NULL, NULL),
('1236952581134209026', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 129, 'admin', '2020-03-09 17:50:51', NULL, NULL),
('1236952595659083778', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 140, 'admin', '2020-03-09 17:50:54', NULL, NULL),
('1236952601182982145', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 138, 'admin', '2020-03-09 17:50:56', NULL, NULL),
('1236953143745564674', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 131, 'admin', '2020-03-09 17:53:05', NULL, NULL),
('1236953171981619201', 2, '订单表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.delete()', NULL, '["1236952526742474754"]', NULL, 21, 'admin', '2020-03-09 17:53:12', NULL, NULL),
('1236953172774342657', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 86, 'admin', '2020-03-09 17:53:12', NULL, NULL),
('1236953839962279937', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 135, 'admin', '2020-03-09 17:55:51', NULL, NULL),
('1236954321724231682', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 143, 'admin', '2020-03-09 17:57:46', NULL, NULL),
('1236954336014225409', 2, '订单表-通过id删除', 4, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.delete()', NULL, '["1236953177652318210"]', NULL, 20, 'admin', '2020-03-09 17:57:49', NULL, NULL),
('1236954336811143169', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 79, 'admin', '2020-03-09 17:57:50', NULL, NULL),
('1236955373093638145', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 140, 'admin', '2020-03-09 18:01:57', NULL, NULL),
('1236955744172101634', 2, '学生表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 76, 'admin', '2020-03-09 18:03:25', NULL, NULL),
('1236955760425029633', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '183.195.19.228', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 128, 'admin', '2020-03-09 18:03:29', NULL, NULL),
('1237258978631618562', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '116.237.197.184', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-10 14:08:21', NULL, NULL),
('1237258991260667906', 1, '用户名: admin,登录成功！', NULL, NULL, NULL, '116.237.197.184', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-10 14:08:25', NULL, NULL),
('1237259061875970050', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 4610, 'admin', '2020-03-10 14:08:42', NULL, NULL),
('1237259201856671746', 2, '订单表-分页列表查询', 1, 'admin', '管理员', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 1260, 'admin', '2020-03-10 14:09:15', NULL, NULL),
('1237259408547778562', 2, '营销活动-分页列表查询', 1, 'admin', '管理员', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 250, 'admin', '2020-03-10 14:10:04', NULL, NULL),
('1237259537782673410', 1, '用户名: 管理员,退出成功！', NULL, NULL, NULL, '116.237.197.184', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-10 14:10:31', NULL, NULL),
('1237260324722180097', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '116.237.197.184', NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-10 14:13:43', NULL, NULL),
('1237260540166799362', 2, '订单表-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 157, 'jeecg', '2020-03-10 14:14:34', NULL, NULL),
('1237260553588572161', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 47, 'jeecg', '2020-03-10 14:14:37', NULL, NULL),
('1237260594722111489', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 52, 'jeecg', '2020-03-10 14:14:47', NULL, NULL),
('1237260690822004737', 2, '订单表-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingOrderController.queryPageList()', NULL, NULL, NULL, 141, 'jeecg', '2020-03-10 14:15:10', NULL, NULL),
('1237260709536989185', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 37, 'jeecg', '2020-03-10 14:15:15', NULL, NULL),
('1237260780886294530', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 36, 'jeecg', '2020-03-10 14:15:32', NULL, NULL),
('1237261421436207106', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 37, 'jeecg', '2020-03-10 14:18:04', NULL, NULL),
('1237261440771948546', 2, '营销活动-编辑', 3, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.edit()', NULL, '[{"activityName":"测试支付","activityType":0,"createBy":"admin","createTime":1583668201000,"endTime":1583668195000,"id":"1236620182987558913","maxStudent":9999,"originalPrice":999,"price":2,"startTime":1583668192000,"sysOrgCode":"A01","updateBy":"jeecg","updateTime":1583821089306}]', NULL, 37, 'jeecg', '2020-03-10 14:18:09', NULL, NULL),
('1237261442151874562', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 156, 'jeecg', '2020-03-10 14:18:09', NULL, NULL),
('1237261459608567810', 2, '营销活动-编辑', 3, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.edit()', NULL, '[{"activityName":"测试支付","activityType":1,"createBy":"admin","createTime":1583668201000,"endTime":1583668195000,"id":"1236620182987558913","maxStudent":9999,"originalPrice":999,"price":2,"startTime":1583668192000,"sysOrgCode":"A01","updateBy":"jeecg","updateTime":1583821093804}]', NULL, 29, 'jeecg', '2020-03-10 14:18:13', NULL, NULL),
('1237261461365981186', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 152, 'jeecg', '2020-03-10 14:18:14', NULL, NULL),
('1237269599481757698', 2, '营销活动-分页列表查询', 1, 'jeecg', 'jeecg', '116.237.197.184', 'org.jeecg.modules.teaching.controller.TeachingActivityController.queryPageList()', NULL, NULL, NULL, 257, 'jeecg', '2020-03-10 14:50:34', NULL, NULL),
('1248490948188270593', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-10 14:00:12', NULL, NULL),
('1248499474335887362', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 267, 'jeecg', '2020-04-10 14:34:05', NULL, NULL),
('1248499779043684354', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 60, 'jeecg', '2020-04-10 14:35:17', NULL, NULL),
('1248500519661301761', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 226, 'jeecg', '2020-04-10 14:38:14', NULL, NULL),
('1248500877867446273', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 59, 'jeecg', '2020-04-10 14:39:39', NULL, NULL),
('1248511393256009730', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 90, 'jeecg', '2020-04-10 15:21:27', NULL, NULL),
('1248511470829662209', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 72, 'jeecg', '2020-04-10 15:21:45', NULL, NULL),
('1248512530386350081', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 73, 'jeecg', '2020-04-10 15:25:58', NULL, NULL),
('1248512760930463746', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 77, 'jeecg', '2020-04-10 15:26:53', NULL, NULL),
('1248513498142306306', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 72, 'jeecg', '2020-04-10 15:29:48', NULL, NULL),
('1248513527020089346', 2, '编辑用户，id： a75d45a015c44384a04449ee80dc3503', 2, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2020-04-10 15:29:55', NULL, NULL),
('1248513600927920130', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 79, 'jeecg', '2020-04-10 15:30:13', NULL, NULL),
('1248513614953672705', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 35, 'jeecg', '2020-04-10 15:30:16', NULL, NULL),
('1248513618707574786', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 27, 'jeecg', '2020-04-10 15:30:17', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1248513621136076802', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 53, 'jeecg', '2020-04-10 15:30:18', NULL, NULL),
('1248515480680755202', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 137, 'jeecg', '2020-04-10 15:37:41', NULL, NULL),
('1248515521600385026', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 44, 'jeecg', '2020-04-10 15:37:51', NULL, NULL),
('1248515534053273601', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 38, 'jeecg', '2020-04-10 15:37:54', NULL, NULL),
('1248515536574050306', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 28, 'jeecg', '2020-04-10 15:37:54', NULL, NULL),
('1248515539510063106', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 30, 'jeecg', '2020-04-10 15:37:55', NULL, NULL),
('1248515651028217857', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 38, 'jeecg', '2020-04-10 15:38:22', NULL, NULL),
('1248515656677945345', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 28, 'jeecg', '2020-04-10 15:38:23', NULL, NULL),
('1248515697308168193', 2, '部门角色-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.add()', NULL, '[{"createBy":"jeecg","createTime":1586504313174,"departId":"26c7f056a6b94ae78d736c67cd24baac","id":"1248515697224282114","roleCode":"schoolmaster","roleName":"校长"}]', NULL, 20, 'jeecg', '2020-04-10 15:38:33', NULL, NULL),
('1248515699564703746', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 162, 'jeecg', '2020-04-10 15:38:33', NULL, NULL),
('1248515708586651650', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 27, 'jeecg', '2020-04-10 15:38:35', NULL, NULL),
('1248515744309538818', 2, '部门角色-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.add()', NULL, '[{"createBy":"jeecg","createTime":1586504324377,"departId":"d2b37ffcc3fd46ddb5bc1c3da7fc41c0","id":"1248515744204681217","roleCode":"teacher","roleName":"老师"}]', NULL, 24, 'jeecg', '2020-04-10 15:38:44', NULL, NULL),
('1248515746549297153', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 158, 'jeecg', '2020-04-10 15:38:44', NULL, NULL),
('1248515755390889985', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 32, 'jeecg', '2020-04-10 15:38:47', NULL, NULL),
('1248515758712778753', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 32, 'jeecg', '2020-04-10 15:38:47', NULL, NULL),
('1248515764471558145', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 100, 'jeecg', '2020-04-10 15:38:49', NULL, NULL),
('1248515768699416578', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 25, 'jeecg', '2020-04-10 15:38:50', NULL, NULL),
('1248515798072127490', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 73, 'jeecg', '2020-04-10 15:38:57', NULL, NULL),
('1248515800714539009', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 98, 'jeecg', '2020-04-10 15:38:57', NULL, NULL),
('1248515990821367809', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 174, 'jeecg', '2020-04-10 15:39:43', NULL, NULL),
('1248516002443784193', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 111, 'jeecg', '2020-04-10 15:39:45', NULL, NULL),
('1248516046446227457', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 72, 'jeecg', '2020-04-10 15:39:56', NULL, NULL),
('1248516053303914498', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 97, 'jeecg', '2020-04-10 15:39:58', NULL, NULL),
('1248516343230984193', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 74, 'jeecg', '2020-04-10 15:41:07', NULL, NULL),
('1248516357520977922', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 196, 'jeecg', '2020-04-10 15:41:10', NULL, NULL),
('1248516362289901569', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 111, 'jeecg', '2020-04-10 15:41:11', NULL, NULL),
('1248516370762395649', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 111, 'jeecg', '2020-04-10 15:41:13', NULL, NULL),
('1248516574114836481', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 165, 'jeecg', '2020-04-10 15:42:02', NULL, NULL),
('1248516578514661378', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 143, 'jeecg', '2020-04-10 15:42:03', NULL, NULL),
('1248516584592207874', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 116, 'jeecg', '2020-04-10 15:42:04', NULL, NULL),
('1248517151733411841', 2, '部门角色-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysDepartRoleController.queryPageList()', NULL, NULL, NULL, 145, 'jeecg', '2020-04-10 15:44:19', NULL, NULL),
('1248517184998436865', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 66, 'jeecg', '2020-04-10 15:44:27', NULL, NULL),
('1248521877724164097', 2, '编码校验规则-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysCheckRuleController.queryPageList()', NULL, NULL, NULL, 49, 'jeecg', '2020-04-10 16:03:06', NULL, NULL),
('1248521881985576962', 2, '填值规则-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFillRuleController.queryPageList()', NULL, NULL, NULL, 39, 'jeecg', '2020-04-10 16:03:07', NULL, NULL),
('1248523417071480834', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-10 16:09:13', NULL, NULL),
('1248957833841311746', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 20:55:26', NULL, NULL),
('1248989445484281857', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 23:01:03', NULL, NULL),
('1248989477981749250', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 23:01:11', NULL, NULL),
('1248997150181662721', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-11 23:31:40', NULL, NULL),
('1249162191434416129', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 10:27:29', NULL, NULL),
('1249164134814842881', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 47, 'jeecg', '2020-04-12 10:35:12', NULL, NULL),
('1249164836446404609', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 52, 'jeecg', '2020-04-12 10:38:00', NULL, NULL),
('1249165051534508033', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 22, 'jeecg', '2020-04-12 10:38:51', NULL, NULL),
('1249165258439524354', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 23, 'jeecg', '2020-04-12 10:39:40', NULL, NULL),
('1249165409660960769', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 54, 'jeecg', '2020-04-12 10:40:16', NULL, NULL),
('1249165619422298114', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 14, 'jeecg', '2020-04-12 10:41:06', NULL, NULL),
('1249165733087936513', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 15, 'jeecg', '2020-04-12 10:41:33', NULL, NULL),
('1249165903716417537', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 20, 'jeecg', '2020-04-12 10:42:14', NULL, NULL),
('1249166858646192129', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 14, 'jeecg', '2020-04-12 10:46:02', NULL, NULL),
('1249167196660957186', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 16, 'jeecg', '2020-04-12 10:47:22', NULL, NULL),
('1249167380828651522', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 19, NULL, '2020-04-12 10:48:06', NULL, NULL),
('1249167584680214530', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:48:55', NULL, NULL),
('1249168156099723265', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 89, 'jeecg', '2020-04-12 10:51:11', NULL, NULL),
('1249168159065096193', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 18, NULL, '2020-04-12 10:51:12', NULL, NULL),
('1249168806409781249', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:53:46', NULL, NULL),
('1249169420967591938', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:56:13', NULL, NULL),
('1249169578476290050', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 18, 'jeecg', '2020-04-12 10:56:50', NULL, NULL),
('1249169582129528833', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:56:51', NULL, NULL),
('1249169747921977345', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:57:31', NULL, NULL),
('1249169897394388994', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 10:58:06', NULL, NULL),
('1249170183018102785', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 18, 'jeecg', '2020-04-12 10:59:14', NULL, NULL),
('1249170186830725122', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 10:59:15', NULL, NULL),
('1249170373070405634', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 11:00:00', NULL, NULL),
('1249170440191852546', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 11:00:16', NULL, NULL),
('1249170633024978946', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 11:01:02', NULL, NULL),
('1249170975913525249', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 22, 'jeecg', '2020-04-12 11:02:23', NULL, NULL),
('1249170979755507714', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 11:02:24', NULL, NULL),
('1249171215240511490', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 21, 'jeecg', '2020-04-12 11:03:20', NULL, NULL),
('1249171221917843458', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 11:03:22', NULL, NULL),
('1249171295469158402', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 17, 'jeecg', '2020-04-12 11:03:39', NULL, NULL),
('1249171781320556545', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586660735786,"fileLocation":"2","fileName":"123","filePath":"59fc4df7-aef7-4941-a59c-8a9cb0ab8bd9.jpg","fileType":1,"id":"1249171781207310337","sysOrgCode":"A01"}]', NULL, 25, 'jeecg', '2020-04-12 11:05:35', NULL, NULL),
('1249171795690242049', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 277, 'jeecg', '2020-04-12 11:05:39', NULL, NULL),
('1249174268307947521', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 11:15:28', NULL, NULL),
('1249205901803134978', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 13:21:10', NULL, NULL),
('1249205925291237378', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 13:21:16', NULL, NULL),
('1249206697311608833', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 42, 'jeecg', '2020-04-12 13:24:20', NULL, NULL),
('1249207981167091713', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"collectNum":1,"starNum":1,"teachingWorkCommentList":[],"teachingWorkCorrectList":[],"userId":"jeecg","viewNum":1,"workFile":"123","workName":"123","workType":"1"}]', NULL, 79, 'jeecg', '2020-04-12 13:29:26', NULL, NULL),
('1249207984602226689', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 335, 'jeecg', '2020-04-12 13:29:27', NULL, NULL),
('1249207989845106690', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249207980923822082"]', NULL, 21, 'jeecg', '2020-04-12 13:29:28', NULL, NULL),
('1249207995465474050', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249207980923822082"]', NULL, 1023, 'jeecg', '2020-04-12 13:29:29', NULL, NULL),
('1249208370847293442', 2, '作业列表-编辑', 3, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{"collectNum":1,"createBy":"jeecg","createTime":1586669366000,"delFlag":0,"id":"1249207980923822082","starNum":1,"sysOrgCode":"A01","teachingWorkCommentList":[{"comment":"pinglun","createBy":"jeecg","createTime":1586669459396,"id":"15866693739930","sysOrgCode":"A01","workId":"1249207980923822082"}],"teachingWorkCorrectList":[{"comment":"不错","createBy":"jeecg","createTime":1586669459380,"id":"1249208370612412418","score":99,"sysOrgCode":"A01","workId":"1249207980923822082"}],"userId":"jeecg","viewNum":1,"workFile":"123","workName":"123","workType":"1"}]', NULL, 109, 'jeecg', '2020-04-12 13:30:59', NULL, NULL),
('1249208380133482498', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249207980923822082"]', NULL, 21, 'jeecg', '2020-04-12 13:31:01', NULL, NULL),
('1249208381513408513', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249207980923822082"]', NULL, 16, 'jeecg', '2020-04-12 13:31:01', NULL, NULL),
('1249211612792623105', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 172, 'jeecg', '2020-04-12 13:43:52', NULL, NULL),
('1249211642953863170', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249207980923822082"]', NULL, 29, 'jeecg', '2020-04-12 13:43:59', NULL, NULL),
('1249211642970640386', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249207980923822082"]', NULL, 31, 'jeecg', '2020-04-12 13:43:59', NULL, NULL),
('1249211819127214082', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249207980923822082"]', NULL, 34, 'jeecg', '2020-04-12 13:44:41', NULL, NULL),
('1249211819127214083', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249207980923822082"]', NULL, 46, 'jeecg', '2020-04-12 13:44:41', NULL, NULL),
('1249217046014332929', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 14:05:27', NULL, NULL),
('1249217068915232769', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 14:05:33', NULL, NULL),
('1249218020632170497', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 81, 'jeecg', '2020-04-12 14:09:20', NULL, NULL),
('1249218835203756033', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 75, 'jeecg', '2020-04-12 14:12:34', NULL, NULL),
('1249256261125230594', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 16:41:16', NULL, NULL),
('1249256321380601857', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 16:41:31', NULL, NULL),
('1249258845135261697', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 40, NULL, '2020-04-12 16:51:33', NULL, NULL),
('1249259008729894914', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 16:52:12', NULL, NULL),
('1249259348434964482', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 16:53:33', NULL, NULL),
('1249259978415230977', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 16:56:03', NULL, NULL),
('1249260300277731329', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 16:57:20', NULL, NULL),
('1249260579115061250', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 16:58:26', NULL, NULL),
('1249260752583086082', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 16:59:08', NULL, NULL),
('1249263273691140098', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 17:09:09', NULL, NULL),
('1249263355463290882', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 17:09:28', NULL, NULL),
('1249263479958622210', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 17:09:58', NULL, NULL),
('1249265706110636034', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 17:18:49', NULL, NULL),
('1249265865104117761', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 17:19:27', NULL, NULL),
('1249265886822223874', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683172223,"fileLocation":"2","fileName":"project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.jpg","filePath":"project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249265886453125122","sysOrgCode":"A01"}]', NULL, 73, 'jeecg', '2020-04-12 17:19:32', NULL, NULL),
('1249265886822223873', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683172247,"fileLocation":"2","fileName":"project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.sb3","filePath":"project3/82c631fa-55f8-4b7d-8d9d-771f201155c8.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249265886541205505","sysOrgCode":"A01"}]', NULL, 48, 'jeecg', '2020-04-12 17:19:32', NULL, NULL),
('1249266752853716994', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 10, NULL, '2020-04-12 17:22:58', NULL, NULL),
('1249266771111522305', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683383058,"fileLocation":"2","fileName":"project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.sb3","filePath":"project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249266770755006466","sysOrgCode":"A01"}]', NULL, 59, 'jeecg', '2020-04-12 17:23:03', NULL, NULL),
('1249266771111522306', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683383067,"fileLocation":"2","fileName":"project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.jpg","filePath":"project3/ccc74059-57e1-41ef-95e1-bccbd2d5ee62.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249266770788560898","sysOrgCode":"A01"}]', NULL, 71, 'jeecg', '2020-04-12 17:23:03', NULL, NULL),
('1249267129598685185', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1860, 'jeecg', '2020-04-12 17:24:28', NULL, NULL),
('1249267703706628097', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 17:26:45', NULL, NULL),
('1249267711218626561', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 17:26:47', NULL, NULL),
('1249267728025202689', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683611218,"fileLocation":"2","fileName":"project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.jpg","filePath":"project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249267727727407106","sysOrgCode":"A01"}]', NULL, 71, 'jeecg', '2020-04-12 17:26:51', NULL, NULL),
('1249267729283493890', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586683611528,"fileLocation":"2","fileName":"project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.sb3","filePath":"project3/f0cb1f2a-0b8e-4c32-898e-068212ae371b.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249267729023447042","sysOrgCode":"A01"}]', NULL, 62, 'jeecg', '2020-04-12 17:26:51', NULL, NULL),
('1249267730730528769', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1296, 'jeecg', '2020-04-12 17:26:51', NULL, NULL),
('1249267731108016129', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249267729023447042","workName":"Scratch作品","workType":"2"}]', NULL, 172, 'jeecg', '2020-04-12 17:26:52', NULL, NULL),
('1249268530907262978', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1103, 'jeecg', '2020-04-12 17:30:02', NULL, NULL),
('1249268570727985153', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1088, 'jeecg', '2020-04-12 17:30:12', NULL, NULL),
('1249269629047353346', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1080, 'jeecg', '2020-04-12 17:34:24', NULL, NULL),
('1249269718960648194', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1875, 'jeecg', '2020-04-12 17:34:45', NULL, NULL),
('1249270232054050818', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 17:36:48', NULL, NULL),
('1249271019941498881', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 136, NULL, '2020-04-12 17:39:55', NULL, NULL),
('1249271676803059714', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1359, 'jeecg', '2020-04-12 17:42:32', NULL, NULL),
('1249271926070546433', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1245, 'jeecg', '2020-04-12 17:43:32', NULL, NULL),
('1249272077493309441', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 84, NULL, '2020-04-12 17:44:08', NULL, NULL),
('1249272106882797570', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1237, 'jeecg', '2020-04-12 17:44:15', NULL, NULL),
('1249272499599675394', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1157, 'jeecg', '2020-04-12 17:45:48', NULL, NULL),
('1249272748720361473', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 22, NULL, '2020-04-12 17:46:48', NULL, NULL),
('1249274632151613442', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 112, NULL, '2020-04-12 17:54:17', NULL, NULL),
('1249275267055939586', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 11, NULL, '2020-04-12 17:56:48', NULL, NULL),
('1249275393954607105', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 111, NULL, '2020-04-12 17:57:18', NULL, NULL),
('1249275751397396482', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 255, NULL, '2020-04-12 17:58:43', NULL, NULL),
('1249276435165437953', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 132, NULL, '2020-04-12 18:01:27', NULL, NULL),
('1249277371015348225', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 15, NULL, '2020-04-12 18:05:10', NULL, NULL),
('1249277380033101825', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 101, NULL, '2020-04-12 18:05:12', NULL, NULL),
('1249277432503844865', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 60, NULL, '2020-04-12 18:05:25', NULL, NULL),
('1249277663723241473', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1463, 'jeecg', '2020-04-12 18:06:20', NULL, NULL),
('1249277709952860162', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 67, NULL, '2020-04-12 18:06:31', NULL, NULL),
('1249277718265970689', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1160, 'jeecg', '2020-04-12 18:06:33', NULL, NULL),
('1249277822720917506', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1230, 'jeecg', '2020-04-12 18:06:58', NULL, NULL),
('1249278175122034690', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 159, NULL, '2020-04-12 18:08:21', NULL, NULL),
('1249278542559842305', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1425, 'jeecg', '2020-04-12 18:09:49', NULL, NULL),
('1249278681768792066', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 169, NULL, '2020-04-12 18:10:22', NULL, NULL),
('1249279189824835585', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1119, 'jeecg', '2020-04-12 18:12:23', NULL, NULL),
('1249279269042655233', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1309, 'jeecg', '2020-04-12 18:12:42', NULL, NULL),
('1249279890344906754', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 12, NULL, '2020-04-12 18:15:11', NULL, NULL),
('1249279900243464194', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1079, 'jeecg', '2020-04-12 18:15:13', NULL, NULL),
('1249280148760170497', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1150, 'jeecg', '2020-04-12 18:16:12', NULL, NULL),
('1249280248286810113', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 87, NULL, '2020-04-12 18:16:36', NULL, NULL),
('1249280462364086274', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 72, NULL, '2020-04-12 18:17:27', NULL, NULL),
('1249280578756022274', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1086, 'jeecg', '2020-04-12 18:17:55', NULL, NULL),
('1249280620736811010', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 99, NULL, '2020-04-12 18:18:05', NULL, NULL),
('1249280813083398146', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 79, NULL, '2020-04-12 18:18:51', NULL, NULL),
('1249280862144172033', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1268, 'jeecg', '2020-04-12 18:19:02', NULL, NULL),
('1249280959582048257', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 75, NULL, '2020-04-12 18:19:25', NULL, NULL),
('1249281197336170498', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1755, 'jeecg', '2020-04-12 18:20:22', NULL, NULL),
('1249281216671911938', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 67, NULL, '2020-04-12 18:20:27', NULL, NULL),
('1249281249991462913', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 2393, 'jeecg', '2020-04-12 18:20:35', NULL, NULL),
('1249281415574196225', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1303, 'jeecg', '2020-04-12 18:21:14', NULL, NULL),
('1249281466748899329', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1086, 'jeecg', '2020-04-12 18:21:26', NULL, NULL),
('1249282014818603009', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1558, 'jeecg', '2020-04-12 18:23:37', NULL, NULL),
('1249282152228196354', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1130, 'jeecg', '2020-04-12 18:24:10', NULL, NULL),
('1249282264723623937', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 80, NULL, '2020-04-12 18:24:37', NULL, NULL),
('1249282299699924994', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1141, 'jeecg', '2020-04-12 18:24:45', NULL, NULL),
('1249282408097517570', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 18:25:11', NULL, NULL),
('1249282483947311106', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 114, NULL, '2020-04-12 18:25:29', NULL, NULL),
('1249282508282662914', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1230, 'jeecg', '2020-04-12 18:25:35', NULL, NULL),
('1249282529505841153', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 72, NULL, '2020-04-12 18:25:40', NULL, NULL),
('1249282547520376834', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 70, NULL, '2020-04-12 18:25:44', NULL, NULL),
('1249282755805319169', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 2076, NULL, '2020-04-12 18:26:34', NULL, NULL),
('1249283073347686401', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1376, 'jeecg', '2020-04-12 18:27:49', NULL, NULL),
('1249283225932271617', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1260, 'jeecg', '2020-04-12 18:28:26', NULL, NULL),
('1249283280433057794', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 18:28:39', NULL, NULL),
('1249283604996689922', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687396568,"fileLocation":"2","fileName":"project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.jpg","filePath":"project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249283604631785473","sysOrgCode":"A01"}]', NULL, 87, 'jeecg', '2020-04-12 18:29:56', NULL, NULL),
('1249283606246592513', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687396882,"fileLocation":"2","fileName":"project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.sb3","filePath":"project3/c2ffa9bc-95a5-4920-90c2-ebb3f84b5d5a.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249283605948796930","sysOrgCode":"A01"}]', NULL, 72, 'jeecg', '2020-04-12 18:29:56', NULL, NULL),
('1249283609576869889', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249283605948796930","workName":"Scratch作品","workType":"2"}]', NULL, 232, 'jeecg', '2020-04-12 18:29:57', NULL, NULL),
('1249283931334512642', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1427, 'jeecg', '2020-04-12 18:31:14', NULL, NULL),
('1249284288068456449', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1528, 'jeecg', '2020-04-12 18:32:39', NULL, NULL),
('1249284338093920258', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1536, 'jeecg', '2020-04-12 18:32:51', NULL, NULL),
('1249284449708544002', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 18:33:18', NULL, NULL),
('1249284470109638658', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1390, 'jeecg', '2020-04-12 18:33:22', NULL, NULL),
('1249284565177733121', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687625200,"fileLocation":"2","fileName":"project3/aec93f79-f8f7-4d95-8ea4-95354534254a.jpg","filePath":"project3/aec93f79-f8f7-4d95-8ea4-95354534254a.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249284563583897601","sysOrgCode":"A01"}]', NULL, 381, 'jeecg', '2020-04-12 18:33:45', NULL, NULL),
('1249284572182220801', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687627207,"fileLocation":"2","fileName":"project3/aec93f79-f8f7-4d95-8ea4-95354534254a.sb3","filePath":"project3/aec93f79-f8f7-4d95-8ea4-95354534254a.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249284572001865729","sysOrgCode":"A01"}]', NULL, 44, 'jeecg', '2020-04-12 18:33:47', NULL, NULL),
('1249284574975627266', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249284572001865729","workName":"忍者","workType":"2"}]', NULL, 170, 'jeecg', '2020-04-12 18:33:47', NULL, NULL),
('1249284613894574081', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 77, NULL, '2020-04-12 18:33:57', NULL, NULL),
('1249284744501006338', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 54, NULL, '2020-04-12 18:34:28', NULL, NULL),
('1249284936411385858', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 18:35:14', NULL, NULL),
('1249285012294733825', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 18:35:32', NULL, NULL),
('1249285103172718594', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1679, 'jeecg', '2020-04-12 18:35:53', NULL, NULL),
('1249285354512191489', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687813697,"fileLocation":"2","fileName":"project3/b6762e1e-678e-4661-a18e-09466f3eb19c.jpg","filePath":"project3/b6762e1e-678e-4661-a18e-09466f3eb19c.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249285354197618689","sysOrgCode":"A01"}]', NULL, 74, 'jeecg', '2020-04-12 18:36:53', NULL, NULL),
('1249285356730978306', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586687814258,"fileLocation":"2","fileName":"project3/b6762e1e-678e-4661-a18e-09466f3eb19c.sb3","filePath":"project3/b6762e1e-678e-4661-a18e-09466f3eb19c.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249285356554817537","sysOrgCode":"A01"}]', NULL, 42, 'jeecg', '2020-04-12 18:36:54', NULL, NULL),
('1249285358211567617', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249285356554817537","workName":"Scratch作品","workType":"2"}]', NULL, 147, 'jeecg', '2020-04-12 18:36:54', NULL, NULL),
('1249285722033885185', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1708, 'jeecg', '2020-04-12 18:38:21', NULL, NULL),
('1249285739108896769', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 1913, 'jeecg', '2020-04-12 18:38:25', NULL, NULL),
('1249287533679611906', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 2, NULL, '2020-04-12 18:45:33', NULL, NULL),
('1249297219233517569', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 19:24:02', NULL, NULL),
('1249297555734138881', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 19:25:22', NULL, NULL),
('1249297576525303810', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586690727706,"fileLocation":"2","fileName":"project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.sb3","filePath":"project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249297576437223425","sysOrgCode":"A01"}]', NULL, 20, 'jeecg', '2020-04-12 19:25:27', NULL, NULL),
('1249297576865042434', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586690727786,"fileLocation":"2","fileName":"project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.jpg","filePath":"project3/2a317dbc-d9db-40b9-afbb-b3c3f437aa71.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249297576772767746","sysOrgCode":"A01"}]', NULL, 21, 'jeecg', '2020-04-12 19:25:27', NULL, NULL),
('1249297577359970306', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249297576437223425","workName":"Scratch作品","workType":"2"}]', NULL, 60, 'jeecg', '2020-04-12 19:25:27', NULL, NULL),
('1249297623606366209', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 19:25:38', NULL, NULL),
('1249299123040686082', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 20719, NULL, '2020-04-12 19:31:36', NULL, NULL),
('1249299308412145666', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 1104, NULL, '2020-04-12 19:32:20', NULL, NULL),
('1249299355275104257', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 16, NULL, '2020-04-12 19:32:31', NULL, NULL),
('1249299427907866626', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 1075, NULL, '2020-04-12 19:32:49', NULL, NULL),
('1249299626596241410', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 25, NULL, '2020-04-12 19:33:36', NULL, NULL),
('1249299671450128385', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 45, NULL, '2020-04-12 19:33:47', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1249299944927137793', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 233480, NULL, '2020-04-12 19:34:52', NULL, NULL),
('1249300509929246722', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 5391, NULL, '2020-04-12 19:37:07', NULL, NULL),
('1249300711876595713', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 31, NULL, '2020-04-12 19:37:55', NULL, NULL),
('1249301207815294978', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 270, NULL, '2020-04-12 19:39:53', NULL, NULL),
('1249301259765944322', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 605, NULL, '2020-04-12 19:40:05', NULL, NULL),
('1249301684770574337', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 31, NULL, '2020-04-12 19:41:47', NULL, NULL),
('1249305432850960386', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 19:56:40', NULL, NULL),
('1249305444762783745', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 19:56:43', NULL, NULL),
('1249305454678118402', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 492, 'jeecg', '2020-04-12 19:56:46', NULL, NULL),
('1249305494536589313', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 625, 'jeecg', '2020-04-12 19:56:55', NULL, NULL),
('1249305758211510274', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 516, 'jeecg', '2020-04-12 19:57:58', NULL, NULL),
('1249305775781449730', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 166, 'jeecg', '2020-04-12 19:58:02', NULL, NULL),
('1249305943511666689', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 55, 'jeecg', '2020-04-12 19:58:42', NULL, NULL),
('1249307969104646145', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 20:06:45', NULL, NULL),
('1249308211095015425', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 20:07:43', NULL, NULL),
('1249308218573459457', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 68, 'jeecg', '2020-04-12 20:07:44', NULL, NULL),
('1249308249061855234', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 579, 'jeecg', '2020-04-12 20:07:52', NULL, NULL),
('1249308351360929794', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249297577167032321"]', NULL, 28, 'jeecg', '2020-04-12 20:08:16', NULL, NULL),
('1249308352782798849', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249297577167032321"]', NULL, 46, 'jeecg', '2020-04-12 20:08:16', NULL, NULL),
('1249308504293642241', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 265, 'jeecg', '2020-04-12 20:08:53', NULL, NULL),
('1249308534282915842', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249284574480699394"]', NULL, 23, 'jeecg', '2020-04-12 20:09:00', NULL, NULL),
('1249308534320664578', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249284574480699394"]', NULL, 14, 'jeecg', '2020-04-12 20:09:00', NULL, NULL),
('1249308667594674177', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 277, 'jeecg', '2020-04-12 20:09:32', NULL, NULL),
('1249308868938043393', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 258, 'jeecg', '2020-04-12 20:10:20', NULL, NULL),
('1249309509492150274', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 371, 'jeecg', '2020-04-12 20:12:52', NULL, NULL),
('1249309593365647362', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 305, 'jeecg', '2020-04-12 20:13:12', NULL, NULL),
('1249309874941857793', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 278, 'jeecg', '2020-04-12 20:14:19', NULL, NULL),
('1249309931254583298', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 387, 'jeecg', '2020-04-12 20:14:33', NULL, NULL),
('1249310248285245442', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 267, 'jeecg', '2020-04-12 20:15:48', NULL, NULL),
('1249310280132595714', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 301, 'jeecg', '2020-04-12 20:15:56', NULL, NULL),
('1249310342078271489', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 284, 'jeecg', '2020-04-12 20:16:11', NULL, NULL),
('1249310938617352194', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 251, 'jeecg', '2020-04-12 20:18:33', NULL, NULL),
('1249311043974074369', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 255, 'jeecg', '2020-04-12 20:18:58', NULL, NULL),
('1249311168175804418', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 264, 'jeecg', '2020-04-12 20:19:28', NULL, NULL),
('1249311177264861186', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 15, NULL, '2020-04-12 20:19:30', NULL, NULL),
('1249311199410786306', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 17, NULL, '2020-04-12 20:19:35', NULL, NULL),
('1249311268289646593', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 288, 'jeecg', '2020-04-12 20:19:52', NULL, NULL),
('1249311276820860930', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 12, NULL, '2020-04-12 20:19:54', NULL, NULL),
('1249311323922894850', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249283608884809730"]', NULL, 22, NULL, '2020-04-12 20:20:05', NULL, NULL),
('1249311390100623361', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 18, NULL, '2020-04-12 20:20:21', NULL, NULL),
('1249311410422026241', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 18, NULL, '2020-04-12 20:20:25', NULL, NULL),
('1249311570535387138', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249285357716639746"]', NULL, 23, NULL, '2020-04-12 20:21:04', NULL, NULL),
('1249311584988958722', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 11, NULL, '2020-04-12 20:21:07', NULL, NULL),
('1249311617285099521', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249283608884809730"]', NULL, 12, NULL, '2020-04-12 20:21:15', NULL, NULL),
('1249311633227649026', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 13, NULL, '2020-04-12 20:21:19', NULL, NULL),
('1249311998425698306', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249285357716639746"]', NULL, 25, NULL, '2020-04-12 20:22:46', NULL, NULL),
('1249312309676609538', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 22, NULL, '2020-04-12 20:24:00', NULL, NULL),
('1249312357244211201', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249285357716639746"]', NULL, 30, NULL, '2020-04-12 20:24:11', NULL, NULL),
('1249312364345167874', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 11, NULL, '2020-04-12 20:24:13', NULL, NULL),
('1249312381130772481', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 12, NULL, '2020-04-12 20:24:17', NULL, NULL),
('1249312548944875522', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 20:24:57', NULL, NULL),
('1249313279571660801', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 20:27:51', NULL, NULL),
('1249313290665594882', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 13, NULL, '2020-04-12 20:27:54', NULL, NULL),
('1249313429991985154', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:28:27', NULL, NULL),
('1249313431141224449', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:28:27', NULL, NULL),
('1249313440930729986', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 22, NULL, '2020-04-12 20:28:30', NULL, NULL),
('1249313662729719810', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 20:29:22', NULL, NULL),
('1249313672108183553', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 368, 'jeecg', '2020-04-12 20:29:25', NULL, NULL),
('1249313790802792450', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 335, 'jeecg', '2020-04-12 20:29:53', NULL, NULL),
('1249313854384246786', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:30:08', NULL, NULL),
('1249313860939943937', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 14, NULL, '2020-04-12 20:30:10', NULL, NULL),
('1249314097196699650', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:31:06', NULL, NULL),
('1249314104972939266', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 12, NULL, '2020-04-12 20:31:08', NULL, NULL),
('1249314112887590913', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 336, 'jeecg', '2020-04-12 20:31:10', NULL, NULL),
('1249314192537423873', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 597, 'jeecg', '2020-04-12 20:31:29', NULL, NULL),
('1249314230739144705', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 330, 'jeecg', '2020-04-12 20:31:38', NULL, NULL),
('1249314245914136578', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:31:42', NULL, NULL),
('1249314251773579265', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 14, NULL, '2020-04-12 20:31:43', NULL, NULL),
('1249315432356909057', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 20:36:24', NULL, NULL),
('1249316767873634306', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 20:41:43', NULL, NULL),
('1249319284472811521', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 9, NULL, '2020-04-12 20:51:43', NULL, NULL),
('1249321564848787458', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 415, 'jeecg', '2020-04-12 21:00:46', NULL, NULL),
('1249321730729316354', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 25, NULL, '2020-04-12 21:01:26', NULL, NULL),
('1249321800988102657', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:01:43', NULL, NULL),
('1249324212058636289', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 542, 'jeecg', '2020-04-12 21:11:17', NULL, NULL),
('1249324263094927362', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 1420, 'jeecg', '2020-04-12 21:11:30', NULL, NULL),
('1249324275937886209', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 10, NULL, '2020-04-12 21:11:33', NULL, NULL),
('1249324317578936322', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:11:43', NULL, NULL),
('1249324572995272705', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 430, 'jeecg', '2020-04-12 21:12:44', NULL, NULL),
('1249324599083843586', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 389, 'jeecg', '2020-04-12 21:12:50', NULL, NULL),
('1249324741568544769', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 372, 'jeecg', '2020-04-12 21:13:24', NULL, NULL),
('1249324761604734977', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:13:29', NULL, NULL),
('1249324767703252994', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 20, NULL, '2020-04-12 21:13:30', NULL, NULL),
('1249324941569736706', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 391, 'jeecg', '2020-04-12 21:14:12', NULL, NULL),
('1249324963069739010', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249207980923822082"]', NULL, 29, 'jeecg', '2020-04-12 21:14:17', NULL, NULL),
('1249324964516773889', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249207980923822082"]', NULL, 29, 'jeecg', '2020-04-12 21:14:17', NULL, NULL),
('1249324977154211842', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:14:20', NULL, NULL),
('1249324983382753282', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249207980923822082"]', NULL, 17, NULL, '2020-04-12 21:14:22', NULL, NULL),
('1249325013107785730', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:14:29', NULL, NULL),
('1249325020422651906', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249207980923822082"]', NULL, 17, NULL, '2020-04-12 21:14:30', NULL, NULL),
('1249325217290698754', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249207980923822082"]', NULL, 47, NULL, '2020-04-12 21:15:17', NULL, NULL),
('1249325599467290626', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249207980923822082"]', NULL, 31, NULL, '2020-04-12 21:16:48', NULL, NULL),
('1249326834169724930', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 21:21:43', NULL, NULL),
('1249327279617392641', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:23:29', NULL, NULL),
('1249327534622687234', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:24:30', NULL, NULL),
('1249327725610319874', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 21:25:15', NULL, NULL),
('1249327738939817985', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586697918842,"fileLocation":"2","fileName":"project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.sb3","filePath":"project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249327738251952130","sysOrgCode":"A01"}]', NULL, 169, 'jeecg', '2020-04-12 21:25:19', NULL, NULL),
('1249327739568963585', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586697919129,"fileLocation":"2","fileName":"project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.jpg","filePath":"project3/5bef052e-caf4-445f-bcce-2eeb1b2a690c.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249327739447328769","sysOrgCode":"A01"}]', NULL, 27, 'jeecg', '2020-04-12 21:25:19', NULL, NULL),
('1249327740722397186', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249327738251952130","workName":"Scratch作品","workType":"2"}]', NULL, 184, 'jeecg', '2020-04-12 21:25:19', NULL, NULL),
('1249327795223183362', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 588, 'jeecg', '2020-04-12 21:25:32', NULL, NULL),
('1249327813183193090', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586697936289,"fileLocation":"2","fileName":"project3/efddab15-78c0-4ddb-84da-cf662d178417.jpg","filePath":"project3/efddab15-78c0-4ddb-84da-cf662d178417.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249327811425779714","sysOrgCode":"A01"}]', NULL, 420, 'jeecg', '2020-04-12 21:25:36', NULL, NULL),
('1249327816991621122', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586697937538,"fileLocation":"2","fileName":"project3/efddab15-78c0-4ddb-84da-cf662d178417.sb3","filePath":"project3/efddab15-78c0-4ddb-84da-cf662d178417.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249327816664465409","sysOrgCode":"A01"}]', NULL, 79, 'jeecg', '2020-04-12 21:25:37', NULL, NULL),
('1249327818237329410', 2, '作业列表-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.add()', NULL, '[{"id":"","workFile":"1249327816664465409","workName":"Scratch作品","workType":"2"}]', NULL, 174, 'jeecg', '2020-04-12 21:25:37', NULL, NULL),
('1249327830123986946', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 420, 'jeecg', '2020-04-12 21:25:40', NULL, NULL),
('1249329113492930561', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 21:30:46', NULL, NULL),
('1249329264982859777', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 21:31:22', NULL, NULL),
('1249329279830695937', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 771, 'jeecg', '2020-04-12 21:31:26', NULL, NULL),
('1249329333622644738', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 14, NULL, '2020-04-12 21:31:39', NULL, NULL),
('1249329347023446018', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586698302362,"fileLocation":"2","fileName":"project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.sb3","filePath":"project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249329346851479554","sysOrgCode":"A01"}]', NULL, 44, 'jeecg', '2020-04-12 21:31:42', NULL, NULL),
('1249329347434487809', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586698302479,"fileLocation":"2","fileName":"project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.jpg","filePath":"project3/aae1f0e0-6f4c-4e92-8c7a-855a5cbc7217.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249329347333824514","sysOrgCode":"A01"}]', NULL, 23, 'jeecg', '2020-04-12 21:31:42', NULL, NULL),
('1249329349485502466', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:31:42', NULL, NULL),
('1249329365348360194', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586698306752,"fileLocation":"2","fileName":"project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.sb3","filePath":"project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249329365260279809","sysOrgCode":"A01"}]', NULL, 21, 'jeecg', '2020-04-12 21:31:46', NULL, NULL),
('1249329367567147010', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586698307243,"fileLocation":"2","fileName":"project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.jpg","filePath":"project3/6d91e312-d5d5-44e7-8f17-e59a25b696c5.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249329367315488770","sysOrgCode":"A01"}]', NULL, 58, 'jeecg', '2020-04-12 21:31:47', NULL, NULL),
('1249329742923800577', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 624, 'jeecg', '2020-04-12 21:33:16', NULL, NULL),
('1249329759977840642', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 612, 'jeecg', '2020-04-12 21:33:20', NULL, NULL),
('1249329771252129794', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:33:23', NULL, NULL),
('1249329777161904129', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 27, NULL, '2020-04-12 21:33:24', NULL, NULL),
('1249329798267641857', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:33:29', NULL, NULL),
('1249329845638111234', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:33:41', NULL, NULL),
('1249329851409473538', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 13, NULL, '2020-04-12 21:33:42', NULL, NULL),
('1249329978161340418', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 476, 'jeecg', '2020-04-12 21:34:12', NULL, NULL),
('1249330047715483650', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:34:29', NULL, NULL),
('1249330398141194241', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:35:53', NULL, NULL),
('1249330407079256065', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249207980923822082"]', NULL, 18, NULL, '2020-04-12 21:35:55', NULL, NULL),
('1249330416935870465', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 467, 'jeecg', '2020-04-12 21:35:57', NULL, NULL),
('1249330461001228289', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:36:07', NULL, NULL),
('1249330468852965377', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 28, NULL, '2020-04-12 21:36:09', NULL, NULL),
('1249330496329850881', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:36:16', NULL, NULL),
('1249330502164127745', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 16, NULL, '2020-04-12 21:36:17', NULL, NULL),
('1249330817257021441', 2, '文件管理-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.queryPageList()', NULL, NULL, NULL, 726, 'jeecg', '2020-04-12 21:37:32', NULL, NULL),
('1249330994810298370', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 181, 'jeecg', '2020-04-12 21:38:15', NULL, NULL),
('1249331020315860993', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 533, 'jeecg', '2020-04-12 21:38:21', NULL, NULL),
('1249331212876357633', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 408, 'jeecg', '2020-04-12 21:39:07', NULL, NULL),
('1249331351586185217', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 484, 'jeecg', '2020-04-12 21:39:40', NULL, NULL),
('1249331380292001793', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 454, 'jeecg', '2020-04-12 21:39:47', NULL, NULL),
('1249331867347165186', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 21:41:43', NULL, NULL),
('1249332316116721666', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:43:30', NULL, NULL),
('1249333913014046721', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 898, 'jeecg', '2020-04-12 21:49:50', NULL, NULL),
('1249334383963082753', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 12, NULL, '2020-04-12 21:51:43', NULL, NULL),
('1249334393584816130', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 1873, 'jeecg', '2020-04-12 21:51:45', NULL, NULL),
('1249334418389929985', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 491, 'jeecg', '2020-04-12 21:51:51', NULL, NULL),
('1249334815401775106', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 480, 'jeecg', '2020-04-12 21:53:26', NULL, NULL),
('1249334824549552130', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 21:53:28', NULL, NULL),
('1249334832774582274', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 32, NULL, '2020-04-12 21:53:30', NULL, NULL),
('1249334840752148481', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586699612178,"fileLocation":"2","fileName":"project3/528436b4-0d81-4c52-86ed-8e249e607011.sb3","filePath":"project3/528436b4-0d81-4c52-86ed-8e249e607011.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249334840617930753","sysOrgCode":"A01"}]', NULL, 38, 'jeecg', '2020-04-12 21:53:32', NULL, NULL),
('1249334841721032705', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586699612381,"fileLocation":"2","fileName":"project3/528436b4-0d81-4c52-86ed-8e249e607011.jpg","filePath":"project3/528436b4-0d81-4c52-86ed-8e249e607011.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249334841465180161","sysOrgCode":"A01"}]', NULL, 60, 'jeecg', '2020-04-12 21:53:32', NULL, NULL),
('1249335167463264258', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 21:54:50', NULL, NULL),
('1249335178645278721', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249297577167032321"]', NULL, 27, NULL, '2020-04-12 21:54:52', NULL, NULL),
('1249335188808077313', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586699695127,"fileLocation":"2","fileName":"project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.sb3","filePath":"project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.sb3","fileTag":"学生作业-sb3","fileType":2,"id":"1249335188527058945","sysOrgCode":"A01"}]', NULL, 66, 'jeecg', '2020-04-12 21:54:55', NULL, NULL),
('1249335189030375425', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 610, 'jeecg', '2020-04-12 21:54:55', NULL, NULL),
('1249335189391085569', 2, '文件管理-添加', 2, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysFileController.add()', NULL, '[{"createBy":"jeecg","createTime":1586699695310,"fileLocation":"2","fileName":"project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.jpg","filePath":"project3/90097042-860c-4b35-8bd7-4f61fcf23cf3.jpg","fileTag":"学生作业-封面","fileType":2,"id":"1249335189294616578","sysOrgCode":"A01"}]', NULL, 23, 'jeecg', '2020-04-12 21:54:55', NULL, NULL),
('1249335241283014657', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 416, 'jeecg', '2020-04-12 21:55:07', NULL, NULL),
('1249336059998605314', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 1424, 'jeecg', '2020-04-12 21:58:22', NULL, NULL),
('1249336167892881410', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 569, 'jeecg', '2020-04-12 21:58:48', NULL, NULL),
('1249336194270859265', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 630, 'jeecg', '2020-04-12 21:58:54', NULL, NULL),
('1249336372788826113', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 616, 'jeecg', '2020-04-12 21:59:37', NULL, NULL),
('1249336452568682498', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 680, 'jeecg', '2020-04-12 21:59:56', NULL, NULL),
('1249336826461507586', 2, '修改用户资料，id： a75d45a015c44384a04449ee80dc3503', 2, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2020-04-12 22:01:25', NULL, NULL),
('1249336900625190913', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 21, NULL, '2020-04-12 22:01:43', NULL, NULL),
('1249336916060229633', 2, '修改用户资料，id： a75d45a015c44384a04449ee80dc3503', 2, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2020-04-12 22:01:47', NULL, NULL),
('1249337689045291010', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:04:51', NULL, NULL),
('1249339417090150402', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:11:43', NULL, NULL),
('1249340205615108097', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:14:51', NULL, NULL),
('1249341933651578881', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:21:43', NULL, NULL),
('1249342722180730882', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:24:51', NULL, NULL),
('1249344450233978882', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 22:31:43', NULL, NULL),
('1249345238758936578', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:34:51', NULL, NULL),
('1249346966816378881', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:41:43', NULL, NULL),
('1249347755349725186', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:44:51', NULL, NULL),
('1249349483415556097', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:51:43', NULL, NULL),
('1249350271936319489', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 22:54:51', NULL, NULL),
('1249351597780893697', 2, '修改用户资料，id： a75d45a015c44384a04449ee80dc3503', 2, 'jeecg', 'jeecg', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 'jeecg', '2020-04-12 23:00:07', NULL, NULL),
('1249352000085950466', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 10, NULL, '2020-04-12 23:01:43', NULL, NULL),
('1249352776741027841', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 74, 'jeecg', '2020-04-12 23:04:48', NULL, NULL),
('1249352787239370753', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 23:04:50', NULL, NULL),
('1249355305105227777', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 1, NULL, '2020-04-12 23:14:51', NULL, NULL),
('1249357821725376513', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 0, NULL, '2020-04-12 23:24:51', NULL, NULL),
('1249358684116324353', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-12 23:28:16', NULL, NULL),
('1249358714789269505', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 972, 'jeecg', '2020-04-12 23:28:24', NULL, NULL),
('1249358905885954050', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 880, 'jeecg', '2020-04-12 23:29:09', NULL, NULL),
('1249358947623473154', 2, '发送作业给其他用户', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.sendWork()', NULL, '[{"sendWorkId":"1249284574480699394","userIdList":["42d153bffeea74f72a9c1697874fa4a7","e9ca23d68d884d4ebb19d07889727dae"]}]', NULL, 164, 'jeecg', '2020-04-12 23:29:19', NULL, NULL),
('1249358987796516865', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 645, 'jeecg', '2020-04-12 23:29:29', NULL, NULL),
('1249359053122801666', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 37, 'jeecg', '2020-04-12 23:29:44', NULL, NULL),
('1249359053236047873', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 45, 'jeecg', '2020-04-12 23:29:44', NULL, NULL),
('1249359066733318146', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 14, 'jeecg', '2020-04-12 23:29:48', NULL, NULL),
('1249359066783649794', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 18, 'jeecg', '2020-04-12 23:29:48', NULL, NULL),
('1249360037844717569', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 769, 'jeecg', '2020-04-12 23:33:39', NULL, NULL),
('1249360147605458945', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 17, 'jeecg', '2020-04-12 23:34:05', NULL, NULL),
('1249360147597070338', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 17, 'jeecg', '2020-04-12 23:34:05', NULL, NULL),
('1249360991285514242', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 38, 'jeecg', '2020-04-12 23:37:26', NULL, NULL),
('1249360992409587714', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 12, 'jeecg', '2020-04-12 23:37:27', NULL, NULL),
('1249361620640829442', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 1566, 'jeecg', '2020-04-12 23:39:57', NULL, NULL),
('1249361631659266049', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 58, 'jeecg', '2020-04-12 23:39:59', NULL, NULL),
('1249361631722180610', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 50, 'jeecg', '2020-04-12 23:39:59', NULL, NULL),
('1249361825348030466', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 24, 'jeecg', '2020-04-12 23:40:45', NULL, NULL),
('1249361825364807682', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 12, 'jeecg', '2020-04-12 23:40:45', NULL, NULL),
('1249361836081254401', 2, '作业列表-编辑', 3, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{"collectNum":0,"createBy":"test22","createTime":1586705359000,"delFlag":0,"id":"1249358947245985794","starNum":0,"sysOrgCode":"A01","teachingWorkCorrectList":[{"createBy":"jeecg","createTime":1586706048335,"id":"1249361835817013249","score":4,"sysOrgCode":"A01","workId":"1249358947245985794"}],"userId":"42d153bffeea74f72a9c1697874fa4a7","viewNum":0,"workFile":"1249284572001865729","workName":"忍者","workType":"2"}]', NULL, 174, 'jeecg', '2020-04-12 23:40:48', NULL, NULL),
('1249361840363638785', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 822, 'jeecg', '2020-04-12 23:40:49', NULL, NULL),
('1249361845606518786', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 15, 'jeecg', '2020-04-12 23:40:50', NULL, NULL),
('1249361845644267521', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 11, 'jeecg', '2020-04-12 23:40:50', NULL, NULL),
('1249361871292436481', 2, '作业列表-编辑', 3, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.edit()', NULL, '[{"collectNum":0,"createBy":"test22","createTime":1586705359000,"delFlag":0,"id":"1249358947245985794","starNum":0,"sysOrgCode":"A01","teachingWorkCorrectList":[{"comment":"哈哈哈","createBy":"jeecg","createTime":1586706048000,"id":"1249361835817013249","score":3,"sysOrgCode":"A01","workId":"1249358947245985794"}],"updateBy":"jeecg","updateTime":1586706048000,"userId":"42d153bffeea74f72a9c1697874fa4a7","viewNum":0,"workFile":"1249284572001865729","workName":"忍者","workType":"2"}]', NULL, 120, 'jeecg', '2020-04-12 23:40:56', NULL, NULL),
('1249361876325601281', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 702, 'jeecg', '2020-04-12 23:40:57', NULL, NULL),
('1249361880851255297', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 14, 'jeecg', '2020-04-12 23:40:59', NULL, NULL),
('1249361880926752770', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 20, 'jeecg', '2020-04-12 23:40:59', NULL, NULL),
('1249361890930167810', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 14, 'jeecg', '2020-04-12 23:41:01', NULL, NULL),
('1249361893442555906', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 29, 'jeecg', '2020-04-12 23:41:02', NULL, NULL),
('1249361909842284546', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 70, 'jeecg', '2020-04-12 23:41:05', NULL, NULL),
('1249361910194606082', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 83, 'jeecg', '2020-04-12 23:41:06', NULL, NULL);
INSERT INTO `sys_log` (`id`, `log_type`, `log_content`, `operate_type`, `userid`, `username`, `ip`, `method`, `request_url`, `request_param`, `request_type`, `cost_time`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1249534935233744897', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249358947245985794"]', NULL, 119, NULL, '2020-04-13 11:08:38', NULL, NULL),
('1249534949280468994', 1, '用户名: jeecg,退出成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-13 11:08:41', NULL, NULL),
('1249534988820172802', 1, '用户名: jeecg,登录成功！', NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-13 11:08:51', NULL, NULL),
('1249535007447076866', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 1428, 'jeecg', '2020-04-13 11:08:55', NULL, NULL),
('1249535016838123521', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 20, 'jeecg', '2020-04-13 11:08:57', NULL, NULL),
('1249535017442103297', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 152, 'jeecg', '2020-04-13 11:08:58', NULL, NULL),
('1249535394669416450', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249358947245985794"]', NULL, 57, NULL, '2020-04-13 11:10:27', NULL, NULL),
('1249535434162982913', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249358947480866818"]', NULL, 16, NULL, '2020-04-13 11:10:37', NULL, NULL),
('1249535479629238273', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 60, NULL, '2020-04-13 11:10:48', NULL, NULL),
('1249535522528579585', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 612, 'jeecg', '2020-04-13 11:10:58', NULL, NULL),
('1249535575594913794', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 395, 'jeecg', '2020-04-13 11:11:11', NULL, NULL),
('1249535692532109313', 2, '职务表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.system.controller.SysPositionController.queryPageList()', NULL, NULL, NULL, 176, 'jeecg', '2020-04-13 11:11:39', NULL, NULL),
('1249536031884857345', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 379, 'jeecg', '2020-04-13 11:12:59', NULL, NULL),
('1249536966187044866', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249358947480866818"]', NULL, 24, NULL, '2020-04-13 11:16:42', NULL, NULL),
('1249537057941639170', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 676, 'jeecg', '2020-04-13 11:17:04', NULL, NULL),
('1249537075813568514', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249327740042919938"]', NULL, 14, NULL, '2020-04-13 11:17:08', NULL, NULL),
('1249537331666112514', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 93, NULL, '2020-04-13 11:18:09', NULL, NULL),
('1249537879991668738', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 679, 'jeecg', '2020-04-13 11:20:20', NULL, NULL),
('1249538052046213122', 2, '作业列表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryPageList()', NULL, NULL, NULL, 726, 'jeecg', '2020-04-13 11:21:01', NULL, NULL),
('1249538088473743361', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 15, NULL, '2020-04-13 11:21:10', NULL, NULL),
('1249538117749985282', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249284574480699394"]', NULL, 29, NULL, '2020-04-13 11:21:17', NULL, NULL),
('1249538231977660418', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 365, 'jeecg', '2020-04-13 11:21:44', NULL, NULL),
('1249538392774692865', 2, '我的作业-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.mine()', NULL, NULL, NULL, 380, 'jeecg', '2020-04-13 11:22:22', NULL, NULL),
('1249538490317426689', 2, '作品评论集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCommentListByMainId()', NULL, '["1249358947245985794"]', NULL, 32, 'jeecg', '2020-04-13 11:22:46', NULL, NULL),
('1249538490321620994', 2, '作业批改集合-通过id查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.queryTeachingWorkCorrectListByMainId()', NULL, '["1249358947245985794"]', NULL, 24, 'jeecg', '2020-04-13 11:22:46', NULL, NULL),
('1249538514560503809', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249358947245985794"]', NULL, 14, NULL, '2020-04-13 11:22:51', NULL, NULL),
('1249538687692984321', 2, '学生作业详情', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingWorkController.studentWorkInfo()', NULL, '["1249267730541785090"]', NULL, 22, NULL, '2020-04-13 11:23:33', NULL, NULL),
('1249538694663917569', 2, '获取七牛上传Token', 1, NULL, NULL, '127.0.0.1', 'org.jeecg.modules.common.controller.QiniuController.getQiniuToken()', NULL, '[]', NULL, 14, NULL, '2020-04-13 11:23:34', NULL, NULL),
('1249538960331132929', 2, '学生表-分页列表查询', 1, 'jeecg', 'jeecg', '127.0.0.1', 'org.jeecg.modules.teaching.controller.TeachingStudentController.queryPageList()', NULL, NULL, NULL, 180, 'jeecg', '2020-04-13 11:24:38', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_permission`
--

CREATE TABLE IF NOT EXISTS `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `perms_type` varchar(10) DEFAULT '0' COMMENT '权限策略1显示2禁用',
  `sort_no` double(8,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  `rule_flag` int(3) DEFAULT '0' COMMENT '是否添加数据权限1是0否',
  `status` varchar(2) DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `internal_or_external` tinyint(1) DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

--
-- 转存表中的数据 `sys_permission`
--

INSERT INTO `sys_permission` (`id`, `parent_id`, `name`, `url`, `component`, `component_name`, `redirect`, `menu_type`, `perms`, `perms_type`, `sort_no`, `always_show`, `icon`, `is_route`, `is_leaf`, `keep_alive`, `hidden`, `description`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `rule_flag`, `status`, `internal_or_external`) VALUES
('00a2a0ae65cdca5e93209cdbde97cbe6', '2e42e3835c2b44ec9f7bc26c146ee531', '成功', '/result/success', 'result/Success', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('020b06793e4de2eee0007f603000c769', 'f0675b52d89100ee88472b6800754a08', 'ViserChartDemo', '/report/ViserChartDemo', 'jeecg/report/ViserChartDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 19:08:53', 'admin', '2019-04-03 19:08:53', 0, 0, NULL, NULL),
('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat信息', '/monitor/TomcatInfo', 'modules/monitor/TomcatInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:44:29', 'admin', '2019-05-07 15:19:10', 0, 0, NULL, NULL),
('043780fa095ff1b2bec4dc406d76f023', '2a470fc0c3954d9dbb61de6d80846549', '表格合计', '/jeecg/tableTotal', 'jeecg/TableTotal', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-08-14 10:28:46', NULL, NULL, 0, 0, '1', NULL),
('05b3c82ddb2536a4a5ee1a4c46b5abef', '540a2936940846cb98114ffb0d145cb8', '用户列表', '/list/user-list', 'list/UserList', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('0620e402857b8c5b605e1ad9f4b89350', '2a470fc0c3954d9dbb61de6d80846549', '异步树列表Demo', '/jeecg/JeecgTreeTable', 'jeecg/JeecgTreeTable', NULL, NULL, 1, NULL, '0', 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-05-13 17:30:30', 'admin', '2019-05-13 17:32:17', 0, 0, '1', NULL),
('078f9558cdeab239aecb2bda1a8ed0d1', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（文章）', '/list/search/article', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:00:34', 'admin', '2019-02-12 14:17:54', 0, 0, NULL, NULL),
('08e6b9dc3c04489c8e1ff2ce6f105aa4', '', '系统监控', '/dashboard3', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'dashboard', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:58', 0, 0, NULL, NULL),
('0ac2ad938963b6c6d1af25477d5b8b51', '8d4683aacaa997ab86b966b464360338', '代码生成按钮', NULL, NULL, NULL, NULL, 2, 'online:goGenerateCode', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-06-11 14:20:09', NULL, NULL, 0, 0, '1', NULL),
('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', 0, 0, NULL, NULL),
('1166535831146504193', '2a470fc0c3954d9dbb61de6d80846549', '对象存储', '/oss/file', 'modules/oss/OSSFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, '', 1, 1, 0, 0, NULL, 'admin', '2019-08-28 02:19:50', 'admin', '2019-08-28 02:20:57', 0, 0, '1', NULL),
('1170592628746878978', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理2', '/isystem/newPermissionList', 'system/NewPermissionList', NULL, NULL, 1, NULL, '1', 100.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-08 15:00:05', 'admin', '2019-12-25 09:58:18', 0, 0, '1', 0),
('1174506953255182338', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '职务管理', '/isystem/position', 'system/SysPositionList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 10:14:13', 'admin', '2019-09-19 10:15:22', 0, 0, '1', 0),
('1174590283938041857', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '通讯录', '/isystem/addressList', 'system/AddressList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-09-19 15:45:21', NULL, NULL, 0, 0, '1', 0),
('1192318987661234177', 'e41b69c57a941a3bbcce45032fe57605', '系统编码生成规则', '/isystem/fillRule', 'system/SysFillRuleList', NULL, NULL, 1, NULL, '1', 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:42:30', 0, 0, '1', 0),
('1205097455226462210', '', '大屏设计', '/big/screen', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.10, 0, 'area-chart', 1, 0, 0, 0, NULL, 'admin', '2019-12-12 20:09:58', 'admin', '2020-02-23 23:17:59', 0, 0, '1', 0),
('1205098241075453953', '1205097455226462210', '生产销售监控', '{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index1', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-12 20:13:05', 'admin', '2019-12-12 20:15:27', 0, 0, '1', 1),
('1205306106780364802', '1205097455226462210', '智慧物流监控', '{{ window._CONFIG[''domianURL''] }}/big/screen/templat/index2', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-13 09:59:04', 'admin', '2019-12-25 09:28:03', 0, 0, '1', 0),
('1209731624921534465', 'e41b69c57a941a3bbcce45032fe57605', '多数据源管理', '/isystem/dataSource', 'system/SysDataSourceList', NULL, NULL, 1, NULL, '1', 6.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-12-25 15:04:30', 'admin', '2020-02-23 22:43:37', 0, 0, '1', 0),
('1224641973866467330', 'e41b69c57a941a3bbcce45032fe57605', '系统编码校验规则', '/isystem/checkRule', 'system/SysCheckRuleList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-11-07 13:52:53', 'admin', '2020-02-23 22:43:05', 0, 0, '1', 0),
('1229674163694841857', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单ERP', '/online/cgformErpList/:code', 'modules/online/cgform/auto/erp/OnlCgformErpList', NULL, NULL, 1, NULL, '1', 5.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2020-02-18 15:49:00', 'admin', '2020-02-18 15:52:25', 0, 0, '1', 0),
('1236319333954482178', NULL, '销售管理', '/sale', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, 'money-collect', 1, 0, 0, 0, NULL, 'admin', '2020-03-07 23:54:33', NULL, NULL, 0, 0, '1', 0),
('1236319494499856386', '1236319333954482178', '订单管理', '/sale/order', 'teaching/TeachingOrderList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-03-07 23:55:11', NULL, NULL, 0, 0, '1', 0),
('1236542260197023745', NULL, '学生管理', '/student', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2020-03-08 14:40:23', NULL, NULL, 0, 0, '1', 0),
('1236542357244829698', '1236542260197023745', '学生列表', '/student/list', 'teaching/TeachingStudentList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-03-08 14:40:46', 'admin', '2020-03-08 14:40:59', 0, 0, '1', 0),
('1236617970584498178', '1236319333954482178', '营销活动', '/sale/activity', 'teaching/TeachingActivityList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2020-03-08 19:41:14', NULL, NULL, 0, 0, '1', 0),
('1249162576878370817', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '文件管理', '/isystem/file', 'system/SysFileList', NULL, NULL, 1, NULL, '1', 1.00, 0, 'folder', 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 10:29:01', 'jeecg', '2020-04-12 10:30:47', 0, 0, '1', 0),
('1249206567527260161', NULL, '作业管理', '/teaching/workList', 'teaching/TeachingWorkList', NULL, NULL, 0, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 13:23:49', NULL, NULL, 0, 0, '1', 0),
('1249217230806978561', '', '创作', '/create', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 0.10, 0, 'highlight', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-12 14:06:11', 'jeecg', '2020-04-12 21:37:20', 0, 0, '1', 0),
('1249217881238671362', '1249217230806978561', 'Scratch3.0', '{{ window._CONFIG[''webURL''] }}/scratch3/index.html?scene=create', 'layouts/IframePageView', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 14:08:46', 'jeecg', '2020-04-12 21:25:01', 0, 0, '1', 1),
('1249315662297042946', '', '个人中心', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, '1', 0.20, 0, 'user', 1, 0, 0, 0, NULL, 'jeecg', '2020-04-12 20:37:19', 'jeecg', '2020-04-12 21:01:53', 0, 0, '1', 0),
('1249316121405558786', '1249315662297042946', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:39:09', NULL, NULL, 0, 0, '1', 0),
('1249320110008307713', '1249315662297042946', '我的作业', '/account/mineWork', 'account/center/MineWorkList', NULL, NULL, 1, NULL, '1', 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:55:00', NULL, NULL, 0, 0, '1', 0),
('1249320400874901505', '1249315662297042946', '个人设置', '/account/settings/base', 'account/settings/Index', NULL, NULL, 1, NULL, '1', 3.00, 1, NULL, 1, 0, 0, 0, NULL, 'jeecg', '2020-04-12 20:56:09', 'jeecg', '2020-04-12 20:56:16', 0, 0, '1', 0),
('1249320532483772418', '1249320400874901505', '基本信息', '/account/settings/base', 'account/settings/BaseSetting', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 0, NULL, 'jeecg', '2020-04-12 20:56:40', NULL, NULL, 0, 0, '1', 0),
('13212d3416eb690c2e1d5033166ff47a', '2e42e3835c2b44ec9f7bc26c146ee531', '失败', '/result/fail', 'result/Error', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/base', 'account/settings/BaseSetting', NULL, NULL, 1, 'BaseSettings', NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, '2018-12-26 18:58:35', 'admin', '2019-03-20 12:57:31', 0, 0, NULL, NULL),
('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/roleUserList', 'system/RoleUserList', NULL, NULL, 1, NULL, NULL, 1.20, 0, 'team', 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:13:56', 'jeecg', '2020-04-12 23:03:18', 0, 0, NULL, 0),
('1a0811914300741f4e11838ff37a1d3a', '3f915b2769fc80648e92d04e84ca059d', '手机号禁用', NULL, NULL, NULL, NULL, 2, 'user:form:phone', '2', 1.00, 0, NULL, 0, 1, NULL, 0, NULL, 'admin', '2019-05-11 17:19:30', 'admin', '2019-05-11 18:00:22', 0, 0, '1', NULL),
('200006f0edf145a2b50eacca07585451', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（应用）', '/list/search/application', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:02:51', 'admin', '2019-02-12 14:14:01', 0, 0, NULL, NULL),
('22d6a3d39a59dd7ea9a30acfa6bfb0a5', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO动态表单', '/online/df/:table/:id', 'modules/online/cgform/auto/OnlineDynamicForm', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 0, 1, NULL, 1, NULL, 'admin', '2019-04-22 15:15:43', 'admin', '2019-04-30 18:18:26', 0, 0, NULL, NULL),
('265de841c58907954b8877fb85212622', '2a470fc0c3954d9dbb61de6d80846549', '图片拖拽排序', '/jeecg/imgDragSort', 'jeecg/ImgDragSort', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:43:08', 'admin', '2019-04-25 10:46:26', 0, 0, NULL, NULL),
('277bfabef7d76e89b33062b16a9a5020', 'e3c13679c73a4f829bcff2aba8fd68b1', '基础表单', '/form/base-form', 'form/BasicForm', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-26 17:02:08', 0, 0, NULL, NULL),
('2a470fc0c3954d9dbb61de6d80846549', '', '常见案例', '/jeecg', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 7.00, 0, 'qrcode', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:42', 0, 0, NULL, NULL),
('2aeddae571695cd6380f6d6d334d6e7d', 'f0675b52d89100ee88472b6800754a08', '布局统计报表', '/report/ArchivesStatisticst', 'jeecg/report/ArchivesStatisticst', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 18:32:48', NULL, NULL, 0, 0, NULL, NULL),
('2dbbafa22cda07fa5d169d741b81fe12', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '在线文档', '{{ window._CONFIG[''domianURL''] }}/doc.html', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 10:00:01', 'admin', '2019-03-23 19:44:43', 0, 0, NULL, NULL),
('2e42e3835c2b44ec9f7bc26c146ee531', '', '结果页', '/result', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'check-circle-o', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:56', 0, 0, NULL, NULL),
('339329ed54cf255e1f9392e84f136901', '2a470fc0c3954d9dbb61de6d80846549', 'helloworld', '/jeecg/helloworld', 'jeecg/helloworld', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-15 16:24:56', 0, 0, NULL, NULL),
('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/isystem/user', 'system/UserList', NULL, NULL, 1, NULL, NULL, 1.10, 0, 'idcard', 1, 0, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'jeecg', '2020-04-12 23:03:31', 0, 0, NULL, 0),
('3fac0d3c9cd40fa53ab70d4c583821f8', '2a470fc0c3954d9dbb61de6d80846549', '分屏', '/jeecg/splitPanel', 'jeecg/SplitPanel', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 16:27:06', NULL, NULL, 0, 0, NULL, NULL),
('4148ec82b6acd69f470bea75fe41c357', '2a470fc0c3954d9dbb61de6d80846549', '单表模型示例', '/jeecg/jeecgDemoList', 'jeecg/JeecgDemoList', 'DemoList', NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-28 15:57:30', 'admin', '2019-02-15 16:24:37', 0, 0, NULL, NULL),
('418964ba087b90a84897b62474496b93', '540a2936940846cb98114ffb0d145cb8', '查询表格', '/list/query-list', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('4356a1a67b564f0988a484f5531fd4d9', '2a470fc0c3954d9dbb61de6d80846549', '内嵌Table', '/jeecg/TableExpandeSub', 'jeecg/TableExpandeSub', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-04 22:48:13', NULL, NULL, 0, 0, NULL, NULL),
('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '部门管理', '/isystem/depart', 'system/DepartList', NULL, NULL, 1, NULL, NULL, 1.40, 0, 'cluster', 1, 1, 0, 0, NULL, 'admin', '2019-01-29 18:47:40', 'jeecg', '2020-04-12 23:04:43', 0, 0, NULL, 0),
('4875ebe289344e14844d8e3ea1edd73f', '', '详情页', '/profile', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, 0, 'profile', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:46:48', 0, 0, NULL, NULL),
('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', NULL, NULL, 1, 'BindingSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:01:20', NULL, NULL, 0, 0, NULL, NULL),
('4f84f9400e5e92c95f05b554724c2b58', '540a2936940846cb98114ffb0d145cb8', '角色列表', '/list/role-list', 'list/RoleList', NULL, NULL, 1, NULL, NULL, 4.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('53a9230444d33de28aa11cc108fb1dba', '5c8042bd6c601270b2bbd9b20bccc68b', '我的消息', '/isps/userAnnouncement', 'system/UserAnnouncementList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-19 10:16:00', 'admin', '2019-12-25 09:54:34', 0, 0, NULL, 0),
('54097c6a3cf50fad0793a34beff1efdf', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线表单', '/online/cgformList/:code', 'modules/online/cgform/auto/OnlCgformAutoList', NULL, NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-19 16:03:06', 'admin', '2019-04-30 18:19:03', 0, 0, NULL, NULL),
('540a2936940846cb98114ffb0d145cb8', '', '列表页', '/list', 'layouts/PageView', NULL, '/list/query-list', 0, NULL, NULL, 9.00, 0, 'table', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:20:20', 0, 0, NULL, NULL),
('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/isystem/permission', 'system/PermissionList', NULL, NULL, 1, NULL, NULL, 1.30, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-12-25 09:36:39', 0, 0, NULL, 0),
('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '日志管理', '/isystem/log', 'system/LogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, '', 1, 1, NULL, 0, NULL, NULL, '2018-12-26 10:11:18', 'admin', '2019-04-02 11:38:17', 0, 0, NULL, NULL),
('58b9204feaf07e47284ddb36cd2d8468', '2a470fc0c3954d9dbb61de6d80846549', '图片翻页', '/jeecg/imgTurnPage', 'jeecg/ImgTurnPage', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 11:36:42', NULL, NULL, 0, 0, NULL, NULL),
('5c2f42277948043026b7a14692456828', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '我的部门', '/isystem/departUserList', 'system/DepartUserList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-04-17 15:12:24', 'admin', '2019-12-25 09:35:26', 0, 0, NULL, 0),
('5c8042bd6c601270b2bbd9b20bccc68b', '', '消息中心', '/message', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 6.00, 0, 'message', 1, 0, NULL, 0, NULL, 'admin', '2019-04-09 11:05:04', 'admin', '2019-04-11 19:47:54', 0, 0, NULL, NULL),
('6531cf3421b1265aeeeabaab5e176e6d', 'e3c13679c73a4f829bcff2aba8fd68b1', '分步表单', '/form/step-form', 'form/stepForm/StepForm', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('655563cd64b75dcf52ef7bcdd4836953', '2a470fc0c3954d9dbb61de6d80846549', '图片预览', '/jeecg/ImagPreview', 'jeecg/ImagPreview', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-17 11:18:45', NULL, NULL, 0, 0, NULL, NULL),
('65a8f489f25a345836b7f44b1181197a', 'c65321e57b7949b7a975313220de0422', '403', '/exception/403', 'exception/403', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('6ad53fd1b220989a8b71ff482d683a5a', '2a470fc0c3954d9dbb61de6d80846549', '一对多Tab示例', '/jeecg/tablist/JeecgOrderDMainList', 'jeecg/tablist/JeecgOrderDMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-20 14:45:09', 'admin', '2019-02-21 16:26:21', 0, 0, NULL, NULL),
('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings/base', 'account/settings/Index', NULL, NULL, 1, NULL, NULL, 2.00, 1, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-19 09:41:05', 0, 0, NULL, NULL),
('700b7f95165c46cc7a78bf227aa8fed3', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '性能监控', '/monitor', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-04-02 11:34:34', 'admin', '2019-05-05 17:49:47', 0, 0, NULL, NULL),
('717f6bee46f44a3897eca9abd6e2ec44', '', '个人页', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'user', 1, 0, 0, 1, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-02-23 22:41:37', 0, 0, NULL, 0),
('73678f9daa45ed17a3674131b03432fb', '540a2936940846cb98114ffb0d145cb8', '权限列表', '/list/permission-list', 'list/PermissionList', NULL, NULL, 1, NULL, NULL, 5.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('7593c9e3523a17bca83b8d7fe8a34e58', '3f915b2769fc80648e92d04e84ca059d', '添加用户按钮', '', NULL, NULL, NULL, 2, 'user:add', '1', 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-16 11:20:33', 'admin', '2019-05-17 18:31:25', 0, 0, '1', NULL),
('7960961b0063228937da5fa8dd73d371', '2a470fc0c3954d9dbb61de6d80846549', 'JEditableTable示例', '/jeecg/JEditableTable', 'jeecg/JeecgEditableTableExample', NULL, NULL, 1, NULL, NULL, 2.10, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-22 15:22:18', 'admin', '2019-12-25 09:48:16', 0, 0, NULL, 0),
('7ac9eb9ccbde2f7a033cd4944272bf1e', '540a2936940846cb98114ffb0d145cb8', '卡片列表', '/list/card', 'list/CardList', NULL, NULL, 1, NULL, NULL, 7.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/sys/dataLog-list', 'system/DataLogList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-11 19:26:49', 'admin', '2019-03-12 11:40:47', 0, 0, NULL, NULL),
('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', NULL, NULL, 1, 'CustomSettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:00:46', NULL, '2018-12-26 21:13:25', 0, 0, NULL, NULL),
('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '服务器信息', '/monitor/SystemInfo', 'modules/monitor/SystemInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', 0, 0, NULL, NULL),
('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis监控', '/monitor/redis/info', 'modules/monitor/RedisInfo', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 13:11:33', 'admin', '2019-05-07 15:18:54', 0, 0, NULL, NULL),
('8d4683aacaa997ab86b966b464360338', 'e41b69c57a941a3bbcce45032fe57605', 'Online表单开发', '/online/cgform', 'modules/online/cgform/OnlCgformHeadList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 0, NULL, 0, NULL, 'admin', '2019-03-12 15:48:14', 'admin', '2019-06-11 14:19:17', 0, 0, NULL, NULL),
('8fb8172747a78756c11916216b8b8066', '717f6bee46f44a3897eca9abd6e2ec44', '工作台', '/dashboard/workplace', 'dashboard/Workplace', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:45:02', 0, 0, NULL, NULL),
('944abf0a8fc22fe1f1154a389a574154', '5c8042bd6c601270b2bbd9b20bccc68b', '消息管理', '/modules/message/sysMessageList', 'modules/message/SysMessageList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:27:53', 'admin', '2019-04-09 19:31:23', 0, 0, NULL, NULL),
('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/index', 'dashboard/Index', NULL, NULL, 0, NULL, NULL, 0.00, 0, 'home', 1, 1, 0, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2020-03-07 17:41:27', 0, 0, NULL, 0),
('97c8629abc7848eccdb6d77c24bb3ebb', '700b7f95165c46cc7a78bf227aa8fed3', '磁盘监控', '/monitor/Disk', 'modules/monitor/DiskMonitoring', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 14:30:06', 'admin', '2019-05-05 14:37:14', 0, 0, NULL, NULL),
('9a90363f216a6a08f32eecb3f0bf12a3', '2a470fc0c3954d9dbb61de6d80846549', '自定义组件', '/jeecg/SelectDemo', 'jeecg/SelectDemo', NULL, NULL, 1, NULL, NULL, 0.00, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-03-19 11:19:05', 'admin', '2019-12-25 09:47:04', 0, 0, NULL, 0),
('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', 0, 0, NULL, NULL),
('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', NULL, 1, NULL, NULL, 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-30 18:19:10', 0, 0, NULL, NULL),
('a400e4f4d54f79bf5ce160ae432231af', '2a470fc0c3954d9dbb61de6d80846549', '百度', 'http://www.baidu.com', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-29 19:44:06', 'admin', '2019-02-15 16:25:02', 0, 0, NULL, NULL),
('ae4fed059f67086fd52a73d913cf473d', '540a2936940846cb98114ffb0d145cb8', '内联编辑表格', '/list/edit-table', 'list/TableInnerEditList', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('aedbf679b5773c1f25e9f7b10111da73', '08e6b9dc3c04489c8e1ff2ce6f105aa4', 'SQL监控', '{{ window._CONFIG[''domianURL''] }}/druid/', 'layouts/IframePageView', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-01-30 09:43:22', 'admin', '2019-03-23 19:00:46', 0, 0, NULL, NULL),
('b1cb0a3fedf7ed0e4653cb5a229837ee', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '定时任务', '/isystem/QuartzJobList', 'system/QuartzJobList', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, NULL, '2019-01-03 09:38:52', 'admin', '2019-04-02 10:24:13', 0, 0, NULL, NULL),
('b3c824fc22bd953e2eb16ae6914ac8f9', '4875ebe289344e14844d8e3ea1edd73f', '高级详情页', '/profile/advanced', 'profile/advanced/Advanced', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('b4dfc7d5dd9e8d5b6dd6d4579b1aa559', 'c65321e57b7949b7a975313220de0422', '500', '/exception/500', 'exception/500', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-03 15:33:10', 'admin', '2019-04-03 15:34:48', 0, 0, NULL, NULL),
('c431130c0bc0ec71b0a5be37747bb36a', '2a470fc0c3954d9dbb61de6d80846549', '一对多JEditable', '/jeecg/JeecgOrderMainListForJEditableTable', 'jeecg/JeecgOrderMainListForJEditableTable', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-03-29 10:51:59', 'admin', '2019-04-04 20:09:39', 0, 0, NULL, NULL),
('c65321e57b7949b7a975313220de0422', NULL, '异常页', '/exception', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 8.00, NULL, 'warning', 1, 0, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('c6cf95444d80435eb37b2f9db3971ae6', '2a470fc0c3954d9dbb61de6d80846549', '数据回执模拟', '/jeecg/InterfaceTest', 'jeecg/InterfaceTest', NULL, NULL, 1, NULL, NULL, 6.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 16:02:23', 'admin', '2019-02-21 16:25:45', 0, 0, NULL, NULL),
('cc50656cf9ca528e6f2150eba4714ad2', '4875ebe289344e14844d8e3ea1edd73f', '基础详情页', '/profile/basic', 'profile/basic/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM信息', '/monitor/JvmInfo', 'modules/monitor/JvmInfo', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', 0, 0, NULL, NULL),
('d2bbf9ebca5a8fa2e227af97d2da7548', 'c65321e57b7949b7a975313220de0422', '404', '/exception/404', 'exception/404', NULL, NULL, 1, NULL, NULL, 2.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 4.00, 0, 'setting', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:52', 0, 0, NULL, NULL),
('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, NULL, 1.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('de13e0f6328c069748de7399fcc1dbbd', 'fb07ca05a3e13674dbf6d3245956da2e', '搜索列表（项目）', '/list/search/project', 'list/TableList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-12 14:01:40', 'admin', '2019-02-12 14:14:18', 0, 0, NULL, NULL),
('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', NULL, NULL, 1, 'annountCement', NULL, 6.00, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2019-01-02 17:23:01', NULL, '2019-01-02 17:31:23', 0, 0, NULL, NULL),
('e1979bb53e9ea51cecc74d86fd9d2f64', '2a470fc0c3954d9dbb61de6d80846549', 'PDF预览', '/jeecg/jeecgPdfView', 'jeecg/JeecgPdfView', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-25 10:39:35', NULL, NULL, 0, 0, NULL, NULL),
('e3c13679c73a4f829bcff2aba8fd68b1', '', '表单页', '/form', 'layouts/PageView', NULL, NULL, 0, NULL, NULL, 9.00, 0, 'form', 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:20:14', 0, 0, NULL, NULL),
('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 5.00, 0, 'cloud', 1, 0, NULL, 0, NULL, 'admin', '2019-03-08 10:43:10', 'admin', '2019-05-11 10:36:01', 0, 0, NULL, NULL),
('e5973686ed495c379d829ea8b2881fc6', 'e3c13679c73a4f829bcff2aba8fd68b1', '高级表单', '/form/advanced-form', 'form/advancedForm/AdvancedForm', NULL, NULL, 1, NULL, NULL, 3.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('e6bfd1fcabfd7942fdd05f076d1dad38', '2a470fc0c3954d9dbb61de6d80846549', '打印测试', '/jeecg/PrintDemo', 'jeecg/PrintDemo', NULL, NULL, 1, NULL, NULL, 3.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-19 15:58:48', 'admin', '2019-05-07 20:14:39', 0, 0, NULL, NULL),
('ebb9d82ea16ad864071158e0c449d186', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '分类字典', '/isys/category', 'system/SysCategoryList', NULL, NULL, 1, NULL, '1', 5.20, 0, NULL, 1, 1, 0, 0, NULL, 'admin', '2019-05-29 18:48:07', 'admin', '2020-02-23 22:45:33', 0, 0, '1', 0),
('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', NULL, NULL, 1, 'SecuritySettings', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 18:59:52', NULL, NULL, 0, 0, NULL, NULL),
('f0675b52d89100ee88472b6800754a08', '', '统计报表', '/report', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 1.00, 0, 'bar-chart', 1, 0, NULL, 0, NULL, 'admin', '2019-04-03 18:32:02', 'admin', '2019-05-19 18:34:13', 0, 0, NULL, NULL),
('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', NULL, NULL, 1, NULL, NULL, 5.00, 0, NULL, 1, 1, 0, 0, NULL, NULL, '2018-12-28 13:54:43', 'admin', '2020-02-23 22:45:25', 0, 0, NULL, 0),
('f23d9bfff4d9aa6b68569ba2cff38415', '540a2936940846cb98114ffb0d145cb8', '标准列表', '/list/basic-list', 'list/StandardList', NULL, NULL, 1, NULL, NULL, 6.00, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2018-12-25 20:34:38', NULL, NULL, 0, 0, NULL, NULL),
('f2849d3814fc97993bfc519ae6bbf049', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO复制表单', '/online/copyform/:code', 'modules/online/cgform/OnlCgformCopyList', NULL, NULL, 1, NULL, '1', 1.00, 0, NULL, 1, 1, 0, 1, NULL, 'admin', '2019-08-29 16:05:37', NULL, NULL, 0, 0, '1', NULL),
('f780d0d3083d849ccbdb1b1baee4911d', '5c8042bd6c601270b2bbd9b20bccc68b', '模板管理', '/modules/message/sysMessageTemplateList', 'modules/message/SysMessageTemplateList', NULL, NULL, 1, NULL, NULL, 1.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-09 11:50:31', 'admin', '2019-04-12 10:16:34', 0, 0, NULL, NULL),
('fb07ca05a3e13674dbf6d3245956da2e', '540a2936940846cb98114ffb0d145cb8', '搜索列表', '/list/search', 'list/search/SearchLayout', NULL, '/list/search/article', 1, NULL, NULL, 8.00, 0, NULL, 1, 0, NULL, 0, NULL, NULL, '2018-12-25 20:34:38', 'admin', '2019-02-12 15:09:13', 0, 0, NULL, NULL),
('fb367426764077dcf94640c843733985', '2a470fc0c3954d9dbb61de6d80846549', '一对多示例', '/jeecg/JeecgOrderMainList', 'jeecg/JeecgOrderMainList', NULL, NULL, 1, NULL, NULL, 2.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-02-15 16:24:11', 'admin', '2019-02-18 10:50:14', 0, 0, NULL, NULL),
('fba41089766888023411a978d13c0aa4', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO树表单列表', '/online/cgformTreeList/:code', 'modules/online/cgform/auto/OnlCgformTreeList', NULL, NULL, 1, NULL, '1', 9.00, 0, NULL, 1, 1, NULL, 1, NULL, 'admin', '2019-05-21 14:46:50', 'admin', '2019-06-11 13:52:52', 0, 0, '1', NULL),
('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '请求追踪', '/monitor/HttpTrace', 'modules/monitor/HttpTrace', NULL, NULL, 1, NULL, NULL, 4.00, 0, NULL, 1, 1, NULL, 0, NULL, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', 0, 0, NULL, NULL),
('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', NULL, NULL, 1, 'NotificationSettings', NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, '2018-12-26 19:02:05', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_permission_data_rule`
--

CREATE TABLE IF NOT EXISTS `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `status` varchar(3) DEFAULT NULL COMMENT '权限有效状态1有0否',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_permission_data_rule`
--

INSERT INTO `sys_permission_data_rule` (`id`, `permission_id`, `rule_name`, `rule_column`, `rule_conditions`, `rule_value`, `status`, `create_time`, `create_by`, `update_time`, `update_by`) VALUES
('32b62cb04d6c788d9d92e3ff5e66854e', '8d4683aacaa997ab86b966b464360338', '000', '00', '!=', '00', '1', '2019-04-02 18:36:08', 'admin', NULL, NULL),
('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 21:57:04', 'admin', NULL, NULL),
('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '1', '2018-01-29 22:26:20', 'admin', NULL, NULL),
('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '1', '2014-09-16 20:32:30', 'admin', NULL, NULL),
('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '1', '2014-09-16 20:47:57', 'admin', NULL, NULL),
('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like ''%张%'' or age > 10', '1', NULL, NULL, '2017-08-14 15:10:25', 'demo'),
('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like ''%test%'' or is_tree = ''Y''', '1', NULL, NULL, '2017-08-14 16:38:55', 'demo'),
('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '1', '2017-03-30 16:40:51', 'admin', NULL, NULL),
('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', '1', NULL, NULL, '2017-08-14 15:04:32', 'demo'),
('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '1', '2016-03-21 01:09:21', 'admin', NULL, NULL),
('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '1', '2016-03-21 01:10:15', 'admin', NULL, NULL),
('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2018-03-27 19:11:16', 'admin', NULL, NULL),
('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '1', '2018-03-27 19:20:01', 'admin', NULL, NULL),
('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '1', '2018-03-27 19:29:37', 'admin', NULL, NULL),
('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '1', '2018-08-06 14:45:01', 'admin', NULL, NULL),
('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '1', '2014-09-13 18:31:25', 'admin', NULL, NULL),
('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', '1', NULL, NULL, '2014-09-13 22:18:22', 'scott'),
('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '1', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', NULL, NULL),
('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', '1', NULL, NULL, '2017-08-14 16:43:45', 'demo'),
('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', '1', NULL, NULL, '2017-08-14 15:03:56', 'demo'),
('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '1', '2016-09-21 12:07:18', 'admin', NULL, NULL),
('53609e1854f4a87eb23ed23a18a1042c', '4148ec82b6acd69f470bea75fe41c357', '只看当前部门数据', 'sysOrgCode', '=', '#{sys_org_code}', '1', '2019-05-11 19:40:39', 'admin', '2019-05-11 19:40:50', 'admin'),
('a7d661ef5ac168b2b162420c6804dac5', '4148ec82b6acd69f470bea75fe41c357', '只看自己的数据', 'createBy', '=', '#{sys_user_code}', '1', '2019-05-11 19:19:05', 'admin', '2019-05-11 19:24:58', 'admin'),
('f852d85d47f224990147f2284c0c0005', NULL, '小于', 'test', '<=', '11', '1', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_position`
--

CREATE TABLE IF NOT EXISTS `sys_position` (
  `id` varchar(32) NOT NULL,
  `code` varchar(100) DEFAULT NULL COMMENT '职务编码',
  `name` varchar(100) DEFAULT NULL COMMENT '职务名称',
  `post_rank` varchar(2) DEFAULT NULL COMMENT '职级',
  `company_id` varchar(255) DEFAULT NULL COMMENT '公司id',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '组织机构编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_position`
--

INSERT INTO `sys_position` (`id`, `code`, `name`, `post_rank`, `company_id`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`) VALUES
('1185040064792571906', 'devleader', '研发部经理', '2', NULL, 'admin', '2019-10-18 11:49:03', 'admin', '2020-02-23 22:55:42', 'A01');

-- --------------------------------------------------------

--
-- 表的结构 `sys_quartz_job`
--

CREATE TABLE IF NOT EXISTS `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_quartz_job`
--

INSERT INTO `sys_quartz_job` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `job_class_name`, `cron_expression`, `parameter`, `description`, `status`) VALUES
('df26ecacf0f75d219d746750fe84bbee', NULL, NULL, 0, 'admin', '2019-01-19 15:09:41', 'org.jeecg.modules.quartz.job.SampleParamJob', '0/1 * * * * ?', 'scott', '带参测试 后台将每隔1秒执行输出日志', -1),
('a253cdfc811d69fa0efc70d052bc8128', 'admin', '2019-03-30 12:44:48', 0, 'admin', '2019-03-30 12:44:52', 'org.jeecg.modules.quartz.job.SampleJob', '0/1 * * * * ?', NULL, NULL, -1),
('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', 0, 'admin', '2019-04-11 19:49:49', 'org.jeecg.modules.message.job.SendMsgJob', '0/60 * * * * ?', NULL, NULL, -1),
('1235759397368586241', 'admin', '2020-03-06 10:49:34', 0, 'admin', '2020-03-06 22:30:32', 'org.jeecg.modules.wechat.job.ProcessWechatPayJob', '3/30 * * * * ? *', NULL, '30秒处理一次订单', -1);

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

CREATE TABLE IF NOT EXISTS `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) NOT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

--
-- 转存表中的数据 `sys_role`
--

INSERT INTO `sys_role` (`id`, `role_name`, `role_code`, `description`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('1236319727061430274', '开发调试', 'dev', NULL, 'admin', '2020-03-07 23:56:07', NULL, NULL),
('ee8626f80f7c2619917b6236f3a7f02b', '临时角色', 'test', '这是新建的临时角色123', NULL, '2018-12-20 10:59:04', 'admin', '2019-02-19 15:08:37'),
('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', NULL, '2018-12-21 18:03:39', 'admin', '2019-05-20 11:40:26');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_permission`
--

CREATE TABLE IF NOT EXISTS `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色权限表';

--
-- 转存表中的数据 `sys_role_permission`
--

INSERT INTO `sys_role_permission` (`id`, `role_id`, `permission_id`, `data_rule_ids`) VALUES
('00b0748f04d3ea52c8cfa179c1c9d384', '52b0cf022ac4187b2a70dfa4f8b2d940', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL),
('0d9d14bc66e9d5e99b0280095fdc8587', 'ee8626f80f7c2619917b6236f3a7f02b', '277bfabef7d76e89b33062b16a9a5020', NULL),
('0dec36b68c234767cd35466efef3b941', 'ee8626f80f7c2619917b6236f3a7f02b', '54dd5457a3190740005c1bfec55b1c34', NULL),
('115a6673ae6c0816d3f60de221520274', '21c5a3187763729408b40afb0d0fdfa8', '63b551e81c5956d5c861593d366d8c57', NULL),
('1236319684904480770', 'f6817f48af4fb3af11b9e8bf182f618b', '1236319333954482178', NULL),
('1236319684917063682', 'f6817f48af4fb3af11b9e8bf182f618b', '1236319494499856386', NULL),
('1236319773794365442', '1236319727061430274', '1367a93f2c410b169faa7abcbad2f77c', NULL),
('1236319773802754049', '1236319727061430274', '4f66409ef3bbd69c1d80469d6e2a885e', NULL),
('1236319773811142658', '1236319727061430274', '882a73768cfd7f78f3a37584f7299656', NULL),
('1236319773811142659', '1236319727061430274', 'ec8d607d0156e198b11853760319c646', NULL),
('1236319773815336961', '1236319727061430274', 'fedfbf4420536cacc0218557d263dfea', NULL),
('1236319773823725570', '1236319727061430274', '700b7f95165c46cc7a78bf227aa8fed3', NULL),
('1236319773827919873', '1236319727061430274', '9502685863ab87f0ad1134142788a385', NULL),
('1236319773827919874', '1236319727061430274', '9a90363f216a6a08f32eecb3f0bf12a3', NULL),
('1236319773827919875', '1236319727061430274', '1166535831146504193', NULL),
('1236319773836308481', '1236319727061430274', '1205098241075453953', NULL),
('1236319773840502786', '1236319727061430274', '1236319333954482178', NULL),
('1236319773840502787', '1236319727061430274', '1236319494499856386', NULL),
('1236319773840502788', '1236319727061430274', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL),
('1236319773840502789', '1236319727061430274', '078f9558cdeab239aecb2bda1a8ed0d1', NULL),
('1236319773853085697', '1236319727061430274', '0ac2ad938963b6c6d1af25477d5b8b51', NULL),
('1236319773857280002', '1236319727061430274', '1a0811914300741f4e11838ff37a1d3a', NULL),
('1236319773857280003', '1236319727061430274', '200006f0edf145a2b50eacca07585451', NULL),
('1236319773869862913', '1236319727061430274', '277bfabef7d76e89b33062b16a9a5020', NULL),
('1236319773869862914', '1236319727061430274', '2aeddae571695cd6380f6d6d334d6e7d', NULL),
('1236319773869862915', '1236319727061430274', '4148ec82b6acd69f470bea75fe41c357', NULL),
('1236319773869862916', '1236319727061430274', '418964ba087b90a84897b62474496b93', NULL),
('1236319773878251522', '1236319727061430274', '4356a1a67b564f0988a484f5531fd4d9', NULL),
('1236319773878251523', '1236319727061430274', '58857ff846e61794c69208e9d3a85466', NULL),
('1236319773878251524', '1236319727061430274', '655563cd64b75dcf52ef7bcdd4836953', NULL),
('1236319773878251525', '1236319727061430274', '65a8f489f25a345836b7f44b1181197a', NULL),
('1236319773886640129', '1236319727061430274', '7593c9e3523a17bca83b8d7fe8a34e58', NULL),
('1236319773886640130', '1236319727061430274', '841057b8a1bef8f6b4b20f9a618a7fa6', NULL),
('1236319773886640131', '1236319727061430274', '8d1ebd663688965f1fd86a2f0ead3416', NULL),
('1236319773886640132', '1236319727061430274', '8d4683aacaa997ab86b966b464360338', NULL),
('1236319773895028737', '1236319727061430274', '944abf0a8fc22fe1f1154a389a574154', NULL),
('1236319773895028738', '1236319727061430274', '9cb91b8851db0cf7b19d7ecc2a8193dd', NULL),
('1236319773895028739', '1236319727061430274', 'aedbf679b5773c1f25e9f7b10111da73', NULL),
('1236319773895028740', '1236319727061430274', 'b6bcee2ccc854052d3cc3e9c96d90197', NULL),
('1236319773895028741', '1236319727061430274', 'cc50656cf9ca528e6f2150eba4714ad2', NULL),
('1236319773903417346', '1236319727061430274', 'd86f58e7ab516d3bc6bfb1fe10585f97', NULL),
('1236319773903417347', '1236319727061430274', 'de13e0f6328c069748de7399fcc1dbbd', NULL),
('1236319773903417348', '1236319727061430274', 'f0675b52d89100ee88472b6800754a08', NULL),
('1236319773903417349', '1236319727061430274', 'f2849d3814fc97993bfc519ae6bbf049', NULL),
('1236319773911805954', '1236319727061430274', 'f780d0d3083d849ccbdb1b1baee4911d', NULL),
('1236319773911805955', '1236319727061430274', '1205097455226462210', NULL),
('1236319773911805956', '1236319727061430274', '3f915b2769fc80648e92d04e84ca059d', NULL),
('1236319773916000257', '1236319727061430274', '190c2b43bec6a5f7a4194a85db67d96a', NULL),
('1236319773916000258', '1236319727061430274', '54dd5457a3190740005c1bfec55b1c34', NULL),
('1236319773916000259', '1236319727061430274', '45c966826eeff4c99b8f8ebfe74511fc', NULL),
('1236319773928583169', '1236319727061430274', '1174506953255182338', NULL),
('1236319773932777474', '1236319727061430274', '1205306106780364802', NULL),
('1236319773932777475', '1236319727061430274', '109c78a583d4693ce2f16551b7786786', NULL),
('1236319773941166081', '1236319727061430274', '13212d3416eb690c2e1d5033166ff47a', NULL),
('1236319773941166082', '1236319727061430274', '5c2f42277948043026b7a14692456828', NULL),
('1236319773945360385', '1236319727061430274', '6531cf3421b1265aeeeabaab5e176e6d', NULL),
('1236319773945360386', '1236319727061430274', '6ad53fd1b220989a8b71ff482d683a5a', NULL),
('1236319773945360387', '1236319727061430274', '6e73eb3c26099c191bf03852ee1310a1', NULL),
('1236319773953748994', '1236319727061430274', 'ae4fed059f67086fd52a73d913cf473d', NULL),
('1236319773953748995', '1236319727061430274', 'b3c824fc22bd953e2eb16ae6914ac8f9', NULL),
('1236319773953748996', '1236319727061430274', 'd2bbf9ebca5a8fa2e227af97d2da7548', NULL),
('1236319773953748997', '1236319727061430274', 'fb367426764077dcf94640c843733985', NULL),
('1236319773953748998', '1236319727061430274', '7960961b0063228937da5fa8dd73d371', NULL),
('1236319773962137601', '1236319727061430274', '1174590283938041857', NULL),
('1236319773962137602', '1236319727061430274', '1192318987661234177', NULL),
('1236319773962137603', '1236319727061430274', '020b06793e4de2eee0007f603000c769', NULL),
('1236319773962137604', '1236319727061430274', '043780fa095ff1b2bec4dc406d76f023', NULL),
('1236319773962137605', '1236319727061430274', '05b3c82ddb2536a4a5ee1a4c46b5abef', NULL),
('1236319773962137606', '1236319727061430274', '0620e402857b8c5b605e1ad9f4b89350', NULL),
('1236319773970526209', '1236319727061430274', '2dbbafa22cda07fa5d169d741b81fe12', NULL),
('1236319773970526210', '1236319727061430274', '53a9230444d33de28aa11cc108fb1dba', NULL),
('1236319773970526211', '1236319727061430274', '8fb8172747a78756c11916216b8b8066', NULL),
('1236319773970526212', '1236319727061430274', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL),
('1236319773978914818', '1236319727061430274', 'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', NULL),
('1236319773978914819', '1236319727061430274', 'c431130c0bc0ec71b0a5be37747bb36a', NULL),
('1236319773978914820', '1236319727061430274', 'e1979bb53e9ea51cecc74d86fd9d2f64', NULL),
('1236319773978914821', '1236319727061430274', 'e5973686ed495c379d829ea8b2881fc6', NULL),
('1236319773978914822', '1236319727061430274', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL),
('1236319773987303425', '1236319727061430274', '024f1fd1283dc632458976463d8984e1', NULL),
('1236319773987303426', '1236319727061430274', '265de841c58907954b8877fb85212622', NULL),
('1236319773995692033', '1236319727061430274', '339329ed54cf255e1f9392e84f136901', NULL),
('1236319773999886337', '1236319727061430274', '4f84f9400e5e92c95f05b554724c2b58', NULL),
('1236319773999886338', '1236319727061430274', '58b9204feaf07e47284ddb36cd2d8468', NULL),
('1236319773999886339', '1236319727061430274', '8b3bff2eee6f1939147f5c68292a1642', NULL),
('1236319774008274946', '1236319727061430274', 'a400e4f4d54f79bf5ce160ae432231af', NULL),
('1236319774008274947', '1236319727061430274', 'd07a2c87a451434c99ab06296727ec4f', NULL),
('1236319774008274948', '1236319727061430274', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL),
('1236319774016663554', '1236319727061430274', 'fc810a2267dd183e4ef7c71cc60f4670', NULL),
('1236319774016663555', '1236319727061430274', '1224641973866467330', NULL),
('1236319774016663556', '1236319727061430274', '1229674163694841857', NULL),
('1236319774025052162', '1236319727061430274', '73678f9daa45ed17a3674131b03432fb', NULL),
('1236319774025052163', '1236319727061430274', 'e41b69c57a941a3bbcce45032fe57605', NULL),
('1236319774029246465', '1236319727061430274', 'f1cb187abf927c88b89470d08615f5ac', NULL),
('1236319774029246466', '1236319727061430274', 'ebb9d82ea16ad864071158e0c449d186', NULL),
('1236319774029246467', '1236319727061430274', '1209731624921534465', NULL),
('1236319774029246468', '1236319727061430274', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL),
('1236319774037635073', '1236319727061430274', '3fac0d3c9cd40fa53ab70d4c583821f8', NULL),
('1236319774037635074', '1236319727061430274', '5c8042bd6c601270b2bbd9b20bccc68b', NULL),
('1236319774037635075', '1236319727061430274', '97c8629abc7848eccdb6d77c24bb3ebb', NULL),
('1236319774037635076', '1236319727061430274', 'c6cf95444d80435eb37b2f9db3971ae6', NULL),
('1236319774046023681', '1236319727061430274', 'e08cb190ef230d5d4f03824198773950', NULL),
('1236319774046023682', '1236319727061430274', 'f23d9bfff4d9aa6b68569ba2cff38415', NULL),
('1236319774050217986', '1236319727061430274', '2a470fc0c3954d9dbb61de6d80846549', NULL),
('1236319774050217987', '1236319727061430274', '7ac9eb9ccbde2f7a033cd4944272bf1e', NULL),
('1236319774050217988', '1236319727061430274', '2e42e3835c2b44ec9f7bc26c146ee531', NULL),
('1236319774058606594', '1236319727061430274', '4875ebe289344e14844d8e3ea1edd73f', NULL),
('1236319774058606595', '1236319727061430274', 'c65321e57b7949b7a975313220de0422', NULL),
('1236319774071189505', '1236319727061430274', 'fb07ca05a3e13674dbf6d3245956da2e', NULL),
('1236319774071189506', '1236319727061430274', '22d6a3d39a59dd7ea9a30acfa6bfb0a5', NULL),
('1236319774071189507', '1236319727061430274', '54097c6a3cf50fad0793a34beff1efdf', NULL),
('1236319774079578114', '1236319727061430274', '540a2936940846cb98114ffb0d145cb8', NULL),
('1236319774079578115', '1236319727061430274', '717f6bee46f44a3897eca9abd6e2ec44', NULL),
('1236319774079578116', '1236319727061430274', '9fe26464838de2ea5e90f2367e35efa0', NULL),
('1236319774079578117', '1236319727061430274', 'e3c13679c73a4f829bcff2aba8fd68b1', NULL),
('1236319774087966721', '1236319727061430274', 'fba41089766888023411a978d13c0aa4', NULL),
('1236319774087966722', '1236319727061430274', '1170592628746878978', NULL),
('1236543084176465922', 'f6817f48af4fb3af11b9e8bf182f618b', '1236542260197023745', NULL),
('1236543084222603266', 'f6817f48af4fb3af11b9e8bf182f618b', '1236542357244829698', NULL),
('1236618023768272898', 'f6817f48af4fb3af11b9e8bf182f618b', '1236617970584498178', NULL),
('1236918387444826114', '1236319727061430274', '1236617970584498178', NULL),
('1236918387457409025', '1236319727061430274', '1236542260197023745', NULL),
('1236918387465797634', '1236319727061430274', '1236542357244829698', NULL),
('1249162649481773057', '1236319727061430274', '1249162576878370817', NULL),
('1249206651438505986', '1236319727061430274', '1249206567527260161', NULL),
('1249217981478342658', '1236319727061430274', '1249217230806978561', NULL),
('1249217981486731266', '1236319727061430274', '1249217881238671362', NULL),
('1249321530140921857', '1236319727061430274', '1249315662297042946', NULL),
('1249321530170281986', '1236319727061430274', '1249316121405558786', NULL),
('1249321530170281987', '1236319727061430274', '1249320110008307713', NULL),
('1249321530178670593', '1236319727061430274', '1249320400874901505', NULL),
('1249321530178670594', '1236319727061430274', '1249320532483772418', NULL),
('16ef8ed3865ccc6f6306200760896c50', 'ee8626f80f7c2619917b6236f3a7f02b', 'e8af452d8948ea49d37c934f5100ae6a', NULL),
('17ead5b7d97ed365398ab20009a69ea3', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e08cb190ef230d5d4f03824198773950', NULL),
('1ac1688ef8456f384091a03d88a89ab1', '52b0cf022ac4187b2a70dfa4f8b2d940', '693ce69af3432bd00be13c3971a57961', NULL),
('1af4babaa4227c3cbb830bc5eb513abb', 'ee8626f80f7c2619917b6236f3a7f02b', 'e08cb190ef230d5d4f03824198773950', NULL),
('1ba162bbc2076c25561f8622f610d5bf', 'ee8626f80f7c2619917b6236f3a7f02b', 'aedbf679b5773c1f25e9f7b10111da73', NULL),
('1fe4d408b85f19618c15bcb768f0ec22', '1750a8fb3e6d90cb7957c02de1dc8e59', '9502685863ab87f0ad1134142788a385', NULL),
('248d288586c6ff3bd14381565df84163', '52b0cf022ac4187b2a70dfa4f8b2d940', '3f915b2769fc80648e92d04e84ca059d', NULL),
('25f5443f19c34d99718a016d5f54112e', 'ee8626f80f7c2619917b6236f3a7f02b', '6e73eb3c26099c191bf03852ee1310a1', NULL),
('27489816708b18859768dfed5945c405', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9502685863ab87f0ad1134142788a385', NULL),
('296f9c75ca0e172ae5ce4c1022c996df', '646c628b2b8295fbdab2d34044de0354', '732d48f8e0abe99fe6a23d18a3171cd1', NULL),
('29fb4d37aa29b9fa400f389237cf9fe7', 'ee8626f80f7c2619917b6236f3a7f02b', '05b3c82ddb2536a4a5ee1a4c46b5abef', NULL),
('2c462293cbb0eab7e8ae0a3600361b5f', '52b0cf022ac4187b2a70dfa4f8b2d940', '9502685863ab87f0ad1134142788a385', NULL),
('2dc1a0eb5e39aaa131ddd0082a492d76', 'ee8626f80f7c2619917b6236f3a7f02b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL),
('2ea2382af618ba7d1e80491a0185fb8a', 'ee8626f80f7c2619917b6236f3a7f02b', 'f23d9bfff4d9aa6b68569ba2cff38415', NULL),
('2fcfa2ac3dcfadc7c67107dae9a0de6d', 'ee8626f80f7c2619917b6236f3a7f02b', '73678f9daa45ed17a3674131b03432fb', NULL),
('2fdaed22dfa4c8d4629e44ef81688c6a', '52b0cf022ac4187b2a70dfa4f8b2d940', 'aedbf679b5773c1f25e9f7b10111da73', NULL),
('300c462b7fec09e2ff32574ef8b3f0bd', '52b0cf022ac4187b2a70dfa4f8b2d940', '2a470fc0c3954d9dbb61de6d80846549', NULL),
('326181da3248a62a05e872119a462be1', 'ee8626f80f7c2619917b6236f3a7f02b', '3f915b2769fc80648e92d04e84ca059d', NULL),
('35ac7cae648de39eb56213ca1b649713', '52b0cf022ac4187b2a70dfa4f8b2d940', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL),
('37112f4d372541e105473f18da3dc50d', 'ee8626f80f7c2619917b6236f3a7f02b', 'a400e4f4d54f79bf5ce160ae432231af', NULL),
('37789f70cd8bd802c4a69e9e1f633eaa', 'ee8626f80f7c2619917b6236f3a7f02b', 'ae4fed059f67086fd52a73d913cf473d', NULL),
('381504a717cb3ce77dcd4070c9689a7e', 'ee8626f80f7c2619917b6236f3a7f02b', '4f84f9400e5e92c95f05b554724c2b58', NULL),
('3e563751942b0879c88ca4de19757b50', '1750a8fb3e6d90cb7957c02de1dc8e59', '58857ff846e61794c69208e9d3a85466', NULL),
('412e2de37a35b3442d68db8dd2f3c190', '52b0cf022ac4187b2a70dfa4f8b2d940', 'f1cb187abf927c88b89470d08615f5ac', NULL),
('4204f91fb61911ba8ce40afa7c02369f', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', NULL),
('439568ff7db6f329bf6dd45b3dfc9456', 'f6817f48af4fb3af11b9e8bf182f618b', '7593c9e3523a17bca83b8d7fe8a34e58', NULL),
('44b5a73541bcb854dd5d38c6d1fb93a1', 'ee8626f80f7c2619917b6236f3a7f02b', '418964ba087b90a84897b62474496b93', NULL),
('4d56ce2f67c94b74a1d3abdbea340e42', 'ee8626f80f7c2619917b6236f3a7f02b', 'd86f58e7ab516d3bc6bfb1fe10585f97', NULL),
('4f2fd4a190db856e21476de2704bbd99', 'f6817f48af4fb3af11b9e8bf182f618b', '1a0811914300741f4e11838ff37a1d3a', NULL),
('4faad8ff93cb2b5607cd3d07c1b624ee', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '70b8f33da5f39de1981bf89cf6c99792', NULL),
('57c0b3a547b815ea3ec8e509b08948b3', '1750a8fb3e6d90cb7957c02de1dc8e59', '3f915b2769fc80648e92d04e84ca059d', NULL),
('593ee05c4fe4645c7826b7d5e14f23ec', '52b0cf022ac4187b2a70dfa4f8b2d940', '8fb8172747a78756c11916216b8b8066', NULL),
('5affc85021fcba07d81c09a6fdfa8dc6', 'ee8626f80f7c2619917b6236f3a7f02b', '078f9558cdeab239aecb2bda1a8ed0d1', NULL),
('5fc194b709336d354640fe29fefd65a3', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9ba60e626bf2882c31c488aba62b89f0', NULL),
('6451dac67ba4acafb570fd6a03f47460', 'ee8626f80f7c2619917b6236f3a7f02b', 'e3c13679c73a4f829bcff2aba8fd68b1', NULL),
('6c43fd3f10fdaf2a0646434ae68709b5', 'ee8626f80f7c2619917b6236f3a7f02b', '540a2936940846cb98114ffb0d145cb8', NULL),
('71a5f54a90aa8c7a250a38b7dba39f6f', 'ee8626f80f7c2619917b6236f3a7f02b', '8fb8172747a78756c11916216b8b8066', NULL),
('75002588591820806', '16457350655250432', '5129710648430592', NULL),
('75002588604403712', '16457350655250432', '5129710648430593', NULL),
('75002588612792320', '16457350655250432', '40238597734928384', NULL),
('75002588625375232', '16457350655250432', '57009744761589760', NULL),
('75002588633763840', '16457350655250432', '16392452747300864', NULL),
('75002588637958144', '16457350655250432', '16392767785668608', NULL),
('75002588650541056', '16457350655250432', '16439068543946752', NULL),
('77277779875336192', '496138616573952', '5129710648430592', NULL),
('77277780043108352', '496138616573952', '5129710648430593', NULL),
('77277780055691264', '496138616573952', '15701400130424832', NULL),
('77277780064079872', '496138616573952', '16678126574637056', NULL),
('77277780072468480', '496138616573952', '15701915807518720', NULL),
('77277780076662784', '496138616573952', '15708892205944832', NULL),
('77277780085051392', '496138616573952', '16678447719911424', NULL),
('77277780089245696', '496138616573952', '25014528525733888', NULL),
('77277780097634304', '496138616573952', '56898976661639168', NULL),
('77277780135383040', '496138616573952', '40238597734928384', NULL),
('77277780139577344', '496138616573952', '45235621697949696', NULL),
('77277780147965952', '496138616573952', '45235787867885568', NULL),
('77277780156354560', '496138616573952', '45235939278065664', NULL),
('77277780164743168', '496138616573952', '43117268627886080', NULL),
('77277780168937472', '496138616573952', '45236734832676864', NULL),
('77277780181520384', '496138616573952', '45237010692050944', NULL),
('77277780189908992', '496138616573952', '45237170029465600', NULL),
('77277780198297600', '496138616573952', '57009544286441472', NULL),
('77277780206686208', '496138616573952', '57009744761589760', NULL),
('77277780215074816', '496138616573952', '57009981228060672', NULL),
('77277780219269120', '496138616573952', '56309618086776832', NULL),
('77277780227657728', '496138616573952', '57212882168844288', NULL),
('77277780236046336', '496138616573952', '61560041605435392', NULL),
('77277780244434944', '496138616573952', '61560275261722624', NULL),
('77277780257017856', '496138616573952', '61560480518377472', NULL),
('77277780265406464', '496138616573952', '44986029924421632', NULL),
('77277780324126720', '496138616573952', '45235228800716800', NULL),
('77277780332515328', '496138616573952', '45069342940860416', NULL),
('77277780340903937', '496138616573952', '5129710648430594', NULL),
('77277780349292544', '496138616573952', '16687383932047360', NULL),
('77277780357681152', '496138616573952', '16689632049631232', NULL),
('77277780366069760', '496138616573952', '16689745006432256', NULL),
('77277780370264064', '496138616573952', '16689883993083904', NULL),
('77277780374458369', '496138616573952', '16690313745666048', NULL),
('77277780387041280', '496138616573952', '5129710648430595', NULL),
('77277780395429888', '496138616573952', '16694861252005888', NULL),
('77277780403818496', '496138616573952', '16695107491205120', NULL),
('77277780412207104', '496138616573952', '16695243126607872', NULL),
('77277780420595712', '496138616573952', '75002207560273920', NULL),
('77277780428984320', '496138616573952', '76215889006956544', NULL),
('77277780433178624', '496138616573952', '76216071333351424', NULL),
('77277780441567232', '496138616573952', '76216264070008832', NULL),
('77277780449955840', '496138616573952', '76216459709124608', NULL),
('77277780458344448', '496138616573952', '76216594207870976', NULL),
('77277780466733056', '496138616573952', '76216702639017984', NULL),
('77277780475121664', '496138616573952', '58480609315524608', NULL),
('77277780483510272', '496138616573952', '61394706252173312', NULL),
('77277780491898880', '496138616573952', '61417744146370560', NULL),
('77277780496093184', '496138616573952', '76606430504816640', NULL),
('77277780504481792', '496138616573952', '76914082455752704', NULL),
('77277780508676097', '496138616573952', '76607201262702592', NULL),
('77277780517064704', '496138616573952', '39915540965232640', NULL),
('77277780525453312', '496138616573952', '41370251991977984', NULL),
('77277780538036224', '496138616573952', '45264987354042368', NULL),
('77277780546424832', '496138616573952', '45265487029866496', NULL),
('77277780554813440', '496138616573952', '45265762415284224', NULL),
('77277780559007744', '496138616573952', '45265886315024384', NULL),
('77277780567396352', '496138616573952', '45266070000373760', NULL),
('77277780571590656', '496138616573952', '41363147411427328', NULL),
('77277780579979264', '496138616573952', '41363537456533504', NULL),
('77277780588367872', '496138616573952', '41364927394353152', NULL),
('77277780596756480', '496138616573952', '41371711400054784', NULL),
('77277780605145088', '496138616573952', '41469219249852416', NULL),
('77277780613533696', '496138616573952', '39916171171991552', NULL),
('77277780621922304', '496138616573952', '39918482854252544', NULL),
('77277780630310912', '496138616573952', '41373430515240960', NULL),
('77277780718391296', '496138616573952', '41375330996326400', NULL),
('77277780722585600', '496138616573952', '63741744973352960', NULL),
('77277780730974208', '496138616573952', '42082442672082944', NULL),
('77277780739362816', '496138616573952', '41376192166629376', NULL),
('77277780747751424', '496138616573952', '41377034236071936', NULL),
('77277780756140032', '496138616573952', '56911328312299520', NULL),
('77277780764528640', '496138616573952', '41378916912336896', NULL),
('77277780768722944', '496138616573952', '63482475359244288', NULL),
('77277780772917249', '496138616573952', '64290663792906240', NULL),
('77277780785500160', '496138616573952', '66790433014943744', NULL),
('77277780789694464', '496138616573952', '42087054753927168', NULL),
('77277780798083072', '496138616573952', '67027338952445952', NULL),
('77277780806471680', '496138616573952', '67027909637836800', NULL),
('77277780810665985', '496138616573952', '67042515441684480', NULL),
('77277780823248896', '496138616573952', '67082402312228864', NULL),
('77277780827443200', '496138616573952', '16392452747300864', NULL),
('77277780835831808', '496138616573952', '16392767785668608', NULL),
('77277780840026112', '496138616573952', '16438800255291392', NULL),
('77277780844220417', '496138616573952', '16438962738434048', NULL),
('77277780852609024', '496138616573952', '16439068543946752', NULL),
('77277860062040064', '496138616573953', '5129710648430592', NULL),
('77277860070428672', '496138616573953', '5129710648430593', NULL),
('77277860078817280', '496138616573953', '40238597734928384', NULL),
('77277860091400192', '496138616573953', '43117268627886080', NULL),
('77277860099788800', '496138616573953', '57009744761589760', NULL),
('77277860112371712', '496138616573953', '56309618086776832', NULL),
('77277860120760320', '496138616573953', '44986029924421632', NULL),
('77277860129148928', '496138616573953', '5129710648430594', NULL),
('77277860141731840', '496138616573953', '5129710648430595', NULL),
('77277860150120448', '496138616573953', '75002207560273920', NULL),
('77277860158509056', '496138616573953', '58480609315524608', NULL),
('77277860162703360', '496138616573953', '76606430504816640', NULL),
('77277860171091968', '496138616573953', '76914082455752704', NULL),
('77277860179480576', '496138616573953', '76607201262702592', NULL),
('77277860187869184', '496138616573953', '39915540965232640', NULL),
('77277860196257792', '496138616573953', '41370251991977984', NULL),
('77277860204646400', '496138616573953', '41363147411427328', NULL),
('77277860208840704', '496138616573953', '41371711400054784', NULL),
('77277860213035009', '496138616573953', '39916171171991552', NULL),
('77277860221423616', '496138616573953', '39918482854252544', NULL),
('77277860225617920', '496138616573953', '41373430515240960', NULL),
('77277860234006528', '496138616573953', '41375330996326400', NULL),
('77277860242395136', '496138616573953', '63741744973352960', NULL),
('77277860250783744', '496138616573953', '42082442672082944', NULL),
('77277860254978048', '496138616573953', '41376192166629376', NULL),
('77277860263366656', '496138616573953', '41377034236071936', NULL),
('77277860271755264', '496138616573953', '56911328312299520', NULL),
('77277860313698304', '496138616573953', '41378916912336896', NULL),
('77277860322086912', '496138616573953', '63482475359244288', NULL),
('77277860326281216', '496138616573953', '64290663792906240', NULL),
('77277860334669824', '496138616573953', '66790433014943744', NULL),
('77277860343058432', '496138616573953', '42087054753927168', NULL),
('77277860347252736', '496138616573953', '67027338952445952', NULL),
('77277860351447041', '496138616573953', '67027909637836800', NULL),
('77277860359835648', '496138616573953', '67042515441684480', NULL),
('77277860364029952', '496138616573953', '67082402312228864', NULL),
('77277860368224256', '496138616573953', '16392452747300864', NULL),
('77277860372418560', '496138616573953', '16392767785668608', NULL),
('77277860376612865', '496138616573953', '16438800255291392', NULL),
('77277860385001472', '496138616573953', '16438962738434048', NULL),
('77277860389195776', '496138616573953', '16439068543946752', NULL),
('7750f9be48ee09cd561fce718219a3e2', 'ee8626f80f7c2619917b6236f3a7f02b', '882a73768cfd7f78f3a37584f7299656', NULL),
('7a5d31ba48fe3fb1266bf186dc5f7ba7', '52b0cf022ac4187b2a70dfa4f8b2d940', '58857ff846e61794c69208e9d3a85466', NULL),
('7d2ea745950be3357747ec7750c31c57', 'ee8626f80f7c2619917b6236f3a7f02b', '2a470fc0c3954d9dbb61de6d80846549', NULL),
('7de42bdc0b8c5446b7d428c66a7abc12', '52b0cf022ac4187b2a70dfa4f8b2d940', '54dd5457a3190740005c1bfec55b1c34', NULL),
('7e19d90cec0dd87aaef351b9ff8f4902', '646c628b2b8295fbdab2d34044de0354', 'f9d3f4f27653a71c52faa9fb8070fbe7', NULL),
('7f862c47003eb20e8bad05f506371f92', 'ee8626f80f7c2619917b6236f3a7f02b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL),
('83f704524b21b6a3ae324b8736c65333', 'ee8626f80f7c2619917b6236f3a7f02b', '7ac9eb9ccbde2f7a033cd4944272bf1e', NULL),
('84d32474316a43b01256d6644e6e7751', 'ee8626f80f7c2619917b6236f3a7f02b', 'ec8d607d0156e198b11853760319c646', NULL),
('8703a2410cddb713c33232ce16ec04b9', 'ee8626f80f7c2619917b6236f3a7f02b', '1367a93f2c410b169faa7abcbad2f77c', NULL),
('885c1a827383e5b2c6c4f8ca72a7b493', 'ee8626f80f7c2619917b6236f3a7f02b', '4148ec82b6acd69f470bea75fe41c357', NULL),
('8a60df8d8b4c9ee5fa63f48aeee3ec00', '1750a8fb3e6d90cb7957c02de1dc8e59', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL),
('8b1e326791375f325d3e6b797753b65e', 'ee8626f80f7c2619917b6236f3a7f02b', '2dbbafa22cda07fa5d169d741b81fe12', NULL),
('8ce1022dac4e558ff9694600515cf510', '1750a8fb3e6d90cb7957c02de1dc8e59', '08e6b9dc3c04489c8e1ff2ce6f105aa4', NULL),
('8d848ca7feec5b7ebb3ecb32b2c8857a', '52b0cf022ac4187b2a70dfa4f8b2d940', '4148ec82b6acd69f470bea75fe41c357', NULL),
('8eec2c510f1ac9c5eee26c041b1f00ca', 'ee8626f80f7c2619917b6236f3a7f02b', '58857ff846e61794c69208e9d3a85466', NULL),
('8f762ff80253f634b08cf59a77742ba4', 'ee8626f80f7c2619917b6236f3a7f02b', '9502685863ab87f0ad1134142788a385', NULL),
('903b790e6090414343502c6dc393b7c9', 'ee8626f80f7c2619917b6236f3a7f02b', 'de13e0f6328c069748de7399fcc1dbbd', NULL),
('90996d56357730e173e636b99fc48bea', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb07ca05a3e13674dbf6d3245956da2e', NULL),
('90e1c607a0631364eec310f3cc4acebd', 'ee8626f80f7c2619917b6236f3a7f02b', '4f66409ef3bbd69c1d80469d6e2a885e', NULL),
('9264104cee9b10c96241d527b2d0346d', '1750a8fb3e6d90cb7957c02de1dc8e59', '54dd5457a3190740005c1bfec55b1c34', NULL),
('980171fda43adfe24840959b1d048d4d', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', NULL),
('98f02353f91dd569e3c6b8fd6b4f4034', 'ee8626f80f7c2619917b6236f3a7f02b', '6531cf3421b1265aeeeabaab5e176e6d', NULL),
('9d8772c310b675ae43eacdbc6c7fa04a', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '1663f3faba244d16c94552f849627d84', NULL),
('9f8311ecccd44e079723098cf2ffe1cc', '1750a8fb3e6d90cb7957c02de1dc8e59', '693ce69af3432bd00be13c3971a57961', NULL),
('a098e2acc3f90316f161f6648d085640', 'ee8626f80f7c2619917b6236f3a7f02b', 'e6bfd1fcabfd7942fdd05f076d1dad38', NULL),
('a66feaaf128417ad762e946abccf27ec', 'ee8626f80f7c2619917b6236f3a7f02b', 'c6cf95444d80435eb37b2f9db3971ae6', NULL),
('a7ab87eac0f8fafa2efa4b1f9351923f', 'ee8626f80f7c2619917b6236f3a7f02b', 'fedfbf4420536cacc0218557d263dfea', NULL),
('abdc324a2df9f13ee6e73d44c6e62bc8', 'ee8626f80f7c2619917b6236f3a7f02b', 'f1cb187abf927c88b89470d08615f5ac', NULL),
('aefc8c22e061171806e59cd222f6b7e1', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e8af452d8948ea49d37c934f5100ae6a', NULL),
('b131ebeafcfd059f3c7e542606ea9ff5', 'ee8626f80f7c2619917b6236f3a7f02b', 'e5973686ed495c379d829ea8b2881fc6', NULL),
('b2b2dcfff6986d3d7f890ea62d474651', 'ee8626f80f7c2619917b6236f3a7f02b', '200006f0edf145a2b50eacca07585451', NULL),
('b495a46fa0e0d4637abe0db7fd12fe1a', 'ee8626f80f7c2619917b6236f3a7f02b', '717f6bee46f44a3897eca9abd6e2ec44', NULL),
('c8571839e6b14796e661f3e2843b80b6', 'ee8626f80f7c2619917b6236f3a7f02b', '45c966826eeff4c99b8f8ebfe74511fc', NULL),
('d37ad568e26f46ed0feca227aa9c2ffa', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', NULL),
('d3fe195d59811531c05d31d8436f5c8b', '1750a8fb3e6d90cb7957c02de1dc8e59', 'e8af452d8948ea49d37c934f5100ae6a', NULL),
('e258ca8bf7ee168b93bfee739668eb15', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb367426764077dcf94640c843733985', NULL),
('e339f7db7418a4fd2bd2c113f1182186', 'ee8626f80f7c2619917b6236f3a7f02b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', NULL),
('e3e922673f4289b18366bb51b6200f17', '52b0cf022ac4187b2a70dfa4f8b2d940', '45c966826eeff4c99b8f8ebfe74511fc', NULL),
('f17ab8ad1e71341140857ef4914ef297', '21c5a3187763729408b40afb0d0fdfa8', '732d48f8e0abe99fe6a23d18a3171cd1', NULL),
('fd86f6b08eb683720ba499f9d9421726', 'ee8626f80f7c2619917b6236f3a7f02b', '693ce69af3432bd00be13c3971a57961', NULL),
('fed41a4671285efb266cd404f24dd378', '52b0cf022ac4187b2a70dfa4f8b2d940', '00a2a0ae65cdca5e93209cdbde97cbe6', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_sms`
--

CREATE TABLE IF NOT EXISTS `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_sms`
--

INSERT INTO `sys_sms` (`id`, `es_title`, `es_type`, `es_receiver`, `es_param`, `es_content`, `es_send_time`, `es_send_status`, `es_send_num`, `es_result`, `remark`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
('402880e74dc2f361014dc2f8411e0001', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2015-06-05 17:06:01', '3', NULL, NULL, '认证失败错误的用户名或者密码', 'admin', '2015-06-05 17:05:59', 'admin', '2015-11-19 22:30:39'),
('402880ea533647b00153364e74770001', '发个问候', '3', 'admin', NULL, '你好', '2016-03-02 00:00:00', '2', NULL, NULL, NULL, 'admin', '2016-03-02 15:50:24', 'admin', '2018-07-05 19:53:01'),
('402880ee5a17e711015a17f3188e013f', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', NULL, '2', NULL, NULL, NULL, 'admin', '2017-02-07 17:41:31', 'admin', '2017-03-10 11:37:05'),
('402880f05ab649b4015ab64b9cd80012', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', NULL, NULL, NULL, 'admin', '2017-03-10 11:38:13', 'admin', '2017-07-31 17:24:54'),
('402880f05ab7b035015ab7c4462c0004', '消息推送测试333', '2', '411944058@qq.com', NULL, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', NULL, NULL, NULL, 'admin', '2017-03-10 18:29:37', NULL, NULL),
('402881f3646a472b01646a4a5af00001', '催办：HR审批', '3', 'admin', NULL, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-05 19:53:35', '2', NULL, NULL, NULL, 'admin', '2018-07-05 19:53:35', 'admin', '2018-07-07 13:45:24'),
('402881f3647da06c01647da43a940014', '催办：HR审批', '3', 'admin', NULL, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-09 14:04:32', '2', NULL, NULL, NULL, 'admin', '2018-07-09 14:04:32', 'admin', '2018-07-09 18:51:30');

-- --------------------------------------------------------

--
-- 表的结构 `sys_sms_template`
--

CREATE TABLE IF NOT EXISTS `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_sms_template`
--

INSERT INTO `sys_sms_template` (`id`, `template_name`, `template_code`, `template_type`, `template_content`, `template_test_json`, `create_time`, `create_by`, `update_time`, `update_by`) VALUES
('1199606397416775681', '系统消息通知', 'sys_ts_note', '4', '<h1>&nbsp; &nbsp; 系统通知</h1>\n<ul>\n<li>通知时间：&nbsp; ${ts_date}</li>\n<li>通知内容：&nbsp; ${ts_content}</li>\n</ul>', NULL, '2019-11-27 16:30:27', 'admin', '2019-11-27 19:36:50', 'admin'),
('1199615897335095298', '流程催办', 'bpm_cuiban', '4', '<h1>&nbsp; &nbsp;流程催办提醒</h1>\n<ul>\n<li>流程名称：&nbsp; ${bpm_name}</li>\n<li>催办任务：&nbsp; ${bpm_task}</li>\n<li>催办时间 :&nbsp; &nbsp; ${datetime}</li>\n<li>催办内容 :&nbsp; &nbsp; ${remark}</li>\n</ul>', NULL, '2019-11-27 17:08:12', 'admin', '2019-11-27 19:36:45', 'admin'),
('1199648914107625473', '流程办理超时提醒', 'bpm_chaoshi_tip', '4', '<h1>&nbsp; &nbsp;流程办理超时提醒</h1>\n<ul>\n<li>&nbsp; &nbsp;超时提醒信息：&nbsp; &nbsp; 您有待处理的超时任务，请尽快处理！</li>\n<li>&nbsp; &nbsp;超时任务标题：&nbsp; &nbsp; ${title}</li>\n<li>&nbsp; &nbsp;超时任务节点：&nbsp; &nbsp; ${task}</li>\n<li>&nbsp; &nbsp;任务处理人：&nbsp; &nbsp; &nbsp; &nbsp;${user}</li>\n<li>&nbsp; &nbsp;任务开始时间：&nbsp; &nbsp; ${time}</li>\n</ul>', NULL, '2019-11-27 19:19:24', 'admin', '2019-11-27 19:36:37', 'admin'),
('4028608164691b000164693108140003', '催办：${taskName}', 'SYS001', '3', '${userName}，您好！\r\n请前待办任务办理事项！${taskName}\r\n\r\n\r\n===========================\r\n此消息由系统发出', '{\r\n"taskName":"HR审批",\r\n"userName":"admin"\r\n}', '2018-07-05 14:46:18', 'admin', '2018-07-05 18:31:34', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `sys_user`
--

CREATE TABLE IF NOT EXISTS `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0-默认未知,1-男,2-女)',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `org_code` varchar(64) DEFAULT NULL COMMENT '机构编码',
  `status` tinyint(1) DEFAULT NULL COMMENT '性别(1-正常,2-冻结)',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT '删除状态(0-正常,1-已删除)',
  `activiti_sync` tinyint(1) DEFAULT NULL COMMENT '同步工作流引擎(1-同步,0-不同步)',
  `work_no` varchar(100) DEFAULT NULL COMMENT '工号，唯一键',
  `post` varchar(100) DEFAULT NULL COMMENT '职务，关联职务表',
  `telephone` varchar(45) DEFAULT NULL COMMENT '座机号',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `identity` tinyint(1) DEFAULT NULL COMMENT '身份（1普通成员 2上级）',
  `depart_ids` longtext COMMENT '负责部门'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

--
-- 转存表中的数据 `sys_user`
--

INSERT INTO `sys_user` (`id`, `username`, `realname`, `password`, `salt`, `avatar`, `birthday`, `sex`, `email`, `phone`, `org_code`, `status`, `del_flag`, `activiti_sync`, `work_no`, `post`, `telephone`, `create_by`, `create_time`, `update_by`, `update_time`, `identity`, `depart_ids`) VALUES
('a75d45a015c44384a04449ee80dc3503', 'jeecg', 'jeecg', '3dd8371f3cf8240e', 'vDDkDzrK', 'user/20190220/e1fe9925bc315c60addea1b98eb1cb1349547719_1550656892940.jpg', '2020-04-12 00:00:00', 1, '858134843@qq.com', '17721211032', 'A01', 1, 0, 1, '001', '', NULL, 'admin', '2019-02-13 16:02:36', 'jeecg', '2020-04-12 23:00:07', 2, 'c6d7cb4deeac411cb3384b1b31278596'),
('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'cb362cfeefbf3d8d', 'RCGTeGiH', 'temp/11_1582468686154.jpg', '2018-12-05 00:00:00', 1, '11@qq.com', '18566666661', 'A01', 1, 0, 1, '111', '', NULL, NULL, '2038-06-21 17:54:10', 'admin', '2020-02-23 22:44:00', 2, 'c6d7cb4deeac411cb3384b1b31278596');

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_agent`
--

CREATE TABLE IF NOT EXISTS `sys_user_agent` (
  `id` varchar(32) NOT NULL COMMENT '序号',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `agent_user_name` varchar(100) DEFAULT NULL COMMENT '代理人用户名',
  `start_time` datetime DEFAULT NULL COMMENT '代理开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '代理结束时间',
  `status` varchar(2) DEFAULT NULL COMMENT '状态0无效1有效',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_name` varchar(50) DEFAULT NULL COMMENT '更新人名称',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `sys_company_code` varchar(50) DEFAULT NULL COMMENT '所属公司'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户代理人设置';

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_depart`
--

CREATE TABLE IF NOT EXISTS `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_user_depart`
--

INSERT INTO `sys_user_depart` (`ID`, `user_id`, `dep_id`) VALUES
('0c42ba309c2c4cad35836ec2336676fa', '42d153bffeea74f72a9c1697874fa4a7', '6d35e179cd814e3299bd588ea7daed3f'),
('1248513528752336898', 'a75d45a015c44384a04449ee80dc3503', 'c6d7cb4deeac411cb3384b1b31278596'),
('1f3a0267811327b9eca86b0cc2b956f3', 'bcbe1290783a469a83ae3bd8effe15d4', '5159cde220114246b045e574adceafe9'),
('1231590533597499393', 'e9ca23d68d884d4ebb19d07889727dae', 'c6d7cb4deeac411cb3384b1b31278596'),
('ac52f23ae625eb6560c9227170b88166', 'f0019fdebedb443c98dcb17d88222c38', '57197590443c44f083d42ae24ef26a2c'),
('179660a8b9a122f66b73603799a10924', 'f0019fdebedb443c98dcb17d88222c38', '67fc001af12a4f9b8458005d3f19934a');

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_role`
--

CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

--
-- 转存表中的数据 `sys_user_role`
--

INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`) VALUES
('b3ffd9311a1ca296c44e2409b547384f', '01b802058ea94b978a2c96f4807f6b48', '1'),
('0ede6d23d53bc7dc990346ff14faabee', '3db4cf42353f4e868b7ccfeef90505d2', 'ee8626f80f7c2619917b6236f3a7f02b'),
('e78d210d24aaff48e0a736e2ddff4cdc', '3e177fede453430387a8279ced685679', 'ee8626f80f7c2619917b6236f3a7f02b'),
('f2922a38ba24fb53749e45a0c459adb3', '439ae3e9bcf7418583fcd429cadb1d72', '1'),
('f72c6190b0722e798147e73c776c6ac9', '439ae3e9bcf7418583fcd429cadb1d72', 'ee8626f80f7c2619917b6236f3a7f02b'),
('ee45d0343ecec894b6886effc92cb0b7', '4d8fef4667574b24a9ccfedaf257810c', 'f6817f48af4fb3af11b9e8bf182f618b'),
('be2639167ede09379937daca7fc3bb73', '526f300ab35e44faaed54a9fb0742845', 'ee8626f80f7c2619917b6236f3a7f02b'),
('79d66ef7aa137cfa9957081a1483009d', '9a668858c4c74cf5a2b25ad9608ba095', 'ee8626f80f7c2619917b6236f3a7f02b'),
('1248513527456296961', 'a75d45a015c44384a04449ee80dc3503', '1236319727061430274'),
('1248513527527600129', 'a75d45a015c44384a04449ee80dc3503', 'ee8626f80f7c2619917b6236f3a7f02b'),
('1248513527598903297', 'a75d45a015c44384a04449ee80dc3503', 'f6817f48af4fb3af11b9e8bf182f618b'),
('1231590533484253186', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b'),
('d2233e5be091d39da5abb0073c766224', 'f0019fdebedb443c98dcb17d88222c38', 'ee8626f80f7c2619917b6236f3a7f02b');

-- --------------------------------------------------------

--
-- 表的结构 `teaching_work`
--

CREATE TABLE IF NOT EXISTS `teaching_work` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) NOT NULL COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `course_id` varchar(32) DEFAULT NULL COMMENT '课程ID',
  `work_name` varchar(64) NOT NULL COMMENT '作业名',
  `work_type` varchar(32) NOT NULL COMMENT '作业类型',
  `work_file` varchar(32) NOT NULL COMMENT '作文文件',
  `work_cover` varchar(32) DEFAULT NULL COMMENT '作业封面',
  `view_num` int(11) NOT NULL DEFAULT '0' COMMENT '查看次数',
  `star_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `collect_num` int(11) NOT NULL DEFAULT '0' COMMENT '收藏次数',
  `del_flag` int(11) NOT NULL DEFAULT '0' COMMENT '删除标识'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teaching_work`
--

INSERT INTO `teaching_work` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `user_id`, `course_id`, `work_name`, `work_type`, `work_file`, `work_cover`, `view_num`, `star_num`, `collect_num`, `del_flag`) VALUES
('1249207980923822082', 'jeecg', '2020-04-12 13:29:26', 'jeecg', '2020-04-12 13:30:59', 'A01', 'e9ca23d68d884d4ebb19d07889727dae', NULL, '123', '1', '123', NULL, 1, 1, 1, 0),
('1249267730541785090', 'jeecg', '2020-04-12 21:54:55', 'jeecg', '2020-04-12 21:54:55', 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249335188527058945', '1249335189294616578', 0, 0, 0, 0),
('1249283608884809730', 'jeecg', '2020-04-12 18:29:57', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249283605948796930', NULL, 0, 0, 0, 0),
('1249284574480699394', 'jeecg', '2020-04-12 18:33:47', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, '忍者', '2', '1249284572001865729', NULL, 0, 0, 0, 0),
('1249285357716639746', 'jeecg', '2020-04-12 18:36:54', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249285356554817537', NULL, 0, 0, 0, 0),
('1249297577167032321', 'jeecg', '2020-04-12 19:25:27', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249297576437223425', NULL, 0, 0, 0, 0),
('1249327740042919938', 'jeecg', '2020-04-12 21:25:19', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249327738251952130', NULL, 0, 0, 0, 0),
('1249327817754984450', 'jeecg', '2020-04-12 21:25:37', NULL, NULL, 'A01', 'a75d45a015c44384a04449ee80dc3503', NULL, 'Scratch作品', '2', '1249327816664465409', NULL, 0, 0, 0, 0),
('1249358947245985794', 'test22', '2020-04-12 23:29:19', 'jeecg', '2020-04-12 23:40:56', 'A01', '42d153bffeea74f72a9c1697874fa4a7', NULL, '忍者', '2', '1249284572001865729', NULL, 0, 0, 0, 0),
('1249358947480866818', 'admin', '2020-04-12 23:29:19', NULL, NULL, 'A01', 'e9ca23d68d884d4ebb19d07889727dae', NULL, '忍者', '2', '1249284572001865729', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `teaching_work_comment`
--

CREATE TABLE IF NOT EXISTS `teaching_work_comment` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) DEFAULT NULL COMMENT '作业ID',
  `comment` varchar(512) NOT NULL COMMENT '评论内容',
  `nickname` varchar(32) DEFAULT NULL COMMENT '用户昵称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teaching_work_comment`
--

INSERT INTO `teaching_work_comment` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `work_id`, `comment`, `nickname`) VALUES
('15866693739930', 'jeecg', '2020-04-12 13:30:59', NULL, NULL, 'A01', '1249207980923822082', 'pinglun', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `teaching_work_correct`
--

CREATE TABLE IF NOT EXISTS `teaching_work_correct` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `work_id` varchar(32) DEFAULT NULL COMMENT '作业ID',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  `comment` varchar(512) DEFAULT NULL COMMENT '评语'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teaching_work_correct`
--

INSERT INTO `teaching_work_correct` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `work_id`, `score`, `comment`) VALUES
('1249208370612412418', 'jeecg', '2020-04-12 13:30:59', NULL, NULL, 'A01', '1249207980923822082', 99, '不错'),
('1249361835817013249', 'jeecg', '2020-04-12 23:40:48', NULL, NULL, 'A01', '1249358947245985794', 3, '哈哈哈');

-- --------------------------------------------------------

--
-- 表的结构 `test_demo`
--

CREATE TABLE IF NOT EXISTS `test_demo` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `age` int(32) DEFAULT NULL COMMENT '年龄',
  `descc` varchar(500) DEFAULT NULL COMMENT '描述',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `user_code` varchar(32) DEFAULT NULL COMMENT '用户编码',
  `file_kk` varchar(500) DEFAULT NULL COMMENT '附件',
  `top_pic` varchar(500) DEFAULT NULL COMMENT '头像'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `test_demo`
--

INSERT INTO `test_demo` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `sex`, `age`, `descc`, `birthday`, `user_code`, `file_kk`, `top_pic`) VALUES
('4028810c6aed99e1016aed9b31b40002', NULL, NULL, 'admin', '2019-10-19 15:37:27', 'jeecg', '2', 55, '5', '2019-05-15 00:00:00', NULL, '', ''),
('4028810c6b02cba2016b02cba21f0000', 'admin', '2019-05-29 16:53:48', 'admin', '2019-08-23 23:45:21', '张小红', '1', 8222, '8', '2019-04-01 00:00:00', NULL, '', ''),
('4028810c6b40244b016b4030a0e40001', 'admin', '2019-06-10 15:00:57', 'admin', '2019-08-23 23:42:49', '小芳', '2', 0, NULL, '2019-04-01 00:00:00', NULL, '', ''),
('fa1d1c249461498d90f405b94f60aae0', '', NULL, 'admin', '2019-05-15 12:30:28', '战三', '2', 222, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `test_order_main`
--

CREATE TABLE IF NOT EXISTS `test_order_main` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `order_code` varchar(32) DEFAULT NULL COMMENT '订单编码',
  `order_date` datetime DEFAULT NULL COMMENT '下单时间',
  `descc` varchar(100) DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `test_order_main`
--

INSERT INTO `test_order_main` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `order_code`, `order_date`, `descc`) VALUES
('402831816a38e7fd016a38e825c90003', 'admin', '2019-04-20 12:01:39', 'admin', '2019-08-23 23:43:17', '111333', '2019-04-20 00:00:00', '11'),
('4028810c6b40244b016b40686dfb0003', 'admin', '2019-06-10 16:01:54', 'admin', '2019-06-10 16:06:51', '1231', '2019-06-10 00:00:00', '123'),
('4028810c6b40244b016b4068ef890006', 'admin', '2019-06-10 16:02:27', 'admin', '2019-08-23 23:43:08', 'A001', '2019-06-10 00:00:00', '购买产品BOOT');

-- --------------------------------------------------------

--
-- 表的结构 `test_order_product`
--

CREATE TABLE IF NOT EXISTS `test_order_product` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `product_name` varchar(32) DEFAULT NULL COMMENT '产品名字',
  `price` double(32,0) DEFAULT NULL COMMENT '价格',
  `num` int(32) DEFAULT NULL COMMENT '数量',
  `descc` varchar(32) DEFAULT NULL COMMENT '描述',
  `order_fk_id` varchar(32) NOT NULL COMMENT '订单外键ID',
  `pro_type` varchar(32) DEFAULT NULL COMMENT '产品类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `test_order_product`
--

INSERT INTO `test_order_product` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `product_name`, `price`, `num`, `descc`, `order_fk_id`, `pro_type`) VALUES
('15665749852471', 'admin', '2019-08-23 23:43:08', NULL, NULL, '222', 222, 22, '', '4028810c6b40244b016b4068ef890006', '2'),
('15665749948861', 'admin', '2019-08-23 23:43:17', NULL, NULL, '333', 33, NULL, '', '402831816a38e7fd016a38e825c90003', ''),
('402831816a38e7fd016a38e7fdeb0001', 'admin', '2019-04-20 12:01:29', NULL, NULL, '笔记本', 100, 10, NULL, '402831816a38e7fd016a38e7fddf0000', NULL),
('402831816a38e7fd016a38e7fdf10002', 'admin', '2019-04-20 12:01:29', NULL, NULL, '显示器', 300, 1, NULL, '402831816a38e7fd016a38e7fddf0000', NULL),
('4028810c6b40244b016b40686e050004', 'admin', '2019-06-10 16:06:51', NULL, NULL, '123', 222, 123, '123', '4028810c6b40244b016b40686dfb0003', NULL),
('4028810c6b40244b016b406884080005', 'admin', '2019-08-23 23:43:17', NULL, NULL, '333', NULL, 33, '', '402831816a38e7fd016a38e825c90003', ''),
('4028810c6b40244b016b4068ef8f0007', 'admin', '2019-08-23 23:43:08', NULL, NULL, 'JEECG-BOOT开发平台', 10000, 1, '', '4028810c6b40244b016b4068ef890006', '1');

-- --------------------------------------------------------

--
-- 表的结构 `test_person`
--

CREATE TABLE IF NOT EXISTS `test_person` (
  `id` varchar(36) NOT NULL,
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sex` varchar(32) DEFAULT NULL COMMENT '性别',
  `name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext COMMENT '请假原因',
  `be_date` datetime DEFAULT NULL COMMENT '请假时间',
  `qj_days` int(11) DEFAULT NULL COMMENT '请假天数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `test_person`
--

INSERT INTO `test_person` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `sex`, `name`, `content`, `be_date`, `qj_days`) VALUES
('8ca668defdae47df8649a5477ae08b05', 'admin', '2019-04-12 09:51:37', NULL, NULL, '1', 'zhangdaiscott', 'dsdsd', '2019-04-12 00:00:00', 2);

-- --------------------------------------------------------

--
-- 表的结构 `wechat_user`
--

CREATE TABLE IF NOT EXISTS `wechat_user` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL COMMENT '关联用户ID',
  `open_id` varchar(32) DEFAULT NULL COMMENT 'openid',
  `union_id` varchar(32) DEFAULT NULL COMMENT 'unionid',
  `nickname` varchar(32) DEFAULT NULL COMMENT '微信昵称',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `province` varchar(32) DEFAULT NULL COMMENT '省份',
  `county` varchar(32) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(256) DEFAULT NULL COMMENT '头像',
  `qr_scene` int(11) DEFAULT NULL COMMENT '二维码场景',
  `qr_scene_str` varchar(32) DEFAULT NULL COMMENT '二维码场景',
  `group_id` int(11) DEFAULT NULL COMMENT '组ID',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `sys_org_code` varchar(64) DEFAULT NULL COMMENT '所属部门',
  `app_id` varchar(32) DEFAULT NULL COMMENT '微信APPID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wechat_user`
--

INSERT INTO `wechat_user` (`id`, `user_id`, `open_id`, `union_id`, `nickname`, `sex`, `city`, `province`, `county`, `headimgurl`, `qr_scene`, `qr_scene_str`, `group_id`, `create_by`, `create_time`, `update_by`, `update_time`, `sys_org_code`, `app_id`) VALUES
('1236921740769107969', NULL, 'oJgzvv5A0yUkNGprRqd7l4OhVJLg', 'ooKi0v9gOeFDqMA7e3hRi-7Mee9o', '创客*赵文栋', NULL, '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/LbPiaLiaWH3Zx4xXOicj9LLfviasiaHcj8Jj27ibbFCNmTbnAcPceA2IvecgbxIC0yD26wLxyDzj9EtiaZNicqnpfZ8iaNg/132', NULL, NULL, NULL, NULL, '2020-03-09 15:48:18', NULL, '2020-03-09 22:33:17', NULL, 'wx2154aa8b958db927'),
('1236926173020168194', NULL, 'oJgzvv2z2Ern6UccZy007CwPj7JU', 'ooKi0vweMEO8vi_4W3mvzDo8Vn8E', 'Evil Lord', NULL, '菏泽', '山东', '菏泽', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKGKnRsqeCd7Seuqt6vWKOicbQCkdGXSiaLYpPrm4pZwKWibTZdibpPia7hic7k3DQTjAlxIEX36lCicqD3g/132', NULL, NULL, NULL, NULL, '2020-03-09 16:05:55', 'admin', '2020-03-09 18:01:30', NULL, 'wx2154aa8b958db927'),
('1236943560297684994', '1236947419388825601', 'oJgzvv7Q58w_l7KSLSFz8xIlv_cM', 'ooKi0v9p1LOLeW1CDlex1i1Wvi6M', '程宇', NULL, '金山', '上海', '金山', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLUNenNGYxS1TIj3XDBTaIxk3UWQ78CiadVFvplFkeT1WqUNxZ5FZibfy3iaPGIpqXIibXNlXibcMIcUSw/132', NULL, NULL, NULL, NULL, '2020-03-09 17:15:00', NULL, '2020-03-09 17:30:20', NULL, 'wx2154aa8b958db927'),
('1236951423414030338', NULL, 'oJgzvv9UJ2T7e6a-pLR17ol3D0i8', 'ooKi0v5b01XJgrmCtAKCa0vsNiXU', '请假', NULL, '徐汇', '上海', '徐汇', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKQNUgjtVPmh2SjWGHghzSSPl0ONy26LfDfbWsSrNdecQXibv5A1YVjhgoTL8ON0WdDabcoibS0LdJw/132', NULL, NULL, NULL, NULL, '2020-03-09 17:46:15', NULL, '2020-03-09 17:46:56', NULL, 'wx2154aa8b958db927'),
('1237023690286288897', NULL, 'oJgzvv7XGJkPwZ1onrZ8vEFo5cfo', 'ooKi0v5qdNUy024SN4JBuDmg46Hw', '毓', NULL, '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83erFX7Vn1goXrtxOjJEx0VyUmRJ5DicicRaXoibBCNqibwvUFSicoFFA9reZXjWuiapoeicp1pOsGkuYicSUXg/132', NULL, NULL, NULL, NULL, '2020-03-09 22:33:25', NULL, NULL, NULL, 'wx2154aa8b958db927');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jeecg_monthly_growth_analysis`
--
ALTER TABLE `jeecg_monthly_growth_analysis`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jeecg_order_customer`
--
ALTER TABLE `jeecg_order_customer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jeecg_order_main`
--
ALTER TABLE `jeecg_order_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jeecg_order_ticket`
--
ALTER TABLE `jeecg_order_ticket`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jeecg_project_nature_income`
--
ALTER TABLE `jeecg_project_nature_income`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `onl_cgform_button`
--
ALTER TABLE `onl_cgform_button`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `index_formid` (`CGFORM_HEAD_ID`) USING BTREE,
  ADD KEY `index_button_code` (`BUTTON_CODE`) USING BTREE,
  ADD KEY `index_button_status` (`BUTTON_STATUS`) USING BTREE,
  ADD KEY `index_button_order` (`ORDER_NUM`) USING BTREE;

--
-- Indexes for table `onl_cgform_enhance_java`
--
ALTER TABLE `onl_cgform_enhance_java`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `index_fmid` (`CGFORM_HEAD_ID`) USING BTREE,
  ADD KEY `index_buttoncode` (`BUTTON_CODE`) USING BTREE,
  ADD KEY `index_status` (`ACTIVE_STATUS`) USING BTREE;

--
-- Indexes for table `onl_cgform_enhance_js`
--
ALTER TABLE `onl_cgform_enhance_js`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `index_fmid` (`CGFORM_HEAD_ID`) USING BTREE,
  ADD KEY `index_jstype` (`CG_JS_TYPE`) USING BTREE;

--
-- Indexes for table `onl_cgform_enhance_sql`
--
ALTER TABLE `onl_cgform_enhance_sql`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `index_formid` (`CGFORM_HEAD_ID`) USING BTREE;

--
-- Indexes for table `onl_cgform_field`
--
ALTER TABLE `onl_cgform_field`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `inex_table_id` (`cgform_head_id`) USING BTREE;

--
-- Indexes for table `onl_cgform_head`
--
ALTER TABLE `onl_cgform_head`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `index_onlineform_table_name` (`table_name`) USING BTREE,
  ADD KEY `index_form_templdate` (`form_template`) USING BTREE,
  ADD KEY `index_templdate_mobile` (`form_template_mobile`) USING BTREE,
  ADD KEY `index_onlineform_table_version` (`table_version`) USING BTREE;

--
-- Indexes for table `onl_cgform_index`
--
ALTER TABLE `onl_cgform_index`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_table_id` (`cgform_head_id`) USING BTREE;

--
-- Indexes for table `onl_cgreport_head`
--
ALTER TABLE `onl_cgreport_head`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `index_onlinereport_code` (`code`) USING BTREE;

--
-- Indexes for table `onl_cgreport_item`
--
ALTER TABLE `onl_cgreport_item`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_CGRHEAD_ID` (`cgrhead_id`) USING BTREE,
  ADD KEY `index_isshow` (`is_show`) USING BTREE,
  ADD KEY `index_order_num` (`order_num`) USING BTREE;

--
-- Indexes for table `onl_cgreport_param`
--
ALTER TABLE `onl_cgreport_param`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_cgrheadid` (`cgrhead_id`) USING BTREE;

--
-- Indexes for table `oss_file`
--
ALTER TABLE `oss_file`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_calendars`
--
ALTER TABLE `qrtz_calendars`
  ADD PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_fired_triggers`
--
ALTER TABLE `qrtz_fired_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE;

--
-- Indexes for table `qrtz_job_details`
--
ALTER TABLE `qrtz_job_details`
  ADD PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_locks`
--
ALTER TABLE `qrtz_locks`
  ADD PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_paused_trigger_grps`
--
ALTER TABLE `qrtz_paused_trigger_grps`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_scheduler_state`
--
ALTER TABLE `qrtz_scheduler_state`
  ADD PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  ADD KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE;

--
-- Indexes for table `sys_announcement`
--
ALTER TABLE `sys_announcement`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_category`
--
ALTER TABLE `sys_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_check_rule`
--
ALTER TABLE `sys_check_rule`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uni_sys_check_rule_code` (`rule_code`) USING BTREE;

--
-- Indexes for table `sys_data_log`
--
ALTER TABLE `sys_data_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sindex` (`data_table`,`data_id`) USING BTREE;

--
-- Indexes for table `sys_data_source`
--
ALTER TABLE `sys_data_source`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `sys_data_source_code_uni` (`code`) USING BTREE;

--
-- Indexes for table `sys_depart`
--
ALTER TABLE `sys_depart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_depart_parent_id` (`parent_id`) USING BTREE,
  ADD KEY `index_depart_depart_order` (`depart_order`) USING BTREE,
  ADD KEY `index_depart_org_code` (`org_code`) USING BTREE;

--
-- Indexes for table `sys_depart_permission`
--
ALTER TABLE `sys_depart_permission`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_depart_role`
--
ALTER TABLE `sys_depart_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_depart_role_permission`
--
ALTER TABLE `sys_depart_role_permission`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_group_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  ADD KEY `index_group_role_id` (`role_id`) USING BTREE,
  ADD KEY `index_group_per_id` (`permission_id`) USING BTREE;

--
-- Indexes for table `sys_depart_role_user`
--
ALTER TABLE `sys_depart_role_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_dict`
--
ALTER TABLE `sys_dict`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `indextable_dict_code` (`dict_code`) USING BTREE;

--
-- Indexes for table `sys_dict_item`
--
ALTER TABLE `sys_dict_item`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_table_dict_id` (`dict_id`) USING BTREE,
  ADD KEY `index_table_sort_order` (`sort_order`) USING BTREE,
  ADD KEY `index_table_dict_status` (`status`) USING BTREE;

--
-- Indexes for table `sys_file`
--
ALTER TABLE `sys_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filetag` (`file_tag`),
  ADD KEY `filename` (`file_name`);

--
-- Indexes for table `sys_fill_rule`
--
ALTER TABLE `sys_fill_rule`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uni_sys_fill_rule_code` (`rule_code`) USING BTREE;

--
-- Indexes for table `sys_log`
--
ALTER TABLE `sys_log`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_table_userid` (`userid`) USING BTREE,
  ADD KEY `index_logt_ype` (`log_type`) USING BTREE,
  ADD KEY `index_operate_type` (`operate_type`) USING BTREE,
  ADD KEY `index_log_type` (`log_type`) USING BTREE;

--
-- Indexes for table `sys_permission`
--
ALTER TABLE `sys_permission`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_prem_pid` (`parent_id`) USING BTREE,
  ADD KEY `index_prem_is_route` (`is_route`) USING BTREE,
  ADD KEY `index_prem_is_leaf` (`is_leaf`) USING BTREE,
  ADD KEY `index_prem_sort_no` (`sort_no`) USING BTREE,
  ADD KEY `index_prem_del_flag` (`del_flag`) USING BTREE,
  ADD KEY `index_menu_type` (`menu_type`) USING BTREE,
  ADD KEY `index_menu_hidden` (`hidden`) USING BTREE,
  ADD KEY `index_menu_status` (`status`) USING BTREE;

--
-- Indexes for table `sys_permission_data_rule`
--
ALTER TABLE `sys_permission_data_rule`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_fucntionid` (`permission_id`) USING BTREE;

--
-- Indexes for table `sys_position`
--
ALTER TABLE `sys_position`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_quartz_job`
--
ALTER TABLE `sys_quartz_job`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uniq_sys_role_role_code` (`role_code`) USING BTREE;

--
-- Indexes for table `sys_role_permission`
--
ALTER TABLE `sys_role_permission`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_group_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  ADD KEY `index_group_role_id` (`role_id`) USING BTREE,
  ADD KEY `index_group_per_id` (`permission_id`) USING BTREE;

--
-- Indexes for table `sys_sms`
--
ALTER TABLE `sys_sms`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index_type` (`es_type`) USING BTREE,
  ADD KEY `index_receiver` (`es_receiver`) USING BTREE,
  ADD KEY `index_sendtime` (`es_send_time`) USING BTREE,
  ADD KEY `index_status` (`es_send_status`) USING BTREE;

--
-- Indexes for table `sys_sms_template`
--
ALTER TABLE `sys_sms_template`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uniq_templatecode` (`template_code`) USING BTREE;

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `index_user_name` (`username`) USING BTREE,
  ADD UNIQUE KEY `uniq_sys_user_work_no` (`work_no`) USING BTREE,
  ADD KEY `index_user_status` (`status`) USING BTREE,
  ADD KEY `index_user_del_flag` (`del_flag`) USING BTREE;

--
-- Indexes for table `sys_user_agent`
--
ALTER TABLE `sys_user_agent`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uniq_username` (`user_name`) USING BTREE,
  ADD KEY `statux_index` (`status`) USING BTREE,
  ADD KEY `begintime_index` (`start_time`) USING BTREE,
  ADD KEY `endtime_index` (`end_time`) USING BTREE;

--
-- Indexes for table `sys_user_depart`
--
ALTER TABLE `sys_user_depart`
  ADD PRIMARY KEY (`ID`) USING BTREE,
  ADD KEY `index_depart_groupk_userid` (`user_id`) USING BTREE,
  ADD KEY `index_depart_groupkorgid` (`dep_id`) USING BTREE,
  ADD KEY `index_depart_groupk_uidanddid` (`user_id`,`dep_id`) USING BTREE;

--
-- Indexes for table `sys_user_role`
--
ALTER TABLE `sys_user_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index2_groupuu_user_id` (`user_id`) USING BTREE,
  ADD KEY `index2_groupuu_ole_id` (`role_id`) USING BTREE,
  ADD KEY `index2_groupuu_useridandroleid` (`user_id`,`role_id`) USING BTREE;

--
-- Indexes for table `teaching_work`
--
ALTER TABLE `teaching_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workName` (`work_name`),
  ADD KEY `courseId` (`course_id`),
  ADD KEY `userId` (`user_id`);

--
-- Indexes for table `teaching_work_comment`
--
ALTER TABLE `teaching_work_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workId` (`work_id`);

--
-- Indexes for table `teaching_work_correct`
--
ALTER TABLE `teaching_work_correct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workId` (`work_id`);

--
-- Indexes for table `test_demo`
--
ALTER TABLE `test_demo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `test_order_main`
--
ALTER TABLE `test_order_main`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `test_order_product`
--
ALTER TABLE `test_order_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `test_person`
--
ALTER TABLE `test_person`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `wechat_user`
--
ALTER TABLE `wechat_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wechat_user_open_id_uindex` (`open_id`),
  ADD KEY `wechat_user_union_id_index` (`union_id`),
  ADD KEY `wechat_user_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jeecg_monthly_growth_analysis`
--
ALTER TABLE `jeecg_monthly_growth_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `jeecg_project_nature_income`
--
ALTER TABLE `jeecg_project_nature_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- 限制导出的表
--

--
-- 限制表 `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- 限制表 `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- 限制表 `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- 限制表 `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- 限制表 `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
