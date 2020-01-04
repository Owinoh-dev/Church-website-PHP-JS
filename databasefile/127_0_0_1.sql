-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2019 at 05:32 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_admin_db`
--
CREATE DATABASE IF NOT EXISTS `blog_admin_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog_admin_db`;

-- --------------------------------------------------------

--
-- Table structure for table `banner_posts`
--

DROP TABLE IF EXISTS `banner_posts`;
CREATE TABLE IF NOT EXISTS `banner_posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` int(10) UNSIGNED NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_posts`
--

INSERT INTO `banner_posts` (`id`, `title`, `status`) VALUES
(1, 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(1, 'Newest Blog and content management', 'blog,php,bootstrap', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div><div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div><div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div><div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div><div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div><div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', '63560400_1524778647.jpg', 'draft', NULL, NULL, '5'),
(2, 'Benefits of livig in this world', 'life,life tips', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div><div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div><div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div><div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div><div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div><div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', '19292400_1524780270.jpg', 'publish', '2018-04-27', 'admin', '2'),
(3, 'The future of web developement on earth', 'web,development,earth', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>', '46981800_1524780339.jpg', 'publish', '2018-04-27', 'admin', '3'),
(4, 'The subtle art of not giving a fuck-Mark Manson', 'books,reading,novels', '<span style=\"font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', '98308700_1524790852.jpg', 'publish', '2018-04-27', 'admin', '2'),
(5, 'The challanges of being a writter', 'witting,blogging', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>', '57894000_1524856026.jpg', 'publish', '2018-04-27', 'etemesi', '4'),
(6, 'Why i ventured into writting as a proffesion', 'witting,blogging', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<span style=\"font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"font-size: 11.0167px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"font-size: 11.0167px;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"font-size: 11.0167px;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"font-size: 11.0167px;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"font-size: 11.0167px;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"font-size: 11.0167px;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>', '30278600_1524856225.jpg', 'draft', '2018-04-27', 'etemesi', '4');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`) VALUES
(7, 'Events'),
(8, 'Programmes'),
(9, 'Gallary'),
(10, 'Church Report'),
(11, 'Fundraising'),
(12, 'Tithes &Offering');

-- --------------------------------------------------------

--
-- Table structure for table `editors_choice`
--

DROP TABLE IF EXISTS `editors_choice`;
CREATE TABLE IF NOT EXISTS `editors_choice` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog` (`blog`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editors_choice`
--

INSERT INTO `editors_choice` (`id`, `blog`) VALUES
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text,
  `sharing_script` text,
  `javascript` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.plus.google.com', 'http://www.pinterest.com', 'http://www.dribble.com', '<div class=\"fb-comments container\" data-href=\"http://www.uoecu.org/newsview.php?id=<?php echo $row[\'id\'];?>\" data-numposts=\"20\" width=\"100%\"></div>', '<div class=\"addthis_sharing_toolbox\"></div>', '<script>(function(d, s, id) {\r\n		var js, fjs = d.getElementsByTagName(s)[0];\r\n		if (d.getElementById(id)) return;\r\n		js = d.createElement(s); js.id = id;\r\n		js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=298807240601869\';\r\n		fjs.parentNode.insertBefore(js, fjs);\r\n	}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57587edcb1479678\"></script>');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
CREATE TABLE IF NOT EXISTS `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'titles', 1, 3, 3, 3),
(2, 2, 'links', 1, 3, 3, 3),
(3, 2, 'blog_categories', 1, 3, 3, 3),
(4, 2, 'blogs', 1, 3, 3, 3),
(5, 2, 'banner_posts', 1, 3, 3, 3),
(6, 2, 'editors_choice', 1, 3, 3, 3),
(32, 3, 'titles', 0, 0, 0, 0),
(33, 3, 'links', 0, 0, 0, 0),
(34, 3, 'blog_categories', 0, 3, 0, 0),
(35, 3, 'blogs', 1, 1, 1, 1),
(36, 3, 'editors_choice', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
CREATE TABLE IF NOT EXISTS `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2018-04-26', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2018-04-26', 0, 1),
(3, 'authors', 'contains all the guest authors', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
CREATE TABLE IF NOT EXISTS `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
CREATE TABLE IF NOT EXISTS `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`recID`),
  UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  KEY `pkValue` (`pkValue`),
  KEY `tableName` (`tableName`),
  KEY `memberID` (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'titles', '1', 'admin', 1524766759, 1572281821, 2),
(2, 'links', '1', 'admin', 1524766827, 1524878963, 2),
(5, 'blog_categories', '3', 'admin', 1524773931, 1524773931, 2),
(6, 'blog_categories', '4', 'admin', 1524773941, 1524773941, 2),
(7, 'blog_categories', '5', 'admin', 1524773974, 1524773974, 2),
(8, 'blogs', '1', 'admin', 1524778647, 1524791344, 2),
(9, 'banner_posts', '1', 'admin', 1524779492, 1524779492, 2),
(10, 'blogs', '2', 'admin', 1524780270, 1524781513, 2),
(11, 'blogs', '3', 'admin', 1524780339, 1524789616, 2),
(12, 'blogs', '4', 'admin', 1524790853, 1524790853, 2),
(13, 'editors_choice', '1', 'admin', 1524799889, 1524799889, 2),
(14, 'editors_choice', '2', 'admin', 1524799903, 1524799903, 2),
(15, 'blogs', '5', 'etemesi', 1524856026, 1524856026, 3),
(16, 'blogs', '6', 'etemesi', 1524856225, 1524856225, 3),
(18, 'blog_categories', '7', 'admin', 1572281315, 1572281333, 2),
(19, 'blog_categories', '8', 'admin', 1572281352, 1572281352, 2),
(20, 'blog_categories', '9', 'admin', 1572281370, 1572281370, 2),
(21, 'blog_categories', '10', 'admin', 1572281393, 1572281393, 2),
(22, 'blog_categories', '11', 'admin', 1572281404, 1572281404, 2),
(23, 'blog_categories', '12', 'admin', 1572281421, 1572281421, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE IF NOT EXISTS `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ronniengoda@gmail.com', '2018-04-26', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-04-26\nRecord updated automatically on 2018-04-27', NULL, NULL),
('etemesi', '827ccb0eea8a706c4c34a16891f84e7b', 'etemesi@gmail.com', '2018-04-27', 3, 0, 1, 'philiiip etemesi', 'nairobi,kenya', 'nairobi', 'kenya', 'member signed up through the registration form.', NULL, NULL),
('guest', NULL, NULL, '2018-04-26', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2018-04-26', NULL, NULL),
('owinoh', 'b0a8b6719f27610a1a2b3dd6dfe42484', 'owinohvicky@gmail.com', '2019-09-30', 3, 0, 1, 'Victor  Owinoh', 'Eldoret', 'nairobi', '0726032764', 'member signed up through the registration form.', '93e3b7c4701f4ff2059f516ed1d6d32c', 1572368373);

-- --------------------------------------------------------

--
-- Table structure for table `page_hits`
--

DROP TABLE IF EXISTS `page_hits`;
CREATE TABLE IF NOT EXISTS `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('Benefits of livig in this world', 6),
('The challanges of being a writter', 6),
('The future of web developement on earth', 20),
('The subtle art of not giving a fuck-Mark Manson', 22),
('Why i ventured into writting as a proffesion', 2);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'Fountaion of  Joy mission center', 'Welcome to our Sunday service', '68551400_1572281821.jpg', 'blog,church blog,Sunday service, Church report,fountain of joy church', 'This is our main church blog.you can get all the updates  here.', 'Welcome to our <span>Sunday service</span>', 'We also have<span>Midweek service</span>', 'Welcome to our <span>Sunday service</span>', 'Rejoice with the Lord in our<span> Sunday and midweek service</span>', 'FOUNTAIN OF JOY MISSION CENTER (FJMC) is the realization of the dream of some members of Anglican Church, who had had personal encounter with our Lord Jesus Christ, to worship God in the liberty they had found at a time when the church in Nigeria was so lithurgical and there was a great gap between what the scriptures stipulated and what was being practiced in the church. FJMC was founded in England in 1961 and later introduced in Nigeria in 1978 but was inaugurated in 1979. It was not until 1987 that FJMC Enugu Zone was inaugurated, 8 years after the FJMC National was inaugurated. This delay was as a result of very stiff opposition to allowing Christian brethren to operate in the church then. It had to take a very turbulent crisis in the Enugu Diocese in which Christian brethren played very positive roles in resolving, for the then Bishop of Enugu Diocese, Rt. Rev. G. N. Otubelu to direct that FJMC be started in the churches in the Diocese. We thank God for the patience and resilience of the pioneers of Enugu Zone of FJMC.', 'Eastleigh-Nairobi,Kenya', 'fountainofjoychurch@gmail.com', '0710495247/07228221097', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100949.24429313939!2d-122.44206553967531!3d37.75102885910819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2sSan+Francisco%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_info`
--

DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE IF NOT EXISTS `visitor_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `time_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`, `time_accessed`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:26:52'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:01'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:40'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:55'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:01'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:12'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:19'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:22'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:29'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:32'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:35'),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:38'),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:05'),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:09'),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:18'),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:25'),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:28'),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:51'),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:57'),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:00'),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:07'),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:15'),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:39:41'),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:40:41'),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:41:27'),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:26:10'),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:27:34'),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:20'),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:42'),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:26'),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:38'),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:41'),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:43'),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:45'),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:48'),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:51'),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:53'),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:56'),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:59'),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:02'),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:05'),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:07'),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:10'),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:04'),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:14'),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:43:06'),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:01'),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:08'),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:48:58'),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:49:18'),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 22:22:28'),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:41:41'),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:43:58'),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:46:23'),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '2019-10-28 16:14:30'),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', '2019-10-28 16:43:04');
--
-- Database: `cakes`
--
CREATE DATABASE IF NOT EXISTS `cakes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cakes`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`category_id`, `category`) VALUES
(1, 'Other'),
(2, 'Wedding'),
(3, 'Birthday');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE IF NOT EXISTS `tblcustomer` (
  `customer_id` int(30) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`customer_id`, `fname`, `lname`, `email`, `contact`, `address`) VALUES
