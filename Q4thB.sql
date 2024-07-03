-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 11:10 AM
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `LastLoginTime` datetime DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `TelephoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FullName`, `EmailAddress`, `LastLoginTime`, `Password`, `Address`, `TelephoneNumber`) VALUES
(1, 'Alice Johnson', 'alice.johnson@gmail.com', '2024-06-01 12:00:00', 'password123', '123 Maple Street', '123-456-7890'),
(2, 'Bob Smith', 'bob.smith@gmail.com', '2024-06-02 13:00:00', 'password123', '456 Oak Avenue', '234-567-8901'),
(3, 'Charlie Brown', 'charlie.brown@yahoo.com', '2024-06-03 14:00:00', 'password123', '789 Pine Road', '345-678-9012'),
(4, 'Diana Prince', 'diana.prince@hotmail.com', '2024-06-04 15:00:00', 'password123', '101 Elm Street', '456-789-0123'),
(5, 'Evan Davis', 'evan.davis@gmail.com', '2024-06-05 16:00:00', 'password123', '202 Birch Lane', '567-890-1234'),
(6, 'Fiona Green', 'fiona.green@yahoo.com', '2024-06-06 17:00:00', 'password123', '303 Cedar Blvd', '678-901-2345'),
(7, 'George Hill', 'george.hill@hotmail.com', '2024-06-07 18:00:00', 'password123', '404 Spruce Way', '789-012-3456'),
(8, 'Hannah Lee', 'hannah.lee@gmail.com', '2024-06-08 19:00:00', 'password123', '505 Walnut St', '890-123-4567'),
(9, 'Ian Moore', 'ian.moore@yahoo.com', '2024-06-09 20:00:00', 'password123', '606 Chestnut Dr', '901-234-5678'),
(10, 'Jill Scott', 'jill.scott@yahoo.com', '2024-06-10 21:00:00', 'password123', '707 Redwood Pl', '012-345-6789');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(1, 1, '2024-05-02 10:00:00'),
(2, 2, '2024-05-09 11:00:00'),
(3, 3, '2024-06-13 12:00:00'),
(4, 4, '2024-06-14 13:00:00'),
(5, 5, '2024-05-21 14:00:00'),
(6, 6, '2024-06-16 15:00:00'),
(7, 7, '2024-06-17 16:00:00'),
(8, 8, '2024-05-24 17:00:00'),
(9, 9, '2024-05-30 18:00:00'),
(10, 10, '2024-06-20 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderItemID`, `OrderID`, `ProductID`, `Quantity`, `Price`, `Description`) VALUES
(1, 1, 1, 2, 20.00, 'T-shirt L'),
(2, 2, 2, 1, 20.00, 'Jeans M'),
(3, 3, 3, 5, 150.00, 'Shorts L'),
(4, 4, 4, 3, 120.00, 'Round Nack t-shirt'),
(5, 5, 5, 4, 200.00, 'Oversized T-shirt'),
(6, 6, 6, 2, 120.00, 'Oversized L'),
(7, 7, 7, 1, 70.00, 'Track Pant L'),
(8, 8, 8, 6, 480.00, 'Shoes 8'),
(9, 9, 9, 2, 180.00, 'T-shirt Full'),
(10, 10, 10, 1, 100.00, 'Oversized Pant');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Name`, `SupplierID`, `ProductDescription`, `Price`, `ProductCategory`, `Images`, `Tags`, `Comments`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `returneditem`
--

CREATE TABLE `returneditem` (
  `ReturnID` int(11) NOT NULL,
  `OrderItemID` int(11) DEFAULT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  `ReturnReason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returneditem`
--

INSERT INTO `returneditem` (`ReturnID`, `OrderItemID`, `ReturnDate`, `ReturnReason`) VALUES
(1, 1, '2024-06-21 10:00:00', 'Defective product'),
(2, 2, '2024-06-22 11:00:00', 'Wrong item'),
(3, 3, '2024-06-23 12:00:00', 'Changed mind'),
(4, 4, '2024-06-24 13:00:00', 'Product not as described'),
(5, 5, '2024-06-25 14:00:00', 'Ordered by mistake'),
(6, 6, '2024-06-26 15:00:00', 'Defective product');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) DEFAULT NULL,
  `ContactInformation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `ContactInformation`) VALUES
(1, 'Supplier A', 'SA.contact'),
(2, 'Supplier B', 'SB.contact'),
(3, 'Supplier C', 'SC.contect'),
(4, 'Supplier D', 'SD.contact'),
(5, 'Supplier E', 'SE.contact'),
(6, 'Supplier F', 'CF.Cont'),
(7, 'Supplier G', 'SG.Contact'),
(8, 'Supplier H', 'SH.Contact'),
(9, 'Supplier I', 'SI.Contact'),
(10, 'Supplier J', 'SJ.Contact');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `returneditem`
--
ALTER TABLE `returneditem`
  ADD PRIMARY KEY (`ReturnID`),
  ADD KEY `OrderItemID` (`OrderItemID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `returneditem`
--
ALTER TABLE `returneditem`
  MODIFY `ReturnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `returneditem`
--
ALTER TABLE `returneditem`
  ADD CONSTRAINT `returneditem_ibfk_1` FOREIGN KEY (`OrderItemID`) REFERENCES `orderitem` (`OrderItemID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
