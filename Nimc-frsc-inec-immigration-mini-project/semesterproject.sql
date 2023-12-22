-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 09:51 PM
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
-- Database: `semesterproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `frsc`
--

CREATE TABLE `frsc` (
  `id` int(50) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `First_name` varchar(500) NOT NULL,
  `Last_name` varchar(11) NOT NULL,
  `Email_address` varchar(500) NOT NULL,
  `Age` int(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `radio_button` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frsc`
--

INSERT INTO `frsc` (`id`, `userid`, `First_name`, `Last_name`, `Email_address`, `Age`, `password`, `radio_button`) VALUES
(12, '', 'nami', 'luffy', 'namiluffy@gmail.com', 12, '$2y$10$9PfyksaJi6FjLJ7YfaPANegyD8.nGuPjtHdY0nZ513OZuI4EXC7pG', 'FRSC');

-- --------------------------------------------------------

--
-- Table structure for table `immigration`
--

CREATE TABLE `immigration` (
  `id` int(200) NOT NULL,
  `userid` int(200) NOT NULL,
  `First_name` varchar(200) NOT NULL,
  `Last_name` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Email_address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `radio_button` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `immigration`
--

INSERT INTO `immigration` (`id`, `userid`, `First_name`, `Last_name`, `Age`, `Email_address`, `password`, `radio_button`) VALUES
(4, 0, 'namu', 'luffy', '12', 'namiluffy123@gmail.com', '$2y$10$felzl.UpokL2RfcFSwdNC.5z1q6Zn1bsy5buD4BHRq40Vmaq4kx2q', 'IMMIGRATION');

-- --------------------------------------------------------

--
-- Table structure for table `inec`
--

CREATE TABLE `inec` (
  `id` int(50) NOT NULL,
  `userid` int(200) NOT NULL,
  `First_name` varchar(500) NOT NULL,
  `Last_name` varchar(200) NOT NULL,
  `Email_address` varchar(500) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `radio_button` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inec`
--

INSERT INTO `inec` (`id`, `userid`, `First_name`, `Last_name`, `Email_address`, `Age`, `password`, `radio_button`) VALUES
(5, 0, 'nam', 'luffy', 'namiluffy12@gmail.com', '12', '$2y$10$Ik/KJG2Cc0V2V4.2ahKykO6J/RhwpRxXMKs9wXdEtUt', 'INEC');

-- --------------------------------------------------------

--
-- Table structure for table `nimc`
--

CREATE TABLE `nimc` (
  `id` int(200) NOT NULL,
  `userid` int(200) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Email_address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `radio_button` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nimc`
--

INSERT INTO `nimc` (`id`, `userid`, `First_name`, `Last_name`, `Age`, `Email_address`, `password`, `radio_button`) VALUES
(6, 0, 'na', 'luffy', '12', 'namiluffy1@gmail.com', '$2y$10$XLCSHgFZfMWyqnf2hWKP8OFDs2Esg2CfJVzk35HUouWCKwV2uWcYK', 'NIMC');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(50) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `First_name` varchar(500) NOT NULL,
  `Last_name` varchar(500) NOT NULL,
  `Age` int(200) NOT NULL,
  `Email_address` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `radio_button` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `userid`, `First_name`, `Last_name`, `Age`, `Email_address`, `password`, `radio_button`) VALUES
(50, '', 'me', 'be', 12, 'mnehjggjg@gmail.com', '$2y$10$K8qx0r.A/.sRHgZ3lwZHleilDA0sTYNk5M9Wpm7aUFsSV3Wbsa68u', 'STAFF'),
(52, '', 'John', 'Ameh', 12, 'johnameh29@gmail.com', '$2y$10$tBtnJH2i5OFJSJKp4tGtLOtyFr9C2Bzl/ftjKYdLmHQe1JytlMKc.', 'STAFF'),
(53, '', 'jo', 'an', 12, 'joan@gmail.com', '$2y$10$SY0StnLy9FEfOEaBNUkaLuwKMQ15SrmWy.uaEpNhy.MSrkgF17EG2', 'STAFF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frsc`
--
ALTER TABLE `frsc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `immigration`
--
ALTER TABLE `immigration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inec`
--
ALTER TABLE `inec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nimc`
--
ALTER TABLE `nimc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frsc`
--
ALTER TABLE `frsc`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `immigration`
--
ALTER TABLE `immigration`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inec`
--
ALTER TABLE `inec`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nimc`
--
ALTER TABLE `nimc`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
