-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 04:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pragati`
--

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `Item_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`Item_id`, `cust_id`) VALUES
(1, 1),
(2, 2),
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_Id` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_Id`, `Fname`, `Lname`, `email`, `phone`, `country`, `state`) VALUES
(1, 'Sanjana', 'Barreto', 'sanjanavernekar4@gmail.com', '987654321', 'Goa', 'Goa'),
(2, 'Jhunjhun ', 'Rai', 'jhun178rai@gmail.com', '7986613245', 'India', 'Andhra Pradesh'),
(3, 'Shagun', 'Tima', 'shagun@gmail.com', '8965432145', 'India', 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `delievery`
--

CREATE TABLE `delievery` (
  `mode` varchar(100) DEFAULT NULL,
  `date_of_delievery` date DEFAULT NULL,
  `Tracking_no` varchar(255) NOT NULL,
  `store_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `forwards_order`
--

CREATE TABLE `forwards_order` (
  `Transaction_id` varchar(255) DEFAULT NULL,
  `store_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Description` varchar(500) NOT NULL,
  `Item_Id` int(11) NOT NULL,
  `Items_name` varchar(100) DEFAULT NULL,
  `Prod_Id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Description`, `Item_Id`, `Items_name`, `Prod_Id`, `price`, `Image`) VALUES
('Organically produced kajus in Maharastra by Rajesh Shukla', 1, 'kaju', 1, 480, 'kaju.jpeg'),
('Tasty Bananas with bright yellow color produced in Delhi.Healthy and not harmful to health', 2, 'Banana', 2, 60, 'banana1.jpeg'),
('Chillies produced in goa giving taste in goan curry.Good for health and organically produced.', 3, 'Chillies', 3, 120, 'chillies.png'),
('Long Island Cheese Pumpkins are also known as Cucurbita Moschata. These are one of the oldest pumpkin varieties in America. They grow short and flat, making them better for cooking than carving.\r\n\r\n', 4, 'pumpkins', 4, 80, 'Long-Island-Cheese-Pumpkins.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_Id` int(11) NOT NULL,
  `Olocation` varchar(100) DEFAULT NULL,
  `ordr_date` date DEFAULT NULL,
  `Transaction_id` varchar(100) DEFAULT NULL,
  `Price_each` double DEFAULT NULL,
  `Quantity_ordered` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `panchayat`
--

CREATE TABLE `panchayat` (
  `Panchayat_Name` varchar(255) NOT NULL,
  `date_of_prog` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `panchayat_email` varchar(100) NOT NULL DEFAULT '',
  `programme_name` varchar(100) NOT NULL,
  `time_of_program` time DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `panchayat`
--

INSERT INTO `panchayat` (`Panchayat_Name`, `date_of_prog`, `country`, `state`, `panchayat_email`, `programme_name`, `time_of_program`) VALUES
('Aquem', '2022-02-05', 'India', 'Maharastra', 'sanjanavernekar6@gmail.com', '', NULL),
('Aquem12', '2022-09-10', 'India', 'kerala', 'sanjanavernekar14@gmail.com', '', NULL),
('fatorda', '0000-00-00', 'India', 'Goa', 'skyla@gmail.com', '', NULL),
('LLL', '2022-12-21', '1', 'Delhi', 'sanjanavernekar6@gmail.com', '', '12:17:00'),
('Madhuban', '2022-08-13', 'India', 'kerala', 'sanjanavernekar14@gmail.com', '', NULL),
('navelim', '0000-00-00', 'India', 'Maharastra', 'skyla@gmail.com', '', NULL),
('RRRR', '2022-12-04', '1', '4', 'sanjanavernekar6@gmail.com', '', '12:17:00'),
('sERER', '2022-12-04', '1', 'Delhi', 'sanjanavernekar6@gmail.com', 'Other', '12:24:00'),
('ss', '0000-00-00', 'India', 'Goa', 'sanjanavernekar4@gmail.com', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Transaction_Id` varchar(255) NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Customer_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Transaction_Id`, `Amount`, `Payment_Date`, `Customer_Id`) VALUES
('', 480, '2022-11-03', 1),
('sfsf456', 678, '2022-11-03', 2);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `Id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `Plocation` varchar(100) NOT NULL,
  `p_email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(100) NOT NULL,
  `panchayat_nm` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `conf_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`Id`, `fname`, `lname`, `Plocation`, `p_email`, `phone`, `country`, `state`, `panchayat_nm`, `password`, `conf_password`) VALUES
(1, 'Vernekar', 'Vernekar', 'Shanapur', 'sanjanavernekar4@gmail.com', '987654321', 'Maharastra', 'Maharastra', 'Aquem', 'root', 'root'),
(2, 'rajesh', 'shukla', 'keral', 'rajesh@gmail.com', '9876543210', 'India', 'Goa', 'navelim', 'rajesh123', 'rajesh123'),
(3, 'Suresh', 'Sharma', 'delhi', 'suresh@gmail.com', '9876543210', 'India', 'Goa', 'navelim', 'suresh', 'suresh'),
(4, 'Meena', 'Raj', 'Suthar', 'meena@123gmail.com', '3456789012', 'India', 'Assam', 'Madhuban', 'meen', 'meen'),
(5, 'Sanjana', 'Vernekar', '', 'sanjana425@1234gmail.com', '7786432412', 'India', 'Karnatak', 'fatorda', 'rrrr', 'rrrr');

--
-- Triggers `producer`
--
DELIMITER $$
CREATE TRIGGER `after_producer_insert` AFTER INSERT ON `producer` FOR EACH ROW BEGIN
IF NEW.Plocation IS NULL THEN
INSERT INTO reminders(producer_id,message)
VALUES(NEW.Id,CONCAT('hi',NEW.fname,'please enter village name'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `Panchayat_name` varchar(255) DEFAULT NULL,
  `workshop` varchar(255) DEFAULT NULL,
  `Hands_on_training` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `producer_id` int(11) NOT NULL,
  `village_name` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `Store_no` varchar(100) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD KEY `Item_id` (`Item_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `delievery`
--
ALTER TABLE `delievery`
  ADD PRIMARY KEY (`Tracking_no`),
  ADD KEY `store_no` (`store_no`);

--
-- Indexes for table `forwards_order`
--
ALTER TABLE `forwards_order`
  ADD KEY `Transaction_id` (`Transaction_id`),
  ADD KEY `store_no` (`store_no`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_Id`),
  ADD KEY `Prod_Id` (`Prod_Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_Id`),
  ADD KEY `Transaction_id` (`Transaction_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `panchayat`
--
ALTER TABLE `panchayat`
  ADD PRIMARY KEY (`Panchayat_Name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Transaction_Id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `panchayat_nm` (`panchayat_nm`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD KEY `Panchayat_name` (`Panchayat_name`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`producer_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`Store_no`),
  ADD KEY `order_no` (`order_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `available`
--
ALTER TABLE `available`
  ADD CONSTRAINT `available_ibfk_1` FOREIGN KEY (`Item_id`) REFERENCES `items` (`Item_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `available_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delievery`
--
ALTER TABLE `delievery`
  ADD CONSTRAINT `delievery_ibfk_1` FOREIGN KEY (`store_no`) REFERENCES `stores` (`Store_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forwards_order`
--
ALTER TABLE `forwards_order`
  ADD CONSTRAINT `forwards_order_ibfk_1` FOREIGN KEY (`Transaction_id`) REFERENCES `payment` (`Transaction_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forwards_order_ibfk_2` FOREIGN KEY (`store_no`) REFERENCES `stores` (`Store_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`Prod_Id`) REFERENCES `producer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Transaction_id`) REFERENCES `payment` (`Transaction_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`Customer_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producer`
--
ALTER TABLE `producer`
  ADD CONSTRAINT `producer_ibfk_1` FOREIGN KEY (`panchayat_nm`) REFERENCES `panchayat` (`Panchayat_Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programmes`
--
ALTER TABLE `programmes`
  ADD CONSTRAINT `programmes_ibfk_1` FOREIGN KEY (`Panchayat_name`) REFERENCES `panchayat` (`Panchayat_Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders` FOREIGN KEY (`producer_id`) REFERENCES `producer` (`Id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`order_no`) REFERENCES `orders` (`Order_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
