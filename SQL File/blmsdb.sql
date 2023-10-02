-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 02:49 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblassignlocker`
--

CREATE TABLE `tblassignlocker` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `CompleteAddress` mediumtext DEFAULT NULL,
  `Occupation` varchar(250) DEFAULT NULL,
  `LockerSize` int(10) DEFAULT NULL,
  `LockerNumber` int(10) DEFAULT NULL,
  `KeyNumber` int(10) DEFAULT NULL,
  `Instructions` mediumtext DEFAULT NULL,
  `NomineeName` varchar(250) DEFAULT NULL,
  `Relationwithnominee` varchar(250) DEFAULT NULL,
  `ValuableDetails` mediumtext DEFAULT NULL,
  `IDcard` varchar(250) DEFAULT NULL,
  `IDproof` varchar(250) DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Status` int(5) DEFAULT NULL,
  `LockerAssigndate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassignlocker`
--

INSERT INTO `tblassignlocker` (`ID`, `FullName`, `Email`, `MobileNumber`, `CompleteAddress`, `Occupation`, `LockerSize`, `LockerNumber`, `KeyNumber`, `Instructions`, `NomineeName`, `Relationwithnominee`, `ValuableDetails`, `IDcard`, `IDproof`, `Photo`, `Status`, `LockerAssigndate`) VALUES
(1, 'Akash Chaturvedi', 'aka@gmail.com', 1234567896, 'Block No-886, Noorpur Madya Pradesh', 'Government Employee ', 6, 123456, 1234561, 'yeiuwyduiewyiwurfyeuiyiurey', 'Hema Chaturvedi', 'Spouse', 'Jewelry of Gold\r\n1. Gold Bangles(4)\r\n2. 4 Set Earings\r\n3. Gold Biscuit\r\n', 'Aadhar Card', 'ad04ad2d96ae326a9ca9de47d9e2fc741669729344.jpg', 'ecebbecf28c2692aeb021597fbddb1741669729344.jpg', 1, '2022-11-29 13:42:24'),
(2, 'Rajesh Singh', 'raj@gmail.com', 5646545645, 'G-123, Gyan Sagar Apartment Lodhi Road New Delhi', 'Business', 7, 123455, 1234551, 'gjhgjhgjhghjghjgtuytut', 'Rahul', 'Son', 'Documents of House and Companies\r\n', 'Aadhar Card', 'ad04ad2d96ae326a9ca9de47d9e2fc741669731986.jpg', '00c2b7ca54d5e300f9153ab1b75f941d1669731986.jpg', 1, '2022-11-29 14:26:26'),
(3, 'Amit Kumar', 'amit12@gmail.com', 1231233210, 'A 1234 XYZ Street Mayur Vihar New Delhi 110092', 'Software Developer', 7, 789456, 142536, 'NA', 'Garima Singh', 'Spouse', 'Gold, Property Docs', 'Aadhar Card', '8a008d88e22b011992a9e63145dbe9821669857238.pdf', 'ad04ad2d96ae326a9ca9de47d9e2fc741669857238.jpg', 1, '2022-12-01 01:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblbanker`
--

CREATE TABLE `tblbanker` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbanker`
--

INSERT INTO `tblbanker` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Bank Head', 'admin', 1234596321, 'bank1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-29 18:30:00', 1),
(3, 'Anuj kumar', 'akr305', 1234567891, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-29 18:30:00', 0),
(7, 'John Doe', 'test12', 1425362514, 'jd12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-12-01 01:11:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllockertype`
--

CREATE TABLE `tbllockertype` (
  `ID` int(5) NOT NULL,
  `SizeofLocker` varchar(50) DEFAULT NULL,
  `Priceoflocker` decimal(10,0) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllockertype`
--

INSERT INTO `tbllockertype` (`ID`, `SizeofLocker`, `Priceoflocker`, `CreationDate`) VALUES
(6, 'Small', '11000', '2022-11-29 07:35:47'),
(7, 'Medium', '12000', '2022-11-29 07:35:59'),
(8, 'Large', '15000', '2022-11-29 07:36:07'),
(9, 'Xtra Large', '20000', '2022-11-29 07:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541239, NULL, '10:30 am to 7:30 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblassignlocker`
--
ALTER TABLE `tblassignlocker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbanker`
--
ALTER TABLE `tblbanker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllockertype`
--
ALTER TABLE `tbllockertype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblassignlocker`
--
ALTER TABLE `tblassignlocker`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbanker`
--
ALTER TABLE `tblbanker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbllockertype`
--
ALTER TABLE `tbllockertype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
