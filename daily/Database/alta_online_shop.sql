-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 04:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alta_online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Op_1', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 'Op_2', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 'Op_3', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 'Op_4', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 'Op_5', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LinkAja', 404, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 'ShopeePay', 202, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 'OVO', 212, '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_type_id`, `operator_id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'SEP', 'product dummy', 11, '2021-11-04 15:32:19', '2021-11-03 17:00:00'),
(2, 1, 3, 'SEP', 'Geist Ekiden', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 2, 1, 'JERS', 'Climacool', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 2, 1, 'JERS', 'Dri-Fit', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 2, 1, 'JERS', 'Aeroswift', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(6, 3, 4, 'ALAT', 'Jabulani', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(7, 3, 4, 'ALAT', 'Skipping Rope', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(8, 3, 4, 'ALAT', 'Bola Futsal', 11, '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_desc`
--

CREATE TABLE `product_desc` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_desc`
--

INSERT INTO `product_desc` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sepatu', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 'Jersey', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 'Alat Olahraga', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_price` decimal(25,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `payment_id`, `status`, `total_qty`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'LUNAS', 3, '1.55', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 2, 1, 'BELOM LUNA', 1, '50.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 3, 2, 'BELOM LUNA', 4, '800.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 4, 1, 'LUNAS', 2, '250.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 5, 3, 'LUNAS', 1, '500.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(25,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`transaction_id`, `product_id`, `status`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(3, 6, 'READY', 2, '200.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 8, 'READY', 2, '200.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 4, 'READY', 1, '500.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 7, 'READY', 1, '50.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(1, 1, 'READY', 3, '1.00', '2021-11-04 15:32:46', '2021-11-03 17:00:00'),
(1, 3, 'READY', 1, '500.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(1, 7, 'READY', 1, '50.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 7, 'READY', 1, '50.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 8, 'READY', 1, '200.00', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `status`, `dob`, `gender`, `created_at`, `updated_at`) VALUES
(1, 1, '1997-12-30', 'M', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(2, 2, '1990-02-01', 'F', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(3, 3, '1999-05-11', 'F', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(4, 4, '2000-09-11', 'M', '2021-11-03 17:00:00', '2021-11-03 17:00:00'),
(5, 5, '2003-04-10', 'M', '2021-11-03 17:00:00', '2021-11-03 17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_type_id` (`product_type_id`),
  ADD KEY `operator_id` (`operator_id`);

--
-- Indexes for table `product_desc`
--
ALTER TABLE `product_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `operator_id` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`),
  ADD CONSTRAINT `product_type_id` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `transaction_id` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

select*from transaction_details;

SELECT * FROM users WHERE users.gender = 'M';

SELECT * FROM product WHERE product.id = 3;

SELECT COUNT(*) FROM users WHERE gender = 'F';

SELECT * FROM product LIMIT 5;

UPDATE product SET name = 'product dummy' WHERE id = 1;
SELECT*FROM product;

UPDATE transaction_details SET qty = 3 WHERE product_id = 1;
SELECT * FROM transaction_details;

SELECT * FROM transactions GROUP BY id HAVING user_id = 1 OR user_id = 2;

SELECT SUM(total_price) FROM transactions WHERE user_id = 1;

SELECT COUNT(*) FROM transaction_details WHERE product_id IN (SELECT id FROM product WHERE product_type_id = 2);

SELECT `COLUMN_NAME`,`REFERENCED_COLUMN_NAME`
    ->   FROM `information_schema`.`KEY_COLUMN_USAGE`
    ->   WHERE `CONSTRAINT_SCHEMA` = 'alta_online_shop' AND TABLE_NAME = 'products'
    ->   AND `REFERENCED_TABLE_NAME` = 'product_types';

SELECT product.*, product_types.name AS product_type_name
    -> FROM product
    -> INNER JOIN product_types ON product_types.id IN (SELECT product_type_id FROM product);

SELECT * FROM product WHERE id NOT IN (SELECT product_id FROM transaction_details);