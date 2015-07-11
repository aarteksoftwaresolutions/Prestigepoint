-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: mysql3000.mochahost.com
-- Generation Time: May 07, 2015 at 12:23 AM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aartek14_prestigepoint_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `ADMIN_LOGIN_ID` int(60) NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `FIRST_NAME` varchar(60) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `CONTACT_NO` varchar(12) DEFAULT NULL,
  `ADMIN_TYPE` int(10) DEFAULT NULL,
  `STATUS_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_LOGIN_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`ADMIN_LOGIN_ID`, `EMAIL_ID`, `PASSWORD`, `IS_DELETED`, `FIRST_NAME`, `LAST_NAME`, `CONTACT_NO`, `ADMIN_TYPE`, `STATUS_ID`) VALUES
(1, 'admin@gmail.com', 'Aartek2013', 1, NULL, NULL, NULL, 1, NULL),
(2, 'sandeep@gmail.com', '123', 1, NULL, NULL, NULL, 1, NULL),
(3, 'patidar@gmail.com', '1234', 1, NULL, NULL, NULL, 2, NULL),
(4, 'sandeepp@gmail.com', '123', 1, 'sandeep', 'patidar', '8602219170', 3, NULL),
(5, 'mayank@gmail.com', '12345', 1, 'mayank', 'sir', '8602219170', 2, 1),
(6, 'jariyasandeep@gmail.com', '12345', 1, 'sandeep', 'jariya', '8871871977', 3, 1),
(7, 'SAF@gmail.com', '123', 1, 'ESWDF', 'WESFR', 'SDF', 0, 1),
(8, 'adxas@gmail.com', '123', 1, 'asd', 'aaaasd', 'szfcsdg', 0, 1),
(9, 'meenal@gmail.com', '123', 1, 'sada', 'asdfa', 'ascdfaf', 4, 1),
(10, 'sfc@gmail.com', '123', 1, 'zcfd', 'sdxfvgs', 'sfc', 0, 1),
(11, 'zcs@gma.com', '123', 1, 'zc', 'zxc', 'zcsd', 0, 1),
(12, 'radha@gmail.com', '123', 1, 'radha', 'pal', 'adxf', 2, 1),
(13, 'jiya@gmail.com', '123', 1, 'adxae', 'sadf', 'sada', 1, 1),
(14, 'piyapal@gmail.com', '123', 1, 'ad', 'sadf', 'adfasd', 3, 1),
(15, 'minakshi@gmail.com', '123', 1, 'aS', 'SQAds', 'adawes', 4, 1),
(16, 'sunita@gmail.com', '123', 1, 'sunita', 'gahrewal', '123', 4, 1),
(17, 'xdgfv23q34524@gmail.com', '123', 1, '132142342333xdfsdffsdfsdfsdddddddddddddddddddddddd', '324325346fdggggggggggggggggggggggggggggggggggggggg', 'sdefrdfrg132', 0, 1),
(18, 'radha@gmail.com', '123', 1, 'radha', 'pal', '123', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `BATCH_ID` int(60) NOT NULL AUTO_INCREMENT,
  `BATCH_NAME` varchar(60) DEFAULT NULL,
  `START_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`BATCH_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`BATCH_ID`, `BATCH_NAME`, `START_DATE`, `IS_DELETED`) VALUES
(1, 'core + adv', '27-10-2014', 0),
(2, 'Batch0004', '01-11-2014', 1),
(3, 'Batch0003', '03-09-2014', 1),
(4, 'Batch0002', '02-08-2014', 1),
(5, 'Batch0001', '01-07-2014', 1),
(6, 'Old Batch', '01-01-2013', 1),
(7, 'Batch0005', '01-12-2014', 1),
(8, 'Batch0006', '01-01-2015', 1),
(9, 'Batch0000', '15-04-2015', 1),
(10, 'asdwce', '', 1),
(11, 'zscdsvgf', '', 1),
(12, 'ASDWWEAAA', '', 0),
(13, 'Batch000', '', 1),
(14, 'Batch 009', '02-04-2015', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c3p0_con_test`
--

CREATE TABLE IF NOT EXISTS `c3p0_con_test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `COURSE_ID` int(60) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(100) DEFAULT NULL,
  `COURSE_FEE` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `ADMIN_LOGIN_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `COURSE_FEE`, `IS_DELETED`, `ADMIN_LOGIN_ID`) VALUES
