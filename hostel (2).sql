-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 11:34 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date_of_join` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `branch`, `role`, `date_of_join`, `email`, `password`, `mobile`, `address`, `gender`, `status`) VALUES
(4, 'principal', 'principal', 'principal', '05-05-2018', 'principal@gmail.com', 'pp11', '9876543211', 'KNR', 'male', '5'),
(5, 'swamy', 'DCME', 'hod', '2019-10-01', 'swamy@gmail.com', '1122', '9876543215', 'karimnagar', 'male', '1'),
(6, 'joy', 'DAEIE', 'warden', '2019-10-01', 'joy@gmail.com', 'jj11', '9874562314', 'warangal', 'male', '1'),
(7, 'kamal sir', 'DEEE', 'hod', '2019-10-29', 'kamal@gmail.com', '987456556', '987456556', 'hyderabad', 'male', '1');

-- --------------------------------------------------------

--
-- Table structure for table `outerlist`
--

CREATE TABLE IF NOT EXISTS `outerlist` (
  `outid` int(11) NOT NULL,
  `htno` varchar(50) NOT NULL,
  `visitorname` varchar(50) NOT NULL,
  `visitormno` varchar(50) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `odatetime` varchar(50) NOT NULL,
  `idatetime` varchar(50) NOT NULL,
  `otp` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outerlist`
--

INSERT INTO `outerlist` (`outid`, `htno`, `visitorname`, `visitormno`, `purpose`, `odatetime`, `idatetime`, `otp`, `status`) VALUES
(12, '12345', 'vasudha', '9874562631', 'function', '25/10/19 01:28:15', '25/10/19 02:02:39', 2777, 2),
(15, '100', 'athiya', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '14-09-2019 05:00pm', 10565, 0),
(16, '101', 'gauthami', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '14-09-2019 05:00pm', 4171, 0),
(17, '100', 'sandhya', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '14-09-2019 05:00pm', 4207, 0),
(18, '100', 'manasa', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '14-09-2019 05:00pm', 5793, 0),
(19, '103', 'naveena', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '29/10/19 15:57:55', 1867, 2),
(20, '103', 'gauthami', '8106334709', 'Outer Student', '12-09-2019 12:00pm', '29/10/19 15:57:55', 8920, 2);

-- --------------------------------------------------------

--
-- Table structure for table `studentslist`
--

CREATE TABLE IF NOT EXISTS `studentslist` (
  `id` int(10) NOT NULL,
  `htno` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `year` varchar(50) NOT NULL,
  `sem` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `parent_mobile` varchar(50) NOT NULL,
  `parent_email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentslist`
--

INSERT INTO `studentslist` (`id`, `htno`, `name`, `dob`, `branch`, `year`, `sem`, `email`, `password`, `mobileno`, `address`, `parent_mobile`, `parent_email`, `gender`, `status`) VALUES
(2, '100', 'athiya', '20-11-1995', 'DEEE', '12-09-2019', '1-3', 'athiya.athi@gmail.com', '123456', '987456556', 'karimnagar', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(3, '101', 'yashu', '20-11-1992', 'DCME', '12-09-2019', '1-3', 'athiya.athi@gmail.com', '123456', '98765433', 'hyderabadd', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(4, '102', 'sandhya', '20-11-1995', 'DECE', '', '', 'sandhya@gmail.com', '123456', '987456556', 'hyderabad', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(5, '103', 'gouthami', '20-11-1995', 'DAEIE', '', '', 'athiya.athi@gmail.com', '123456+', '987456556', 'karimnagar', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(6, '104', 'athiya', '20-11-1995', 'DCME', '12-09-2019', '1-3', 'athiya.athi@gmail.com', '123456', '987456556', 'karimnagar', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(7, '105', 'athiya', '20-11-1995', 'DCME', '12-09-2019', '1-3', 'athiya.athi@gmail.com', '123456', '987456556', 'karimnagar', '8106334709', 'athiya.coign@gmail.com', 'female', '1'),
(8, '12345', 'srinu', '2019-09-30', 'DAEIE', '2019-10-16', '2-1', 'srinu@gmail.com', '9874563215', '9874563215', 'karimnagar', '9988774455', 'swan.my88@gmail.com', 'male', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outerlist`
--
ALTER TABLE `outerlist`
  ADD PRIMARY KEY (`outid`);

--
-- Indexes for table `studentslist`
--
ALTER TABLE `studentslist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `outerlist`
--
ALTER TABLE `outerlist`
  MODIFY `outid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `studentslist`
--
ALTER TABLE `studentslist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
