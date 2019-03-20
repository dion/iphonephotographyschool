-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2019 at 06:10 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forge`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_31_140340_create_modules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `course_key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ipa', 'IPA Module 1', NULL, NULL),
(2, 'iea', 'IEA Module 1', NULL, NULL),
(3, 'iaa', 'IAA Module 1', NULL, NULL),
(4, 'ipa', 'IPA Module 2', NULL, NULL),
(5, 'iea', 'IEA Module 2', NULL, NULL),
(6, 'iaa', 'IAA Module 2', NULL, NULL),
(7, 'ipa', 'IPA Module 3', NULL, NULL),
(8, 'iea', 'IEA Module 3', NULL, NULL),
(9, 'iaa', 'IAA Module 3', NULL, NULL),
(10, 'ipa', 'IPA Module 4', NULL, NULL),
(11, 'iea', 'IEA Module 4', NULL, NULL),
(12, 'iaa', 'IAA Module 4', NULL, NULL),
(13, 'ipa', 'IPA Module 5', NULL, NULL),
(14, 'iea', 'IEA Module 5', NULL, NULL),
(15, 'iaa', 'IAA Module 5', NULL, NULL),
(16, 'ipa', 'IPA Module 6', NULL, NULL),
(17, 'iea', 'IEA Module 6', NULL, NULL),
(18, 'iaa', 'IAA Module 6', NULL, NULL),
(19, 'ipa', 'IPA Module 7', NULL, NULL),
(20, 'iea', 'IEA Module 7', NULL, NULL),
(21, 'iaa', 'IAA Module 7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(28) NOT NULL,
  `description` varchar(51) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `categoryname` varchar(11) DEFAULT NULL,
  `categorydescription` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `description`, `categoryid`, `categoryname`, `categorydescription`, `category`) VALUES
(110, 'Start IPA Module 1 Reminders', NULL, NULL, NULL, NULL, NULL),
(112, 'Start IPA Module 2 Reminders', NULL, NULL, NULL, NULL, NULL),
(114, 'Start IPA Module 3 Reminders', NULL, NULL, NULL, NULL, NULL),
(116, 'Start IPA Module 4 Reminders', NULL, NULL, NULL, NULL, NULL),
(118, 'Start IPA Module 5 Reminders', NULL, NULL, NULL, NULL, NULL),
(120, 'Start IPA Module 6 Reminders', NULL, NULL, NULL, NULL, NULL),
(122, 'Start IPA Module 7 Reminders', NULL, NULL, NULL, NULL, NULL),
(124, 'Start IEA Module 1 Reminders', NULL, NULL, NULL, NULL, NULL),
(126, 'Start IEA Module 2 Reminders', NULL, NULL, NULL, NULL, NULL),
(128, 'Start IEA Module 3 Reminders', NULL, NULL, NULL, NULL, NULL),
(130, 'Start IEA Module 4 Reminders', NULL, NULL, NULL, NULL, NULL),
(132, 'Start IEA Module 5 Reminders', NULL, NULL, NULL, NULL, NULL),
(134, 'Start IEA Module 6 Reminders', NULL, NULL, NULL, NULL, NULL),
(136, 'Start IEA Module 7 Reminders', NULL, NULL, NULL, NULL, NULL),
(138, 'Start IAA Module 1 Reminders', NULL, NULL, NULL, NULL, NULL),
(140, 'Start IAA Module 2 Reminders', NULL, NULL, NULL, NULL, NULL),
(142, 'Start IAA Module 3 Reminders', NULL, NULL, NULL, NULL, NULL),
(144, 'Start IAA Module 4 Reminders', NULL, NULL, NULL, NULL, NULL),
(146, 'Start IAA Module 5 Reminders', NULL, NULL, NULL, NULL, NULL),
(148, 'Start IAA Module 6 Reminders', NULL, NULL, NULL, NULL, NULL),
(150, 'Start IAA Module 7 Reminders', NULL, NULL, NULL, NULL, NULL),
(154, 'Module reminders completed', NULL, NULL, NULL, NULL, NULL),
(159, 'Clean List', 'Email Clean List', 15, 'Smart Lists', NULL, NULL),
(161, 'Email Typos', 'Likely Email Typos in Email Domain', 15, 'Smart Lists', NULL, NULL),
(163, 'Duplicate Contacts', 'Groups contacts what have duplicate email addresses', 15, 'Smart Lists', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5771, '', '5c8e08d663423@test.com', '', NULL, NULL, NULL),
(5773, '', '5c8e0a88a4479@test.co', '', NULL, NULL, NULL),
(5775, '', '5c8e0aa71a938@test.com', '', NULL, NULL, NULL),
(5777, '', '5c8e0ab97cf57@test.com', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_completed_modules`
--

CREATE TABLE `user_completed_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_completed_modules`
--

INSERT INTO `user_completed_modules` (`id`, `user_id`, `module_id`, `created_at`, `updated_at`) VALUES
(2, 5771, 3, NULL, NULL),
(3, 5771, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_completed_modules`
--
ALTER TABLE `user_completed_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_completed_modules_user_id_foreign` (`user_id`),
  ADD KEY `user_completed_modules_module_id_foreign` (`module_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5778;

--
-- AUTO_INCREMENT for table `user_completed_modules`
--
ALTER TABLE `user_completed_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_completed_modules`
--
ALTER TABLE `user_completed_modules`
  ADD CONSTRAINT `user_completed_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_completed_modules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
