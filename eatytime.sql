-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 06:02 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eatytime`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Casual Dining', 'uploads/SKC8hef7E5emdig3q14NmEdgvsPK8adCtR4xDEZt.jpeg', '2020-01-22 13:30:52', '2020-01-22 14:19:19'),
(2, 'Food Courts', 'uploads/G4eBSMcVWPbd5ATZ2f1d3nEofEBMjeKRQ9HI6G4r.jpeg', '2020-01-22 13:32:00', '2020-01-22 14:18:15'),
(3, 'Fine dinning', 'uploads/qmcKgH6mK9dKQggdlU3ryeZksnutxOrBpwCImPYr.jpeg', '2020-01-22 13:33:02', '2020-01-22 14:20:49'),
(4, 'Cafés', 'uploads/2TY4r22weeULMPJh4j1A595HoeRg3EFOb7GYQusX.jpeg', '2020-01-22 13:33:13', '2020-01-22 14:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `marker_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`id`, `name`, `phone`, `image`, `category_id`, `marker_id`, `created_at`, `updated_at`) VALUES
(1, 'pizza hot', '213659266020', 'uploads/CuFrsaIylSXcNLCqErZKmVzaj5coCmOsv0djAyHi.jpeg', 1, NULL, '2020-01-22 13:52:43', '2020-01-22 17:29:53'),
(3, 'Cravars pizza', '213659266022', 'uploads/T0hdFSZUPG8NWFUIOcJjZ1OQFM6U20KlXwr0H1rz.jpeg', 1, NULL, '2020-01-22 13:54:08', '2020-01-22 17:30:20'),
(4, 'cafe time', '213659266582', 'uploads/JtZRE7vWadYiMdNectNpYZQKuZ00kNOf0xEj6Fj8.jpeg', 4, NULL, '2020-01-22 13:55:04', '2020-01-22 17:30:36'),
(5, 'cafe zone', '213659266583', 'uploads/yqeNSjeici7ucct6BRWUBwk6zUGKyvT4RF0Nd3Z6.jpeg', 4, NULL, '2020-01-22 13:55:16', '2020-01-22 17:30:49'),
(7, 'dominos qatar', '213659266588', 'uploads/aO8WYH6HIEjyj2NAu12fv3Rg7ChCm42u3vlUJxnj.jpeg', 2, NULL, '2020-01-22 13:56:14', '2020-01-22 17:31:08'),
(8, 'Crossroads Kitchen Marriott Marquis Doha', '213659266579', 'uploads/JSsZRT2uN5IvYKizfcPQ0TIjHpAgZPj986uqbPz1.jpeg', 2, NULL, '2020-01-22 13:56:45', '2020-01-22 17:31:25'),
(9, 'marriot food', '213659266589', 'uploads/w14epPYo2O8w3Hs0YnHxH6mCC3NgydaarmSAeD5X.jpeg', 3, NULL, '2020-01-22 13:58:06', '2020-01-22 17:31:40'),
(11, 'Golden resto', '213659266525', 'uploads/XM8AqPAFKkv5hxhEojqMo5VWDiwd2Uqv0ndJKhsn.jpeg', 3, NULL, '2020-01-22 13:58:28', '2020-01-22 17:32:28'),
(12, 'Royal Resto', '213659266523', 'uploads/w5SYeodXY5aXanRsNZVFk6cKfzqsckTIjOBr11XL.jpeg', 3, NULL, '2020-01-22 17:41:30', '2020-01-22 17:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2020_01_19_212236_create_merchants_table', 2),
(3, '2020_01_19_215707_create_markers_table', 2),
(4, '2020_01_19_220756_create_categories_table', 2),
(5, '2020_01_19_221026_create_customers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'imad saadoune', 'imade760@gmail.com', NULL, NULL, '$2y$10$s8UOmkWeYYvmymNmSzPzqOOigiBX.RbEyczPUCGZmHFD8NxB/lPD6', NULL, '2020-01-20 17:21:23', '2020-01-20 17:21:23'),
(2, 'imad saadoune', 'imad760@gmail.com', NULL, NULL, '$2y$10$bxJO3xNaUR/I/dPU3oXUouwjczVm5Y/hzOwku94Jg.KbeZmYPsIIK', NULL, '2020-01-20 17:32:37', '2020-01-20 17:32:37'),
(3, 'imad ', 'imade2760@gmail.com', NULL, NULL, '$2y$10$HxXLq0beCOM/bKoY3aETVOerfQzbJHWpUb56yP.mVtZAiDnGm6VbG', NULL, '2020-01-20 17:33:46', '2020-01-20 17:33:46'),
(4, 'imad saadoune', 'imade7602@gmail.com', '0659266020', NULL, '$2y$10$gLw3dKu4sz.7kyNyqWEsReWb.GnBIQfvz8EvJ.s4nNBckY1ohNZi.', NULL, '2020-01-20 19:29:20', '2020-01-20 19:29:20'),
(5, 'imad saadoune', 'imade76@gmail.com', '213659266020', NULL, '$2y$10$/CH0ZSsl/rCgzUBACNJ7C.P7fRQCe.PusvRi2mXn4i3xdrrqst5MO', NULL, '2020-01-20 19:31:34', '2020-01-20 19:31:34'),
(7, 'imad saadoune', 'imade25@gmail.com', '213659266021', NULL, '$2y$10$IJfXwRsXDP1fKpZhJvvB.udKqpr5/La1o3YweSOYp69KRRpO.1esi', NULL, '2020-01-20 20:17:29', '2020-01-20 20:17:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchants_phone_number_unique` (`phone`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_number_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
