-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2016 at 09:47 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farecollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignsecurity`
--

CREATE TABLE IF NOT EXISTS `assignsecurity` (
  `stationid` varchar(30) DEFAULT NULL,
  `employeeid` varchar(30) DEFAULT NULL,
  `shiftid` varchar(30) DEFAULT NULL,
  `startdate` varchar(30) DEFAULT NULL,
  `enddate` varchar(30) DEFAULT NULL,
  KEY `employeeid` (`employeeid`),
  KEY `shiftid` (`shiftid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignsecurity`
--

INSERT INTO `assignsecurity` (`stationid`, `employeeid`, `shiftid`, `startdate`, `enddate`) VALUES
('B02', 'emp2', '1002', '2014-05-07', '2014-06-07'),
('T01', 'Emp6', '1001', '2014-03-20', '2014-03-20'),
('B17', 'Emp8', '1001', '2014-01-20', '2014-05-20'),
('B07', 'Emp8', '1002', '2014-01-23', '2014-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `autocol`
--

CREATE TABLE IF NOT EXISTS `autocol` (
  `colname` varchar(20) DEFAULT '',
  `colvalue` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autocol`
--

INSERT INTO `autocol` (`colname`, `colvalue`) VALUES
('employee', 37),
('passenger', 7),
('passno', 15),
('station', 35),
('aa', 23),
('w', 23);

-- --------------------------------------------------------

--
-- Table structure for table `busdetails`
--

