-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 05:12 AM
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
-- Database: `fleet_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','driver','users') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`) VALUES
(13, 'nasim', 'nasim@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(14, 'bijoy', 'bijoy@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(15, 'habib', 'habib@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(16, 'sifat', 'sifat@email.com', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(17, 'Manjur', 'manjur@email.com', '12345678', 'driver'),
(18, 'Mehedi', 'mehedi@email.com ', '12345678', 'driver'),
(19, 'Pavel', 'pavel@email.com', '12345678', 'driver'),
(20, 'Rofiq', 'rofiq@email.com', '12345678', 'driver'),
(21, 'Alamin', 'alamin@email.com', '12345678', 'driver'),
(22, 'Reza', 'reza@email.com', '12345678', 'driver'),
(23, 'Sifat', 'sifat@email.com', '12345678', 'driver'),
(24, 'Mahmud', 'mahmud@email.com', '12345678', 'users'),
(25, 'Ashraf', 'ashraf@email.com', '12345678', 'users'),
(26, 'Masud', 'masud@email.com', '12345678', 'driver'),
(27, 'Tauhid Ahmad', 'super@email.com', '12345678', 'driver'),
(28, 'Ahmad', 'ahmad@email.com', '12345678', 'driver');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `type` enum('single','round') NOT NULL,
  `start_location` char(50) NOT NULL,
  `end_location` char(50) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `aprox_km` char(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('yet to start','completed','on going','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `vehicle_id`, `driver_id`, `type`, `start_location`, `end_location`, `start_date`, `end_date`, `aprox_km`, `amount`, `status`) VALUES
(1, 1, 1, 17, 'single', 'Dhaka', 'Comilla', '2023-05-15 21:06:00', '2023-05-17 21:06:00', '456km', '34000.00', 'cancelled'),
(2, 2, 5, 18, 'round', 'Dhaka', 'Gaibandha', '2023-05-17 21:08:00', '2023-05-19 21:08:00', '452km', '67000.00', 'completed'),
(3, 3, 7, 19, 'single', 'Gaibandha', 'Bogra', '2023-05-19 21:08:00', '2023-05-20 21:08:00', '543km', '23000.00', 'completed'),
(4, 4, 8, 20, 'round', 'Sirajganj', 'Dhaka', '2023-05-20 21:09:00', '2023-05-21 21:09:00', '980km', '98000.00', 'completed'),
(5, 5, 4, 21, 'single', 'Chittagong', 'Dhaka', '2023-05-22 21:10:00', '2023-05-23 21:10:00', '120km', '34000.00', 'yet to start'),
(6, 6, 3, 22, 'round', 'Dhaka', 'Gopalganj', '2023-05-23 21:12:00', '2023-05-24 21:12:00', '208km', '23000.00', 'yet to start'),
(7, 7, 6, 23, 'round', 'Noakhali', 'Dhaka', '2023-05-29 21:14:00', '2023-05-30 21:14:00', '760km', '56000.00', 'yet to start'),
(8, 6, 7, 19, 'round', 'Chattogram', 'Khulna', '2023-05-17 10:12:00', '2023-05-19 10:12:00', '245km', '40000.00', 'on going'),
(12, 4, 5, 19, 'round', 'Dhaka', 'Sirajganj', '2023-05-25 10:12:00', '2023-05-27 10:12:00', '125km', '20000.00', 'yet to start'),
(13, 6, 8, 20, 'single', 'Jessore', 'Chattogram', '2023-05-25 12:04:00', '2023-05-31 12:04:00', '450km', '52000.00', 'on going'),
(14, 7, 7, 18, 'round', 'Dhaka', 'Barisal', '2023-05-25 12:32:00', '2023-05-26 12:32:00', '450km', '45000.00', 'on going');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `phone` char(50) NOT NULL,
  `email` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `admin_id`, `name`, `phone`, `email`, `address`, `status`) VALUES
(1, 14, 'Aman', '234525', 'rofiq@email.com', 'Nakhalpara', 'active'),
(2, 15, 'Morshed', '3546356', 'morshed@email.com', 'Mohammadpur', 'active'),
(3, 13, 'Sohel', '01516786543', 'sohel@email.com', 'Katasur', 'active'),
(4, 16, 'Tawhid', '01987452754', 'tawhid@email.com', 'Shankar', 'inactive'),
(5, 14, 'Aslam', '01432678950', 'aslam@email.com', 'Paikpara', 'active'),
(6, 24, 'Mahmud', '01987365432', 'mahmud@email.com', 'Zigatola', 'active'),
(7, 25, 'Ashraf', '01218997766', 'ashraf@email.com', 'Mohammadpur', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `phone` char(50) NOT NULL,
  `age` char(50) NOT NULL,
  `license_no` char(50) NOT NULL,
  `license_expire_date` char(50) NOT NULL,
  `experience` char(50) NOT NULL,
  `joining_date` char(50) NOT NULL,
  `reference` char(50) NOT NULL,
  `address` char(50) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `photo` char(50) NOT NULL,
  `documents` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `admin_id`, `phone`, `age`, `license_no`, `license_expire_date`, `experience`, `joining_date`, `reference`, `address`, `status`, `photo`, `documents`) VALUES
(1, 17, '01913925893', '29', '24332544', '2028-08-27', 'good', '2022-02-13', 'wertewt', 'Zigatola', 'active', '34566543', 'ytuuuuuuty'),
(2, 18, '01651398736', '45', '567585678', '2028-08-27', 'bad', '2020-12-09', 'reeyrtert', 'Mohammadpur', 'active', '7890707890', 'vbnvbnvmbnm'),
(3, 19, '01711894590', '40', '234252345', '2026-21-09', 'expert', '2102-06-01', 'ertetryty', 'Uttara', 'inactive', 'rtyurtyuyy', '4564767'),
(4, 20, '01987654345', '34', '6789789', '2025-06-30', 'good', '2022-01-09', 'asdfafasd', 'Mirpur', 'inactive', 'hjklhjklhjklh', '345435654634'),
(5, 28, '01811652912', '89', '34446456', '2024-10-10', 'good', '2023-05-03', 'eirwutweir', 'Gulshan', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_payments`
--

CREATE TABLE `driver_payments` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `fill_date` date NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `odometer` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `income_expense`
--

CREATE TABLE `income_expense` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `remarks` text NOT NULL,
  `type` enum('income','expense') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maintenances`
--

CREATE TABLE `maintenances` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `status` enum('planned','ongoing','completed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenances`
--

INSERT INTO `maintenances` (`id`, `vehicle_id`, `vendor_id`, `start_date`, `end_date`, `details`, `cost`, `status`) VALUES
(2, 1, 1, '2023-03-30', '2023-03-31', 'Battery Servicing', '5000.00', 'completed'),
(3, 2, 2, '2023-03-29', '2023-03-30', 'Radiator Change', '400.00', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `name`, `details`, `status`) VALUES
(1, 'Battery', 'Rahimafrooz IPB-150 IPS Battery ', 'active'),
(2, 'Radiator', 'Annex Coolant for Motor Vehicle', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `parts_in_maintenance`
--

CREATE TABLE `parts_in_maintenance` (
  `id` int(11) NOT NULL,
  `maintenance_id` int(11) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `maintain_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts_in_maintenance`
--

INSERT INTO `parts_in_maintenance` (`id`, `maintenance_id`, `parts_id`, `qty`, `maintain_date`) VALUES
(1, 2, 1, 1, '2023-04-25'),
(2, 3, 2, 1, '2023-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `parts_stock_in`
--

CREATE TABLE `parts_stock_in` (
  `id` int(11) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts_stock_in`
--

INSERT INTO `parts_stock_in` (`id`, `parts_id`, `price`, `qty`, `purchase_date`) VALUES
(3, 1, 5000, 11, '2023-04-03'),
(4, 2, 400, 10, '2023-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `parts_stock_out`
--

CREATE TABLE `parts_stock_out` (
  `id` int(11) NOT NULL,
  `parts_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `out_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts_stock_out`
--

INSERT INTO `parts_stock_out` (`id`, `parts_id`, `qty`, `out_date`) VALUES
(2, 2, 4, '2023-03-24'),
(6, 1, 3, '2023-03-26'),
(8, 2, 5, '2023-03-25'),
(11, 1, 4, '2023-04-02'),
(13, 1, 1, '2023-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `registration_no` char(255) NOT NULL,
  `model` char(255) NOT NULL,
  `chesis_no` char(255) NOT NULL,
  `manufacturer` char(255) NOT NULL,
  `color` char(255) NOT NULL,
  `expire_date` date NOT NULL,
  `photo` char(255) NOT NULL,
  `documents` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `type_id`, `name`, `registration_no`, `model`, `chesis_no`, `manufacturer`, `color`, `expire_date`, `photo`, `documents`) VALUES
(1, 1, 'Mahindra Thar', '42345', '2011', '23452', 'Mahindra', 'Silver', '2028-05-03', 'retyeryt', 'rturyurtu'),
(2, 2, 'Toyota Corolla', '23452', '2020', '34563', 'Toyota', 'White', '2028-05-18', 'wertwet', 'yuioyoyuo'),
(3, 3, 'Audi TT', '34563', '2018', '567858', 'Audi', 'Blue', '2027-05-22', 'wertwet', 'yuioyuo'),
(4, 4, 'BMW Z4', '5467745', '2019', '2345252', 'BMW', 'Red', '2031-05-07', 'dfghdffgh', 'vbncvnn'),
(5, 5, 'Ford Transit Connect', '3456346', '2017', '356346', 'Ford', 'Grey', '2025-05-21', 'hgjkgk', 'vbnmvbm'),
(6, 6, 'Lincoln Town Car', '345636', '2019', '34252354', 'Lincoln', 'Cream', '2029-05-05', 'wertwet', 'vbnvbnmvmn'),
(7, 7, 'Chrysler Pacifica', '356346', '2019', '678969', 'Chrysler', 'Blue', '2029-05-03', 'wertwrt', 'aasdfasf'),
(8, 8, 'Porsche 718 Boxstar', '34563456', '2019', '4567457', 'Porsche', 'Black', '2030-05-09', 'fgjhfghj', 'ertyery');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `title` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `title`) VALUES
(1, 'SUV'),
(2, 'Sedan'),
(3, 'Coupe'),
(4, 'Convertible'),
(5, 'Van'),
(6, 'Limousine'),
(7, 'Minivan'),
(8, 'Sportscar');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` char(255) NOT NULL,
  `address` char(255) NOT NULL,
  `phone` char(255) NOT NULL,
  `email` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payments`
--

CREATE TABLE `vendor_payments` (
  `id` int(11) NOT NULL,
  `maintenance_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `paid_amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `driver_payments`
--
ALTER TABLE `driver_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `fuels`
--
ALTER TABLE `fuels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `income_expense`
--
ALTER TABLE `income_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts_in_maintenance`
--
ALTER TABLE `parts_in_maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_id` (`parts_id`),
  ADD KEY `maintenance_id` (`maintenance_id`);

--
-- Indexes for table `parts_stock_in`
--
ALTER TABLE `parts_stock_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_id` (`parts_id`);

--
-- Indexes for table `parts_stock_out`
--
ALTER TABLE `parts_stock_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parts_id` (`parts_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_id` (`maintenance_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver_payments`
--
ALTER TABLE `driver_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuels`
--
ALTER TABLE `fuels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_expense`
--
ALTER TABLE `income_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parts_in_maintenance`
--
ALTER TABLE `parts_in_maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parts_stock_in`
--
ALTER TABLE `parts_stock_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parts_stock_out`
--
ALTER TABLE `parts_stock_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_payments`
--
ALTER TABLE `vendor_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_payments`
--
ALTER TABLE `driver_payments`
  ADD CONSTRAINT `driver_payments_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fuels`
--
ALTER TABLE `fuels`
  ADD CONSTRAINT `fuels_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fuels_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `income_expense`
--
ALTER TABLE `income_expense`
  ADD CONSTRAINT `income_expense_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parts_in_maintenance`
--
ALTER TABLE `parts_in_maintenance`
  ADD CONSTRAINT `parts_in_maintenance_ibfk_1` FOREIGN KEY (`parts_id`) REFERENCES `parts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parts_in_maintenance_ibfk_2` FOREIGN KEY (`maintenance_id`) REFERENCES `maintenances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `vehicle_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
