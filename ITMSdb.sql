-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 10:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itms`
--

-- --------------------------------------------------------

--
-- Table structure for table `dl`
--

CREATE TABLE `dl` (
  `id` int(50) NOT NULL,
  `Name` text NOT NULL,
  `Status` text NOT NULL,
  `License_Number` varchar(16) NOT NULL,
  `Issue_date` date NOT NULL,
  `Validity` date NOT NULL,
  `Vehicle_class` text NOT NULL,
  `License_Authority` text NOT NULL,
  `License_code` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Blood_Gr` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Sex` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dl`
--

INSERT INTO `dl` (`id`, `Name`, `Status`, `License_Number`, `Issue_date`, `Validity`, `Vehicle_class`, `License_Authority`, `License_code`, `DOB`, `Blood_Gr`, `Address`, `Sex`) VALUES
(1, 'Parth', 'Active', 'BH685862', '2021-04-07', '2021-04-15', 'A', 'Vadodara', 'VAD06', '2020-03-01', 'B+', 'Samta Ground, Vadodara', 'Male'),
(4, 'Akshay Kumar', 'Active', 'AK55876D', '2020-12-01', '2021-04-09', 'B', 'Maharashtra', 'MUM01', '2020-03-01', 'A+', 'Mumbai, Maharashtra', 'Male'),
(2, 'Jitendra', 'Active', 'FD7687', '2021-04-07', '2021-04-24', 'A', 'Vadodara', 'VAD06', '2020-03-01', 'B+', 'Channi, Vadodara', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `rc`
--

CREATE TABLE `rc` (
  `Vehicle_Number` varchar(10) NOT NULL,
  `Vehicle_Name` text NOT NULL,
  `Registering_Authority` text NOT NULL,
  `Person_Name` text NOT NULL,
  `Chassis_no` varchar(17) NOT NULL,
  `Engine_no` varchar(6) NOT NULL,
  `Vehicle_color` text NOT NULL,
  `Maker_Name` text NOT NULL,
  `Model_Name` varchar(25) NOT NULL,
  `Fuel_type` text NOT NULL,
  `Vehicle_Class` text NOT NULL,
  `Insurance_Policy` varchar(25) NOT NULL,
  `PUC` varchar(20) NOT NULL,
  `Insurance_valid_upto` date NOT NULL,
  `PUC_valid_upto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rc`
--

INSERT INTO `rc` (`Vehicle_Number`, `Vehicle_Name`, `Registering_Authority`, `Person_Name`, `Chassis_no`, `Engine_no`, `Vehicle_color`, `Maker_Name`, `Model_Name`, `Fuel_type`, `Vehicle_Class`, `Insurance_Policy`, `PUC`, `Insurance_valid_upto`, `PUC_valid_upto`) VALUES
('GJ06KF2262', 'Activa 3g', 'Vadodara', 'Parth', 'A5200B4', 'A5FG52', 'Black', 'Honda', '3g', 'Petrol', 'A', '478512', '25987', '2021-04-09', '2021-04-21'),
('GJ27AB2672', 'Jupiter', 'Surat', 'Ramesh', 'B5200B4', 'NM565', 'Grey', 'TVS', 'Tech', 'Petrol', 'B', '65154684', '1541541', '2021-05-13', '2021-04-22'),
('TS08FM8888', 'Hyundai Creta', 'Vadodara', 'Raj Patel', 'CB67890', '648GBN', 'White', 'Hyundai', 'Creta', 'Diesal', 'F', 'A45789', '43589', '2021-04-14', '2021-04-23'),
('NK05HE2234', 'Jupiter', 'Kerala', 'Rajesh', 'GJP564324', '648GBN', 'Black', 'TVS', 'Jupiter', 'Petrol', 'C', 'A45789', '25987', '2021-04-14', '2021-04-23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
