-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 04:40 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `User_id` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Phonenumber` int(10) NOT NULL,
  `level` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`User_id`, `Email`, `Password`, `Fname`, `Lname`, `Phonenumber`, `level`) VALUES
(1, '5710513003@psu.ac.th', '42162', 'ชนันธร', 'ภิรมย์รักษ์', 950371996, 'a'),
(2, 'asss', '', 'บอย', 'บอย', 12341234, ''),
(3, 'rkaew@outlook.co.th', '', 'pattarawadee', 'oramut', 630790657, ''),
(4, 'thehardy205@gamil.com', '111111', 'บอย', 'ชนันธร', 950371996, ''),
(5, 'thehardy205@gamil.com', '', 'บอย', 'ชนันธร', 950371996, ''),
(6, 'thehardy205@gamil.com', '', 'ชนันธร', 'ภิรมย์รักษ์', 950371996, ''),
(7, '5710513048@psu.ac.th', '123456', 'ภากร', 'ยิ่งเฮง', 991122333, ''),
(8, '5710513048@psu.ac.th', '', 'ต่อ', 'ถาสกร', 630790657, ''),
(9, '5710513003@psu.ac.th', '', 'บอย', 'นะครับ', 987651788, ''),
(10, 'boyna@gmail.com', '', 'โบวี่', 'มาม่า', 950371996, ''),
(11, 'boyna@gmail.com', '', 'โบวี่', 'บอย', 98765467, ''),
(12, 'boyna@gmail.com', '', 'โบวี่', 'มาครับ', 987651788, ''),
(13, 'boyna@gmail.com', '09876', 'โบวี่', 'นะครับ', 987651788, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `User_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