(1, 'Corporate  Training', 350001, 1, NULL),
(2, 'Industrial Training', 15000, 1, NULL),
(5, 'College Training ', 4500, 1, NULL),
(6, 'Orcle10g', 10000, 1, NULL),
(7, 'java', 100000, 0, NULL),
(8, 'axdDRFYH', 2345, 0, NULL),
(9, 'javap', 120000, 0, NULL),
(10, 'DB', 10000, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currentbatch`
--

CREATE TABLE IF NOT EXISTS `currentbatch` (
  `CURRENT_BATCH_ID` int(60) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(60) DEFAULT NULL,
  `NO_OF_STUDENT` int(30) DEFAULT NULL,
  `BATCH_ID` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(3) DEFAULT NULL,
  `CURRENT_TOPIC` varchar(60) DEFAULT NULL,
  `BATCH_NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`CURRENT_BATCH_ID`),
  KEY `BATCH_ID` (`BATCH_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `currentbatch`
--

INSERT INTO `currentbatch` (`CURRENT_BATCH_ID`, `STATUS`, `NO_OF_STUDENT`, `BATCH_ID`, `IS_DELETED`, `CURRENT_TOPIC`, `BATCH_NAME`) VALUES
(1, 'close', 25, NULL, 1, 'Request Dispatcher', 'Adavnce Java 9.00 Am Batch'),
(2, '0', NULL, NULL, 0, 'wqa3rfq23q4r2353465464cbcgfhhhhgvhbghghg', 'Wqaerq'),
(3, 'open', 50, NULL, 1, 'Util Package', 'Advance Java 7.00am Batch');

-- --------------------------------------------------------

--
-- Table structure for table `currentstatus`
--

CREATE TABLE IF NOT EXISTS `currentstatus` (
  `CURRENT_STATUS_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CURRENTSTATUS` tinytext,
  `IS_DELETED` int(10) DEFAULT NULL,
  PRIMARY KEY (`CURRENT_STATUS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `currentstatus`
--

INSERT INTO `currentstatus` (`CURRENT_STATUS_ID`, `CURRENTSTATUS`, `IS_DELETED`) VALUES
(0, 'Struts', 1),
(1, 'Core Java', 1),
(2, 'Servlet', 1),
(3, 'JSP', 1),
(4, 'JDBC', 1),
(5, 'Hibernate', 1),
(6, 'Spring', 1),
(7, 'Demo', 1),
(8, 'Placed', 1),
(9, 'Left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_footer`
--

CREATE TABLE IF NOT EXISTS `dynamic_footer` (
  `student_id` int(50) NOT NULL AUTO_INCREMENT,
  `student_name` tinytext,
  `company_name` tinytext,
  `student_comment` text,
  `is_deleted` int(10) DEFAULT NULL,
  `is_status_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `dynamic_footer`
--

INSERT INTO `dynamic_footer` (`student_id`, `student_name`, `company_name`, `student_comment`, `is_deleted`, `is_status_active`) VALUES
(59, 'Arwa Kadri', 'Placed In Mastek', 'I give the credit of my success to Prestige point. I completed my engineering from electronics\r\n                branch; I had no idea about coding, processing or any of the concepts used in software systems. I joined\r\n                the corporate training program in Prestige point', 1, 1),
(60, 'Divakar', 'Placed In Cognizant', 'I joined Prestige Point to pursue my Industrial training in my final year of engineering. A well\r\n                planned schedule from the mentors helped me to achieve the necessary exposure to the software industry\r\n                in a short span of 45 days.', 1, 1),
(61, 'Ashutosh Kumarg', 'Placed In TCS', 'Prestige Point was the actual destination where I discovered my interest in coding; I thank the\r\n                mentors here to motivate me and to develop my interest in the technical concepts in the time which\r\n                needed it the most.', 1, 0),
(62, 'shilpa', 'Aartek', 'awesome', 0, 0),
(63, 'dsdd', 'szdfd', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 0),
(64, 'aszcf', 'asdsew', 'sadf', 1, 0),
(65, 'ravi1111111111111111111111111111111111111111111111', '111111111111111111ssssssssssssssssssssssssssssssss', '11111111111111111111111111ffffffffffffffffffffffffffffffffffffffffffffffffffffff', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emi`
--

CREATE TABLE IF NOT EXISTS `emi` (
  `EMI_ID` int(60) NOT NULL AUTO_INCREMENT,
  `AMOUNT` int(60) DEFAULT NULL,
  `DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `REGISTRATION_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`EMI_ID`),
  KEY `REGISTRATION_ID` (`REGISTRATION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=309 ;

--
-- Dumping data for table `emi`
--

INSERT INTO `emi` (`EMI_ID`, `AMOUNT`, `DATE`, `IS_DELETED`, `REGISTRATION_ID`) VALUES
(3, 0, '2014-10-29', 1, NULL),
(5, 0, '2014-11-06', 1, NULL),
(6, 0, '2014-11-07', 1, NULL),
(8, 0, '2014-11-07', 1, NULL),
(9, 0, '2014-11-07', 1, NULL),
(10, 0, '2014-11-07', 1, NULL),
(11, 0, '2014-11-07', 1, NULL),
(12, 0, '2014-11-07', 1, NULL),
(13, 0, '2014-11-07', 1, NULL),
(14, 0, '2014-11-07', 1, NULL),
(15, 0, '2014-11-07', 1, NULL),
(16, 0, '2014-11-07', 1, 14),
(17, 0, '2014-11-07', 1, NULL),
(18, 0, '2014-11-07', 1, NULL),
(19, 10000, '2014-11-07', 1, 16),
(20, 7000, '2014-10-28', 1, 16),
(21, 5000, '2014-11-07', 1, 5),
(22, 5000, '2014-11-07', 1, 8),
(23, 0, '2014-11-07', 1, NULL),
(24, 6000, '2014-11-07', 1, 15),
(25, 10000, '2014-10-10', 1, 15),
(26, 4500, '2014-11-08', 1, 17),
(27, 10000, '2014-11-08', 1, 13),
(28, 7000, '2014-08-15', 1, 13),
(29, 10000, '2014-11-08', 1, 18),
(30, 0, '2014-11-08', 1, NULL),
(31, 10000, '2014-11-08', 1, 19),
(32, 10000, '2014-11-08', 1, 12),
(33, 1000, '2014-11-08', 1, 11),
(34, 5000, '2014-11-08', 1, 7),
(35, 0, '2014-11-08', 1, 20),
(36, 0, '2014-11-08', 1, 21),
(37, 0, '2014-11-08', 1, 22),
(38, 0, '2014-11-08', 1, 23),
(39, 0, '2014-11-08', 1, 24),
(40, 0, '2014-11-08', 1, 25),
(41, 0, '2014-11-08', 1, 26),
(42, 0, '2014-11-08', 1, 27),
(43, 5000, '2014-11-08', 1, 9),
(44, 1000, '2014-11-08', 1, 10),
(45, 1500, '2014-09-17', 1, 10),
(46, 0, '2014-11-08', 1, 28),
(47, 0, '2014-11-08', 1, 29),
(48, 0, '2014-11-08', 1, NULL),
(49, 0, '2014-11-08', 1, NULL),
(50, 0, '2014-11-08', 1, NULL),
(51, 10000, '2014-09-08', 1, 11),
(52, 4000, '2014-09-25', 1, 7),
(53, 5000, '2014-11-03', 1, 7),
(54, 5000, '2014-10-15', 1, 12),
(55, 15000, '2014-11-09', 1, 31),
(56, 20000, '2014-11-09', 1, 32),
(57, 0, '2014-11-09', 1, 33),
(58, 0, '2014-11-09', 1, NULL),
(59, 0, '2014-11-09', 1, 35),
(60, 0, '2014-11-09', 1, 36),
(61, 0, '2014-11-09', 1, NULL),
(62, 0, '2014-11-10', 1, 38),
(63, 0, '2014-11-10', 1, NULL),
(64, 0, '2014-11-10', 1, 40),
(65, 0, '2014-11-10', 1, 41),
(66, 0, '2014-11-10', 1, 42),
(67, 0, '2014-11-10', 1, 43),
(68, 0, '2014-11-10', 1, 44),
(69, 0, '2014-11-10', 1, 45),
(70, 0, '2014-11-10', 1, 46),
(71, 0, '2014-11-10', 1, 47),
(72, 0, '2014-11-10', 1, 48),
(73, 0, '2014-11-10', 1, 49),
(74, 0, '2014-11-10', 1, NULL),
(75, 0, '2014-11-10', 1, NULL),
(76, 0, '2014-11-10', 1, 52),
(77, 0, '2014-11-10', 1, 53),
(78, 0, '2014-11-10', 1, NULL),
(79, 0, '2014-11-10', 1, 55),
(80, 0, '2014-11-10', 1, 56),
(81, 0, '2014-11-10', 1, 57),
(82, 0, '2014-11-10', 1, 58),
(83, 0, '2014-11-10', 1, 59),
(84, 0, '2014-11-10', 1, 60),
(85, 0, '2014-11-10', 1, 61),
(86, 0, '2014-11-10', 1, 62),
(87, 0, '2014-11-10', 1, NULL),
(88, 0, '2014-11-10', 1, 64),
(89, 0, '2014-11-10', 1, 65),
(90, 0, '2014-11-10', 1, 66),
(91, 0, '2014-11-10', 1, 67),
(92, 0, '2014-11-10', 1, 68),
(93, 0, '2014-11-10', 1, NULL),
(94, 0, '2014-11-10', 1, NULL),
(95, 0, '2014-11-10', 1, 71),
(96, 0, '2014-11-10', 1, 72),
(97, 0, '2014-11-10', 1, 73),
(98, 0, '2014-11-10', 1, 74),
(99, 0, '2014-11-10', 1, 75),
(100, 0, '2014-11-10', 1, 76),
(101, 0, '2014-11-10', 1, 77),
(102, 0, '2014-11-10', 1, 78),
(103, 0, '2014-11-10', 1, 79),
(104, 0, '2014-11-10', 1, 80),
(105, 0, '2014-11-10', 1, NULL),
(106, 0, '2014-11-10', 1, 82),
(107, 0, '2014-11-10', 1, 83),
(108, 0, '2014-11-10', 1, NULL),
(109, 0, '2014-11-10', 1, 85),
(110, 0, '2014-11-10', 1, 86),
(111, 0, '2014-11-10', 1, 87),
(112, 0, '2014-11-10', 1, NULL),
(113, 0, '2014-11-10', 1, NULL),
(114, 0, '2014-11-10', 1, 90),
(115, 5000, '2014-11-10', 1, NULL),
(116, 5000, '2014-11-10', 1, 34),
(117, 4000, '2014-11-10', 1, 50),
(118, 0, '2014-11-10', 1, NULL),
(119, 0, '2014-11-11', 1, 93),
(120, 20000, '2014-11-13', 1, 92),
(121, 15000, '2014-11-13', 1, 84),
(122, 16000, '2014-11-13', 1, 88),
(123, 8000, '2014-11-13', 1, NULL),
(124, 8000, '2014-11-13', 1, NULL),
(125, 8000, '2014-11-13', 1, 81),
(126, 20000, '2014-11-13', 1, 70),
(127, 20000, '2014-11-13', 1, NULL),
(128, 20000, '2014-11-13', 1, 69),
(129, 10000, '2014-11-13', 1, 63),
(130, 5000, '2014-11-13', 1, 51),
(131, 20000, '2014-11-13', 1, 54),
(132, 5000, '2014-11-13', 1, 39),
(133, 4500, '2014-11-29', 1, 39),
(134, 4500, '2014-09-29', 1, 39),
(135, 5000, '2014-11-13', 1, 37),
(136, 8000, '2014-11-13', 1, NULL),
(137, 8000, '2014-11-13', 1, 30),
(138, 17000, '2014-11-14', 1, 89),
(139, 5000, '2014-11-14', 1, 94),
(140, 5000, '2014-11-14', 1, 95),
(141, 5000, '2014-11-14', 1, 96),
(142, 5000, '2014-11-14', 1, 97),
(143, 1000, '2014-11-14', 1, 98),
(144, 5000, '2014-11-14', 1, 99),
(145, 5000, '2014-11-01', 1, 99),
(146, 10000, '2014-11-14', 1, NULL),
(147, 10000, '2014-11-14', 1, 101),
(148, 7000, '2014-08-08', 1, 101),
(149, 5000, '2014-11-14', 1, 102),
(150, 10000, '2014-08-15', 1, 102),
(151, 23500, '2014-11-14', 1, 103),
(152, 2000, '2014-09-18', 1, 103),
(153, 9000, '2014-10-31', 1, 103),
(154, 23500, '2014-11-14', 1, 104),
(155, 6500, '2014-09-26', 1, 104),
(156, 16000, '2014-11-14', 1, 105),
(157, 5000, '2014-10-03', 1, 105),
(158, 7000, '2014-11-14', 1, 106),
(159, 18000, '2014-11-14', 1, 107),
(160, NULL, '2014-11-14', 1, 108),
(161, 4000, '2014-11-14', 1, 109),
(162, 4000, '2014-11-14', 1, 110),
(163, 4000, '2014-11-14', 1, 111),
(164, 20000, '2014-11-14', 1, 112),
(165, 14000, '2014-11-15', 1, 113),
(166, 30000, '2014-11-15', 1, 114),
(167, 8000, '2014-11-15', 1, 115),
(168, 8000, '2014-11-15', 1, 116),
(169, 4000, '2014-11-15', 1, 117),
(170, 20000, '2014-11-15', 1, 118),
(171, 10000, '2014-11-15', 1, 119),
(172, 30000, '2014-11-15', 1, 120),
(173, 30000, '2014-11-15', 1, 121),
(174, 8000, '2014-11-15', 1, 122),
(175, 8000, '2014-11-15', 1, 123),
(176, 29000, '2014-11-15', 1, 124),
(177, 15000, '2014-11-15', 1, 125),
(178, 6000, '2014-11-15', 1, 126),
(179, 16000, '2014-11-15', 1, 127),
(180, 17000, '2014-11-15', 1, 128),
(181, 1000, '2014-09-11', 1, 88),
(182, 5000, '2014-11-17', 1, 9),
(183, 4000, '2014-11-11', 1, 106),
(184, 10000, '2014-11-17', 1, NULL),
(185, 0, '2014-11-17', 1, 129),
(186, 0, '2014-11-18', 1, NULL),
(187, 0, '2014-11-18', 1, 131),
(188, 0, '2014-11-18', 1, 132),
(189, 9500, '2014-11-18', 1, 130),
(190, 5000, '2014-11-18', 1, 130),
(191, -4000, '2014-11-11', 1, 106),
(192, 0, '2014-11-19', 1, 133),
(193, 0, '2014-11-24', 1, 134),
(194, 5000, '2014-11-25', 1, 12),
(195, 10000, '2014-11-29', 1, NULL),
(196, 5000, '2014-10-29', 1, NULL),
(197, 5000, '2014-11-29', 1, NULL),
(198, 9500, '2014-12-04', 1, NULL),
(199, 8000, '2014-11-10', 1, NULL),
(200, 5000, '2014-12-06', 1, 63),
(201, 0, '2014-12-06', 1, 137),
(202, 8000, '2014-12-06', 1, 138),
(203, 8000, '2014-12-06', 1, 139),
(204, 5000, '2014-12-08', 1, 13),
(205, 1500, '2014-12-08', 1, 140),
(206, 5000, '2014-12-08', 1, 5),
(207, 5000, '2014-12-08', 1, 8),
(208, 4000, '2014-12-08', 1, 7),
(209, 0, '2014-12-09', 1, 141),
(210, 0, '2014-12-09', 1, 142),
(211, 0, '2014-12-09', 1, 143),
(212, 500, '2014-12-09', 1, 144),
(213, 500, '2014-12-09', 1, 145),
(214, 5000, '2014-12-01', 1, 12),
(215, 3000, '2014-12-10', 1, NULL),
(216, 20000, '2014-12-11', 1, 135),
(217, 6000, '2014-12-11', 1, 16),
(218, 5555, '2014-12-12', 1, NULL),
(219, 6666, '2014-12-12', 1, NULL),
(220, 6666, '2014-12-12', 1, 146),
(221, 5252, '2014-12-12', 1, NULL),
(222, 6262, '2014-12-12', 1, 147),
(223, 3000, '2014-12-10', 1, NULL),
(224, 0, '2014-12-12', 1, 148),
(225, 2500, '2014-12-13', 1, 149),
(226, 2000, '2014-12-13', 1, 149),
(227, 10000, '2014-12-13', 1, 6),
(228, 5000, '0019-06-06', 1, 91),
(229, 4000, '2014-12-15', 1, 135),
(230, 5000, '2014-12-17', 1, 150),
(231, 5000, '2014-12-17', 1, 151),
(232, 2000, '2014-12-15', 1, 130),
(233, 5000, '2014-12-15', 1, 7),
(234, 5000, '2014-12-16', 1, 54),
(235, 3500, '2014-12-17', 1, 144),
(236, 3500, '2014-12-17', 1, 145),
(237, 1000, '2014-12-17', 1, 152),
(238, 1000, '2014-12-17', 1, NULL),
(239, 1000, '2014-12-17', 1, 153),
(240, 0, '2014-12-18', 1, 154),
(241, 2000, '2014-12-18', 1, 10),
(242, 9000, '2014-12-18', 1, 15),
(243, 0, '2014-12-19', 1, 155),
(244, 0, '2014-12-19', 1, 156),
(245, 0, '2014-12-19', 1, 157),
(246, 7000, '2014-12-19', 1, 152),
(247, 2500, '2014-12-18', 1, 130),
(248, 5000, '0026-06-06', 1, 158),
(249, 5000, '2014-11-06', 1, 158),
(250, 10000, '2014-12-20', 1, 158),
(251, 0, '2014-12-22', 1, 159),
(252, 5000, '2014-12-22', 1, 9),
(253, 4000, '2014-12-19', 1, 11),
(254, 0, '2014-12-22', 1, 160),
(255, 0, '2014-12-22', 1, 161),
(256, 0, '2014-12-22', 1, 162),
(257, 0, '2014-12-23', 1, 163),
(258, 0, '2014-12-23', 1, 164),
(259, 0, '2014-12-23', 1, 165),
(260, 5000, '2014-12-23', 1, 166),
(261, 0, '2014-12-23', 1, 167),
(262, 0, '2014-12-23', 1, 168),
(263, 0, '2014-12-23', 1, 169),
(264, 0, '2014-12-23', 1, 170),
(265, 0, '2014-12-23', 1, 171),
(266, 1000, '2014-12-19', 1, 172),
(267, 4000, '2014-12-26', 1, 172),
(268, 0, '2015-01-01', 1, 173),
(269, 5000, '2015-01-02', 1, 174),
(270, 4500, '2014-12-30', 1, 153),
(271, 1000, '2015-01-02', 1, 175),
(272, 0, '2015-01-07', 1, 176),
(273, 9500, '2015-01-08', 1, 136),
(274, 18000, '2015-01-08', 1, 100),
(275, 0, '2015-01-09', 1, NULL),
(276, 0, '2015-01-09', 1, NULL),
(277, 5000, '2015-01-09', 1, NULL),
(278, 10000, '2015-01-09', 1, NULL),
(279, 5000, '2015-01-09', 1, 177),
(280, 5000, '2015-01-13', 1, 18),
(281, 7000, '2015-01-13', 1, 91),
(282, 10000, '2015-01-14', 1, 178),
(283, 0, '2015-04-03', 1, 179),
(284, 0, '2015-04-06', 1, 180),
(285, 0, '2015-04-06', 1, 182),
(286, 0, '2015-04-06', 1, 183),
(287, 0, '2015-04-06', 1, 185),
(288, 0, '2015-04-06', 1, 184),
(289, 0, '2015-04-06', 1, 181),
(290, 0, '2015-04-06', 1, 186),
(291, 0, '2015-04-09', 1, 187),
(292, 0, '2015-04-09', 1, 188),
(293, 0, '2015-04-13', 1, 189),
(294, 0, '2015-04-13', 1, 190),
(295, 0, '2015-04-13', 1, 191),
(296, 0, '2015-04-13', 1, 192),
(297, 0, '2015-04-13', 1, 193),
(298, 0, '2015-04-14', 1, 194),
(299, 0, '2015-04-14', 1, 195),
(300, 0, '2015-04-18', 1, 196),
(301, 0, '2015-04-18', 1, 197),
(302, 30000, '2015-04-20', 1, 198),
(303, 13223, '2015-04-20', 1, 199),
(304, NULL, '2015-04-22', 1, 200),
(305, 111113, '2015-04-17', 1, 108),
(306, 0, '2015-04-23', 1, 201),
(307, 10000, '2015-04-16', 1, 178),
(308, 5000, '2015-05-06', 0, 178);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `ENQUIRY_ID` int(60) NOT NULL AUTO_INCREMENT,
  `MOBILE_NO` varchar(60) DEFAULT NULL,
  `NAME` varchar(60) DEFAULT NULL,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `DATE` varchar(60) DEFAULT NULL,
  `SUBJECT` varchar(60) DEFAULT NULL,
  `QUALIFICATION` varchar(60) DEFAULT NULL,
  `COLLAGE` varchar(60) DEFAULT NULL,
  `REFERENCE_NAME` varchar(60) DEFAULT NULL,
  `REFERENCER_MOBILE_NO` varchar(60) DEFAULT NULL,
  `HANDLED_BY` varchar(60) DEFAULT NULL,
  `TRAINING_TYPE` varchar(60) DEFAULT NULL,
  `ENQUIRY_BY` varchar(60) DEFAULT NULL,
  `Response` varchar(60) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ENQUIRY_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`ENQUIRY_ID`, `MOBILE_NO`, `NAME`, `EMAIL_ID`, `COMMENT`, `IS_DELETED`, `DATE`, `SUBJECT`, `QUALIFICATION`, `COLLAGE`, `REFERENCE_NAME`, `REFERENCER_MOBILE_NO`, `HANDLED_BY`, `TRAINING_TYPE`, `ENQUIRY_BY`, `Response`, `status`, `LAST_NAME`) VALUES
(1, '1236547896', 'praveen', 'praveen@gmail.com', 'This is message testing by praveen', 1, '30-10-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(2, '9229601415', 'sourabh', 'ssgotam6592@gmail.com', 'this institue is very good for leaning a new technology with industrial environment.', 1, '13-11-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(3, '8103138001', 'Sumit Gagngrade', 'sumitgangrade1006@gmail.com', 'oihadsfg', 1, '17-12-2014', 'java Training ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(4, '8103138001', 'vimmy', 'sumit.gangrade@aartek.co.in', 'sdbh', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(5, '9770167373', 'Shadab Ahamad', 'shadabahamad.619@gmail.com', 'Joined Corporate training batch', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(6, '9827808184', 'Shitalkumar Patel', 'shitalkumarpatel@ymail.com', 'Joined corporate training batch', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(7, '9926632504', 'Ankit Sharma', 'ankit1609sharma@gmail.com', 'joined corporate training batch\n', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(8, '8982548528', 'Mohan Choure', 'mohanchoure304@gmail.com', 'Will come for demo in Jan', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(9, '9754734804', 'Rajkumar Verma', 'rajkumarverma1990@gmail.com', ' He will join in Jan', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10, '7566604156', 'Pradeep Kumar', 'pspradeepsoni23@gmail.com', 'He will come for demo in Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(11, '9827996806', 'Rajneesh Mishra', 'rajneeshmishra70@gmail.com', 'He will come for demo in jan2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(12, '7415655531', 'Nitin Tiwari', 'nittintiwari@gmail.com', 'He will discuss with family n then come for demo', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(13, '7415655531', 'Nitin Tiwari', 'nittintiwari@gmail.com', 'He will discuss with family n then come for demo', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(14, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'She''ll join from Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(15, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'She''ll join from Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(16, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'She''ll join from Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(17, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'She''ll join from Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(18, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'She''ll join from Jan 2015', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(19, '9009660633', 'Rajat Gour', 'me_rajatgour@yahoo.in', 'He''ll join in Jan 2015\n', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(20, '7828673830', 'Shikha Lawrence', 'shikha.lawrence012@gmail.com', 'She told to come for demo in Dec 2014 but didn''t come.', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(21, '7828673830', 'Shikha Lawrence', 'shikha.lawrence012@gmail.com', 'She told to come for demo in Dec 2014 but didn''t come.', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(22, '7828673830', 'Shikha Lawrence', 'shikha.lawrence012@gmail.com', 'She told to come for demo in Dec 2014 but didn''t come.', 1, '17-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(23, '9664202478', 'Sreejith nair ', 'sreejithnair04@gmail.com', 'I have 2 years of exin MISerience in Capgemini in MIS,but my aim is to switch profile and get into java development .please assist', 1, '24-12-2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(24, '9981977447', 'Rajendra Verma', 'raj.verma.scsit@gmail.com', 'he''ll come for demo on 6th jan 2015\n', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(25, '9179346355', 'Bharat Bairagi', 'bairagi.techno@gmail.com', 'He''ll come for demo on 6th Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(26, '9893474388', 'Shubhankar Singh', 'shubhussp.singh@gmail.com', 'He''ll come for demo on 6th Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(27, '9009540639', 'Meherban Singh Kerar', 'meherbansingh1989@gmail.com', 'Joined corporate training', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(28, '9754734804', 'Rajkumar Verma', 'rajkumarverma1990@gmail.com', 'Joined corporate training', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(29, '8982548528', 'Mohan Chaure', 'mohanchaure304@gmail.com', 'Joined corporate training', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(30, '9685359034', 'Rahul Agaleha', 'rahulagaleha22@gmail.com', 'He''ll come for dem on 3rd Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(31, '9893663969', 'Kinjal Bhavsar', 'kinjal.24march@gmail.com', 'Joined corporate training', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, '9179464709', 'Rajesh  Patidar', 'Rajeshp.patidar@gmail.com', 'he''ll come for demo on 1st Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, '9074541844', 'Saroj Gupta', 'sarojgupta1990@gmail.com', 'she''ll come for demo on 3rd Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, '9589128159', 'Saurabh Dwivedi', 'som.dwivedi007@gmail.com', 'He''ll come for demo on 1st Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(35, '9009660633', 'Rajat Gour', 'me_rajatgaur@yahoo.in', 'He''ll join from 5th or 6th Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(36, '7566604156', 'Pradeep Kumar', 'pspradeepsoni23@gmail.com', 'he''ll join after 10th Jan 2015 ', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(37, '9827996806', 'Rajneesh Mishra', 'rajneeshmishra70@gmail.com', 'He''ll join in Feb', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(38, '7415655531', 'Nitin Tiwari', 'nittintiwari@gmail.com', 'he''ll discuss with his family first', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(39, '9424818234', 'Anshul Sahu', 'anshulsahu@gmail.com', 'He''ll come for demo on 1st Jan 2015', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(40, '9753543453', 'Rohit Kumar Rai', 'RohitPVR6@gmail.com', 'He''ll join in Feb', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, '8989733311', 'Krati Mittal', 'kratimittal277@gmail.com', 'Not interested', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, '9009368666', 'Pravin Kumar Patidar', 'patidarpravin19@gmail.com', 'not interested', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(44, '9406675226', 'Sarfraj', 'sarfrajbhatti786@gmail.com', 'Joined industrial training', 1, '05-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(45, '8818886801', 'Narendra Patel', 'narendrapatel765@gmail.com', 'industrial  Trainning in PHP...', 1, '09-01-2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(63, '123', 'aswdseddsfsdfsddffffffffffffff', 'asdsddd@gmail.com', 'sddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 1, '24-04-2015', 'sdfsdddddddddddddddddddddddddddddddddddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(64, '123', 'wasderwe', 'meenalpathre01@gmail.com', 'asdf', 1, '24-04-2015', 'edfr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(65, '55555555555', 'jghjhgjhgfhgyhhhhhhhhhhhhhhhhh', 'jhgjghjghwwwwwwwwwwww@sssss.com', 'hjhjwwwwwwwwwwwhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhwwwwwwwwwwwww', 1, '30-04-2015', 'jhjhgjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forum_answer`
--

CREATE TABLE IF NOT EXISTS `forum_answer` (
  `FORUM_ANSWER_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FORUM_ANSWER` varchar(1250) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `FORUM_QUESTION_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`FORUM_ANSWER_ID`),
  KEY `FORUM_QUESTION_ID` (`FORUM_QUESTION_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `forum_answer`
--

INSERT INTO `forum_answer` (`FORUM_ANSWER_ID`, `FORUM_ANSWER`, `CREATED_DATE`, `UPDATED_DATE`, `IS_DELETED`, `FORUM_QUESTION_ID`) VALUES
(1, 'To over come the problem of the fail fast we can use Concurrent HashMap.,,,,,,,,,,,,', NULL, NULL, 1, 1),
(2, 'jdbc is used for connectivity ,,,', NULL, NULL, 1, 4),
(3, ',,,,', NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `forum_question`
--

CREATE TABLE IF NOT EXISTS `forum_question` (
  `FORUM_QUESTION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FORUM_QUESTION` varchar(1250) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `SUBJECT_ID` int(60) DEFAULT NULL,
  PRIMARY KEY (`FORUM_QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `forum_question`
--

INSERT INTO `forum_question` (`FORUM_QUESTION_ID`, `FORUM_QUESTION`, `CREATED_DATE`, `UPDATED_DATE`, `IS_DELETED`, `SUBJECT_ID`) VALUES
(1, 'What is Concurrent HashMap ?', NULL, NULL, 1, 1),
(2, 'When Null Pointer Exception Comes ?', NULL, NULL, 1, 1),
(3, 'Internal Working of Proxy Object in load method?\r\n\r\nI need to know the internal working of load method in hibernate. Also I have updated the value after using the load() then how it will update the records in database. Is their is any internal working in it?,', NULL, NULL, 1, 5),
(4, 'Steps of JDBC..?', NULL, NULL, 1, 4),
(5, 'what is dependency', NULL, NULL, 1, 5),
(6, 'what is java', NULL, NULL, 1, 1),
(7, 'what is mysql?', NULL, NULL, 1, 1),
(8, 'what is dependency', NULL, NULL, 1, 5),
(9, 'what is exception', NULL, NULL, 1, 1),
(10, 'vgfcshdfjdsgvjfgvwds', NULL, NULL, 1, 1),
(11, 'wwww', NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE IF NOT EXISTS `question_answer` (
  `QUESTION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `QUESTION` mediumtext,
  `ANSWER` mediumtext,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  `SUBJECT_ID` int(60) DEFAULT NULL,
  `ANSWER1` mediumtext,
  PRIMARY KEY (`QUESTION_ID`),
  KEY `SUBJECT_ID` (`SUBJECT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`QUESTION_ID`, `QUESTION`, `ANSWER`, `IS_DELETED`, `SUBJECT_ID`, `ANSWER1`) VALUES
(4, 'Explain the impact of private constructor', 'Private Constructors can''t be access from any derived classes neither from another class. So you\r\n          have to provide a public function that calls the private constructor if the object has not been initialized,\r\n          or you have to return an instance to the object, if it was initialized. This can be useful for objects that\r\n          can''t be instantiated.', 1, 1, NULL),
(7, 'What are transient and volatile modifiers?', 'When serializable interface is declared, the compiler knows that the object has to be handled so\r\n          as so be able to serialize it. However, if you declare a variable in an object as transient, then it doesnÃÂ¢ÃÂÃÂt\r\n          get serialized. Volatile Specifying a variable as volatile tells the JVM that any threads using that variable\r\n          are not allowed to cache that value at all. Volatile modifier tells the compiler that the variable modified by\r\n          volatile can be changed unexpectedly by other parts of the program.', 1, 1, NULL),
(8, 'What are daemon threads?', 'Threads that work in the background to support the runtime environment are called daemon threads.\r\n          Eg garbage collector threads. When the only remaining threads in a process are daemon threads, the interpreter\r\n          exits. This makes sense because when only daemon threads remain, there is no other thread for which a daemon\r\n          thread can provide a service. You cannot create a daemon method but you can use public final void\r\n          setDaemon(boolean isDaemon) method to turn it into one.', 1, 1, NULL),
(10, 'difference between interface and abstract class', 'Main difference is methods of a Java interface are implicitly abstract and cannot have implementations. #Variables declared in a Java interface is by default final.#ava interface should be implemented using keyword "implements"', 1, 1, ' A Java abstract class can have instance methods that implements a default behavior.#An  abstract class may contain non-final variables.#A Java abstract class should be extended using keyword "extends".'),
(11, 'difference between JSP and Servlet', 'Servlet#1.Servlet is server side programing#2.Servlet is a private res#', 1, 2, 'Jsp#1.Jsp is client side programing#2.Jsp is a public res#'),
(12, 'difference between http and https', 'HTTP#\r\n1. It uses port 80 for communication#\r\n2. Unsecured#\r\n3.Operates at Application Layer', 1, 2, 'HTTPS#\r\n1.It uses port 443 for communication#\r\n2. Secured#\r\n3. Operates at Transport Layer'),
(13, 'What is hibernate??', 'Hibernate is a high-performance Object/Relational persistence and query service which is licensed under the open source GNU Lesser General Public License (LGPL) and is free to download. Hibernate not only takes care of the mapping from Java classes to database tables (and from Java data types to SQL data types), but also provides data query and retrieval facilities.', 1, 6, NULL),
(14, '1. What is the base class of all classes?   ', 'java.lang.Object ', 1, 1, NULL),
(15, '8. Does Java support multiple inheritance?    ', 'Java doesn''t support multiple inheritance.', 1, 1, NULL),
(16, ' Are arrays primitive data types?  ', 'In Java, Arrays are objects.', 1, 1, NULL),
(17, ' What are local variables? ', ' Local variables are those which are declared within a block of code like methods. Local variables should be initialized before accessing them.', 1, 1, NULL),
(18, 'What are instance variables? ', ' Instance variables are those which are defined at the class level. Instance variables need not be initialized before using them as they are automatically initialized to their default values.', 1, 1, NULL),
(19, 'Should a main() method be compulsorily declared in all java classes? ', ' No not required. main() method should be defined only if the source class is a java application.', 1, 1, NULL),
(20, ' Why is the main() method declared static?  ', 'main() method is called by the JVM even before the instantiation of the class hence it is declared as static.', 1, 1, NULL),
(21, 'What is the arguement of main() method?  ', 'main() method accepts an array of String object as arguement.', 1, 1, NULL),
(22, ' Can a main() method be overloaded?', '  Yes. You can have any number of main() methods with different method signature and implementation in the class.', 1, 1, NULL),
(23, ' Can a main() method be declared final? ', ' Yes. Any inheriting class will not be able to have it''s own default main() method.', 1, 1, NULL),
(24, ' Can a source file contain more than one class declaration?', '  Yes a single source file can contain any number of Class declarations but only one of the class can be declared as public.', 1, 1, NULL),
(25, 'Which package is imported by default? ', ' java.lang package is imported by default even without a package declaration.  ', 1, 1, NULL),
(26, 'Can a class be declared as protected?  ', 'The protected access modifier cannot be applied to class and interfaces. Methods, fields can be declared protected, however methods and fields in a interface cannot be declared protected.', 1, 1, NULL),
(27, ' What is the base class of all classes?', '', 1, 1, NULL),
(28, ' What is the access scope of a protected method? ', ' A protected method can be accessed by the classes within the same package or by the subclasses of the class in any package.', 1, 1, NULL),
(29, 'What is the impact of declaring a method as final? ', ' A method declared as final can''t be overridden. A sub-class can''t have the same method signature with a different implementation.', 1, 1, NULL),
(30, 'What is the main difference between Java platform and other platforms?', 'The Java platform differs from most other platforms in the sense that it''s a software-based platform that runs on top of other hardware-based platforms.It has two components:\r\n\r\n  1.  Runtime Environment\r\n   2. API(Application Programming Interface)\r\n\r\n', 1, 1, ''),
(31, 'What is difference between JDK,JRE and JVM?', ' JVM : JVM is an acronym for Java Virtual Machine, it is an abstract machine which provides the runtime environment in which java bytecode can be executed.\r\n\r\nJVMs are available for many hardware and software platforms (so JVM is plateform dependent).\r\n\r\nJRE:\r\n\r\nJRE stands for Java Runtime Environment. It is the implementation of JVM and physically exists.\r\n\r\nJDK:\r\n\r\nJDK is an acronym for Java Development Kit. It physically exists. It contains JRE + development tools. ', 1, 1, ''),
(32, '  Difference between Thread and Process in Java?', 'Thread is subset of Process, in other words one process can contain multiple threads. Two process runs on different memory space, but all threads share same memory space. Don''t confuse this with stack memory, which is different for different thread and used to store local data to that thread.\r\n\r\n\r\n', 1, 1, ''),
(33, ' Difference between start() and run() method of Thread class?', 'One of trick Java question from early days, but still good enough to differentiate between shallow understanding of Java threading model start() method is used to start newly created thread, while start() internally calls run() method, there is difference calling run() method directly. When you invoke run() as normal method, its called in the same thread, no new thread is started, which is the case when you call start() method.\r\n\r\n', 1, 1, ''),
(34, 'What is difference between static (class) method and instance method?', '\r\n1)A method i.e. declared as static is known as static method.	A method i.e. not declared as static is known as instance method.\r\n\r\n2)Object is not required to call static method.	Object is required to call instance methods.\r\n\r\n3)Non-static (instance) members cannot be accessed in static context (static method, static block and static nested class) directly.	static and non-static variables both can be accessed in instance methods.\r\n\r\n4)For example: public static int cube(int n){ return n*n*n;}	For example: public void msg(){...}.\r\n', 1, 1, ''),
(35, 'What is difference between aggregation and composition? ', 'Aggregation represents weak relationship whereas composition represents strong relationship. For example: bike has an indicator (aggregation) but bike has an engine (compostion).', 1, 1, ''),
(36, 'Which class is the superclass for every class?', 'Object class', 1, 1, NULL),
(37, 'How can I implement a thread-safe JSP page? What are the advantages and Disadvantages of using it?', 'You can make your JSPs thread-safe by having them implement the SingleThreadModel interface. This is done by adding the directive <%@ page isThreadSafe="false" %> within your JSP page.', 1, 2, NULL),
(38, 'How can we handle the exceptions in JSP ?', 'There are two ways to perform exception handling, one is by the errorPage element of page directive, and second is by the error-page element of web.xml file.\r\n', 1, 2, NULL),
(39, 'Can we use the exception implicit object in any jsp page ?', 'No. The exception implicit object can only be used in the error page which defines it with the isErrorPage attribute of page directive.', 1, 2, NULL),
(40, 'Explain include Directive and include Action of JSP.', ' This is a very popular interview question on JSP, which has been asked from long time and still asked in various interview. This question is good to test some fundamental concept like translation of JSP and difference between translation time and run time kind of concept.\r\n\r\nSyntax for include Directive is <%@ include file="fileName" %> which means we are including some file to our JSP Page when we use include directive contents of included file will be added to calling JSP page at translation time means when the calling JSP is converted to servlet ,all the contents are added to that page .one important thing is that any JSP page is complied if we make any changes to that particular page but if we have changed the included file or JSP page the main calling JSP page will not execute again so the output will not be according to our expectation, this one is the main disadvantage of using the include directive that why it is mostly use to add static  resources, like Header and footer .\r\n\r\nSyntax for include action is <jsp:include page=ârelativeURLâ /> itâs a runtime procedure means the result of the JSP page which is mentioned in relative URL is appended  to calling JSP at runtime on their response object at the location where we have used this tag\r\nSo any changes made to included page is being effected every time, this is the main advantage of this action but only relative URL we can use here ,because request and response object is passed between calling JSP and included JSP.\r\n', 1, 2, NULL),
(41, 'Difference Between include Directive and include Action of JSP .', ' Include Directive:\r\n1.include directive is processed at the translation time.\r\n2.include directive can use relative or absolute path.\r\n3.Include directive can only include contents of resource it will not process the dynamic resource.\r\n4. We can not pass any other parameter.\r\n5. We cannot  pass any request or response object to calling jsp to included file or JSP or vice versa.\r\n\r\nInclude Action:	\r\n1. Include action is processed at the run time.	\r\n2. Include action always use relative path	\r\n3. Include action process the dynamic resource and  result will be added to calling JSP.\r\n4. Here we can pass other parameter also using JSP:param.\r\n5. In this case itâs possible.\r\n', 1, 2, NULL),
(42, 'Is it possible for one JSP to extend another java class if yes how? ', 'Yes it is possible we can extends another JSP using this <%@ include page extends="classname" %> itâs a perfectly correct because when JSP is converted to servlet its implements javax.servlet.jsp.HttpJspPage interface, so for jsp page its possible to extend another java class . This question can be tricky if you donât know some basic fact J, though its not advisable to write java code in jsp instead its better to use expression language and tag library.\r\n\r\n\r\n', 1, 2, NULL),
(43, 'What is < jsp:usebean >tag why it is used?', 'JSP Syntax:\r\n<jsp:useBean\r\n        id="beanInstName"\r\n        scope="page | request | session | application"\r\n       \r\n            class="package.class"    type="package.class"\r\n\r\n           </jsp:useBean>\r\n\r\nThis tag is used to create a instance of java bean first of all it tries to find out the bean if bean instance already exist assign stores a reference to it in the variable. If we specified type, gives the Bean that type.otherwise instantiates it from the class we specify, storing a reference to it in the new variable.so jsp:usebean is simple way to create a java bean.\r\nExample:\r\n     \r\n<jsp:useBean id="stock" scope="request" class="market.Stock" />\r\n<jsp:setProperty name="bid" property="price" value="0.0" />\r\na <jsp:useBean> element contains a <jsp:setProperty> element that sets property values in the Bean,we have <jsp:getProperty>element also to get the value from the bean.\r\n\r\nExplanation of Attribute\r\n\r\n id="beanInstanceName"\r\nA variable that identifies the Bean in the scope we specify. If the Bean has already been created by another <jsp:useBean> element, the value of id must match the value of id used in the original <jsp:useBean> element.\r\nscope="page | request | session | application"\r\nThe scope in which the Bean exists and the variable named in id is available. The default value is page. The meanings of the different scopes are shown below:\r\n\r\n    page â we can use the Bean within the JSP page with the <jsp:useBean> element\r\n    request â we can use the Bean from any JSP page processing the same request, until a JSP page sends a response to the client or forwards the request to another file.\r\n\r\n    session â we can use the Bean from any JSP page in the same session as the JSP page that created the Bean. The Bean exists across the entire session, and any page that participates in the session can use it..\r\n    application â we can use the Bean from any JSP page in the same application as the JSP page that created the Bean. The Bean exists across an entire JSP application, and any page in the application can use the Bean.\r\n\r\nclass="package.class"\r\nInstantiates a Bean from a class, using the new keyword and the class constructor. The class must not be abstract and must have a public, no-argument constructor.\r\ntype="package.class"\r\nIf the Bean already exists in the scope, gives the Bean a data type other than the class from which it was instantiated. If you use type without class or beanName, no Bean is instantiated.\r\n\r\n\r\n', 1, 2, NULL),
(44, 'How can one Jsp Communicate with Java file?', 'we have import tag <%@ page import="market.stock.*â %> like this we can import all the java file to our jsp and use them as a regular class another way is  servlet can send  the instance of the java class to our  jsp and we can retrieve that object from the request obj and use it in our page.', 1, 2, NULL),
(45, 'what are the implicit Objects?', ' This is a fact based interview question what it checks is how much coding you do in JSP if you are doing it frequently you definitely know them. Implicit object are the object that are created by web container provides to a developer to access them in their program using JavaBeans and Servlets. These objects are called implicit objects because they are automatically instantiated.they are bydefault available in JSP page.\r\n\r\nThey are: request, response, pageContext, session, and application, out, config, page, and exception.\r\n', 1, 2, NULL),
(46, 'In JSP page how can we handle runtime exception?  ', ' This is another popular JSP interview question which has asked to check how candidate used to handle Error and Exception in JSP. We can use the errorPage attribute of the page directive to have uncaught run-time exceptions automatically forwarded to an error processing page.\r\n\r\nExample: <%@ page errorPage="error.jsp" %>\r\n\r\nIt will redirect the browser to the JSP page error.jsp if an uncaught exception is encountered during request processing. Within error.jsp, will have to indicate that it is an error-processing page, using the directive: <%@ page isErrorPage="true"%>\r\n\r\n', 1, 2, NULL),
(47, 'Why is _jspService() method starting with an ''_'' while other life cycle methods do not? ', 'main JSP life cycle method are jspInit() jspDestroy() and _jspService() ,bydefault whatever content we write in our jsp page will go inside the _jspService() method by the container if again will try to override this method JSP compiler will give error but we can override other two life cycle method as we have implementing this two in jsp so making this difference container use _ in jspService() method and shows that we cant override this method.\r\n\r\n\r\n\r\n\r\n', 1, 2, NULL),
(48, ' How can you pass information form one jsp to included jsp?', 'This JSP interview question is little tricky and fact based. Using < Jsp: param> tag we can pass parameter from main jsp to included jsp page\r\n\r\nExample:\r\n<jsp:include page="newbid.jsp" flush="true">\r\n<jsp:param name="price" value="123.7"/>\r\n<jsp:param name="quantity" value="4"/>\r\n\r\n\r\n\r\n', 1, 2, NULL),
(49, ' what is the need of tag library?', 'tag library is a collection of custom tags. Custom actions helps recurring tasks will be handled more easily they can be reused across more than one application and increase productivity. JSP tag libraries are used by Web application designers who can focus on presentation issues rather than being concerned with how to access databases and other enterprise services. Some of the popular tag libraries are Apache display tag library and String tag library. You can also check my post on display tag library example on Spring.\r\n\r\n', 1, 2, NULL),
(50, 'Difference between fail-fast Iterator vs fail-safe Iterator in Java ?', ' fail-fast Iterators in Java:\r\n          As name suggest fail-fast Iterators fail as soon as they realized that structure of Collection has been changed since iteration has begun. Structural changes means adding, removing or updating any element from collection while one thread is Iterating over that collection. fail-fast behavior is implemented by keeping a modification count and if iteration thread realizes the change in modification count it throws ConcurrentModificationException.\r\n\r\nJava doc says this is not a guaranteed behavior instead its done of "best effort basis", So application programming can not  rely on this behavior. Also since multiple threads are involved while updating and checking modification count and this check  is done without synchronization, there is a chance that Iteration thread still sees a stale value and might not be able to detect any change done by parallel threads. Iterators returned by most of JDK1.4 collection are fail-fast including Vector, ArrayList, HashSet etc. \r\n\r\n    fail-safe Iterator in java:\r\n  Contrary to fail-fast Iterator, fail-safe iterator doesn''t throw any Exception if Collection is modified structurally while one thread is Iterating over it because they work on clone of Collection instead of original collection and thatâs why they are called as fail-safe iterator. Iterator of CopyOnWriteArrayList is an example of fail-safe Iterator also iterator written by ConcurrentHashMap keySet is also fail-safe iterator and never throw ConcurrentModificationException in Java.\r\n\r\n\r\nThatâs all on difference between fail-safe vs fail-fast Iterator in Java.\r\n\r\n\r\n', 1, 1, ''),
(51, 'Difference between Abstract class vs Interface in Java and When to use them ?', ' When to use interface and abstract class is one of the most popular object oriented design questions and almost always asked in Java, C# and C++ interviews. In this article, we will mostly talk in context of Java programming language, but it equally applies to other languages as well. Question usually starts with difference between abstract class and interface in Java, which is rather easy to answer, especially if you are familiar with syntax of Java interface and abstract class. Things start getting difficult when interviewer ask about when to use abstract class and interface in Java, which is mostly based upon solid understanding of popular OOPS concept like Polymorphism, Encapsulation, Abstraction, Inheritance and Composition. Many programmer fumbles here, which is natural because most of them haven''t gone through real system design process and havenât seen the impact of choosing one over other. Repercussion of design decisions are best known during maintenance phase, a good design allows seamless evolution while maintaining a fragile design is nightmare. As I have said previously, some time object oriented design interview questions also helps to understand a topic better, but only if you are willing to do some research and not just mugging the answer. Questions like when to use abstract class and interface falls under same category. In order to best understand this topic, you need to work out some scenarios, examples etc. It''s best to get this kind of knowledge as part of your work but even if you don''t get there, you can supplement them by reading some good books like Head First design pattern and doing some object-oriented software design exercises. In this article, we will learn difference between abstract class and interface in Java programming language and based upon our understanding of those differences, we will try to find out some tips and guidelines to decide when its better to use abstract class over interface or vice-versa.\r\n\r\n\r\n', 1, 1, ''),
(52, 'What is difference between hide comment and output comment?', ' The jsp comment is called hide comment whereas html comment is called output comment. If user views the source of the page, the jsp comment will not be shown whereas html comment will be shown.\r\n', 1, 2, ''),
(53, 'What are context initialization parameters?', 'Context initialization parameters are specified by the <context-param> in the web.xml file, these are initialization parameter for the whole application and not specific to any servlet or JSP.', 1, 2, ''),
(54, 'What is the difference between ServletContext and PageContext?', 'ServletContext gives the information about the container whereas PageContext gives the information about the Request.', 1, 2, ''),
(55, ' What is EL in JSP?', 'The Expression Language(EL) is used in JSP to simplify the accessibility of objects. It provides many objects that can be used directly like param, requestScope, sessionScope, applicationScope, request, session etc.', 1, 2, ''),
(56, 'What is basic differences between the JSP custom tags and java beans?', '\r\n    Custom tags can manipulate JSP content whereas beans cannot.\r\n    Complex operations can be reduced to a significantly simpler form with custom tags than with beans.\r\n    Custom tags require quite a bit more work to set up than do beans.\r\n    Custom tags are available only in JSP 1.1 and later, but beans can be used in all JSP 1.x versions.\r\n', 1, 2, ''),
(57, 'Can an interface be implemented in the jsp file ? ', 'No.', 1, 2, ''),
(58, 'Which directive is used in jsp custom tag?', 'The jsp taglib directive.\r\n', 1, 2, ''),
(59, 'What are the 3 tags used in JSP bean development?', '\r\n1.  jsp:useBean\r\n\r\n 2. jsp:setProperty\r\n\r\n 3. jsp:getProperty\r\n\r\n', 1, 2, ''),
(60, 'How to create Immutable Class and Object in Java ?', 'Here is complete code example of writing immutable class in Java. We have followed simplest approach and all rules for making a class immutable, including it making class final to avoid putting immutability at risk due to Inheritance and Polymorphism.\r\n\r\n\r\n\r\n\r\n\r\npublic final class Contacts\r\n {\r\n    private final String name;\r\n\r\n    private final String mobile;\r\n\r\n    public Contacts(String name, String mobile)\r\n {\r\n\r\n        this.name = name;\r\n\r\n        this.mobile = mobile;\r\n  }\r\n\r\n   \r\n\r\n    public String getName()\r\n   {\r\n\r\n        return name;\r\n\r\n    }\r\n\r\n   \r\n\r\n    public String getMobile()\r\n   {\r\n\r\n        return mobile;\r\n\r\n    }\r\n\r\n}\r\n\r\n\r\n\r\n', 1, 1, NULL),
(61, 'Why Java doesn''t support multiple inheritance?', '1) First reason is ambiguity around Diamond problem, consider a class A has foo() method and then B and C derived from A and has there own foo() implementation and now class D derive from B and C using multiple inheritance and if we refer just foo() compiler will not be able to decide which foo() it should invoke. This is also called Diamond problem because structure on this inheritance scenario is similar to 4 edge diamond, see below\r\n\r\n           A foo()\r\n           / \\\r\n          /   \\\r\n   foo() B     C foo()\r\n          \\   /\r\n           \\ /\r\n            D\r\n           foo()\r\n\r\nEven if we remove the top head of diamond class A and allow multiple inheritances we will see this problem of ambiguity.\r\n\r\nSome times if you give this reason to interviewer he asks if C++ can support multiple inheritance than why not Java.In that case I would try to explain him the second reason which I have given below that its not because of technical difficulty but more to maintainable and clearer design was driving factor though this can only be confirmed by any of java designer and we can just speculate. Wikipedia link has some good explanation on how different language address problem arises due to diamond problem while using multiple inheritances.\r\n\r\n2) Second and more convincing reason to me is that multiple inheritances does complicate the design and creates problem during casting, constructor chaining etc and given that there are not many scenario on which you need multiple inheritance its wise decision to omit it for the sake of simplicity. Also java avoids this ambiguity by supporting single inheritance with interfaces. Since interface only have method declaration and doesn''t provide any implementation there will only be just one implementation of specific method hence there would not be any ambiguity.\r\n\r\n\r\n\r\n\r\n', 1, 1, NULL),
(62, 'what is core java', '', 1, 1, NULL),
(63, 'what is java', '', 1, 1, ''),
(64, 'what is jvm', '', 1, 1, NULL),
(65, 'what is servlet', '', 1, 3, ''),
(68, 'IS String is Immutable', 'yes', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `CURRENT_STATUS_ID` int(60) DEFAULT NULL,
  `REGISTRATION_ID` int(60) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(60) DEFAULT NULL,
  `LAST_NAME` varchar(60) DEFAULT NULL,
  `EMAIL_ID` varchar(100) DEFAULT NULL,
  `DATE_OF_BIRTH` varchar(60) DEFAULT NULL,
  `CONTACT` varchar(60) DEFAULT NULL,
  `QUALIFICATION` varchar(60) DEFAULT NULL,
  `PARENT_CONTACT` varchar(60) DEFAULT NULL,
  `DISCOUNT` int(60) DEFAULT NULL,
  `SUBMITTED_FEE` int(60) DEFAULT NULL,
  `BATCH_ID` int(60) DEFAULT NULL,
  `YEAR_ID` int(60) DEFAULT NULL,
  `COURSE_ID` int(60) DEFAULT NULL,
  `COURSE_FEE` int(60) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  `TOTAL_FEE` int(60) DEFAULT NULL,
  `IMAGE_PATH` varchar(100) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `CITY` varchar(60) DEFAULT NULL,
  `STATE` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `HANDLEDBY` varchar(60) DEFAULT NULL,
  `REFERENCE` varchar(60) DEFAULT NULL,
  `REMARK` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`REGISTRATION_ID`),
  KEY `BATCH_ID` (`BATCH_ID`),
  KEY `YEAR_ID` (`YEAR_ID`),
  KEY `COURSE_ID` (`COURSE_ID`),
  KEY `CURRENT_STATUS_ID` (`CURRENT_STATUS_ID`),
  KEY `CURRENT_STATUS_ID_2` (`CURRENT_STATUS_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`CURRENT_STATUS_ID`, `REGISTRATION_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL_ID`, `DATE_OF_BIRTH`, `CONTACT`, `QUALIFICATION`, `PARENT_CONTACT`, `DISCOUNT`, `SUBMITTED_FEE`, `BATCH_ID`, `YEAR_ID`, `COURSE_ID`, `COURSE_FEE`, `IS_DELETED`, `TOTAL_FEE`, `IMAGE_PATH`, `STATUS`, `CITY`, `STATE`, `password`, `HANDLEDBY`, `REFERENCE`, `REMARK`) VALUES
(0, 1, 'pr', 'mn', 'mr.deepakahirwal@gmail.com', '17-10-1987', '1236547896', 'BE', NULL, NULL, NULL, NULL, 2, 2, NULL, 1, NULL, NULL, 'free', 'in', 'mp', '123', NULL, NULL, NULL),
(NULL, 2, 'Praveen', 'Raghuvanshi', 'praveen.raghuvanshii@gmail.com', '17-10-1987', '7804814213', 'MCA', NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 3, 'Praveen', 'Raghuvanshi', 'praveen.raghuvanshii@gmail.com', '17-10-1987', '7804814213', 'MCA', '8103138001', 10, 5000, NULL, 1, NULL, 35000, 1, 31500, NULL, 'paid', 'indore', 'mp', 'FR_2qXAt', NULL, NULL, NULL),
(NULL, 4, 'Sumit', 'Gangrade', 'sumitgangrade1006@gmail.com', '15-11-1999', '8103138001', 'mca', '14878945498', 2000, 10000, NULL, 1, NULL, 35000, 1, 33000, NULL, 'paid', 'indore', 'mp', 'rNj%-c*/', NULL, NULL, NULL),
(NULL, 5, 'Sumit', 'Maduriya', 'sumitmaduriya@live.com', '07-02-1992', '9907490274', 'BE', '9907490274', 12500, 10000, 2, 2, NULL, 35000, 1, 22500, NULL, 'paid', 'Indore', 'MP', '%B#Ty#Gy', NULL, NULL, NULL),
(1, 6, 'Rohit', 'Chouhan', 'rohit.chouhan11@gmail.com', '11-04-1990', '9685615500', 'BE', '9685615500', 0, 10000, 2, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'AhGQ9n!C', NULL, NULL, NULL),
(NULL, 7, 'vishal ', 'thakur', 'vishalips8@gmail.com', '10-02-1989', '7879009748', 'mca', '7879009748', 0, 23000, 5, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'madhya pradesh', 'as_$f@Z#', NULL, NULL, NULL),
(NULL, 8, 'Amit ', 'Maduriya', 'amitmaduriya@gmail.com', '01-07-1988', '8871767669', 'BE', '8871767669', 2500, 10000, 2, 1, NULL, 35000, 1, 32500, NULL, 'paid', 'Indore', 'mp', 'K7V&%8##', NULL, NULL, NULL),
(NULL, 9, 'Apoorva', 'Gosavi', 'gosavi.apoorva@gmail.com', '04-11-1989', '9926073448', 'Msc', '9926073448', 0, 15000, 4, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', '*7jECXnu', NULL, NULL, NULL),
(NULL, 10, 'amit', 'jajoo', 'amitjajoo9@gmail.com', '02-02-1991', '9098468128', 'bca', '9098468128', NULL, 4500, 3, 1, NULL, 4500, 1, 4500, NULL, 'paid', 'indore', 'madhya pradesh', 'yESs#K+R', NULL, NULL, NULL),
(NULL, 11, 'Vishal', 'Likhar', 'vishal01.likhar@gmail.com', '03-06-1989', '9179669857', 'BE', '9179669857', 0, 15000, 4, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', '47mQr_fG', NULL, NULL, NULL),
(NULL, 12, 'palak', 'pachori', 'palak.pachori1990@gmail.com', '19-12-1990', '9644844127', 'BE', '9644844127', 0, 25000, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Bhopal', 'MP', '@jNsXs/J', NULL, NULL, NULL),
(NULL, 13, 'Shubham', 'Mukati', 'shubhammukati10@gmail.com', '10-12-1992', '9770163261', 'BCA', '9770163261', NULL, 22000, 5, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'S+gv7M9^', NULL, NULL, NULL),
(NULL, 14, 'Test', 'Test', 'sumitgangrade1006@gmail.com', '13-10-1998', '81315654646', 'mca', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 15, 'Tarun', 'verma', 'tverma160@gmail.com', '26-06-1990', '8109548648', 'BE', '8109548648', NULL, 25000, 5, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'dewas', 'mp', 'eq_h-mu*', NULL, NULL, NULL),
(NULL, 16, 'Rahul', 'Raghuvanshi', 'rahulraghuwanshidedla@gmail.com', '02-03-1994', '9009259299', 'BCA', '9009259299', NULL, 23000, 5, 15, NULL, 35000, 1, 35000, NULL, 'paid', 'Dhar', 'MP', 'a_C4x@zW', NULL, NULL, NULL),
(NULL, 17, 'shyam', 'patidar', 'patidar109@gmail.com', '10-06-1991', '9009415192', 'BE', '9009415192', NULL, 4500, 2, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'WBbQ%=JY', NULL, NULL, NULL),
(NULL, 18, 'khushbu', 'kanade', 'kanade.khushbu@gmail.com', '29-09-1989', '9755188405', 'MCS', '9977291578', 0, 15000, 2, 12, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'madhya pradesh', '&q-8_Bgh', NULL, NULL, NULL),
(NULL, 19, 'khushbu', 'kanade', 'kanade.khushbu@gmail.com', '29-09-1989', '9755188405', 'MCS', '9755188405', 0, 10000, 2, 12, NULL, 35000, 0, 35000, NULL, 'paid', 'indore', 'Madhya Pradesh', 'H5%E%wHE', NULL, NULL, NULL),
(NULL, 20, 'Mohammad', 'Azim', 'Khanazim748@gmail.com', '17-01-1988', '8349099217', 'BE', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'free', 'Indore', 'MP', '12345', NULL, NULL, NULL),
(NULL, 21, 'umashankar', 'nayak', 'umashankarnayak13@gmail.com', '07-07-1989', '8962506657', 'be', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'MP', '12345', NULL, NULL, NULL),
(NULL, 22, 'nimisha', 'rawal', 'nimisharawal20@gmail.com', '20-07-1989', '9926530359', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'MP', '12345', NULL, NULL, NULL),
(NULL, 23, 'tarkesh', 'raghuwanshi', 'tarkesh.raghuwanshi@gmail.com', '14-12-1988', '8269316995', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'MP', '12345', NULL, NULL, NULL),
(NULL, 24, 'vipul pratap singh', 'bhadouriya', 'vipul.9171@gmail.com', '06-09-1989', '8109517638', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 25, 'rohit', 'patidar', 'rohitpatidar0509@gmail.com', '05-09-1989', '8349906430', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 26, 'Aditya narayan', 'sharma', 'adityasharma.sharma294@gmail.com', '29-12-1986', '8253011806', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'bhind', 'mp', '12345', NULL, NULL, NULL),
(NULL, 27, 'abhay', 'sharma', 'abhay2289@gmail.com', '20-10-1989', '9907305566', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 28, 'vimmy', 'banjara', 'vimmy@gmail.com', '18-10-1989', '9009288059', 'MCA', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'Ratlam', 'MP', '12345', NULL, NULL, NULL),
(NULL, 29, 'vikas', 'arya', 'arya.vikas91@gmail.com', '20-10-1991', '8878968760', 'be', NULL, NULL, NULL, NULL, 12, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 30, 'rajendra', 'kumar', 'rajendrakumarmahant@gmail.com', '12-06-1986', '9926192074', 'mca', '9926192074', 12000, 8000, 6, 13, NULL, 35000, 1, 23000, NULL, 'paid', 'indore', 'mp', '^ATE3xeS', NULL, NULL, NULL),
(NULL, 31, 'arvindar singh', 'chhabra', 'arvindar.2010@gmail.com', '26-04-1989', '9993600876', 'be', '9993600876', 0, 15000, 6, 12, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'tqv/=vKB', NULL, NULL, NULL),
(NULL, 32, 'romin', 'jain', 'rominjain18@gmail.com', '18-04-1990', '7869995538', 'be', '7869995538', 5000, 20000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', 'JgQ@6vhy', NULL, NULL, NULL),
(NULL, 33, 'Vimmy', 'Banjara', 'princessvims@gmail.com', '18-10-1989', '9009288059', 'MCA', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'Ratlam', 'MP', '123456', NULL, NULL, NULL),
(NULL, 34, 'Rasika', 'Neema', 'rasika.neema@gmail.com', '25-09-1990', '9589221690', 'be', '9589221690', 0, 5000, 3, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'mp', '=z7fw#$S', NULL, NULL, NULL),
(NULL, 35, 'Himanshu', 'Chauhan', 'himanshu.chauhan25@gmail.com', '21-12-1990', '9926201290', 'BE', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 36, 'amit', 'bhand', 'amitdeshmukh1810@gmail.com', '18-10-1985', '9009999036', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 37, 'amit', 'bhand', 'amitdeshmukh1810@gmail.com', '18-10-1985', '9009999036', 'BCA', '9009999036', 0, 5000, 3, 13, NULL, 35000, 0, 35000, NULL, 'paid', 'indore', 'mp', 'WW3bQJa+', NULL, NULL, NULL),
(NULL, 38, 'apoorva', 'avinash gosavi', 'gosavi.apoorva@gmail.com', '04-11-1990', '9926073448', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 39, 'arshad ', 'mansuri', 'arshad3mansuri7@gmail.com', '03-07-1988', '8109976825', 'be', '8109976825', 0, 14000, 4, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'w2Un&5de', NULL, NULL, NULL),
(NULL, 40, 'vishal', 'likhar', 'vishal01.likhar@gmail.com', '03-06-1989', '9179669857', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 41, 'vishal', 'likhar', 'vishal01.likhar@gmail.com', '03-06-1989', '9179669857', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 42, 'ajay', 'pandey', 'ajay.pandey@gmail.com', '08-01-1984', '9977104295', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 43, 'ajay', 'pandey', 'ajay.pandey@gmail.com', '08-01-1984', '9977104295', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 44, 'vijay', 'mali', 'vjmali121@gmail.com', '22-05-1993', '9685538949', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 45, 'rahul', 'raghuvanshi', 'RahulRaghuwanshidedla@gmail.com', '02-03-1994', '8103576137', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'dhar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 46, 'govinda', 'parihar', 'Govindaparihar111@gmail.com', '27-09-1993', '8305632318', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'dhar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 47, 'shubham', 'mukati', 'shubhammukati10@gmail.com', '10-12-1992', '9770163261', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'dhar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 48, 'shrikant', 'sharma', 'shri.sharma22@gmail.com', '28-08-1986', '9074470758', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 49, 'vimmy', 'banjara', 'princessvims@gmail.com', '18-10-1989', '9009288059', 'mca', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'ratlam', 'mp', '123456', NULL, NULL, NULL),
(NULL, 50, 'abhinav', 'jain', 'abhinav.jain820@gmail.com', '13-04-1990', '8602505201', 'be', '8602505201', 0, 4000, 2, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', '+qahpzQM', NULL, NULL, NULL),
(NULL, 51, 'deepak', 'patidar', 'deepakpatidar747@gmail.com', '04-07-1991', '8458804022', 'be', '8458804022', 0, 5000, 2, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'Z9PpX^HH', NULL, NULL, NULL),
(NULL, 52, 'pankaj', 'panchal', 'pp.MONSTER89@gmail.com', '17-05-1989', '09907531117', 'be', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 53, 'ayush', 'upadhyay', 'upadhyay2690@gmail.com', '26-02-1990', '8871877532', 'be', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 54, 'nitin', 'matta', 'nitinmatta15@gmail.com', '15-07-1989', '9589331232', 'be', '9589331232', 3000, 25000, 5, 1, NULL, 35000, 1, 32000, NULL, 'paid', 'indore', 'mp', 'Y++_#hZ@', NULL, NULL, NULL),
(NULL, 55, 'anand', 'yadav', 'anandyadav1977@gmail.com', '05-07-1989', '9981404431', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 56, 'Anand', 'Yadav', 'anandyadav1977@gmail.com', '05-07-1989', '9981404431', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 57, 'amol', 'londhey', 'londheyamol@gmail.com', '20-12-1988', '08458833718', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 58, 'nisha', 'sahu', 'sahunisha77@gmail.com', '03-11-1989', '9770469313', 'mca', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 59, 'sonam', 'jadon', 'snmjadon@gmail.com', '26-02-1990', '8109796438', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 60, 'prachi', 'bhawsar', 'Prachibhawsar27@gmail.com', '27-08-1989', '8989864842', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 61, 'richa', 'khare', 'richa.khare144@gmail.com', '12-11-1990', '7879143217', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 62, 'anand', 'neema', 'anand.neema2008@gmail.com', '09-07-1988', '94074120021', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 63, 'Vipul', 'Tare', 'vipul.tare@gmail.com', '06-01-1988', '9907632931', 'BE', '9907632931', 0, 15000, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'x8eErnQr', NULL, NULL, NULL),
(NULL, 64, 'alpesh', 'mehta', 'MEHTA.alpsh007@gmail.com', '25-11-1988', '8269856522', 'be', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'partapur', 'rajasthan', '123456', NULL, NULL, NULL),
(NULL, 65, 'aarti', 'rohit', 'aartirohit25@gmail.com', '14-05-1989', '7879851935', 'be', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 66, 'pankaj', 'patidar', 'pkjptr@gmail.com', '03-02-1988', '9993273883', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 67, 'netsingh', 'dhakar', 'netsingh.singh@gmail.com', '10-04-1989', '9827353071', 'mca', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 68, 'smita', 'hardia', 'Hardia.smita@gmail.com', '10-06-1993', '8817183820', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 69, 'abhishek', 'tiwari', 'tiwari.abhishek738@gmail.com', '06-04-1989', '9039289392', 'BE', '9039289392', 5000, 20000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Dewas', 'MP', 'JXSxagPG', NULL, NULL, NULL),
(NULL, 70, 'Ashutosh', 'Bhati', 'ashutosh17ab@gmail.com', '17-08-1990', '9630469646', 'BE', '9630469646', 5000, 20000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Badnawar', 'Madhya Pradesh', 'r-8Snb@9', NULL, NULL, NULL),
(NULL, 71, 'ravi sourabh', 'sharma', 'Ravisourabhsharma001@gmail.com', '31-10-1990', '9407411777', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'jhabua', 'mp', '123456', NULL, NULL, NULL),
(NULL, 72, 'piyush', 'sakalley', 'piyush.sakalley@gmail.com', '18-04-1989', '7697570333', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 73, 'priyanka', 'guru', 'priyu.sj@gmail.com', '22-06-1989', '9575767352', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'sagar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 74, 'pinki', 'athya', 'aaryaathya@gmail.com', '30-04-1990', '9584095900', 'mca', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'sagar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 75, 'ankit', 'patidar', 'ankitpatidar@gmail.com', '08-07-1990', '9754328084', 'be', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'sanawad', 'mp', '123456', NULL, NULL, NULL),
(NULL, 76, 'arwa', 'kadri', 'Kadriarwa@yahoo.in', '21-12-1989', '9753278221', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 77, 'ruchika', 'upadhyay', 'Ruchikaupadhyay10@gmail.com', '01-08-1987', '8103259942', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 78, 'nidhi', 'thakur', 'notknown@gmail.com', '16-06-1992', '8602550745', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 79, 'aashish', 'soni', 'aashu.sn@gmail.com', '15-02-1988', '7828762077', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 80, 'SAURABH', 'JAIN', 'Saurabhjain.scsit@gmail.com', '30-04-1988', '8269476160', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'lalitpur', 'mp', '123456', NULL, NULL, NULL),
(NULL, 81, 'sachin singh', 'baghel', 'Sachinbaghel010@gmail.com', '17-01-1986', '9039504447', 'mca', '9039504447', 12000, 8000, 6, 13, NULL, 35000, 1, 23000, NULL, 'paid', 'indore', 'mp', 'Agf@*rKP', NULL, NULL, NULL),
(NULL, 82, 'bhanupratap singh', 'rathore', 'bhanupratap.s.rathore@gmail.com', '15-05-1987', '9098340498', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 83, 'abhishek', 'shukla', 'Shukla.abhishek2011@gmail.com', '19-05-1989', '9826374283', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 84, 'krishnkant', 'patidar', '2590er.krishnapatidar@gmail.com', '25-07-1990', '9907952063', 'be', '9907952063', 5000, 15000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', 'pzPJXrnr', NULL, NULL, NULL),
(NULL, 85, 'gopal', 'patidar', 'gopalpatidar317@gmail.com', '01-01-1989', '9098775594', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, 'free', 'dhar', 'mp', '123456', NULL, NULL, NULL),
(NULL, 86, 'amber', 'gangrade', 'gangrade.amber@gmail.com', '20-09-1992', '9806011851', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 87, 'varunraj', 'verma', 'VarunVerma948@gmail.com', '16-06-1992', '8982034440', 'be', NULL, NULL, NULL, NULL, 12, NULL, NULL, 1, NULL, NULL, 'free', 'khandwa', 'mp', '123456', NULL, NULL, NULL),
(NULL, 88, 'anshul', 'jain', 'anshu.jain1392@gmail.com', '13-01-1992', '9039426687', 'be', '9039426687', 5000, 17000, 5, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', 'tfu%d9dz', NULL, NULL, NULL),
(NULL, 89, 'ritesh', 'kushwah', 'Ritskush1@gmail.com', '03-11-1990', '9993837432', 'be', '9993837432', 5000, 17000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'dhar', 'mp', 'z7WAU^G@', NULL, NULL, NULL),
(NULL, 90, 'shashank', 'dhupar', 'shashank.dhupar11@gmail.com', '19-09-1986', '95843490773', 'be', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 'free', 'sagar', 'mp', '123456', NULL, NULL, NULL),
(1, 91, 'Vimmy', 'Banjara', 'princessvims@gmail.com', '18-10-1989', '9009288059', 'mca', '9098062826', 0, 12000, 2, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'Ratlam', 'MP', '/*Q2*/qj', NULL, NULL, NULL),
(NULL, 92, 'Nitin', 'Matta', 'nitinmatta15@gmail.com', '15-07-1989', '9589331232', 'MCA', '9589331232', 3000, 20000, 5, 2, NULL, 35000, 1, 32000, NULL, 'paid', 'indore', 'MadhyaPradesh', 'FUR_R#up', NULL, NULL, NULL),
(NULL, 93, 'Amit', 'Bhand', 'amitdeshmukh1810@gmail.com', '18-10-1985', '09009999036', 'BCA', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'free', 'Indore', 'MP', 'amit1810', NULL, NULL, NULL),
(NULL, 94, 'Rasika ', 'neema', 'rasika.neema@gmail.com', '25-09-1990', '9589221690', 'be', '9589221690', 0, 5000, 4, 12, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'xVn#D*Gd', NULL, NULL, NULL),
(NULL, 95, 'Himanshu', 'chauhan', 'himanshu_chauhan25@gmail.com', '21-12-1990', '9926201290', 'be', '9926429271', 0, 5000, 3, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'xna7Kzt2', NULL, NULL, NULL),
(NULL, 96, 'Amit', 'bhand', 'amitdeshmukh1810@gmail.com', '18-10-1985', '9009999036', 'be', '8269128542', 0, 5000, 3, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'sBZy_uPd', NULL, NULL, NULL),
(NULL, 97, 'apoorva avinash', 'gosavi', 'gosavi.apoorva@gmail.com', '04-11-1990', '9926073448', 'be', '9826370810', 0, 5000, 4, 13, NULL, 35000, 0, 35000, NULL, 'paid', 'indore', 'mp', 'H_8**Ute', NULL, NULL, NULL),
(NULL, 98, 'vishal', 'likhar', 'vishal01.likhar@gmail.com', '03-06-1989', '9179669857', 'be', '9425961999', 0, 1000, 4, 13, NULL, 35000, 0, 35000, NULL, 'paid', 'indore', 'mp', 'RnSGR$a=', NULL, NULL, NULL),
(NULL, 99, 'Ajay', 'pandey', 'ajay.pandey@gmail.com', '08-01-1984', '9977104295', 'be', '9993296320', 5000, 10000, 5, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', 'VKHF6S5K', NULL, NULL, NULL),
(5, 100, 'vijay', 'mali', 'vjmali121@gmail.com', '22-05-1993', '9685538949', 'be', '8085204460', 0, 18000, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', '/aMsQ8bK', NULL, NULL, NULL),
(NULL, 101, 'govinda', 'parihar', 'Govindaparihar111@gmail.com', '27-09-1993', '8305632318', 'bca', '8871328045', 0, 17000, 5, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'dhar', 'mp', '/n7m&G+e', NULL, NULL, NULL),
(NULL, 102, 'shrikant', 'sharma', 'shri.sharma22@gmail.com', '28-08-1986', '9074470758', 'be', '9074470758', 0, 15000, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'a/sdF$jX', NULL, NULL, NULL),
(NULL, 103, 'Amol', 'Londhey', 'londheyamol@gmail.com', '20-12-1988', '08458833718', 'be', '9425903650', 0, 34500, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'uyKKe6uJ', NULL, NULL, NULL),
(NULL, 104, 'nisha', 'sahu', 'sahunisha77@gmail.com', '03-11-1989', '9770469313', 'mca', '9713069634', 0, 30000, 5, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'indore', 'mp', 'E#_BGt&D', NULL, NULL, NULL),
(NULL, 105, 'alpesh', 'mehta', 'MEHTA.alpsh007@gmail.com', '25-11-1988', '8269856522', 'be', '9584234934', 6500, 21000, 5, 13, NULL, 35000, 1, 28500, NULL, 'paid', 'patapur', 'rajasthan', '9Qy_W8bY', NULL, NULL, NULL),
(NULL, 106, 'pankaj', 'patidar', 'pkjptr@gmail.com', '03-02-1988', '9993273883', 'be', '9993273883', 1000, 7000, 6, 13, 2, 15000, 1, 14000, NULL, 'paid', 'indore', 'mp', '7FHh=As9', NULL, NULL, NULL),
(NULL, 107, 'netsingh', 'dhakar', 'netsingh.singh@gmail.com', '10-04-1989', '9827353071', 'mca', '9827353071', 5000, 18000, 5, 2, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', '%m62YT9$', NULL, NULL, NULL),
(NULL, 108, 'smita', 'hardia', 'Hardia.smita@gmail.com', '10-06-1993', '8817183820', 'be', '8817183820', 500, 115113, 6, 13, 5, 4500, 1, 4000, NULL, 'paid', 'indore', 'mp', 'a!tC6rJN', NULL, NULL, NULL),
(NULL, 109, 'priya', 'jain', 'Anshu.jain.9235@facebook.com', '06-09-1992', '7509100855', 'be', '7509100855', 500, 4000, 6, 13, 5, 4500, 1, 4000, NULL, 'paid', 'indore', 'mp', 'P$#6sV%V', NULL, NULL, NULL),
(NULL, 110, 'Namita', 'Sonwane', 'namita.sonwane@gmail.com', '10-06-1991', '9424816853', 'be', '9424816853', 500, 4000, 6, 13, 5, 4500, 1, 4000, NULL, 'paid', 'indore', 'mp', 'CpSddfBq', NULL, NULL, NULL),
(NULL, 111, 'Sona', 'Mehta', 'sona.mehta92@gmail.com', '22-11-1992', '8821975992', 'be', '8821975992', 500, 4000, 6, 13, 5, 4500, 1, 4000, NULL, 'paid', 'indore', 'mp', 'n^xNewBN', NULL, NULL, NULL),
(NULL, 112, 'abhishek', 'tiwari', 'tiwari.abhishek738@gmail.com', '06-04-1989', '9039289392', 'be', '9039289392', 5000, 20000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'dewas', 'mp', 'zXZ=e=+b', NULL, NULL, NULL),
(NULL, 113, 'Ravi Sourabh', 'sharma', 'Ravisourabhsharma001@gmail.com', '31-10-1990', '9407411777', 'BSc', '9407411777', 5000, 14000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'jhabua', 'mp', 'fja4gGy4', NULL, NULL, NULL),
(NULL, 114, 'Piyush', 'Sakalley', 'piyush.sakalley@gmail.com', '18-04-1989', '7697570333', 'be', '7697570333', 5000, 30000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'indore', 'mp', 'XV_gdqvS', NULL, NULL, NULL),
(NULL, 115, 'Priyanka', 'Guru', 'priyu.sj@gmail.com', '22-06-1989', '9575767352', 'mca', '9575767352', 7000, 8000, 6, 12, 2, 15000, 1, 8000, NULL, 'paid', 'Sagar', 'MP', 'YnMeDH8H', NULL, NULL, NULL),
(NULL, 116, 'Pinki', 'Athya', 'aaryaathya@gmail.com', '30-04-1990', '9584095900', 'mca', '9584095900', 7000, 8000, 6, 13, 2, 15000, 1, 8000, NULL, 'paid', 'Sagar', 'MP', '^zb/N&jw', NULL, NULL, NULL),
(NULL, 117, 'Ankit', 'Patidar', 'ankitPatidar@gmail.com', '08-07-1988', '9754328084', 'be', '9754328084', 5000, 4000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'Sanawad', 'MP', 'BE^8^^%^', NULL, NULL, NULL),
(NULL, 118, 'Arwa', 'Kadri', 'Kadriarwa@yahoo.in', '21-12-1989', '9753278221', 'MCA', '9753278221', 5000, 20000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'Khandwa', 'MP', 'paZHQnDY', NULL, NULL, NULL),
(NULL, 119, 'Nidhi', 'Thakur', 'notknown@gmail.com', '16-06-1992', '8602550745', 'msc', '8602550745', 10000, 10000, 6, 13, NULL, 35000, 1, 25000, NULL, 'paid', 'Indore', 'MP', 'a5f+S8Zb', NULL, NULL, NULL),
(NULL, 120, 'Aashish', 'Soni', 'aashu.sh@gmail.com', '15-02-1988', '7828762077', 'msc', '7828762077', 5000, 30000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'dtcnPhze', NULL, NULL, NULL),
(NULL, 121, 'Saurabh', 'Jain', 'SourabhJain.scsit@gmail.com', '30-04-1988', '8269476160', 'MCA', '8269476160', 5000, 30000, 6, 1, NULL, 35000, 1, 30000, NULL, 'paid', 'Lalitpur', 'UP', '6H5RJ3Um', NULL, NULL, NULL),
(NULL, 122, 'Sachin Singh', 'Baghel', 'Sachinbaghel010@gmail.com', '17-01-1986', '9039504447', 'mca', '9039504447', 12000, 8000, 6, 1, NULL, 35000, 1, 23000, NULL, 'paid', 'Indore', 'MP', '2pezuWc4', NULL, NULL, NULL),
(NULL, 123, 'Bhanupratap Singh', 'Rathore', 'bhanupratap.s.rathore@gmail.com', '15-05-1987', '9098340498', 'MCA', '9098340498', 12000, 8000, 6, 13, NULL, 35000, 1, 23000, NULL, 'paid', 'Indore', 'MP', '@dj95*QD', NULL, NULL, NULL),
(NULL, 124, 'Abhishek', 'Shukla', 'Shukla.abhishek2011@gmail.com', '19-05-1989', '9826374283', 'BE', '9826374283', 5000, 29000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'Vp7Z@5gW', NULL, NULL, NULL),
(NULL, 125, 'Krishnkant', 'Patidar', '2590er.krishnapatidar@gmail.com', '25-07-1990', '9907952063', 'BE', '9907952063', 5000, 15000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'zA5QVRrv', NULL, NULL, NULL),
(NULL, 126, 'Gopal', 'Patidar', 'gopalpatidar317@gmail.com', '01-01-1989', '9098775594', 'BE', '9098775594', 5000, 6000, 6, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Dhar', 'MP', 'D3YN4!-m', NULL, NULL, NULL),
(NULL, 127, 'Anshul', 'Jain', 'anshu.jain1392@gmail.com', '13-01-1992', '9039426687', 'BE', '9039426687', 5000, 16000, 5, 12, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'thpaDVfj', NULL, NULL, NULL),
(NULL, 128, 'Ritesh', 'Kushwah', 'Ritskush1@gmail.com', '03-11-1990', '9993837432', 'BE', '9993837432', 5000, 17000, 6, 13, NULL, 35000, 1, 30000, NULL, 'paid', 'Dhar', 'MP', 'aGEv%eN2', NULL, NULL, NULL),
(NULL, 129, 'test', 'test', 'test@test.com', '15-11-1996', '11111111111', 'test', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 'free', 'test', 'test', '123456', NULL, NULL, NULL),
(NULL, 130, 'pankaj', 'tyagi', 'tyagi20071989@gmail.com', '20-07-1989', '7415499080', 'btech', '7415499080', NULL, 19000, 5, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'agra', 'mp', 'Y^/3NDDH', NULL, NULL, NULL),
(NULL, 131, 'bbbb', 'cccc', 'bbb@gmail.com', '19-08-1987', '1234567890', 'mca', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 132, 'ccc', 'cccc', 'ccc@gmail.com', '22-11-1989', '1234567890', 'mca', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 133, 'abhay', 'pawar', 'abhay6555@gmail.com', '30-07-1987', '9926569594', 'mtech', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 134, 'DEEPIKA', 'CH', 'deepika3062@gmail.com', '01-12-1991', '9666815860', 'B.tech(CSE)', NULL, NULL, NULL, NULL, 1, 2, NULL, 1, NULL, NULL, 'free', 'Vijayawada', 'AP', 'Lord@jesus', NULL, NULL, NULL),
(6, 135, 'Sudhakar', 'Khemaria', 'sudhakarkhemaria@gmail.com', '25-11-1988', '9981607248', 'MCA', '9406501157', 3000, 24000, 5, 2, NULL, 35000, 1, 32000, NULL, 'paid', 'Gwalior', 'MP', 'TKrnubwP', NULL, NULL, NULL),
(1, 136, 'Vishwesh', 'Sharma', 'vishweshsharma@ymail.com', '21-03-1991', '8982155686', 'BE', '07312798282', 10000, 9500, 7, 12, NULL, 35000, 1, 25000, NULL, 'paid', 'Indore', 'MP', 'aV%7gFzb', NULL, NULL, NULL),
(NULL, 137, 'habib', 'rehman', 'habibr2050@gmail.com', '1989', '9993589314', 'B.E', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456789123', NULL, NULL, NULL),
(NULL, 138, 'Anshul', 'Sharma', 'anshul89ns@gmail.com', '18-06-1989', '8871734093', 'ME', '9755349873', 0, 8000, 7, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'CQh^_kJk', NULL, NULL, NULL),
(NULL, 139, 'Imran', 'Khan', 'khanimran.scs@gmail.com', '16-06-1987', '8889778786', 'MCA', '7898746415', 0, 8000, 7, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'favAASJF', NULL, NULL, NULL),
(NULL, 140, 'Vaibhav Varman', 'Varman', 'vvarman@yahoo.com', '03-12-1992', '8871929932', 'BE', '8871929932', 0, 1500, 7, 2, 5, 4500, 1, 4500, NULL, 'paid', 'Indore', 'MP', 'yG9Ant=z', NULL, NULL, NULL),
(NULL, 141, 'SUNIL', 'PRASAD', 'spy5233@gmail.com', '07-01-1989', '9806232230', 'MCA', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'RATLAM', 'MP', 'surat', NULL, NULL, NULL),
(NULL, 142, 'VAIBHAV', 'VARMAN', 'VVARMAN@YAHOO.COM', '03-12-1992', '8871929932', 'BE RUNNING', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'MP', '12345', NULL, NULL, NULL),
(NULL, 143, 'Shital Kumar', 'Patel', 'shitalkumarpatel@ymail.com', '01-01-1987', '9827808184', 'MCA', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'free', 'Indore', 'MP', 'shitalprestige', NULL, NULL, NULL),
(NULL, 144, 'Shital kumar', 'Patel', 'shitalkumarpatel@ymail.com', '01-07-1987', '9827808194', 'MCA', '8959861825', 0, 4000, 7, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'kX_UPY-U', NULL, NULL, NULL),
(NULL, 145, 'Sunil', 'Prasad', 'spy5233@gmail.com', '07-01-1989', '9806232230', 'MCA', '9893850205', 0, 4000, 7, 13, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'QWh%uV8-', NULL, NULL, NULL),
(0, 146, 'sandeep', 'patidar', 'patidarsandeep991@gmail.com', '05-07-1988', '8602219170', 'mca', '9669966523', 10, 6666, 7, 1, NULL, 35000, 0, 31500, NULL, 'paid', 'Indore', 'Madhya predesh', 'Ugr_uR^$', NULL, NULL, NULL),
(2, 147, 'sumitt', 'singh', 'sandeeppatidar11@gmail.com', '05-12-1989', '8601124545', 'MCA', '8602219170', 10, 6262, 1, 1, NULL, 35000, 0, 31500, NULL, 'paid', 'indore', 'mp', 'hz#eY/8%', NULL, NULL, NULL),
(NULL, 148, 'sandeep', 'Patidar', 'patidarsandeep991@gmail.com', '05-04-1989', '8686868686', 'mca', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(1, 149, 'Harshal', 'Chaskar', 'Harshal4nio@gmail.com', '05-03-1993', '9179303976', 'BE', '9754764035', 0, 4500, 2, 2, 5, 4500, 1, 4500, NULL, 'paid', 'Indore', 'MP', 'WmHd/Vr/', NULL, NULL, NULL),
(1, 150, 'neeraj', 'singh jadon', 'jadonneeraj667@gmail.com', '10-04-1993', '9977132226', 'BE', '9826895515', 5000, 5000, 7, 2, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'qvvYyx+S', NULL, NULL, NULL),
(1, 151, 'Vikas', 'Parihar', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', '9755097394', 5000, 5000, 7, 2, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'vwqn=d3*', NULL, NULL, NULL),
(1, 152, 'Habib', 'Rehman', 'habibr2050@gmail.com', '20-09-1990', '9993589314', 'BE', '9993589314', 0, 8000, 7, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', '-3f^@mm5', NULL, NULL, NULL),
(1, 153, 'Neeraj', 'Soni', 'neeraj.soni69@yahoo.com', '21-11-1987', '9617666997', 'MCA', '9826162450', 0, 5500, 7, 1, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'mp', 'DgtUQCxq', NULL, NULL, NULL),
(NULL, 154, 'VIKAS', 'PARIHAR', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'M.P.', 'vicky007', NULL, NULL, NULL),
(NULL, 155, 'VRUSHALI', 'SHELKE', 'shelke.vrushali17@gmail.com', '21-05-1990', '9665126349', 'BE IT', NULL, NULL, NULL, NULL, 12, 2, NULL, NULL, NULL, NULL, 'free', 'MUMBAI', 'MAHARASTRA', 'VrushaYoga11', NULL, NULL, NULL),
(NULL, 156, 'VRUSHALI', 'SHELKE', 'shelke.vrushali17@gmail.com', '21-05-1990', '9665126349', 'BE IT', NULL, NULL, NULL, NULL, 12, 2, NULL, NULL, NULL, NULL, 'free', 'MUMBAI', 'MAHARASTRA', 'VrushaYoga11', NULL, NULL, NULL),
(NULL, 157, 'VRUSHALI', 'SHELKE', 'shelke.vrushali17@gmail.com', '21-05-1990', '9665126349', 'BE IT', NULL, NULL, NULL, NULL, 12, 2, NULL, NULL, NULL, NULL, 'free', 'MUMBAI', 'MAHARASTRA', 'VrushaYoga11', NULL, NULL, NULL),
(5, 158, 'Chetan', 'Dwivedi', 'chetandwivedi03@gmail.com', '03-09-1989', '7879153105', 'MCA', '7879153105', 0, 20000, 5, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'NJWTpHWA', NULL, NULL, NULL),
(NULL, 159, 'VIKAS', 'PARIHAR', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'MP', 'vicky007', NULL, NULL, NULL),
(NULL, 160, 'VIKAS', 'PARIHAR', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'MP', 'vicky007', NULL, NULL, NULL),
(NULL, 161, 'VIKAS', 'PARIHAR', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'MP', 'vicky007', NULL, NULL, NULL),
(NULL, 162, 'VIKAS', 'PARIHAR', 'vikasparihar2702@gmail.com', '27-02-1992', '9039591812', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'INDORE', 'MP', 'vicky007', NULL, NULL, NULL),
(NULL, 163, 'Neeraj', 'Singh jadon', 'jadonneeraj667@gmail.com', '10-04-1993', '7869288320', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'MP', '1020304050', NULL, NULL, NULL),
(NULL, 164, 'hello', 'java', 'patidarsandeep991@gmail.com', '05-07-1988', '8602219170', 'mca', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123abc', NULL, NULL, NULL),
(NULL, 165, 'ajay', 'pandey', 'ajay.pandey166@gmail.com', '15-04-1988', '9977104295', 'MCA', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'MP', '12345', NULL, NULL, NULL),
(1, 166, 'Ayush ', 'Upadhyay', 'upadhyay2690@gmail.com', '26-02-1990', '8871877532', 'BE', '8055952563', 0, 5000, 2, 12, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', '!hF#*d4W', NULL, NULL, NULL),
(NULL, 167, 'sandeep', 'patidar', 'patidarsandeep991@gmail.com', '05-07-1988', '8602219170', 'mca', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 168, 'sandeep', 'patidar', 'patidarsandeep991@gmail.com', '05-07-1988', '8602219170', 'mca', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'indore', '123456', NULL, NULL, NULL),
(NULL, 169, 'sandeep', 'patidar', 'patidarsandeep991@gmail.com', '05-07-1988', '8602219170', 'mca', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 170, 'sandeep', 'kumar', 'patidarsandeep991@gmail.com', '05-07-1989', '8602219170', 'mca', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(NULL, 171, 'sandeep', 'patidar', 'patidarsandeep991@gmail.com', '05-07-1989', '8602219170', 'mca', NULL, NULL, NULL, NULL, 13, NULL, NULL, 0, NULL, NULL, 'free', 'indore', 'mp', '123456', NULL, NULL, NULL),
(1, 172, 'Shadab', ' Ahmad', 'shadabahamad.619@gmail.com', '08-08-1989', '9770167373', 'MCA', '09024445177', 0, 5000, 7, 2, NULL, 35000, 1, 35000, NULL, 'paid', 'Indore', 'MP', 'fW35hEWc', NULL, NULL, NULL),
(NULL, 173, 'dsas', 'asAS', 'sanj9320@gmail.com', '20-01-1983', '8800254808', 'Btech', NULL, NULL, NULL, NULL, 1, 5, NULL, 1, NULL, NULL, 'free', 'Delhi', 'Delhi', 'hesoyam123', NULL, NULL, NULL),
(1, 174, 'Sachin', 'Singh Kushwah', 'sachinkushwah20@gmail.com', '20-10-1991', '8982864997', 'BE', '9713908815', 5000, 5000, 7, 2, NULL, 35000, 1, 30000, NULL, 'paid', 'Indore', 'MP', 'qzmT34mP', NULL, NULL, NULL),
(1, 175, 'Sarfraj', 'Khan', 'Sarfrajbhatti786@gmail.com', '22-05-1989', '9406675226', 'MCA', '9993438361', 0, 1000, 8, 15, NULL, 35000, 1, 35000, NULL, 'paid', 'Vidisha', 'MP', 'u^2bs=qz', NULL, NULL, NULL),
(NULL, 176, 'VAIBHAV', 'VARMAN', 'VVARMAN@YAHOO.COM', '03-12-1993', '8871929932', 'BE', NULL, NULL, NULL, NULL, 15, 2, NULL, 1, NULL, NULL, 'free', 'INDORE', 'MP', '12345', NULL, NULL, NULL),
(1, 177, 'Rajkumar', 'Verma', 'rajkumarverma1990@gmail.com', '11-05-1990', '9754734804', 'MCA', '9179496638', 5, 5000, 8, 15, NULL, 35000, 1, 33250, NULL, 'paid', 'indore', 'mp', '&=uNTUQQ', NULL, NULL, NULL),
(1, 178, 'mohan', 'chaure', 'mohanchoure304@gmail.com', '23-01-1992', '8982548528', 'mca', '9826486487', 5, 20000, 8, 15, NULL, 35000, 1, 33250, NULL, 'paid', 'indore', 'mp', 'AqYeSwk^', NULL, NULL, NULL),
(NULL, 179, 'som365636', '365636', 'somnathmandloi08@gmail.com', '04-04-1988', '9098050003', 'mca', NULL, NULL, NULL, NULL, 15, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 180, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 181, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 182, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 183, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 184, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 185, 'Old', 'Man', 'old@gmail.com', '10-04-1945', '9898989899', 'qswqds', NULL, NULL, NULL, NULL, 13, 2, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 186, 'Jamesbond007', 'kumar', 'dhiru45@gmail.com', '10-04-1945', '8020202007', 'qswqds', NULL, NULL, NULL, NULL, 12, 6, NULL, NULL, NULL, NULL, 'free', 'wdwe', 'sdwaqs', 'abc', NULL, NULL, NULL),
(NULL, 187, 'meenal', 'pathre', 'meenalpathre01@gmail.com', '10-01-1992', '9893788779', 'BE abcdefgw', NULL, NULL, NULL, NULL, 2, 2, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '9893788770', NULL, NULL, NULL),
(NULL, 188, 'sakshi', 'pathre', 'sakshipathre01@gmail.com', '11-01-1992', '9893788770', 'BE', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '9893788770', NULL, NULL, NULL),
(NULL, 189, 'sharda', 'pal', 'meenalpathre01@gmail.com', '13-04-1992', '1234567891', 'BE', NULL, NULL, NULL, NULL, 2, 5, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 190, 'sakshi', 'pathre', 'meenalpathre01@gmail.com', '15-04-1992', '1234567891', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 191, 'akshada', 'pal', 'meenalpathre01@gmail.com', '22-04-1992', '1234567891', 'BE', NULL, NULL, NULL, NULL, 2, 2, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 192, 'akshada', 'pal', 'meenalpathre01@gmail.com', '22-04-1992', '1234567891', 'BE', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, 'free', 'indore', 'mp', '12345', NULL, NULL, NULL),
(NULL, 193, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'meenalpathre01@gmail.com', '15-04-1992', '11111111111', 'aaaaaaaaaaaaaaaaaaaa', NULL, NULL, NULL, NULL, 2, 5, NULL, NULL, NULL, NULL, 'free', 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaa', '123', NULL, NULL, NULL),
(NULL, 194, 'seeta', 'pal', 'meenalpathre01@gmail.com', '13-04-1992', '1234567891', 'BE', NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, 'free', 'indore', 'mp', '123', NULL, NULL, NULL),
(NULL, 195, 'Vinay', 'Mishra', 'mishravinay112@gmail.com', '24-08-1993', '9179874953', 'BE', NULL, NULL, NULL, NULL, 15, 5, NULL, NULL, NULL, NULL, 'free', 'Indore', 'MP', 'vinay112', NULL, NULL, NULL),
(NULL, 196, 'Navin ', 'Jain', 'jainnavin614@gmail.com', '08-04-1999', '9713950147', 'BE', NULL, NULL, NULL, NULL, 13, 2, NULL, 1, NULL, NULL, 'free', 'Indore', 'MP', '123456', NULL, NULL, NULL),
(NULL, 197, 'aaaaaaaaa', 'aaaaaaaaaaaa', 'jainnavin614@gmail.com', '03-04-1990', '9713950147', 'BE', NULL, NULL, NULL, NULL, 2, 5, NULL, NULL, NULL, NULL, 'free', 'Indore', 'MP', '123456', NULL, NULL, NULL),
(0, 198, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'sddddd@gmail.com', '11-04-1945', '1234567891', 'dfgvf', '1122', NULL, 30000, 6, 19, 5, 4500, 0, 0, NULL, 'paid', 'sads g tg b hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'C=ym^JH_', 'ZCzxfzxz', 'azsdcszaf', 'sfcsd'),
(4, 199, 'fdvfgd', 'dsfsg', 'awders@gmail.com', '11-04-2000', 'awsdewqqno', 'dwseawfrt', '123', 25, 13223, 10, 16, 6, 10000, 1, 7500, NULL, 'paid', 'dfd', 'dgfdg', '%rpcJ-b7', 'wasdfe', 'qawdsew', 'qwe'),
(0, 200, 'asdsfdgfdhfghgfghfghfgdfgfdgdf', 'asddssssssssssssssssssssssssss', 'dfgdg333333@gmail.com', '12-04-1955', 'dfgdfght22222222222222222222222222222222222222222222222', 'xdvfdgv', '123', 20, 123214, 6, 15, 2, 15000, 0, 0, NULL, 'paid', 'vdfdbgdfgdxfvgdggggggggggggggggggggggggggggggggggg', 'sdfsdfwerefsedxfcccccccccccccccccccccccccccccccccc', 'Mdk#f$us', 'asdsedf', 'asdse', 'werf'),
(NULL, 201, 'Abhay', 'Pawar', 'abhay6555@gmail.com', '30-07-1987', '9926569594', 'Mtechtre', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, NULL, NULL, 'free', 'Indore', 'MP', '12345', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scroller`
--

CREATE TABLE IF NOT EXISTS `scroller` (
  `image_id` int(100) NOT NULL AUTO_INCREMENT,
  `is_deleted` int(5) DEFAULT NULL,
  `is_status_active` int(5) DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `scroller`
--

INSERT INTO `scroller` (`image_id`, `is_deleted`, `is_status_active`) VALUES
(1, 1, 1),
(2, 0, 0),
(3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `SUBJECT_ID` int(60) NOT NULL AUTO_INCREMENT,
  `SUBJECT_NAME` varchar(60) DEFAULT NULL,
  `CREATED_DATE` varchar(60) DEFAULT NULL,
  `UPDATED_DATE` varchar(60) DEFAULT NULL,
  `IS_DELETED` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJECT_ID`, `SUBJECT_NAME`, `CREATED_DATE`, `UPDATED_DATE`, `IS_DELETED`) VALUES
(1, 'CORE JAVA', NULL, NULL, 1),
(2, 'JSP', NULL, NULL, 1),
(3, 'SERVLET', NULL, NULL, 1),
(4, 'JDBC', NULL, NULL, 1),
(5, 'SPRING', NULL, NULL, 1),
(6, 'HIBERNATE', NULL, NULL, 1),
(7, 'STRUTS', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload1`
--

CREATE TABLE IF NOT EXISTS `upload1` (
  `JAR_ID` int(20) NOT NULL AUTO_INCREMENT,
  `JAR_TYPE` varchar(50) NOT NULL,
  `NAME_OF_JAR` varchar(50) NOT NULL,
  `PATH_OF_JAR` varchar(200) NOT NULL,
  PRIMARY KEY (`JAR_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `upload1`
--

INSERT INTO `upload1` (`JAR_ID`, `JAR_TYPE`, `NAME_OF_JAR`, `PATH_OF_JAR`) VALUES
(1, 'struts', 'poi-ooxml-3.10-beta2-20130904.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/poi-ooxml-3.10-beta2-20130904.jar'),
(2, 'struts', 'poi-ooxml-schemas-3.10-beta2-20130904.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/poi-ooxml-schemas-3.10-beta2-20130904.jar'),
(3, 'struts', 'poi-scratchpad-3.10-beta2-20130904.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/poi-scratchpad-3.10-beta2-20130904.jar'),
(4, 'struts', 'servlet-api.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/servlet-api.jar'),
(5, 'struts', 'slf4j-api-1.5.8.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/slf4j-api-1.5.8.jar'),
(6, 'struts', 'slf4j-nop-1.5.8.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/slf4j-nop-1.5.8.jar'),
(7, 'struts', 'standard-1.0.6.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/standard-1.0.6.jar'),
(8, 'struts', 'stax-api-1.0.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/stax-api-1.0.1.jar'),
(9, 'struts', 'stax-api-1.0.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/stax-api-1.0.1.jar'),
(10, 'struts', 'stax-api-1.0.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/stax-api-1.0.1.jar'),
(11, 'struts', 'struts-core-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-core-1.3.10.jar'),
(12, 'struts', 'struts-el-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-el-1.3.10.jar'),
(13, 'struts', 'struts-extras-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-extras-1.3.10.jar'),
(14, 'struts', 'struts-extras-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-extras-1.3.10.jar'),
(15, 'struts', 'struts-faces-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-faces-1.3.10.jar'),
(16, 'struts', 'struts-mailreader-dao-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-mailreader-dao-1.3.10.jar'),
(17, 'struts', 'struts-mailreader-dao-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-mailreader-dao-1.3.10.jar'),
(18, 'struts', 'struts-scripting-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-scripting-1.3.10.jar'),
(19, 'struts', 'struts-scripting-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-scripting-1.3.10.jar'),
(20, 'struts', 'struts-scripting-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-scripting-1.3.10.jar'),
(21, 'struts', 'struts-taglib-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-taglib-1.3.10.jar'),
(22, 'struts', 'struts-tiles-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-tiles-1.3.10.jar'),
(23, 'struts', 'struts-tiles-1.3.10.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/struts-tiles-1.3.10.jar'),
(24, 'struts', 'test-config.xml', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/test-config.xml'),
(25, 'struts', 'xmlbeans-2.3.0.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/struts/xmlbeans-2.3.0.jar'),
(26, 'hibernate', 'antlr-2.7.6.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/antlr-2.7.6.jar'),
(27, 'hibernate', 'asm.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/asm.jar'),
(28, 'hibernate', 'asm-attrs.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/asm-attrs.jar'),
(29, 'hibernate', 'c3p0-0.9.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/c3p0-0.9.1.jar'),
(30, 'hibernate', 'cglib-2.1.3.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/cglib-2.1.3.jar'),
(31, 'hibernate', 'commons-collections-2.1.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/commons-collections-2.1.1.jar'),
(32, 'hibernate', 'commons-logging-1.0.4.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/commons-logging-1.0.4.jar'),
(33, 'hibernate', 'dom4j-1.6.1.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/dom4j-1.6.1.jar'),
(34, 'hibernate', 'ehcache-1.2.3.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/ehcache-1.2.3.jar'),
(35, 'hibernate', 'ehcache-1.2.3.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/ehcache-1.2.3.jar'),
(36, 'hibernate', 'ejb3-persistence.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/ejb3-persistence.jar'),
(37, 'hibernate', 'hibernate3.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/hibernate3.jar'),
(38, 'hibernate', 'hibernate-annotations.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/hibernate-annotations.jar'),
(39, 'hibernate', 'hibernate-commons-annotations.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/hibernate-commons-annotations.jar'),
(40, 'hibernate', 'hibernate-validator.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/hibernate-validator.jar'),
(41, 'hibernate', 'jdbc2_0-stdext.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/jdbc2_0-stdext.jar'),
(42, 'hibernate', 'jta.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/jta.jar'),
(43, 'hibernate', 'log4j-1.2.11.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/log4j-1.2.11.jar'),
(44, 'hibernate', 'mysql-connector-java-5.0.8-bin.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/mysql-connector-java-5.0.8-bin.jar'),
(45, 'hibernate', 'xerces-2.6.2.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/hibernate/xerces-2.6.2.jar'),
(46, 'spring', 'hsqldb-2.2.8.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/spring/hsqldb-2.2.8.jar'),
(47, 'spring', 'commons-codec-1.6.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/spring/commons-codec-1.6.jar'),
(48, 'jdbc', 'mysql-connector-java-5.0.8-bin.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/jdbc/mysql-connector-java-5.0.8-bin.jar'),
(49, 'corejava', 'servlet-api.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/corejava/servlet-api.jar'),
(50, 'corejava', 'servlet-api.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/corejava/servlet-api.jar'),
(51, 'corejava', 'servlet-api.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/corejava/servlet-api.jar'),
(52, 'others', 'javax.activation.jar', '/home/aartek14/jvm/apache-tomcat-7.0.47/domains/prestigepoint.in/uploadFiles/others/javax.activation.jar');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE IF NOT EXISTS `year` (
  `YEAR_ID` int(60) NOT NULL AUTO_INCREMENT,
  `YEAR` varchar(80) DEFAULT NULL,
  `IS_DELETED` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`YEAR_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`YEAR_ID`, `YEAR`, `IS_DELETED`) VALUES
(1, '2013', 1),
(2, '2014', 1),
(12, '2012', 1),
(13, '2011', 1),
(15, '2015', 1),
(16, '2016', 1),
(17, '2017', 1),
(18, '2018', 1),
(19, '2019', 1),
(20, '2020', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currentbatch`
--
ALTER TABLE `currentbatch`
  ADD CONSTRAINT `currentbatch_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`);

--
-- Constraints for table `emi`
--
ALTER TABLE `emi`
  ADD CONSTRAINT `emi_ibfk_1` FOREIGN KEY (`REGISTRATION_ID`) REFERENCES `registration` (`REGISTRATION_ID`);

--
-- Constraints for table `forum_answer`
--
ALTER TABLE `forum_answer`
  ADD CONSTRAINT `forum_answer_ibfk_1` FOREIGN KEY (`FORUM_QUESTION_ID`) REFERENCES `forum_question` (`FORUM_QUESTION_ID`);

--
-- Constraints for table `forum_question`
--
ALTER TABLE `forum_question`
  ADD CONSTRAINT `forum_question_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`);

--
-- Constraints for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD CONSTRAINT `question_answer_ibfk_1` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subject` (`SUBJECT_ID`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`BATCH_ID`) REFERENCES `batch` (`BATCH_ID`),
  ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`YEAR_ID`) REFERENCES `year` (`YEAR_ID`),
  ADD CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
