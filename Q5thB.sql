-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 11:12 AM
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
-- Database: `abc_company_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `ProductDescription` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `ProductCategory` varchar(255) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Tags` varchar(255) DEFAULT NULL,
  `Comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ProductID`, `Name`, `SupplierID`, `ProductDescription`, `Price`, `ProductCategory`, `Images`, `Tags`, `Comments`) VALUES
(1, 'Product 1', 6, 'Full Sleave', 10.00, 'Category 1', 'image1.jpg', 'Tag1, Tag2', 'Comment 1'),
(2, 'Product 2', 2, 'Oversized', 20.00, 'Fashion', 'image2.jpg', 'Tag3, Tag4', 'Comment 2'),
(3, 'Product 3', 3, 'Full Length', 30.00, 'Category 3', 'image3.jpg', 'Tag5, Tag6', 'Comment 3'),
(4, 'Product 4', 2, 'Populer This Week', 40.00, 'Category 4', 'image4.jpg', 'Tag7, Tag8', 'Comment 4'),
(5, 'Product 5', 5, 'Shorts', 50.00, 'Fashion', 'image5.jpg', 'Tag9, Tag10', 'Comment 5'),
(6, 'Product 6', 5, 'Most Pefferable', 60.00, 'Category 6', 'image6.jpg', 'Tag11, Tag12', 'Comment 6'),
(7, 'Product 7', 7, 'Fexible Size', 70.00, 'Fashion', 'image7.jpg', 'Tag13, Tag14', 'Comment 7'),
(8, 'Product 8', 1, '2 In 1', 80.00, 'Fashion', 'image8.jpg', 'Tag15, Tag16', 'Comment 8'),
(9, 'Product 9', 9, 'Value for Money', 90.00, 'Category 9', 'image9.jpg', 'Tag17, Tag18', 'Comment 9'),
(10, 'Product 10', 10, 'Most Liked', 100.00, 'Category 10', 'image10.jpg', 'Tag19, Tag20', 'Comment 10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
