-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2023 at 08:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Name` text NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Mobile1` varchar(20) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `card` int(12) NOT NULL,
  `Cvv` int(3) NOT NULL,
  `Expiry` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Name`, `Mobile`, `Mobile1`, `Email`, `card`, `Cvv`, `Expiry`) VALUES
('Dnyaneshwar Barapatre', '09112845989', '09112845989', 'dbarapatre2002@gmail.com', 132456789, 123, '1241'),
('sfa', '1341', '1531', 'gasa', 3153152, 123, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Name` varchar(30) NOT NULL,
  `Mobile` int(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Name`, `Mobile`, `Email`, `username`, `Password`) VALUES
('Dny', 123445667, 'dbarapatre2002@gmail.com', 'asd', 'asd'),
('Dnyaneshwar Barapatre', 1124, 'dbarapatre2002@gmail.com', 'qwe', 'qwe'),
('Dnyaneshwar Barapatre', 9908, 'barapatre.dnyanu@gmail.com', 'reatailer', 'asd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
