-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 10:28 AM
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
-- Table structure for table `Customer`
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
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `FullName`, `EmailAddress`, `LastLoginTime`, `Password`, `Address`, `TelephoneNumber`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
