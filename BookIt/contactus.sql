-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 07:20 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactus`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'aniket', 'bh@gmail.com', 'saassssa', 'sasassaasaa'),
(2, '', '', '', ''),
(3, 'sdadsds', 'dsds@gmail.com', '', 'ssss'),
(4, 'sanket', 'sanketdadali05@gmail.com', '', 'fuck offf'),
(5, 'Aniket Bhosale', 'bhosaleaniket826@gmail.com', '', 'sasasassssss'),
(6, 'sasas', 'bhosaleaniket826@gmail.com', '', 'sasa'),
(7, 'sssasas', 'bhosaleaniket826@gmail.com', '', 'sasasas'),
(8, 'Aniket Bhosale', 'bhosaleaniket826@gmail.com', '', 'xxzxz'),
(9, 'Aniket Bhosale', 'bhosaleaniket826@gmail.com', 'dadada', 'xxxxxxx'),
(10, 'ad', 'bhosaleaniket826@gmail.com', 'asd', 'asd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
