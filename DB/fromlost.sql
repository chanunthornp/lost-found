-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 04:42 AM
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
-- Database: `fromlost`
--

-- --------------------------------------------------------

--
-- Table structure for table `lostitem`
--

CREATE TABLE `lostitem` (
  `lost_id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `place_id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `status1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `lostitem`
--

INSERT INTO `lostitem` (`lost_id`, `name`, `fname`, `place_id`, `type_id`, `date`, `time`, `description`, `photo`, `status`, `status1`) VALUES
(1, 'รองเท้า', 'บอย คนดี', 0, 0, '2018-03-07', '16:00:00', '', 'img_5a9a85c2aac7c.jpg', 'ยังไม่ได้รับคืน', ''),
(2, 'ถุงเท้า', 'รองศาสตราจารย์ ว่าที่ร้อยเอกภา', 0, 7, '2018-03-13', '12:00:00', '', 'img_5aa7fb1b76f3e.jpg', 'ยังไม่ได้รับคืน', ''),
(3, 'เรือหางยาวหายขอรับ', 'นาย ประยูส จันทร์อังคาร', 5, 13, '2018-03-14', '19:11:00', 'จอดเรื่อไว้หน้าคณะ เเล้วไปเข้าห้องห้องน้ำ สักครู่กลับมาหายเเล้ว', 'img_5aaa97577f95d.jpg', 'ยังไม่ได้รับคืน', ''),
(4, 'กุญเเจห้องหายครับ', 'นาย ภาพตะวัน คงพรหม', 0, 0, '2018-03-15', '11:59:00', '', 'img_5aab49eebbfd2.jpg', 'ยังไม่ได้รับคืน', ''),
(5, 'ลิปสติกหายคะ', 'ซา เด็กญส', 12, 12, '2018-03-10', '01:00:00', '', 'img_5aab4b2aa9886.jpg', 'ยังไม่ได้รับคืน', ''),
(6, 'รถยนต์หายครับ', 'อี๊ นะครับ', 0, 0, '2018-03-22', '14:01:00', 'ยังไม่เจอเลย', 'img_5aab6afa449c0.jpg', 'ยังไม่ได้รับคืน', ''),
(7, 'รถมอไซค์หาย', 'บอย คนดี', 1, 13, '2018-03-17', '13:00:00', 'หายเเว้ว', 'img_5aad18a433f3c.jpg', 'ยังไม่ได้รับคืน', ''),
(8, 'หมวกหายครับ', 'นาย ชนันธร ภิรมย์รักษ์', 0, 0, '2018-03-27', '14:01:00', '', 'img_5ab9e69914b71.jpg', 'ได้รับคืนเเล้ว', ''),
(9, 'กุญเเจห้องหาย', 'บอย คนดี', 1, 15, '2018-04-19', '00:58:00', '', 'img_5adb8f691b280.jpg', 'ยังไม่ได้รับคืน', ''),
(10, 'รถยนต์หายจ้า', 'โบวี่', 0, 0, '2018-05-17', '04:58:00', '', 'img_5af011aa36175.jpg', 'ยังไม่ได้รับคืน', '');

-- --------------------------------------------------------

--
-- Table structure for table `meslost`
--

CREATE TABLE `meslost` (
  `mes_id` int(5) NOT NULL,
  `lost_id` int(5) NOT NULL,
  `createdate` datetime NOT NULL,
  `message` text NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `meslost`
--

INSERT INTO `meslost` (`mes_id`, `lost_id`, `createdate`, `message`, `name`) VALUES
(1, 10, '0000-00-00 00:00:00', 'เจอยัง', ''),
(2, 10, '0000-00-00 00:00:00', 'ยังเลย', ''),
(3, 10, '0000-00-00 00:00:00', 'ยังเลย', '');

-- --------------------------------------------------------

--
-- Table structure for table `typeitem`
--

CREATE TABLE `typeitem` (
  `type_id` int(5) UNSIGNED NOT NULL,
  `typename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `typeitem`
--

INSERT INTO `typeitem` (`type_id`, `typename`) VALUES
(1, 'โทรศัพท์/โทรศัพท์มือถือ'),
(2, 'บัตรประชาชน/บัตรนักศึกษา/บัตรATM/บัตรอื่นๆ'),
(3, 'กระเป๋า/กระเป๋าสตางค์'),
(4, 'แฟรชไดร์ฟ/CD/DVD'),
(5, 'คอมพิวเตอร์/แท็บเล็ต/ipad/วิทยุ'),
(6, 'พัสดุไปรษณีย์/จดหมาย'),
(7, 'เสื้อผ้า/เครื่องประดับ'),
(8, 'หนังสือ/สมุด/เอกสาร'),
(9, 'ยา/อุปกรณ์การแพทย์'),
(10, 'สายชาร์ต/หูฟัง/อุปกรณ์เชื่อมต่อ/ลำโพง'),
(11, 'อุปกรณ์กีฬา'),
(12, 'อุปกรณ์แต่งหน้า/เครื่องสำอาง'),
(13, 'ยานพาหนะ'),
(14, 'อุปกรณ์เครื่องเขียน'),
(15, 'กุญแจ/พวงกุญแจ'),
(16, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `typeplace`
--

CREATE TABLE `typeplace` (
  `place_id` int(5) UNSIGNED NOT NULL,
  `placename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `typeplace`
--

INSERT INTO `typeplace` (`place_id`, `placename`) VALUES
(1, 'คณะวิทยาศาสตร์'),
(2, 'คณะทันตแพทยศาสตร์'),
(3, 'คณะวิศวกรรมศาสตร์'),
(4, 'คณะเภสัชศาสตร์'),
(5, ' คณะทรัพยากรธรรมชาติ'),
(6, 'คณะวิทยาการจัดการ'),
(7, 'คณะอุตสาหกรรมเกษตร'),
(8, 'คณะศิลปศาสตร์'),
(9, 'คณะการจัดการสิ่งแวดล้อม'),
(10, 'คณะแพทยศาสตร์'),
(11, 'คณะเศรษฐศาสตร์'),
(12, 'คณะพยาบาลศาสตร์'),
(13, 'คณะนิติศาสตร์'),
(14, 'คณะเทคนิคการแพทย์'),
(15, 'คณะการแพทย์แผนไทย'),
(16, 'โครงการจัดตั้งวิทยาลัยนานาชาติ'),
(17, 'โครงการจัดตั้งคณะสัตวแพทยศาสตร์');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lostitem`
--
ALTER TABLE `lostitem`
  ADD PRIMARY KEY (`lost_id`);

--
-- Indexes for table `meslost`
--
ALTER TABLE `meslost`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `typeitem`
--
ALTER TABLE `typeitem`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `typeplace`
--
ALTER TABLE `typeplace`
  ADD PRIMARY KEY (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lostitem`
--
ALTER TABLE `lostitem`
  MODIFY `lost_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `meslost`
--
ALTER TABLE `meslost`
  MODIFY `mes_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `typeitem`
--
ALTER TABLE `typeitem`
  MODIFY `type_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `typeplace`
--
ALTER TABLE `typeplace`
  MODIFY `place_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
