-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2012 at 12:21 PM
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
('TCS', 9),
('Infosys', 4),
('DLF', 6),
('TISCO', 0),
('ONGC Ltd.', 0),
('RIL', 0),
('L&T', 0),
('BHEL', 1),
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
('SBI', 5);

-- --------------------------------------------------------

--
-- Table structure for table `3351`
--

CREATE TABLE IF NOT EXISTS `3351` (
  `company` text,
  `shares` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3351`
--

INSERT INTO `3351` (`company`, `shares`) VALUES
('TCS', 12),
('Infosys', 0),
('DLF', 4),
('TISCO', 6),
('ONGC Ltd.', 0),
('RIL', 0),
('L&T', 0),
('BHEL', 0),
('Bharti Airtel', 0),
('REL', 0),
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
('3350', 7560.89),
('3351', 6551.76);

-- --------------------------------------------------------

--
-- Table structure for table `newsaffect`
--

CREATE TABLE IF NOT EXISTS `newsaffect` (
  `nsno` int(4) NOT NULL,
  `csno` int(4) NOT NULL,
  `change` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsaffect`
--

INSERT INTO `newsaffect` (`nsno`, `csno`, `change`) VALUES
(1, 1, 3),
(1, 2, 3),
(1, 3, 3),
(1, 4, 3),
(1, 5, 3),
(1, 6, 3),
(1, 7, 3),
(1, 8, 3),
(1, 9, 3),
(1, 10, 3),
(1, 11, 3),
(1, 12, 3),
(1, 13, 3),
(1, 14, 3),
(1, 15, 3),
(1, 16, 3),
(1, 17, 3),
(1, 18, 3),
(1, 19, 3),
(1, 20, 3),
(2, 2, 5),
(2, 1, 4),
(3, 13, -5),
(4, 7, -5),
(4, 8, -4),
(5, 3, -4),
(5, 17, -5),
(5, 18, -3),
(5, 0, -3),
(5, 19, -2),
(6, 16, -3),
(7, 9, -6),
(7, 10, -5),
(7, 0, -5),
(7, 2, -2),
(7, 1, -3),
(8, 4, 7),
(9, 2, 7),
(10, 12, -5),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(2, 7, 2),
(2, 8, 2),
(2, 9, 2),
(2, 10, 2),
(2, 11, 2),
(2, 12, 2),
(2, 13, 2),
(2, 14, 2),
(2, 15, 2),
(2, 16, 2),
(2, 17, 2),
(2, 18, 2),
(2, 19, 2),
(2, 20, 2),
(11, 3, 2),
(11, 17, 5),
(11, 18, 6),
(11, 19, 5),
(11, 20, 4),
(11, 14, 3),
(11, 15, 3),
(11, 16, 4),
(11, 1, 1),
(11, 2, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 5),
(11, 11, 1),
(11, 12, 1),
(11, 13, 1),
(12, 1, 5),
(12, 2, 5),
(12, 3, 5),
(12, 4, 5),
(12, 5, 5),
(12, 6, 5),
(12, 7, 5),
(12, 8, 5),
(12, 9, 5),
(12, 10, 5),
(12, 11, 5),
(12, 12, 5),
(12, 13, 5),
(12, 14, 5),
(12, 15, 5),
(12, 16, 5),
(12, 17, 5),
(12, 18, 5),
(12, 19, 5),
(12, 20, 5),
(13, 1, 3),
(13, 2, 3),
(13, 3, 3),
(13, 4, 3),
(13, 5, 3),
(13, 6, 3),
(13, 7, 3),
(13, 8, 3),
(13, 9, 3),
(13, 10, 3),
(13, 11, 3),
(13, 12, 3),
(13, 13, 3),
(13, 14, 3),
(13, 15, 3),
(13, 16, 3),
(13, 17, 3),
(13, 18, 3),
(13, 19, 3),
(13, 20, 3),
(14, 7, 4),
(14, 6, 4),
(14, 19, 4),
(14, 17, 4),
(14, 20, 3),
(15, 1, 3),
(15, 2, 3),
(15, 3, 3),
(15, 4, 3),
(15, 5, 3),
(15, 6, 3),
(15, 7, 3),
(15, 8, 3),
(15, 9, 3),
(15, 10, 3),
(15, 11, 3),
(15, 12, 3),
(15, 13, 3),
(15, 14, 3),
(15, 15, 3),
(15, 16, 3),
(15, 17, 3),
(15, 18, 3),
(15, 19, 3),
(15, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `newstable`
--

CREATE TABLE IF NOT EXISTS `newstable` (
  `sno` int(4) NOT NULL,
  `news` text NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstable`
--

INSERT INTO `newstable` (`sno`, `news`) VALUES
(1, 'A good monsoon and excellent corporate results.'),
(2, 'infotech boom helped the Sensex '),
(3, 'Tobacco imports burned in an accidental fire. GOI increases the duty on tobacco.'),
(4, 'Big scam of high way contactors... GOI temporarily stops construction works…'),
(5, 'Real Estate Scam publicised.'),
(6, 'Hero Motor Corp loses a patent of one of its gear  shaft designs…'),
(7, ' 2G scam takes over Indian News.'),
(8, 'Tata steel ltd. : successfully bought corus ( steel company ) becomes 2nd biggest producer of steel in the world…'),
(9, 'Infosys : gets an order worth 1000 cr rs. Of UID Cards from indian govt.'),
(10, 'Infosys : gets an order worth 1000 cr rs. Of UID Cards from indian govt.'),
(11, 'Inflation Rates decreases. RBI declares lowered interest rates on loans.'),
(12, 'A sudden spurt of buying towards the fag end of trading sparked by the Government’s decision to divest 10% in all listed companies.'),
(13, 'The finance Minsiter’s talk of an 8 percent GDP growth possible in the current fiscal year, overnight data from the US on the housing sector and buzz that local oil companies will get cash instead of bonds for fuels sold below market prices.'),
(14, 'Aggressive buying by funds ahead of the US Federal Reserve meeting. '),
(15, 'After the result of 15th Indian general election'),
(16, 'High volatility as investors panicked following weak global cues amid fears of the US & global recession. '),
(17, 'Finance minister’s proposal to increase short term capital gains tax to 15% and further adding to it was global pressure '),
(18, 'Heavy selling by FIIs, retail investors and a weakness in global markets '),
(19, 'The Reserve Bank of India takes decision to hike the cash reserve ratio and repo rate.'),
(20, 'As the BJP-led coalition won the majority in the 13th Lok Sabha election.'),
(21, 'the news of the settlement between the Ambani brothers '),
(22, 'The rate cut of 50 bit/s in the discount rate by the Fed chief Ben Bernanke in US'),
(23, 'Profit booking is taking place.'),
(24, 'IT, Metal and realty putting the pressure to make the Sensex weak. Market to remain volatile as the F&O Expiry week. Everthing is positive as Government announced DA hike for Government Employees and also IT Companies giving promotion and hike in the perks ahead of festival Season. Globally too things have improved quite a bit and Dow is also near to the Mark 10000. Overall business cum investment sentiment is upbeat and risk appetite is back.'),
(25, 'Consumer Prices of Petrol and Diesel prices will be increased marginally from Monday following a hike in the commission for Petroleum dealers by the Petroleum Ministry. The increase will be 7 paise per litre for petrol and 4 paise per litre for diesel. The move is ahead of increasing international price of Crude. Also the government is thinking of deregulation of price of petroleum products which will lead to change in price of petrol and diesel with change in price of International crude. An high level government commitee is discussing the issue of deregulation.'),
(26, 'Inflation Rate increases by 2%'),
(27, 'Oil prices increased in international market. But GOI provides subsidi. Prices steady for now.'),
(28, 'US president visits India. Many Indian companies attracted by his offers.'),
(29, 'New ‘Nuclear Summit’ takes place. No more uranium supplies to developing countries. Limitations on nuclear weapons.'),
(30, 'nullll');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE IF NOT EXISTS `queue` (
  `tname` varchar(200) NOT NULL,
  `tcount` varchar(200) NOT NULL,
  `done` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studtable`
--

CREATE TABLE IF NOT EXISTS `studtable` (
  `tname` varchar(200) NOT NULL,
  PRIMARY KEY (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studtable`
--

INSERT INTO `studtable` (`tname`) VALUES
('3351');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
