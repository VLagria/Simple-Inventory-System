-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 07:09 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory_lagria`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(250) NOT NULL DEFAULT '',
  `isActive` varchar(10) DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`BrandID`, `BrandName`, `isActive`) VALUES
(1, 'Nestea', 'Yes '),
(2, 'Vita Herbs', 'Yes '),
(3, 'Bear Brand', 'Yes '),
(4, 'Boss Kenshin', 'Yes '),
(6, 'Hulkd', 'No'),
(8, 'five', 'Yes '),
(9, 'Milo', 'Yes '),
(10, 'Swaps', 'Yes '),
(11, 'Ovaltine', 'Yes ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(250) NOT NULL,
  `ItemPrice` decimal(8,2) DEFAULT 0.00,
  `ItemUOM` varchar(100) NOT NULL DEFAULT 'Pc',
  `BrandID` int(11) DEFAULT NULL,
  `MinStock` int(11) DEFAULT 0,
  `ReorderQty` int(11) DEFAULT 0,
  `isActive` varchar(10) DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`ItemID`, `ItemName`, `ItemPrice`, `ItemUOM`, `BrandID`, `MinStock`, `ReorderQty`, `isActive`) VALUES
(1, 'NESTEA Milk Tea Winter Melon Pack of 2', '190.00', 'Pack/2s', 1, 221, 213, 'Yes'),
(2, 'Vita Herb Green Coffee 10 Sachets', '500.00', 'Box/10s', 2, 100, 50, 'Yes'),
(3, 'NESTEA Peach Lemon Blend Iced Tea 1L Pack of 24', '220.80', 'Pack/24s', 1, 100, 2, 'Yes'),
(6, 'Nestea Red Wine Ice Tea', '232.78', 'Pack/24s', 1, 2, 2, 'Yes'),
(7, 'Milo ni Boss Kenshin Pack/21s', '222.22', 'Pack/24s', 4, 20, 2, 'Yes'),
(8, 'MILO Choco Malt Powdered Milk Drink 22g Pack of 24', '207.80', 'Box/10s', 9, 100, 50, 'Yes'),
(15, 'Nestea 3 in 1 Black Bull Pack', '222.00', 'Pack/24s', 1, 100, 30, 'Yes'),
(16, 'Milo Gatas na Choco', '222.00', 'Pc', 9, 21, 3, 'Yes'),
(18, 'Nestea Red Horse', '343.00', 'Pack/24s', 1, 213, 213, 'Yes'),
(19, 'Boss Kenshin Tea', '343.00', 'Pc', 8, 213, 213, 'Yes'),
(20, 'Ovaline Chocolate Milk ', '211.22', 'Pack/2s', 9, 100, 50, 'Yes'),
(21, 'Ovaline Powder Chocolate Milk', '22.02', 'Pack/2s', 11, 212, 21, 'Yes'),
(22, 'Ovaline Sea Salt Tea', '50.00', 'Pack/2s', 11, 200, 60, 'Yes'),
(23, 'Vita Verb Viper Coffee', '25.00', 'Pack/2s', 2, 100, 50, 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `BrandID` (`BrandID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD CONSTRAINT `tbl_items_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `tbl_brand` (`BrandID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
