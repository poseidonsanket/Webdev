-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2022 at 03:56 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(40) NOT NULL,
  `description` varchar(150) NOT NULL,
  `quantity` int(200) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `quantity`, `price`) VALUES
(1, 'The Theory Of Everything', 'Stephen Hawkings', '', 0, 0),
(2, '', '', '', 0, 0),
(3, 'sankey', 'axa', '', 0, 123),
(4, 'sankey', 'axa', '', 0, 123),
(5, 'asaasa', 'ssss', '', 0, 456),
(6, 'saas', 'asaaa', '', 0, 1234),
(7, 'saas', 'asaaa', '', 0, 1234),
(8, 'fasd', 'Sanket', 'Processing fee', 123, 321),
(9, 'dsda', 'dsad', 'Processing fee', 321, 123),
(10, 'stephen', 'hawking', 'he was nice', 12, 540),
(11, 'stea', 'atharva', 'nothing much ', 24, 123),
(12, 'sdas', 'ddafsa', 'fsada', 123, 3213),
(13, 'f12d', 'd123', 'dwadsa', 3213, 213),
(14, 'f12d', 'd123', 'dwadsa', 3213, 213);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `filename`) VALUES
(1, 'book1.jpg'),
(2, 'book1.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
