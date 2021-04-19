-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 05:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eems`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave`
--

CREATE TABLE `emp_leave` (
  `leave_id` int(10) NOT NULL,
  `leave_org_id` int(10) NOT NULL,
  `leave_emp_email` varchar(100) NOT NULL,
  `leave_date` datetime NOT NULL,
  `leave_created_by_id` varchar(50) NOT NULL,
  `leave_purpose` text NOT NULL,
  `leave_from_date` datetime DEFAULT NULL,
  `leave_to_date` datetime DEFAULT NULL,
  `leave_status` varchar(2) NOT NULL,
  `leave_modify_by` varchar(50) NOT NULL,
  `leave_modify_time` datetime DEFAULT NULL,
  `leave_type` varchar(2) NOT NULL,
  `leave_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_leave`
--

INSERT INTO `emp_leave` (`leave_id`, `leave_org_id`, `leave_emp_email`, `leave_date`, `leave_created_by_id`, `leave_purpose`, `leave_from_date`, `leave_to_date`, `leave_status`, `leave_modify_by`, `leave_modify_time`, `leave_type`, `leave_description`) VALUES
(1, 1, 'shivik@gmail.com', '2021-03-30 22:39:54', '', '', NULL, NULL, '', '', NULL, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `emp_email` (`leave_emp_email`),
  ADD KEY `emp_email_2` (`leave_emp_email`),
  ADD KEY `emp_email_3` (`leave_emp_email`),
  ADD KEY `emp_email_4` (`leave_emp_email`),
  ADD KEY `emp_email_5` (`leave_emp_email`),
  ADD KEY `emp_email_6` (`leave_emp_email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_leave`
--
ALTER TABLE `emp_leave`
  ADD CONSTRAINT `emp_leave_ibfk_1` FOREIGN KEY (`leave_emp_email`) REFERENCES `users` (`u_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
