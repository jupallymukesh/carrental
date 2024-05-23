-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 05:24 PM
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
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cartype`
--

CREATE TABLE `cartype` (
  `carid` int(11) NOT NULL,
  `carname` varchar(255) NOT NULL,
  `cartype` varchar(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `custid` int(11) NOT NULL,
  `custname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `cartype` varchar(20) NOT NULL,
  `driverrequired` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cartype` varchar(255) NOT NULL,
  `days` int(11) NOT NULL,
  `Driverrequired` varchar(255) NOT NULL,
  `sugestions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `name`, `cartype`, `days`, `Driverrequired`, `sugestions`) VALUES
(1, 'kbejypb', 'Mini', 5, 'YES', 'ntg'),
(2, 'kbejypb', 'Mini', 5, 'YES', 'ntg'),
(3, 'krvo whv', 'Mini', 5, 'YES', ' nkveg'),
(4, 'jhkk', 'Prime Suv', 5, 'NO', 'hjjg'),
(5, 'vishwanth', 'Prime Sedan', 10, 'YES', 'ntg'),
(6, 'KARTHIK', 'Prime Suv', 365, 'NO', 'WHAT EVER'),
(7, 'mukesh rao', 'Prime Suv', 10, 'YES', 'enjoying pandagoo'),
(8, 'jupally sindhu', 'Prime Sedan', 0, 'YES', 'gollapally'),
(9, 'tillu', 'Prime Sedan', 5, 'NO', 'gfiyeiudru'),
(10, 'bunny', 'Prime Suv', 10, 'NO', 'mad man'),
(11, 'reddy', 'Prime Suv', 5, 'NO', 'ewgjehgue gvebyteritnow t qutvqtur t4ut0rtnewr2 5y34y40 c4ug034y634n 32tgh96934nr2 c55u340ghyn2 vtug94h'),
(12, 'ckj gfc', 'Prime Suv', 5, 'YES', 'fekl vgbhrw iovewhtiy ogthiuoi fy3g94y ifu34gt3tyen fbyt34y yfrgt 2ioufy8vtr3'),
(13, 'rj34t byfto4 v4yt8', 'Mini', 5, 'NO', 'tjovyut834 vyugt5y y4fgrgty eyfrqwiy'),
(14, 'c 2iry cterewyc wg', 'Prime Sedan', 4, 'NO', 'fkjl jwiuehriewyt tyg8erwtr fbrgtewut');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ownid` int(11) NOT NULL,
  `carid` int(11) NOT NULL,
  `ownername` varchar(255) NOT NULL,
  `phno` varchar(15) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phno` (`phno`);

--
-- Indexes for table `cartype`
--
ALTER TABLE `cartype`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `customerdetails`
--
ALTER TABLE `customerdetails`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phno` (`phno`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `custid` (`custid`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ownid`),
  ADD UNIQUE KEY `phno` (`phno`),
  ADD UNIQUE KEY `gmail` (`gmail`),
  ADD KEY `carid` (`carid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartype`
--
ALTER TABLE `cartype`
  MODIFY `carid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customerdetails`
--
ALTER TABLE `customerdetails`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customerdetails` (`custid`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`carid`) REFERENCES `cartype` (`carid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
