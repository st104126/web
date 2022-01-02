-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 01 月 02 日 09:58
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `mis_team_20`
--

-- --------------------------------------------------------

--
-- 資料表結構 `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titleimg` int(11) NOT NULL,
  `slogan` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT current_timestamp(),
  `subtitle` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle_img` int(11) NOT NULL,
  `content` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opening_time` text COLLATE utf8_unicode_ci NOT NULL,
  `subimg1` int(11) NOT NULL,
  `subimg2` int(11) NOT NULL,
  `subimg3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `comments`
--

INSERT INTO `comments` (`id`, `user`, `comment`) VALUES
(1, '阿瑋', '上次我在這裡跟我朋友一起跨年看煙火～～今年無緣了，因為我要跟女朋友一起跨...'),
(2, '阿美', '這裡超美，但沒有我美！');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
