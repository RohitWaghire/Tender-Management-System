-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 11:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tender`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE `bidder` (
  `bid` varchar(15) NOT NULL,
  `vid` varchar(15) DEFAULT NULL,
  `tid` varchar(15) DEFAULT NULL,
  `bidamount` int(11) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`bid`, `vid`, `tid`, `bidamount`, `deadline`, `status`) VALUES
('B20190725022953', 'V20190725022813', 'T20190725022124', 51000, '2019-07-19', 'Pending'),
('B20190725023010', 'V20190725022813', 'T20190725022124', 52000, '2019-07-19', 'Accepted'),
('B20190725023248', 'V20190725022813', 'T20190725022416', 100001, '2019-09-14', 'Rejected'),
('B20190725023512', 'V20190725023446', 'T20190725022416', 200000, '2019-09-14', 'Accepted'),
('B20190725024125', 'V20190725023446', 'T20190725022601', 5000001, '2019-07-28', 'Rejected'),
('B20190725024243', 'V20190725022813', 'T20190725022601', 6000000, '2019-07-28', 'Accepted'),
('B20190725101444', 'V20190725100730', 'T20190725101322', 1500000, '2019-07-19', 'Rejected'),
('B20190725101519', 'V20190725023446', 'T20190725101239', 150005, '2019-07-19', 'Rejected'),
('B20190725101525', 'V20190725023446', 'T20190725101239', 150050, '2019-07-19', 'Rejected'),
('B20190725101554', 'V20190725022813', 'T20190725101322', 160000, '2019-07-19', 'Accepted'),
('B20231121033538', 'V20231121033421', 'T20231121032941', 150200, '2023-11-30', 'Accepted'),
('B20231121033604', 'V20231121033421', 'T20190725101239', 151000, '2019-07-19', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(3) NOT NULL,
  `title` varchar(35) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `info`) VALUES
(2, 'Gandhi Setu Repairing', 'Repairing work is going to be started tommorow'),
(3, 'KOLKATA-HALDIA BRIDGE CONTRUCTION', 'ASSINGNED ENGINEER NEED TO REPORT AT THE CONSTRUCTION SITE BY TOMMOROW'),
(4, 'New Java Tender ', 'ASSINGNED ENGINEER NEED TO REPORT AT THE CONSTRUCTION SITE BY TOMMOROW || \r\nRepairing work is going to be started tomorrow');

-- --------------------------------------------------------

--
-- Table structure for table `tender`
--

CREATE TABLE `tender` (
  `tid` varchar(15) NOT NULL,
  `tname` varchar(40) DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `tprice` int(11) DEFAULT NULL,
  `tdesc` varchar(300) DEFAULT NULL,
  `tdeadline` date DEFAULT NULL,
  `tloc` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tender`
--

INSERT INTO `tender` (`tid`, `tname`, `ttype`, `tprice`, `tdesc`, `tdeadline`, `tloc`) VALUES
('T20190725022124', 'Gandhi Setu Highway', 'maintainence', 50000, 'lkjhgfd', '2019-07-19', 'Patna, Bihar'),
('T20190725022416', 'MEGA CITY CONNECTING ROAD CONTRUCTION', 'construction', 100000, 'mega city road contruction', '2019-09-14', 'Delhi'),
('T20190725022601', 'KOKATA HALDIA BRIDGE CONTRUCTION', 'construction', 5000000, 'bridge contruction from kolkata to haldia', '2019-07-28', 'KOLATA-HALDIA'),
('T20190725101239', 'Game Development', 'software', 150000, 'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible', '2019-07-19', 'Banglore, India'),
('T20190725101322', 'Game Development', 'software', 150000, 'We are going to start a project on game development using GPS specification. Interested condidates are required to bid as soon as possible', '2019-07-19', 'Banglore, India'),
('T20231121032941', 'Rishabh', 'software', 150000, 'this is for all Java Dev', '2023-11-30', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tenderstatus`
--

CREATE TABLE `tenderstatus` (
  `tid` varchar(15) NOT NULL,
  `bid` varchar(15) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `vid` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tenderstatus`
--

INSERT INTO `tenderstatus` (`tid`, `bid`, `status`, `vid`) VALUES
('T20190725022124', 'B20190725023010', 'Assigned', 'V20190725022813'),
('T20190725022416', 'B20190725023512', 'Assigned', 'V20190725023446'),
('T20190725022601', 'B20190725024243', 'Assigned', 'V20190725022813'),
('T20190725101322', 'B20190725101554', 'Assigned', 'V20190725022813'),
('T20231121032941', 'B20231121033538', 'Assigned', 'V20231121033421');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vid` varchar(15) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `vname` varchar(30) DEFAULT NULL,
  `vmob` varchar(12) DEFAULT NULL,
  `vemail` varchar(40) DEFAULT NULL,
  `company` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vid`, `password`, `vname`, `vmob`, `vemail`, `company`, `address`) VALUES
('V20190725020951', '12345', 'Ayush Vikas', '07501 070485', 'ayush@gmail.com', 'Infosys', 'K-3, LANE NO-6 AYODHAYAPURI NEAR AIRTEL TOWER'),
('V20190725022813', 'aaina', 'Ravi Rishu', '12345679', 'ravi@gmail.com', 'Infosys', 'Dhanbad ,Jharkhand'),
('V20190725023446', 'ayush', 'Ayush Vikas', '6789054321', 'ayushvikasdutta1296@gmail.com', 'Infosys', 'siwan near durga mandir, bihar '),
('V20190725100730', 'shashi', 'Shashi Raj', '9234567689', 'shashi@gmail.com', 'Wipro', 'Jain , Colony Belhariya More, Tekari, Gaya, (Bihar) '),
('V20231121032010', 'decodeit', 'decodeit', '123123123', 'decodeit@gmail.com', 'deocodeit', 'test'),
('V20231121033421', 'updategadh', 'updategadh', '23123123123', 'test@gmail.com', 'updategadh', 'india');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidder`
--
ALTER TABLE `bidder`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tender`
--
ALTER TABLE `tender`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tenderstatus`
--
ALTER TABLE `tenderstatus`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
