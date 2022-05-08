-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 09:06 PM
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
-- Database: `cse499`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `doc_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `avadar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`doc_id`, `f_name`, `l_name`, `avadar`, `email`, `username`, `gender`, `phone`, `password`) VALUES
(13, 'Sifat', 'Ulla', 'a88db574a7.png', 'sifat@gmail.com', 'sifat', 'm', '01959631391', '$2y$10$.PrDBl78SOT7mOkZeQIuCuJrmyskK8PLtdkJHz/LsD8yiA209aUPm');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `ambu_id` int(11) NOT NULL,
  `hos_id` int(11) NOT NULL,
  `ambu_name` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `locations` varchar(200) NOT NULL,
  `sub_locations` varchar(200) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`ambu_id`, `hos_id`, `ambu_name`, `mobile`, `locations`, `sub_locations`, `price`) VALUES
(1, 7, 'Sql hospitals', '012122343', 'Dhaka', 'Dohar', 3000),
(2, 7, 'raniga Tre', '324324123', 'Dhaka', 'Nawabganj', 4000),
(3, 7, 'Lwerty hospitals', '123423423', 'Gazipur', 'Kaliakair', 3000),
(4, 7, 'Liar hos', '2342342342', 'Gazipur', 'Kaliakair', 4000),
(5, 2, 'Sql hospitals', '012122343', 'Dhaka', 'Dohar', 3000),
(6, 2, 'raniga Tre', '324324123', 'Dhaka', 'Nawabganj', 4000),
(7, 1, 'Lwerty hospitals', '123423423', 'Gazipur', 'Kaliakair', 3000),
(8, 1, 'Liar hos', '2342342342', 'Gazipur', 'Kaliakair', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `appoitment`
--

CREATE TABLE `appoitment` (
  `app_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `cmr_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appoitment`
--

INSERT INTO `appoitment` (`app_id`, `doctor_id`, `cmr_id`, `serial_no`, `status`) VALUES
(10, 9, 7, 208045924, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `blood_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `last_donate` varchar(200) NOT NULL,
  `present_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`blood_id`, `name`, `blood_group`, `mobile`, `last_donate`, `present_address`) VALUES
(9, 'Sifatulla', 'O+', '01303169673', '21/03/2022', 'Inupotti, Dakkhinpara, Matuail, Jatrabari, Dhaka-1362');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cmr_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'medicine'),
(2, 'ambulance'),
(3, 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `avadar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `f_name`, `l_name`, `avadar`, `email`, `username`, `gender`, `phone`, `password`) VALUES
(7, 'Sifat', 'Ulla', '', 'sifat@gmail.com', 'Sifat', '', '01959631391', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `cylinder`
--

CREATE TABLE `cylinder` (
  `cylinder_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `cylinder_type` int(11) NOT NULL,
  `cylinder_price` int(11) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cylinder`
--

INSERT INTO `cylinder` (`cylinder_id`, `name`, `cylinder_type`, `cylinder_price`, `img`) VALUES
(17, 'Portable Cylinder', 6, 100, '7729710a50.png');

-- --------------------------------------------------------

--
-- Table structure for table `cylinder_type`
--

CREATE TABLE `cylinder_type` (
  `type_id` int(11) NOT NULL,
  `cylinder_name` varchar(200) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cylinder_type`
--

INSERT INTO `cylinder_type` (`type_id`, `cylinder_name`, `seller_id`) VALUES
(6, 'Portable Cylinder', 7);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(1, 'Anesthetics'),
(2, 'Ear, nose and throat (ENT) '),
(3, 'Cardiology'),
(4, 'Gastroenterology'),
(5, 'Obstetrics and gynecology unit '),
(6, 'Oncology'),
(7, ' Ophthalmology'),
(8, 'Orthopedics');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `dept_id` varchar(200) NOT NULL,
  `doc_image` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `doc_qualification` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `dept_id`, `doc_image`, `time`, `doc_qualification`) VALUES
(9, 'Sifat', '3', 'ec75c250b0.jpg', '10AM - 3PM', 'MBBS');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `hos_id` int(11) NOT NULL,
  `hos_name` varchar(200) NOT NULL,
  `loca_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hos_id`, `hos_name`, `loca_id`, `image`) VALUES
(7, 'Square Hospital', 1, '526eb6f68d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_id` int(11) NOT NULL,
  `loc_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_id`, `loc_name`) VALUES
(1, 'dhaka'),
(5, 'gazipur'),
(6, 'chottogram'),
(7, 'chottogram');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medi_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `indredi` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `phar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medi_id`, `name`, `unit`, `image`, `indredi`, `company`, `price`, `phar_id`) VALUES
(10, 'ACE', '1000mg', '09a93502dd.jpg', 'Paracitamol', 'SQR', 100, 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cmr_id` int(11) NOT NULL,
  `price` varchar(200) NOT NULL,
  `pay_type` varchar(200) DEFAULT NULL,
  `product_type` int(11) NOT NULL DEFAULT 0,
  `transaction_id` varchar(200) DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `order_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `quantity`, `cmr_id`, `price`, `pay_type`, `product_type`, `transaction_id`, `order_date`, `payment_status`, `order_status`) VALUES
(26, 17, 1, 7, '100', 'BKASH-BKash', 0, 'SSLCZ_TEST_6278112405cb1', '2022-05-09 00:51:19', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `phar_id` int(11) NOT NULL,
  `phar_name` varchar(200) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`phar_id`, `phar_name`, `seller_id`) VALUES
(1, 'Laaz Pharma', 4),
(14, 'Sifat Pharma', 6),
(15, 'AB Pharma', 6),
(16, 'AB Pharma', 6),
(19, 'AB Pharma', 7),
(22, 'Sifat Pharma', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `avadar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `f_name`, `l_name`, `avadar`, `email`, `username`, `gender`, `phone`, `password`) VALUES
(7, 'Sifat', 'Sifat', '', 'sifat@gmail.com', 'Ulla', 'm', '01959631391', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`ambu_id`);

--
-- Indexes for table `appoitment`
--
ALTER TABLE `appoitment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cylinder`
--
ALTER TABLE `cylinder`
  ADD PRIMARY KEY (`cylinder_id`);

--
-- Indexes for table `cylinder_type`
--
ALTER TABLE `cylinder_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hos_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medi_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`phar_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `ambu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appoitment`
--
ALTER TABLE `appoitment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `blood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cylinder`
--
ALTER TABLE `cylinder`
  MODIFY `cylinder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cylinder_type`
--
ALTER TABLE `cylinder_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `hos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `phar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
