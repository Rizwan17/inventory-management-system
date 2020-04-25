-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 06:22 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Samsung', '1'),
(13, 'HP', '1'),
(14, 'Huawei', '1'),
(15, 'Microsoft Corporation', '1'),
(16, 'Adobe', '1'),
(17, 'Apple', '1'),
(18, 'Avira', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 0, 'Electronics', '1'),
(2, 0, 'Software', '1'),
(5, 1, 'Mobiles', '1'),
(7, 1, 'Laptop', '1'),
(9, 2, 'Antivirus', '1'),
(10, 0, 'Gadgets', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(24, 'Rizwan', '0000-00-00', 445000, 80100, 1000, 524100, 445000, 79100, 'Cash'),
(25, 'MMM', '0000-00-00', 60000, 10800, 500, 70300, 70300, 0, 'Cash'),
(26, 'ggg', '0000-00-00', 300000, 54000, 2500, 351500, 351500, 0, 'Cash'),
(27, 'Rdfgacs ', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(28, '', '0000-00-00', 300000, 54000, 54000, 300000, 300000, 0, 'Cash'),
(29, 'Rizwan', '2018-11-02', 60000, 10800, 12, 70788, 70788, 0, 'Cash'),
(30, 'I am Cus', '2018-11-02', 65000, 11700, 500, 76200, 76200, 0, 'Cash'),
(31, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(32, 'Arjun', '2018-01-03', 29000, 5220, 55, 34165, 34165, 0, 'Cash'),
(33, '', '2018-01-03', 60000, 10800, 0, 70800, 70800, 0, 'Cash'),
(34, 'Rizwan', '2018-01-03', 94500, 17010, 1500, 110010, 110010, 0, 'Cash'),
(35, 'Rizwan', '2018-01-03', 154000, 27720, 550, 181170, 181170, 0, 'Cash'),
(36, 'Rizwan', '2018-01-03', 154500, 27810, 2500, 179810, 179810, 0, 'Cash'),
(37, 'Tyson', '2018-01-03', 90000, 16200, 25.5, 106174.5, 106174.5, 0, 'Cash'),
(38, 'Rajdhani', '2018-01-03', 89500, 16110, 750.5, 104859.5, 104859.5, 0, 'Cash'),
(39, 'Kapoor & Son', '2018-01-03', 89500, 16110, 25, 105585, 105585, 0, 'Cash'),
(40, 'Ajay', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(41, 'Jayanta', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(42, 'Ajay Kant', '2018-01-03', 65500, 11790, 0, 77290, 77290, 0, 'Cash'),
(43, 'Egjdks', '2018-01-03', 125500, 22590, 5000, 143090, 143090, 0, 'Cash'),
(44, 'Tyson', '2018-01-03', 275000, 49500, 4950, 319550, 319550, 0, 'Cash'),
(45, 'Hndksks', '2018-01-03', 59000, 10620, 0, 69620, 69620, 0, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(1, 25, 'Samsung Galaxy S8', 60000, 1),
(2, 28, 'Samsung Galaxy S8', 60000, 5),
(3, 29, 'Samsung Galaxy S8', 60000, 1),
(4, 30, 'Iphone 8', 65000, 1),
(5, 31, 'Samsung Galaxy S8', 60000, 1),
(6, 32, 'Honor 9i', 29000, 1),
(7, 33, 'Samsung Galaxy S8', 60000, 1),
(8, 34, 'Avira Antivirus', 500, 1),
(9, 34, 'Iphone 8', 65000, 1),
(10, 34, 'Honor 9i', 29000, 1),
(11, 35, 'Samsung Galaxy S8', 60000, 1),
(12, 35, 'Honor 9i', 29000, 1),
(13, 35, 'Iphone 8', 65000, 1),
(14, 36, 'Samsung Galaxy S8', 60000, 1),
(15, 36, 'Honor 9i', 29000, 1),
(16, 36, 'Iphone 8', 65000, 1),
(17, 36, 'Avira Antivirus', 500, 1),
(18, 37, 'Samsung Galaxy S8', 60000, 1),
(19, 37, 'Honor 9i', 29000, 1),
(20, 37, 'Avira Antivirus', 500, 2),
(21, 38, 'Samsung Galaxy S8', 60000, 1),
(22, 38, 'Honor 9i', 29000, 1),
(23, 38, 'Avira Antivirus', 500, 1),
(24, 39, 'Samsung Galaxy S8', 60000, 1),
(25, 39, 'Honor 9i', 29000, 1),
(26, 39, 'Avira Antivirus', 500, 1),
(27, 40, 'Samsung Galaxy S8', 60000, 1),
(28, 40, 'Honor 9i', 29000, 1),
(29, 41, 'Samsung Galaxy S8', 60000, 1),
(30, 41, 'Honor 9i', 29000, 1),
(31, 42, 'Iphone 8', 65000, 1),
(32, 42, 'Avira Antivirus', 500, 1),
(33, 43, 'Samsung Galaxy S8', 60000, 1),
(34, 43, 'Avira Antivirus', 500, 1),
(35, 43, 'Iphone 8', 65000, 1),
(36, 44, 'Honor 9i', 29000, 5),
(37, 44, 'Iphone 8', 65000, 2),
(38, 45, 'Honor 9i', 29000, 2),
(39, 45, 'Avira Antivirus', 500, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(15, 5, 1, 'Samsung Galaxy S8', 60000, 984, '2018-01-31', '1'),
(16, 5, 14, 'Honor 9i', 29000, 4984, '2018-01-31', '1'),
(17, 5, 17, 'Iphone 8', 65000, 1192, '2018-01-31', '1'),
(18, 9, 18, 'Avira Antivirus', 500, 2990, '2018-01-31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(1, 'Rizwan', 'rizwan@gmail.com', '$2y$08$s11k9wKZWc4v6apSODUdveJufFxbE2Be7rP./uS49et7NrlhteFgK', 'Admin', '2017-12-23', '2018-03-01 04:03:17', ''),
(2, 'Test', 'rizwan1@gmail.com', '$2y$08$8j4aTDZiPZBb3rif4RV/teRFYx2Xv0p9F8CTW3blSafkEhXkMfaV6', 'Admin', '2017-12-23', '2017-12-24 11:12:57', ''),
(3, 'Rizwan', 'rizwankhan.august16@gmail.com', '$2y$08$NmqD7p7Qn7QkEG0/6Sa8v.YhNGo.J2zqfRRGrGRzg1EUlV.9O.M42', 'Admin', '2017-12-24', '2017-12-26 05:12:07', ''),
(4, 'Rizwan', 'rizwankhan@gmail.com', '$2y$08$FsjstZZh5dBNUf.5cZta3e.jZAyfK8pCFaO9AR0jIpQCswNR1bJve', 'Admin', '2017-12-24', '2017-12-25 06:12:18', ''),
(5, 'Imran Khan', 'imran@gmail.com', '$2y$08$KCqI3w9Q1kXFX0W.HDnIYODpMceE6AAbJgygBSQ3au8yZotMyXnCC', 'Admin', '2017-12-25', '2017-12-25 00:00:00', ''),
(6, 'Khan', 'khan@gmail.com', '$2y$08$/4PDGZrGbDPGPEYisj3HBOcaMxRRIBQ1UzHjHKdbzpVMDJJRLry6m', 'Admin', '2017-12-26', '2018-01-15 08:01:14', ''),
(7, 'John Smith', 'john.smith@gmail.com', '$2y$08$cTcxbttxHGTzy0FD3AVjr.m.aNL7p735YRplRiyKZB0kHAOpB9WI2', 'Admin', '2018-02-16', '2018-02-16 05:02:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
