-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 07:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `location`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `countries_id` varchar(50) NOT NULL,
  `states_id` varchar(50) NOT NULL,
  `cities_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=off, 1=on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `countries_id`, `states_id`, `cities_name`, `status`) VALUES
(1, '1', '1', 'New Delhi', 1),
(2, '1', '1', 'hauz khas', 1),
(3, '1', '2', 'Amritsar', 1),
(4, '1', '2', 'Ludhiana', 1),
(5, '1', '3', 'Lucknow', 1),
(6, '1', '3', 'Varanasi', 1),
(7, '1', '3', ' Prayagraj', 1),
(8, '1', '4', 'Bhopal', 1),
(9, '1', '4', 'gwalior', 1),
(10, '1', '4', 'Indore', 1),
(11, '1', '5', 'Dehradun', 1),
(12, '1', '5', 'Nainital', 1),
(13, '2', '6', 'Hoover', 1),
(14, '2', '6', 'Auburn', 1),
(15, '2', '7', 'Seward', 1),
(16, '2', '7', 'Sitka', 1),
(17, '2', '8', 'Fresno', 1),
(18, '2', '8', 'Oakland', 1),
(19, '2', '9', 'Atlanta', 1),
(20, '2', '9', 'Helen', 1),
(21, '3', '10', 'Victoria', 1),
(22, '3', '10', 'Nanaimo', 1),
(23, '3', '11', 'Red Deer', 1),
(24, '3', '11', 'Edmonton', 1),
(25, '3', '12', 'Toronto', 1),
(26, '3', '12', 'test1', 1),
(39, '4', '13', 'Vannes', 1),
(40, '4', '13', 'Locronan', 1),
(41, '4', '14', 'Calvi', 1),
(42, '4', '14', ' Bastia', 1),
(43, '4', '15', 'Versailles', 1),
(44, '4', '15', 'Clichy', 1),
(45, '5', '16', 'Baden-Baden', 1),
(46, '5', '16', 'Freiburg im Breisgau', 1),
(47, '5', '16', 'Stuttgart', 1),
(48, '5', '17', 'Bamberg', 1),
(49, '5', '17', 'Nuremberg', 1),
(50, '5', '18', 'Bernau', 1),
(51, '5', '18', 'Strausberg', 1),
(52, '5', '19', 'Neustadt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `countries_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=off, 1=on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countries_name`, `status`) VALUES
(1, 'India', 1),
(2, 'USA', 1),
(3, 'Canada', 1),
(4, 'France', 1),
(5, 'Germany', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `countries_id` int(50) NOT NULL,
  `states_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=off, 1=on'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `countries_id`, `states_name`, `status`) VALUES
(1, 1, 'Delhi', 1),
(2, 1, 'Panjab', 1),
(3, 1, 'UP', 1),
(4, 1, 'MP', 1),
(5, 1, 'Uttarakhand', 1),
(6, 2, 'Alabama', 1),
(7, 2, 'Alaska', 1),
(8, 2, 'California', 1),
(9, 2, 'Georgia', 1),
(10, 3, 'British Columbia', 1),
(11, 3, 'Alberta', 1),
(12, 3, 'Ontario', 1),
(13, 4, 'Brittany', 1),
(14, 4, 'Corsica', 1),
(15, 4, 'Paris Region', 1),
(16, 5, ' Baden-Württemberg', 1),
(17, 5, 'Bavaria', 1),
(18, 5, 'Berlin', 1),
(19, 5, 'Hamburg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