(44, 'Adrian', 'Mercurio', 'mercurio@yahoo.com', '09561666494', 'Brgy. Suay Himamaylan City Neg. Occ'),
(45, 'ads', 'mers', 'maaaae@yahoo.com', '0980989', 'hgjgjg'),
(54, 'ads', 'mer', 'mamans@yahoo.com', '9999999', 'mmmss'),
(55, 'Adrian', 'Mercurio', 'admerc@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ'),
(56, 'Adrian', 'Mercurio', 'admerc@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ'),
(57, 'Nico', 'Raluto', 'ralutonico@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

DROP TABLE IF EXISTS `tblproducts`;
CREATE TABLE IF NOT EXISTS `tblproducts` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `available` int(11) NOT NULL DEFAULT '1',
  `price` int(20) NOT NULL,
  `profit` int(22) NOT NULL,
  `selling_price` int(22) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK_tblproducts_tblsupplier` (`supplier_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `available`, `price`, `profit`, `selling_price`, `date_in`, `category_id`, `supplier_id`, `user_id`, `product_code`, `status`) VALUES
(124, 'Caramel Cake', 50, 50, 300, 100, 400, '2019-03-16', 1, 1, 22, '1001', 'available'),
(125, 'Chocolate cake', 60, 48, 300, 100, 400, '2019-03-16', 1, 12, 22, '1002', 'available'),
(126, 'Banana Cake', 50, 50, 200, 100, 300, '2019-03-16', 1, 1, 22, '1003', 'available'),
(127, 'Strawberry Cake', 40, 40, 400, 100, 500, '2019-03-16', 1, 18, 22, '1004', 'available'),
(128, 'Vanilla Cake', 70, 69, 200, 100, 300, '2019-03-16', 1, 45, 22, '1005', 'available'),
(131, 'Chocolate Roll', 80, 78, 300, 50, 350, '2019-03-16', 1, 46, 22, '100', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

DROP TABLE IF EXISTS `tblsupplier`;
CREATE TABLE IF NOT EXISTS `tblsupplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`supplier_id`, `supplier_name`, `contact`, `email`, `address`) VALUES
(1, 'James Bond', 21474836, 'james@gmail.com', 'Bacolods'),
(12, 'Niel James', 2147483647, 'nielcompan@yahoo.com', 'Himamaylan'),
(18, 'Henry King', 2147483647, 'kingcakes@yahoo.com', 'Himamaylan'),
(45, 'Vince Dela Cruz', 2147483647, 'vinceyum@yahoo.com', 'Hinigaran'),
(46, 'Peter Parker', 98751234, 'parker@yaoo.com', 'Bacolod');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransac`
--

DROP TABLE IF EXISTS `tbltransac`;
CREATE TABLE IF NOT EXISTS `tbltransac` (
  `transac_id` int(11) NOT NULL AUTO_INCREMENT,
  `transac_code` int(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`transac_id`),
  KEY `FK_tbltransac_details_tblcustomer` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransac`
--

INSERT INTO `tbltransac` (`transac_id`, `transac_code`, `date`, `user_id`, `product_code`, `qty`, `price`, `total`) VALUES
(31, 1554235838, '2019-04-03', 39, '100', 1, 350, 350),
(32, 1554235838, '2019-04-03', 39, '1002', 1, 400, 400),
(33, 1554251111, '2019-04-03', 39, '100', 1, 350, 350),
(34, 1570576203, '2019-10-08', 41, '1005', 1, 300, 300),
(35, 1570576203, '2019-10-08', 41, '1002', 1, 400, 400);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransacdetail`
--

DROP TABLE IF EXISTS `tbltransacdetail`;
CREATE TABLE IF NOT EXISTS `tbltransacdetail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `transac_code` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryfee` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `delivery_date` varchar(200) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransacdetail`
--

INSERT INTO `tbltransacdetail` (`detail_id`, `transac_code`, `date`, `customer_id`, `deliveryfee`, `totalprice`, `status`, `remarks`, `delivery_date`) VALUES
(18, 1554235838, '2019-04-03', 39, 150, 900, 'Confirmed', 'Your order has been confirmed!', '2019-04-05'),
(19, 1554251111, '2019-04-03', 39, 150, 500, 'Pending', '', '2019-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` bigint(100) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` longtext NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `fname`, `lname`, `email`, `contact`, `address`, `position`, `username`, `pass`) VALUES
(22, 'Adrian', 'Mercurio', 'mercurio@yahoo.com', 0, '', 'Admin', 'admerc', '$2y$10$0bR0yeMq58tPpMBWx2nuau9jWuzcslpUQVqb81RNMvArQKn/x6D76'),
(23, 'niko', 'curaza', 'curaza@yahoo.com', 0, '', 'Admin', 'merc', '$2y$10$OnIOsgNRMn3Zk5rvBFmZM.9TBrmWvJBiE7YYn5C9qHNcsMFBv963u'),
(24, 'Nico', 'Raluto', 'raluto@yahoo.com', 0, '', 'Admin', 'qwerty', '$2y$10$fwsyyHkLWCmMn2bk5uu/RehETPLpZOpu0Uyn.RaMIKOi2.J8Gz5YO'),
(39, 'Adrian', 'Mercurio', 'admerc@yahoo.com', 9561666494, 'Brgy. Su-ay Himamaylan City Neg. Occ.', 'Customer', 'adam', '$2y$10$2bzJCkDR3EzQ1pFu8uskMuj65VTcznEyepurqjTbc5AgZ6/9EdvfW'),
(40, 'Nico', 'Raluto', 'ralutonico@yahoo.com', 9561666494, 'Brgy. Su-ay Himamaylan City Neg. Occ.', 'Customer', 'adams', '$2y$10$1bqSwPPZO0nb/QWXAYCBcuto38CDf.rg.YjGdK.Xpc6X9h85tIvmW'),
(41, 'victor', 'owinoh', 'owinoh.developer@gmail.com', 726032764, 'eldoret', 'Customer', 'Owinoh', '$2y$10$W3Nc9p/yTXOug09v6mEnLOJqwn/ldFi43UePVVRlS0Lo8.0JiiMeu');
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `offence`
--

DROP TABLE IF EXISTS `offence`;
CREATE TABLE IF NOT EXISTS `offence` (
  `id` int(11) NOT NULL,
  `offence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reported_offence`
--

DROP TABLE IF EXISTS `reported_offence`;
CREATE TABLE IF NOT EXISTS `reported_offence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offence_id` varchar(200) NOT NULL,
  `vehicle_no` varchar(200) NOT NULL,
  `driver_license` varchar(300) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `gender` varchar(300) NOT NULL,
  `officer_reporting` varchar(500) NOT NULL,
  `offence` varchar(1000) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reported_offence`
--

INSERT INTO `reported_offence` (`id`, `offence_id`, `vehicle_no`, `driver_license`, `name`, `address`, `gender`, `officer_reporting`, `offence`, `date`) VALUES
(1, '78771c', '08954345355', '467545635', 'Adisa Adetobi', 'Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09', 'Male', 'Trorrahclef', 'Driving Under Drug Influence', '2018-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(300) NOT NULL,
  `site_desc` varchar(2000) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `site_desc`, `email`, `phone`, `address`, `city`, `country`) VALUES
(1, 'Trafity', 'Welcome to Trafity Dashboard - a beautiful Traffic Offence System.', 'admin@we.com', '+2348138652645', 'Alagbaka GRA', 'Lagos', 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `username` varchar(300) NOT NULL,
  `pass` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(500) NOT NULL,
  `position` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `name`, `username`, `pass`, `email`, `address`, `position`) VALUES
(1, 'bcefa114ee', 'Adeyemi   Femipo', 'Torrahclef', 'yemiyemi', 'awolu_faith@live.com', 'Alagbaka, Akure, Ondo Nigeria', 'admin'),
(4, '0fd73c73c1', 'Full Name', 'Olapade', 'uhsfr', 'ayomi@we.com', 'Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09', 'admin'),
(5, '5dea1fd9c3', 'Awolu Faith', 'tobi', 'tobi', 'ayomi@we.com', 'Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09', 'officer');
--
-- Database: `dj_election`
--
CREATE DATABASE IF NOT EXISTS `dj_election` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dj_election`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add congress', 7, 'add_congress'),
(26, 'Can change congress', 7, 'change_congress'),
(27, 'Can delete congress', 7, 'delete_congress'),
(28, 'Can view congress', 7, 'view_congress'),
(29, 'Can add dean_of_school', 8, 'add_deanofschool'),
(30, 'Can change dean_of_school', 8, 'change_deanofschool'),
(31, 'Can delete dean_of_school', 8, 'delete_deanofschool'),
(32, 'Can view dean_of_school', 8, 'view_deanofschool'),
(33, 'Can add chairman', 9, 'add_chairman'),
(34, 'Can change chairman', 9, 'change_chairman'),
(35, 'Can delete chairman', 9, 'delete_chairman'),
(36, 'Can view chairman', 9, 'view_chairman'),
(37, 'Can add post_graduate_representative', 10, 'add_postgraduaterepresentative'),
(38, 'Can change post_graduate_representative', 10, 'change_postgraduaterepresentative'),
(39, 'Can delete post_graduate_representative', 10, 'delete_postgraduaterepresentative'),
(40, 'Can view post_graduate_representative', 10, 'view_postgraduaterepresentative'),
(41, 'Can add representative_persons_with_disability', 11, 'add_representativepersonswithdisability'),
(42, 'Can change representative_persons_with_disability', 11, 'change_representativepersonswithdisability'),
(43, 'Can delete representative_persons_with_disability', 11, 'delete_representativepersonswithdisability'),
(44, 'Can view representative_persons_with_disability', 11, 'view_representativepersonswithdisability'),
(45, 'Can add secretary', 12, 'add_secretary'),
(46, 'Can change secretary', 12, 'change_secretary'),
(47, 'Can delete secretary', 12, 'delete_secretary'),
(48, 'Can view secretary', 12, 'view_secretary'),
(49, 'Can add sports_and_entertainment_representative', 13, 'add_sportsandentertainmentrepresentative'),
(50, 'Can change sports_and_entertainment_representative', 13, 'change_sportsandentertainmentrepresentative'),
(51, 'Can delete sports_and_entertainment_representative', 13, 'delete_sportsandentertainmentrepresentative'),
(52, 'Can view sports_and_entertainment_representative', 13, 'view_sportsandentertainmentrepresentative'),
(53, 'Can add treasurer', 14, 'add_treasurer'),
(54, 'Can change treasurer', 14, 'change_treasurer'),
(55, 'Can delete treasurer', 14, 'delete_treasurer'),
(56, 'Can view treasurer', 14, 'view_treasurer'),
(57, 'Can add student', 15, 'add_student'),
(58, 'Can change student', 15, 'change_student'),
(59, 'Can delete student', 15, 'delete_student'),
(60, 'Can view student', 15, 'view_student'),
(61, 'Can add vote_date', 16, 'add_vote_date'),
(62, 'Can change vote_date', 16, 'change_vote_date'),
(63, 'Can delete vote_date', 16, 'delete_vote_date'),
(64, 'Can view vote_date', 16, 'view_vote_date'),
(65, 'Can add schools', 17, 'add_schools'),
(66, 'Can change schools', 17, 'change_schools'),
(67, 'Can delete schools', 17, 'delete_schools'),
(68, 'Can view schools', 17, 'view_schools');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$77IERtrg4MEz$bKP3WSqPUO80A22Ma0SVfaaRkV974DTkdiOVdqIP2d8=', '2019-10-25 23:56:44.620214', 1, 'owinoh', '', '', 'owino@gmail.com', 1, 1, '2019-10-24 16:40:09.760302'),
(2, 'pbkdf2_sha256$150000$k9XK4BSUXtHb$Wiaf5LRTLTFWFXUCywXpJkDQJQbe3sxS/hUTyTiCfZY=', NULL, 0, 'victorowinoh', '', '', 'owinoh.developer@gmail.com', 0, 1, '2019-10-25 23:38:10.753540');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `congress_congress`
--

DROP TABLE IF EXISTS `congress_congress`;
CREATE TABLE IF NOT EXISTS `congress_congress` (
  `admission_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifesto` longtext NOT NULL,
  `flag_C` tinyint(1) NOT NULL,
  `flag_S` tinyint(1) NOT NULL,
  `flag_T` tinyint(1) NOT NULL,
  `flag_D` tinyint(1) NOT NULL,
  `flag_P` tinyint(1) NOT NULL,
  `flag_SE` tinyint(1) NOT NULL,
  `number_of_votes` int(11) NOT NULL,
  PRIMARY KEY (`admission_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-10-24 16:45:12.896450', '1', 'Science', 1, '[{\"added\": {}}]', 17, 1),
(2, '2019-10-24 16:45:42.008086', '2', 'Agriculture', 1, '[{\"added\": {}}]', 17, 1),
(3, '2019-10-24 16:46:04.508821', '3', 'Education', 1, '[{\"added\": {}}]', 17, 1),
(4, '2019-10-24 16:46:27.634958', '4', 'Bussiness', 1, '[{\"added\": {}}]', 17, 1),
(5, '2019-10-25 23:38:11.090808', '2', 'COM/042/16', 1, '[{\"added\": {}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'congress', 'congress'),
(8, 'school_deans', 'deanofschool'),
(9, 'student_council', 'chairman'),
(10, 'student_council', 'postgraduaterepresentative'),
(11, 'student_council', 'representativepersonswithdisability'),
(12, 'student_council', 'secretary'),
(13, 'student_council', 'sportsandentertainmentrepresentative'),
(14, 'student_council', 'treasurer'),
(15, 'students', 'student'),
(16, 'voting', 'vote_date'),
(17, 'schools', 'schools');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-24 16:35:54.992769'),
(2, 'auth', '0001_initial', '2019-10-24 16:35:55.520646'),
(3, 'admin', '0001_initial', '2019-10-24 16:35:57.071249'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-24 16:35:57.457025'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-24 16:35:57.486573'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-24 16:35:57.692341'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-24 16:35:57.804421'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-24 16:35:57.907994'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-24 16:35:57.938516'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-24 16:35:58.078630'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-24 16:35:58.084147'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-24 16:35:58.112139'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-24 16:35:58.217216'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-24 16:35:58.335299'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-24 16:35:58.453883'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-24 16:35:58.483904'),
(17, 'schools', '0001_initial', '2019-10-24 16:35:58.619008'),
(18, 'students', '0001_initial', '2019-10-24 16:35:58.737585'),
(19, 'congress', '0001_initial', '2019-10-24 16:35:59.105477'),
(20, 'school_deans', '0001_initial', '2019-10-24 16:35:59.301115'),
(21, 'sessions', '0001_initial', '2019-10-24 16:35:59.398186'),
(22, 'student_council', '0001_initial', '2019-10-24 16:36:00.315650'),
(23, 'voting', '0001_initial', '2019-10-24 16:36:00.932421');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3x9oqqyil44kk3kflddk9alp8anzvf73', 'Y2I0ZGM2MzFhMmExZWIwNmFiMGY1YjQxZWM0ZGIxM2UwOTIxNjQ3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MDkwN2FjZTNiZWNkZGVlZWMzNjY0ZDYxMDBhNTkzOWNmZTYzN2JjIn0=', '2019-11-08 23:56:44.648734');

-- --------------------------------------------------------

--
-- Table structure for table `schools_schools`
--

DROP TABLE IF EXISTS `schools_schools`;
CREATE TABLE IF NOT EXISTS `schools_schools` (
  `school_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dean` varchar(50) NOT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools_schools`
--

INSERT INTO `schools_schools` (`school_id`, `name`, `dean`) VALUES
('1', 'Science', 'DR.LUTTA'),
('2', 'Agriculture', 'DR. WERE'),
('3', 'Education', 'DR. CHIRCHIR'),
('4', 'Bussiness', 'DR. KAMAU');

-- --------------------------------------------------------

--
-- Table structure for table `school_deans_deanofschool`
--

DROP TABLE IF EXISTS `school_deans_deanofschool`;
CREATE TABLE IF NOT EXISTS `school_deans_deanofschool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `employee_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(10) NOT NULL,
  `post` varchar(10) NOT NULL,
  `school` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students_student`
--

DROP TABLE IF EXISTS `students_student`;
CREATE TABLE IF NOT EXISTS `students_student` (
  `user_ptr_id` int(11) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `year_of_study` varchar(10) NOT NULL,
  `school_id_id` varchar(50) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  UNIQUE KEY `registration_number` (`registration_number`),
  KEY `students_student_school_id_id_beb642dd` (`school_id_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_student`
--

INSERT INTO `students_student` (`user_ptr_id`, `Flag`, `registration_number`, `name`, `gender`, `year_of_study`, `school_id_id`) VALUES
(2, 0, 'COM/042/16', 'victor', 'Male', '4', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_council_chairman`
--

DROP TABLE IF EXISTS `student_council_chairman`;
CREATE TABLE IF NOT EXISTS `student_council_chairman` (
  `vice_chairman` varchar(50) NOT NULL,
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_council_postgraduaterepresentative`
--

DROP TABLE IF EXISTS `student_council_postgraduaterepresentative`;
CREATE TABLE IF NOT EXISTS `student_council_postgraduaterepresentative` (
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_council_representativepersonswithdisability`
--

DROP TABLE IF EXISTS `student_council_representativepersonswithdisability`;
CREATE TABLE IF NOT EXISTS `student_council_representativepersonswithdisability` (
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_council_secretary`
--

DROP TABLE IF EXISTS `student_council_secretary`;
CREATE TABLE IF NOT EXISTS `student_council_secretary` (
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_council_sportsandentertainmentrepresentative`
--

DROP TABLE IF EXISTS `student_council_sportsandentertainmentrepresentative`;
CREATE TABLE IF NOT EXISTS `student_council_sportsandentertainmentrepresentative` (
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_council_treasurer`
--

DROP TABLE IF EXISTS `student_council_treasurer`;
CREATE TABLE IF NOT EXISTS `student_council_treasurer` (
  `registration_number_id` int(11) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `manifestos` longtext NOT NULL,
  `number_of_votes` bigint(20) NOT NULL,
  PRIMARY KEY (`registration_number_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voting_vote_date`
--

DROP TABLE IF EXISTS `voting_vote_date`;
CREATE TABLE IF NOT EXISTS `voting_vote_date` (
  `academic_year` varchar(20) NOT NULL,
  `vote_date` date NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  PRIMARY KEY (`academic_year`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `ecommercedb`
--
CREATE DATABASE IF NOT EXISTS `ecommercedb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecommercedb`;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

DROP TABLE IF EXISTS `tblautonumber`;
CREATE TABLE IF NOT EXISTS `tblautonumber` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '0', 1, 52, 'PROID', 10),
(2, '0', 1, 111, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `CATEGID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL,
  PRIMARY KEY (`CATEGID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(3, 'DOOR AND WINDOW', 0),
(4, 'ELECTRICAL AND LIGHTING', 0),
(5, 'FLOOR AND WALL', 0),
(6, 'HARDWARE AND TOOLS', 0),
(8, 'HOME APPLIANCES', 0),
(9, 'Paint and Sundries', 0),
(10, 'Plumbing ', 0),
(11, 'Roofing and building Materials', 0),
(12, 'Sanitary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
CREATE TABLE IF NOT EXISTS `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL,
  PRIMARY KEY (`CUSTOMERID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(1, 'Jayson', 'Tadeo', '', '321', 'san jose', 'salong', 'Kabankalan City', 'Negros Occidental', 'Philippines', '0000-00-00', 'Male', '09123586545', '', 6111, 'Jay@yahoo.com', '803d734da37173b09d39012fb384533cd122f9ca', 'customer_image/10329236_874204835938922_6636897990257224477_n.jpg', 1, '2015-11-26'),
(2, 'Mark Anthony', 'Geasin', '', '1234', 'paglaom', 'dancalan', 'ilog', 'negros occ', 'philippines', '0000-00-00', '', '091023333234', '', 6111, 'bboy', '0377588176145a8f0d837ff6e9bf0c1616268387', 'customer_image/10801930_959054964122877_391305007291646162_n.jpg', 1, '2015-11-26'),
(3, 'Jayson', 'Tadeo', '', '434-7766', 'San Jose', 'Salong', 'Kabankalan City', 'Neg. OCcc', 'PH', '0000-00-00', 'Male', '09463786545', '', 611, 'J@gmail.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'customer_image/chibi_dota_2___queen_of_pain_by_hothanhlamleok-d6ln52v.jpg', 1, '2016-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
CREATE TABLE IF NOT EXISTS `tblorder` (
  `ORDERID` int(11) NOT NULL AUTO_INCREMENT,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  PRIMARY KEY (`ORDERID`),
  KEY `USERID` (`USERID`),
  KEY `PROID` (`PROID`),
  KEY `ORDEREDNUM` (`ORDEREDNUM`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(4, 1, 1, 8000, 95, 0),
(5, 3, 5, 35950, 96, 0),
(6, 1, 1, 8000, 97, 0),
(7, 1, 1, 8000, 98, 0),
(8, 1, 1, 8000, 99, 0),
(9, 1, 1, 8000, 100, 0),
(10, 1, 1, 8000, 101, 0),
(11, 49, 1, 500, 102, 0),
(12, 1, 1, 8000, 103, 0),
(13, 38, 1, 4000, 104, 0),
(14, 5, 1, 7000, 104, 0),
(15, 5, 1, 7000, 105, 0),
(16, 5, 1, 7000, 106, 0),
(17, 5, 1, 7000, 107, 0),
(18, 5, 1, 7000, 108, 0),
(19, 44, 1, 978000, 109, 0),
(20, 47, 1, 150, 110, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
CREATE TABLE IF NOT EXISTS `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PROMODEL` varchar(30) DEFAULT NULL,
  `PROBRAND` varchar(255) DEFAULT NULL,
  `PRONAME` varchar(255) DEFAULT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PROID`),
  UNIQUE KEY `PROMODEL` (`PROMODEL`),
  KEY `CATEGID` (`CATEGID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PROMODEL`, `PROBRAND`, `PRONAME`, `PRODESC`, `PROQTY`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`) VALUES
(1, 'Stand Fan Sf-1601 Nb', 'Mayaka ', 'Mayaka ', 'Height - 1,25 Meter,Display size=16                    \r\n\r\n                                                                                                                                                                                                    ', 10, 8000, 8, 'uploaded_photos/2.jpg', 'Available'),
(4, 'ES-D708', NULL, 'Sharp', 'Spin Dryer 7kg                       \r\n\r\n                                                                                                                                                          ', 38, 4998, 6, 'uploaded_photos/COC-war-base-design.jpg', 'Available'),
(5, 'Trf-1800 Nb', 'Mayaka', 'Mayaka', ' Floor Fan ', 15, 7000, 8, 'uploaded_photos/1.jpg', 'Available'),
(38, 'GN-300 mp', NULL, 'Multipro Genset', '7 hp, Displacement:200cm, Starteer:Manual, Fuel Tank Cap. 15 L.           \r\n\r\n                                            ', 29, 4000, 6, 'uploaded_photos/B0012.GN_3000-MP.jpg', 'Available'),
(39, 'CW660JW/F White', NULL, 'Toto', ' Dual Flush Toilet (4.5/3 liters)  ,\r\nBowl Shape : Round Rough In : 230 mm\r\n\r\n                      ', 25, 1600, 0, 'uploaded_photos/B0039.toto-cw660.jpg', 'Available'),
(43, 'CW660JWF White', NULL, 'Toto', 'Bowl Shape : Round Rough In : 230 mm,\r\nDual Flush Toilet (4.5/3 liters)\r\n                                                                  ', 30, 1600, 12, 'uploaded_photos/B0039.toto-cw660.jpg', 'Available'),
(44, 'A626 Closet Two Piece Putih', NULL, 'Oulu', 'S-Trap, 305 mm roughing-in,\r\nHydrolic; Siphonic two-piece closet                        \r\n\r\n                                                                  ', 29, 3780, 12, 'uploaded_photos/B0040.020401404874.jpg', 'Available'),
(45, 'SG8', NULL, 'Supergrout', '1 kg                   \r\n\r\n                      ', 20, 7000, 11, 'uploaded_photos/B0034.super grout.jpg', 'Available'),
(46, 'Semen Regular', NULL, 'Tiga Roda', '1 sack,\r\n50kg                        \r\n\r\n                      ', 30, 700, 11, 'uploaded_photos/B0035.5539257_typei.jpg', 'Available'),
(47, 'FITTING ELBOW (AW) 3/4', NULL, 'Rucika', 'Dimension:3/4                        \r\n\r\n                                            ', 39, 150, 10, 'uploaded_photos/B0023.rucika.jpg', 'Available'),
(48, 'Wavin', NULL, 'Pipa PVC 1/2', '                        \r\n\r\n                      ', 90, 200, 10, 'uploaded_photos/B0024.10016629 Wavin Pipa PVC TH_Standard.jpg', 'Available'),
(49, 'Vinilex (Nippon Paint', NULL, 'Super Vinilex 300 Easy Wash (White)', '1 Gal                     \r\n\r\n                      ', 119, 500, 9, 'uploaded_photos/B0027.Supervivilex.png', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

DROP TABLE IF EXISTS `tblpromopro`;
CREATE TABLE IF NOT EXISTS `tblpromopro` (
  `PROMOID` int(11) NOT NULL AUTO_INCREMENT,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL,
  PRIMARY KEY (`PROMOID`),
  UNIQUE KEY `PROID` (`PROID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(1, 1, 0, 0, 1, 0),
(4, 4, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0),
(6, 6, 0, 0, 0, 0),
(7, 16, 0, 0, 0, 0),
(8, 17, 0, 0, 0, 0),
(9, 18, 0, 0, 0, 0),
(11, 20, 0, 0, 0, 0),
(12, 21, 0, 0, 0, 0),
(13, 22, 0, 0, 0, 0),
(14, 23, 0, 0, 0, 0),
(15, 24, 0, 0, 0, 0),
(16, 25, 0, 0, 0, 0),
(17, 26, 0, 0, 0, 0),
(18, 27, 0, 0, 0, 0),
(19, 28, 0, 0, 0, 0),
(20, 29, 0, 0, 0, 0),
(21, 30, 0, 0, 0, 0),
(22, 31, 0, 0, 0, 0),
(23, 32, 0, 0, 0, 0),
(24, 33, 0, 0, 0, 0),
(25, 34, 0, 0, 0, 0),
(26, 35, 0, 0, 0, 0),
(27, 36, 0, 0, 0, 0),
(29, 38, 0, 0, 0, 0),
(30, 39, 0, 0, 0, 0),
(32, 41, 0, 0, 0, 0),
(33, 42, 0, 0, 0, 0),
(34, 43, 0, 0, 0, 0),
(35, 44, 0, 0, 0, 0),
(36, 45, 0, 0, 0, 0),
(37, 46, 0, 0, 0, 0),
(38, 47, 0, 0, 0, 0),
(39, 48, 0, 0, 0, 0),
(40, 49, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

DROP TABLE IF EXISTS `tblstockin`;
CREATE TABLE IF NOT EXISTS `tblstockin` (
  `STOCKINID` int(11) NOT NULL AUTO_INCREMENT,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STOCKINID`),
  KEY `PROID` (`PROID`,`USERID`),
  KEY `USERID` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstockin`
--

INSERT INTO `tblstockin` (`STOCKINID`, `STOCKDATE`, `PROID`, `STOCKQTY`, `STOCKPRICE`, `USERID`) VALUES
(1, '2015-11-26 04:42:29', 1, 8, 33298, 126),
(4, '2015-11-26 08:02:50', 4, 5, 4998, 126),
(5, '2015-11-26 08:03:04', 4, 5, 4998, 126),
(6, '2015-11-26 08:05:12', 1, 8, 33298, 126),
(7, '2015-11-26 08:09:31', 1, 8, 33298, 126);

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

DROP TABLE IF EXISTS `tblsummary`;
CREATE TABLE IF NOT EXISTS `tblsummary` (
  `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL,
  PRIMARY KEY (`SUMMARYID`),
  UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  KEY `CUSTOMERID` (`CUSTOMERID`),
  KEY `USERID` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(2, '2016-01-22 00:00:00', 1, 86, 33298, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2016-01-25 00:00:00', 0, 128),
(6, '2016-01-26 10:30:39', 3, 95, 8000, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(7, '2016-01-26 12:01:00', 3, 96, 35950, 'Cash on Pickup', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(8, '2016-01-26 12:04:06', 3, 97, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(9, '2016-01-26 12:05:29', 3, 98, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(10, '2016-01-26 12:06:06', 3, 99, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(11, '2016-01-26 12:08:46', 3, 100, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(12, '2016-01-26 04:17:20', 3, 101, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(13, '2016-01-27 02:55:55', 3, 102, 525, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 1, 0),
(14, '2016-01-27 03:12:28', 3, 103, 8025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(15, '2016-01-27 03:22:20', 3, 104, 11000, 'Cash on Pickup', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(16, '2016-01-27 04:54:04', 3, 105, 7000, 'Cash on Pickup', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(17, '2016-01-27 04:55:27', 3, 106, 7025, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(18, '2016-01-27 04:56:54', 3, 107, 7000, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(19, '2016-01-27 04:58:55', 3, 108, 7000, 'Cash on Pickup', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(20, '2016-01-27 05:00:05', 3, 109, 978000, 'Cash on Pickup', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0),
(21, '2016-01-27 06:04:18', 3, 110, 175, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

DROP TABLE IF EXISTS `tbluseraccount`;
CREATE TABLE IF NOT EXISTS `tbluseraccount` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(126, 'Reynaldo Garcia', 'Reyn', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Staff', 'photos/418769.JPG'),
(128, 'Jayson Tadeo', 'J@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/chibi_dota_2___queen_of_pain_by_hothanhlamleok-d6ln52v.jpg');
--
-- Database: `employeeinfo`
--
CREATE DATABASE IF NOT EXISTS `employeeinfo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employeeinfo`;

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE IF NOT EXISTS `employeeinfo` (
  `emp_id` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `employer`
--
CREATE DATABASE IF NOT EXISTS `employer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employer`;
--
-- Database: `frozensystemdb`
--
CREATE DATABASE IF NOT EXISTS `frozensystemdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `frozensystemdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE IF NOT EXISTS `admin_info` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `security_question` varchar(500) NOT NULL,
  `security_answer` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `email`, `password`, `firstname`, `lastname`, `security_question`, `security_answer`) VALUES
(6, 'adzkie@email.com', 'adzkie07', 'adones', 'evangelista', 'What was your childhood nickname?', 'ado');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact_number` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
CREATE TABLE IF NOT EXISTS `order_info` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `order_id` int(100) NOT NULL,
  `order_total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

DROP TABLE IF EXISTS `tblcustomers`;
CREATE TABLE IF NOT EXISTS `tblcustomers` (
  `id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `order_id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` int(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_number` varchar(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

DROP TABLE IF EXISTS `tblemployee`;
CREATE TABLE IF NOT EXISTS `tblemployee` (
  `Employee_id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Age` int(2) NOT NULL,
  `Address` text NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Email_Address` varchar(50) NOT NULL,
  PRIMARY KEY (`Employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`Employee_id`, `First_Name`, `Middle_Name`, `Last_Name`, `Age`, `Address`, `Contact_Number`, `Email_Address`) VALUES
(0000002, 'RIZA', 'NIAR', 'CORDOVA', 25, 'HIMAMAYLAN CITY', '09222354789', 'RIZ@EMAIL.COM'),
(0000003, 'JEAN', 'MOMBAY', 'DUTERTE', 24, 'BRGY. PAYAW, BINALBAGAN, NEG.OCC', '09124555875', 'APILLANO@EMAIL.COM'),
(0000005, 'JEFRY', 'BILLIONES', 'PALATA', 28, 'Brgy.Enclaro, Binalbagan, Neg. Occ', '09284369568', 'JEFRY@EMAIL.COM'),
(0000006, 'REX', 'OLVIDADO', 'EVANGELISTA', 24, 'KABANKALAN CITY', '09482789123', 'REZ@EMAIL.COM'),
(0000008, 'RUFFA', 'OCTAVIO', 'DE VICENTE', 29, 'ILOG, NEG. OCC', '09226785436', 'RUFFA@EMAIL.COM'),
(0000009, 'JUAN ', 'CRUZ', 'OLVIDADO', 23, 'BRGY. INAPOY, KABANKALAN CITY', '09224567891', 'JUAN@YAHOO.COM'),
(0000010, 'caren', 'batista', 'bautista', 22, 'brgy.lokotan, kabankalan city', '09383838484', 'caren@gmail.com'),
(0000012, 'wong', 'kent', 'vincent', 23, 'isabela ', '09124555875', 'caren@gmail.com'),
(0000013, 'ainee', 'suetas', 'pobreza', 23, 'brgy.tapi, Kabankalan City', '09459540344', 'aine@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
CREATE TABLE IF NOT EXISTS `tblproduct` (
  `productid` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(200) NOT NULL,
  `on hand` int(1) UNSIGNED ZEROFILL NOT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`productid`, `product_name`, `product_type`, `image`, `description`, `price`, `on hand`, `quantity`) VALUES
(11, 'CHEESE HOTDOG', 'PHILIPPINES', 'images/cheese.jpg', 'red cheesedog made from hefty meat stuffed', '50', 0, 1000),
(12, 'CHICKEN LONGGANIZA', 'PHILIPPINES', 'images/chickenlongganiza.jpg', 'Chicken longganisa with carrots is a healthy alternative to pork or beef longganisa because it is low in fat and has vegetable extenders such as carrots and turnips. ', '50', 0, 100),
(13, 'PORK TOCINO', 'PHILIPPINES', 'images/porktocino.jpg', 'cured meat product native to the Philippines. It is sometimes referred to as sweet red pork. The curing preparation for this pork dish is similar to that of ham and bacon, except that red food coloring is needed to for this Filipino cured meat.', '50', 0, 100),
(14, 'CHICKEN HOTDOG', 'PHILIPPINES', 'images/chickenhotdog.jpg', 'Less expensive hot dogs are often made from chicken or turkey, using low-cost mechanically separated poultry. Typical hot dogs contain sodium, saturated fat and nitrite, which when consumed in excess have been linked to health problems.', '55', 0, 100),
(15, 'SKINLESS LONGGANIZA', 'PHILIPPINES', 'images/skinlesslongganiza.jpg', 'version of the native Filipino sausage usually made of ground pork, garlic, and spices. ... Its taste is mostly sweet and garlicky like hamonado but ï¿½hotï¿½ varieties are also common with added copious amounts of ground pepper.', '60', 0, 100),
(16, 'SWEET HAM', 'PHILIPPINES', 'images/sweetham.jpg', 'Sweet Ham with Pineapple Sauce Recipe. The touch of sweetness in this ham complements the tangy compote.', '65', 0, 100),
(17, 'NATIVE LONGGANIZA', 'PHILIPPINES', 'images/nativelongganiza.jpg', 'version of the native Filipino sausage usually made of ground pork, garlic, and spices. ... Its taste is mostly sweet and garlicky like hamonado but ï¿½hotï¿½ varieties are also common with added copious amounts of ground pepper', '60', 0, 100),
(18, 'MEATY BURGER', 'PHILIPPINES', 'images/meatyburger.jpg', 'Fresh and Meaty Burgers takes you on a delicious experience with their fresh and meaty burgers. Feast on the Double Chili Cheese Meaty Burger, the Chili Cheese King Burger, and the Chili Cheese Fries!', '75', 0, 100),
(19, 'BACON', 'PHILIPPINES', 'images/bacon.jpg', 'prepared from several different cuts of meat, typically from the pork belly or from back cuts, which have less fat than the belly', '45', 0, 100),
(20, 'BEEF TAPA', 'PHILIPPINES', 'images/beeftapa.jpg', 'ried or cured beef, mutton, venison or horse meat, although other meat or even fish may be used. Filipinos prepare tapa by using thin slices of meat and curing these with salt and spices as a preserva', '60', 0, 50),
(21, 'CHICKEN MEAT', 'PHILIPPINES', 'images/chicken.jpg', 'Chicken can be prepared in a vast range of ways, including baking, grilling, barbecuing, frying, and boiling, among many others, depending on its purpose. Since the latter half of the 20th century, prepared chicken has become a staple of fast food. Chicken is sometimes cited as being more healthful than red meat, with lower concentrations of cholesterol and saturated fat', '150', 0, 100),
(23, 'BIGTIME CHEESE HOTDOG', 'PHILIPPINES', 'images/images3.png', 'A hot dog topped with a spiced meat sauce called Cincinnati chili, mustard, diced onions, and sometimes cheese. A large, natural-casing hot dog topped with a hearty, mildly spiced meat sauce, and with mustard and diced onions. A 10-inch hot dog wrapped in a steamed bun.', '50', 0, 100),
(24, 'HAPPY HOTDOG', 'PHILIPPINES', 'images/happyhotdog.jpg', 'Hot dogï¿½ means a whole, cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', '45', 0, 100),
(25, 'TENDER JUICY HOTDOG', 'PHILIPPINES', 'images/tenderjuicy.jpg', 'ender Juicy Hotdog is the undisputed No. 1 hotdog brand in the Philippines, having the best tasting, juiciest, and most tender hotdogs Filipinos love throughout the years.', '60', 0, 100),
(26, 'ARGINTINA HOTDOG', 'PHILIPPINES', 'images/argintinahotdog.jpg', 'so the quality of the coarsely ground pork sausage is high enough to make you cry. It\'s seared to a beautiful crackly crust, more than any hot dog, spitting and sizzling as it gets slapped onto a toasted bun. And as for toppings, you don\'t get just ketchup and mustard.', '75', 0, 1000),
(27, 'VIRGINIA HOTDOG', 'PHILIPPINES', 'images/virginiahotdog.jpg', ' meat processing company that has been proving many families with quality food products. These products have been a tasty treat for the whole family and it has helped bring satisfaction to our taste buds. Virginia foods are indeed product perfect for every taste and lifestyle.', '75', 0, 100),
(28, 'SMOKE BACON HAM', 'philippines', 'images/smokeham.jpg', 'Most have some sugar or maple flavor in the cure. Some are smoked, and some get a smoke flavor from liquid smoke.', '50', 0, 100),
(29, 'ROLLED HAM', 'PHILIPPINES', 'images/rolledham.jpg', 'The addition of something sweet brings these rolls to a whole level of deliciousness by balancing the saltiness of the ham and the richness of the cheese. Give these ham and cheese bread rolls a try and enjoy! Trim edges of the bread and with a rolling pin, flatten until very thin. ... Repeat with remaining bread slices.', '65', 0, 100),
(30, 'SPICE HAM', 'PHILIPPINES', 'images/spiceham.jpg', 'Sweet-hot pepper jelly and tangy pineapple preserves create an easy glaze for the ham. ... Reduce oven temperature to 325ï¿½ (do not remove ham from oven); bake an additional 45 minutes, basting ham with jelly mixture every 15 minutes. ... Perfect balance of sweet, tart, spice and heat.', '95', 0, 100),
(31, 'VACUUM PACKED HAM', 'PHILIPPINES', 'images/vacuumpackedham.jpg', 'When you first take the meat from the vacuum pack you may notice a slight odour. This is normal with traditionally cured ham, and will fade in a few minutes. Once open, keep cooked ham covered with greaseproof paper to prevent the ham drying out.', '100', 0, 100),
(32, 'NAKED HAM', 'PHILIPPINES', 'images/nakedham.jpg', 'Naked ham is sourced from local farms in Pennsylvania and is antibiotic and hormone free. Mrs. Leonard loves to serve her Easter ham with a sweet glaze that includes maple syrup and brown sugar, making this dish a delightful combination of sweet and salty.', '90', 0, 100),
(33, 'SPIRAL SLICE HAM', 'PHILIPPINES', 'images/spiralsliceham.jpg', 'A precooked ham that has been pre-sliced by spiral cutting in order to make it convenient for serving the ham slices. Pre-slicing in this manner allows the ham to be cut into sections, if so desired, with each section being sliced and ready to serve.', '120', 0, 100),
(34, 'LONGGANIZA HAMONADA', 'PHILIPPINES', 'images/longganizahamonada.jpg', 'his longanisa recipe s the perfect breakfast food. Learn how to make your homemade Filipino sausage through this recipe post.', '95', 0, 100),
(35, 'CHORIZO CEBUANO', 'PHILIPPINES', 'images/chorizocebuano.jpg', 'The chorizo de Cebu is a unique type of sausage since they are circular in shape. There also come in two sizes, big and small. You can also choose the regular or spicy chorizo de Cebu and are typically sold by the dozen. Chorizo de Cebu is great for breakfast and can be paired with either plain rice or fried rice.', '55', 0, 100),
(36, 'SWEET PORK LONGGANIZA', 'PHILIPPINES', 'images/sweetpork.jpg', 'hese sweet longganisa are Filipino-style sausages made with ground pork, pork fat', '75', 0, 100),
(37, 'PORK EMBUTIDO', 'PHILIPPINES', 'images/porkembutido.jpg', 'Pork Embutido are well seasoned ground pork, well beaten eggs, minced onion and carrots, vienna sausages or hotdogs, ...', '60', 0, 100),
(38, 'CHICKEN EMBUTIDO', 'PHILIPPINES', 'images/chickenembutido.jpg', 'Embutido is a type of Filipino steamed meatloaf. Today, we are featuring Chicken Embutido, which is a meatloaf made from ground chicken.', '45', 0, 100),
(39, 'SPAM TOCINO', 'PHILIPPINES', 'images/spamtocino.jpg', 'spam comes in a myriad of different flavors including teriyaki and jalapeï¿½o, the tocino version is exclusive to the Philippines, and is an homage to the Filipino breakfast, an insane hybrid between two items that have become staples to our almusal repertoire.', '75', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

DROP TABLE IF EXISTS `tblsupplier`;
CREATE TABLE IF NOT EXISTS `tblsupplier` (
  `Supplier_Id` int(7) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `Supplier_Name` varchar(50) NOT NULL,
  `Supplier_Address` text NOT NULL,
  `Contact_Number` varchar(11) NOT NULL,
  `Email_Address` varchar(50) NOT NULL,
  PRIMARY KEY (`Supplier_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`Supplier_Id`, `Supplier_Name`, `Supplier_Address`, `Contact_Number`, `Email_Address`) VALUES
(0000003, 'SUPPLIER4', 'HIMAMAYLAN CITY', '09451309505', 'SUPPLIER4@EMAIL.COM'),
(0000004, 'SUPPLIER4', 'BINALBAGAN', '09091675894', 'SUPPLIER4@EMAIL.COM'),
(0000012, 'supplier 7', 'Bago city', '9451309505', 'supplier7@email.com'),
(0000013, 'TALISAY1', 'SINGCANG AIRPORT', '88448488', 'A@yahoo.com'),
(0000014, 'SUPPLIER 7', 'SINGCANG AIRPORT, NEGROS OCCIDENTAL', '09124555875', 'SUPPLIER7@EMAIL.COM');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', 3),
(10, 'supplier2', 'supplier2', 4),
(11, 'supplier3', 'supplier3', 5),
(12, 'supplier4', 'supplier4', 6),
(13, 'supplier5', 'supplier5', 7),
(14, 'supplier6', 'supplier6', 8),
(21, 'adones', '511a02a6305fbd41c0544ae073c4a963', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(39, 'adzkie', 'evanz', 'adzkie@email.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(40, 'adones', 'evangelista', 'adones@yahoo.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(41, 'adones', 'evangelista', 'adzkie@email.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(42, 'adones', 'evangelista', 'adzkie@email.com', '1234567');
--
-- Database: `native`
--
CREATE DATABASE IF NOT EXISTS `native` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `native`;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(30) NOT NULL,
  `venue` varchar(120) NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `detail`, `date`, `time`, `venue`, `phone`) VALUES
(3, 'There are many variations of passages', 'Please fill details to save a new Event', '13 JUNE', '2PM', 'Church', ''),
(4, 'ECOWAS CONFERENCE', 'Please fill details to save a new Conference.  Please fill details to save a new Conference.  Please fill details to save a new Conference.  Please fill details to save a new Conference.  Please fill details to save a new Conference. Please fill details to save a new Conference. Please fill details to save a new Conference.  Please fill details to save a new Conference.  Please fill details to save a new Conference. ', '12-10-2016', '16-10-2016', 'Las Vegas, US', ''),
(5, 'Food For nations', '<p>About Conference&nbsp; About Conference&nbsp; About Conference &nbsp; About Conference &nbsp; About Conference &nbsp; About Conference &nbsp; About Conference &nbsp; About Conference</p>\r\n', '10-12-2016', '16-10-2016', 'Las Vegas, US', ''),
(6, 'Going to church', 'Here is everything about the site', '3rd, June 2017', '4PM', 'Akure', ''),
(7, 'Efac National Convention', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ah', '16th -  20th August, 2017', '3PM', 'Orlu', '08138652645'),
(8, 'Go ahead and do that now! ', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ah', '16th -  20th August, 2017', '3PM', 'Akure', '08138652645');

-- --------------------------------------------------------

--
-- Table structure for table `excos`
--

DROP TABLE IF EXISTS `excos`;
CREATE TABLE IF NOT EXISTS `excos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(75) NOT NULL,
  `office` varchar(75) NOT NULL,
  `zone` varchar(75) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `excos`
--

INSERT INTO `excos` (`id`, `name`, `office`, `zone`, `phone`, `email`) VALUES
(1, 'Rt. Rev\'d Okeke', 'National Chiarman', 'Orlu', '08022445353', 'okekert@efac.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(225) NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `caption`, `file`) VALUES
(1, 'With the archbishop of Abuja', 'efac_e5aad374e4121ea095d1f563f74341a5.png'),
(2, 'I was there that day', 'efac_084c3c27caa2e61b414315bfe7c2069c.jpg'),
(3, 'another great photo', 'efac_55b922a901f47aaa9495f6f2fd9d943c.jpg'),
(4, 'pic', 'efac_7172d7f68b11db6bd53584db6d5fa812.png'),
(5, 'picc', 'efac_023a2f6ef5c6ee9d7303c723740d83a5.jpg'),
(6, 'drfd', 'efac_4b2a2a65957779d4bcefbb1cabfd103c.jpg'),
(7, 'rdtfyg', 'efac_96c8ddc28967b257c1d559bf98fe8695.jpg'),
(8, 'wert', 'efac_ff8492b50d9acf59e5bf05bc54ae8be8.jpg'),
(9, 'Read', 'efac_688e868bca3be392e17559fc4475a918.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(70) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(200) NOT NULL,
  `news_detail` varchar(5000) NOT NULL,
  `file` varchar(150) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_detail`, `file`, `date`) VALUES
(2, 'I Love Lagos', 'Here is the matter with us', 'efac_e2e8b87165eff6a650f4f2b86fe86ee8.png', '2017-07-26'),
(3, 'I Love Lagos', 'Here is the matter with us', 'efac_e2e8b87165eff6a650f4f2b86fe86ee8.png', '2017-07-26'),
(4, 'we will create one for you, watch your email ', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n', 'efac_af0474747681f1b98abcfd44ecf1420b.jpg', '2017-07-27'),
(5, 'we will create one for you, watch your email ', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n', 'efac_af0474747681f1b98abcfd44ecf1420b.jpg', '2017-07-27'),
(6, ' Efac Admin Panel. All Rights Reserved | Design by Hillsofts.', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!&nbsp;</p>\r\n\r\n<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n', 'efac_c2bfecc9d713311db7f328956f3ac929.jpg', '2017-07-27'),
(7, ' Efac Admin Panel. All Rights Reserved | Design by Hillsofts.', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!&nbsp;</p>\r\n\r\n<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n', 'efac_c2bfecc9d713311db7f328956f3ac929.jpg', '2017-07-27'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipiscing ', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n\r\n<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ahead and do that now!</p>\r\n', 'efac_5560263ef228c015be7f6dfd62aeaf28.png', '2017-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE IF NOT EXISTS `quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` varchar(300) NOT NULL,
  `quote_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `quote`, `quote_by`) VALUES
(1, 'For God did not send his Son into the world to condemn the world, but to save the world through him.', ' John 3:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(45) NOT NULL,
  `site_title` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `site_desc` varchar(350) NOT NULL,
  `site_keyword` varchar(250) NOT NULL,
  `google_code` varchar(1000) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `facebook` varchar(45) NOT NULL,
  `twitter` varchar(34) NOT NULL,
  `linkedin` varchar(45) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `email`, `site_desc`, `site_keyword`, `google_code`, `street`, `city`, `country`, `phone`, `facebook`, `twitter`, `linkedin`, `status`) VALUES
(1, 'Efac', 'eBlog', 'awolu_faith@live.com', 'This is a new Blog and it is cool!', 'Search Engine Ready, Business and others', '', 'Aule', 'Akure', 'Nigeria', '+234-8138652645', 'hillsoftsnetwork', 'awolufaith', '+234-8138652645', 'mob_clef');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(2000) NOT NULL,
  `file` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `caption`, `file`) VALUES
(5, 'Read', 'church_b039dc56880cbfacadf26598338f66e8.jpg'),
(6, 'fast', 'church_349419124026260d09771117c98a56a9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `table_admin`
--

DROP TABLE IF EXISTS `table_admin`;
CREATE TABLE IF NOT EXISTS `table_admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `file` varchar(567) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_admin`
--

INSERT INTO `table_admin` (`id`, `name`, `email`, `username`, `password`, `file`) VALUES
(1, 'Awolu Faith', 'awolu_faith@live.com', 'admin', 'admin', ''),
(3, 'AdegbemiGa Y1', 'atme@you.u', 'Alagbaka', 'mememem', 'efac_d8ba6926d6b1c5c485411c9f99a948a0.png'),
(4, 'tester', 'tester@dispostable.com', 'tester', 'tester1', 'efac_b8b0d7464b55213c435110abcb5e2e45.php');

-- --------------------------------------------------------

--
-- Table structure for table `table_ads`
--

DROP TABLE IF EXISTS `table_ads`;
CREATE TABLE IF NOT EXISTS `table_ads` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `header_ads` varchar(500) NOT NULL,
  `side_ads` varchar(500) NOT NULL,
  `footer_ads` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_ads`
--

INSERT INTO `table_ads` (`id`, `header_ads`, `side_ads`, `footer_ads`) VALUES
(1, '<!-- Adtall - Ad Display Code -->\r\n<script type=\"text/javascript\" src=\"//www.adtall.com/display/js/ads.js?822&522&728&90&0\"></script>\r\n<!-- Adtall - Ad Display Code -->', '<!-- Adtall - Ad Display Code -->\r\n<script type=\"text/javascript\" src=\"//www.adtall.com/display/js/ads.js?821&522&300&250&0\"></script>\r\n<!-- Adtall - Ad Display Code -->', 'Footer ads code here');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

DROP TABLE IF EXISTS `tbl_about`;
CREATE TABLE IF NOT EXISTS `tbl_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(2500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `body`) VALUES
(4, '<p>Save about us</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resources`
--

DROP TABLE IF EXISTS `tbl_resources`;
CREATE TABLE IF NOT EXISTS `tbl_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resources`
--

INSERT INTO `tbl_resources` (`id`, `body`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. <a href=\"http://localhost/konblog/index.php\">Sed tortor.</a> Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

DROP TABLE IF EXISTS `user_online`;
CREATE TABLE IF NOT EXISTS `user_online` (
  `session` varchar(100) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`session`, `time`) VALUES
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318),
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318),
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318);

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

DROP TABLE IF EXISTS `welcome`;
CREATE TABLE IF NOT EXISTS `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `body`) VALUES
(1, 'EFAC is the realization of the dream of some members of Anglican Church, who had had personal encounter with our Lord Jesus Christ, to worship God in the liberty they had found at a time when the church in Nigeria was so lithurgical and there was a great gap between what the scriptures stipulated and what was being practiced in the church. EFAC was founded in England in 1961 and later introduced in Nigeria in 1978 but was inaugurated in 1979. It was not until 1987 that EFAC Enugu Zone was inaugurated, 8 years after the EFAC National was inaugurated. This delay was as a result of very stiff opposition to allowing Christian brethren to operate in the church then. It had to take a very turbulent crisis in the Enugu Diocese in which Christian brethren played very positive roles in resolving, for the then Bishop of Enugu Diocese, Rt. Rev. G. N. Otubelu to direct that EFAC be started in the churches in the Diocese. We thank God for the patience and resilience of the pioneers of Enugu Zone of EFAC. ');
--
-- Database: `project1`
--
CREATE DATABASE IF NOT EXISTS `project1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project1`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('head@gmail.com', 'head', 'head'),
('teacher1@gmail.com', 'teacher1', 'admin'),
('teacher2@gmail.com', 'teacher2', 'admin'),
('teacher3@gmail.com', 'teacher3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('5bd1a29b0514c', '5bd1a29b1c417'),
('5bd1a29b7d4b8', '5bd1a29b8ae6e');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('owinohvicky@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2019-10-01 15:28:17'),
('owinohvicky@gmail.com', '558922ec03021', 4, 2, 2, 0, '2019-10-01 15:29:54'),
('owinohvicky@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2019-10-01 15:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('5bd1a29b0514c', 'left-root-right', '5bd1a29b1c417'),
('5bd1a29b0514c', 'root-left-right', '5bd1a29b1c42c'),
('5bd1a29b0514c', 'right-left-root', '5bd1a29b1c42d'),
('5bd1a29b0514c', 'none of these', '5bd1a29b1c42e'),
('5bd1a29b7d4b8', 'left-root-right', '5bd1a29b8ae62'),
('5bd1a29b7d4b8', 'root-left-right', '5bd1a29b8ae6e'),
('5bd1a29b7d4b8', 'right-left-root', '5bd1a29b8ae70'),
('5bd1a29b7d4b8', 'none of these', '5bd1a29b8ae71');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('5bd1a1a3c5e5b', '5bd1a29b0514c', 'What is inorder?', 4, 1),
('5bd1a1a3c5e5b', '5bd1a29b7d4b8', 'what is pre order?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2018-10-20 14:47:04', 'teacher1@gmail.com'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2018-10-20 14:47:56', 'teacher2@gmail.com'),
('5bd1a1a3c5e5b', 'Data Structure', 1, 0, 2, 1, 'ds exam', 'ds', '2018-10-25 10:57:39', 'teacher2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('owinohvicky@gmail.com', 9, '2019-10-01 15:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Owinoh', 'M', 'UoE', 'owinohvicky@gmail.com', 726032764, '827ccb0eea8a706c4c34a16891f84e7b');
--
-- Database: `votesystem`
--
CREATE DATABASE IF NOT EXISTS `votesystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `votesystem`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'owinoh', '$2y$10$KhSoGRuYZzuwbmq1QxX/gupwTtGkvOuwJYVQhG3FSgUczOOA2KUjO', 'Admin.', 'owinoh', 'logo.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'Josh ', 'Brolin', 'thanossmile.jpg', 'Marvel Cinematic Universe'),
(19, 9, 'Tom', 'Hiddleston', 'AvengerIW4 (2).jpg', 'Marvel Cinematic Universe'),
(20, 9, 'James', 'Spader', 'ultron.jpg', 'Marvel Cinematic Universe'),
(21, 9, 'Cate', 'Blanchett', 'hela.jpg', 'Marvel Cinematic Universe'),
(22, 9, 'Michael B', 'Jordan', 'killmongr.jpg', 'Marvel Cinematic Universe'),
(23, 9, 'Hugo', 'Weaving', 'reddd.jpg', 'Marvel Cinematic Universe'),
(24, 9, 'Tom', 'Vaughan', 'ebony.jpg', 'Marvel Cinematic Universe'),
(25, 8, 'Mark', 'Doe', 'mask.jpg', 'Sample ...............'),
(26, 8, 'Bruno', 'Jr', 'Opi51c74ead38850.png', 'Sample ..'),
(27, 10, 'Christine', 'Taylor', '', 'school representative'),
(28, 10, 'Aketch ', 'owinoh', '', 'school representative\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'CHAIR PERSON', 1, 1),
(9, 'SEC. GEN', 1, 2),
(10, 'CONGRESS ', 1, 3),
(11, 'treasurer', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
CREATE TABLE IF NOT EXISTS `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(5, 'pSMQYCjWk5dnmaD', '$2y$10$BhnhcZfQ40Bufse7yKqjoOu0/G4BuqZu2z8It5XpSUcKuTPhMcPxa', 'Harry', 'Den', 'dealer-logo.jpg'),
(6, 'Is92CPnGcvOy4ue', '$2y$10$2eF0UGUbOcH8L1ny0qXE0uw8pMJMNUUozoYSJw0ZXKGlZx8rYDuea', 'Tony', 'Jr', 'favicon.png'),
(7, 'gwvIniKqT5xsWJc', '$2y$10$wY1VSzxdR1X9RpSo3oKodumhkFihorsT2K1zausafYiNnnqYqscje', 'Danny', 'Hill', 'TROLLFACE-DEAL-WITH-IT.png'),
(8, 'IpqGblR7m6tQFhz', '$2y$10$3ov.kMMWqHBO8KBtjix6p.hw642C7Y5w/.r.OGU4VQRiG3qtvRji2', 'Tom', 'Lee', 'e360bc98dbb4441f73d253f90723d9a4.jpg'),
(9, 'fxdNBZ5hoi87rqI', '$2y$10$zrjd/OWccwoGfGA1Uh2moOSEfraxe7ozQt30thOGoYWupwmliVyDC', 'Logan', 'Paul', 'male2.png'),
(10, 'fpivPIEFjTL3qZ5', '$2y$10$SOTAHllEO.CrqSewCSHK4.g9w1xbmbOkiCsbulmrzXn/XlPSMjtlG', 'Angelina', 'Stone', 'female3.jpg'),
(11, 'KkMWRcTZPf7xNgU', '$2y$10$ZYpT8rgNn/ohBX1xx2DU6.QMCSjasqJNTRHpkJ/mFUPCGTk6wLOzW', 'James', 'Cooper', 'male.png'),
(12, 'syG6zQqTNDChdZ1', '$2y$10$iqhdKLw3VAopiEprzWM4letKheG23V.MYrAa330SmfdYE7bbuNFuO', 'Christine', 'Taylor', 'female4.jpg'),
(13, 'KPCDpH5TltFIkAB', '$2y$10$eMVtYY6tGlrhZuSQl7CYXebiS66gT8nuo6pLCk1DMKWI9M0iwABJm', 'Sophia', 'Turner', 'female.jpg'),
(14, 'pCPEeQjhu4KD6MO', '$2y$10$7kUrF.nydR2FZqxaTi1Qze.H.Ef7mSaWbJrH3VZ1FJoCqhKPEv7ZS', 'Martin', 'Gray', 'mask.jpg'),
(15, 'lAk28ZYIDhc1Knx', '$2y$10$ytBC..XdOirlLSIJHeu5AetTGQbcxs42pYBMi6gK2LZEeU4TVN6aC', 'Victor', 'owinoh', 'profile.jpg'),
(16, 'lqyvXeC1ZIkbJHN', '$2y$10$fO.V4DyY7biwZYWUmHnN0.k1uZa40qdiosGeeOOjXAjdXkwzGNxFC', 'William', 'Carter', 'profile.jpg'),
(17, '8MGHvWJAI2CfeuU', '$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.', 'Wilson', 'Cooper', 'profile.jpg'),
(18, '8xMWBR4dO9vqb1j', '$2y$10$8eA5IWmHUjSMkR91jjmNEuyeteo/VaiVp6Op8i1p/Wzn2yTkVA8BK', 'Aketch ', 'Okoth', 'FB_IMG_15667566647533288.jpg'),
(19, 'zEcyXdPCtKaOgkG', '$2y$10$cf1WADQzi5T0TPNvOM4xfOdx6ZTeJsJbGnKmccO/PZT1lESe9BplW', 'michael', 'osiemo', ''),
(20, 'dmOVfbMzTpxgNjs', '$2y$10$8WQ3PTr5YClmJHixLfde/uhPw00y45K/fpIoDmletD.RbZO0Cupwa', 'vincent', 'ombhoho', ''),
(21, 'j8pl1VruRTX9mMx', '$2y$10$bubsJoHQnGwPlA6zYUNt7ezTBZTH4sq1Q/uJ2I2Dub2ljoEGHO8l2', 'mike', 'osiemo', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(1, 18, 25, 8),
(2, 18, 20, 9),
(3, 18, 28, 10),
(4, 19, 26, 8),
(5, 19, 19, 9),
(6, 19, 27, 10),
(7, 20, 25, 8),
(8, 20, 20, 9),
(9, 20, 27, 10);
--
-- Database: `voting`
--
CREATE DATABASE IF NOT EXISTS `voting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `voting`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
