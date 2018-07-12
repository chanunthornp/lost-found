-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 04:41 AM
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
-- Database: `fromfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `founditem`
--

CREATE TABLE `founditem` (
  `found_id` int(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `place_id` int(5) NOT NULL,
  `type_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

--
-- Dumping data for table `founditem`
--

INSERT INTO `founditem` (`found_id`, `name`, `fname`, `place_id`, `type_id`, `date`, `time`, `description`, `photo`, `status`) VALUES
(1, 'เจอบัตรเเล้วครับ', 'บอยครับ', 0, 0, '2014-02-01', '00:00:00', '', '0', 'ยังไม่ได้รับคืน'),
(3, 'เจอหูฟังครับ', '', 9, 10, '2018-02-02', '00:57:00', '', '0', 'ได้รับคืนเเล้ว'),
(4, 'เสื้อสุนนิครับ', 'เจน คนเกือบดี', 0, 0, '2018-01-30', '14:00:00', '', '', 'ได้รับคืนเเล้ว'),
(5, 'หมันเเล้วแผ่นวัวชนสูน', '', 8, 4, '2018-02-07', '02:01:00', 'หาใหห้ทีตะเณ5', 'img_5a8d9dd900146.gif', 'ยังไม่ได้รับคืน'),
(6, 'เจอจดหมาย', '', 13, 6, '2018-02-15', '02:01:00', 'ติดต่อรับได้ที่เบอ xxx-xxxxxxx หรือที่หอ 9', 'img_5a8ebaffe75ab.jpg', 'ยังไม่ได้รับคืน'),
(7, 'เเมว', '', 14, 13, '2018-02-09', '17:58:00', 'เเมวสูนนิ', 'img_5a9171a61cc6a.gif', 'ยังไม่ได้รับคืน'),
(8, 'เจอลำโพง 2 อัน', 'บอยไงจะใครละ', 8, 10, '2017-10-11', '10:01:00', 'เจอลำโพงใครไม่รู้ตั้งอยู่', 'img_5a9a6e12ea7d9.jpg', 'ยังไม่ได้รับคืน'),
(9, 'เจอลิปสติกครับ', 'นาย ภาสกร เด็ก ญส โครงการพิเศษ6ปี ', 12, 12, '2018-03-11', '14:01:00', 'เดินเล่นอยู่ริมหอพยาบาล เเล้วไปเจอมันวางอยู่', 'img_5aab4c44df4d3.jpg', 'ยังไม่ได้รับคืน'),
(10, 'เจอรองเท้าเเตะ', 'บอย คนดี', 0, 0, '2018-02-28', '14:58:00', '', 'img_5aad193c96841.jpg', 'ได้รับคืนเเล้ว'),
(11, 'เจอรถยนต์', 'โบวี่', 0, 0, '2018-05-22', '15:58:00', '', 'img_5af0131801d37.jpg', 'ยังไม่ได้รับคืน');

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
-- Indexes for table `founditem`
--
ALTER TABLE `founditem`
  ADD PRIMARY KEY (`found_id`);

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
-- AUTO_INCREMENT for table `founditem`
--
ALTER TABLE `founditem`
  MODIFY `found_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
