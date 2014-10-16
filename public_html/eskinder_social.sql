-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2014 at 07:42 AM
-- Server version: 5.5.38-35.2
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eskinder_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `albumid` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `pictureid` int(11) NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`albumid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `comment` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`messageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE IF NOT EXISTS `picture` (
  `pictureid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `filename` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filepath` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pictureid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `profileid` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `pictureid` int(11) NOT NULL,
  `aboutme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  PRIMARY KEY (`profileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `UserId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `profilepicture` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '../image/default-avatar.png',
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `occupation` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `hobby` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=63 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserId`, `username`, `email`, `password`, `firstname`, `lastname`, `about`, `time`, `profilepicture`, `address`, `occupation`, `hobby`, `height`) VALUES
(1, 'eskinder', 'eskinderget@gmail.com', '123001', 'Eskinder', 'Getahun', '', '2014-10-07 00:30:38', 'image/uploads/1.jpg', '', '', '', ''),
(6, 'esk', 'eskrock@yahoo.com', '', 'esk', 'get', '', '2014-05-04 01:07:50', 'image/uploads/6.jpg', '', '', '', ''),
(5, 'get', 'mail@hotmail.com', '', 'get', 'lstge', '', '2014-04-14 21:15:13', '../image/default-avatar.png', '', '', '', ''),
(9, 'Addis', 'saronde@gmail.com', '12340', 'Addis', 'Feleke', '', '2014-04-17 13:25:10', 'image/uploads/9.jpg', '', '', '', ''),
(10, 'gezahagne', 'eskinder@gmail.com', '123001', 'gezahagne', 'tote', '', '2014-04-16 02:08:22', '../image/default-avatar.png', '', '', '', ''),
(11, 'dave', 'davee@hotmail.com', 'tame', 'Dawit', 'Tamiru', '', '2014-04-20 02:43:00', 'image/uploads/11.png', '', '', '', ''),
(12, 'Aubrey', 'quaker@yahoo.com', 'YrZDJ', 'Aubrey', 'Durman', '', '2014-04-14 21:16:01', '../image/default-avatar.png', '', '', '', ''),
(13, 'William', 'friend35@hotmail.com', 'oEah00', 'William', 'Travor', '', '2014-04-14 21:16:09', '../image/default-avatar.png', '', '', '', ''),
(15, 'Patsy', 'Mail@city.go ', '123', 'Patsy', 'Bill', '', '2014-10-05 00:52:25', 'image/uploads/15.jpg', '1121 Oackland', 'Realtor', 'SkyDiving', '5-9'),
(16, 'unlove', 'goodsam@gmail.com', 'YzMMN', 'roosvelt', 'tucker', '', '2014-04-14 21:16:19', '../image/default-avatar.png', '', '', '', ''),
(17, 'sheena', 'sheena@mail.com', '12345', 'sheena', 'markov', '', '2014-05-18 09:33:07', 'image/uploads/17.jpg', '', '', '', ''),
(19, 'Luis', 'm@gmail.com', 'OPVme', 'Luis', 'KYwM', '', '2014-04-14 21:16:32', '../image/default-avatar.png', '', '', '', ''),
(18, 'Andrew', 'Andrew@yahoo.com', '12345', 'Andrew', 'Marcus', '', '2014-04-14 21:16:36', '../image/default-avatar.png', '', '', '', ''),
(20, 'Paige', 'heyje@msn.com', 'pass', 'Paige', 'Lee', '', '2014-04-14 21:16:40', '../image/default-avatar.png', '', '', '', ''),
(21, 'Serenity', 'coolman@msn.com', 'AXORs', 'Serenity', 'Tegz', '', '2014-04-14 21:16:44', '../image/default-avatar.png', '', '', '', ''),
(22, 'newuser', 'new@mail.com', 'pass', 'first', 'Last', '', '2014-04-14 21:16:49', '../image/default-avatar.png', '', '', '', ''),
(23, 'Ethan', 'dogkill@yahoo.com', 'PLisjg', 'Ethan', 'matt', '', '2014-04-14 21:16:55', '../image/default-avatar.png', '', '', '', ''),
(24, 'Solomon', 'solomon@yahoo.com', '1234', 'solomon', 'sengal', '', '2014-10-09 17:48:11', 'image/uploads/24.jpg', '', '', '', ''),
(25, 'Timothy', 'incomeppc@hotmail.com', '3E49D', 'Timothy', 'ApKQ', '', '2014-04-14 21:17:00', '../image/default-avatar.png', '', '', '', ''),
(26, 'Connor', 'rikky@aol.com', 'qHm1F', 'Connor', 'WHzb', '', '2014-04-14 21:17:04', '../image/default-avatar.png', '', '', '', ''),
(28, 'demo', 'demo@demo.com', 'demo', 'demo', 'demo', '', '2014-04-14 21:17:07', '../image/default-avatar.png', '', '', '', ''),
(29, 'testshit', 'test@gmail.com', 'testshit', 'test', 'test', '', '2014-05-04 13:17:28', 'image/uploads/29.jpg', '', '', '', ''),
(30, 'crypto', 'w3bariak@gmail.com', 'bariak145', 'Martin', 'Lolo', '', '2014-04-14 21:17:17', '../image/default-avatar.png', '', '', '', ''),
(31, 'Angelina', 'behappy@yahoo.com', '7UKzN', 'Angelina', 'Richard', '', '2014-04-15 03:12:44', 'image/uploads/31.jpg', '', '', '', ''),
(32, 'Nathaniel', 'goodsam@gmail.com', '3NBAQ', 'Nathaniel', 'bsPe', '', '2014-09-25 16:24:25', 'image/uploads/32.png', '', '', '', ''),
(33, 'markov', 'markov@vkontakt.com', '12345', 'markov', 'leonard', '', '2014-04-13 21:20:38', 'image/uploads/33.png', '', '', '', ''),
(34, 'gelila', 'gelila@yahoo.com', '123', 'gelila', 'feleke', '', '2014-09-29 14:34:39', 'image/uploads/34.jpg', 'Oakton 2354', 'Winning', 'Driving', '6-2'),
(35, 'Sophie', 'dogkill@yahoo.com', '1WIVx', 'Sophie', 'xop', '', '2014-04-14 21:17:29', '../image/default-avatar.png', '', '', '', ''),
(36, 'Ricky', 'deadman@gmail.com', 'NsnOyc', 'Ricky', 'Dave', '', '2014-04-14 21:18:21', '../image/default-avatar.png', '', '', '', ''),
(37, 'Owen', 'freeman@hotmail.com', 'jPC6O', 'Miles', 'Davis', '', '2014-05-24 18:19:49', 'image/uploads/37.jpg', '', '', '', ''),
(38, 'Riley', 'goodboy@yahoo.com', 'uTnJ1', 'Riley', 'EfU', '', '2014-04-18 18:17:35', '../image/default-avatar.png', '', '', '', ''),
(39, 'kadir', 'lappi1@yahoo.de', 'kadir123', 'kadir', 'kadir', '', '2014-04-19 20:30:01', '../image/default-avatar.png', '', '', '', ''),
(40, 'Vida', 'infest@msn.com', 'LmF0X', 'Vida', 'ZFUg', '', '2014-04-21 14:29:18', '../image/default-avatar.png', '', '', '', ''),
(41, 'Alexa', 'freelife@yahoo.com', 'mZZOC', 'Alexa', 'pbrWB', '', '2014-04-24 18:27:47', '../image/default-avatar.png', '', '', '', ''),
(42, 'Jada', 'coco888@msn.com', 'fqbi2Z', 'Jada', 'cXRe', '', '2014-04-28 23:03:13', 'image/uploads/42.png', '', '', '', ''),
(43, 'Alexa', 'coolman@msn.com', 'oTRoQ', 'Alexa', 'nick', '', '2014-05-13 23:16:50', '../image/default-avatar.png', '', '', '', ''),
(44, 'Blake', 'quaker@yahoo.com', '7pP7V', 'Blake', 'saprex', '', '2014-05-13 23:16:54', '../image/default-avatar.png', '', '', '', ''),
(45, 'frank', 'frank@gmail.com', '123456', 'frank', 'sinatra', '', '2014-05-04 15:44:16', 'image/uploads/45.jpg', '', '', '', ''),
(46, 'sammy', 'sammy.davis@gmail.com', '123456', 'sammy', 'davis', '', '2014-05-02 19:14:24', 'image/uploads/46.jpg', '', '', '', ''),
(47, 'louis', 'louis', '123', 'louis', 'ck', '', '2014-05-04 14:56:57', 'image/uploads/47.png', '', '', '', ''),
(48, 'Dghonson', 'heyjew@msn.com', 'WTnI7', 'Dghonson', 'dEe', '', '2014-05-06 03:08:08', '../image/default-avatar.png', '', '', '', ''),
(49, 'Peyton', 'goodboy@yahoo.com', 'KFkVr', 'Peyton', 'BAybJ', '', '2014-05-06 03:08:55', '../image/default-avatar.png', '', '', '', ''),
(50, 'Elijah', 'steep777@yahoo.com', 'NmO161', 'Elijah', 'dory', '', '2014-05-13 23:16:39', '../image/default-avatar.png', '', '', '', ''),
(51, 'Isabelle', 'heyjew@msn.com', 'bfZ8KB', 'Isabelle', 'winston', '', '2014-05-13 23:16:45', '../image/default-avatar.png', '', '', '', ''),
(52, 'sp2014', 'satinath2013@mail.com', '/*-++-*/', 'Satinath', 'Paul', '', '2014-05-13 15:44:12', '../image/default-avatar.png', '', '', '', ''),
(53, 'Mariah', 'crazyivan@yahoo.com', 'KRgbc', 'Mariah', 'ovq', '', '2014-05-19 20:04:15', '../image/default-avatar.png', '', '', '', ''),
(54, 'Maya', 'freelife@yahoo.com', 'mm18L', 'Maya', 'beAyn', '', '2014-05-19 20:04:46', '../image/default-avatar.png', '', '', '', ''),
(55, 'Riley', 'freeman@hotmail.com', 'I0iLa', 'Riley', 'HyxgdzuNqtoqQ', '', '2014-05-22 11:46:42', '../image/default-avatar.png', '', '', '', ''),
(56, 'php', 'e.kafafy@gmail.com', '123123', 'php', 'dev', '', '2014-05-22 16:46:56', '../image/default-avatar.png', '', '', '', ''),
(57, 'Julia', 'freelife@yahoo.com', '2xXXG', 'Julia', 'DWCagRkNgpr', '', '2014-05-25 04:13:25', '../image/default-avatar.png', '', '', '', ''),
(58, 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '', '2014-09-28 19:38:36', '../image/default-avatar.png', '', '', '', ''),
(59, 'dean', 'dean@gmail.com', '123', 'dean', 'martin', '', '2014-10-02 00:08:10', '../image/default-avatar.png', '', '', '', ''),
(60, 'doc', 'docs@asdf.asdf', 'docs', 'docs', 'docs', '', '2014-10-07 20:45:40', '../image/default-avatar.png', '', '', '', ''),
(61, 'abc', 'abc@mmm.com', '321', 'abc', 'efg', '', '2014-10-09 18:09:04', 'image/uploads/61.jpg', '', '', '', ''),
(62, 'brannik', 'brannik.bg@abv.bg', 'asasas', 'asen', 'petrov', '', '2014-10-16 12:41:46', 'image/uploads/62.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userrelationship`
--

CREATE TABLE IF NOT EXISTS `userrelationship` (
  `UserId` int(11) NOT NULL,
  `RelatingUserId` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'type of relation friends,blocked or etc....'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userrelationship`
--

INSERT INTO `userrelationship` (`UserId`, `RelatingUserId`, `type`, `time`) VALUES
(1, 5, 'friends', '2014-09-25 04:03:06'),
(24, 10, 'friends', '2014-04-12 03:11:33'),
(24, 9, 'friends', '2014-10-09 17:50:16'),
(1, 24, 'friends', '2014-10-07 00:35:33'),
(1, 10, 'friends', '2014-10-06 23:29:59'),
(6, 21, 'friends', '2014-04-09 11:11:54'),
(6, 20, 'friends', '2014-04-09 11:11:51'),
(6, 18, 'friends', '2014-04-09 15:29:47'),
(6, 9, 'friends', '2014-04-09 15:33:46'),
(10, 11, 'friends', '2014-04-09 15:36:53'),
(6, 1, 'friends', '2014-04-10 01:35:26'),
(1, 9, 'friends', '2014-05-14 02:42:31'),
(9, 1, 'friends', '2014-04-10 01:40:52'),
(24, 1, 'friends', '2014-04-12 03:11:28'),
(1, 37, 'friends', '2014-10-07 01:21:42'),
(1, 28, 'friends', '2014-04-16 18:51:38'),
(15, 1, 'friends', '2014-05-05 09:39:59'),
(1, 25, 'friends', '2014-04-22 15:36:55'),
(1, 34, 'friends', '2014-10-07 00:35:28'),
(27, 1, 'friends', '2014-04-12 23:46:42'),
(28, 1, 'friends', '2014-04-13 03:50:04'),
(28, 6, 'friends', '2014-04-13 03:50:07'),
(29, 6, 'friends', '2014-04-13 05:53:35'),
(29, 28, 'friends', '2014-04-13 05:54:09'),
(10, 9, 'friends', '2014-04-16 02:08:46'),
(10, 1, 'friends', '2014-04-16 02:08:49'),
(10, 24, 'friends', '2014-04-16 02:08:53'),
(34, 1, 'friends', '2014-05-04 12:53:37'),
(34, 20, 'friends', '2014-04-16 21:37:45'),
(34, 15, 'friends', '2014-04-16 21:37:56'),
(34, 9, 'friends', '2014-04-16 21:44:09'),
(34, 10, 'friends', '2014-04-16 21:44:11'),
(15, 34, 'friends', '2014-04-16 22:00:02'),
(1, 32, 'friends', '2014-04-16 22:00:35'),
(33, 31, 'friends', '2014-04-16 23:31:37'),
(33, 30, 'friends', '2014-04-16 23:31:41'),
(33, 33, 'friends', '2014-04-16 23:31:45'),
(33, 36, 'friends', '2014-04-16 23:31:52'),
(33, 13, 'friends', '2014-04-16 23:31:57'),
(9, 5, 'friends', '2014-04-17 13:12:35'),
(9, 10, 'friends', '2014-04-17 13:12:38'),
(39, 39, 'friends', '2014-04-19 20:30:27'),
(39, 36, 'friends', '2014-04-19 20:30:31'),
(11, 17, 'friends', '2014-04-20 02:43:55'),
(11, 30, 'friends', '2014-04-20 02:43:58'),
(11, 39, 'friends', '2014-04-20 02:44:00'),
(1, 17, 'friends', '2014-04-27 03:44:48'),
(46, 45, 'friends', '2014-05-02 19:19:03'),
(46, 1, 'friends', '2014-05-02 19:19:09'),
(46, 37, 'friends', '2014-05-02 19:19:15'),
(1, 45, 'friends', '2014-05-09 03:24:52'),
(1, 46, 'friends', '2014-05-02 19:20:19'),
(9, 24, 'friends', '2014-05-04 15:27:58'),
(1, 47, 'friends', '2014-10-07 01:21:49'),
(11, 19, 'friends', '2014-05-13 23:20:23'),
(11, 52, 'friends', '2014-05-13 23:20:29'),
(56, 1, 'friends', '2014-05-22 16:47:14'),
(56, 37, 'friends', '2014-05-22 16:47:25'),
(56, 6, 'friends', '2014-05-22 16:49:22'),
(59, 1, 'friends', '2014-10-02 00:08:28'),
(59, 45, 'friends', '2014-10-02 00:08:40'),
(59, 46, 'friends', '2014-10-02 00:08:44'),
(1, 6, 'friends', '2014-10-06 23:32:39'),
(15, 13, 'friends', '2014-10-04 23:04:48'),
(15, 31, 'friends', '2014-10-04 23:04:50'),
(15, 15, 'friends', '2014-10-04 23:38:56'),
(1, 1, 'friends', '2014-10-07 02:07:28'),
(61, 26, 'friends', '2014-10-09 18:09:31'),
(61, 36, 'friends', '2014-10-09 18:09:34'),
(61, 38, 'friends', '2014-10-09 18:09:36'),
(61, 51, 'friends', '2014-10-09 18:09:39'),
(61, 1, 'friends', '2014-10-09 18:09:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
