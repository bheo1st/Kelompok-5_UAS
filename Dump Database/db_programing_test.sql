-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 02:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_programing_test`
--
CREATE DATABASE IF NOT EXISTS `db_programing_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_programing_test`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `password`) VALUES
(1, 'admin', '$2y$10$7FtUzUWLK0uzLIdvv5wW8.y9Dv2jyYy.SlxFENeOJiKTvAl..G9j6');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

DROP TABLE IF EXISTS `nasabah`;
CREATE TABLE `nasabah` (
  `AccountId` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Point` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`AccountId`, `Name`, `Point`) VALUES
(1, 'Customer 1', 210),
(6, 'bheo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `TransactionId` int(11) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `TransactionDate` datetime NOT NULL,
  `Description` varchar(50) NOT NULL,
  `DebitCreditStatus` varchar(1) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`TransactionId`, `AccountId`, `TransactionDate`, `Description`, `DebitCreditStatus`, `Amount`, `Balance`) VALUES
(5, 1, '2021-03-05 10:43:44', 'Setor Tunai', 'C', 200000, 200000),
(6, 1, '2021-03-05 10:43:56', 'Bayar Listrik', 'D', 111000, 89000),
(7, 1, '2021-03-05 10:44:10', 'Beli Pulsa', 'D', 32000, 57000),
(8, 1, '2021-03-05 10:47:27', 'Tarik Tunai', 'D', 1000, 56000),
(9, 1, '2021-04-28 17:40:18', 'Setor Tunai', 'C', 500000, 556000),
(10, 1, '2021-04-28 17:40:51', 'Bayar Listrik', 'D', 200000, 356000),
(11, 1, '2021-04-28 17:42:06', 'Beli Pulsa', 'D', 10000, 346000),
(12, 1, '2021-04-28 17:42:22', 'Beli Pulsa', 'D', 10000, 336000),
(13, 1, '2021-04-28 17:42:45', 'Beli Pulsa', 'D', 20000, 316000),
(14, 1, '2021-04-28 17:43:16', 'Setor Tunai', 'C', 20000, 336000),
(15, 1, '2021-04-28 17:43:35', 'Beli Pulsa', 'D', 20000, 316000),
(16, 1, '2021-04-28 17:44:26', 'Beli Pulsa', 'D', 30000, 286000),
(17, 1, '2021-04-28 17:44:50', 'Beli Pulsa', 'D', 40000, 246000),
(18, 1, '2021-04-28 17:45:08', 'Beli Pulsa', 'D', 30000, 216000),
(19, 1, '2021-04-28 17:46:01', 'Beli Pulsa', 'D', 20000, 196000),
(20, 1, '2021-04-28 17:55:21', 'Bayar Listrik', 'D', 20000, 176000),
(21, 1, '2021-04-28 17:55:53', 'Bayar Listrik', 'D', 20000, 156000),
(22, 1, '2021-04-28 18:26:10', 'Bayar Listrik', 'D', 20000, 136000),
(23, 1, '2021-04-28 18:26:24', 'Bayar Listrik', 'D', 30000, 106000),
(24, 1, '2021-04-28 18:26:50', 'Bayar Listrik', 'D', 100000, 6000),
(25, 1, '2021-04-28 18:27:18', 'Setor Tunai', 'C', 50000, 56000),
(26, 1, '2021-04-28 18:27:30', 'Bayar Listrik', 'D', 40000, 16000),
(27, 1, '2021-05-03 10:08:53', 'Setor Tunai', 'C', 500000, 516000),
(28, 1, '2021-05-03 10:09:06', 'Bayar Listrik', 'D', 20000, 496000),
(29, 1, '2021-05-03 10:10:52', 'Beli Pulsa', 'D', 10000, 486000),
(30, 1, '2021-05-03 10:11:06', 'Beli Pulsa', 'D', 20000, 466000),
(31, 1, '2021-05-03 10:12:10', 'Beli Pulsa', 'D', 20000, 446000),
(32, 1, '2021-05-03 10:13:08', 'Beli Pulsa', 'D', 20000, 426000),
(33, 1, '2021-05-03 10:14:57', 'Beli Pulsa', 'D', 20000, 406000),
(34, 1, '2021-05-03 10:16:33', 'Beli Pulsa', 'D', 20000, 386000),
(35, 1, '2021-05-03 10:17:56', 'Bayar Listrik', 'D', 10000, 376000),
(36, 1, '2021-05-03 10:18:34', 'Bayar Listrik', 'D', 10000, 366000),
(37, 1, '2021-05-03 10:20:26', 'Bayar Listrik', 'D', 10000, 356000),
(38, 1, '2021-05-03 10:34:41', 'Bayar Listrik', 'D', 10000, 346000),
(39, 1, '2021-05-03 10:38:29', 'Bayar Listrik', 'D', 20000, 326000),
(40, 1, '2021-05-03 10:42:27', 'Bayar Listrik', 'D', 10000, 316000),
(41, 1, '2021-05-03 10:44:58', 'Bayar Listrik', 'D', 10000, 306000),
(42, 1, '2021-05-03 10:45:13', 'Bayar Listrik', 'D', 20000, 286000),
(43, 1, '2021-05-03 10:45:34', 'Bayar Listrik', 'D', 50000, 236000),
(44, 1, '2021-05-03 10:46:18', 'Bayar Listrik', 'D', 60000, 176000),
(45, 1, '2021-05-03 10:46:29', 'Setor Tunai', 'C', 70000, 246000),
(46, 1, '2021-05-03 10:46:52', 'Bayar Listrik', 'D', 100000, 146000),
(47, 1, '2021-05-03 10:49:30', 'Beli Pulsa', 'D', 20000, 126000),
(48, 1, '2021-05-03 10:49:45', 'Beli Pulsa', 'D', 40000, 86000),
(49, 1, '2021-05-03 10:51:10', 'Bayar Listrik', 'D', 50000, 36000),
(50, 1, '2021-05-03 10:51:51', 'Setor Tunai', 'C', 1000000, 1036000),
(51, 1, '2021-05-03 10:52:07', 'Bayar Listrik', 'D', 60000, 976000),
(52, 1, '2021-05-03 10:53:23', 'Bayar Listrik', 'D', 60000, 916000),
(53, 1, '2021-05-03 10:53:35', 'Bayar Listrik', 'D', 90000, 826000),
(54, 1, '2021-05-03 10:53:47', 'Bayar Listrik', 'D', 100000, 726000),
(55, 1, '2021-05-03 10:54:04', 'Bayar Listrik', 'D', 110000, 616000),
(56, 1, '2021-05-03 11:26:41', 'Bayar Listrik', 'D', 20000, 596000),
(57, 1, '2021-05-03 11:27:11', 'Bayar Listrik', 'D', 30000, 566000),
(58, 1, '2021-05-03 11:27:43', 'Bayar Listrik', 'D', 200000, 366000),
(59, 1, '2021-05-06 11:53:57', 'Bayar Listrik', 'D', 120000, 246000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`AccountId`) USING BTREE;

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`TransactionId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nasabah`
--
ALTER TABLE `nasabah`
  MODIFY `AccountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
