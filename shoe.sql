-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-06-01 02:59:34
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoe`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `thumb` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`, `name`, `thumb`) VALUES
(1, 'admin', '123456', '管理员1号', '');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE `banner` (
  `id` int(5) NOT NULL,
  `sid` int(5) DEFAULT NULL,
  `img` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `banner`
--

INSERT INTO `banner` (`id`, `sid`, `img`) VALUES
(1, 2, '{"name":"banner.png","url":"/api/banner/1527217323262banner.png"}'),
(3, 3, '{"name":"banner2_02.png","url":"/api/banner/1527217337830banner2_02.png"}');

-- --------------------------------------------------------

--
-- 表的结构 `car`
--

CREATE TABLE `car` (
  `id` int(5) NOT NULL,
  `uid` int(5) NOT NULL,
  `sid` int(5) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` int(3) DEFAULT NULL,
  `count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `car`
--

INSERT INTO `car` (`id`, `uid`, `sid`, `color`, `size`, `count`) VALUES
(1, 2, 101, 'red', 41, 3),
(2, 2, 1011, 'red', 41, 3),
(3, 1, 1011, 'red', 41, 3),
(4, 1, 1011, 'red', 41, 3);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(5) NOT NULL,
  `ordernumber` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `num` int(3) NOT NULL,
  `sid` int(5) NOT NULL,
  `address` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `ordernumber`, `name`, `price`, `img`, `color`, `size`, `num`, `sid`, `address`) VALUES
(43, '1527698057706', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'blue', '43码', 2, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443'),
(44, '1527698132595', '打得过分鞋', 3999, '/api/images/1527216993319dss2123.png', 'green', '46码', 1, 47, '北京市  朝阳区    三里屯SOHO大厦A栋1002室     020004    李氏    151-3562-1434'),
(45, '1527698178018', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'blue', '43码', 2, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443'),
(46, '1527755466045', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'red', '41码', 1, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443'),
(47, '1527758154853', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'green', '41码', 2, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443'),
(48, '1527817772433', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'yellow', '43码', 2, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443'),
(49, '1527819329822', '迫使分鞋', 3666, '/api/images/1527216958056dss222222.png', 'red', '41码', 1, 46, '上海市  浦东区    金融中心大厦A栋1002室     020004    赵氏    151-3562-5443');

-- --------------------------------------------------------

--
-- 表的结构 `shoes`
--

CREATE TABLE `shoes` (
  `id` int(10) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `ename` varchar(1000) NOT NULL,
  `price` int(5) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `salecount` int(100) NOT NULL DEFAULT '0',
  `fine` varchar(10) NOT NULL DEFAULT 'false',
  `discount` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(1000) NOT NULL,
  `label` varchar(1000) NOT NULL,
  `img` char(255) NOT NULL,
  `bigimg` char(255) DEFAULT NULL,
  `hot` varchar(100) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shoes`
--

INSERT INTO `shoes` (`id`, `name`, `ename`, `price`, `description`, `salecount`, `fine`, `discount`, `time`, `category`, `label`, `img`, `bigimg`, `hot`) VALUES
(46, '迫使分鞋', 'Joan Sprot', 3666, '迫使分鞋迫使分鞋迫使分鞋迫使分鞋迫使分鞋迫使分鞋迫使分鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss222222.png","url":"/api/images/1527216958056dss222222.png"}--{"name":"dss222.png","url":"/api/images/1527216958064dss222.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(47, '打得过分鞋', 'Joan Sprot', 3999, '打得过分鞋打得过分鞋打得过分鞋打得过分鞋打得过分鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss2123.png","url":"/api/images/1527216993319dss2123.png"}--{"name":"dss2951.png","url":"/api/images/1527216993321dss2951.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(48, '耐克空军1号', 'Nike Air No1', 2600, 'Nike Air No1Nike Air No1Nike Air No1Nike Air No1', 0, 'false', '243', '2018-05-25 07:21:09', '运动鞋', '气垫', '{"name":"zza1.png","url":"/api/images/1527232869405zza1.png"}--{"name":"zza2.png","url":"/api/images/1527232869412zza2.png"}--{"name":"zza23.png","url":"/api/images/1527232869417zza23.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527232869422bigimg_03.png"}', 'true'),
(49, '鬼冢虎XV', 'Nike Air No1', 2600, 'Nike Air No1Nike Air No1Nike Air No1Nike Air No1', 0, 'false', '243', '2018-05-25 07:21:09', '运动鞋', '气垫', '{"name":"zza2.png","url":"/api/images/1527232869412zza2.png"}--{"name":"zza23.png","url":"/api/images/1527232869417zza23.png"}--{"name":"zza1.png","url":"/api/images/1527233115144zza1.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527232869422bigimg_03.png"}', 'true'),
(50, '巴黎世家Max', 'Nike Air No1', 2600, 'Nike Air No1Nike Air No1Nike Air No1Nike Air No1', 0, 'true', '243', '2018-05-25 07:21:09', '运动鞋', '气垫', '{"name":"zza23.png","url":"/api/images/1527232869417zza23.png"}--{"name":"zza1.png","url":"/api/images/1527233136069zza1.png"}--{"name":"zza2.png","url":"/api/images/1527233136115zza2.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527232869422bigimg_03.png"}', 'true'),
(51, '乔丹运动鞋', 'Joan Sprot', 1566, '乔丹运动鞋乔丹运动鞋乔丹运动鞋乔丹运动鞋乔丹运动鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss2369.png","url":"/api/images/1527216488650dss2369.png"}--{"name":"dss2456.png","url":"/api/images/1527216488677dss2456.png"}--{"name":"dss2654.png","url":"/api/images/1527216488681dss2654.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(52, '李宁休闲鞋', 'Joan Sprot', 389, '李宁休闲鞋李宁休闲鞋李宁休闲鞋李宁休闲鞋李宁休闲鞋李宁休闲鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss1.png","url":"/api/images/1527216578309dss1.png"}--{"name":"dss2.png","url":"/api/images/1527216578312dss2.png"}--{"name":"dss22.png","url":"/api/images/1527216578316dss22.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(53, '耐克鞋', 'Joan Sprot', 35666, '耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋耐克鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss21.png","url":"/api/images/1527216871955dss21.png"}--{"name":"dss2313.png","url":"/api/images/1527216871958dss2313.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(54, '阿迪达斯鞋', 'Joan Sprot', 99, '阿迪达斯鞋阿迪达斯鞋阿迪达斯鞋阿迪达斯鞋阿迪达斯鞋阿迪达斯鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss211.png","url":"/api/images/1527216900584dss211.png"}--{"name":"dss296.png","url":"/api/images/1527216900593dss296.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false'),
(55, '万行鞋', 'Joan Sprot', 756, '万行鞋万行鞋万行鞋万行鞋万行鞋万行鞋万行鞋万行鞋万行鞋', 0, 'false', '199', '2018-05-25 02:48:08', '运动鞋', '高邦', '{"name":"dss2753.png","url":"/api/images/1527216928392dss2753.png"}--{"name":"dss962.png","url":"/api/images/1527216928400dss962.png"}', '{"name":"bigimg_03.png","url":"/api/bigimages/1527216488708bigimg_03.png"}', 'false');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `user` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `collection` varchar(1000) NOT NULL,
  `information` varchar(3000) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `nickname`, `collection`, `information`, `img`) VALUES
(1, 'zhangsan', '123456', '张三', '101', '山西省太原市凯通大厦', ''),
(2, 'xiaoming', '666666', '小明', '102', '太原市凯通大厦二楼', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
