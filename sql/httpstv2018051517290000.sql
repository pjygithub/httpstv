-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-15 08:43:58
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
-- 最后更新： 2018-05-15 08:21:24
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
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='频道表';

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
(18, 'CCTV-11戏曲频道', '/img/icon/cctv/cctv11.png', 1, '1', '121329'),
(19, 'CCTV-12社会与法', '/img/icon/cctv/cctv12.png', 1, '1', '1213'),
(20, 'CCTV-13新闻频道', '/img/icon/cctv/cctv13.png', 1, '1', '121321'),
(21, 'CCTV-14少儿频道', '/img/icon/cctv/cctv14.png', 1, '1', '121322'),
(22, 'CCTV-15音乐频道', '/img/icon/cctv/cctv15.png', 1, '1', '121324'),
(23, 'CCTV-9英文记录', '/img/icon/cctv/cctv9e.png', 1, '1', '121320'),
(24, 'CCTV-3D试验频道', '/img/icon/cctv/cctv3d.png', 1, '1', '1012'),
(25, 'CCTV电视指南', '/img/icon/cctv/tvg.png', 1, '1', '1214'),
(26, 'CCTV第一剧场', '/img/icon/cctv/cctvdiyijuchang.png', 1, '1', '1214'),
(27, 'CCTV发现之旅', '/img/icon/cctv/cctvfaxianzhilv.png', 1, '1', '1214'),
(28, 'CCTV风云剧场', '/img/icon/cctv/cctvfengyunjuchang.png', 1, '1', '1214'),
(29, 'CCTV风云音乐', '/img/icon/cctv/cctvfengyunyinyue.png', 1, '1', '1214'),
(30, 'CCTV风云足球', '/img/icon/cctv/cctvfengyunzuqiu.png', 1, '1', '1214'),
(31, 'CCTV高尔夫网球', '/img/icon/cctv/cctvgaoerfuwangqiu.png', 1, '1', '1214'),
(32, 'CCTV国防军事', '/img/icon/cctv/cctvguofangjunshi.png', 1, '1', '1214'),
(33, 'CCTV怀旧剧场', '/img/icon/cctv/cctvhuaijiujuchang.png', 1, '1', '1214'),
(34, 'CCTV老故事', '/img/icon/cctv/cctvlaogushi.png', 1, '1', '1214'),
(35, 'CCTV女性时尚', '/img/icon/cctv/cctvnvxingshishang.png', 1, '1', '1214'),
(36, 'CCTV世界地理', '/img/icon/cctv/cctvshijiedili.png', 1, '1', '1214'),
(37, 'CCTV卫生健康', '/img/icon/cctv/cctvweishengjiankang.png', 1, '1', '1214'),
(38, 'CCTV新科动漫', '/img/icon/cctv/cctvxinkedongman.png', 1, '1', '1214'),
(39, 'CCTV央视文化精品', '/img/icon/cctv/cctvyangshijingpin.png', 1, '1', '1214'),
(40, 'CCTV央视台球', '/img/icon/cctv/cctvyangshitaiqiu.png', 1, '1', '1214'),
(41, 'CCTV中学生', '/img/icon/cctv/cctvzhongxuesheng.png', 1, '1', '1214'),
(42, 'CGTN国际', '/img/icon/cctv/cgtn.png', 1, '1', '121323'),
(43, 'CGTN阿拉伯', '/img/icon/cctv/cgtnalabo.png', 1, '1', '1223'),
(44, 'CGTN俄罗斯', '/img/icon/cctv/cgtneluosi.png', 1, '1', '1223'),
(45, 'CGTN法语', '/img/icon/cctv/cgtnfayu.png', 1, '1', '1223'),
(46, 'CGTN记录频道', '/img/icon/cctv/cgtnjilu.png', 1, '1', '122023'),
(47, 'CGTN西班牙', '/img/icon/cctv/cgtnxibanya.png', 1, '1', '1223'),
(48, '新华中文', '/img/icon/cctv/xhchinese.png', 1, '1', '1221'),
(49, '新华英文', '/img/icon/cctv/xhenglish.png', 1, '1', '122123'),
(50, '中国教育电视台1', '/img/icon/cctv/cetv1.png', 1, '1', '1215'),
(51, '中国教育电视台2', '/img/icon/cctv/cetv2.png', 1, '1', '1215'),
(52, '中国教育电视台3', '/img/icon/cctv/cetv3.png', 1, '1', '1215'),
(53, '中国教育电视台4', '/img/icon/cctv/cetv4.png', 1, '1', '1215'),
(54, 'CHC家庭影院', '/img/icon/cctv/chcfamily.png', 1, '1', '1218'),
(55, 'CHC动作电影', '/img/icon/cctv/chcaction.png', 1, '1', '1218'),
(56, 'CHC高清电影', '/img/icon/cctv/chchd.png', 1, '1', '121418'),
(57, '中国气象频道', '/img/icon/cctv/chinawather.png', 1, '1', '12'),
(58, '中国交通频道', '/img/icon/cctv/zhongguojiaotong.png', 1, '1', '12'),
(59, '环球奇观', '/img/icon/cctv/cctvhuanqiuqiguan.png', 1, '1', '121420'),
(60, '书画频道', '/img/icon/cctv/cctvshuhua.png', 1, '1', '1214'),
(61, '央广健康', '/img/icon/cctv/yangguangjiankang.png', 1, '1', '1214'),
(62, '音像世界', '/img/icon/cctv/yinxiangshijie.png', 1, '1', '1214'),
(63, '北京卫视', '/img/icon/cabletv/beijingtv.png', 1, '2', '1113'),
(64, '北京卡酷动画', '/img/icon/cabletv/beijingkakutv.png', 1, '2', '1322'),
(65, '天津卫视', '/img/icon/cabletv/tianjingtv.png', 1, '2', '13'),
(66, '河北卫视', '/img/icon/cabletv/hebeitv.png', 1, '2', '13'),
(67, '山西卫视', '/img/icon/cabletv/sanxitv.png', 1, '2', '1113'),
(68, '内蒙古卫视', '/img/icon/cabletv/neimenggutv.png', 1, '2', '1113'),
(69, '辽宁卫视', '/img/icon/cabletv/liaoningtv.png', 1, '2', '1113'),
(70, '吉林卫视', '/img/icon/cabletv/jilintv.png', 1, '2', '1113'),
(71, '黑龙江卫视', '/img/icon/cabletv/heilongjiangtv.png', 1, '2', '1113'),
(72, '上海东方卫视', '/img/icon/cabletv/shanghaidongfangtv.png', 1, '2', '1113'),
(73, '上海炫动卡通', '/img/icon/cabletv/xuandongkatong.png', 1, '2', '1322'),
(74, '江苏卫视', '/img/icon/cabletv/jiangsutv.png', 1, '2', '1113'),
(75, '优漫卡通', '/img/icon/cabletv/youmankatong.png', 1, '2', '1322'),
(76, '浙江卫视', '/img/icon/cabletv/zhejiangtv.png', 1, '2', '1113'),
(77, '安徽卫视', '/img/icon/cabletv/anhuitv.png', 1, '2', '1113'),
(78, '福建卫视', '/img/icon/cabletv/fujiandongnantv.png', 1, '2', '1113'),
(79, '江西卫视', '/img/icon/cabletv/jiangxitv.png', 1, '2', '1113'),
(80, '山东卫视', '/img/icon/cabletv/shandongtv.png', 1, '2', '1113'),
(81, '山东教育电视台', '/img/icon/cabletv/shandongedutv.png', 1, '2', '1113'),
(82, '河南卫视', '/img/icon/cabletv/henantv.png', 1, '2', '1113'),
(83, '湖北卫视', '/img/icon/cabletv/hubeitv.png', 1, '2', '1113'),
(84, '湖南卫视', '/img/icon/cabletv/hunantv.png', 1, '2', '1113'),
(85, '湖南金鹰卡通', '/img/icon/cabletv/jinyingkatong.png', 1, '2', '1322'),
(86, '广东卫视', '/img/icon/cabletv/guangdongtv.png', 1, '2', '1113'),
(87, '广东嘉佳卡通', '/img/icon/cabletv/jiajiakatongtv.png', 1, '2', '1322'),
(88, '深圳卫视', '/img/icon/cabletv/shenzhentv.png', 1, '2', '1113'),
(89, '广西卫视', '/img/icon/cabletv/guangxitv.png', 1, '2', '1113'),
(90, '海南旅游卫视', '/img/icon/cabletv/lvyoutv.png', 1, '2', '1113'),
(91, '重庆卫视', '/img/icon/cabletv/chongqingtv.png', 1, '2', '1113'),
(92, '四川卫视', '/img/icon/cabletv/sichuantv.png', 1, '2', '1113'),
(93, '贵州卫视', '/img/icon/cabletv/guizhoutv.png', 1, '2', '1113'),
(94, '云南卫视', '/img/icon/cabletv/yunnantv.png', 1, '2', '1113'),
(95, '西藏卫视', '/img/icon/cabletv/xizangtv.png', 1, '2', '1113'),
(96, '陕西卫视', '/img/icon/cabletv/shanxitv.png', 1, '2', '1113'),
(97, '陕西农林频道', '/img/icon/cabletv/shanxinonglintv.png', 1, '2', '1113'),
(98, '甘肃卫视', '/img/icon/cabletv/gansutv.png', 1, '2', '1113'),
(99, '青海卫视', '/img/icon/cabletv/qinghaitv.png', 1, '2', '1113'),
(100, '宁夏卫视', '/img/icon/cabletv/ningxiatv.png', 1, '2', '1113'),
(101, '新疆卫视', '/img/icon/cabletv/xinjiangtv.png', 1, '2', '1113'),
(102, '兵团卫视', '/img/icon/cabletv/bintuantv.png', 1, '2', '13'),
(103, '延边卫视', '/img/icon/cabletv/yanbiantv.png', 1, '2', '13'),
(104, '南方卫视', '/img/icon/cabletv/nanfangtv.png', 1, '2', '13'),
(105, '三沙卫视', '/img/icon/cabletv/sanshatv.png', 1, '2', '13'),
(106, '海峡卫视', '/img/icon/cabletv/haixiatv.png', 1, '2', '13'),
(107, '厦门卫视', '/img/icon/cabletv/xiamentv.png', 1, '2', '13'),
(108, 'BTV纪实频道', '/img/icon/cabletv/btvjishi.png', 1, '2', '1320'),
(109, '黄河卫视', '/img/icon/cabletv/huanghetv.png', 1, '2', '13'),
(110, '内蒙古蒙语频道', '/img/icon/cabletv/neimenggumeng.png', 1, '2', '13'),
(112, '西藏藏语频道', '/img/icon/cabletv/xizangzangyu.png', 1, '2', '13'),
(113, '康巴卫视', '/img/icon/cabletv/kangbatv.png', 1, '2', '13'),
(114, '香港卫视', '/img/icon/other/hongkongtv.png', 1, '81', '1113'),
(115, '阳光卫视', '/img/icon/other/suntv.png', 1, '81', '13'),
(116, '潮商卫视', '/img/icon/other/chaoshangtv.png', 1, '81', '13'),
(117, '星空卫视', '/img/icon/other/startv.png', 1, '81', '13'),
(118, '凤凰卫视', '/img/icon/other/fenghuangtv.png', 1, '81', '13'),
(119, '翡翠台', '/img/icon/other/feicuitai.png', 1, '81', '13'),
(120, '翡翠台J2', '/img/icon/other/feicuij2.png', 1, '81', '10');

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
