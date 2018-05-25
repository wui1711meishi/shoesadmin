-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-25 00:51:04
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
(1, 2, '{"name":"90b1OOOPIC42.jpg","url":"/api/banner/152717266401790b1OOOPIC42.jpg"}'),
(3, 3, '{"name":"6136128_161304007843_2.jpg","url":"/api/banner/15271798874286136128_161304007843_2.jpg"}'),
(4, 55, '{"name":"6608733_093335789000_2.jpg","url":"/api/banner/15271750775556608733_093335789000_2.jpg"}');

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
  `uid` int(5) NOT NULL,
  `cid` varchar(100) NOT NULL,
  `ordernumber` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `uid`, `cid`, `ordernumber`) VALUES
(2, 2, '1--2', 123456789),
(4, 1, '3--4', 123456789);

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
  `bigimg` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shoes`
--

INSERT INTO `shoes` (`id`, `name`, `ename`, `price`, `description`, `salecount`, `fine`, `discount`, `time`, `category`, `label`, `img`, `bigimg`) VALUES
(31, '乔丹运动鞋', 'jodan sprot shoes', 1999, '乔丹，不一样的感觉', 0, 'true', '168', '2018-05-23 06:52:50', '运动鞋', '高邦,气垫', '', NULL),
(43, '123', '123', 123, '123', 0, 'true', '3', '2018-05-24 09:24:16', '运动鞋', '高邦', '{"name":"11-1.jpg","url":"/api/images/152715385676911-1.jpg"}--{"name":"index_06.png","url":"./public/images/1527153856772index_06.png"}', NULL),
(44, '123', '123', 123, '1', 0, 'true', '2', '2018-05-24 10:47:37', '运动鞋', '高邦', '{"name":"11-1.jpg","url":"/api/images/152715885748911-1.jpg"}--{"name":"index_06.png","url":"/api/images/1527158857525index_06.png"}--{"name":"login_03.png","url":"/api/images/1527168556299login_03.png"}', NULL),
(45, '123', '123', 123, '123', 0, 'true', '1', '2018-05-24 13:31:19', '拖鞋', '内增高', '{"name":"11-1.jpg","url":"/api/images/152716867912111-1.jpg"}--{"name":"login_03.png","url":"/api/images/1527168679122login_03.png"}', NULL),
(48, '2', '2', 2, '2', 0, 'true', '2', '2018-05-24 13:52:09', '运动鞋', '高邦', '{"name":"6136128_161304007843_2.jpg","url":"/api/images/15271699296256136128_161304007843_2.jpg"}', NULL),
(49, '3', '1', 1, '1', 0, 'true', '1', '2018-05-24 13:57:04', '运动鞋', '高邦', '{"name":"6136128_161304007843_2.jpg","url":"/api/images/15271702247276136128_161304007843_2.jpg"}', '{"name":"90b1OOOPIC42.jpg","url":"/api/bigimages/152717146488890b1OOOPIC42.jpg"}');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `car`
--
ALTER TABLE `car`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
