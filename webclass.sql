-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2019 at 07:37 PM
-- Server version: 8.0.15
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `availableticket`
--

CREATE TABLE `availableticket` (
  `moviename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `totaltickets` int(5) NOT NULL,
  `remaingtickets` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `availableticket`
--

INSERT INTO `availableticket` (`moviename`, `totaltickets`, `remaingtickets`) VALUES
('lego2', 50, 45),
('wandering2', 50, 22),
('peppa2', 50, 50),
('titanic2', 50, 44);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `userpin` varchar(5) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `jhuemail` varchar(20) NOT NULL,
  `program` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `userpin`, `fullname`, `birthday`, `jhuemail`, `program`) VALUES
('mingh', '1234', 'Minghong Xu', '2019-02-04', 'xu@jhu.edu', 'Information System'),
('text1', '6666', 'TextText', '2018-11-05', 'te@jhu.edu', 'Business Analysis'),
('HandsomeJie', '6666', 'Yujie Fang', '2016-09-01', 'yfang33@jhu.edu', 'Information System'),
('xinda', '1234', 'xinda chen', '1996-12-21', 'x@jhu.edu', 'is'),
('huifeng', '1234', 'huifeng qian', '1986-12-21', 'hhh@jhu.edu', 'estate'),
('shuhong', '1231', 'shuhong shen', '1989-01-21', 'sss@jhu.edu', 'finance'),
('wenhao', '6666', 'wenhao yang', '1996-07-08', 'yyy@jhu.edu', 'MBA'),
('xinrui', '8888', 'xinrui chen', '1996-11-08', 'xinrui@jhu.edu', 'Barm'),
('yanggao', '4545', 'Yang Gao', '1996-11-25', 'yanggi@jhu.edu', 'Marketing'),
('shihao', '2312', 'Shihao Ma', '1996-02-18', 'mashihao@jhu.edu', 'Real Estate'),
('jordan', '2323', 'Micheal Jordan', '1986-02-18', 'jordan@jhu.edu', 'Other'),
('kobe24', '2424', 'Kobe Brient', '1988-12-18', 'kobe@jhu.edu', 'Information Systems'),
('tmac1', '1111', 'Tracy McGrady', '1988-12-25', 'tmac@jhu.edu', 'Information Systems'),
('james', '2323', 'King James', '1999-12-18', 'james@jhu.edu', 'Marketing'),
('bird66', '1234', 'Larry Bird', '1977-12-18', 'birdl@jhu.edu', 'Barm');

-- --------------------------------------------------------

--
-- Table structure for table `usertickets`
--

CREATE TABLE `usertickets` (
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `moviename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ticketsamount` int(5) NOT NULL,
  `ticketprice` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `usertickets`
--

INSERT INTO `usertickets` (`username`, `phonenumber`, `moviename`, `ticketsamount`, `ticketprice`) VALUES
('sasa', 2022470126, 'wandering2', 4, 31),
('', 0, '', 0, 0),
('dsfa', 2022470127, 'peppa2', 3, 24),
('ijjhj', 2022470897, 'peppa2', 4, 34),
('', 0, '', 0, 0),
('yyyyyy', 2022471032, 'peppa2', 4, 34),
('sdfdsds', 2022470126, 'titanic2', 4, 34),
('sdfkjh', 2022470126, 'wandering2', 4, 34),
('', 2022470126, 'peppa2', 0, 0),
('sdfsdafsdf', 2022470126, 'wandering2', 4, 34),
('sdfsdaf', 2022470126, 'titanic2', 4, 34),
('sdfsd', 2022470126, 'titanic2', 5, 44),
('sdfsdkjgkg', 2022470126, 'lego2', 2, 17),
('', 0, '', 0, 0),
('sdfdffesfvcc', 2022470126, 'peppa2', 5, 44),
('qweesad', 2022470126, '', 4, 34),
('qwekjghfhg', 2022470126, 'titanic2', 3, 24),
('sdfdf', 2022470126, 'titanic2', 3, 24),
('dsedwcw', 2131231234, 'wandering2', 6, 48),
('dsed', 2131231234, 'peppa2', 4, 34),
('dsed', 2131231234, 'peppa2', 20, 170),
('dseddfv', 2131231234, 'peppa2', 8, 62),
('dseddfv', 2131231234, 'peppa2', 5, 44),
('dseddfv', 2131231234, 'peppa2', 3, 24),
('dseddfv', 2131231234, 'peppa2', 5, 44),
('sdvcdwver', 0, 'peppa2', 0, 0),
('sdvcdwver', 2022470126, 'peppa2', 4, 34),
('sdvcdwver', 2022470126, 'peppa2', 4, 34),
('HandsomeJie', 2028565725, 'wandering2', 4, 34),
('HandsomeJeremy', 2028565725, 'wandering2', 4, 37);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
