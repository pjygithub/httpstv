-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-15 05:24:05
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `httpstv`
--
CREATE DATABASE IF NOT EXISTS `httpstv` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `httpstv`;

-- --------------------------------------------------------

--
-- 表的结构 `tvl_admin`
--
-- 创建时间： 2018-05-15 02:14:12
-- 最后更新： 2018-05-15 02:16:09
--

DROP TABLE IF EXISTS `tvl_admin`;
CREATE TABLE IF NOT EXISTS `tvl_admin` (
  `userid` int(2) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(8) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- 插入之前先把表清空（truncate） `tvl_admin`
--

TRUNCATE TABLE `tvl_admin`;
--
-- 转存表中的数据 `tvl_admin`
--

INSERT INTO `tvl_admin` (`userid`, `username`, `password`) VALUES
(1, 'admin', '0192023A7BBD73250516F069DF18B500');

-- --------------------------------------------------------

--
-- 表的结构 `tvl_area`
--
-- 创建时间： 2018-05-14 11:07:28
-- 最后更新： 2018-05-14 11:07:28
--

DROP TABLE IF EXISTS `tvl_area`;
CREATE TABLE IF NOT EXISTS `tvl_area` (
  `AID` int(3) NOT NULL COMMENT '分类ID',
  `AName` varchar(6) NOT NULL COMMENT '分类名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `tvl_area`
--

TRUNCATE TABLE `tvl_area`;
--
-- 转存表中的数据 `tvl_area`
--

INSERT INTO `tvl_area` (`AID`, `AName`) VALUES
(0, '未知'),
(1, '央视'),
(2, '卫视'),
(3, '数字'),
(6, '科教'),
(8, '高清'),
(11, '北京'),
(12, '天津'),
(13, '河北'),
(14, '山西'),
(15, '内蒙古'),
(21, '辽宁'),
(22, '吉林'),
(23, '黑龙江'),
(31, '上海'),
(32, '江苏'),
(33, '浙江'),
(34, '安徽'),
(35, '福建'),
(36, '江西'),
(37, '山东'),
(41, '河南'),
(42, '湖北'),
(43, '湖南'),
(44, '广东'),
(45, '广西'),
(46, '海南'),
(50, '重庆'),
(51, '四川'),
(52, '贵州'),
(53, '云南'),
(54, '西藏'),
(61, '陕西'),
(62, '甘肃'),
(63, '青海'),
(64, '宁夏'),
(65, '新疆'),
(71, '台湾'),
(81, '香港'),
(91, '澳门'),
(102, '美国'),
(110, '韩国'),
(120, '日本'),
(127, '新加坡'),
(140, '英国'),
(150, '法国'),
(160, '德国'),
(170, '俄罗斯'),
(180, '意大利'),
(190, '加拿大'),
(200, '澳大利亚'),
(210, '越南'),
(220, '泰国'),
(230, '马来西亚'),
(240, '印度尼西亚'),
(250, '菲律宾'),
(260, '卡塔尔半岛'),
(270, '奥地利'),
(280, '土耳其'),
(290, '西班牙'),
(300, '葡萄牙'),
(310, '荷兰'),
(320, '比利时'),
(330, '希腊'),
(340, '丹麦'),
(350, '瑞典'),
(360, '瑞士'),
(370, '波兰'),
(380, '芬兰'),
(390, '墨西哥'),
(400, '印度'),
(410, '阿联酋'),
(420, '科索沃'),
(430, '以色列'),
(450, '巴基斯坦'),
(470, '巴西'),
(480, '智利'),
(490, '阿根廷'),
(500, '捷克'),
(510, '挪威'),
(530, '哥伦比亚'),
(540, '斯洛伐克'),
(550, '沙特');

-- --------------------------------------------------------

--
-- 表的结构 `tvl_channel`
--
-- 创建时间： 2018-05-15 04:23:43
-- 最后更新： 2018-05-15 04:59:18
--

DROP TABLE IF EXISTS `tvl_channel`;
CREATE TABLE IF NOT EXISTS `tvl_channel` (
  `CHID` int(8) NOT NULL AUTO_INCREMENT COMMENT '频道ID',
  `CHName` varchar(20) NOT NULL COMMENT '频道名称',
  `CHIcon` varchar(255) NOT NULL COMMENT '频道台标路径',
  `CHLock` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否锁定频道（1为解锁，0为锁定）',
  `AID` varchar(3) NOT NULL COMMENT '频道地区ID',
  `CID` char(60) NOT NULL COMMENT '频道分类ID组',
  PRIMARY KEY (`CHID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='频道表';

--
-- 插入之前先把表清空（truncate） `tvl_channel`
--

TRUNCATE TABLE `tvl_channel`;
--
-- 转存表中的数据 `tvl_channel`
--

INSERT INTO `tvl_channel` (`CHID`, `CHName`, `CHIcon`, `CHLock`, `AID`, `CID`) VALUES
(0, '党建频道', '/img/icon/cctv/dangjian.png', 1, '1', '10'),
(1, 'CCTV-1综合频道', '/img/icon/cctv/cctv1.png', 1, '1', '101113'),
(2, 'CCTV-2财经频道', '/img/icon/cctv/cctv2.png', 1, '1', '111319'),
(3, 'CCTV-3综艺频道', '/img/icon/cctv/cctv3.png', 1, '1', '121329'),
(8, 'CCTV-4亚洲频道', '/img/icon/cctv/cctv4.png', 1, '1', '121323'),
(9, 'CCTV-4美洲频道', '/img/icon/cctv/cctv4m.png', 1, '1', '121323'),
(10, 'CCTV-4欧洲频道', '/img/icon/cctv/cctv4o.png', 1, '1', '121323'),
(11, 'CCTV-5体育频道', '/img/icon/cctv/cctv5.png', 1, '1', '121317'),
(12, 'CCTV-5体育赛事', '/img/icon/cctv/cctv5p.png', 1, '1', '1217'),
(13, 'CCTV-6电影频道', '/img/icon/cctv/cctv6.png', 1, '1', '121318'),
(14, 'CCTV-7军事农业', '/img/icon/cctv/cctv7.png', 1, '1', '1213'),
(15, 'CCTV-8电视剧', '/img/icon/cctv/cctv8.png', 1, '1', '121318'),
(16, 'CCTV-9中文记录', '/img/icon/cctv/cctv9.png', 1, '1', '121320'),
(17, 'CCTV-10科教频道', '/img/icon/cctv/cctv10.png', 1, '1', '121315'),
(18, 'CCTV-11戏曲频道', '/img/icon/cctv/cctv11.png', 1, '1', '121329');

-- --------------------------------------------------------

--
-- 表的结构 `tvl_class`
--
-- 创建时间： 2018-05-15 03:22:05
-- 最后更新： 2018-05-15 03:26:58
--

DROP TABLE IF EXISTS `tvl_class`;
CREATE TABLE IF NOT EXISTS `tvl_class` (
  `CID` varchar(2) NOT NULL COMMENT '分类ID',
  `CName` varchar(8) NOT NULL COMMENT '分类名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类表';

--
-- 插入之前先把表清空（truncate） `tvl_class`
--

TRUNCATE TABLE `tvl_class`;
--
-- 转存表中的数据 `tvl_class`
--

INSERT INTO `tvl_class` (`CID`, `CName`) VALUES
('10', '未归类'),
('11', '综合'),
('12', '央视'),
('13', '卫视'),
('14', '数字'),
('15', '科教'),
('16', '高清'),
('17', '体育'),
('18', '影视'),
('19', '财经'),
('20', '记录'),
('21', '新闻'),
('22', '动漫'),
('23', '国际'),
('24', '音乐'),
('25', '游戏'),
('26', '虎牙'),
('27', '爱奇艺'),
('28', '轮播'),
('29', '综艺');

-- --------------------------------------------------------

--
-- 表的结构 `tvl_url`
--
-- 创建时间： 2018-05-14 17:24:48
-- 最后更新： 2018-05-15 03:02:41
--

DROP TABLE IF EXISTS `tvl_url`;
CREATE TABLE IF NOT EXISTS `tvl_url` (
  `UID` int(8) NOT NULL AUTO_INCREMENT COMMENT '源ID',
  `CHID` char(8) NOT NULL COMMENT '源属频道ID',
  `UFrom` char(30) DEFAULT NULL COMMENT '源来处说明（15字内）',
  `UUrl` varchar(255) NOT NULL COMMENT '源直播地址（移动端）',
  `UPage` char(255) DEFAULT NULL COMMENT '非移动端播放页面',
  `ULife` tinyint(1) NOT NULL DEFAULT '1' COMMENT '源有效性（1为有效，0为无效）',
  `UDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '源记录时间（自记录）',
  `UHeader` text COMMENT '源请求头',
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='直播源表';

--
-- 插入之前先把表清空（truncate） `tvl_url`
--

TRUNCATE TABLE `tvl_url`;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