CREATE TABLE IF NOT EXISTS `busdetails` (
  `BusNo` varchar(20) DEFAULT NULL,
  `BusType` varchar(50) DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `ChessyNo` varchar(50) DEFAULT NULL,
  `PurchaseDate` varchar(20) DEFAULT NULL,
  `InsuranceNo` varchar(50) DEFAULT NULL,
  `InsuranceCompany` varchar(100) DEFAULT NULL,
  `InsuranceStartDate` varchar(50) DEFAULT NULL,
  `InsuranceEndDate` varchar(50) DEFAULT NULL,
  `Capacity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busdetails`
--

INSERT INTO `busdetails` (`BusNo`, `BusType`, `CompanyName`, `ChessyNo`, `PurchaseDate`, `InsuranceNo`, `InsuranceCompany`, `InsuranceStartDate`, `InsuranceEndDate`, `Capacity`) VALUES
('1001', 'Regular', 'BRTS', '54321', '2014-05-05', '2201', 'MAX', '2014-05-05', '2016-05-05', '50'),
('1002', 'Articulated', 'BRTS', '98765', '2014-05-01', '2202', 'LIC', '2014-01-01', '2015-01-01', '60'),
('1003', 'Regular', 'BRTS', '57839', '2014-05-01', '2203', 'MAX', '2014-05-01', '2016-01-20', '55'),
('2010', 'Regular', 'BRTS', '563676', '2014-04-01', '4236571', 'MAX', '2014-04-01', '2016-05-10', '50'),
('3101', 'Articulated', 'BRTS', '98754', '2013-12-04', '9988', 'LIC', '2013-12-05', '2014-12-05', '60');

-- --------------------------------------------------------

--
-- Table structure for table `cardpay`
--

CREATE TABLE IF NOT EXISTS `cardpay` (
  `cardid` varchar(20) DEFAULT NULL,
  `passengerid` varchar(20) DEFAULT NULL,
  `amt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardpay`
--

INSERT INTO `cardpay` (`cardid`, `passengerid`, `amt`) VALUES
('133', 'Pas1', '6'),
('133', 'Pas1', '19.0'),
('133', 'Pas1', '19.0'),
('133', 'Pas1', '19.0'),
('89', 'Pas1', '14.5'),
('133', 'Pas1', '16.5'),
('89', 'Pas1', '16.5'),
('133', 'Pas1', '20.3'),
('89', 'Pas1', '20.3'),
('101', 'Pas98', '16.5'),
('101', 'Pas98', '22.0'),
('101', 'Pas98', '36.4'),
('89', 'Pas1', '16.5'),
('101', 'Pas98', '16.5'),
('812', '12', '24.7');

-- --------------------------------------------------------

--
-- Table structure for table `collectiondetails`
--

CREATE TABLE IF NOT EXISTS `collectiondetails` (
  `StationId` varchar(20) DEFAULT NULL,
  `ShiftId` varchar(20) DEFAULT NULL,
  `EmployeeId` varchar(20) DEFAULT NULL,
  `StartTicketNo` varchar(50) DEFAULT NULL,
  `EndTicketNo` varchar(50) DEFAULT NULL,
  `NoOfPassIssued` varchar(20) DEFAULT NULL,
  `NoOfSmartCardIssued` varchar(20) DEFAULT NULL,
  `TotalAmount` varchar(50) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  KEY `EmployeeId` (`EmployeeId`),
  KEY `ShiftId` (`ShiftId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collectiondetails`
--

INSERT INTO `collectiondetails` (`StationId`, `ShiftId`, `EmployeeId`, `StartTicketNo`, `EndTicketNo`, `NoOfPassIssued`, `NoOfSmartCardIssued`, `TotalAmount`, `Date`, `time`) VALUES
('1', '6', '2', '3', '4', '5', '5', '6', '7', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `cno` int(11) NOT NULL AUTO_INCREMENT,
  `C_From` varchar(100) NOT NULL DEFAULT '',
  `C_To` varchar(100) DEFAULT NULL,
  `C_Date` varchar(300) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL,
  `Reply` varchar(200) DEFAULT NULL,
  `R_Date` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`cno`, `C_From`, `C_To`, `C_Date`, `Subject`, `Message`, `Reply`, `R_Date`) VALUES
(1, 'shiva', 'Manager', '2014-03-05', 'About adding new buses', 'Add new buses between hubli and dharwad.', 'hhhhhhhhhhhhhhhh', '2016-04-29 18:52:16'),
(2, 'Priya', 'Managing Director', '2014-05-07', 'About adding new buses', 'Add new buses between hubli and dharwad.', 'we will consider this request', '2014-05-09 00:00:00'),
(3, 'suma', 'manager', '2014-03-05', 'buses', 'Bus timings', 'ok', '2014-05-07 00:00:00'),
(4, 'Shiva', 'Managing Director', '2014-6-9', 'about adding new stations', 'Add new stations between hubli and dharwad.', 'ok, we will consider ur complaint', '2014-06-10 00:00:00'),
(5, 'Pas1', 'inspector', '2014-6-9', 'about stations', 'maintain clean at stations', '\r\nvnvn', '2016-04-29 18:50:46'),
(6, 'pas1', 'inspector', '2014-6-9', 'stations', 'add new stations', 'adsdxfghbjn', '0000-00-00 00:00:00'),
(7, 'hvr', 'ubl', '2016-12-31', 'b', 'bg', ',rth', '2017-01-01 00:00:00'),
(8, 'null', 'shiva', 'null', 'null', 'null', 'dhdhgfj', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `empassignshift`
--

CREATE TABLE IF NOT EXISTS `empassignshift` (
  `stationid` varchar(30) DEFAULT NULL,
  `shiftid` varchar(30) DEFAULT NULL,
  `employeid` varchar(30) DEFAULT NULL,
  `startdate` varchar(30) DEFAULT NULL,
  `enddate` varchar(30) DEFAULT NULL,
  KEY `employeid` (`employeid`),
  KEY `shiftid` (`shiftid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empassignshift`
--

INSERT INTO `empassignshift` (`stationid`, `shiftid`, `employeid`, `startdate`, `enddate`) VALUES
('B25', '1001', 'Emp1', '2014-05-01', '2014-05-10'),
('T01', '1001', 'Emp1', '2014-05-01', '2014-05-31'),
('B01', '1001', 'emp1', '2014-05-07', '2014-06-07'),
('B01', '1001', 'Emp1', '2014-05-07', '2014-06-07'),
('B06', '1002', 'Emp5', '2014-05-07', '2014-06-07'),
('B06', '1002', 'Emp10', '2014-04-06', '2014-07-07'),
('B10', '1003', 'Emp13', '2014-05-07', '2014-06-07'),
('B09', '1002', 'Emp3', '2014-05-01', '2014-05-31'),
('B11', '1003', 'Emp5', '2014-05-01', '2014-05-22'),
('T02', '1003', 'Emp8', '2014-03-20', '2014-04-20'),
('B13', '1002', 'Emp24', '2014-03-20', '2014-03-20'),
('1002', 'B21', 'Emp30', '2014-03-05', '2014-05-05'),
('B19', '1002', 'Emp3', '2014-02-22', '2014-04-22'),
('B15', '1001', 'Emp13', '2014-02-22', '2014-04-22'),
('B15', '1003', 'Emp4', '2014-01-23', '2014-04-23'),
('B06', '1003', 'Emp2', '2014-01-23', '2014-03-23'),
('B22', '1001', 'Emp5', '2014-01-23', '2014-04-23'),
('aejdhf', 'hjh', 'jhjh', 'jhjhkj', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetails`
--

CREATE TABLE IF NOT EXISTS `employeedetails` (
  `emp_id` varchar(30) NOT NULL,
  `emp_type` varchar(50) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `PhoneNo` varchar(13) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `WorkingTime` varchar(50) DEFAULT NULL,
  `Designation` varchar(80) DEFAULT NULL,
  `Education` varchar(80) DEFAULT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `A_Address` varchar(100) DEFAULT NULL,
  `IntroducedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetails`
--

INSERT INTO `employeedetails` (`emp_id`, `emp_type`, `Name`, `PhoneNo`, `Address`, `WorkingTime`, `Designation`, `Education`, `EmailID`, `Gender`, `A_Address`, `IntroducedBy`) VALUES
('1', 'Emp1', 'Prashant', '2147483647', 'Dharwad', '8am to 1pm', 'Employee', 'B.Sc', 'Prashantme@gmail.com', 'Male', 'Hubli', 'Manager'),
('2', 'Emp10', 'rehan', '2147483647', 'hubli', '9 to 4', 'Employee', 'bca', '54321rehan@yahoo.com', 'V1', 'gadag', 'we'),
('3', 'Emp13', 'Raghavendra', '7760143639', 'Dharwad', '9am to 5pm', 'Employee', 'BE', 'Raghavendra@gmail.com', 'Male', 'Hubli Navanagar', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `empstartstop`
--

CREATE TABLE IF NOT EXISTS `empstartstop` (
  `stationid` varchar(40) DEFAULT NULL,
  `employeeid` varchar(40) DEFAULT NULL,
  `ticketid` varchar(30) DEFAULT NULL,
  `passid` varchar(30) DEFAULT NULL,
  `cardid` varchar(30) DEFAULT NULL,
  `startdate` varchar(30) DEFAULT NULL,
  `starttime` varchar(20) DEFAULT NULL,
  `enddate` varchar(30) DEFAULT NULL,
  `endtime` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  KEY `employeeid` (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empstartstop`
--

INSERT INTO `empstartstop` (`stationid`, `employeeid`, `ticketid`, `passid`, `cardid`, `startdate`, `starttime`, `enddate`, `endtime`, `status`) VALUES
('djfa', 'kj', 'h', 'hjhj', 'hjkh', 'jkhjh', 'null', 'kjhkj', 'kjh', 'h'),
('djfa', 'kj', 'h', 'hjhj', 'hjkh', 'jkhjh', 'null', 'kjhkj', 'kjh', 'h'),
('djfa', 'kj', 'h', 'hjhj', 'hjkh', 'jkhjh', 'null', 'kjhkj', 'kjh', 'h'),
('djfa', 'kj', 'h', 'hjhj', 'hjkh', 'jkhjh', 'null', 'kjhkj', 'kjh', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `faredetails`
--

CREATE TABLE IF NOT EXISTS `faredetails` (
  `MinCharge` varchar(20) DEFAULT NULL,
  `PerKM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faredetails`
--

INSERT INTO `faredetails` (`MinCharge`, `PerKM`) VALUES
('7', '2'),
('77', '4'),
('13`', '3'),
('13`', '3');

-- --------------------------------------------------------

--
-- Table structure for table `finecollection`
--

CREATE TABLE IF NOT EXISTS `finecollection` (
  `StationId` varchar(20) DEFAULT NULL,
  `PassengerName` varchar(50) DEFAULT NULL,
  `Affence` varchar(50) DEFAULT NULL,
  `Fine` varchar(50) DEFAULT NULL,
  `InspectorName` varchar(50) DEFAULT NULL,
  `Inspectorid` varchar(20) NOT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finecollection`
--

INSERT INTO `finecollection` (`StationId`, `PassengerName`, `Affence`, `Fine`, `InspectorName`, `Inspectorid`, `Date`) VALUES
('T01', 'kiran', 'cheating', '400', 'prashant', '', '2014-03-03 00:00:00'),
('T01', 'lalitha', 'nt taken ticket', '300', 'tushit', '', '2014-05-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Hintq` varchar(100) DEFAULT NULL,
  `Hinta` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `Type`, `Hintq`, `Hinta`, `Status`) VALUES
('accountant', 'accountant', 'accountant', 'sd', 'as', 'active'),
('tc', 'tc', 'tc', 'as', 'sd', 'active'),
('md', 'md', 'md', 'qq', 'aa', 'active'),
('manager', 'manager', 'manager', 'asd', 'asd', 'actrive'),
('inspector', 'inspector', 'inspector', 'qq', 'qw', 'active'),
('user', 'user', 'user', 'u', 'u', 'active'),
('dsadvs', 'ad325', 'tc', 'as', 'we', 'active'),
('dsadvs', 'ad111', 'tc', 'as', 'we', 'active'),
('dfbf', 'th277', 'tc', 'as', 'we', 'active'),
('dfbf', 'th328', 'tc', 'as', 'we', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `passdetails`
--

CREATE TABLE IF NOT EXISTS `passdetails` (
  `PassNo` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` varchar(20) DEFAULT NULL,
  `StartStation` varchar(50) DEFAULT NULL,
  `EndStation` varchar(50) DEFAULT NULL,
  `PassFees` int(20) DEFAULT NULL,
  `EducationInstituteName` varchar(50) DEFAULT NULL,
  `StudyingIn` varchar(20) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `pdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passdetails`
--

INSERT INTO `passdetails` (`PassNo`, `StartDate`, `EndDate`, `StartStation`, `EndStation`, `PassFees`, `EducationInstituteName`, `StudyingIn`, `Photo`, `pdate`) VALUES
('12', '2014-05-29', '2014-6-29', 'GANDHINAGAR', 'NAVANAGAR', 300, 'jss', 'jss', 'images (6).jpg', '0000-00-00'),
('34', '2014-05-06', '2014-6-6', 'Gandhinagar', 'navanagar', 800, 'KLE', 'BE', 'images (2).jpg', '0000-00-00'),
('45', '2014-05-06', '2014-6-6', 'Gandhinagar', 'Vidyanagar', 500, 'KLE', '12th', 'images (3).jpg', '0000-00-00'),
('56', '2014-05-06', '2014-6-6', 'hdmc', 'Vidyanagar', 1550, 'KLE', 'BE', 'images (20).jpg', '0000-00-00'),
('87', '2014-05-06', '2014-6-6', 'sdm', 'hosur', 550, 'KLE', 'b.com', 'images (12).jpg', '0000-00-00'),
('123', '2014-05-07', '2014-6-7', 'dwd', 'hubli', 2000, 'jss', 'sdf', 'images (6).jpg', '0000-00-00'),
('873', '2014-05-06', '2014-6-6', 'nttf', 'sdm', 600, 'KLE', 'bba', 'images (22).jpg', '0000-00-00'),
('1122', '2014-05-07', '2014-6-7', 'APMC', 'HCBT', 500, 'KLE', '12th', 'images (4).jpg', '0000-00-00'),
('2010', '2014-05-07', '2014-6-7', 'GANDHINAGAR', 'UNKALL', 300, 'KLE', '12th', 'images (2).jpg', '0000-00-00'),
('Passno15', '2014-06-09', '2014-7-9', 'HCBT', 'PCJ', 600, 'kle', '12th', 'images (7).jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `passengerdetails`
--

CREATE TABLE IF NOT EXISTS `passengerdetails` (
  `PassengerId` varchar(20) DEFAULT NULL,
  `PassengerName` varchar(50) DEFAULT NULL,
  `PassengerAddress` varchar(100) DEFAULT NULL,
  `IdProof` varchar(100) DEFAULT NULL,
  `PhoneNo` int(20) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `EmailId` varchar(30) DEFAULT NULL,
  `WorkNature` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerdetails`
--

INSERT INTO `passengerdetails` (`PassengerId`, `PassengerName`, `PassengerAddress`, `IdProof`, `PhoneNo`, `DOB`, `Gender`, `EmailId`, `WorkNature`) VALUES
('Pas1', 'suma', 'navanagar', 'voterid', 2147483647, '2014-02-1999', 'null', 'suma@gmail.com', 'jobn'),
('Pas2', 'guru', 'banalore', 'io', 12, '1990-04-01', 'null', 'guru@gmail.com', 'sldfkj'),
('Pass114', 'kiran', 'dwd', 'id card', 2147483647, '1990-05-08', 'null', 'kirqn@gmail.com', 'teacher'),
('Pass164', 'yogish', 'gandhinagar', 'PAN card', 2147483647, '1889-0909', 'V1', 'yogishgandhi@yahoo.com', 'teacher'),
('Pass165', 'kjgj', 'kgmvh', 'iygfjh', 0, 'vjhv', 'male', 'uygjf', 'jgvbn'),
('Pass168', 'df', 'erq', 'qwe', 911341341, 'rgwr', 'null', 'adq', 'rgwrg'),
('Pass192', 'ww', 'llk', 'null', 2147483647, '12/02/1888', 'null', 'slkdjf@gmail.com', 'lskdjf'),
('Pass236', 'abc', 'dwd', 'null', 2147483647, '25-05-1990', 'null', 'abc@gmail.com', 'software'),
('Pass273', 'arun', 'hubli', 'null', 2147483647, '1990-03-12', 'null', 'arunme@yahoo.com', 'engineer'),
('Pass1', 'lohith', 'davangere', 'null', 2147483647, '1990-01-23', 'male', 'lohithme@yahoo.com', 'engineer'),
('Pass2', 'ravi', 'dwd', 'null', 2147483647, '1889-01-23', 'V1', 'ravime@gmail.com', 'Engineer'),
('Pass5', 'eramma', 'sirsi', 'VoterID', 2147483647, '1888-01-23', 'V2', 'ermmame@yahoo.com', 'teacher'),
('Pass6', 'sujata', 'kumta', 'Aadhar card', 2147483647, '1990-01-23', 'Female', 'sujatame@gmail.com', 'emp'),
('hghf', 'wq', 'w', 'w', 0, '2016-03-23', 'male', 'htht@ghg', 'yt'),
('ghg', 'ghg', 'w', 'hjh', 0, '2016-03-22', 'female', 'tt@hg', 'bh'),
('gfgf', 'ewew', 'fdd', 'gfgf', 2147483647, '2016-05-6', 'male', 'fg@gh', 'hgh'),
(NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passrequest`
--

CREATE TABLE IF NOT EXISTS `passrequest` (
  `UserID` varchar(100) DEFAULT NULL,
  `PassType` varchar(100) DEFAULT NULL,
  `RequestDate` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passrequest`
--

INSERT INTO `passrequest` (`UserID`, `PassType`, `RequestDate`) VALUES
('67', 'Student', '2014-05-04'),
('56', 'Employee', '2014-02-05'),
('34', 'Student', '2014-04-09'),
('56', 'Student', '2014-03-01'),
('Pass2', 'Student', '2014-03-29'),
('Shiva', 'Student', '2014-05-15'),
('Shiva', 'Student', '2014-05-28'),
('Pas1', 'Student', '2014-03-20'),
('sj', 'kjk', 'kj'),
('sj', 'kjk', 'kj');

-- --------------------------------------------------------

--
-- Table structure for table `routedetails`
--

CREATE TABLE IF NOT EXISTS `routedetails` (
  `StationNo` varchar(20) DEFAULT NULL,
  `StationFrom` varchar(50) DEFAULT NULL,
  `StationTo` varchar(50) DEFAULT NULL,
  `NoOfKM` varchar(20) DEFAULT NULL,
  `fare` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routedetails`
--

INSERT INTO `routedetails` (`StationNo`, `StationFrom`, `StationTo`, `NoOfKM`, `fare`) VALUES
('kj', 'null', 'null', 'jhj', 'hjh'),
('kj', 'null', 'null', 'jhj', 'hjh');

-- --------------------------------------------------------

--
-- Table structure for table `shiftdetails`
--

CREATE TABLE IF NOT EXISTS `shiftdetails` (
  `ShiftId` varchar(20) NOT NULL,
  `ShiftName` varchar(50) DEFAULT NULL,
  `StartTime` varchar(10) DEFAULT NULL,
  `EndTime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ShiftId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiftdetails`
--

INSERT INTO `shiftdetails` (`ShiftId`, `ShiftName`, `StartTime`, `EndTime`) VALUES
('1001', 'Morning', '0000-00-00', '00:00:12'),
('1002', 'Afternoon', '0000-00-00', '00:00:06'),
('1003', 'Evening', '0000-00-00', '00:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `smartcard`
--

CREATE TABLE IF NOT EXISTS `smartcard` (
  `CardNo` int(20) DEFAULT NULL,
  `PassengerId` int(20) DEFAULT NULL,
  `Age` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` varchar(20) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smartcard`
--

INSERT INTO `smartcard` (`CardNo`, `PassengerId`, `Age`, `Gender`, `Amount`, `StartDate`, `EndDate`, `Photo`) VALUES
(101, 1, '24', 'Male', 210, '2014-05-06', '2014-06-06', 'images (6).jpg'),
(102, 2, '12', 'Male', 1000, '2014-05-05', '2014-05-13', 'ANNE1.JPG'),
(103, 3, '12', 'Male', 1000, '2014-05-05', '2015-04-12', 'ANNE2.JPG'),
(104, 4, '22', 'male', 500, '2016-04-13', '2016-04-30', 'WIN_20160418_141133.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `stationdetails`
--

CREATE TABLE IF NOT EXISTS `stationdetails` (
  `StationId` varchar(20) DEFAULT NULL,
  `StationName` varchar(50) DEFAULT NULL,
  `atmeters` int(8) DEFAULT NULL,
  `PhoneNo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationdetails`
--

INSERT INTO `stationdetails` (`StationId`, `StationName`, `atmeters`, `PhoneNo`) VALUES
('T01', 'HCBT', 0, '0836-2376910'),
('B01', 'HRAIL STATION', 1000, '0836-2376911'),
('B02', 'HDMC', 1500, '0836-2376912'),
('B03', 'RANI CHENNAMMA', 1950, '0836-2376913'),
('B04', 'IT PARK', 2600, '0836-2376914'),
('B05', 'HOSUR', 3000, '0836-2376915'),
('B06', 'KLE', 3370, '0836-2376916'),
('B07', 'MUNICIPAL GARDEN', 3850, '0836-2376917'),
('B08', 'BVB', 4420, '0836-2376918'),
('B09', 'PCJ', 4820, '0836-2376919'),
('B10', 'UNKALV', 5610, '0836-2376920'),
('B11', 'UNKALL', 6480, '0836-2376921'),
('B12', 'BAIRIKOPPA', 7590, '0836-2376922'),
('B13', 'SHANTINIKETAN', 8300, '0836-2376923'),
('B14', 'APMC', 9010, '0836-2376924'),
('B15', 'NAVANAGAR', 10097, '0836-2376925'),
('B16', 'RTO', 10800, '0836-2376926'),
('B17', 'ISKON', 11710, '0836-2376927'),
('B18', 'IOCL', 12270, '0836-2376928'),
('B19', 'KMF', 12850, '0836-2376929'),
('B20', 'SANJIVINI', 13320, '0836-2376930'),
('B21', 'NEVALURS', 13850, '0836-2376931'),
('B22', 'SDMH', 14505, '0836-2376932'),
('B23', 'SDMD', 15160, '0836-2376933'),
('B24', 'NEVALURL', 16860, '0836-2376934'),
('B25', 'RAJIVGANDHI', 17310, '0836-2376935'),
('B26', 'YSCOLONY', 17750, '0836-2376936'),
('B27', 'GANDHINAGAR', 18580, '0836-2376937'),
('B28', 'VIDYAGIRI', 19010, '0836-2376938'),
('B29', 'TOLLNAKA', 19760, '0836-2376939'),
('B30', 'BAGALKOT', 20180, '0836-2376940'),
('B31', 'NTTF', 20690, '0836-2376941'),
('B32', 'COURTCIRCLE', 21020, '0836-2376942'),
('B33', 'JUBLEECIRCLE', 21465, '0836-2376943'),
('T02', 'DWDCBT', 21850, '0866-2376944');

-- --------------------------------------------------------

--
-- Table structure for table `stationinspector`
--

CREATE TABLE IF NOT EXISTS `stationinspector` (
  `StationID` varchar(100) DEFAULT NULL,
  `ShiftID` varchar(100) DEFAULT NULL,
  `EmployeeID` varchar(100) DEFAULT NULL,
  `StartDate` varchar(100) DEFAULT NULL,
  `EndDate` varchar(100) DEFAULT NULL,
  KEY `EmployeeID` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationinspector`
--

INSERT INTO `stationinspector` (`StationID`, `ShiftID`, `EmployeeID`, `StartDate`, `EndDate`) VALUES
('sk', 'kjk', 'jkj', 'kj', 'kj'),
('sk', 'kjk', 'jkj', 'kj', 'kj');

-- --------------------------------------------------------

--
-- Table structure for table `ticketdetails`
--

CREATE TABLE IF NOT EXISTS `ticketdetails` (
  `TicketNumber` int(8) DEFAULT NULL,
  `tDate` date DEFAULT NULL,
  `tFrom` varchar(100) DEFAULT NULL,
  `tTo` varchar(100) DEFAULT NULL,
  `tDistance` varchar(100) DEFAULT NULL,
  `NoOfPassengers` varchar(50) DEFAULT NULL,
  `total` int(8) DEFAULT NULL,
  `grandtotl` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketdetails`
--

INSERT INTO `ticketdetails` (`TicketNumber`, `tDate`, `tFrom`, `tTo`, `tDistance`, `NoOfPassengers`, `total`, `grandtotl`) VALUES
(3, '2014-05-02', 'NEVALURS', 'GANDHINAGAR', 'null', 'null', 4, ''),
(4, '2014-05-05', 'HOSUR', 'UNKALL', 'null', 'null', 44, ''),
(5, '2014-05-05', 'APMC', 'BVB', 'null', 'null', 54, ''),
(7, '2014-05-05', 'GANDHINAGAR', 'NAVANAGAR', 'null', 'null', 56, ''),
(8, '2014-05-05', 'NTTF', 'GANDHINAGAR', '0.0', '5', 17, ''),
(9, '2014-05-05', 'GANDHINAGAR', 'NTTF', '0.0', '3', 9, ''),
(10, '2014-05-05', 'SANJIVINI', 'VIDYAGIRI', '0.0', '3', 9, ''),
(11, '2014-05-05', 'GANDHINAGAR', 'NEVALURS', '0.0', '3', 9, ''),
(12, '2014-05-05', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '3', 9, ''),
(13, '2014-05-05', 'GANDHINAGAR', 'KLE', '0.0', '3', 9, ''),
(14, '2014-05-05', 'GANDHINAGAR', 'DCBT', '0.0', '3', 9, ''),
(15, '2014-05-05', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '4', 20, ''),
(16, '2014-05-06', 'KMF', 'MUNICIPAL GARDEN', '0.0', '3', 10, ''),
(17, '2014-05-06', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '3', 10, ''),
(18, '2014-05-06', 'GANDHINAGAR', 'MUNICIPAL GARDEN', '0.0', '3', 10, ''),
(19, '2014-05-06', 'SDMH', 'DCBT', '0.0', '3', 10, ''),
(20, '2014-05-06', 'SDMH', 'DCBT', '0.0', '3', 10, ''),
(21, '2014-05-06', 'SDMH', 'SDMD', '0.0', '3', 10, ''),
(22, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(24, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(25, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(26, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(28, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(29, '2014-05-06', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '4', 20, ''),
(30, '2014-05-06', 'SANJIVINI', 'ISKON', '0.0', '4', 12, ''),
(31, '2014-05-06', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '3', 10, ''),
(32, '2014-05-06', 'GANDHINAGAR', 'ISKON', '0.0', '3', 10, ''),
(33, '2014-05-07', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '6', 20, ''),
(35, '2014-05-07', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '6', 22, ''),
(36, '2014-05-07', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '4', 15, ''),
(37, '2014-05-07', 'KMF', 'PCJ', '0.0', '5', 23, ''),
(38, '2014-05-07', 'KMF', 'PCJ', '0.0', '5', 17, ''),
(39, '2014-05-07', 'SDMD', 'VIDYAGIRI', '0.0', '5', 23, ''),
(40, '2014-05-07', 'SDMH', 'SANJIVINI', '0.0', '5', 17, ''),
(41, '2014-05-07', 'SANJIVINI', 'NTTF', '0.0', '5', 17, ''),
(42, '2014-05-07', 'PCJ', 'BVB', '0.0', '5', 23, ''),
(43, '2014-05-07', 'SHANTINIKETAN', 'BVB', '0.0', '5', 17, ''),
(44, '2014-05-07', 'KMF', 'TOLLNAKA', '0.0', '4', 20, ''),
(45, '2014-05-07', 'APMC', 'COURTCIRCLE', '0.0', '5', 17, ''),
(46, '2014-05-07', 'YSCOLONY', 'UNKALL', '0.0', '4', 20, ''),
(47, '2014-05-07', 'UNKALL', 'DCBT', '0.0', '5', 17, ''),
(48, '2014-05-07', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '6', 22, ''),
(49, '2014-05-07', 'GANDHINAGAR', 'NAVANAGAR', '0.0', '8', 36, ''),
(50, '2014-05-07', 'NTTF', 'SDMH', '0.0', '5', 17, ''),
(51, '2014-05-07', 'VIDYAGIRI', 'NEVALURS', '0.0', '5', 17, ''),
(52, '2014-05-07', 'RTO', 'PCJ', '0.0', '4', 17, ''),
(53, '2014-05-13', 'TOLLNAKA', 'KMF', '0.0', '4', 12, ''),
(54, '2014-05-15', 'NTTF', 'NAVANAGAR', '0.0', '5', 17, ''),
(55, '2014-05-15', 'NTTF', 'NAVANAGAR', '0.0', '5', 17, ''),
(56, '2014-05-28', 'SHANTINIKETAN', 'BVB', '0.0', '5', 17, ''),
(57, '2014-05-28', 'KMF', 'TOLLNAKA', '0.0', '4', 20, ''),
(58, '2014-05-28', 'DWDCBT', 'APMC', '0.0', '6', 19, ''),
(59, '2014-05-28', 'GANDHINAGAR', 'DWDCBT', '0.0', '6', 22, ''),
(60, '2014-05-28', 'SANJIVINI', 'DWDCBT', '0.0', '5', 17, ''),
(61, '2014-05-28', 'VIDYAGIRI', 'NTTF', '0.0', '4', 20, ''),
(62, '2014-05-31', 'SHANTINIKETAN', 'BVB', '0.0', '5', 17, ''),
(63, '2014-05-31', 'SHANTINIKETAN', 'BVB', '0.0', '5', 17, ''),
(65, '2014-06-02', 'HCBT', 'DWDCBT', '0.0', '3', 10, ''),
(66, '2014-06-02', 'HCBT', 'DWDCBT', '0.0', '3', 10, ''),
(67, '2014-06-02', 'HCBT', 'DWDCBT', '0.0', '3', 10, ''),
(68, '2014-06-02', 'HCBT', 'DWDCBT', '0.0', '3', 10, ''),
(69, '2014-06-02', 'HCBT', 'DWDCBT', '21.0', '3', 89, ''),
(70, '2014-06-02', 'DWDCBT', 'SDMH', '-7.0', '5', -25, ''),
(71, '2014-06-02', 'KMF', 'SHANTINIKETAN', '-4.0', '6', -3, ''),
(72, '2014-06-02', 'KMF', 'SHANTINIKETAN', '-4.0', '6', -10, ''),
(73, '2014-06-02', 'KMF', 'SHANTINIKETAN', '-4.0', '6', -3, ''),
(74, '2014-06-02', 'HCBT', 'DWDCBT', '21.0', '3', 89, ''),
(75, '2014-06-02', 'GANDHINAGAR', 'NAVANAGAR', '-8.0', '3', -17, ''),
(76, '2014-06-02', 'HCBT', 'DWDCBT', '21.0', '6', 179, ''),
(77, '2014-06-02', 'UNKALV', 'UNKALL', '0.0', '6', 27, ''),
(79, '2014-06-02', 'NAVANAGAR', 'DWDCBT', '11.0', '3', 51, ''),
(80, '2014-06-02', 'DWDCBT', 'HCBT', '-21.0', '3', -70, ''),
(81, '2014-06-02', 'HCBT', 'DWDCBT', '21.0', '3', 89, ''),
(82, '2014-06-02', 'HCBT', 'DWDCBT', '21.0', '3', 89, ''),
(83, '2014-06-05', 'SANJIVINI', 'SDMH', '1.0', '3', 13, ''),
(84, '2014-06-09', 'KLE', 'BAIRIKOPPA', '4.0', '3', 25, ''),
(85, '2014-06-09', 'UNKALV', 'TOLLNAKA', '14.0', '4', 84, ''),
(86, '2014-06-09', 'MUNICIPAL GARDEN', 'SDMH', '10.0', '3', 51, ''),
(87, '2014-06-09', 'COURTCIRCLE', 'APMC', '-12.0', '3', -36, ''),
(88, '2014-06-09', 'KLE', 'KMF', '9.0', '3', 48, ''),
(89, '2014-06-09', 'KLE', 'GANDHINAGAR', '15.0', '4', 85, ''),
(90, '2014-06-09', 'UNKALV', 'SANJIVINI', '7.0', '4', 55, ''),
(91, '2016-04-26', 'HDMC', 'KLE', '10:59', '1.0', 4, '20.3'),
(92, '2016-04-26', 'HDMC', 'KLE', '11:4', '1.0', 4, '26.1'),
(93, '2016-04-26', 'HDMC', 'KLE', '13:38', '1.0', 4, '16.8'),
(93, '2016-04-26', 'HDMC', 'APMC', '13:38', '7.0', 4, '45.6'),
(93, '2016-04-26', 'APMC', 'KLE', '13:38', '-5.0', 4, '-7.2'),
(93, '2016-04-26', 'APMC', 'KLE', '13:38', '-5.0', 4, '-7.2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
