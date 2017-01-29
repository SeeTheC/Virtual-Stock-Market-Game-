-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2012 at 03:02 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `mockstock`
--

CREATE TABLE IF NOT EXISTS `mockstock` (
  `Company` varchar(200) NOT NULL,
  `Shares` int(22) NOT NULL,
  `Price` double NOT NULL,
  `csno` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mockstock`
--

INSERT INTO `mockstock` (`Company`, `Shares`, `Price`, `csno`) VALUES
('TCS', 9984, 99.99, 1),
('Infosys', 10000, 99.72, 2),
('DLF', 9996, 100.01, 3),
('TISCO', 9994, 100.04, 4),
('ONGC Ltd.', 10000, 99.91, 5),
('RIL', 10000, 99.96, 6),
('L&T', 10000, 99.99, 7),
('BHEL', 10000, 99.97, 8),
('Bharti Airtel', 10000, 99.98, 9),
('REL Comm.', 9583, 104.3, 10),
('NTPC', 10000, 99.99, 11),
('TATA Power', 10000, 99.99, 12),
('ITC', 10000, 100, 13),
('TATA Motors', 10000, 99.98, 14),
('Maruti Suzuki', 10000, 100, 15),
('Hero Motor Corp', 10000, 100, 16),
('HDFC  ', 10000, 99.95, 17),
('HDFC Bank', 10000, 100, 18),
('ICICI Bank', 10000, 100, 19),
('SBI', 10000, 99.78, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
