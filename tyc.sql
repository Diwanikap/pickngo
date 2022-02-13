-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 06:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyc`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm`
--

CREATE TABLE `adm` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adm`
--

INSERT INTO `adm` (`username`, `password`) VALUES
('admin', 'admin'),
('saw', 'saw');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityname` varchar(100) NOT NULL,
  `constat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityname`, `constat`) VALUES
('BHOPAL', 1),
('CHENNAI', 1),
('INDORE', 1),
('JABALPUR', 1),
('RANCHI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `consig`
--

CREATE TABLE `consig` (
  `id` int(10) NOT NULL,
  `ord_by` varchar(200) NOT NULL,
  `sc` varchar(100) NOT NULL,
  `dc` varchar(100) NOT NULL,
  `cc` varchar(100) NOT NULL,
  `serv_type` int(11) NOT NULL DEFAULT 2,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consig`
--

INSERT INTO `consig` (`id`, `ord_by`, `sc`, `dc`, `cc`, `serv_type`, `added_on`, `status`) VALUES
(14, 'vikas', 'BHOPAL', 'INDORE', 'INDORE', 2, '2017-04-05 14:21:27', 0),
(15, 'diwakarDRK', 'BHOPAL', 'CHENNAI', 'CHENNAI', 3, '2017-04-06 11:26:38', 0),
(16, 'vikas', 'BHOPAL', 'BHOPAL', 'BHOPAL', 1, '2017-04-07 07:15:36', 0),
(17, 'vikas', 'BHOPAL', 'BHOPAL', 'BHOPAL', 1, '2017-04-07 07:15:36', 0),
(18, 'vikas', 'BHOPAL', 'CHENNAI', 'CHENNAI', 2, '2017-04-07 07:16:22', -1),
(19, 'vikas', 'BHOPAL', 'CHENNAI', 'CHENNAI', 2, '2017-04-07 07:16:22', -1),
(20, 'vikas', 'BHOPAL', 'JABALPUR', 'JABALPUR', 2, '2017-04-07 07:16:44', -1),
(21, 'vikas', 'BHOPAL', 'JABALPUR', 'JABALPUR', 2, '2017-04-07 07:16:45', 0),
(22, 'vikas', 'BHOPAL', 'RANCHI', 'RANCHI', 2, '2017-04-07 07:19:14', -1),
(23, 'vikas', 'BHOPAL', 'INDORE', 'INDORE', 3, '2017-04-07 07:20:09', -1),
(24, 'vikas', 'BHOPAL', 'CHENNAI', 'CHENNAI', 1, '2017-04-07 07:20:47', -1),
(25, 'parag', 'JABALPUR', 'BHOPAL', 'BHOPAL', 2, '2017-04-12 19:59:08', 2),
(26, 'parag', 'JABALPUR', 'BHOPAL', 'BHOPAL', 2, '2017-04-12 21:03:07', 1),
(27, 'karthee', 'CHENNAI', 'CHENNAI', 'CHENNAI', 2, '2022-02-13 06:28:54', 0),
(28, 'diwanika07', 'CHENNAI', 'CHENNAI', 'CHENNAI', 2, '2022-02-13 06:38:14', 2),
(29, 'saw07', 'CHENNAI', 'CHENNAI', 'CHENNAI', 1, '2022-02-13 09:09:20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `distlist`
--

CREATE TABLE `distlist` (
  `city1` varchar(100) NOT NULL,
  `city2` varchar(100) NOT NULL,
  `dist` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distlist`
--

INSERT INTO `distlist` (`city1`, `city2`, `dist`) VALUES
('BHOPAL', 'INDORE', 50),
('INDORE', 'BHOPAL', 50),
('JABALPUR', 'INDORE', 105),
('INDORE', 'JABALPUR', 105),
('BHOPAL', 'JABALPUR', 55),
('JABALPUR', 'BHOPAL', 55),
('CHENNAI', 'INDORE', 1050),
('INDORE', 'CHENNAI', 1050),
('CHENNAI', 'JABALPUR', 1055),
('JABALPUR', 'CHENNAI', 1055),
('BHOPAL', 'CHENNAI', 1000),
('CHENNAI', 'BHOPAL', 1000),
('RANCHI', 'INDORE', 1060),
('INDORE', 'RANCHI', 1060),
('RANCHI', 'JABALPUR', 1065),
('JABALPUR', 'RANCHI', 1065),
('RANCHI', 'BHOPAL', 1010),
('BHOPAL', 'RANCHI', 1010),
('CHENNAI', 'RANCHI', 10),
('RANCHI', 'CHENNAI', 10);

-- --------------------------------------------------------

--
-- Table structure for table `empuserinfo`
--

CREATE TABLE `empuserinfo` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `vstatus` int(1) NOT NULL DEFAULT 0,
  `pname` varchar(200) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `eml` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empuserinfo`
--

INSERT INTO `empuserinfo` (`username`, `password`, `vstatus`, `pname`, `phno`, `eml`, `address`, `city`) VALUES
('kartheepan', 'shivmadein', 1, 'kartheepan', '0765853625', 'kartheepan2211@gmail.com', 'No.14, Colombo -03', 'CHENNAI'),
('monu', 'monu', 1, 'monu', '1231233213', 'monu@hotmail.com', 'INDIA', 'JABALPUR'),
('naruto', '123', 0, 'naruto', '7894561230', 'naruto@iitk.ac.in', '', 'INDORE'),
('sonu', '777', 1, 'Mark Zuckerburg', '7777777777', 'markzuckerburg@gmail.com', 'MANIT\r\nNIT BPL', 'BHOPAL');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `eml` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`username`, `password`, `pname`, `phno`, `eml`, `address`, `city`) VALUES
('aniket', 'anni123', 'Aniket Vajpayee', '9667691161', 'aniketvajpayee@gmail.com', 'Zone 4, M.P. Nagar, Pin Code-462003', 'BHOPAL'),
('diwakarDRK', 'diwakar123', 'Diwakar', '7878787878', 'diwakar@gmail.com', '', 'BHOPAL'),
('diwanika07', 'shivdiwanika07', 'diwanika', '0765853625', 'kartheepan2211@gmail.com', 'No.14, Vivekanatha theru,\r\nKurukku santhu\r\n', 'CHENNAI'),
('karthee', 'shivmadein', 'karthik', '0755853625', 'karthee@gmail.com', 'hfddgshuhgugahdias', 'CHENNAI'),
('parag', 'parag', 'parag gupta', '1234567890', 'parag@gmail.com', '', 'JABALPUR'),
('Saw07', 'shivsaw', 'sawtharan', '0765853625', 'sawntharan07@gmail.com', 'No.12/2, Colombo 06', 'CHENNAI'),
('sonu', 'sonu1', 'sonu1', '1111111111', 'sonu@monu.com', 'sonu1', 'BHOPAL'),
('vikas', 'vikas', 'Vikas Choudhary', '8827254074', 'vkc11097@gmail.com', '', 'BHOPAL');

-- --------------------------------------------------------

--
-- Table structure for table `vcons`
--

CREATE TABLE `vcons` (
  `id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `vby` varchar(200) NOT NULL,
  `etd` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vcons`
--

INSERT INTO `vcons` (`id`, `price`, `vby`, `etd`) VALUES
(14, 100, 'sonu', '2017-04-10 21:07:18'),
(15, 3000, 'sonu', '2017-04-10 21:07:18'),
(16, 0, 'sonu', '2017-04-10 21:07:18'),
(17, 0, 'sonu', '2017-04-13 21:09:35'),
(21, 2, 'sonu', '2017-04-10 21:07:18'),
(25, 110, 'monu', '2017-04-10 21:07:18'),
(26, 511, 'monu', '2017-04-14 21:22:16'),
(27, 500, 'kartheepan', '2022-02-15 06:58:42'),
(28, 500, 'kartheepan', '2022-02-15 06:58:30'),
(29, 200, 'kartheepan', '2022-02-16 09:12:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD UNIQUE KEY `cityname` (`cityname`),
  ADD KEY `cityname_2` (`cityname`),
  ADD KEY `cityname_3` (`cityname`);

--
-- Indexes for table `consig`
--
ALTER TABLE `consig`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ord_by` (`ord_by`),
  ADD KEY `sc` (`sc`),
  ADD KEY `dc` (`dc`),
  ADD KEY `cc` (`cc`);

--
-- Indexes for table `distlist`
--
ALTER TABLE `distlist`
  ADD KEY `city1` (`city1`),
  ADD KEY `city2` (`city2`);

--
-- Indexes for table `empuserinfo`
--
ALTER TABLE `empuserinfo`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `city` (`city`);

--
-- Indexes for table `vcons`
--
ALTER TABLE `vcons`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `vby` (`vby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consig`
--
ALTER TABLE `consig`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consig`
--
ALTER TABLE `consig`
  ADD CONSTRAINT `consig_ibfk_1` FOREIGN KEY (`ord_by`) REFERENCES `userinfo` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consig_ibfk_2` FOREIGN KEY (`sc`) REFERENCES `city` (`cityname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consig_ibfk_3` FOREIGN KEY (`dc`) REFERENCES `city` (`cityname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consig_ibfk_4` FOREIGN KEY (`cc`) REFERENCES `city` (`cityname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `distlist`
--
ALTER TABLE `distlist`
  ADD CONSTRAINT `distlist_ibfk_1` FOREIGN KEY (`city1`) REFERENCES `city` (`cityname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `distlist_ibfk_2` FOREIGN KEY (`city2`) REFERENCES `city` (`cityname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vcons`
--
ALTER TABLE `vcons`
  ADD CONSTRAINT `vcons_ibfk_1` FOREIGN KEY (`id`) REFERENCES `consig` (`id`),
  ADD CONSTRAINT `vcons_ibfk_2` FOREIGN KEY (`vby`) REFERENCES `empuserinfo` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
