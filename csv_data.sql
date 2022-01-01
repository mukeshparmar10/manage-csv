-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 01:48 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `csv_data`
--

CREATE TABLE `csv_data` (
  `ID` int(5) NOT NULL,
  `DataNo` varchar(5) NOT NULL,
  `DataName` varchar(25) NOT NULL,
  `DataAddress` varchar(100) NOT NULL,
  `DataCity` varchar(20) NOT NULL,
  `DataPhone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csv_data`
--

INSERT INTO `csv_data` (`ID`, `DataNo`, `DataName`, `DataAddress`, `DataCity`, `DataPhone`) VALUES
(21, '10', 'j', 'address10', 'city10', ''),
(20, '9', 'i', 'address9', 'city9', '45555'),
(19, '8', 'h', 'address8', 'city8', '445555'),
(18, '7', 'g', 'address7', 'city7', '222333'),
(17, '6', 'f', 'address6', 'city6', '45566'),
(16, '5', 'e', 'address5', 'city5', '411236'),
(15, '4', 'd', 'address4', 'city4', '45223'),
(14, '3', 'c', 'address3', 'city3', '452236'),
(13, '2', 'b', 'address2', 'city2', '54226'),
(12, '1', 'a', 'address1', 'city1', '565411'),
(22, '1', 'a', 'address1', 'city1', '565411'),
(23, '2', 'b', 'address2', 'city2', '54226'),
(24, '3', 'c', 'address3', 'city3', '452236'),
(25, '4', 'd', 'address4', 'city4', '45223'),
(26, '5', 'e', 'address5', 'city5', '411236'),
(27, '6', 'f', 'address6', 'city6', '45566'),
(28, '7', 'g', 'address7', 'city7', '222333'),
(29, '8', 'h', 'address8', 'city8', '445555'),
(30, '9', 'i', 'address9', 'city9', '45555'),
(31, '10', 'j', 'address10', 'city10', ''),
(32, '1', 'a', 'address1', 'city1', '565411'),
(33, '2', 'b', 'address2', 'city2', '54226'),
(34, '3', 'c', 'address3', 'city3', '452236'),
(35, '4', 'd', 'address4', 'city4', '45223'),
(36, '5', 'e', 'address5', 'city5', '411236'),
(37, '6', 'f', 'address6', 'city6', '45566'),
(38, '7', 'g', 'address7', 'city7', '222333'),
(39, '8', 'h', 'address8', 'city8', '445555'),
(40, '9', 'i', 'address9', 'city9', '45555'),
(41, '10', 'j', 'address10', 'city10', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csv_data`
--
ALTER TABLE `csv_data`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csv_data`
--
ALTER TABLE `csv_data`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
