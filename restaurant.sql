-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2018 at 01:35 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seat_number` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

CREATE TABLE `orderline` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `priceHT` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_buyprice` int(11) NOT NULL,
  `product_sellprice` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `priceHT` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_buyprice`, `product_sellprice`, `product_stock`, `product_description`, `priceHT`, `tax`, `is_active`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bacon Cheeseburger', 13, 14, 100, 'Ce délicieux cheeseburger contient un steak haché viande française de 150g ainsi que d\'un buns grillé juste comme il faut, le tout accompagné de frites fraîches maison !', 12, 2, 1, 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/04/20/17/if-burger.jpg?w660', '2018-06-19 10:15:51', '2018-06-19 10:15:51'),
(2, 'DOUBLE CAESAR ', 12, 15, 100, 'Ne résistez plus et dégustez ce Double Caesar Burger! \r\nSa sauce Caesar onctueuse, son délicieux fromage Grana Padano et son tendre pain aux éclats d\'oignons vous feront succomber de plaisir.\r\n', 12, 2, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQLCAxBve8LkDMrGl9bmuYY6fj9Go_aawG_XrPsyt88G6r90JBeQ', '2018-06-19 10:23:01', '2018-06-19 10:23:01'),
(3, 'LONG CHILI CHEESE', 10, 12, 100, 'Un incontournable chez 3WA ! Une recette généreuse et épicée.', 12, 2, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZhk57F4V_5Cn_BL_v-vXEWyp9xT6_usLdFyN53H8spZzd476', '2018-06-19 10:25:08', '2018-06-19 10:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `post_code` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `birthdate`, `address`, `city`, `post_code`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'yoann', 'laurent', 'root', 'troiswa', '2018-06-15', '6 rue de la rosiere d\'artois', 'Nantes', 44100, 652614007, '2018-06-19 13:48:17', '2018-06-19 13:48:17'),
(3, 'louis', 'jean', 'marron@gmail.com', 'lolo', '2018-06-01', '6 avenue de la libération', 'quimper', 29000, 578478574, '2018-06-19 13:49:38', '2018-06-19 13:49:38'),
(4, 'poulailler', 'elodie', 'elodie@gmail.com', 'elodie44', '2018-01-01', '47 rue des lisses', 'Nantes', 44000, 478478589, '2018-06-19 13:52:53', '2018-06-19 13:52:53'),
(5, 'laurent', 'kevin', 'kevin@gmail.com', 'kevin', '2018-01-24', '47 rue des lisses joies', 'vannes', 56000, 658747852, '2018-06-19 14:13:19', '2018-06-19 14:13:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
