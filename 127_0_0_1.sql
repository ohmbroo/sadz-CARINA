-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2014 at 04:21 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carina`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcoronalholeannotations`
--

CREATE TABLE IF NOT EXISTS `tblcoronalholeannotations` (
  `chaAnnotationKeyID` int(11) NOT NULL,
  `chaSolarImageDataKeyID` int(11) DEFAULT NULL,
  `chaCoronalHoleNumber` int(11) DEFAULT NULL,
  `chaPointID` int(11) DEFAULT NULL,
  `chaXCoordinate` float DEFAULT NULL,
  `chaYCoordinate` float DEFAULT NULL,
  `chaCreationDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chaModifiedDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcoronalholeannotations`
--

INSERT INTO `tblcoronalholeannotations` (`chaAnnotationKeyID`, `chaSolarImageDataKeyID`, `chaCoronalHoleNumber`, `chaPointID`, `chaXCoordinate`, `chaYCoordinate`, `chaCreationDateTime`, `chaModifiedDateTime`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, '2014-11-06 15:09:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsolarimagedata`
--

CREATE TABLE IF NOT EXISTS `tblsolarimagedata` (
  `sidSolarImgDataKeyID` int(11) NOT NULL,
  `sidUserKeyID` int(11) DEFAULT NULL,
  `sidSrcImgSize` int(11) DEFAULT NULL,
  `sidSrcImgPixelsX` bit(1) DEFAULT NULL,
  `sidSrcImgPixelsY` int(11) DEFAULT NULL,
  `sidSrcImgDateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sidAnnImgLocation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccounts`
--

CREATE TABLE IF NOT EXISTS `tbluseraccounts` (
  `uatUserKeyID` int(11) NOT NULL,
  `uatFirstName` varchar(50) DEFAULT NULL,
  `uatLastName` varchar(50) DEFAULT NULL,
  `uatUserLevel` int(11) DEFAULT NULL,
  `uatUserEmail` varchar(100) DEFAULT NULL,
  `uatDisplayName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcoronalholeannotations`
--
ALTER TABLE `tblcoronalholeannotations`
 ADD PRIMARY KEY (`chaAnnotationKeyID`);

--
-- Indexes for table `tblsolarimagedata`
--
ALTER TABLE `tblsolarimagedata`
 ADD PRIMARY KEY (`sidSolarImgDataKeyID`), ADD KEY `tblSolarImageData_sidUserKeyID_idx` (`sidUserKeyID`);

--
-- Indexes for table `tbluseraccounts`
--
ALTER TABLE `tbluseraccounts`
 ADD PRIMARY KEY (`uatUserKeyID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
