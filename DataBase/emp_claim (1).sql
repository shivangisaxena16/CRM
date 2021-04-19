-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 05:09 AM
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
-- Table structure for table `emp_claim`
--

CREATE TABLE `emp_claim` (
  `claim_id` int(10) NOT NULL,
  `claim_org_id` int(10) NOT NULL,
  `claim_emp_email` varchar(100) NOT NULL,
  `claim_date` datetime NOT NULL,
  `claim_created_by` varchar(50) NOT NULL,
  `claim_purpose` text NOT NULL,
  `claim_amount` int(11) NOT NULL,
  `claim_type` varchar(2) NOT NULL,
  `claim_status` varchar(2) NOT NULL,
  `claim_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_claim`
--
ALTER TABLE `emp_claim`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `claim_emp_email` (`claim_emp_email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_claim`
--
ALTER TABLE `emp_claim`
  ADD CONSTRAINT `emp_claim_ibfk_1` FOREIGN KEY (`claim_emp_email`) REFERENCES `users` (`u_email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
