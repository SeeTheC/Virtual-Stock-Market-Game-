-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2012 at 02:01 AM
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
-- Table structure for table `3350`
--

CREATE TABLE IF NOT EXISTS `3350` (
  `company` varchar(200) NOT NULL,
  `shares` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3350`
--

INSERT INTO `3350` (`company`, `shares`) VALUES
('TCS', 0),
('Infosys', 0),
('DLF', 0),
('TISCO', 0),
('ONGC Ltd.', 0),
('RIL', 0),
('L&T', 0),
('BHEL', 0),
('Bharti Airtel', 0),
('REL Comm.', 0),
('NTPC', 0),
('TATA Power', 0),
('ITC', 0),
('TATA Motors', 0),
('Maruti Suzuki', 0),
('Hero Motor Corp', 0),
('HDFC  ', 0),
('HDFC Bank', 0),
('ICICI Bank', 0),
('SBI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `33500`
--

CREATE TABLE IF NOT EXISTS `33500` (
  `companey` varchar(200) DEFAULT NULL,
  `buy` int(20) DEFAULT NULL,
  `sell` int(20) DEFAULT NULL,
  `correct` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `33500`
--

INSERT INTO `33500` (`companey`, `buy`, `sell`, `correct`) VALUES
('RIL', 3, 0, 1),
('L&T', 4, 0, 1),
('BHEL', 6, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mockstock`
--

CREATE TABLE IF NOT EXISTS `mockstock` (
  `Company` varchar(200) NOT NULL,
  `Shares` int(22) NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mockstock`
--

INSERT INTO `mockstock` (`Company`, `Shares`, `Price`) VALUES
('TCS', 99995, 337.503375135005),
('Infosys', 100000, 200),
('DLF', 100000, 100),
('TISCO', 100000, 100),
('ONGC Ltd.', 100000, 100),
('RIL', 100000, 100),
('L&T', 100000, 100),
('BHEL', 100000, 100),
('Bharti Airtel', 100000, 100),
('REL Comm.', 100000, 100),
('NTPC', 100000, 100),
('TATA Power', 100000, 100),
('ITC', 100000, 100),
('TATA Motors', 100000, 100),
('Maruti Suzuki', 100000, 100),
('Hero Motor Corp', 100000, 100),
('HDFC  ', 100000, 100),
('HDFC Bank', 100000, 100),
('ICICI Bank', 100000, 100),
('SBI', 100000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE IF NOT EXISTS `money` (
  `tname` varchar(200) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`tname`, `balance`) VALUES
('3350', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE IF NOT EXISTS `queue` (
  `tname` varchar(200) NOT NULL,
  `tcount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`tname`, `tcount`) VALUES
('3350', '0');

-- --------------------------------------------------------

--
-- Table structure for table `studtable`
--

CREATE TABLE IF NOT EXISTS `studtable` (
  `tname` varchar(200) NOT NULL,
  PRIMARY KEY (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
