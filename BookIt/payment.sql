-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 09:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `country` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `fname`, `lname`, `country`, `address`, `city`, `state`, `postcode`, `phone`, `email`) VALUES
(1, 'Sanket', 'Dadali', 'India', '12/1, Health Camp Pandavnagar', 'Pune', 'Maharashtra', '411016', '9922066691', 'sanketdadali05@gamil.com'),
(2, 'Aniket', 'Bhosale', 'India', 'Urali', 'Pune', 'Maharashtra', '411012', '8446000714', 'sanket@gmal.com'),
(3, 'sasass', 'ssasa', 'sasa', 'ssasaa', 'ssssss', 'eweewe', '332323', '44224422', 'sanket@gmail.com'),
(4, 'dssddsds', 'sasasas', 'saas', 'saasassa', 'assaas', 'sasaaaa', '322323', '9922066691', 'atharvabhosale@gmail.com'),
(5, 'dssddsds', 'sasasas', 'saas', 'saasassa', 'assaas', 'sasaaaa', '322323', '9922066691', 'atharvabhosale@gmail.com'),
(6, 'sasassa', 'sass', 'sasa', 'C-504,dhayari,pune', 'saasss', 'sssss', '5455554', '44224422', 'h@g.com'),
(7, 'saasas', 'ttrt', 'india', 'C-504,dhayari,pune', 'ssssss', 'pune', '33222', '9922066691', 'sanketdadali05@gmail.com'),
(8, 'dssddsds', 'sasaass', 'sasa', 'assas', 'sasasa', 'sassaas', '223', '333233232', 'sanketdadali05@gmail.com'),
(9, 'dssddsds', 'ssasa', 'saas', 'aasd@cas', 'sC', 'sasaaaa', '332323', '9922066691', 'sanketdadali05@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
