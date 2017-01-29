-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2012 at 12:35 PM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
