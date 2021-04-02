-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 09:41 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productreview`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(555) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`) VALUES
(9, 'Apple iphone 12 pro Max', 'images/5231apple iphone 12 pro max.jpg'),
(10, 'Apple iphone 11 pro max', 'images/2833aaple iphone 11 pro max.webp'),
(11, 'Vivo y30', 'images/4569vivo.jpg'),
(12, 'Vivo y90', 'images/3418vivo y90.jpg'),
(13, 'Samsung galaxy M31', 'images/1350samsung galaxy M31.png'),
(14, 'Samsung galaxy s20 ultra', 'images/9539samsung galaxy s20 ultra.webp'),
(15, 'Samsung galaxy s20 ultra', 'images/1324samsung galaxy s20 ultra.webp');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` varchar(666) NOT NULL,
  `feature` varchar(66) NOT NULL,
  `ip` varchar(66) NOT NULL,
  `polarity` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `prod_id`, `user_id`, `review`, `feature`, `ip`, `polarity`, `active`, `dateTime`) VALUES
(26, 9, 3, ' good ', 'Camera', '192.168.1.12', 1, 1, '2021-04-02 12:46:33'),
(27, 11, 3, ' Bad ', 'Camera', '192.168.1.12', -1, 1, '2021-04-02 12:50:10'),
(28, 13, 3, ' It is a good phone. I really like this one', 'Overall', '192.168.1.12', 2, 1, '2021-04-02 12:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(44) NOT NULL,
  `address` varchar(555) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `emailId` varchar(44) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `mobile`, `emailId`, `password`) VALUES
(1, 'ANISH S NAIR', 'Vilayil Puthen Veedu', 9496873618, 'anish.vilayil.s@gmail.com', '12345@Anish'),
(2, 'ANISH S NAIR', 'Vilayil Puthen Veedu', 9496873618, 'anish@gmail.com', '12345@Anish'),
(3, 'Adithyababu', 'panamthitta kizhakkathil muthukulam', 8592895102, 'adithyababu4444@gmail.com', 'Adithya123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
