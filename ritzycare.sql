-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 12:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ritzycare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_RCID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ritzycare Short ID',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_margin` double DEFAULT 0,
  `vendor_payout` int(11) DEFAULT 0 COMMENT 'description in app config file',
  `status` int(11) DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) DEFAULT 0,
  `app_type` int(11) DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `user_type` int(11) DEFAULT 0 COMMENT '0 - Admin, 1 - Vendors',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `last_name`, `vendor_RCID`, `email`, `email_verified_at`, `password`, `contact_number`, `vendor_margin`, `vendor_payout`, `status`, `modified_by`, `app_type`, `user_type`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dhinesh', NULL, NULL, 'admin1@ritzycare.com', NULL, '$2y$10$/RcGgd2.NuKsAIHWRRWY2eudfpCBP8K/rzBuKmkXIljuJwovH9C1.', NULL, 0, 0, 1, 0, 0, 0, 'f9xIGbVvzS31OFZoSVNMpTYRRb4mapx7abp8enzmaFCE6pGBI8vrwOt8WIQx', '2021-04-14 06:41:30', '2021-04-14 06:41:30', NULL),
(3, 'Ritzycare', NULL, NULL, 'admin@ritzycare.com', NULL, '$2y$10$/RcGgd2.NuKsAIHWRRWY2eudfpCBP8K/rzBuKmkXIljuJwovH9C1.', NULL, 0, 0, 1, 0, 0, 0, 'JSKKxqZWu07rXLivjRBP7sljzAEkYhU5weLAJd6610ser41tUVSIOevz9QPU', '2021-04-20 07:07:06', '2021-05-02 06:22:47', NULL),
(4, 'QTSouq Test', 'testing', 'RC21121803', 'infoqt@qt-souq.com', NULL, '$2y$10$/RcGgd2.NuKsAIHWRRWY2eudfpCBP8K/rzBuKmkXIljuJwovH9C1.', '44440000', 12, 1, 1, 3, 0, 1, NULL, '2021-04-20 07:07:06', '2021-05-19 10:58:13', NULL),
(6, 'Vendor Two', 'Two', 'RC21064253', 'vendor@rc.com', NULL, '$2y$10$4nUxG7esndn3rG.2.XhCq.HRJugEKV3rK6DpE0gEq5FDdIEJSHXtC', '44400001', 10, 2, 1, 3, 0, 1, NULL, '2021-06-01 03:42:53', '2021-06-01 03:42:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE `affiliate_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT 'Desc - Ref App Config',
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribed` int(11) DEFAULT 1 COMMENT '0 - No, 1 - Yes',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `record_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliate_users`
--

INSERT INTO `affiliate_users` (`id`, `user_type`, `user_name`, `user_email`, `dial_code`, `phone_number`, `country`, `website`, `fb_info`, `insta_info`, `other_info`, `is_subscribed`, `status`, `record_ip`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'ssdds', 'sds@g.in', '974', '33445566', 'sdds', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate, http://localhost/ritzycare/public/affiliate', 'http://localhost/ritzycare/public/affiliate, https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate, http://localhost/ritzycare/public/affiliate', 'http://localhost/ritzycare/public/affiliate, https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate', 0, 1, '::1', '2021-06-21 13:16:46', '2021-08-03 12:16:43', NULL),
(2, 5, 'tessd', 'dsds@fddf.in', '974', '33124567', 'sddsd', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate,http://localhost/ritzycare/public/affiliate', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate,http://localhost/ritzycare/public/affiliate', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate,http://localhost/ritzycare/public/affiliate', 'https://translate.google.com/?sl=auto&tl=ar&text=Thanks%20for%20your%20interest.%20We%20will%20contact%20you%20soon.&op=translate,http://localhost/ritzycare/public/affiliate', 0, 1, '::1', '2021-06-21 13:17:39', '2021-08-03 12:16:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_programmes`
--

CREATE TABLE `app_programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(19,4) DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programme_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Membership, 1 - Referral, 2 - Reward',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_programmes`
--

INSERT INTO `app_programmes` (`id`, `title`, `description`, `price`, `points`, `duration`, `programme_type`, `status`, `app_type`, `modified_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"SILVER PLAN\",\"ar\":\"\\u062e\\u0637\\u0629 \\u0641\\u0636\\u064a\\u0629\"}', '{\"en\":\"<ul>\\r\\n\\t<li>Access to Members only deals and services<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<ul>\\r\\n\\t<li>\\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0641\\u0642\\u0637 \\u0627\\u0644\\u0635\\u0641\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a<\\/li>\\r\\n<\\/ul>\"}', 100.0000, NULL, '3', 0, 1, 0, 3, '2021-06-17 13:54:35', '2021-07-12 08:42:11', NULL),
(2, '{\"en\":\"GOLD PLAN\",\"ar\":\"\\u0627\\u0644\\u062e\\u0637\\u0629 \\u0627\\u0644\\u0630\\u0647\\u0628\\u064a\\u0629\"}', '{\"en\":\"<ul>\\r\\n\\t<li>Access to Members only deals and services<\\/li>\\r\\n\\t<li>Members get deals for 6 months<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<ul>\\r\\n\\t<li>\\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0641\\u0642\\u0637 \\u0627\\u0644\\u0635\\u0641\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a<\\/li>\\r\\n\\t<li>\\u064a\\u062d\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0635\\u0641\\u0642\\u0627\\u062a \\u0644\\u0645\\u062f\\u0629 6 \\u0623\\u0634\\u0647\\u0631<\\/li>\\r\\n<\\/ul>\"}', 250.0000, NULL, '6', 0, 1, 0, 3, '2021-06-17 13:54:35', '2021-07-12 08:45:20', NULL),
(3, '{\"en\":\"PLATINUM PLAN\",\"ar\":\"\\u062e\\u0637\\u0629 \\u0627\\u0644\\u0628\\u0644\\u0627\\u062a\\u064a\\u0646\"}', '{\"en\":\"<ul>\\r\\n\\t<li>Access to Members only deals and services<\\/li>\\r\\n\\t<li>Members get deals for 1 Year<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<ul>\\r\\n\\t<li>\\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0641\\u0642\\u0637 \\u0627\\u0644\\u0635\\u0641\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a<\\/li>\\r\\n\\t<li>\\u064a\\u062d\\u0635\\u0644 \\u0627\\u0644\\u0623\\u0639\\u0636\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0635\\u0641\\u0642\\u0627\\u062a \\u0644\\u0645\\u062f\\u0629 1 \\u0633\\u0646\\u0629<\\/li>\\r\\n<\\/ul>\"}', 500.0000, NULL, '1', 0, 1, 0, 3, '2021-06-17 15:03:59', '2021-07-12 11:25:25', NULL),
(4, '{\"en\":\"Refer Website\",\"ar\":\"\\u0627\\u0644\\u0631\\u062c\\u0648\\u0639 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\"}', '{\"ar\":null}', 20.0000, '8', 'asa', 1, 1, 0, 3, '2021-06-17 15:29:57', '2021-07-12 11:26:23', NULL),
(5, '{\"en\":\"Refer Product & Service Deal\",\"ar\":\"\\u0631\\u0627\\u062c\\u0639 \\u0635\\u0641\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629\"}', '{\"ar\":null}', 100.0000, '10', 'asa', 1, 1, 0, 3, '2021-06-17 15:30:00', '2021-07-12 11:27:04', NULL),
(6, '{\"en\":\"SHOP\",\"ar\":\"\\u0645\\u062a\\u062c\\u0631\"}', '{\"ar\":null}', 1.0000, '1', NULL, 2, 1, 0, 3, '2021-06-17 16:53:24', '2021-07-11 13:26:20', NULL),
(7, '{\"en\":\"CREATE ACCOUNT\",\"ar\":\"\\u0625\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0633\\u0627\\u0628\"}', '{\"ar\":null}', NULL, '100', NULL, 2, 1, 0, 3, '2021-06-17 16:53:28', '2021-07-11 13:26:23', NULL),
(8, '{\"en\":\"VIDEO REVIEW\",\"ar\":\"\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648\"}', '{\"ar\":null}', NULL, '100', NULL, 2, 1, 0, 3, '2021-06-17 17:13:10', '2021-07-11 13:26:25', NULL),
(9, '{\"en\":\"PRODUCT REVIEW\",\"ar\":\"\\u062a\\u0642\\u064a\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\"}', '{\"ar\":null}', NULL, '20', NULL, 2, 1, 0, 3, '2021-06-17 17:13:14', '2021-07-11 13:26:28', NULL),
(10, '{\"en\":\"REVIEW WITH PRODUCT IMAGE\",\"ar\":\"\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0645\\u0639 \\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\"}', '{\"ar\":null}', NULL, '40', NULL, 2, 1, 0, 3, '2021-06-17 17:14:52', '2021-07-11 13:26:32', NULL),
(11, '{\"en\":\"YOUR BIRTHDAY\",\"ar\":\"\\u0639\\u064a\\u062f \\u0645\\u064a\\u0644\\u0627\\u062f\\u0643\"}', '{\"ar\":null}', NULL, '10', NULL, 2, 1, 0, 3, '2021-06-17 17:16:20', '2021-07-11 13:26:34', NULL),
(12, '{\"en\":\"Point distribution\",\"ar\":\"\\u062a\\u0648\\u0632\\u064a\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\"}', '{\"ar\":null}', 10.0000, '100', NULL, 2, 1, 0, 3, '2021-06-17 17:19:13', '2021-07-12 05:53:18', NULL),
(13, '{\"en\":\"Redeem\",\"ar\":\"\\u064a\\u0633\\u062a\\u0631\\u062f\"}', '{\"ar\":null}', 2.0000, '100', NULL, 2, 1, 0, 3, '2021-06-17 17:19:17', '2021-07-28 08:13:50', NULL),
(14, '{\"en\":\"BUDDING STAR\",\"ar\":\"\\u0628\\u0627\\u062f\\u064a\\u0646\\u063a \\u0633\\u062a\\u0627\\u0631\"}', '{\"ar\":null}', 1000.0000, '0', NULL, 2, 1, 0, 3, '2021-06-17 17:21:06', '2021-07-28 08:14:01', NULL),
(15, '{\"en\":\"Point distribution\",\"ar\":\"\\u062a\\u0648\\u0632\\u064a\\u0639 \\u0627\\u0644\\u0646\\u0642\\u0627\\u0637\"}', '{\"ar\":null}', 10.0000, '100', NULL, 1, 1, 0, 3, '2021-06-18 10:09:57', '2021-07-12 11:27:16', NULL),
(16, '{\"en\":\"Redeem\",\"ar\":\"\\u064a\\u0633\\u062a\\u0631\\u062f\"}', '{\"ar\":null}', 2.0000, '100', NULL, 1, 1, 0, 3, '2021-06-18 10:15:28', '2021-07-12 11:27:27', NULL),
(17, '{\"en\":\"ROCK STAR\",\"ar\":\"\\u0646\\u062c\\u0645 \\u0631\\u0648\\u0643\"}', '{\"ar\":null}', 3000.0000, '1000', NULL, 2, 1, 0, 3, '2021-06-18 10:31:42', '2021-07-28 08:14:16', NULL),
(18, '{\"en\":\"SUPER STAR\",\"ar\":\"\\u0646\\u062c\\u0645 \\u0627\\u0644\\u0646\\u062c\\u0648\\u0645\"}', '{\"ar\":null}', 6000.0000, '3000', NULL, 2, 1, 0, 3, '2021-06-18 10:35:39', '2021-07-28 08:14:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_programme_histories`
--

CREATE TABLE `app_programme_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programme_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Membership, 1 - Referral, 2 - Reward',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `area_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `zone_id`, `area_name`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '{\"en\":\"Al Dafna\",\"ar\":\"\\u0627\\u0644\\u062f\\u0641\\u0646\\u0629\"}', 'al-dafna', 1, '2021-05-09 04:56:11', '2021-05-09 06:42:10', NULL),
(2, 2, '{\"en\":\"Al Wakir\",\"ar\":\"\\u0627\\u0644\\u0648\\u0643\\u064a\\u0631\"}', 'al-wakir', 1, '2021-05-09 04:57:59', '2021-05-09 06:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_types`
--

CREATE TABLE `attribute_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` int(11) DEFAULT 0 COMMENT '0 - Text, 1 - Color, 2 - Image',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_types`
--

INSERT INTO `attribute_types` (`id`, `attribute_name`, `attribute_type`, `status`, `modified_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Size\",\"ar\":\"\\u0628\\u062d\\u062c\\u0645\"}', 0, 1, 3, '2021-05-27 03:45:24', '2021-05-27 03:45:24', NULL),
(2, '{\"en\":\"Color\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', 1, 1, 3, '2021-05-27 03:45:47', '2021-05-27 03:45:47', NULL),
(3, '{\"en\":\"Memory\",\"ar\":\"\\u0630\\u0627\\u0643\\u0631\\u0629\"}', 0, 1, 3, '2021-05-27 03:46:35', '2021-05-27 03:46:35', NULL),
(4, '{\"en\":\"Color\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', 2, 1, 3, '2021-05-27 04:08:21', '2021-05-27 04:08:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image_name`, `image`, `image_text`, `redirect_url`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Beauty Care Products\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', '1624796411.jpg', '{\"en\":\"Beauty Care Products\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', 'http://beee2c.com/ritzycare/test', 1, 3, 0, '2021-05-16 08:33:00', '2021-06-27 09:50:11', NULL),
(2, '{\"en\":\"Beauty And Cosmetics\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', '1624796431.jpg', '{\"en\":\"sdsd\",\"ar\":\"dsds\"}', 'http://localhost/ritzycare/public/admin/add-banner-image', 1, 3, 0, '2021-06-08 08:45:43', '2021-06-27 09:50:31', NULL),
(3, '{\"en\":\"Home Fragrances\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', '1624796451.jpg', '{\"en\":\"Home Fragrances\",\"ar\":\"Home Fragrances\"}', 'http://google.com', 1, 3, 0, '2021-06-08 08:51:55', '2021-06-27 09:50:51', NULL),
(4, '{\"en\":\"Belvoir&co\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', '1623153151.jpg', '{\"en\":\"Belvoir&co\",\"ar\":\"Belvoir&co\"}', 'https://www.google.com/', 0, 3, 0, '2021-06-08 08:52:31', '2021-06-27 09:52:19', '2021-06-27 09:52:19'),
(5, '{\"en\":\"Puff Collection\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u062c\\u0645\\u0627\\u0644\"}', '1623153182.jpg', '{\"en\":\"Puff Collection\",\"ar\":\"Puff Collection\"}', 'https://www.google.com/', 0, 3, 0, '2021-06-08 08:53:02', '2021-06-27 09:52:15', '2021-06-27 09:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_position` text COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `image`, `listing_position`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Vichy Lab\",\"ar\":\"\\u0645\\u0639\\u0645\\u0644 \\u0641\\u064a\\u0634\\u064a\"}', '1624859680.png', '0', 1, 3, 0, '2021-05-17 06:22:22', '2021-06-28 03:24:40', NULL),
(2, '{\"en\":\"Avene\",\"ar\":\"\\u0623\\u0641\\u064a\\u0646\"}', '1624859874.png', '0', 1, 3, 0, '2021-05-17 06:22:48', '2021-06-28 03:27:54', NULL),
(3, '{\"en\":\"Braun\",\"ar\":\"Braun\"}', '1624858469.jpg', '0', 1, 3, 0, '2021-06-28 03:04:29', '2021-06-28 03:04:29', NULL),
(4, '{\"en\":\"Clairol\",\"ar\":\"Clairol\"}', '1624858627.gif', '0', 1, 3, 0, '2021-06-28 03:07:07', '2021-06-28 03:07:07', NULL),
(5, '{\"en\":\"La Roche-Posay\",\"ar\":\"La Roche-Posay\"}', '1624859371.png', '0', 1, 3, 0, '2021-06-28 03:19:31', '2021-06-28 03:19:31', NULL),
(6, '{\"en\":\"Nuxe\",\"ar\":\"Nuxe\"}', '1624859951.png', '0', 1, 3, 0, '2021-06-28 03:29:11', '2021-06-28 03:29:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_category_id` int(11) NOT NULL DEFAULT 0,
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 - Main, 2 - Sub, 3 - Third, 4 - Fourth',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `main_category_id`, `sub_category_id`, `category_name`, `meta_title`, `meta_keywords`, `meta_description`, `slug`, `category_type`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 0, '{\"en\":\"Services\",\"ar\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\"}', 'Services Meta Title', 'Services Meta Keywords', 'Services Meta Description', 'services', 1, 1, 3, 0, '2021-05-11 03:46:37', '2021-05-11 03:46:37', NULL),
(2, 1, 1, '{\"en\":\"Hair Products\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0631\"}', 'Hair Products Meta Title', 'Hair Products Meta Keywords', 'Hair Products Meta Description', 'hair-products', 2, 1, 3, 0, '2021-05-11 03:47:24', '2021-05-16 04:32:57', NULL),
(3, 1, 1, '{\"en\":\"Skin Care\",\"ar\":\"\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629\"}', 'Skin Care Meta Title', 'Skin Care Meta Keywords', 'Skin Care Meta Description', 'skin-care', 2, 1, 3, 0, '2021-05-11 05:55:02', '2021-05-11 06:01:56', NULL),
(6, 1, 2, '{\"en\":\"HAIR COLOR PRODUCTS\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0635\\u0628\\u063a \\u0627\\u0644\\u0634\\u0639\\u0631\"}', 'HAIR COLOR PRODUCTS Meta Title', 'HAIR COLOR PRODUCTS Meta Keywords', 'HAIR COLOR PRODUCTS Meta Description', 'hair-color-products', 3, 1, 3, 0, '2021-05-11 06:44:42', '2021-05-16 05:44:38', NULL),
(7, 1, 2, '{\"en\":\"Hair Treatments\",\"ar\":\"\\u0639\\u0644\\u0627\\u062c\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0631\"}', 'Hair Treatments Meta Title', 'Hair Treatments Meta Keywords', 'Hair Treatments Meta Description', 'hair-treatments', 3, 1, 3, 0, '2021-05-11 06:49:10', '2021-05-15 05:37:24', NULL),
(8, 1, 6, '{\"en\":\"Permanent Hair Color\",\"ar\":\"\\u0635\\u0628\\u063a\\u0629 \\u0634\\u0639\\u0631 \\u062f\\u0627\\u0626\\u0645\\u0629\"}', 'Permanent Hair Color Meta Title', 'Permanent Hair Color Meta Keywords', 'Permanent Hair Color Meta Description', 'permanent-hair-color', 4, 1, 3, 0, '2021-05-16 05:55:13', '2021-05-23 06:17:28', NULL),
(9, 1, 6, '{\"en\":\"Semi Permanent Hair Color\",\"ar\":\"\\u0635\\u0628\\u063a\\u0629 \\u0634\\u0639\\u0631 \\u0634\\u0628\\u0647 \\u062f\\u0627\\u0626\\u0645\\u0629\"}', 'Semi Permanent Hair Color', 'Semi Permanent Hair Color', 'Semi Permanent Hair Color', 'semi-permanent-hair-color', 4, 1, 3, 0, '2021-06-07 09:19:20', '2021-06-07 09:19:20', NULL),
(10, 1, 2, '{\"en\":\"HAIR STYLING PRODUCTS\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u062a\\u0635\\u0641\\u064a\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631\"}', 'HAIR STYLING PRODUCTS', 'HAIR STYLING PRODUCTS', 'HAIR STYLING PRODUCTS', 'hair-styling-products', 3, 1, 3, 0, '2021-06-07 09:20:05', '2021-06-07 09:20:05', NULL),
(11, 1, 3, '{\"en\":\"SKINCARE PRODUCTS\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0647 \\u0628\\u0627\\u0644\\u0628\\u0634\\u0631\\u0647\"}', 'SKINCARE PRODUCTS', 'SKINCARE PRODUCTS', 'SKINCARE PRODUCTS', 'skincare-products', 3, 1, 3, 0, '2021-06-07 09:20:39', '2021-06-07 09:20:39', NULL),
(12, 1, 3, '{\"en\":\"MEN\'S SKINCARE PRODUCTS\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0644\\u0644\\u0631\\u062c\\u0627', 'MEN\'S SKINCARE PRODUCTS', 'MEN\'S SKINCARE PRODUCTS', 'MEN\'S SKINCARE PRODUCTS', 'mens-skincare-products', 3, 1, 3, 0, '2021-06-07 09:21:07', '2021-06-07 09:21:07', NULL),
(13, 0, 0, '{\"en\":\"Products\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\"}', 'Products', 'Products', 'Products', 'products', 1, 1, 3, 0, '2021-06-09 09:37:24', '2021-06-09 09:37:24', NULL),
(14, 0, 0, '{\"en\":\"PRODUCTS1\",\"ar\":\"Hair & Cosmetics1\"}', 'test', 'test', 'test', 'products1', 1, 0, 3, 0, '2021-06-25 05:33:48', '2021-06-28 04:05:22', NULL),
(15, 0, 13, '{\"en\":\"Hair & Cosmetics\",\"ar\":\"\\u0627\\u0644\\u0634\\u0639\\u0631 \\u0648\\u0645\\u0633\\u062a\\u062d\\u0636\\u0631\\u0627\\u062a \\u0627\\u0644\\u062a\\u062c\\u0645\\u064a\\u0644\"}', 'test', 'test', 'test', 'hair-cosmetics', 2, 1, 3, 0, '2021-06-25 05:35:03', '2021-06-25 05:35:03', NULL),
(16, 0, 13, '{\"en\":\"Cosmetics\",\"ar\":\"test\"}', 'test', 'test', 'test1', 'cosmetics', 2, 0, 3, 0, '2021-06-25 05:41:12', '2021-06-25 05:48:36', '2021-06-25 05:48:36'),
(17, 0, 16, '{\"en\":\"Test Cat\",\"ar\":\"test\"}', 'test', 'test', 'test', 'test-cat', 2, 0, 3, 0, '2021-06-25 05:45:45', '2021-06-28 04:05:47', NULL),
(18, 0, 16, '{\"en\":\"Cosmetics\",\"ar\":\"Cosmetics\"}', 'Cosmetics', 'Cosmetics', 'Cosmetics', 'cosmetics', 2, 0, 3, 0, '2021-06-25 05:48:02', '2021-06-25 05:48:40', '2021-06-25 05:48:40'),
(19, 13, 13, '{\"en\":\"Women Products\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0646\\u0633\\u0627\\u0626\\u064a\\u0629\"}', 'منتجات نسائية', 'منتجات نسائية', 'منتجات نسائية', 'women-products', 2, 1, 3, 0, '2021-06-25 06:12:54', '2021-06-25 06:41:44', NULL),
(20, 0, 13, '{\"en\":\"Women Products\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0646\\u0633\\u0627\\u0626\\u064a\\u0629\"}', 'Women', 'Women Products', 'Women Products', 'women-products', 2, 1, 3, 0, '2021-06-25 06:40:27', '2021-06-25 06:40:27', NULL),
(21, 1, 2, '{\"en\":\"Men\'s Hair Products\",\"ar\":\"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0644\\u0644\\u0631\\u062c\\u0627\\u0644\"}', 'Men\'s Hair Products', 'Mens Hair, Men Hair', 'Men Hair', 'mens-hair-products', 3, 1, 3, 0, '2021-06-28 02:49:30', '2021-06-28 02:49:30', NULL),
(22, 1, 21, '{\"en\":\"Hair Colors\",\"ar\":\"\\u0623\\u0644\\u0648\\u0627\\u0646 \\u0627\\u0644\\u0634\\u0639\\u0631\"}', 'Hair Colors', 'Hair Colors', 'Hair Colors', 'hair-colors', 4, 1, 3, 0, '2021-06-28 04:50:34', '2021-06-28 04:50:34', NULL),
(23, 0, 0, '{\"en\":\"test\",\"ar\":\"test\"}', 'test', 'test', 'test', 'test', 1, 1, 3, 0, '2021-08-03 06:21:19', '2021-08-03 06:21:19', NULL),
(24, 23, 23, '{\"en\":\"test sub\",\"ar\":\"test sub\"}', 'test sub', 'test sub', 'test sub', 'test-sub', 2, 1, 3, 0, '2021-08-03 06:21:55', '2021-08-03 06:21:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` bigint(20) UNSIGNED NOT NULL,
  `social_account` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agree` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `is_permission` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `record_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `first_name`, `last_name`, `email`, `dial_code`, `phone_number`, `nationality_id`, `social_account`, `height`, `weight`, `file_name`, `is_agree`, `is_permission`, `record_ip`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dhinesh', 'Test', 'test@fgmail.com', '974', '66558877', 81, 'http://localhost/ritzycare/public/competition,https://translate.google.com/', '56', '44', 'C:\\xampp\\tmp\\php745C.tmp', 1, 0, '::1', 1, 0, 0, '2021-07-08 07:26:40', '2021-07-08 07:26:40', NULL),
(2, 'Miller', 'James', 'jm@gmail.com', '27', '715456897', 164, 'https://translate.google.com/', '34', '23', '1625731537.jpg', 1, 1, '::1', 1, 0, 0, '2021-07-08 08:05:37', '2021-07-08 08:05:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `competition_offers`
--

CREATE TABLE `competition_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competition_offers`
--

INSERT INTO `competition_offers` (`id`, `offer_name`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Get early access to sales, exclusive discounts, enjoy free products and services, and more\",\"ar\":\"\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u0648\\u0635\\u0648\\u0644 \\u0645\\u0628\\u0643\\u0631 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a \\u0648\\u0627\\u0644\\u062e\\u0635\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u062d\\u0635\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0633\\u062a\\u0645\\u062a\\u0639 \\u0628\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0648\\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062c\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\"}', 1, 0, 0, '2021-07-07 09:59:40', '2021-07-07 09:59:40', NULL),
(2, '{\"en\":\"The opportunity to be featured on Ritzy.care social media\\u2019s & website\",\"ar\":\"\\u0641\\u0631\\u0635\\u0629 \\u0627\\u0644\\u0638\\u0647\\u0648\\u0631 \\u0639\\u0644\\u0649 \\u0645\\u0648\\u0627\\u0642\\u0639 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0627\\u062a \\u0627\\u0644\\u0627\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0629 \\u0648\\u0645\\u0648\\u0642\\u0639 Ritzy.care\"}', 1, 0, 0, '2021-07-07 09:59:40', '2021-07-07 09:59:40', NULL),
(3, '{\"en\":\"Inclusion in exclusive Ritzy.care upcoming contests and giveaways\",\"ar\":\"\\u0627\\u0644\\u0625\\u062f\\u0631\\u0627\\u062c \\u0641\\u064a \\u0627\\u0644\\u0645\\u0633\\u0627\\u0628\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u0647\\u062f\\u0627\\u064a\\u0627 \\u0627\\u0644\\u0642\\u0627\\u062f\\u0645\\u0629 \\u0645\\u0646 Ritzy.care \\u0627\\u0644\\u062d\\u0635\\u0631\\u064a\\u0629\"}', 1, 0, 0, '2021-07-07 09:59:40', '2021-07-07 09:59:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT 1 COMMENT '1 - Contact, 2 - Business',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `record_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `dial_code`, `phone`, `message`, `type`, `status`, `record_ip`, `created_at`, `updated_at`) VALUES
(1, 'Dhinesh', 'test@gmail.com', '974', '44556687', 'If you got any questions, please do not hesitate to send us a message. We reply within 24 hours ! If you got any questions, please do not hesitate to send us a message. We reply within 24 hours !If you got any questions, please do not hesitate to send us a message. We reply within 24 hours !', 1, 1, '::1', '2021-06-15 10:58:12', '2021-06-15 10:58:12'),
(2, 'Dhinesh', 'test@gmail.com', '974', '4455 6687', 'If you got any questions, please do not hesitate to send us a message. We reply within 24 hours ! If you got any questions, please do not hesitate to send us a message. We reply within 24 hours !If you got any questions, please do not hesitate to send us a message. We reply within 24 hours !', 1, 1, '::1', '2021-06-15 10:58:54', '2021-06-15 10:58:54'),
(3, 'sdsdds', 'tsdf@fg.in', '974', '44556677', 'sdfsdf sdfsdf', 1, 1, '::1', '2021-06-15 11:00:15', '2021-06-15 11:00:15'),
(4, 'sds', 'dsds@dsd.in', '44', '5645678906', 'sdfsdf', 1, 1, '::1', '2021-06-15 11:00:54', '2021-06-15 11:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `email_subscriptions`
--

CREATE TABLE `email_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Unsubscribed, 1 - Subscribed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_subscriptions`
--

INSERT INTO `email_subscriptions` (`id`, `user_id`, `user_name`, `email`, `dial_code`, `phone_number`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'sdsd', '43dsfs@fdf.in', '974', '343434343434', 1, '2021-07-12 14:07:08', '2021-08-04 08:34:36', NULL),
(2, 0, 'sdsd', 'dsfs@fdg.in', '974', '2324324234', 1, '2021-07-12 14:07:30', '2021-08-04 08:34:34', NULL),
(3, 0, 'dsds', 'dffd@fddf.in', '974', '54545455', 1, '2021-07-12 14:16:08', '2021-08-04 08:34:32', NULL),
(4, 1, 'dffgdfgdfg', 'etre@dfgd.in', '974', '4534534534', 1, '2021-07-12 14:22:19', '2021-08-04 08:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 1, 3, 0, '2021-06-07 07:46:32', '2021-06-07 07:48:13', NULL),
(2, '{\"en\":\"Why do we use it?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 1, 3, 0, '2021-06-07 07:46:32', '2021-06-07 07:48:41', NULL),
(3, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 1, 3, 0, '2021-06-07 07:46:32', '2021-06-07 07:48:13', NULL),
(4, '{\"en\":\"Why do we use it?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 1, 3, 0, '2021-06-07 07:46:32', '2021-06-07 07:48:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sec_subcategory_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `item_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_group` int(11) DEFAULT 1 COMMENT '1 - Product, 2 - Service',
  `item_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_rcin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inventory_track` int(11) DEFAULT 0 COMMENT '0 - Unlimited, 1 - Limited',
  `is_variants` int(11) DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `is_active` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `category_id`, `sub_category_id`, `sec_subcategory_id`, `third_category_id`, `brand_id`, `item_description`, `item_summary`, `item_group`, `item_sku`, `item_rcin`, `meta_title`, `meta_description`, `meta_keywords`, `slug`, `is_inventory_track`, `is_variants`, `is_active`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Test Product\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"ar\":\"<p>\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum.<\\/p>\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum.\"}', 1, 'M23456', 'RC-Q50O4NV6', 'MT', 'MD', 'MK', 'test-product', 1, 1, 1, 1, 3, 2, '2021-05-30 05:47:00', '2021-07-13 07:03:35', NULL),
(2, '{\"en\":\"Test Product Without Variant\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\"}', '1', '2', '6', '8', 1, '{\"en\":\"<p>Test Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without Variant<\\/p>\",\"ar\":\"<p>\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631<\\/p>\"}', '{\"en\":\"Test Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without VariantTest Product Without Variant\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\"}', 1, 'M34N2ASFDFD', 'RC-WC4T5Y3A', 'Test Product Without Variant', 'Test Product Without VariantTest Product Without Variant', 'Test Product Without VariantTest Product Without VariantTest Product Without Variant', 'test-product-without-variant', 1, 0, 1, 1, 3, 0, '2021-05-31 07:53:15', '2021-07-14 11:48:39', NULL),
(3, '{\"en\":\"Sample Service\",\"ar\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u064a\\u0646\\u0629\"}', '1', '3', '11', NULL, 1, '{\"en\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<\\/p>\",\"ar\":\"<p>\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum. Lorem Ipsum \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0628\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum<\\/p>\"}', '{\"en\":\"Lorem Ipsum\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum. Lorem Ipsum \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0644\\u0642\\u062f \\u0646\\u062c\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u060c \\u0648\\u0644\\u0643\\u0646 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0627\\u0644\\u0642\\u0641\\u0632\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u060c \\u0648\\u0638\\u0644\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u062c\\u0648\\u0647\\u0631\\u064a. \\u062a\\u0645 \\u0646\\u0634\\u0631\\u0647 \\u0641\\u064a \\u0627\\u0644\\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0628\\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 Lorem Ipsum \\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u064b\\u0627 \\u0645\\u0639 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0628\\u0645\\u0627 \\u0641\\u064a \\u0630\\u0644\\u0643 \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a Lorem Ipsum\"}', 1, 'REDER1234', 'RC-6Z5LQAGK', 'test', 'dfdewfv', 'sdfsdf', 'sample-service', 1, 0, 1, 1, 3, 0, '2021-06-10 03:01:56', '2021-06-28 03:40:03', NULL),
(5, '{\"en\":\"One Step Hair Dryer & Volumiser\",\"ar\":\"\\u062c\\u0647\\u0627\\u0632 \\u062a\\u062c\\u0641\\u064a\\u0641 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>The Revlon One-Step Hair Dryer and Volumizer is a designed hot air brush to deliver gorgeous volume and brilliant shine in a single step. The unique oval brush design smooth hair while the rounded edges quickly create volume at the root and beautiful full-bodied curls at the ends in a single pass, for salon blowouts at home.<br \\/>\\r\\n<br \\/>\\r\\nFeatures:<br \\/>\\r\\n- Brush made with Nylon Pin &amp; Tufted Bristles for detangled, improved volume and control<br \\/>\\r\\n- 1100-Watt power provides just the right heat<br \\/>\\r\\n- 3 Heat\\/speed settings for styling flexibility<br \\/>\\r\\n- Built with a genuine ION generator to promote faster drying and create styles full of shinier and healthier-looking hair<br \\/>\\r\\n- Ceramic coating helps protect hair from over-styling with even heat distribution that penetrates hair quickly and dries from the inside out<br \\/>\\r\\n<br \\/>\\r\\n<br \\/>\\r\\nWarranty: 24 Months<\\/p>\\r\\n\\r\\n<p>Specifications<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0645\\u062c\\u0641\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0631\\u064a\\u0641\\u0644\\u0648\\u0646 \\u0630\\u0648 \\u0627\\u0644\\u062e\\u0637\\u0648\\u0629 \\u0627\\u0644\\u0648\\u0627\\u062d\\u062f\\u0629 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0639\\u0628\\u0627\\u0631\\u0629 \\u0639\\u0646 \\u0641\\u0631\\u0634\\u0627\\u0629 \\u0645\\u0635\\u0645\\u0645\\u0629 \\u0628\\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0644\\u062a\\u0648\\u0641\\u064a\\u0631 \\u062d\\u062c\\u0645 \\u0631\\u0627\\u0626\\u0639 \\u0648\\u0644\\u0645\\u0639\\u0627\\u0646 \\u0644\\u0627\\u0645\\u0639 \\u0641\\u064a \\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629. \\u062a\\u0635\\u0645\\u0645 \\u0627\\u0644\\u0641\\u0631\\u0634\\u0627\\u0629 \\u0627\\u0644\\u0628\\u064a\\u0636\\u0627\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0631\\u064a\\u062f\\u0629 \\u0634\\u0639\\u0631\\u064b\\u0627 \\u0646\\u0627\\u0639\\u0645\\u064b\\u0627 \\u0628\\u064a\\u0646\\u0645\\u0627 \\u062a\\u062e\\u0644\\u0642 \\u0627\\u0644\\u062d\\u0648\\u0627\\u0641 \\u0627\\u0644\\u062f\\u0627\\u0626\\u0631\\u064a\\u0629 \\u062d\\u062c\\u0645\\u064b\\u0627 \\u0633\\u0631\\u064a\\u0639\\u064b\\u0627 \\u0639\\u0646\\u062f \\u0627\\u0644\\u062c\\u0630\\u0648\\u0631 \\u0648\\u062a\\u0645\\u0648\\u062c\\u0627\\u062a \\u062c\\u0645\\u064a\\u0644\\u0629 \\u0643\\u0627\\u0645\\u0644\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0637\\u0631\\u0627\\u0641 \\u0628\\u062a\\u0645\\u0631\\u064a\\u0631\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u060c \\u0644\\u062a\\u0646\\u0641\\u062c\\u0631 \\u0627\\u0644\\u0635\\u0627\\u0644\\u0648\\u0646 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u0632\\u0644.\\r\\n<\\/pre>\"}', '{\"en\":\"One Step Hair Dryer & Volumiser\",\"ar\":\"\\u062c\\u0647\\u0627\\u0632 \\u062a\\u062c\\u0641\\u064a\\u0641 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\"}', 1, 'HC-00001841', 'RC-WOV0SP1I', NULL, NULL, NULL, 'one-step-hair-dryer-volumiser', 1, 0, 1, 1, 3, 0, '2021-06-25 06:45:54', '2021-06-25 06:45:54', NULL),
(6, '{\"en\":\"Yemak Women\'s Cropped Short Sleeve Button-down Cardigan Sweater Hb2137pl (1x-4x)\",\"ar\":\"\\u0633\\u062a\\u0631\\u0629 \\u0643\\u0627\\u0631\\u062f\\u064a\\u062c\\u0627\\u0646 \\u0646\\u0633\\u0627\\u0626\\u064a\\u0629 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0643\\u0645\\u0627\\u0645 \\u0645\\u0646 Yemak Hb2137pl (1x-4x)\"}', '13', '19', NULL, NULL, 1, '{\"en\":\"<p>14&quot;-15&quot; Crop Length, Puffed Short Sleeve, V Neck, Bolero Knit Cardigan Sweater that Hits Upper Waist Point. Fits Well in Any Occasion and High Quality Knit Cardigan. 4X - Length: 18.75 in. \\/ Shoulder: 16 in.<br \\/>\\r\\n<a href=\\\"https:\\/\\/www.qt-souq.com\\/international\\/product-details\\/4\\/v1%7C232962139272%7C532478586323#\\\">Yemak Women&#39;s Cropped Short Sleeve Button-down Cardigan Sweater Hb2137pl (1x-4x)<\\/a><\\/p>\",\"ar\":\"<pre>\\r\\n14 &quot;-15&quot; \\u0637\\u0648\\u0644 \\u0642\\u0635\\u064a\\u0631 \\u060c \\u0643\\u0645 \\u0642\\u0635\\u064a\\u0631 \\u0645\\u0646\\u062a\\u0641\\u062e \\u060c \\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 V \\u060c \\u0643\\u0646\\u0632\\u0629 \\u0635\\u0648\\u0641\\u064a\\u0629 \\u0628\\u0648\\u0644\\u064a\\u0631\\u0648 \\u0645\\u062d\\u0628\\u0648\\u0643\\u0629 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 \\u0646\\u0642\\u0637\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0631 \\u0627\\u0644\\u0639\\u0644\\u064a\\u0627. \\u064a\\u0646\\u0627\\u0633\\u0628 \\u0628\\u0634\\u0643\\u0644 \\u062c\\u064a\\u062f \\u0641\\u064a \\u0623\\u064a \\u0645\\u0646\\u0627\\u0633\\u0628\\u0629 \\u0648\\u0643\\u0627\\u0631\\u062f\\u064a\\u062c\\u0627\\u0646 \\u0645\\u062d\\u0628\\u0648\\u0643 \\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629. 4X - \\u0627\\u0644\\u0637\\u0648\\u0644: 18.75 \\u0628\\u0648\\u0635\\u0629 \\/ \\u0627\\u0644\\u0643\\u062a\\u0641: 16 \\u0628\\u0648\\u0635\\u0629.<\\/pre>\"}', '{\"en\":\"Yemak Women\'s Cropped Short Sleeve Button-down Cardigan Sweater Hb2137pl (1x-4x)\",\"ar\":\"\\u0633\\u062a\\u0631\\u0629 \\u0643\\u0627\\u0631\\u062f\\u064a\\u062c\\u0627\\u0646 \\u0646\\u0633\\u0627\\u0626\\u064a\\u0629 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0643\\u0645\\u0627\\u0645 \\u0645\\u0646 Yemak Hb2137pl (1x-4x)\"}', 1, 'HB2137PL', 'RC-KJ1S2LHR', NULL, NULL, NULL, 'yemak-womens-cropped-short-sleeve-button-down-cardigan-sweater-hb2137pl-1x-4x', 1, 1, 1, 1, 3, 0, '2021-06-25 06:49:23', '2021-07-01 07:44:01', NULL),
(8, '{\"en\":\"Professionisti Dell\'aria 6000 Blow Dryer - Black\",\"ar\":\"\\u0645\\u062c\\u0641\\u0641 \\u0627\\u0644\\u0646\\u0641\\u062e Professionisti Dell\'aria 6000 - \\u0623\\u0633\\u0648\\u062f\"}', '13', '19', NULL, NULL, 1, '{\"en\":\"<p>Description<\\/p>\\r\\n\\r\\n<p>Features:<br \\/>\\r\\n- Easy to handle<br \\/>\\r\\n- Ceramic coated grid<br \\/>\\r\\n- Cool shot button<br \\/>\\r\\n- Comes with three nozzles of different sizes<br \\/>\\r\\n- Two separate twitches for controlling heat and speed degrees<\\/p>\\r\\n\\r\\n<p><br \\/>\\r\\nWarranty :&nbsp;12 Months from date of purchase.<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0633\\u0645\\u0627\\u062a:\\r\\n- \\u0633\\u0647\\u0644 \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\\r\\n- \\u0634\\u0628\\u0643\\u0629 \\u0645\\u0637\\u0644\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0633\\u064a\\u0631\\u0627\\u0645\\u064a\\u0643\\r\\n- \\u0632\\u0631 \\u0628\\u0627\\u0631\\u062f \\u0628\\u0627\\u0644\\u0631\\u0635\\u0627\\u0635\\r\\n- \\u064a\\u0623\\u062a\\u064a \\u0628\\u062b\\u0644\\u0627\\u062b \\u0641\\u0648\\u0647\\u0627\\u062a \\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u0627\\u0644\\u0623\\u062d\\u062c\\u0627\\u0645\\r\\n- \\u0627\\u062b\\u0646\\u0627\\u0646 \\u062a\\u0634\\u0646\\u062c\\u0627\\u062a \\u0645\\u0646\\u0641\\u0635\\u0644\\u0629 \\u0644\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u062f\\u0631\\u062c\\u0627\\u062a \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0631\\u0639\\u0629\\r\\n\\r\\n\\r\\n\\u0627\\u0644\\u0636\\u0645\\u0627\\u0646: 12 \\u0634\\u0647\\u0631 \\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621.<\\/pre>\"}', '{\"en\":\"Professionisti Dell\'aria 6000 Blow Dryer - Black\",\"ar\":\"\\u0645\\u062c\\u0641\\u0641 \\u0627\\u0644\\u0646\\u0641\\u062e Professionisti Dell\'aria 6000 - \\u0623\\u0633\\u0648\\u062f\"}', 1, 'HC-00001416', 'RC-O6N7E9C2', NULL, NULL, NULL, 'professionisti-dellaria-6000-blow-dryer-black', 1, 0, 1, 1, 3, 0, '2021-06-25 07:09:39', '2021-06-25 07:09:39', NULL),
(9, '{\"en\":\"Rejuvenating Repair Shampoo - 300ml\",\"ar\":\"\\u0634\\u0627\\u0645\\u0628\\u0648 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0645\\u062c\\u062f\\u062f - 300 \\u0645\\u0644\"}', '13', '19', NULL, NULL, 1, '{\"en\":\"<p>Description<\\/p>\\r\\n\\r\\n<p>Specially designed to add moisture and protection to all hair types and is excellent for dry, damaged hair<br \\/>\\r\\n<br \\/>\\r\\nFeatures:<br \\/>\\r\\n- It gently cleanses chemically treated, damaged hair<br \\/>\\r\\n- Sulfate and paraben-free<br \\/>\\r\\n- Helps to replenish moisture with no heavy build-up<br \\/>\\r\\n- Perfectly protects from harsh daily environmental elements<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0648\\u0635\\u0641\\r\\n\\u0645\\u0635\\u0645\\u0645 \\u062e\\u0635\\u064a\\u0635\\u064b\\u0627 \\u0644\\u0625\\u0636\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 \\u0648\\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0648\\u0647\\u0648 \\u0645\\u0645\\u062a\\u0627\\u0632 \\u0644\\u0644\\u0634\\u0639\\u0631 \\u0627\\u0644\\u062c\\u0627\\u0641 \\u0648\\u0627\\u0644\\u062a\\u0627\\u0644\\u0641\\r\\n\\r\\n\\u0633\\u0645\\u0627\\u062a:\\r\\n- \\u064a\\u0646\\u0638\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0627\\u0644\\u062a\\u0627\\u0644\\u0641 \\u0648\\u0627\\u0644\\u0645\\u0639\\u0627\\u0644\\u062c \\u0643\\u064a\\u0645\\u064a\\u0627\\u0626\\u064a\\u0627\\u064b \\u0628\\u0644\\u0637\\u0641\\r\\n- \\u062e\\u0627\\u0644\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0643\\u0628\\u0631\\u064a\\u062a\\u0627\\u062a \\u0648\\u0627\\u0644\\u0628\\u0627\\u0631\\u0627\\u0628\\u064a\\u0646\\r\\n- \\u064a\\u0633\\u0627\\u0639\\u062f \\u0639\\u0644\\u0649 \\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 \\u062f\\u0648\\u0646 \\u062a\\u0631\\u0627\\u0643\\u0645\\u0627\\u062a \\u062b\\u0642\\u064a\\u0644\\u0629\\r\\n- \\u064a\\u062d\\u0645\\u064a \\u0628\\u0634\\u0643\\u0644 \\u0645\\u062b\\u0627\\u0644\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0639\\u0646\\u0627\\u0635\\u0631 \\u0627\\u0644\\u0628\\u064a\\u0626\\u064a\\u0629<\\/pre>\"}', '{\"en\":\"Rejuvenating Repair Shampoo - 300ml\",\"ar\":\"\\u0634\\u0627\\u0645\\u0628\\u0648 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0645\\u062c\\u062f\\u062f - 300 \\u0645\\u0644\"}', 1, 'HC-00001856', 'RC-1KTC5MDO', NULL, NULL, NULL, 'rejuvenating-repair-shampoo-300ml', 1, 0, 1, 1, 3, 0, '2021-06-25 07:17:54', '2021-06-25 07:17:54', NULL),
(10, '{\"en\":\"Pca Skin Hyaluronic Acid Boosting Serum 1oz \\/ 30g **exp12\\/22**new In Box**\",\"ar\":\"\\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0639\\u0632\\u0632 \\u0628\\u062d\\u0645\\u0636 \\u0627\\u0644\\u0647\\u064a\\u0627\\u0644\\u0648\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0645\\u0646 PCA 1 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 30 \\u062c\\u0645 ** exp12 \\/ 22 ** \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0639\\u0644\\u0628\\u0629 **\"}', '13', '19', NULL, NULL, 1, '{\"en\":\"<p>Plump and firm skin through increased hydration with this advanced hyaluronic acid formulation. This smoothing blend provides deep, long-lasting hydration on three levels: on the surface, deeper in the skin and by increasing the skin&rsquo;s own hyaluronic acid production.<br \\/>\\r\\n&nbsp;<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0628\\u0634\\u0631\\u0629 \\u0645\\u0645\\u062a\\u0644\\u0626\\u0629 \\u0648\\u062b\\u0627\\u0628\\u062a\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0631\\u0637\\u064a\\u0628 \\u0628\\u062a\\u0631\\u0643\\u064a\\u0628\\u0629 \\u062d\\u0645\\u0636 \\u0627\\u0644\\u0647\\u064a\\u0627\\u0644\\u0648\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\\u0629 \\u0647\\u0630\\u0647. \\u064a\\u0648\\u0641\\u0631 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0632\\u064a\\u062c \\u0627\\u0644\\u0645\\u0646\\u0639\\u0645 \\u062a\\u0631\\u0637\\u064a\\u0628\\u064b\\u0627 \\u0639\\u0645\\u064a\\u0642\\u064b\\u0627 \\u0648\\u0637\\u0648\\u064a\\u0644 \\u0627\\u0644\\u0623\\u0645\\u062f \\u0639\\u0644\\u0649 \\u062b\\u0644\\u0627\\u062b\\u0629 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0637\\u062d \\u060c \\u0648\\u0623\\u0639\\u0645\\u0642 \\u0641\\u064a \\u0627\\u0644\\u062c\\u0644\\u062f \\u0648\\u0639\\u0646 \\u0637\\u0631\\u064a\\u0642 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0625\\u0646\\u062a\\u0627\\u062c \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0644\\u062d\\u0645\\u0636 \\u0627\\u0644\\u0647\\u064a\\u0627\\u0644\\u0648\\u0631\\u0648\\u0646\\u064a\\u0643.<\\/pre>\"}', '{\"en\":\"Pca Skin Hyaluronic Acid Boosting Serum 1oz \\/ 30g **exp12\\/22**new In Box**\",\"ar\":\"\\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0639\\u0632\\u0632 \\u0628\\u062d\\u0645\\u0636 \\u0627\\u0644\\u0647\\u064a\\u0627\\u0644\\u0648\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0645\\u0646 PCA 1 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 30 \\u062c\\u0645 ** exp12 \\/ 22 ** \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0639\\u0644\\u0628\\u0629 **\"}', 1, 'HCK100244', 'RC-GNR29C63', NULL, NULL, NULL, 'pca-skin-hyaluronic-acid-boosting-serum-1oz-30g-exp1222new-in-box', 1, 0, 1, 1, 3, 0, '2021-06-25 07:22:03', '2021-06-25 07:22:03', NULL),
(11, '{\"en\":\"Osmosis Rescue Epidermal Repair Serum 1 Oz - New In Box\",\"ar\":\"\\u0645\\u0635\\u0644 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062a\\u0646\\u0627\\u0636\\u062d \\u0648\\u0627\\u0644\\u0625\\u0646\\u0642\\u0627\\u0630 1 \\u0623\\u0648\\u0646\\u0635\\u0629 - \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u062f\\u0648\\u0642\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>Osmosis Rescue Epidermal Repair Serum. Order Processing Orders are processed within 24 hours of the order being placed. You may also be interested in.<br \\/>\\r\\n&nbsp;<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0645\\u0635\\u0644 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062a\\u0646\\u0627\\u0636\\u062d \\u0648\\u0627\\u0644\\u0625\\u0646\\u0642\\u0627\\u0630. \\u062a\\u062a\\u0645 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0637\\u0644\\u0628\\u0627\\u062a \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a \\u0641\\u064a \\u063a\\u0636\\u0648\\u0646 24 \\u0633\\u0627\\u0639\\u0629 \\u0645\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628. \\u0642\\u062f \\u062a\\u0643\\u0648\\u0646 \\u0623\\u064a\\u0636\\u0627 \\u0645\\u0647\\u062a\\u0645\\u0627 \\u0628.<\\/pre>\"}', '{\"en\":\"Osmosis Rescue Epidermal Repair Serum 1 Oz - New In Box\",\"ar\":\"\\u0645\\u0635\\u0644 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062a\\u0646\\u0627\\u0636\\u062d \\u0648\\u0627\\u0644\\u0625\\u0646\\u0642\\u0627\\u0630 1 \\u0623\\u0648\\u0646\\u0635\\u0629 - \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u062f\\u0648\\u0642\"}', 1, 'HCN109984', 'RC-RPC2X968', NULL, NULL, NULL, 'osmosis-rescue-epidermal-repair-serum-1-oz-new-in-box', 1, 0, 1, 1, 3, 0, '2021-06-25 07:24:51', '2021-06-25 07:24:51', NULL),
(12, '{\"en\":\"6in1 Ultrasonic Cavitation Fat Remover Anti-cellulite Body Slimming Machine Gel\",\"ar\":\"6in1 \\u0628\\u0627\\u0644\\u0645\\u0648\\u062c\\u0627\\u062a \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0648\\u064a\\u0641 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0647\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0636\\u0627\\u062f\\u0629 \\u0644\\u0644\\u0633\\u064a\\u0644\\u0648\\u0644\\u064a\\u062a \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 \\u0622\\u0644\\u0629 \\u062c\\u0644\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>Black\\/White 6IN1 Slimming Machine. 3 in 1 Ultrasonic Cavitation Fat Remover Body Massage Slimming Anti-Cellulite Device.<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0622\\u0644\\u0629 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 6IN1 \\u0623\\u0633\\u0648\\u062f \\/ \\u0623\\u0628\\u064a\\u0636. 3 \\u0641\\u064a 1 \\u0628\\u0627\\u0644\\u0645\\u0648\\u062c\\u0627\\u062a \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0648\\u064a\\u0641 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0647\\u0648\\u0646 \\u062a\\u062f\\u0644\\u064a\\u0643 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 \\u062c\\u0647\\u0627\\u0632 \\u0645\\u0643\\u0627\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0633\\u064a\\u0644\\u0648\\u0644\\u064a\\u062a.<\\/pre>\"}', '{\"en\":\"6in1 Ultrasonic Cavitation Fat Remover Anti-cellulite Body Slimming Machine Gel\",\"ar\":\"6in1 \\u0628\\u0627\\u0644\\u0645\\u0648\\u062c\\u0627\\u062a \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0648\\u064a\\u0641 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0647\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0636\\u0627\\u062f\\u0629 \\u0644\\u0644\\u0633\\u064a\\u0644\\u0648\\u0644\\u064a\\u062a \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 \\u0622\\u0644\\u0629 \\u062c\\u0644\"}', 1, 'HCN1094845', 'RC-O9CJDP3L', NULL, NULL, NULL, '6in1-ultrasonic-cavitation-fat-remover-anti-cellulite-body-slimming-machine-gel', 1, 0, 1, 1, 3, 0, '2021-06-25 07:27:31', '2021-06-25 07:27:31', NULL),
(13, '{\"en\":\"New Westmore Beauty Body Coverage Perfector Golden Radiance 3.5 Oz Sealed\",\"ar\":\"\\u062a\\u063a\\u0637\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u0648\\u064a\\u0633\\u062a\\u0645\\u0648\\u0631 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0628\\u064a\\u0631\\u0641\\u064a\\u0643\\u062a\\u0648\\u0631 \\u062c\\u0648\\u0644\\u062f\\u0646 \\u0631\\u0627\\u062f\\u064a\\u0627\\u0646\\u0633 3.5 \\u0623\\u0648\\u0646\\u0635\\u0629 \\u0645\\u062e\\u062a\\u0648\\u0645\\u0629\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>New Westmore Beauty Body Coverage Perfector Golden Radiance 3.5 Oz Sealed<\\/p>\",\"ar\":\"<p>\\u062a\\u063a\\u0637\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u0648\\u064a\\u0633\\u062a\\u0645\\u0648\\u0631 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0628\\u064a\\u0631\\u0641\\u064a\\u0643\\u062a\\u0648\\u0631 \\u062c\\u0648\\u0644\\u062f\\u0646 \\u0631\\u0627\\u062f\\u064a\\u0627\\u0646\\u0633 3.5 \\u0623\\u0648\\u0646\\u0635\\u0629 \\u0645\\u062e\\u062a\\u0648\\u0645\\u0629<\\/p>\"}', '{\"en\":\"New Westmore Beauty Body Coverage Perfector Golden Radiance 3.5 Oz Sealed\",\"ar\":\"\\u062a\\u063a\\u0637\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u0648\\u064a\\u0633\\u062a\\u0645\\u0648\\u0631 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0628\\u064a\\u0631\\u0641\\u064a\\u0643\\u062a\\u0648\\u0631 \\u062c\\u0648\\u0644\\u062f\\u0646 \\u0631\\u0627\\u062f\\u064a\\u0627\\u0646\\u0633 3.5 \\u0623\\u0648\\u0646\\u0635\\u0629 \\u0645\\u062e\\u062a\\u0648\\u0645\\u0629\"}', 1, 'PHN1094853', 'RC-9KYB0QAO', NULL, NULL, NULL, 'new-westmore-beauty-body-coverage-perfector-golden-radiance-35-oz-sealed', 1, 0, 1, 1, 3, 0, '2021-06-25 07:29:51', '2021-06-25 07:29:51', NULL),
(14, '{\"en\":\"Skinmedica Lytera 2.0 Pigment Correcting Facial Serum 2 Oz\\/ 60ml Sealed New\",\"ar\":\"Skinmedica Lytera 2.0 \\u0645\\u0635\\u0644 \\u062a\\u0635\\u062d\\u064a\\u062d \\u0627\\u0644\\u0635\\u0628\\u0627\\u063a \\u0644\\u0644\\u0648\\u062c\\u0647 2 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 60 \\u0645\\u0644 \\u0645\\u062e\\u062a\\u0648\\u0645 \\u062c\\u062f\\u064a\\u062f\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>WHAT IS LYTERA(R) 2.0?. Lytera2.0 can be applied to the entire face, neck, chest, or other affected areas.<br \\/>\\r\\n&nbsp;<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 LYTERA (R) 2.0 \\u061f. \\u064a\\u0645\\u0643\\u0646 \\u062a\\u0637\\u0628\\u064a\\u0642 Lytera2.0 \\u0639\\u0644\\u0649 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0648\\u062c\\u0647 \\u0623\\u0648 \\u0627\\u0644\\u0631\\u0642\\u0628\\u0629 \\u0623\\u0648 \\u0627\\u0644\\u0635\\u062f\\u0631 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u0646\\u0627\\u0637\\u0642 \\u0627\\u0644\\u0645\\u0635\\u0627\\u0628\\u0629 \\u0627\\u0644\\u0623\\u062e\\u0631\\u0649.<\\/pre>\"}', '{\"en\":\"Skinmedica Lytera 2.0 Pigment Correcting Facial Serum 2 Oz\\/ 60ml Sealed New\",\"ar\":\"Skinmedica Lytera 2.0 \\u0645\\u0635\\u0644 \\u062a\\u0635\\u062d\\u064a\\u062d \\u0627\\u0644\\u0635\\u0628\\u0627\\u063a \\u0644\\u0644\\u0648\\u062c\\u0647 2 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 60 \\u0645\\u0644 \\u0645\\u062e\\u062a\\u0648\\u0645 \\u062c\\u062f\\u064a\\u062f\"}', 1, 'PHN900284', 'RC-1KRMAFZ6', NULL, NULL, NULL, 'skinmedica-lytera-20-pigment-correcting-facial-serum-2-oz-60ml-sealed-new', 1, 0, 1, 1, 3, 0, '2021-06-25 07:46:48', '2021-06-25 07:46:49', NULL),
(15, '{\"en\":\"*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml\",\"ar\":\"*** \\u0631\\u0648\\u062f\\u0627\\u0646 \\u0623\\u0646\\u062f + \\u0641\\u064a\\u0644\\u062f \\u0644\\u0627\\u0634 \\u0628\\u0648\\u0633\\u062a \\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0644\\u0631\\u0645\\u0648\\u0634 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0645\\u062e\\u062a\\u0648\\u0645 5 \\u0645\\u0644\"}', '13', '19', NULL, NULL, 2, '{\"en\":\"<p>*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml<\\/p>\",\"ar\":\"<pre>\\r\\n*** \\u0631\\u0648\\u062f\\u0627\\u0646 \\u0623\\u0646\\u062f + \\u0641\\u064a\\u0644\\u062f \\u0644\\u0627\\u0634 \\u0628\\u0648\\u0633\\u062a \\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0644\\u0631\\u0645\\u0648\\u0634 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0645\\u062e\\u062a\\u0648\\u0645 5 \\u0645\\u0644<\\/pre>\"}', '{\"en\":\"*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml\",\"ar\":\"*** \\u0631\\u0648\\u062f\\u0627\\u0646 \\u0623\\u0646\\u062f + \\u0641\\u064a\\u0644\\u062f \\u0644\\u0627\\u0634 \\u0628\\u0648\\u0633\\u062a \\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0644\\u0631\\u0645\\u0648\\u0634 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0645\\u062e\\u062a\\u0648\\u0645 5 \\u0645\\u0644\"}', 1, 'HCN01948555', 'RC-OPKW0ETN', NULL, NULL, NULL, 'rodan-and-field-lash-boost-eyelash-conditioning-serum-new-sealed-5-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 07:49:17', '2021-06-25 07:49:17', NULL);
INSERT INTO `items` (`id`, `item_name`, `category_id`, `sub_category_id`, `sec_subcategory_id`, `third_category_id`, `brand_id`, `item_description`, `item_summary`, `item_group`, `item_sku`, `item_rcin`, `meta_title`, `meta_description`, `meta_keywords`, `slug`, `is_inventory_track`, `is_variants`, `is_active`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, '{\"en\":\"Yardley London Hair Cream (150Ml)\",\"ar\":\"Yardley London Hair Cream (150Ml)\"}', '1', '2', NULL, NULL, 2, '{\"en\":\"<h1>Yardley London Hair Cream (150Ml)<\\/h1>\",\"ar\":\"<pre>\\r\\n\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u064a\\u0627\\u0631\\u062f\\u0644\\u064a \\u0644\\u0646\\u062f\\u0646 (150 \\u0645\\u0644)<\\/pre>\"}', '{\"en\":\"Yardley London Hair Cream (150Ml)\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u064a\\u0627\\u0631\\u062f\\u0644\\u064a \\u0644\\u0646\\u062f\\u0646 (150 \\u0645\\u0644)\"}', 2, 'SKU199385', 'RC-IJ3G2YBK', NULL, NULL, NULL, 'yardley-london-hair-cream-150ml', 1, 0, 1, 1, 3, 0, '2021-06-25 08:31:24', '2021-06-25 09:23:44', NULL),
(17, '{\"en\":\"Karis Naturals Beauty Cream (21ml)\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u0643\\u0627\\u0631\\u064a\\u0633 \\u0646\\u0627\\u062a\\u0634\\u0648\\u0631\\u0627\\u0644\\u0632 (21\\u0645\\u0644)\"}', '1', '3', NULL, NULL, 2, '{\"en\":\"<p>Best Price* &nbsp;\\u20b9 1,720.00<br \\/>\\r\\n(Inclusive of all taxes)<br \\/>\\r\\n* Mkt: Abbott Healthcare Pvt. Ltd.<br \\/>\\r\\n* Country of Origin: France<br \\/>\\r\\n* Delivery charges if applicable will be applied at checkout<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0623\\u0641\\u0636\\u0644 \\u0633\\u0639\\u0631 * \\u0631.\\u0633. 1720.00<\\/pre>\\r\\n\\r\\n<pre>\\r\\n(\\u0634\\u0627\\u0645\\u0644\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0636\\u0631\\u0627\\u0626\\u0628)\\r\\n* Mkt: \\u0634\\u0631\\u0643\\u0629 \\u0623\\u0628\\u0648\\u062a \\u0644\\u0644\\u0631\\u0639\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0635\\u062d\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0646\\u062f\\u064a. \\u0627\\u0644\\u0645\\u062d\\u062f\\u0648\\u062f\\u0629.\\r\\n* \\u0628\\u0644\\u062f \\u0627\\u0644\\u0645\\u0646\\u0634\\u0623: \\u0641\\u0631\\u0646\\u0633\\u0627\\r\\n* \\u0633\\u064a\\u062a\\u0645 \\u062a\\u0637\\u0628\\u064a\\u0642 \\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u060c \\u0625\\u0646 \\u0648\\u062c<\\/pre>\"}', '{\"en\":\"Best Seller,\",\"ar\":\"\\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0645\\u0628\\u064a\\u0639\\u0627\\u060c\"}', 2, 'SKUAF2', 'RC-D4M7VX6G', NULL, NULL, NULL, 'karis-naturals-beauty-cream-21ml', 1, 0, 1, 1, 3, 0, '2021-06-25 08:38:48', '2021-06-25 09:24:08', NULL),
(18, '{\"en\":\"Kamill Skin Cream 150 Ml Rich Care & Intensive\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0643\\u0627\\u0645\\u064a\\u0644 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 150 \\u0645\\u0644 \\u0639\\u0646\\u0627\\u064a\\u0629 \\u063a\\u0646\\u064a\\u0629 \\u0648\\u0645\\u0643\\u062b\\u0641\\u0629\"}', '1', '3', NULL, NULL, 1, '{\"en\":\"<p>Kamill Skin Cream 150 Ml Rich Care &amp; Intensive<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0643\\u0631\\u064a\\u0645 \\u0643\\u0627\\u0645\\u064a\\u0644 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 150 \\u0645\\u0644 \\u0639\\u0646\\u0627\\u064a\\u0629 \\u063a\\u0646\\u064a\\u0629 \\u0648\\u0645\\u0643\\u062b\\u0641\\u0629<\\/pre>\"}', '{\"en\":\"Kamill Skin Cream 150 Ml Rich Care & Intensive\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0643\\u0627\\u0645\\u064a\\u0644 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 150 \\u0645\\u0644 \\u0639\\u0646\\u0627\\u064a\\u0629 \\u063a\\u0646\\u064a\\u0629 \\u0648\\u0645\\u0643\\u062b\\u0641\\u0629\"}', 2, 'SKUAF239', 'RC-EW53I8KN', NULL, NULL, NULL, 'kamill-skin-cream-150-ml-rich-care-intensive', 1, 0, 1, 1, 3, 0, '2021-06-25 09:05:06', '2021-06-25 09:24:35', NULL),
(19, '{\"en\":\"Enchanteur Moisturizing Cream Asstd\",\"ar\":\"\\u0627\\u0646\\u0634\\u0627\\u0646\\u062a\\u0631 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0631\\u0637\\u0628 Asstd\"}', '1', '3', NULL, NULL, 1, '{\"en\":\"<p>Enchanteur Moisturizing Cream Asstd<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0627\\u0646\\u0634\\u0627\\u0646\\u062a\\u0631 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0631\\u0637\\u0628 Asstd<\\/pre>\"}', '{\"en\":\"Enchanteur Moisturizing Cream Asstd\",\"ar\":\"\\u0627\\u0646\\u0634\\u0627\\u0646\\u062a\\u0631 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0631\\u0637\\u0628 Asstd\"}', 2, 'AF124', 'RC-YA8SRJZE', NULL, NULL, NULL, 'enchanteur-moisturizing-cream-asstd', 1, 0, 1, 1, 3, 0, '2021-06-25 09:12:25', '2021-06-25 09:25:00', NULL),
(20, '{\"en\":\"Fusion Hair Spray (265Ml)\",\"ar\":\"\\u0641\\u064a\\u0648\\u062c\\u0646 \\u0628\\u062e\\u0627\\u062e \\u0644\\u0644\\u0634\\u0639\\u0631 (265 \\u0645\\u0644)\"}', '1', '2', NULL, NULL, 1, '{\"en\":\"<p>Fusion Hair Spray (265Ml)<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0641\\u064a\\u0648\\u062c\\u0646 \\u0628\\u062e\\u0627\\u062e \\u0644\\u0644\\u0634\\u0639\\u0631 (265 \\u0645\\u0644)<\\/pre>\"}', '{\"en\":\"Fusion Hair Spray (265Ml)\",\"ar\":\"\\u0641\\u064a\\u0648\\u062c\\u0646 \\u0628\\u062e\\u0627\\u062e \\u0644\\u0644\\u0634\\u0639\\u0631 (265 \\u0645\\u0644)\"}', 2, 'AF1003', 'RC-QKX8IVCM', NULL, NULL, NULL, 'fusion-hair-spray-265ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:15:00', '2021-06-25 09:25:20', NULL),
(21, '{\"en\":\"Elegance Brilliant Hair Cream 250 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u064a\\u062c\\u0627\\u0646\\u0633 \\u0628\\u0631\\u064a\\u0644\\u064a\\u0627\\u0646\\u062a \\u0644\\u0644\\u0634\\u0639\\u0631 250 \\u0645\\u0644\"}', '1', '2', NULL, NULL, 2, '{\"en\":\"<h1>Elegance Brilliant Hair Cream 250 Ml<\\/h1>\",\"ar\":\"<pre>\\r\\n\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u064a\\u062c\\u0627\\u0646\\u0633 \\u0628\\u0631\\u064a\\u0644\\u064a\\u0627\\u0646\\u062a \\u0644\\u0644\\u0634\\u0639\\u0631 250 \\u0645\\u0644<\\/pre>\"}', '{\"en\":\"Elegance Brilliant Hair Cream 250 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u064a\\u062c\\u0627\\u0646\\u0633 \\u0628\\u0631\\u064a\\u0644\\u064a\\u0627\\u0646\\u062a \\u0644\\u0644\\u0634\\u0639\\u0631 250 \\u0645\\u0644\"}', 2, 'AF81', 'RC-F8DJ0TQ9', NULL, NULL, NULL, 'elegance-brilliant-hair-cream-250-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:16:56', '2021-06-25 09:25:48', NULL),
(22, '{\"en\":\"Yoko Multi Purpose Aloe Gel 300 Ml\",\"ar\":\"\\u064a\\u0648\\u0643\\u0648 \\u062c\\u0644 \\u0627\\u0644\\u0635\\u0628\\u0627\\u0631 \\u0645\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u063a\\u0631\\u0627\\u0636 300 \\u0645\\u0644\"}', '1', '3', NULL, NULL, 1, '{\"en\":\"<p>Yoko Multi Purpose Aloe Gel 300 Ml<\\/p>\",\"ar\":\"<pre>\\r\\n\\u064a\\u0648\\u0643\\u0648 \\u062c\\u0644 \\u0627\\u0644\\u0635\\u0628\\u0627\\u0631 \\u0645\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u063a\\u0631\\u0627\\u0636 300 \\u0645\\u0644<\\/pre>\"}', '{\"en\":\"Yoko Multi Purpose Aloe Gel 300 Ml\",\"ar\":\"\\u064a\\u0648\\u0643\\u0648 \\u062c\\u0644 \\u0627\\u0644\\u0635\\u0628\\u0627\\u0631 \\u0645\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u063a\\u0631\\u0627\\u0636 300 \\u0645\\u0644\"}', 2, 'AF84', 'RC-60Q1JVZH', NULL, NULL, NULL, 'yoko-multi-purpose-aloe-gel-300-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:20:16', '2021-06-25 09:26:04', NULL),
(23, '{\"en\":\"Dove Beauty Cream 75 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u062f\\u0648\\u0641 75 \\u0645\\u0644\"}', '1', '3', NULL, NULL, 2, '{\"en\":\"<p>Dove Beauty Cream 75 Ml<br \\/>\\r\\n&nbsp;<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u062f\\u0648\\u0641 75 \\u0645\\u0644<\\/pre>\"}', '{\"en\":\"Dove Beauty Cream 75 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u062f\\u0648\\u0641 75 \\u0645\\u0644\"}', 2, 'AF42', 'RC-JOTI3GEX', NULL, NULL, NULL, 'dove-beauty-cream-75-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:23:18', '2021-06-25 09:23:18', NULL),
(24, '{\"en\":\"Aichun Beauty Black Mask (120 Ml)\",\"ar\":\"\\u0642\\u0646\\u0627\\u0639 \\u0622\\u064a\\u062a\\u0634\\u0646 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f (120 \\u0645\\u0644)\"}', '1', '3', NULL, NULL, 2, '{\"en\":\"<p>Aichun Beauty Black Mask (120 Ml)<br \\/>\\r\\n&nbsp;<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0642\\u0646\\u0627\\u0639 \\u0622\\u064a\\u062a\\u0634\\u0646 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f (120 \\u0645\\u0644)<\\/pre>\"}', '{\"en\":\"Aichun Beauty Black Mask (120 Ml)\",\"ar\":\"\\u0642\\u0646\\u0627\\u0639 \\u0622\\u064a\\u062a\\u0634\\u0646 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f (120 \\u0645\\u0644)\"}', 2, 'AF25', 'RC-5OJ8MG9A', NULL, NULL, NULL, 'aichun-beauty-black-mask-120-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:28:20', '2021-06-25 09:28:20', NULL),
(25, '{\"en\":\"Silka Green Papaya Deodrant 40 Ml\",\"ar\":\"\\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0631\\u0642 \\u0633\\u064a\\u0644\\u0643\\u0627 \\u062c\\u0631\\u064a\\u0646 \\u0628\\u0627\\u0628\\u0627\\u064a\\u0627 40 \\u0645\\u0644\"}', '1', '3', NULL, NULL, 1, '{\"en\":\"<p>Silka Green Papaya Deodrant 40 Ml<\\/p>\",\"ar\":\"<pre>\\r\\n\\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0631\\u0642 \\u0633\\u064a\\u0644\\u0643\\u0627 \\u062c\\u0631\\u064a\\u0646 \\u0628\\u0627\\u0628\\u0627\\u064a\\u0627 40 \\u0645\\u0644<\\/pre>\"}', '{\"en\":\"Silka Green Papaya Deodrant 40 Ml\",\"ar\":\"\\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0631\\u0642 \\u0633\\u064a\\u0644\\u0643\\u0627 \\u062c\\u0631\\u064a\\u0646 \\u0628\\u0627\\u0628\\u0627\\u064a\\u0627 40 \\u0645\\u0644\"}', 2, 'AF281', 'RC-OHTSD47M', NULL, NULL, NULL, 'silka-green-papaya-deodrant-40-ml', 1, 0, 1, 1, 3, 0, '2021-06-25 09:30:54', '2021-06-25 09:30:54', NULL),
(26, '{\"en\":\"Braun Men Shaver Series 3 300s Black\",\"ar\":\"\\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u0628\\u0631\\u0627\\u0648\\u0646 \\u0644\\u0644\\u0631\\u062c\\u0627\\u0644 \\u0633\\u064a\\u0631\\u064a\\u0632 3300 \\u060c \\u0623\\u0633\\u0648\\u062f\"}', '1', '2', '21', NULL, 3, '{\"en\":\"<p>Product Type: Trimmer<\\/p>\\r\\n\\r\\n<p>Ideal For: men<\\/p>\\r\\n\\r\\n<p>Delivered within 3-5 Working Days&nbsp;<\\/p>\",\"ar\":\"<p>\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c: \\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062a\\u0634\\u0630\\u064a\\u0628<\\/p>\\r\\n\\r\\n<p>\\u0645\\u062b\\u0627\\u0644\\u064a \\u0644\\u0640: \\u0627\\u0644\\u0631\\u062c\\u0627\\u0644<\\/p>\\r\\n\\r\\n<p>\\u0633\\u0644\\u0645\\u062a \\u0641\\u064a \\u063a\\u0636\\u0648\\u0646 3-5 \\u0623\\u064a\\u0627\\u0645 \\u0639\\u0645\\u0644<\\/p>\"}', '{\"en\":\"Product Type: Trimmer\",\"ar\":\"\\u0646\\u0648\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c: \\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062a\\u0634\\u0630\\u064a\\u0628\"}', 1, 'Dummy001', 'RC-PWXGY7AT', 'Braun Men Shaver Series 3 300s Black', 'Braun Men Shaver Series 3 300s Black', 'Braun Men Shaver Series 3 300s Black', 'braun-men-shaver-series-3-300s-black', 1, 0, 1, 1, 3, 0, '2021-06-28 03:19:27', '2021-06-28 03:19:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_attributes`
--

CREATE TABLE `item_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_rcin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_rcin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_type` int(11) DEFAULT 0 COMMENT '0 - Parent, 1 - Child',
  `attr_type_id` int(11) DEFAULT 0,
  `attribute_type` int(11) DEFAULT 0 COMMENT '0 - Text, 1 - Color, 2 - Image',
  `attribute_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_attributes`
--

INSERT INTO `item_attributes` (`id`, `item_id`, `item_rcin`, `variant_rcin`, `variant_name`, `variant_type`, `attr_type_id`, `attribute_type`, `attribute_value`, `status`, `modified_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'RC-Q50O4NV6', 'RC-RC-Q50O4NV6-CJLTGV84', '{\"en\":\"Test Product\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\"}', 0, 0, 0, NULL, 1, 3, '2021-05-30 05:47:00', '2021-05-30 05:47:00', NULL),
(2, 1, 'RC-Q50O4NV6', 'RC-RC-Q50O4NV6-DN13IH5F', '{\"en\":\"White with golden border\",\"ar\":\"\\u0623\\u0628\\u064a\\u0636 \\u0628\\u062d\\u062f\\u0648\\u062f \\u0630\\u0647\\u0628\\u064a\\u0629\"}', 1, 2, 2, '#c17025', 1, 3, '2021-05-30 05:58:28', '2021-07-01 08:30:54', NULL),
(3, 1, 'RC-Q50O4NV6', 'RC-RC-Q50O4NV6-QC6P5ZTB', '{\"en\":\"Red with golden borders\",\"ar\":\"\\u0623\\u062d\\u0645\\u0631 \\u0645\\u0639 \\u0625\\u0637\\u0627\\u0631 \\u0630\\u0647\\u0628\\u064a\"}', 1, 2, 2, '#b30909', 1, 3, '2021-05-30 05:58:28', '2021-07-01 08:30:41', NULL),
(4, 1, 'RC-Q50O4NV6', 'RC-RC-Q50O4NV6-1O9XL05R', '{\"en\":\"Testing test\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', 1, 1, 0, 'S', 0, 3, '2021-05-31 03:23:43', '2021-07-13 11:59:02', NULL),
(5, 2, 'RC-WC4T5Y3A', 'RC-RC-WC4T5Y3A-SLZKH2PE', '{\"en\":\"Test Product Without Variant\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0628\\u062f\\u0648\\u0646 \\u0645\\u062a\\u063a\\u064a\\u0631\"}', 0, 0, 0, NULL, 1, 3, '2021-05-31 07:53:15', '2021-05-31 07:53:15', NULL),
(6, 3, 'RC-6Z5LQAGK', 'RC-6Z5LQAGK-VMPLNBFR', '{\"en\":\"Sample Service\",\"ar\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u064a\\u0646\\u0629\"}', 0, 0, 0, NULL, 1, 3, '2021-06-10 03:01:57', '2021-06-10 03:01:57', NULL),
(8, 5, 'RC-WOV0SP1I', 'RC-WOV0SP1I-1DPGENQK', '{\"en\":\"One Step Hair Dryer & Volumiser\",\"ar\":\"\\u062c\\u0647\\u0627\\u0632 \\u062a\\u062c\\u0641\\u064a\\u0641 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 06:45:54', '2021-06-25 06:45:54', NULL),
(9, 6, 'RC-KJ1S2LHR', 'RC-KJ1S2LHR-FAP8X1NZ', '{\"en\":\"Yemak Women\'s Cropped Short Sleeve Button-down Cardigan Sweater Hb2137pl (1x-4x)\",\"ar\":\"\\u0633\\u062a\\u0631\\u0629 \\u0643\\u0627\\u0631\\u062f\\u064a\\u062c\\u0627\\u0646 \\u0646\\u0633\\u0627\\u0626\\u064a\\u0629 \\u0642\\u0635\\u064a\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0643\\u0645\\u0627\\u0645 \\u0645\\u0646 Yemak Hb2137pl (1x-4x)\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 06:49:23', '2021-06-25 06:49:23', NULL),
(10, 8, 'RC-O6N7E9C2', 'RC-O6N7E9C2-64GFZ1RS', '{\"en\":\"Professionisti Dell\'aria 6000 Blow Dryer - Black\",\"ar\":\"\\u0645\\u062c\\u0641\\u0641 \\u0627\\u0644\\u0646\\u0641\\u062e Professionisti Dell\'aria 6000 - \\u0623\\u0633\\u0648\\u062f\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:09:39', '2021-06-25 07:09:39', NULL),
(11, 9, 'RC-1KTC5MDO', 'RC-1KTC5MDO-4JK5ZD8R', '{\"en\":\"Rejuvenating Repair Shampoo - 300ml\",\"ar\":\"\\u0634\\u0627\\u0645\\u0628\\u0648 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0645\\u062c\\u062f\\u062f - 300 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:17:54', '2021-06-25 07:17:54', NULL),
(12, 10, 'RC-GNR29C63', 'RC-GNR29C63-NHXWMZ27', '{\"en\":\"Pca Skin Hyaluronic Acid Boosting Serum 1oz \\/ 30g **exp12\\/22**new In Box**\",\"ar\":\"\\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0639\\u0632\\u0632 \\u0628\\u062d\\u0645\\u0636 \\u0627\\u0644\\u0647\\u064a\\u0627\\u0644\\u0648\\u0631\\u0648\\u0646\\u064a\\u0643 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0645\\u0646 PCA 1 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 30 \\u062c\\u0645 ** exp12 \\/ 22 ** \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0639\\u0644\\u0628\\u0629 **\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:22:04', '2021-06-25 07:22:04', NULL),
(13, 11, 'RC-RPC2X968', 'RC-RPC2X968-1MTQWLAP', '{\"en\":\"Osmosis Rescue Epidermal Repair Serum 1 Oz - New In Box\",\"ar\":\"\\u0645\\u0635\\u0644 \\u0625\\u0635\\u0644\\u0627\\u062d \\u0627\\u0644\\u0628\\u0634\\u0631\\u0629 \\u0628\\u0627\\u0644\\u062a\\u0646\\u0627\\u0636\\u062d \\u0648\\u0627\\u0644\\u0625\\u0646\\u0642\\u0627\\u0630 1 \\u0623\\u0648\\u0646\\u0635\\u0629 - \\u062c\\u062f\\u064a\\u062f \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u062f\\u0648\\u0642\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:24:51', '2021-06-25 07:24:51', NULL),
(14, 12, 'RC-O9CJDP3L', 'RC-O9CJDP3L-HFM8EKRG', '{\"en\":\"6in1 Ultrasonic Cavitation Fat Remover Anti-cellulite Body Slimming Machine Gel\",\"ar\":\"6in1 \\u0628\\u0627\\u0644\\u0645\\u0648\\u062c\\u0627\\u062a \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0648\\u064a\\u0641 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0647\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0636\\u0627\\u062f\\u0629 \\u0644\\u0644\\u0633\\u064a\\u0644\\u0648\\u0644\\u064a\\u062a \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 \\u0622\\u0644\\u0629 \\u062c\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:27:31', '2021-06-25 07:27:31', NULL),
(15, 13, 'RC-9KYB0QAO', 'RC-9KYB0QAO-JY3DVK8F', '{\"en\":\"New Westmore Beauty Body Coverage Perfector Golden Radiance 3.5 Oz Sealed\",\"ar\":\"\\u062a\\u063a\\u0637\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u0648\\u064a\\u0633\\u062a\\u0645\\u0648\\u0631 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0628\\u064a\\u0631\\u0641\\u064a\\u0643\\u062a\\u0648\\u0631 \\u062c\\u0648\\u0644\\u062f\\u0646 \\u0631\\u0627\\u062f\\u064a\\u0627\\u0646\\u0633 3.5 \\u0623\\u0648\\u0646\\u0635\\u0629 \\u0645\\u062e\\u062a\\u0648\\u0645\\u0629\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:29:52', '2021-06-25 07:29:52', NULL),
(16, 14, 'RC-1KRMAFZ6', 'RC-1KRMAFZ6-S5A39XQO', '{\"en\":\"Skinmedica Lytera 2.0 Pigment Correcting Facial Serum 2 Oz\\/ 60ml Sealed New\",\"ar\":\"Skinmedica Lytera 2.0 \\u0645\\u0635\\u0644 \\u062a\\u0635\\u062d\\u064a\\u062d \\u0627\\u0644\\u0635\\u0628\\u0627\\u063a \\u0644\\u0644\\u0648\\u062c\\u0647 2 \\u0623\\u0648\\u0646\\u0635\\u0629 \\/ 60 \\u0645\\u0644 \\u0645\\u062e\\u062a\\u0648\\u0645 \\u062c\\u062f\\u064a\\u062f\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:46:49', '2021-06-25 07:46:49', NULL),
(17, 15, 'RC-OPKW0ETN', 'RC-OPKW0ETN-QX8AODR7', '{\"en\":\"*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml\",\"ar\":\"*** \\u0631\\u0648\\u062f\\u0627\\u0646 \\u0623\\u0646\\u062f + \\u0641\\u064a\\u0644\\u062f \\u0644\\u0627\\u0634 \\u0628\\u0648\\u0633\\u062a \\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0644\\u0631\\u0645\\u0648\\u0634 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0645\\u062e\\u062a\\u0648\\u0645 5 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 07:49:17', '2021-06-25 07:49:17', NULL),
(18, 16, 'RC-IJ3G2YBK', 'RC-IJ3G2YBK-TA5CPFHV', '{\"en\":\"Yardley London Hair Cream (150Ml)\",\"ar\":\"Yardley London Hair Cream (150Ml)\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 08:31:24', '2021-06-25 08:31:24', NULL),
(19, 17, 'RC-D4M7VX6G', 'RC-D4M7VX6G-F5KE8ZQM', '{\"en\":\"Karis Naturals Beauty Cream (21ml)\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u0643\\u0627\\u0631\\u064a\\u0633 \\u0646\\u0627\\u062a\\u0634\\u0648\\u0631\\u0627\\u0644\\u0632 (21\\u0645\\u0644)\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 08:38:48', '2021-06-25 08:38:48', NULL),
(20, 18, 'RC-EW53I8KN', 'RC-EW53I8KN-L0B82EPN', '{\"en\":\"Kamill Skin Cream 150 Ml Rich Care & Intensive\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0643\\u0627\\u0645\\u064a\\u0644 \\u0644\\u0644\\u0628\\u0634\\u0631\\u0629 150 \\u0645\\u0644 \\u0639\\u0646\\u0627\\u064a\\u0629 \\u063a\\u0646\\u064a\\u0629 \\u0648\\u0645\\u0643\\u062b\\u0641\\u0629\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:05:07', '2021-06-25 09:05:07', NULL),
(21, 19, 'RC-YA8SRJZE', 'RC-YA8SRJZE-JHWQB18S', '{\"en\":\"Enchanteur Moisturizing Cream Asstd\",\"ar\":\"\\u0627\\u0646\\u0634\\u0627\\u0646\\u062a\\u0631 \\u0643\\u0631\\u064a\\u0645 \\u0645\\u0631\\u0637\\u0628 Asstd\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:12:25', '2021-06-25 09:12:26', NULL),
(22, 20, 'RC-QKX8IVCM', 'RC-QKX8IVCM-RWLTPMK1', '{\"en\":\"Fusion Hair Spray (265Ml)\",\"ar\":\"\\u0641\\u064a\\u0648\\u062c\\u0646 \\u0628\\u062e\\u0627\\u062e \\u0644\\u0644\\u0634\\u0639\\u0631 (265 \\u0645\\u0644)\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:15:00', '2021-06-25 09:15:00', NULL),
(23, 21, 'RC-F8DJ0TQ9', 'RC-F8DJ0TQ9-0HRGTN3J', '{\"en\":\"Elegance Brilliant Hair Cream 250 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u064a\\u062c\\u0627\\u0646\\u0633 \\u0628\\u0631\\u064a\\u0644\\u064a\\u0627\\u0646\\u062a \\u0644\\u0644\\u0634\\u0639\\u0631 250 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:16:56', '2021-06-25 09:16:56', NULL),
(24, 22, 'RC-60Q1JVZH', 'RC-60Q1JVZH-MCQ2NWT9', '{\"en\":\"Yoko Multi Purpose Aloe Gel 300 Ml\",\"ar\":\"\\u064a\\u0648\\u0643\\u0648 \\u062c\\u0644 \\u0627\\u0644\\u0635\\u0628\\u0627\\u0631 \\u0645\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u063a\\u0631\\u0627\\u0636 300 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:20:17', '2021-06-25 09:20:17', NULL),
(25, 23, 'RC-JOTI3GEX', 'RC-JOTI3GEX-LM569XZK', '{\"en\":\"Dove Beauty Cream 75 Ml\",\"ar\":\"\\u0643\\u0631\\u064a\\u0645 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u062f\\u0648\\u0641 75 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:23:18', '2021-06-25 09:23:18', NULL),
(26, 24, 'RC-5OJ8MG9A', 'RC-5OJ8MG9A-0EIKS9JG', '{\"en\":\"Aichun Beauty Black Mask (120 Ml)\",\"ar\":\"\\u0642\\u0646\\u0627\\u0639 \\u0622\\u064a\\u062a\\u0634\\u0646 \\u0628\\u064a\\u0648\\u062a\\u064a \\u0627\\u0644\\u0623\\u0633\\u0648\\u062f (120 \\u0645\\u0644)\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:28:20', '2021-06-25 09:28:20', NULL),
(27, 25, 'RC-OHTSD47M', 'RC-OHTSD47M-NC71E0B3', '{\"en\":\"Silka Green Papaya Deodrant 40 Ml\",\"ar\":\"\\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0631\\u0642 \\u0633\\u064a\\u0644\\u0643\\u0627 \\u062c\\u0631\\u064a\\u0646 \\u0628\\u0627\\u0628\\u0627\\u064a\\u0627 40 \\u0645\\u0644\"}', 0, 0, 0, NULL, 1, 3, '2021-06-25 09:30:54', '2021-06-25 09:30:54', NULL),
(28, 26, 'RC-PWXGY7AT', 'RC-PWXGY7AT-7CH29BRE', '{\"en\":\"Braun Men Shaver Series 3 300s Black\",\"ar\":\"\\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u0628\\u0631\\u0627\\u0648\\u0646 \\u0644\\u0644\\u0631\\u062c\\u0627\\u0644 \\u0633\\u064a\\u0631\\u064a\\u0632 3300 \\u060c \\u0623\\u0633\\u0648\\u062f\"}', 0, 0, 0, NULL, 1, 3, '2021-06-28 03:19:27', '2021-06-28 03:19:27', NULL),
(29, 6, 'RC-KJ1S2LHR', 'RC-KJ1S2LHR-Q1938PL6', '{\"en\":\"S\",\"ar\":\"\\u0633\"}', 1, 1, 0, '10', 1, 3, '2021-07-01 07:45:54', '2021-07-01 08:30:15', NULL),
(30, 6, 'RC-KJ1S2LHR', 'RC-KJ1S2LHR-IM3AT0XL', '{\"en\":\"M\",\"ar\":\"\\u0645\"}', 1, 1, 0, 'M', 1, 3, '2021-07-01 07:45:54', '2021-07-13 14:13:20', NULL),
(31, 6, 'RC-KJ1S2LHR', 'RC-KJ1S2LHR-XCDK7MG2', '{\"en\":\"L\",\"ar\":\"\\u0625\\u0644\"}', 1, 1, 0, '14', 1, 3, '2021-07-01 07:45:54', '2021-07-01 08:30:18', NULL),
(32, 6, 'RC-KJ1S2LHR', 'RC-KJ1S2LHR-D7QHI3S2', '{\"en\":\"XL\",\"ar\":\"XL\"}', 1, 1, 0, '16', 1, 3, '2021-07-01 07:45:54', '2021-07-01 08:30:20', NULL),
(33, 1, 'RC-Q50O4NV6', 'RC-Q50O4NV6-ABMR5HCE', '{\"en\":\"Test 1\",\"ar\":\"1\"}', 1, 1, 0, 'XXL', 0, 3, '2021-07-01 08:30:25', '2021-07-13 11:59:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_attribute_id` bigint(20) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_type` int(11) DEFAULT 0 COMMENT '0 - Parent, 1 - Child',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `item_attribute_id`, `image_name`, `image_type`, `status`, `modified_by`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'RC-Q50O4NV6-1.jpg', 1, 1, 3, '2021-05-30 05:47:00', '2021-05-30 05:47:00'),
(3, 1, 1, 'RC-Q50O4NV6-2.jpg', 1, 1, 3, '2021-05-30 05:47:00', '2021-05-30 05:47:00'),
(4, 1, 2, 'RC-RC-Q50O4NV6-DN13IH5F-0.jpg', 1, 1, 3, '2021-05-31 05:09:23', '2021-07-13 07:08:34'),
(12, 1, 2, 'RC-RC-Q50O4NV6-DN13IH5F-3.png', 1, 1, 3, '2021-05-31 05:28:53', '2021-05-31 05:28:53'),
(13, 1, 2, 'RC-RC-Q50O4NV6-DN13IH5F-4.jpg', 1, 1, 3, '2021-05-31 05:28:53', '2021-05-31 05:28:53'),
(17, 3, 6, 'RC-6Z5LQAGK-1.jpg', 1, 1, 3, '2021-06-10 03:01:57', '2021-06-10 03:01:57'),
(18, 3, 6, 'RC-6Z5LQAGK-2.jpg', 1, 1, 3, '2021-06-10 03:01:57', '2021-06-10 03:01:57'),
(19, 3, 6, 'RC-6Z5LQAGK-3.jpg', 1, 1, 3, '2021-06-10 03:01:57', '2021-06-10 03:01:57'),
(20, 3, 6, 'RC-6Z5LQAGK-4.jpg', 1, 1, 3, '2021-06-10 03:01:57', '2021-06-10 03:01:57'),
(21, 5, 8, 'RC-WOV0SP1I-0.jpg', 0, 1, 3, '2021-06-25 06:45:55', '2021-06-25 06:45:55'),
(22, 6, 9, 'RC-KJ1S2LHR-0.jpg', 0, 1, 3, '2021-06-25 06:49:24', '2021-06-25 06:49:24'),
(23, 8, 10, 'RC-O6N7E9C2-0.jpg', 0, 1, 3, '2021-06-25 07:09:40', '2021-06-25 07:09:40'),
(24, 9, 11, 'RC-1KTC5MDO-0.jpg', 0, 1, 3, '2021-06-25 07:17:55', '2021-06-25 07:17:55'),
(25, 10, 12, 'RC-GNR29C63-0.jpg', 0, 1, 3, '2021-06-25 07:22:04', '2021-06-25 07:22:04'),
(26, 11, 13, 'RC-RPC2X968-0.jpg', 0, 1, 3, '2021-06-25 07:24:51', '2021-06-25 07:24:51'),
(27, 12, 14, 'RC-O9CJDP3L-0.jpg', 0, 1, 3, '2021-06-25 07:27:32', '2021-06-25 07:27:32'),
(28, 13, 15, 'RC-9KYB0QAO-0.jpg', 0, 1, 3, '2021-06-25 07:29:52', '2021-06-25 07:29:52'),
(29, 14, 16, 'RC-1KRMAFZ6-0.jpg', 0, 1, 3, '2021-06-25 07:46:49', '2021-06-25 07:46:49'),
(30, 15, 17, 'RC-OPKW0ETN-0.jpg', 0, 1, 3, '2021-06-25 07:49:18', '2021-06-25 07:49:18'),
(31, 16, 18, 'RC-IJ3G2YBK-0.jpg', 0, 1, 3, '2021-06-25 08:31:24', '2021-06-25 08:31:24'),
(32, 17, 19, 'RC-D4M7VX6G-0.png', 0, 1, 3, '2021-06-25 08:38:49', '2021-06-25 08:38:49'),
(33, 18, 20, 'RC-EW53I8KN-0.jpg', 0, 1, 3, '2021-06-25 09:05:07', '2021-06-25 09:05:07'),
(34, 19, 21, 'RC-YA8SRJZE-0.jpg', 0, 1, 3, '2021-06-25 09:12:26', '2021-06-25 09:12:26'),
(35, 20, 22, 'RC-QKX8IVCM-0.jpg', 0, 1, 3, '2021-06-25 09:15:00', '2021-06-25 09:15:00'),
(36, 21, 23, 'RC-F8DJ0TQ9-0.jpg', 0, 1, 3, '2021-06-25 09:16:56', '2021-06-25 09:16:56'),
(37, 22, 24, 'RC-60Q1JVZH-0.png', 0, 1, 3, '2021-06-25 09:20:17', '2021-06-25 09:20:17'),
(38, 23, 25, 'RC-JOTI3GEX-0.jpg', 0, 1, 3, '2021-06-25 09:23:18', '2021-06-25 09:23:18'),
(39, 24, 26, 'RC-5OJ8MG9A-0.png', 0, 1, 3, '2021-06-25 09:28:20', '2021-06-25 09:28:20'),
(40, 25, 27, 'RC-OHTSD47M-0.jpg', 0, 1, 3, '2021-06-25 09:30:54', '2021-06-25 09:30:54'),
(41, 26, 28, 'RC-PWXGY7AT-0.png', 0, 1, 3, '2021-06-28 03:19:28', '2021-06-28 03:19:28'),
(42, 26, 28, 'RC-PWXGY7AT-1.png', 1, 1, 3, '2021-06-28 03:19:28', '2021-06-28 03:19:28'),
(45, 3, 6, 'RC-6Z5LQAGK-0.jpg', 0, 1, 3, '2021-06-28 03:40:03', '2021-06-28 03:40:03'),
(46, 2, 5, 'RC-WC4T5Y3A-0.jpg', 0, 1, 3, '2021-06-28 03:40:49', '2021-06-28 03:40:49'),
(49, 2, 5, 'RC-WC4T5Y3A-1.jpg', 1, 1, 3, '2021-06-28 10:28:21', '2021-06-28 10:28:21'),
(50, 2, 5, 'RC-WC4T5Y3A-2.png', 1, 1, 3, '2021-06-28 10:28:21', '2021-06-28 10:28:21'),
(51, 2, 5, 'RC-WC4T5Y3A-3.jpg', 1, 1, 3, '2021-06-28 10:28:21', '2021-06-28 10:28:21'),
(52, 2, 5, 'RC-WC4T5Y3A-4.jpg', 1, 1, 3, '2021-06-28 10:28:21', '2021-06-28 10:28:21'),
(55, 1, 1, 'RC-Q50O4NV6-0.png', 0, 1, 3, '2021-07-13 07:03:35', '2021-07-13 07:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `item_inventories`
--

CREATE TABLE `item_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT 0,
  `vendor_id` int(11) DEFAULT 0,
  `store_id` int(11) DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount` int(11) DEFAULT 0 COMMENT '% Value',
  `selling_price` double DEFAULT 0,
  `member_discount` int(11) DEFAULT 0 COMMENT '% Value',
  `member_selling_price` double DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  `purchase_count` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_inventories`
--

INSERT INTO `item_inventories` (`id`, `item_id`, `attribute_id`, `vendor_id`, `store_id`, `base_price`, `discount`, `selling_price`, `member_discount`, `member_selling_price`, `quantity`, `purchase_count`, `status`, `modified_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 4, 1, 100, 80, 20, 80, 20, 10, 0, 1, 3, '2021-05-31 10:19:52', '2021-07-27 12:57:20', NULL),
(2, 1, 2, 4, 2, 15, 6, 7, 6, 7, 12, 0, 1, 3, '2021-05-31 10:20:14', '2021-07-27 12:57:20', NULL),
(3, 1, 4, 6, 3, 50, 78, 12, 78, 12, 5, 0, 1, 3, '2021-06-01 03:57:14', '2021-07-27 12:57:20', NULL),
(4, 2, 2, 6, 3, 5, 60, 2, 80, 1, 100, 0, 1, 3, '2021-06-01 05:59:57', '2021-07-13 09:47:06', NULL),
(5, 2, 2, 4, 2, 10, 9, 8.72, 9, 8.72, 7, 0, 1, 3, '2021-06-01 06:00:21', '2021-07-27 12:57:20', NULL),
(6, 1, 3, 6, 3, 50, 20, 30, 20, 30, 10, 0, 0, 3, '2021-06-01 06:23:41', '2021-07-27 12:57:20', NULL),
(10, 3, 3, 4, 1, 20, 10, 18, 10, 18, 100, 0, 1, 3, '2021-06-10 03:06:32', '2021-07-27 12:57:20', NULL),
(11, 5, 5, 4, 1, 20, 5, 19, 20, 16, 100, 0, 1, 3, '2021-06-27 02:54:51', '2021-07-27 11:28:31', NULL),
(12, 6, 6, 4, 2, 500, 60, 230, 60, 230, 123, 0, 0, 3, '2021-06-27 09:55:08', '2021-07-27 12:57:20', NULL),
(13, 1, 3, 4, 2, 100, 10, 90, 10, 90, 20, 0, 1, 3, '2021-06-27 10:52:26', '2021-07-27 12:57:20', NULL),
(14, 2, 2, 4, 1, 100, 8, 92, 8, 92, 21, 0, 1, 3, '2021-06-27 10:54:21', '2021-07-27 12:57:20', NULL),
(15, 8, 8, 4, 1, 100, 50, 50, 50, 50, 100, 0, 1, 3, '2021-06-27 10:58:43', '2021-07-27 12:57:20', NULL),
(16, 9, 9, 6, 3, 250, 45, 115, 45, 115, 10, 0, 1, 3, '2021-06-27 10:59:10', '2021-07-27 12:57:20', NULL),
(17, 10, 10, 4, 1, 50, 35, 38, 35, 38, 40, 0, 1, 3, '2021-06-27 10:59:39', '2021-07-27 12:57:20', NULL),
(18, 11, 11, 4, 2, 50, 22, 45, 22, 45, 50, 0, 1, 3, '2021-06-27 11:00:08', '2021-07-27 12:57:20', NULL),
(19, 12, 12, 4, 2, 56, 70, 16.8, 75, 14, 56, 0, 1, 3, '2021-06-27 11:00:30', '2021-07-27 11:29:19', NULL),
(20, 13, 13, 4, 1, 33, 12, 29, 12, 29, 33, 0, 1, 3, '2021-06-27 11:00:54', '2021-07-27 12:57:20', NULL),
(21, 14, 14, 4, 1, 55, 20, 40, 20, 40, 55, 0, 1, 3, '2021-06-27 11:01:21', '2021-07-27 12:57:20', NULL),
(22, 15, 15, 4, 1, 44, 30, 30.8, 51, 21.56, 44, 0, 1, 3, '2021-06-27 11:01:44', '2021-07-27 13:00:25', NULL),
(23, 16, 16, 6, 3, 266, 60, 106, 60, 106, 100, 0, 1, 3, '2021-06-27 11:02:16', '2021-07-27 12:57:20', NULL),
(24, 17, 17, 4, 1, 222, 40, 160, 40, 160, 22, 0, 1, 3, '2021-06-27 11:02:52', '2021-07-27 12:57:20', NULL),
(25, 18, 18, 4, 1, 11, 75, 2, 75, 2, 11, 0, 1, 3, '2021-06-27 11:03:15', '2021-07-27 12:57:20', NULL),
(26, 19, 19, 6, 3, 55, 20, 47, 20, 47, 55, 0, 1, 3, '2021-06-27 11:03:38', '2021-07-27 12:57:20', NULL),
(27, 20, 20, 6, 3, 22, 30, 17, 30, 17, 22, 0, 1, 3, '2021-06-27 11:03:58', '2021-07-27 12:57:20', NULL),
(28, 21, 21, 4, 1, 55, 50, 27, 50, 27, 55, 0, 1, 3, '2021-06-27 11:04:37', '2021-07-27 12:57:20', NULL),
(29, 22, 22, 4, 2, 66, 9, 59, 9, 59, 66, 0, 1, 3, '2021-06-27 11:05:09', '2021-07-27 12:57:20', NULL),
(30, 23, 23, 4, 1, 21, 8, 19, 8, 19, 31, 0, 1, 3, '2021-06-27 11:05:40', '2021-07-27 12:57:20', NULL),
(31, 24, 24, 4, 1, 243, 7, 220, 7, 220, 12, 0, 1, 3, '2021-06-27 11:06:10', '2021-07-27 12:57:20', NULL),
(32, 25, 25, 4, 2, 32, 20, 28, 40, 18, 32, 0, 1, 3, '2021-06-27 11:06:36', '2021-07-27 12:50:17', NULL),
(33, 26, 26, 6, 3, 180, 5, 160, 10, 150, 10, 0, 1, 3, '2021-06-28 03:23:43', '2021-07-27 12:49:38', NULL),
(34, 6, 31, 4, 1, 12, 5, 10, 7, 8, 10, 0, 1, 3, '2021-07-01 08:35:28', '2021-07-27 12:48:00', NULL),
(35, 6, 30, 6, 3, 11, 0, 11, 10, 9.8, 12, 0, 1, 3, '2021-07-01 08:35:59', '2021-07-27 12:49:20', NULL),
(36, 6, 31, 4, 2, 105, 10, 90, 15, 75, 5, 0, 1, 3, '2021-07-01 08:36:29', '2021-07-27 12:48:19', NULL),
(37, 1, 4, 4, 2, 10, 60, 4, 75, 2.5, 5, 0, 1, 3, '2021-07-13 09:14:31', '2021-07-13 09:43:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_inventory_histories`
--

CREATE TABLE `item_inventory_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT 0,
  `vendor_id` int(11) DEFAULT 0,
  `store_id` int(11) DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount` int(11) DEFAULT 0 COMMENT '% Value',
  `selling_price` double DEFAULT 0,
  `member_discount` int(11) DEFAULT 0 COMMENT '% Value',
  `member_selling_price` double DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_inventory_histories`
--

INSERT INTO `item_inventory_histories` (`id`, `item_id`, `attribute_id`, `vendor_id`, `store_id`, `base_price`, `discount`, `selling_price`, `member_discount`, `member_selling_price`, `quantity`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, 1, 45, 0, 35, 0, 0, 100, 3, '2021-05-31 10:19:52', '2021-05-31 10:19:52'),
(2, 1, 2, 4, 2, 15, 0, 12, 0, 0, 12, 3, '2021-05-31 10:20:14', '2021-05-31 10:20:14'),
(3, 1, 4, 6, 3, 50, 0, 49, 0, 0, 5, 3, '2021-06-01 03:57:14', '2021-06-01 03:57:14'),
(4, 1, 3, 4, 1, 100, 0, 75, 0, 0, 25, 3, '2021-06-01 05:59:18', '2021-06-01 05:59:18'),
(5, 2, 2, 6, 3, 5, 0, 3, 0, 0, 100, 3, '2021-06-01 05:59:57', '2021-06-01 05:59:57'),
(6, 2, 2, 4, 2, 10, 0, 8, 0, 0, 5, 3, '2021-06-01 06:00:21', '2021-06-01 06:00:21'),
(7, 2, 2, 4, 2, 10, 0, 8, 0, 0, 7, 3, '2021-06-01 06:00:32', '2021-06-01 06:00:32'),
(8, 1, 3, 6, 3, 50, 0, 20, 0, 0, 2, 3, '2021-06-01 06:23:41', '2021-06-01 06:23:41'),
(9, 1, 3, 4, 1, 100, 0, 75, 0, 0, 10, 3, '2021-06-02 03:49:10', '2021-06-02 03:49:10'),
(14, 3, 3, 4, 1, 20, 0, 15, 0, 0, 100, 3, '2021-06-10 03:06:32', '2021-06-10 03:06:32'),
(15, 5, 5, 4, 1, 20, 0, 15, 0, 0, 100, 3, '2021-06-27 02:54:51', '2021-06-27 02:54:51'),
(16, 6, 6, 4, 2, 500, 0, 459, 0, 0, 123, 3, '2021-06-27 09:55:08', '2021-06-27 09:55:08'),
(17, 1, 3, 4, 2, 100, 0, 100, 0, 0, 20, 3, '2021-06-27 10:52:26', '2021-06-27 10:52:26'),
(18, 2, 2, 4, 1, 100, 0, 100, 0, 0, 21, 3, '2021-06-27 10:54:21', '2021-06-27 10:54:21'),
(19, 8, 8, 4, 1, 100, 0, 100, 0, 0, 100, 3, '2021-06-27 10:58:43', '2021-06-27 10:58:43'),
(20, 9, 9, 6, 3, 250, 0, 250, 0, 0, 10, 3, '2021-06-27 10:59:10', '2021-06-27 10:59:10'),
(21, 10, 10, 4, 1, 50, 0, 50, 0, 0, 40, 3, '2021-06-27 10:59:39', '2021-06-27 10:59:39'),
(22, 11, 11, 4, 2, 50, 0, 50, 0, 0, 50, 3, '2021-06-27 11:00:08', '2021-06-27 11:00:08'),
(23, 12, 12, 4, 2, 56, 0, 56, 0, 0, 56, 3, '2021-06-27 11:00:30', '2021-06-27 11:00:30'),
(24, 13, 13, 4, 1, 33, 0, 33, 0, 0, 33, 3, '2021-06-27 11:00:54', '2021-06-27 11:00:54'),
(25, 14, 14, 4, 1, 55, 0, 55, 0, 0, 55, 3, '2021-06-27 11:01:21', '2021-06-27 11:01:21'),
(26, 15, 15, 4, 1, 44, 0, 44, 0, 0, 44, 3, '2021-06-27 11:01:44', '2021-06-27 11:01:44'),
(27, 16, 16, 6, 3, 266, 0, 266, 0, 0, 100, 3, '2021-06-27 11:02:16', '2021-06-27 11:02:16'),
(28, 17, 17, 4, 1, 222, 0, 222, 0, 0, 22, 3, '2021-06-27 11:02:52', '2021-06-27 11:02:52'),
(29, 18, 18, 4, 1, 11, 0, 11, 0, 0, 11, 3, '2021-06-27 11:03:15', '2021-06-27 11:03:15'),
(30, 19, 19, 6, 3, 55, 0, 55, 0, 0, 55, 3, '2021-06-27 11:03:39', '2021-06-27 11:03:39'),
(31, 20, 20, 6, 3, 22, 0, 22, 0, 0, 22, 3, '2021-06-27 11:03:58', '2021-06-27 11:03:58'),
(32, 21, 21, 4, 1, 55, 0, 55, 0, 0, 55, 3, '2021-06-27 11:04:37', '2021-06-27 11:04:37'),
(33, 22, 22, 4, 2, 66, 0, 66, 0, 0, 66, 3, '2021-06-27 11:05:09', '2021-06-27 11:05:09'),
(34, 23, 23, 4, 1, 21, 0, 21, 0, 0, 31, 3, '2021-06-27 11:05:40', '2021-06-27 11:05:40'),
(35, 24, 24, 4, 1, 243, 0, 243, 0, 0, 12, 3, '2021-06-27 11:06:10', '2021-06-27 11:06:10'),
(36, 25, 25, 4, 2, 32, 0, 32, 0, 0, 32, 3, '2021-06-27 11:06:36', '2021-06-27 11:06:36'),
(37, 26, 26, 6, 3, 180, 0, 165, 0, 0, 10, 3, '2021-06-28 03:23:43', '2021-06-28 03:23:43'),
(38, 6, 31, 4, 1, 12, 0, 10, 0, 0, 10, 3, '2021-07-01 08:35:28', '2021-07-01 08:35:28'),
(39, 6, 30, 6, 3, 11, 0, 10, 0, 0, 12, 3, '2021-07-01 08:35:59', '2021-07-01 08:35:59'),
(40, 6, 31, 4, 2, 105, 0, 100, 0, 0, 5, 3, '2021-07-01 08:36:29', '2021-07-01 08:36:29'),
(41, 1, 4, 4, 2, 10, 0, 5, 0, 0, 5, 3, '2021-07-13 09:14:31', '2021-07-13 09:14:31'),
(42, 1, 4, 4, 2, 10, 0, 4, 0, 0, 5, 3, '2021-07-13 09:43:14', '2021-07-13 09:43:14'),
(43, 2, 2, 6, 3, 5, 0, 2, 0, 0, 100, 3, '2021-07-13 09:47:06', '2021-07-13 09:47:06'),
(44, 15, 15, 4, 1, 44, 0, 44, 51, 21.56, 44, 3, '2021-07-27 11:27:46', '2021-07-27 11:27:46'),
(45, 5, 5, 4, 1, 20, 5, 19, 20, 16, 100, 3, '2021-07-27 11:28:31', '2021-07-27 11:28:31'),
(46, 12, 12, 4, 2, 56, 70, 16.8, 75, 14, 56, 3, '2021-07-27 11:29:19', '2021-07-27 11:29:19'),
(47, 15, 15, 4, 1, 44, 30, 30.8, 51, 21.56, 44, 3, '2021-07-27 13:00:25', '2021-07-27 13:00:25');

-- --------------------------------------------------------

--
-- Table structure for table `item_promotions`
--

CREATE TABLE `item_promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL COMMENT '1 - Flash, 2 - Weekly, 3 - Monthly, 4 - Exclusive, 5 - Members',
  `promotion_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_expired` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_promotions`
--

INSERT INTO `item_promotions` (`id`, `item_id`, `promotion_id`, `promotion_ref`, `start_date`, `end_date`, `is_expired`, `status`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'RCPR-D6YFJSC4', '2021-06-03 15:30:00', '2021-06-24 10:40:10', 1, 1, 3, '2021-06-03 09:01:04', '2021-06-24 07:37:14'),
(2, 1, 5, 'RCPR-D6YFJSC4', '2021-06-16 15:00:00', '2021-06-24 19:45:00', 1, 1, 3, '2021-06-03 09:01:47', '2021-06-13 13:28:29'),
(3, 2, 4, 'RCPR-HWPDNQF4', '2021-06-17 14:05:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-03 09:09:26', '2021-07-08 12:52:08'),
(4, 3, 3, 'RCPR-AF63K4XM', '2021-06-10 09:10:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-10 03:07:02', '2021-06-28 03:44:04'),
(5, 5, 1, 'RCPR-6FRETOHS', '2021-06-27 08:25:00', '2021-07-30 17:35:00', 1, 1, 3, '2021-06-27 02:52:32', '2021-07-08 12:52:26'),
(6, 5, 5, 'RCPR-6FRETOHS', '2021-06-27 08:25:00', '2021-07-31 23:55:00', 1, 1, 3, '2021-06-27 02:52:32', '2021-07-08 12:52:26'),
(7, 6, 5, 'RCPR-RWC2HE5N', '2021-06-27 08:25:00', '2021-07-31 23:20:00', 1, 1, 3, '2021-06-27 02:53:52', '2021-06-27 11:10:56'),
(8, 9, 1, 'RCPR-KPLZ0X8M', '2021-06-27 15:25:00', '2021-08-31 15:20:00', 1, 1, 3, '2021-06-27 09:54:15', '2021-06-27 09:54:15'),
(9, 9, 5, 'RCPR-KPLZ0X8M', '2021-06-27 15:25:00', '2021-07-31 15:55:00', 1, 1, 3, '2021-06-27 09:54:15', '2021-06-27 09:54:15'),
(10, 6, 1, 'RCPR-RWC2HE5N', '2021-06-27 16:40:00', '2021-07-10 23:35:00', 1, 1, 3, '2021-06-27 11:10:55', '2021-06-27 11:12:04'),
(11, 8, 1, 'RCPR-31KW9RON', '2021-06-27 16:45:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:13:03', '2021-06-27 11:13:03'),
(12, 8, 5, 'RCPR-31KW9RON', NULL, NULL, 1, 1, 3, '2021-06-27 11:13:03', '2021-06-27 11:13:03'),
(13, 10, 1, 'RCPR-T0D7BEJ5', '2021-06-27 16:45:00', '2021-07-10 23:40:00', 1, 1, 3, '2021-06-27 11:14:08', '2021-06-27 11:14:08'),
(14, 10, 5, 'RCPR-T0D7BEJ5', NULL, NULL, 1, 1, 3, '2021-06-27 11:14:08', '2021-06-27 11:14:08'),
(15, 11, 1, 'RCPR-AGP81IH9', '2021-06-27 16:45:00', NULL, 1, 1, 3, '2021-06-27 11:14:29', '2021-06-27 11:14:29'),
(16, 11, 5, 'RCPR-AGP81IH9', NULL, NULL, 1, 1, 3, '2021-06-27 11:14:29', '2021-06-27 11:14:29'),
(17, 12, 2, 'RCPR-RC7Y03M4', '2021-06-27 16:45:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:15:27', '2021-07-08 12:53:00'),
(18, 12, 5, 'RCPR-RC7Y03M4', NULL, NULL, 1, 1, 3, '2021-06-27 11:15:27', '2021-07-08 12:53:00'),
(19, 13, 2, 'RCPR-Y76Q53NX', '2021-06-27 16:50:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:16:01', '2021-06-27 11:16:01'),
(20, 13, 5, 'RCPR-Y76Q53NX', NULL, NULL, 1, 1, 3, '2021-06-27 11:16:01', '2021-06-27 11:16:01'),
(21, 14, 2, 'RCPR-LH8S96IF', '2021-06-27 16:50:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:17:18', '2021-06-27 11:17:18'),
(22, 14, 5, 'RCPR-LH8S96IF', '2021-06-27 16:50:00', '2021-07-08 06:10:00', 1, 1, 3, '2021-06-27 11:17:18', '2021-06-27 11:17:18'),
(23, 15, 2, 'RCPR-TH4PM3G1', '2021-06-27 16:50:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:18:51', '2021-06-27 11:18:51'),
(24, 15, 5, 'RCPR-TH4PM3G1', '2021-06-27 16:50:00', '2021-07-27 01:45:00', 1, 1, 3, '2021-06-27 11:18:51', '2021-06-27 11:18:51'),
(25, 16, 2, 'RCPR-EX3IBN5C', '2021-06-27 16:50:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:19:43', '2021-06-27 11:19:43'),
(26, 16, 5, 'RCPR-EX3IBN5C', '2021-06-27 16:50:00', '2021-07-07 06:45:00', 1, 1, 3, '2021-06-27 11:19:43', '2021-06-27 11:19:43'),
(27, 17, 2, 'RCPR-LX3A4Z29', '2021-06-27 16:50:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:22:23', '2021-06-27 11:22:23'),
(28, 17, 5, 'RCPR-LX3A4Z29', '2021-06-27 16:50:00', '2021-07-03 23:55:00', 1, 1, 3, '2021-06-27 11:22:23', '2021-06-27 11:22:23'),
(29, 18, 3, 'RCPR-PGIZXO45', '2021-06-27 16:55:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:23:19', '2021-06-27 11:23:19'),
(30, 18, 5, 'RCPR-PGIZXO45', '2021-06-27 16:55:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:23:19', '2021-06-27 11:23:19'),
(31, 19, 3, 'RCPR-MCY5784N', '2021-06-27 16:55:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:24:01', '2021-06-27 11:24:01'),
(32, 19, 5, 'RCPR-MCY5784N', '2021-06-27 16:55:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:24:01', '2021-06-27 11:24:01'),
(33, 20, 3, 'RCPR-V9BEKRQ6', '2021-06-27 16:55:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:25:52', '2021-06-27 11:25:52'),
(34, 20, 5, 'RCPR-V9BEKRQ6', '2021-07-10 23:55:00', '2021-08-07 23:55:00', 1, 1, 3, '2021-06-27 11:25:52', '2021-06-27 11:25:52'),
(35, 21, 3, 'RCPR-Z7C8V1WH', NULL, '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:27:55', '2021-06-27 11:27:55'),
(36, 22, 3, 'RCPR-760IEC1Q', '2021-06-27 17:20:00', '2021-07-10 17:55:00', 1, 1, 3, '2021-06-27 11:46:20', '2021-06-27 11:46:20'),
(37, 22, 5, 'RCPR-760IEC1Q', '2021-06-27 17:20:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:46:20', '2021-06-27 11:46:20'),
(38, 23, 3, 'RCPR-2PR0DCVO', '2021-06-27 17:20:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:47:06', '2021-06-27 11:47:06'),
(39, 23, 5, 'RCPR-2PR0DCVO', '2021-06-27 17:20:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:47:06', '2021-06-27 11:47:06'),
(40, 24, 4, 'RCPR-MDGKI1SA', '2021-06-27 17:20:00', '2021-07-10 17:55:00', 1, 1, 3, '2021-06-27 11:48:58', '2021-06-27 11:48:58'),
(41, 24, 5, 'RCPR-MDGKI1SA', '2021-06-27 17:20:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:48:58', '2021-06-27 11:48:58'),
(42, 25, 4, 'RCPR-FNYAT34G', '2021-06-27 17:20:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-27 11:50:07', '2021-06-27 11:50:07'),
(43, 3, 4, 'RCPR-AF63K4XM', '2021-06-28 09:15:00', '2021-07-10 23:55:00', 1, 1, 3, '2021-06-28 03:44:45', '2021-07-08 12:52:15'),
(44, 26, 3, 'RCPR-1YAN9MR0', '2021-06-28 09:35:00', '2021-07-26 09:30:00', 1, 1, 3, '2021-06-28 04:01:48', '2021-06-28 04:01:48'),
(45, 26, 5, 'RCPR-1YAN9MR0', '2021-06-28 09:35:00', '2021-09-27 09:00:00', 1, 1, 3, '2021-06-28 04:01:48', '2021-06-28 04:01:48'),
(46, 2, 6, 'RCPR-HWPDNQF4', NULL, NULL, 1, 1, 3, '2021-07-08 12:52:08', '2021-07-08 12:52:08'),
(47, 3, 6, 'RCPR-AF63K4XM', NULL, NULL, 1, 1, 3, '2021-07-08 12:52:15', '2021-07-08 12:52:15'),
(48, 5, 6, 'RCPR-6FRETOHS', NULL, NULL, 1, 1, 3, '2021-07-08 12:52:26', '2021-07-08 12:52:26'),
(49, 12, 6, 'RCPR-RC7Y03M4', NULL, NULL, 1, 1, 3, '2021-07-08 12:53:00', '2021-07-08 12:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_promotion_histories`
--

CREATE TABLE `item_promotion_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `promotion_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_id` int(11) DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT 'Desc - rc config',
  `action_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_promotion_histories`
--

INSERT INTO `item_promotion_histories` (`id`, `item_id`, `promotion_ref`, `promotion_id`, `start_date`, `end_date`, `action_type`, `action_description`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'RCPR-D6YFJSC4', 1, '2021-06-03 15:30:00', '2021-06-30 23:40:00', '1', 'Created', 3, '2021-06-03 09:01:04', '2021-06-03 09:01:04'),
(2, 1, 'RCPR-D6YFJSC4', 1, '2021-06-03 15:30:00', '2021-06-03 15:30:00', '2', 'Updated', 3, '2021-06-03 09:01:47', '2021-06-03 09:01:47'),
(3, 1, 'RCPR-D6YFJSC4', 5, '2021-06-16 15:00:00', '2021-06-24 19:45:00', '2', 'Updated', 3, '2021-06-03 09:01:47', '2021-06-03 09:01:47'),
(4, 2, 'RCPR-HWPDNQF4', 3, '2021-06-17 14:05:00', '2021-06-30 17:45:00', '1', 'Created', 3, '2021-06-03 09:09:26', '2021-06-03 09:09:26'),
(5, 2, 'RCPR-HWPDNQF4', 3, '2021-06-17 14:05:00', '2021-06-30 17:45:00', '3', 'Paused', 3, '2021-06-03 09:11:26', '2021-06-03 09:11:26'),
(6, 2, 'RCPR-HWPDNQF4', 3, '2021-06-17 14:05:00', '2021-06-30 17:45:00', '2', 'Updated', 3, '2021-06-03 09:20:57', '2021-06-03 09:20:57'),
(7, 3, 'RCPR-AF63K4XM', 1, '2021-06-10 09:10:00', '2021-06-30 23:55:00', '1', 'Created', 3, '2021-06-10 03:07:02', '2021-06-10 03:07:02'),
(8, 5, 'RCPR-6FRETOHS', 1, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '1', 'Created', 3, '2021-06-27 02:52:32', '2021-06-27 02:52:32'),
(9, 5, 'RCPR-6FRETOHS', 5, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '1', 'Created', 3, '2021-06-27 02:52:32', '2021-06-27 02:52:32'),
(10, 6, 'RCPR-RWC2HE5N', 5, '2021-06-27 08:25:00', '2021-07-31 23:20:00', '1', 'Created', 3, '2021-06-27 02:53:52', '2021-06-27 02:53:52'),
(11, 5, 'RCPR-6FRETOHS', 1, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '2', 'Updated', 3, '2021-06-27 09:46:18', '2021-06-27 09:46:18'),
(12, 5, 'RCPR-6FRETOHS', 5, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '2', 'Updated', 3, '2021-06-27 09:46:19', '2021-06-27 09:46:19'),
(13, 6, 'RCPR-RWC2HE5N', 5, '2021-06-27 08:25:00', '2021-07-31 23:20:00', '2', 'Updated', 3, '2021-06-27 09:53:34', '2021-06-27 09:53:34'),
(14, 9, 'RCPR-KPLZ0X8M', 1, '2021-06-27 15:25:00', '2021-08-31 15:20:00', '1', 'Created', 3, '2021-06-27 09:54:15', '2021-06-27 09:54:15'),
(15, 9, 'RCPR-KPLZ0X8M', 5, '2021-06-27 15:25:00', '2021-07-31 15:55:00', '1', 'Created', 3, '2021-06-27 09:54:15', '2021-06-27 09:54:15'),
(16, 5, 'RCPR-6FRETOHS', 1, '2021-06-27 08:25:00', '2021-07-30 17:35:00', '2', 'Updated', 3, '2021-06-27 11:09:15', '2021-06-27 11:09:15'),
(17, 5, 'RCPR-6FRETOHS', 5, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '2', 'Updated', 3, '2021-06-27 11:09:15', '2021-06-27 11:09:15'),
(18, 6, 'RCPR-RWC2HE5N', 1, '2021-06-27 16:40:00', '2021-07-10 23:35:00', '2', 'Updated', 3, '2021-06-27 11:10:56', '2021-06-27 11:10:56'),
(19, 6, 'RCPR-RWC2HE5N', 5, '2021-06-27 08:25:00', '2021-07-31 23:20:00', '2', 'Updated', 3, '2021-06-27 11:10:56', '2021-06-27 11:10:56'),
(20, 6, 'RCPR-RWC2HE5N', 1, '2021-06-27 16:40:00', '2021-07-10 23:35:00', '2', 'Updated', 3, '2021-06-27 11:12:04', '2021-06-27 11:12:04'),
(21, 8, 'RCPR-31KW9RON', 1, '2021-06-27 16:45:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:13:03', '2021-06-27 11:13:03'),
(22, 8, 'RCPR-31KW9RON', 5, NULL, NULL, '1', 'Created', 3, '2021-06-27 11:13:03', '2021-06-27 11:13:03'),
(23, 10, 'RCPR-T0D7BEJ5', 1, '2021-06-27 16:45:00', '2021-07-10 23:40:00', '1', 'Created', 3, '2021-06-27 11:14:08', '2021-06-27 11:14:08'),
(24, 10, 'RCPR-T0D7BEJ5', 5, NULL, NULL, '1', 'Created', 3, '2021-06-27 11:14:08', '2021-06-27 11:14:08'),
(25, 11, 'RCPR-AGP81IH9', 1, '2021-06-27 16:45:00', NULL, '1', 'Created', 3, '2021-06-27 11:14:29', '2021-06-27 11:14:29'),
(26, 11, 'RCPR-AGP81IH9', 5, NULL, NULL, '1', 'Created', 3, '2021-06-27 11:14:29', '2021-06-27 11:14:29'),
(27, 12, 'RCPR-RC7Y03M4', 2, '2021-06-27 16:45:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:15:27', '2021-06-27 11:15:27'),
(28, 12, 'RCPR-RC7Y03M4', 5, NULL, NULL, '1', 'Created', 3, '2021-06-27 11:15:28', '2021-06-27 11:15:28'),
(29, 13, 'RCPR-Y76Q53NX', 2, '2021-06-27 16:50:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:16:01', '2021-06-27 11:16:01'),
(30, 13, 'RCPR-Y76Q53NX', 5, NULL, NULL, '1', 'Created', 3, '2021-06-27 11:16:01', '2021-06-27 11:16:01'),
(31, 14, 'RCPR-LH8S96IF', 2, '2021-06-27 16:50:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:17:18', '2021-06-27 11:17:18'),
(32, 14, 'RCPR-LH8S96IF', 5, '2021-06-27 16:50:00', '2021-07-08 06:10:00', '1', 'Created', 3, '2021-06-27 11:17:18', '2021-06-27 11:17:18'),
(33, 15, 'RCPR-TH4PM3G1', 2, '2021-06-27 16:50:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:18:51', '2021-06-27 11:18:51'),
(34, 15, 'RCPR-TH4PM3G1', 5, '2021-06-27 16:50:00', '2021-07-27 01:45:00', '1', 'Created', 3, '2021-06-27 11:18:52', '2021-06-27 11:18:52'),
(35, 16, 'RCPR-EX3IBN5C', 2, '2021-06-27 16:50:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:19:43', '2021-06-27 11:19:43'),
(36, 16, 'RCPR-EX3IBN5C', 5, '2021-06-27 16:50:00', '2021-07-07 06:45:00', '1', 'Created', 3, '2021-06-27 11:19:43', '2021-06-27 11:19:43'),
(37, 17, 'RCPR-LX3A4Z29', 2, '2021-06-27 16:50:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:22:23', '2021-06-27 11:22:23'),
(38, 17, 'RCPR-LX3A4Z29', 5, '2021-06-27 16:50:00', '2021-07-03 23:55:00', '1', 'Created', 3, '2021-06-27 11:22:24', '2021-06-27 11:22:24'),
(39, 18, 'RCPR-PGIZXO45', 3, '2021-06-27 16:55:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:23:19', '2021-06-27 11:23:19'),
(40, 18, 'RCPR-PGIZXO45', 5, '2021-06-27 16:55:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:23:19', '2021-06-27 11:23:19'),
(41, 19, 'RCPR-MCY5784N', 3, '2021-06-27 16:55:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:24:01', '2021-06-27 11:24:01'),
(42, 19, 'RCPR-MCY5784N', 5, '2021-06-27 16:55:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:24:01', '2021-06-27 11:24:01'),
(43, 20, 'RCPR-V9BEKRQ6', 3, '2021-06-27 16:55:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:25:52', '2021-06-27 11:25:52'),
(44, 20, 'RCPR-V9BEKRQ6', 5, '2021-07-10 23:55:00', '2021-08-07 23:55:00', '1', 'Created', 3, '2021-06-27 11:25:53', '2021-06-27 11:25:53'),
(45, 21, 'RCPR-Z7C8V1WH', 3, NULL, '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:27:55', '2021-06-27 11:27:55'),
(46, 22, 'RCPR-760IEC1Q', 3, '2021-06-27 17:20:00', '2021-07-10 17:55:00', '1', 'Created', 3, '2021-06-27 11:46:20', '2021-06-27 11:46:20'),
(47, 22, 'RCPR-760IEC1Q', 5, '2021-06-27 17:20:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:46:20', '2021-06-27 11:46:20'),
(48, 23, 'RCPR-2PR0DCVO', 3, '2021-06-27 17:20:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:47:06', '2021-06-27 11:47:06'),
(49, 23, 'RCPR-2PR0DCVO', 5, '2021-06-27 17:20:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:47:06', '2021-06-27 11:47:06'),
(50, 24, 'RCPR-MDGKI1SA', 4, '2021-06-27 17:20:00', '2021-07-10 17:55:00', '1', 'Created', 3, '2021-06-27 11:48:58', '2021-06-27 11:48:58'),
(51, 24, 'RCPR-MDGKI1SA', 5, '2021-06-27 17:20:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:48:58', '2021-06-27 11:48:58'),
(52, 25, 'RCPR-FNYAT34G', 4, '2021-06-27 17:20:00', '2021-07-10 23:55:00', '1', 'Created', 3, '2021-06-27 11:50:07', '2021-06-27 11:50:07'),
(53, 3, 'RCPR-AF63K4XM', 3, '2021-06-10 09:10:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-06-28 03:44:04', '2021-06-28 03:44:04'),
(54, 3, 'RCPR-AF63K4XM', 4, '2021-06-28 09:15:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-06-28 03:44:45', '2021-06-28 03:44:45'),
(55, 2, 'RCPR-HWPDNQF4', 4, '2021-06-17 14:05:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-06-28 03:45:06', '2021-06-28 03:45:06'),
(56, 26, 'RCPR-1YAN9MR0', 3, '2021-06-28 09:35:00', '2021-07-26 09:30:00', '1', 'Created', 3, '2021-06-28 04:01:48', '2021-06-28 04:01:48'),
(57, 26, 'RCPR-1YAN9MR0', 5, '2021-06-28 09:35:00', '2021-09-27 09:00:00', '1', 'Created', 3, '2021-06-28 04:01:49', '2021-06-28 04:01:49'),
(58, 2, 'RCPR-HWPDNQF4', 4, '2021-06-17 14:05:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-07-08 12:49:47', '2021-07-08 12:49:47'),
(59, 2, 'RCPR-HWPDNQF4', 4, '2021-06-17 14:05:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-07-08 12:50:29', '2021-07-08 12:50:29'),
(60, 2, 'RCPR-HWPDNQF4', 4, '2021-06-17 14:05:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-07-08 12:52:08', '2021-07-08 12:52:08'),
(61, 2, 'RCPR-HWPDNQF4', 6, NULL, NULL, '2', 'Updated', 3, '2021-07-08 12:52:08', '2021-07-08 12:52:08'),
(62, 3, 'RCPR-AF63K4XM', 4, '2021-06-28 09:15:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-07-08 12:52:15', '2021-07-08 12:52:15'),
(63, 3, 'RCPR-AF63K4XM', 6, NULL, NULL, '2', 'Updated', 3, '2021-07-08 12:52:16', '2021-07-08 12:52:16'),
(64, 5, 'RCPR-6FRETOHS', 1, '2021-06-27 08:25:00', '2021-07-30 17:35:00', '2', 'Updated', 3, '2021-07-08 12:52:26', '2021-07-08 12:52:26'),
(65, 5, 'RCPR-6FRETOHS', 5, '2021-06-27 08:25:00', '2021-07-31 23:55:00', '2', 'Updated', 3, '2021-07-08 12:52:26', '2021-07-08 12:52:26'),
(66, 5, 'RCPR-6FRETOHS', 6, NULL, NULL, '2', 'Updated', 3, '2021-07-08 12:52:26', '2021-07-08 12:52:26'),
(67, 12, 'RCPR-RC7Y03M4', 2, '2021-06-27 16:45:00', '2021-07-10 23:55:00', '2', 'Updated', 3, '2021-07-08 12:53:00', '2021-07-08 12:53:00'),
(68, 12, 'RCPR-RC7Y03M4', 5, NULL, NULL, '2', 'Updated', 3, '2021-07-08 12:53:00', '2021-07-08 12:53:00'),
(69, 12, 'RCPR-RC7Y03M4', 6, NULL, NULL, '2', 'Updated', 3, '2021-07-08 12:53:00', '2021-07-08 12:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `item_specifications`
--

CREATE TABLE `item_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `specification_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_specifications`
--

INSERT INTO `item_specifications` (`id`, `item_id`, `specification_name`, `specification_description`, `status`, `modified_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 26, '{\"en\":\"Body\",\"ar\":\"\\u0627\\u0644\\u062c\\u0633\\u0645\"}', '{\"en\":\"Stainless steel blades\",\"ar\":\"\\u0634\\u0641\\u0631\\u0627\\u062a \\u0645\\u0646 \\u0627\\u0644\\u0641\\u0648\\u0644\\u0627\\u0630 \\u0627\\u0644\\u0645\\u0642\\u0627\\u0648\\u0645 \\u0644\\u0644\\u0635\\u062f\\u0623\"}', 1, 3, '2021-06-28 03:19:27', '2021-06-28 03:19:28', NULL),
(5, 26, '{\"en\":\"Body\",\"ar\":\"\\u0627\\u0644\\u062c\\u0633\\u0645\"}', '{\"en\":\"\\u0645\\u064a\\u0632\\u0627\\u062a \\u0623\\u062e\\u0631\\u0649\",\"ar\":\"\\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a\\u0629 \\u0645\\u0639 \\u062b\\u0644\\u0627\\u062b\\u0629 \\u0639\\u0646\\u0627\\u0635\\u0631 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u062d\\u0633\\u0627\\u0633\\u0629 \\u0644\\u0644\\u0636\\u063a\\u0637 \\u0644\\u062a\\u062d\\u0642\\u064a\\u0642 \\u0627\\u0644\\u0643\\u0641\\u0627\\u0621\\u0629 \\u0648\\u0631\\u0627\\u062d\\u0629 \\u0627\\u0644\\u062c\\u0644\\u062f \\u060c \\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a\\u0629 \\u0644\\u0627\\u0633\\u0644\\u0643\\u064a\\u0629 \\u0645\\u062a\\u064a\\u0646\\u0629 \\u060c \\u0628\\u0637\\u0627\\u0631\\u064a\\u0627\\u062a NiMH \\u0637\\u0648\\u064a\\u0644\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0631 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u060c \\u0645\\u0627\\u0643\\u064a\\u0646\\u0629 \\u062d\\u0644\\u0627\\u0642\\u0629 \\u0643\\u0647\\u0631\\u0628\\u0627\\u0626\\u064a\\u0629 Braun Series 3 \\u060c \\u063a\\u0637\\u0627\\u0621 \\u0648\\u0627\\u0642\\u064a \\u060c \\u0642\\u0627\\u0628\\u0633 \\u0630\\u0643\\u064a \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a 100-240 \\u0641\\u0648\\u0644\\u062a.\"}', 1, 3, '2021-06-28 03:19:28', '2021-08-02 06:44:04', NULL),
(14, 2, '{\"en\":\"Lorem Spec 1\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0635\\u0641\\u0627\\u062a 1\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0648\\u0642\\u062f \\u0646\\u062c\\u0627 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u0641\\u062d\\u0633\\u0628\"}', 1, 3, '2021-06-28 11:29:20', '2021-06-28 11:29:20', NULL),
(15, 2, '{\"en\":\"Lorem Spec 2\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0635\\u0641\\u0627\\u062a 2\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries\",\"ar\":\"\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0634\\u0643\\u0644\\u064a \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0641\\u064a \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0643\\u0627\\u0646 Lorem Ipsum \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0639\\u0634\\u0631 \\u0627\\u0644\\u0645\\u064a\\u0644\\u0627\\u062f\\u064a \\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d\\u064b\\u0627 \\u0645\\u0646 \\u0627\\u0644\\u0646\\u0648\\u0639 \\u0648\\u062a\\u062f\\u0627\\u0641\\u0639\\u062a \\u0639\\u0644\\u064a\\u0647 \\u0644\\u0639\\u0645\\u0644 \\u0643\\u062a\\u0627\\u0628 \\u0639\\u064a\\u0646\\u0629. \\u0648\\u0642\\u062f \\u0646\\u062c\\u0627 \\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646 \\u0641\\u062d\\u0633\\u0628\"}', 1, 3, '2021-06-28 11:29:20', '2021-06-28 11:29:20', NULL),
(20, 1, '{\"en\":\"Color\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', '{\"en\":\"Red\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', 1, 3, '2021-07-13 07:03:35', '2021-07-13 07:03:35', NULL),
(21, 1, '{\"en\":\"Color\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', '{\"en\":\"Yellow\",\"ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\"}', 1, 3, '2021-07-13 07:03:35', '2021-07-13 07:03:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_view_histories`
--

CREATE TABLE `item_view_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_cate_id` int(11) DEFAULT NULL,
  `secsub_cate_id` int(11) DEFAULT NULL,
  `third_cate_id` int(11) DEFAULT NULL,
  `record_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_view_histories`
--

INSERT INTO `item_view_histories` (`id`, `user_id`, `guest_token`, `item_id`, `category_id`, `sub_cate_id`, `secsub_cate_id`, `third_cate_id`, `record_ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CHUTCsfPHKYq3KDalNVm93xVYlChKlVSuSbpsnkW', 2, 1, 2, 6, 8, '::1', '2021-07-04 08:19:31', '2021-07-04 08:28:50'),
(2, NULL, 'CHUTCsfPHKYq3KDalNVm93xVYlChKlVSuSbpsnkW', 3, 1, 3, 11, NULL, '::1', '2021-07-04 08:25:27', '2021-07-04 08:25:27'),
(3, NULL, 'CHUTCsfPHKYq3KDalNVm93xVYlChKlVSuSbpsnkW', 15, 13, 19, NULL, NULL, '::1', '2021-07-04 08:25:47', '2021-07-04 08:27:59'),
(4, NULL, 'fGGHvYNa7zXzWSjGGC6b8e5MCRjaPbUxaUFvppgH', 2, 1, 2, 6, 8, '::1', '2021-07-04 09:00:50', '2021-07-04 09:11:40'),
(6, 1, 'pkfZ3zg5yIMI23hSJFqhtZgg1WrJcPUXaDaGrTWj', 2, 1, 2, 6, 8, '::1', '2021-07-04 09:13:32', '2021-07-04 09:16:15'),
(7, 1, 'qeW4GsccAWdMGklWnkLZ6avqGWMYlDyJyQg8aLNc', 2, 1, 2, 6, 8, '::1', '2021-07-04 09:16:27', '2021-07-04 14:11:27'),
(8, NULL, 'DA1o34DHRulg4wZklqC0utFQidu3kQn02ncBa3j4', 2, 1, 2, 6, 8, '127.0.0.1', '2021-07-04 10:56:52', '2021-07-04 10:56:59'),
(9, 1, 'jkXv8aU0FD1C9itT3QxhCHoE1pGSFINILWrndTiR', 2, 1, 2, 6, 8, '::1', '2021-07-05 05:04:56', '2021-07-05 07:17:27'),
(10, 1, 'jkXv8aU0FD1C9itT3QxhCHoE1pGSFINILWrndTiR', 3, 1, 3, 11, NULL, '::1', '2021-07-05 06:31:11', '2021-07-05 06:48:50'),
(11, 1, 'jkXv8aU0FD1C9itT3QxhCHoE1pGSFINILWrndTiR', 12, 13, 19, NULL, NULL, '::1', '2021-07-05 06:49:51', '2021-07-05 06:49:51'),
(12, NULL, 'sbL6UdaPo6XXFblgKxHFx4vPBcORg8YP3raURsSR', 2, 1, 2, 6, 8, '::1', '2021-07-05 07:19:25', '2021-07-05 07:47:34'),
(13, NULL, 'sbL6UdaPo6XXFblgKxHFx4vPBcORg8YP3raURsSR', 16, 1, 2, NULL, NULL, '::1', '2021-07-05 07:21:44', '2021-07-05 07:30:22'),
(14, NULL, 'sbL6UdaPo6XXFblgKxHFx4vPBcORg8YP3raURsSR', 25, 1, 3, NULL, NULL, '::1', '2021-07-05 07:47:44', '2021-07-05 07:49:11'),
(15, NULL, 'sbL6UdaPo6XXFblgKxHFx4vPBcORg8YP3raURsSR', 9, 13, 19, NULL, NULL, '::1', '2021-07-05 07:49:22', '2021-07-05 07:49:22'),
(16, NULL, 'FLNIvvk8vzQO4V0RAL9R8S6h8s6rcZtec04pFEri', 21, 1, 2, NULL, NULL, '::1', '2021-07-05 12:44:59', '2021-07-05 12:44:59'),
(17, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 8, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:33', '2021-07-05 13:39:54'),
(18, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 3, 1, 3, 11, NULL, '::1', '2021-07-05 13:39:41', '2021-07-05 13:39:41'),
(19, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 6, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:51', '2021-07-05 13:39:51'),
(20, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 2, 1, 2, 6, 8, '::1', '2021-07-05 13:39:52', '2021-07-05 13:39:52'),
(21, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 5, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:53', '2021-07-05 13:39:53'),
(22, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 12, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:54', '2021-07-05 13:39:54'),
(23, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 14, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:55', '2021-07-05 13:39:55'),
(24, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 11, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:56', '2021-07-05 13:39:56'),
(25, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 15, 13, 19, NULL, NULL, '::1', '2021-07-05 13:39:57', '2021-07-05 13:39:57'),
(26, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 10, 13, 19, NULL, NULL, '::1', '2021-07-05 13:40:02', '2021-07-05 13:40:02'),
(27, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 13, 13, 19, NULL, NULL, '::1', '2021-07-05 13:40:02', '2021-07-05 13:40:02'),
(28, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 9, 13, 19, NULL, NULL, '::1', '2021-07-05 13:40:03', '2021-07-05 13:40:23'),
(29, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 26, 1, 2, 21, NULL, '::1', '2021-07-05 13:40:04', '2021-07-05 13:40:04'),
(30, NULL, '1rsqHTMmhNXt9Rugx4qm04gT8jnCEpxlM7AqkFbz', 1, 13, 19, NULL, NULL, '::1', '2021-07-05 13:40:05', '2021-07-05 13:40:05'),
(31, NULL, 'yoHli8xf32JJe0UUGXyZz23BWRFgevTSV1Dbnnzy', 6, 13, 19, NULL, NULL, '::1', '2021-07-06 08:39:11', '2021-07-06 08:39:11'),
(32, NULL, 'yoHli8xf32JJe0UUGXyZz23BWRFgevTSV1Dbnnzy', 21, 1, 2, NULL, NULL, '::1', '2021-07-06 08:39:21', '2021-07-06 08:39:21'),
(33, NULL, 'TNdDUUE25Imsliv2GPNjtTwYbHf8dd5EZualO79z', 2, 1, 2, 6, 8, '::1', '2021-07-08 13:17:07', '2021-07-08 13:17:07'),
(34, NULL, '3RyXzbPvW0eqw8cuQYciCtoEPpzyybWXOFx3MBIa', 1, 13, 19, NULL, NULL, '::1', '2021-07-13 11:08:38', '2021-07-13 11:17:02'),
(35, NULL, '3RyXzbPvW0eqw8cuQYciCtoEPpzyybWXOFx3MBIa', 6, 13, 19, NULL, NULL, '::1', '2021-07-13 11:16:33', '2021-07-13 11:16:33'),
(36, NULL, 'pWl5965WQ5xh0vYWqcG4BoPtGJMSydEKCvcAlhh9', 1, 13, 19, NULL, NULL, '::1', '2021-07-13 11:24:39', '2021-07-13 12:12:21'),
(37, NULL, 'LIeCQTi1SGqyYMRLZQSZGI7yA6cNGEXochLrdjh6', 1, 13, 19, NULL, NULL, '::1', '2021-07-13 12:12:31', '2021-07-13 13:46:23'),
(38, NULL, 'LIeCQTi1SGqyYMRLZQSZGI7yA6cNGEXochLrdjh6', 6, 13, 19, NULL, NULL, '::1', '2021-07-13 12:40:31', '2021-07-13 14:13:22'),
(39, NULL, 'LIeCQTi1SGqyYMRLZQSZGI7yA6cNGEXochLrdjh6', 2, 1, 2, 6, 8, '::1', '2021-07-13 13:46:50', '2021-07-13 14:14:17'),
(40, NULL, 'AA4hgx2kUN4nlFh0B2hiJIj5UyEBVAu6svnZBd92', 2, 1, 2, 6, 8, '::1', '2021-07-14 05:53:29', '2021-07-14 13:36:59'),
(41, NULL, 'AA4hgx2kUN4nlFh0B2hiJIj5UyEBVAu6svnZBd92', 6, 13, 19, NULL, NULL, '::1', '2021-07-14 11:45:01', '2021-07-14 13:36:55'),
(42, NULL, 'NMTNdyFeaQv499tbYluhqQtkXC8YsIabkwFBUnIH', 2, 1, 2, 6, 8, '::1', '2021-07-15 05:11:44', '2021-07-15 05:17:25'),
(43, NULL, 'NMTNdyFeaQv499tbYluhqQtkXC8YsIabkwFBUnIH', 6, 13, 19, NULL, NULL, '::1', '2021-07-15 05:11:45', '2021-07-15 05:26:25'),
(44, NULL, 'NMTNdyFeaQv499tbYluhqQtkXC8YsIabkwFBUnIH', 22, 1, 3, NULL, NULL, '::1', '2021-07-15 05:26:41', '2021-07-15 05:26:41'),
(45, NULL, '8ZXmNkjYKf2ykjppjw6s8RHiUiK5SuBIh9krZue8', 2, 1, 2, 6, 8, '::1', '2021-07-15 06:10:03', '2021-07-15 09:36:09'),
(46, NULL, '8ZXmNkjYKf2ykjppjw6s8RHiUiK5SuBIh9krZue8', 6, 13, 19, NULL, NULL, '::1', '2021-07-15 06:10:03', '2021-07-15 08:02:35'),
(47, NULL, '8ZXmNkjYKf2ykjppjw6s8RHiUiK5SuBIh9krZue8', 12, 13, 19, NULL, NULL, '::1', '2021-07-15 09:36:16', '2021-07-15 09:36:16'),
(48, NULL, '8ZXmNkjYKf2ykjppjw6s8RHiUiK5SuBIh9krZue8', 15, 13, 19, NULL, NULL, '::1', '2021-07-15 09:36:27', '2021-07-15 09:36:27'),
(49, 1, '5dWi00RTmgCclkIaJqhCg1bkbiYb62IaHdoyCtnM', 25, 1, 3, NULL, NULL, '::1', '2021-07-19 08:09:42', '2021-07-19 08:09:42'),
(50, 1, '5dWi00RTmgCclkIaJqhCg1bkbiYb62IaHdoyCtnM', 9, 13, 19, NULL, NULL, '::1', '2021-07-19 08:11:06', '2021-07-19 08:11:06'),
(51, 1, 'w1Q9dwhiSHavvlNT9qOyXWVo79CoawQ6dODayQBe', 9, 13, 19, NULL, NULL, '::1', '2021-07-19 14:20:23', '2021-07-19 14:20:23'),
(52, 1, 'TK6OBsgU7rh9VMNgT8x4oeSmz1rcoEnhIVSti7m9', 5, 13, 19, NULL, NULL, '::1', '2021-07-25 06:07:19', '2021-07-25 06:07:19'),
(53, 1, 'TK6OBsgU7rh9VMNgT8x4oeSmz1rcoEnhIVSti7m9', 6, 13, 19, NULL, NULL, '::1', '2021-07-25 06:07:37', '2021-07-25 06:07:37'),
(54, 1, 'TK6OBsgU7rh9VMNgT8x4oeSmz1rcoEnhIVSti7m9', 2, 1, 2, 6, 8, '::1', '2021-07-25 11:11:39', '2021-07-25 11:19:08'),
(55, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 10, 13, 19, NULL, NULL, '::1', '2021-07-26 07:45:14', '2021-07-26 12:35:29'),
(56, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 15, 13, 19, NULL, NULL, '::1', '2021-07-26 08:06:25', '2021-07-26 08:06:25'),
(57, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 16, 1, 2, NULL, NULL, '::1', '2021-07-26 08:59:46', '2021-07-26 09:27:28'),
(58, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 22, 1, 3, NULL, NULL, '::1', '2021-07-26 09:08:53', '2021-07-26 12:35:24'),
(59, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 2, 1, 2, 6, 8, '::1', '2021-07-26 12:29:57', '2021-07-26 13:22:21'),
(60, 1, '64VRuC9sAxjqdVFHPdu4rX09A2H2Fxn5q6KdrD51', 13, 13, 19, NULL, NULL, '::1', '2021-07-26 13:41:42', '2021-07-26 13:44:46'),
(61, NULL, '1BdzhRoVqpuDuaZFX8EOygAqUyZtiM1oarmN10k0', 13, 13, 19, NULL, NULL, '::1', '2021-07-27 05:31:01', '2021-07-27 05:31:01'),
(62, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 05:32:14', '2021-07-27 08:40:07'),
(63, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 2, 1, 2, 6, 8, '::1', '2021-07-27 07:21:48', '2021-07-27 07:56:33'),
(64, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 3, 1, 3, 11, NULL, '::1', '2021-07-27 07:24:09', '2021-07-27 07:24:09'),
(65, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 1, 13, 19, NULL, NULL, '::1', '2021-07-27 08:01:01', '2021-07-27 08:01:01'),
(66, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 6, 13, 19, NULL, NULL, '::1', '2021-07-27 08:39:52', '2021-07-27 08:39:52'),
(67, 1, 'kwCqx7tWrEfvDXNKc4Oh4zXgR51d9eyzXvRTmFFN', 12, 13, 19, NULL, NULL, '::1', '2021-07-27 08:39:57', '2021-07-27 08:39:57'),
(68, NULL, 'IQtal0rSNqcI3txP7e8tnVF6WER83mHqI0lygUMr', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:48:07', '2021-07-27 10:48:07'),
(69, NULL, 'IQtal0rSNqcI3txP7e8tnVF6WER83mHqI0lygUMr', 10, 13, 19, NULL, NULL, '::1', '2021-07-27 10:48:09', '2021-07-27 10:48:09'),
(70, NULL, '5LI7brl0Danlw6KPGiK0oM9xRqJhEHjmOGbEJq2Z', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:51:33', '2021-07-27 10:51:33'),
(71, NULL, 'GSq3FB4pxGGgpcFudpHX6k4mrE8on682hxxkIs1s', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:51:46', '2021-07-27 10:51:46'),
(72, NULL, 'f9wErAXSxPAA6IV93W6vueGSGgzTP7EyxzlIGWX1', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:52:25', '2021-07-27 10:52:25'),
(73, NULL, 'YMnGWuWiaCGKMdMSYmkABtzTYmfutESzvNNgGmVR', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:53:21', '2021-07-27 10:53:21'),
(74, NULL, 'tG1T0bd7FOTZZKRg0CVUJPODKS2QLYoTaMPK7U46', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:55:02', '2021-07-27 10:55:02'),
(75, NULL, 'sFBHG90l5w1demsCL2j7YtQy5BhtaZvFXzBqKAe2', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:56:47', '2021-07-27 10:56:59'),
(76, NULL, 'hFt3IWZcDz1PY7prnt9qP0esqXk16csYAwMuFQj1', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 10:58:06', '2021-07-27 10:58:06'),
(77, NULL, 'WCvuVlkbxqH7LBB1L3KY7CEO1tVgENSN5nG6eF4d', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 11:13:37', '2021-07-27 11:13:37'),
(78, NULL, 'EOZlbk3zcJNSr0bt9DUBaacf3hX9s6uPZni9BDkb', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 11:15:34', '2021-07-27 11:15:34'),
(79, NULL, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 2, 1, 2, 6, 8, '::1', '2021-07-27 11:16:41', '2021-07-27 11:16:41'),
(80, 1, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 12, 13, 19, NULL, NULL, '::1', '2021-07-27 11:16:46', '2021-07-27 11:31:04'),
(81, NULL, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 11, 13, 19, NULL, NULL, '::1', '2021-07-27 11:16:51', '2021-07-27 11:16:51'),
(82, NULL, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 1, 13, 19, NULL, NULL, '::1', '2021-07-27 11:17:00', '2021-07-27 11:17:00'),
(83, NULL, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 3, 1, 3, 11, NULL, '::1', '2021-07-27 11:17:21', '2021-07-27 11:17:21'),
(84, 1, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 11:18:06', '2021-07-27 11:30:58'),
(85, 1, 'QXm0b2KVlrjB0umOeNZqafCu222h5FC3fHG30RuD', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 11:26:41', '2021-07-27 11:34:42'),
(86, 1, 'vDG8W4W0MfYMzRd3yuFSA07u05XBX2TpJ0ODFCLO', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 11:36:32', '2021-07-27 11:39:46'),
(87, NULL, 'y8WWhAG59yYV3gaSLFq3pMeTSEuexYizTtXTvLuC', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 11:40:12', '2021-07-27 11:40:12'),
(88, 1, 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 11:42:20', '2021-07-27 11:44:19'),
(89, 1, 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 11:44:31', '2021-07-27 11:44:31'),
(90, 1, 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 12, 13, 19, NULL, NULL, '::1', '2021-07-27 11:44:46', '2021-07-27 11:44:46'),
(91, 1, 'M3xpMXO2xgOudamXkU8Cc7TRy0oaoLm8VCdL2g2t', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 12:06:34', '2021-07-27 12:58:33'),
(92, 1, 'M3xpMXO2xgOudamXkU8Cc7TRy0oaoLm8VCdL2g2t', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 12:23:03', '2021-07-27 12:58:15'),
(93, 1, 'M3xpMXO2xgOudamXkU8Cc7TRy0oaoLm8VCdL2g2t', 12, 13, 19, NULL, NULL, '::1', '2021-07-27 12:29:47', '2021-07-27 12:57:36'),
(94, NULL, 'DAYqmHcR9C91AN1zpk1cagHDOjnm7exAUtbWqhN2', 5, 13, 19, NULL, NULL, '::1', '2021-07-27 12:58:53', '2021-07-27 12:59:45'),
(95, NULL, 'DAYqmHcR9C91AN1zpk1cagHDOjnm7exAUtbWqhN2', 15, 13, 19, NULL, NULL, '::1', '2021-07-27 12:59:47', '2021-07-27 13:06:51'),
(96, 1, 'rCXDz52tB2M8P8yYpaudDg9zL0gZb4EsZQWtR4Ps', 15, 13, 19, NULL, NULL, '::1', '2021-07-28 05:07:15', '2021-07-28 05:22:40'),
(97, 1, 'rCXDz52tB2M8P8yYpaudDg9zL0gZb4EsZQWtR4Ps', 5, 13, 19, NULL, NULL, '::1', '2021-07-28 05:07:17', '2021-07-28 05:28:34'),
(98, NULL, 'rCXDz52tB2M8P8yYpaudDg9zL0gZb4EsZQWtR4Ps', 12, 13, 19, NULL, NULL, '::1', '2021-07-28 05:07:19', '2021-07-28 05:07:19'),
(99, 1, 's6aHabroeXjG8TODKKnIi2bdzB5Ivu062m5WsYhR', 5, 13, 19, NULL, NULL, '::1', '2021-07-28 05:28:45', '2021-07-28 07:49:42'),
(100, 1, 'kMuf0Pbe2qWD7VrMINkZ54VnJGegHpHxdZeHRwAk', 1, 13, 19, NULL, NULL, '::1', '2021-07-28 12:15:08', '2021-07-28 12:20:04'),
(101, NULL, 'aPZRqYB0d6nXTDymtqF3tjfmGIcM3coqdvG8SMnF', 26, 1, 2, 21, NULL, '::1', '2021-07-29 11:19:04', '2021-07-29 11:19:35'),
(102, NULL, 'aPZRqYB0d6nXTDymtqF3tjfmGIcM3coqdvG8SMnF', 10, 13, 19, NULL, NULL, '::1', '2021-07-29 11:57:24', '2021-07-29 11:57:24'),
(103, NULL, 'aPZRqYB0d6nXTDymtqF3tjfmGIcM3coqdvG8SMnF', 11, 13, 19, NULL, NULL, '::1', '2021-07-29 11:57:40', '2021-07-29 11:57:40'),
(104, NULL, 'aPZRqYB0d6nXTDymtqF3tjfmGIcM3coqdvG8SMnF', 5, 13, 19, NULL, NULL, '::1', '2021-07-29 12:09:41', '2021-07-29 12:22:09'),
(105, NULL, 'aPZRqYB0d6nXTDymtqF3tjfmGIcM3coqdvG8SMnF', 13, 13, 19, NULL, NULL, '::1', '2021-07-29 12:09:54', '2021-07-29 12:09:54'),
(106, NULL, '7ZP76gtdHYXwu15bLl9S6kQPnQ2YUxEF2qaloTzf', 10, 13, 19, NULL, NULL, '::1', '2021-07-29 12:33:22', '2021-07-29 12:34:16'),
(107, NULL, '7ZP76gtdHYXwu15bLl9S6kQPnQ2YUxEF2qaloTzf', 2, 1, 2, 6, 8, '::1', '2021-07-29 12:39:42', '2021-07-29 12:39:42'),
(108, 1, 'HUVivul9aUnMZBFhhJKtLUOTygFAHFCxZzJk45mJ', 2, 1, 2, 6, 8, '::1', '2021-07-29 12:41:49', '2021-07-29 12:42:18'),
(109, 1, 'PiG6vRgdv2vryBiEYzP3aPd94Hz6ye1qWzP9HyFl', 2, 1, 2, 6, 8, '::1', '2021-07-29 12:42:25', '2021-07-29 12:50:13'),
(110, 1, 'BcqaacLci6HZWSYqoGvCEC3FOW42HCACoIeE98md', 10, 13, 19, NULL, NULL, '::1', '2021-07-29 12:50:19', '2021-07-29 13:42:52'),
(111, 1, 'BcqaacLci6HZWSYqoGvCEC3FOW42HCACoIeE98md', 1, 13, 19, NULL, NULL, '::1', '2021-07-29 13:43:26', '2021-07-29 13:45:23'),
(112, 1, 'BcqaacLci6HZWSYqoGvCEC3FOW42HCACoIeE98md', 16, 1, 2, NULL, NULL, '::1', '2021-07-29 14:04:15', '2021-07-29 14:04:15'),
(113, 1, 'CIWN3R7O49g7uxXwv9rhbgxqNK27s3NrP1mhJCV4', 16, 1, 2, NULL, NULL, '::1', '2021-08-01 05:13:14', '2021-08-01 06:10:45'),
(114, 1, 'bxPJ7hhDcwBzBOfRfF4h1F2zkD2bKaqDeeFaRCKu', 16, 1, 2, NULL, NULL, '::1', '2021-08-01 10:54:53', '2021-08-01 11:20:38'),
(115, 1, 'ORZugWQ2J8WQonavNlaTd1tp9Je5PlbklLarR64P', 16, 1, 2, NULL, NULL, '::1', '2021-08-01 11:20:51', '2021-08-01 12:10:47'),
(116, NULL, 'ORZugWQ2J8WQonavNlaTd1tp9Je5PlbklLarR64P', 14, 13, 19, NULL, NULL, '::1', '2021-08-01 11:28:41', '2021-08-01 11:28:41'),
(117, 1, 'ORZugWQ2J8WQonavNlaTd1tp9Je5PlbklLarR64P', 1, 13, 19, NULL, NULL, '::1', '2021-08-01 11:47:54', '2021-08-01 11:47:54'),
(118, 1, 'ORZugWQ2J8WQonavNlaTd1tp9Je5PlbklLarR64P', 13, 13, 19, NULL, NULL, '::1', '2021-08-01 11:49:37', '2021-08-01 11:49:37'),
(119, 1, 'q0EithL8jZT13qU5h7QbOjjCtaxtEpD9eIBgmNo0', 16, 1, 2, NULL, NULL, '::1', '2021-08-01 12:10:55', '2021-08-01 13:17:39'),
(120, NULL, 'q0EithL8jZT13qU5h7QbOjjCtaxtEpD9eIBgmNo0', 2, 1, 2, 6, 8, '::1', '2021-08-01 12:11:10', '2021-08-01 12:11:10'),
(121, 1, 'q0EithL8jZT13qU5h7QbOjjCtaxtEpD9eIBgmNo0', 13, 13, 19, NULL, NULL, '::1', '2021-08-01 13:18:52', '2021-08-01 13:18:52'),
(122, NULL, 'vQSoew1mzb2iWPcjDTRbno8IDzS3bOsZusdQSeRy', 12, 13, 19, NULL, NULL, '::1', '2021-08-01 13:21:03', '2021-08-01 13:21:13'),
(123, NULL, 'vQSoew1mzb2iWPcjDTRbno8IDzS3bOsZusdQSeRy', 13, 13, 19, NULL, NULL, '::1', '2021-08-01 13:21:10', '2021-08-01 13:21:10'),
(124, NULL, 'DG5z71EtulNDJiK1uBMcwYFua8XnhPSycfTGcZGC', 13, 13, 19, NULL, NULL, '::1', '2021-08-02 05:30:35', '2021-08-02 05:30:35'),
(125, NULL, 'DG5z71EtulNDJiK1uBMcwYFua8XnhPSycfTGcZGC', 12, 13, 19, NULL, NULL, '::1', '2021-08-02 05:31:12', '2021-08-02 05:35:15'),
(126, 1, 'NAucCrcDXBmMpR6UJoHwCfWzB2KJtmsupWHR8uxk', 6, 13, 19, NULL, NULL, '::1', '2021-08-02 06:29:37', '2021-08-02 06:42:04'),
(127, 1, 'NAucCrcDXBmMpR6UJoHwCfWzB2KJtmsupWHR8uxk', 3, 1, 3, 11, NULL, '::1', '2021-08-02 06:42:09', '2021-08-02 06:42:09'),
(128, 1, 'NAucCrcDXBmMpR6UJoHwCfWzB2KJtmsupWHR8uxk', 26, 1, 2, 21, NULL, '::1', '2021-08-02 06:42:17', '2021-08-02 06:44:07'),
(129, 1, 'PUXQWLKzW744TXYDQMLLKWqXCiDYsoZn40Uorkt4', 5, 13, 19, NULL, NULL, '::1', '2021-08-02 07:16:55', '2021-08-02 07:16:55'),
(130, 1, 'PUXQWLKzW744TXYDQMLLKWqXCiDYsoZn40Uorkt4', 18, 1, 3, NULL, NULL, '::1', '2021-08-02 07:16:59', '2021-08-02 07:16:59'),
(131, 1, 'PUXQWLKzW744TXYDQMLLKWqXCiDYsoZn40Uorkt4', 2, 1, 2, 6, 8, '::1', '2021-08-02 07:17:05', '2021-08-02 07:17:05'),
(132, 1, 'PUXQWLKzW744TXYDQMLLKWqXCiDYsoZn40Uorkt4', 13, 13, 19, NULL, NULL, '::1', '2021-08-02 07:17:21', '2021-08-02 07:17:21'),
(133, NULL, 'xO73Z6ahCOYq0xtYfgUdgFfMEMDkL4FdZXC2DiiR', 5, 13, 19, NULL, NULL, '::1', '2021-08-08 14:07:14', '2021-08-08 14:07:14'),
(134, NULL, '6GllHqKirWXFfnj5jxsv7vfCRTgxcirSCWZ76Xrj', 9, 13, 19, NULL, NULL, '::1', '2021-08-12 01:58:35', '2021-08-12 01:58:35'),
(135, NULL, 'IG1IWxvvVNxi2tbNg7lvJF52ETzaTxbUGIasVjXe', 11, 13, 19, NULL, NULL, '::1', '2021-08-12 04:36:30', '2021-08-12 04:36:30'),
(136, NULL, 'rdE14ibReDpS5YcYUbQ4MNyITlSGDxGtiSNwff5d', 16, 1, 2, NULL, NULL, '::1', '2021-08-12 06:39:35', '2021-08-12 06:39:35'),
(137, NULL, 'PSIZVYtQCd37w6Qc2RCupPnfjx52iANjjUwrRaY1', 21, 1, 2, NULL, NULL, '::1', '2021-08-17 03:41:15', '2021-08-17 05:03:21'),
(138, NULL, 'PSIZVYtQCd37w6Qc2RCupPnfjx52iANjjUwrRaY1', 18, 1, 3, NULL, NULL, '::1', '2021-08-17 04:26:13', '2021-08-17 04:26:13'),
(139, NULL, 'jN42LH4dx4eut4sVGFmw9ytYvVwlrRmxYidn8jlw', 23, 1, 3, NULL, NULL, '::1', '2021-08-17 08:31:37', '2021-08-17 08:31:37'),
(140, NULL, 'jN42LH4dx4eut4sVGFmw9ytYvVwlrRmxYidn8jlw', 6, 13, 19, NULL, NULL, '::1', '2021-08-17 08:39:29', '2021-08-17 08:39:29'),
(141, NULL, 'jN42LH4dx4eut4sVGFmw9ytYvVwlrRmxYidn8jlw', 21, 1, 2, NULL, NULL, '::1', '2021-08-17 08:40:16', '2021-08-17 08:40:16'),
(142, NULL, 'T6FpT5PrqV9izmT6aFBXDxDLRC881XNCxjSNVfWE', 6, 13, 19, NULL, NULL, '::1', '2021-08-18 05:17:11', '2021-08-18 05:17:11'),
(143, NULL, 'EJABuTFcaEZiVl9WS0uNlCXG435OxephhPdRhWXM', 14, 13, 19, NULL, NULL, '::1', '2021-08-19 02:24:52', '2021-08-19 02:24:52'),
(144, NULL, 'EJABuTFcaEZiVl9WS0uNlCXG435OxephhPdRhWXM', 12, 13, 19, NULL, NULL, '::1', '2021-08-19 05:05:57', '2021-08-19 05:05:57'),
(145, NULL, 'EJABuTFcaEZiVl9WS0uNlCXG435OxephhPdRhWXM', 2, 1, 2, 6, 8, '::1', '2021-08-19 05:57:47', '2021-08-19 05:57:47'),
(146, NULL, 'YTHMIcr76M033Vkr2IV4PjfSjUQXtCZ0cqw4lN0G', 2, 1, 2, 6, 8, '::1', '2021-08-19 06:41:52', '2021-08-19 06:41:52'),
(147, NULL, 'YTHMIcr76M033Vkr2IV4PjfSjUQXtCZ0cqw4lN0G', 16, 1, 2, NULL, NULL, '::1', '2021-08-19 08:54:40', '2021-08-19 08:54:40'),
(148, NULL, 'YTHMIcr76M033Vkr2IV4PjfSjUQXtCZ0cqw4lN0G', 17, 1, 3, NULL, NULL, '::1', '2021-08-19 08:57:12', '2021-08-19 08:57:12'),
(149, NULL, 'YTHMIcr76M033Vkr2IV4PjfSjUQXtCZ0cqw4lN0G', 23, 1, 3, NULL, NULL, '::1', '2021-08-19 10:03:07', '2021-08-19 10:03:07'),
(150, NULL, 'YTHMIcr76M033Vkr2IV4PjfSjUQXtCZ0cqw4lN0G', 21, 1, 2, NULL, NULL, '::1', '2021-08-19 10:36:25', '2021-08-19 10:36:25'),
(151, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 16, 1, 2, NULL, NULL, '::1', '2021-08-20 03:26:06', '2021-08-20 04:24:24'),
(152, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 6, 13, 19, NULL, NULL, '::1', '2021-08-20 03:29:37', '2021-08-20 05:51:56'),
(153, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 12, 13, 19, NULL, NULL, '::1', '2021-08-20 03:29:48', '2021-08-20 07:30:20'),
(154, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 21, 1, 2, NULL, NULL, '::1', '2021-08-20 03:36:36', '2021-08-20 03:36:36'),
(155, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 2, 1, 2, 6, 8, '::1', '2021-08-20 03:55:11', '2021-08-20 05:55:55'),
(156, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 22, 1, 3, NULL, NULL, '::1', '2021-08-20 04:05:41', '2021-08-20 04:25:16'),
(157, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 15, 13, 19, NULL, NULL, '::1', '2021-08-20 04:30:56', '2021-08-20 04:30:56'),
(158, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 8, 13, 19, NULL, NULL, '::1', '2021-08-20 05:00:30', '2021-08-20 05:00:30'),
(159, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 5, 13, 19, NULL, NULL, '::1', '2021-08-20 05:07:14', '2021-08-20 05:54:16'),
(160, NULL, 'Rl7XIPv1WfBrQfW2RKgsvrvJB4BB1Au7r2rRqcK7', 3, 1, 3, 11, NULL, '::1', '2021-08-20 05:52:11', '2021-08-20 05:52:11'),
(161, NULL, '6s2dGyWmZOuWD8I9aolIs9Rlj5Vvb9I4m2djbZT7', 16, 1, 2, NULL, NULL, '::1', '2021-08-22 05:43:04', '2021-08-22 05:43:04'),
(162, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 18, 1, 3, NULL, NULL, '::1', '2021-08-23 06:20:08', '2021-08-23 06:20:08'),
(163, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 19, 1, 3, NULL, NULL, '::1', '2021-08-23 06:23:00', '2021-08-23 06:23:00'),
(164, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 20, 1, 2, NULL, NULL, '::1', '2021-08-23 06:30:01', '2021-08-23 06:30:01'),
(165, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 12, 13, 19, NULL, NULL, '::1', '2021-08-23 06:48:04', '2021-08-23 06:50:43'),
(166, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 1, 13, 19, NULL, NULL, '::1', '2021-08-23 07:04:39', '2021-08-23 07:04:43'),
(167, NULL, '3CxoZfirnwH7LEAdYMYJtJ5ENREJpOUtjZTlEbdw', 23, 1, 3, NULL, NULL, '::1', '2021-08-23 07:04:50', '2021-08-23 07:04:50'),
(168, NULL, 'tyZzS33SMREPyIcm8AqeJa3t55uI9ivUFq99USuT', 5, 13, 19, NULL, NULL, '::1', '2021-08-23 08:09:21', '2021-08-23 08:09:21'),
(169, NULL, '3GocmFI9FJoCpJU5Ft8o0z6Ndpz5nXqdr9s3fS9j', 18, 1, 3, NULL, NULL, '::1', '2021-08-23 15:06:13', '2021-08-23 15:06:23'),
(170, NULL, '3GocmFI9FJoCpJU5Ft8o0z6Ndpz5nXqdr9s3fS9j', 12, 13, 19, NULL, NULL, '::1', '2021-08-23 15:19:55', '2021-08-23 15:19:55'),
(171, NULL, 'xR9XQyWUsxgsNcGH2WPhTIZXkuNIErUBEKeoHc2I', 21, 1, 2, NULL, NULL, '::1', '2021-08-23 15:29:45', '2021-08-23 15:29:45'),
(172, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 1, 13, 19, NULL, NULL, '::1', '2021-08-24 04:21:26', '2021-08-24 09:28:51'),
(173, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 3, 1, 3, 11, NULL, '::1', '2021-08-24 04:21:32', '2021-08-24 04:21:32'),
(174, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 14, 13, 19, NULL, NULL, '::1', '2021-08-24 07:53:19', '2021-08-24 07:53:19'),
(175, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 5, 13, 19, NULL, NULL, '::1', '2021-08-24 08:35:58', '2021-08-24 08:36:34'),
(176, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 23, 1, 3, NULL, NULL, '::1', '2021-08-24 09:28:47', '2021-08-24 09:28:47'),
(177, NULL, '1iPPQ9HkHiHI5Dr4tULV11bgyx65zEDpNrSmAynV', 20, 1, 2, NULL, NULL, '::1', '2021-08-24 09:29:01', '2021-08-24 09:29:01');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_18_082658_create_admins_table', 2),
(5, '2021_04_20_054018_create_permission_tables', 3),
(6, '2021_05_02_065733_create_settings_table', 4),
(9, '2021_05_03_113051_create_zones_table', 5),
(10, '2021_05_09_062104_add_soft_deletes_to_zone_table', 6),
(12, '2021_05_09_071718_create_areas_table', 7),
(17, '2021_05_10_054227_create_categories_table', 8),
(19, '2021_05_16_103457_create_banners_table', 9),
(20, '2021_05_17_085234_create_brands_table', 10),
(33, '2021_05_18_085210_create_vendor_margin_details_table', 11),
(40, '2021_05_18_085555_create_vendor_payouts_table', 12),
(41, '2021_05_18_091258_add_vendor_related_column_into_admins_table', 13),
(43, '2021_05_18_094246_create_stores_table', 14),
(44, '2021_05_19_091718_add_soft_deletes_to_admin_table', 15),
(54, '2021_05_20_070948_create_attribute_types_table', 16),
(118, '2021_05_22_083250_create_items_table', 17),
(119, '2021_05_22_095750_create_item_attributes_table', 17),
(120, '2021_05_22_120932_create_item_specifications_table', 17),
(121, '2021_05_22_120951_create_item_images_table', 17),
(122, '2021_05_30_074952_create_item_inventories_table', 17),
(123, '2021_05_30_075910_create_item_inventory_histories_table', 17),
(124, '2021_05_30_074804_create_item_invenories_table', 18),
(135, '2021_06_03_063641_create_item_promotions_table', 19),
(136, '2021_06_03_065848_create_item_promotion_histories_table', 19),
(137, '2016_06_01_000001_create_oauth_auth_codes_table', 20),
(138, '2016_06_01_000002_create_oauth_access_tokens_table', 20),
(139, '2016_06_01_000003_create_oauth_refresh_tokens_table', 20),
(140, '2016_06_01_000004_create_oauth_clients_table', 20),
(141, '2016_06_01_000005_create_oauth_personal_access_clients_table', 20),
(143, '2021_06_07_053444_create_promo_videos_table', 21),
(144, '2021_06_07_074303_create_faqs_table', 22),
(145, '2021_06_07_075108_create_static_pages_table', 23),
(147, '2021_06_07_125150_create_promo_ads_table', 24),
(151, '2021_06_14_050345_create_social_media_reviews_table', 25),
(155, '2021_06_15_131430_create_contact_messages_table', 26),
(156, '2021_06_20_083313_add_fields_to_users_table', 27),
(158, '2021_06_21_120352_create_affiliate_users_table', 28),
(159, '2021_06_17_095348_create_app_programmes_table', 29),
(160, '2021_06_18_031949_create_app_programme_histories_table', 29),
(161, '2021_06_22_155011_add_payment_setting_fields_settings_table', 30),
(162, '2021_06_25_080335_create_social_media_settings_table', 30),
(163, '2021_06_26_123850_add_setting_extra_field_to_settings_table', 30),
(164, '2021_06_28_101946_create_module_settings_table', 30),
(166, '2021_07_01_112406_add_attribute_type_id_into_item_attributes_table', 31),
(168, '2021_07_01_171305_create_item_view_histories_table', 32),
(174, '2021_07_04_114613_create_ratings_table', 33),
(175, '2021_07_05_155555_create_video_reviews_table', 34),
(176, '2021_07_07_094230_add_custom_columns_into_password_reset_table', 35),
(177, '2021_07_07_124525_create_competition_offers_table', 36),
(178, '2021_07_07_130151_create_nationalities_table', 37),
(180, '2021_07_08_091445_create_competitions_table', 38),
(185, '2021_07_08_130505_create_vendor_registrations_table', 39),
(186, '2021_07_12_085735_change_column_def_on_app_programme_table', 39),
(187, '2021_07_12_154335_create_email_subscriptions_table', 39),
(188, '2021_07_13_120418_add_new_columns_into_item_inventory_table', 40),
(191, '2021_07_13_120441_add_new_columns_into_item_inventory_history_table', 41),
(192, '2021_07_18_092337_add_dob_column_into_users_table', 41),
(194, '2021_07_18_112006_create_user_shipping_addresses_table', 42),
(198, '2021_07_27_084419_create_shopping_carts_table', 43),
(199, '2021_08_01_083044_create_user_wish_lists_table', 44),
(202, '2021_08_04_162303_add_custom_column_into_permission_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 3),
(2, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_settings`
--

CREATE TABLE `module_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_credit_card` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Inactive, 1 - Active',
  `is_debit_card` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Inactive, 1 - Active',
  `paypal` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Inactive, 1 - Active',
  `cod` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Inactive, 1 - Active',
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_settings`
--

INSERT INTO `module_settings` (`id`, `is_credit_card`, `is_debit_card`, `paypal`, `cod`, `app_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 0, '2021-06-28 07:25:10', '2021-07-25 08:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `nationality`, `created_at`, `updated_at`) VALUES
(1, 'Afghan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(2, 'Albanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(3, 'Algerian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(4, 'American', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(5, 'Andorran', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(6, 'Angolan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(7, 'Antiguans', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(8, 'Argentinean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(9, 'Armenian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(10, 'Australian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(11, 'Austrian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(12, 'Azerbaijani', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(13, 'Bahamian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(14, 'Bahraini', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(15, 'Bangladeshi', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(16, 'Barbadian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(17, 'Barbudans', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(18, 'Batswana', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(19, 'Belarusian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(20, 'Belgian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(21, 'Belizean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(22, 'Beninese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(23, 'Bhutanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(24, 'Bolivian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(25, 'Bosnian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(26, 'Brazilian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(27, 'British', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(28, 'Bruneian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(29, 'Bulgarian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(30, 'Burkinabe', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(31, 'Burmese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(32, 'Burundian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(33, 'Cambodian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(34, 'Cameroonian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(35, 'Canadian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(36, 'Cape Verdean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(37, 'Central African', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(38, 'Chadian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(39, 'Chilean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(40, 'Chinese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(41, 'Colombian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(42, 'Comoran', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(43, 'Congolese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(44, 'Costa Rican', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(45, 'Croatian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(46, 'Cuban', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(47, 'Cypriot', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(48, 'Czech', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(49, 'Danish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(50, 'Djibouti', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(51, 'Dominican', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(52, 'Dutch', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(53, 'East Timorese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(54, 'Ecuadorean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(55, 'Egyptian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(56, 'Emirian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(57, 'Equatorial Guinean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(58, 'Eritrean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(59, 'Estonian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(60, 'Ethiopian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(61, 'Fijian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(62, 'Filipino', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(63, 'Finnish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(64, 'French', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(65, 'Gabonese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(66, 'Gambian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(67, 'Georgian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(68, 'German', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(69, 'Ghanaian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(70, 'Greek', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(71, 'Grenadian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(72, 'Guatemalan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(73, 'Guinea-Bissauan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(74, 'Guinean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(75, 'Guyanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(76, 'Haitian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(77, 'Herzegovinian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(78, 'Honduran', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(79, 'Hungarian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(80, 'Icelander', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(81, 'Indian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(82, 'Indonesian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(83, 'Iranian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(84, 'Iraqi', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(85, 'Irish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(86, 'Israeli', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(87, 'Italian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(88, 'Ivorian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(89, 'Jamaican', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(90, 'Japanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(91, 'Jordanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(92, 'Kazakhstani', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(93, 'Kenyan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(94, 'Kittian and Nevisian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(95, 'Kuwaiti', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(96, 'Kyrgyz', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(97, 'Laotian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(98, 'Latvian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(99, 'Lebanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(100, 'Liberian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(101, 'Libyan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(102, 'Liechtensteiner', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(103, 'Lithuanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(104, 'Luxembourger', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(105, 'Macedonian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(106, 'Malagasy', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(107, 'Malawian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(108, 'Malaysian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(109, 'Maldivan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(110, 'Malian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(111, 'Maltese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(112, 'Marshallese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(113, 'Mauritanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(114, 'Mauritian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(115, 'Mexican', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(116, 'Micronesian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(117, 'Moldovan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(118, 'Monacan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(119, 'Mongolian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(120, 'Moroccan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(121, 'Mosotho', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(122, 'Motswana', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(123, 'Mozambican', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(124, 'Namibian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(125, 'Nauruan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(126, 'Nepalese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(127, 'New Zealander', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(128, 'Ni-Vanuatu', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(129, 'Nicaraguan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(130, 'Nigerien', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(131, 'North Korean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(132, 'Northern Irish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(133, 'Norwegian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(134, 'Omani', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(135, 'Pakistani', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(136, 'Palauan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(137, 'Palestinian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(138, 'Panamanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(139, 'Papua New Guinean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(140, 'Paraguayan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(141, 'Peruvian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(142, 'Polish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(143, 'Portuguese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(144, 'Qatari', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(145, 'Romanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(146, 'Russian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(147, 'Rwandan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(148, 'Saint Lucian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(149, 'Salvadoran', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(150, 'Samoan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(151, 'San Marinese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(152, 'Sao Tomean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(153, 'Saudi', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(154, 'Scottish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(155, 'Senegalese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(156, 'Serbian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(157, 'Seychellois', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(158, 'Sierra Leonean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(159, 'Singaporean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(160, 'Slovakian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(161, 'Slovenian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(162, 'Solomon Islander', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(163, 'Somali', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(164, 'South African', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(165, 'South Korean', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(166, 'Spanish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(167, 'Sri Lankan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(168, 'Sudanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(169, 'Surinamer', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(170, 'Swazi', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(171, 'Swedish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(172, 'Swiss', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(173, 'Syrian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(174, 'Taiwanese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(175, 'Tajik', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(176, 'Tanzanian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(177, 'Thai', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(178, 'Togolese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(179, 'Tongan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(180, 'Trinidadian or Tobagonian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(181, 'Tunisian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(182, 'Turkish', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(183, 'Tuvaluan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(184, 'Ugandan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(185, 'Ukrainian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(186, 'Uruguayan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(187, 'Uzbekistani', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(188, 'Venezuelan', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(189, 'Vietnamese', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(190, 'Welsh', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(191, 'Yemenite', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(192, 'Zambian', '2021-07-07 10:05:02', '2021-07-07 10:05:02'),
(193, 'Zimbabwean', '2021-07-07 10:05:02', '2021-07-07 10:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ritzycare Personal Access Client', 'fgd0pKpTCO5blRDeTIULvIkl79TzVjZI5PhkTm4I', NULL, 'http://localhost', 1, 0, 0, '2021-06-06 02:35:56', '2021-06-06 02:35:56'),
(2, NULL, 'Ritzycare Password Grant Client', 'jCk8DHud671Sev5G7U3wUbFJC2WaFCdWgjR1SC32', 'users', 'http://localhost', 0, 1, 0, '2021-06-06 02:35:56', '2021-06-06 02:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-06 02:35:56', '2021-06-06 02:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_on` datetime DEFAULT NULL,
  `token_status` int(11) DEFAULT 0 COMMENT '0 - Pending, 1 - Used',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `expiry_on`, `token_status`, `created_at`) VALUES
('dhinesh@gmail.com', 't1ae678pnl29hd4tdm67vqeivyzj0nyr1yzwr76rxtmdplzh8jpv48wb3y0gxb68', '2021-07-14 11:30:45', 1, '2021-07-07 08:30:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `readable_group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `readable_group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard-list', 'dashboard', 'Dashboard', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(2, 'role-list', 'roles', 'Roles', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(3, 'role-create', 'roles', 'Roles', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(4, 'role-edit', 'roles', 'Roles', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(5, 'role-delete', 'roles', 'Roles', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(6, 'setting-list', 'settings', 'Settings Module', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(7, 'sm-setting-list', 'gs_social_settings', 'Social Media Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(9, 'sm-setting-update', 'gs_social_settings', 'Social Media Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(10, 'sm-review-list', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(11, 'sm-review-add', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(12, 'sm-review-edit', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(13, 'sm-review-status', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(14, 'sm-review-delete', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(15, 'sm-review-highlight', 'gs_social_reviews', 'Social Media Reviews', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(16, 'gs-payment-list', 'gs_payment_settings', 'Payment Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(18, 'gs-payment-list-update', 'gs_payment_settings', 'Payment Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(19, 'gs-module-list', 'gs_module_settings', 'Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(21, 'gs-module-update', 'gs_module_settings', 'Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(22, 'gs-banner-list', 'gs_banner_settings', 'Banner Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(23, 'gs-banner-add', 'gs_banner_settings', 'Banner Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(24, 'gs-banner-edit', 'gs_banner_settings', 'Banner Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(25, 'gs-banner-status', 'gs_banner_settings', 'Banner Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(26, 'gs-banner-delete', 'gs_banner_settings', 'Banner Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(27, 'gs-zone-list', 'gs_zone_settings', 'Zone Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(28, 'gs-zone-add', 'gs_zone_settings', 'Zone Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(29, 'gs-zone-edit', 'gs_zone_settings', 'Zone Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(30, 'gs-zone-status', 'gs_zone_settings', 'Zone Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(31, 'gs-zone-delete', 'gs_zone_settings', 'Zone Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(32, 'gs-area-list', 'gs_area_settings', 'Area Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(33, 'gs-area-add', 'gs_area_settings', 'Area Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(34, 'gs-area-edit', 'gs_area_settings', 'Area Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(35, 'gs-area-status', 'gs_area_settings', 'Area Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(36, 'gs-area-delete', 'gs_area_settings', 'Area Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(37, 'gs-category-list', 'gs_category_settings', 'Category Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(38, 'gs-category-add', 'gs_category_settings', 'Category Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(39, 'gs-category-edit', 'gs_category_settings', 'Category Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(40, 'gs-category-status', 'gs_category_settings', 'Category Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(41, 'gs-category-delete', 'gs_category_settings', 'Category Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(42, 'gs-brand-list', 'gs_brand_settings', 'Brand Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(43, 'gs-brand-add', 'gs_brand_settings', 'Brand Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(44, 'gs-brand-edit', 'gs_brand_settings', 'Brand Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(45, 'gs-brand-status', 'gs_brand_settings', 'Brand Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(46, 'gs-brand-delete', 'gs_brand_settings', 'Brand Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(47, 'gs-attribute-list', 'gs_attribute_settings', 'Attribute Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(48, 'gs-attribute-add', 'gs_attribute_settings', 'Attribute Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(49, 'gs-attribute-edit', 'gs_attribute_settings', 'Attribute Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(50, 'gs-page-list', 'gs_page_settings', 'Static Page Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(51, 'gs-page-add', 'gs_page_settings', 'Static Page Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(52, 'gs-page-edit', 'gs_page_settings', 'Static Page Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(53, 'gs-page-status', 'gs_page_settings', 'Static Page Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(54, 'gs-page-delete', 'gs_page_settings', 'Static Page Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(55, 'gs-promo-list', 'gs_promo_settings', 'Promotional Ad & Video Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(56, 'gs-promo-add', 'gs_promo_settings', 'Promotional Ad & Video Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(57, 'gs-promo-edit', 'gs_promo_settings', 'Promotional Ad & Video Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(58, 'gs-promo-status', 'gs_promo_settings', 'Promotional Ad & Video Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(59, 'gs-promo-delete', 'gs_promo_settings', 'Promotional Ad & Video Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(60, 'gs-app-pro-list', 'gs_app_program', 'App Programme Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(61, 'gs-app-pro-add', 'gs_app_program', 'App Programme Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(62, 'gs-app-pro-edit', 'gs_app_program', 'App Programme Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(63, 'gs-app-pro-status', 'gs_app_program', 'App Programme Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(64, 'gs-faq-list', 'gs_faq', 'Faq Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(65, 'gs-faq-add', 'gs_faq', 'Faq Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(66, 'gs-faq-edit', 'gs_faq', 'Faq Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(67, 'gs-faq-status', 'gs_faq', 'Faq Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(68, 'gs-faq-delete', 'gs_faq', 'Faq Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(69, 'cs-cust-list', 'cs_manage_cust', 'Customer Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(70, 'cs-cust-status', 'cs_manage_cust', 'Customer Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(71, 'cs-pro-cust-list', 'cs_premium_cust', 'Premium Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(72, 'cs-aff-cust-list', 'cs_affiliate_cust', 'Affiliate Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(73, 'cs-aff-cust-status', 'cs_affiliate_cust', 'Affiliate Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(74, 'cs-enq-list', 'cs_manage_enq', 'Enquiry Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(75, 'cs-enq-email-mask', 'cs_manage_enq', 'Enquiry Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(76, 'cs-enq-phone-mask', 'cs_manage_enq', 'Enquiry Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(77, 'cs-sub-list', 'cs_manage_subs', 'Subscriber Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(78, 'cs-sub-email-mask', 'cs_manage_subs', 'Subscriber Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(79, 'cs-sub-phone-mask', 'cs_manage_subs', 'Subscriber Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(80, 'cs-sub-status', 'cs_manage_subs', 'Subscriber Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(81, 'item-list', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(82, 'item-add', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(83, 'item-edit', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(84, 'item-status', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(85, 'item-delete', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(86, 'item-highlight', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(87, 'item-inventory', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(88, 'item-inventory-add', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(89, 'item-inventory-edit', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(90, 'item-variant-list', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(91, 'item-vendor-list', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(92, 'vendor-list', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(93, 'vendor-add', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(94, 'vendor-edit', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(95, 'vendor-status', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(96, 'vendor-delete', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(97, 'app-user-list', 'app_user_settings', 'Application User Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(98, 'app-user-add', 'app_user_settings', 'Application User Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(99, 'app-user-edit', 'app_user_settings', 'Application User Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(100, 'app-user-status', 'app_user_settings', 'Application User Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(101, 'app-user-delete', 'app_user_settings', 'Application User Settings', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(102, 'order-list', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(103, 'order-add', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(104, 'order-edit', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(105, 'order-status', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(106, 'order-invoice-view', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(107, 'order-info-mask', 'order_management', 'Order Management', 'web', '2021-08-05 06:40:05', '2021-08-05 06:40:05'),
(108, 'cs-cust-email-mask', 'cs_manage_cust', 'Customer Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(109, 'cs-cust-phone-mask', 'cs_manage_cust', 'Customer Module Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(110, 'cs-pro-cust-email-mask', 'cs_premium_cust', 'Premium Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(111, 'cs-pro-cust-phone-mask', 'cs_premium_cust', 'Premium Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(112, 'cs-aff-cust-email-mask', 'cs_affiliate_cust', 'Affiliate Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(113, 'cs-aff-cust-phone-mask', 'cs_affiliate_cust', 'Affiliate Customer Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(114, 'item-vendor-status', 'item_settings', 'Item Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(115, 'vendor-email-unmask', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04'),
(116, 'vendor-phone-unmask', 'vendor_settings', 'Vendor Settings', 'web', '2021-08-05 06:40:04', '2021-08-05 06:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `promo_ads`
--

CREATE TABLE `promo_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_type` int(11) DEFAULT 0 COMMENT '0 - Internal, 1 - External',
  `redirect_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_ads`
--

INSERT INTO `promo_ads` (`id`, `ad_title`, `ad_image`, `redirect_type`, `redirect_url`, `start_date`, `end_date`, `slug`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Vichy Lab\",\"ar\":\"\\u0645\\u0639\\u0645\\u0644 \\u0641\\u064a\\u0634\\u064a\"}', '1621243368.jpg', 0, 'http://google.com', '2021-06-07 15:23:22', '2021-06-07 15:23:22', 'vichy-lab', 1, 2, 0, '2021-06-07 13:23:49', '2021-06-09 08:48:31'),
(2, '{\"en\":\"WinLab\",\"ar\":\"\\u0645\\u0639\\u0645\\u0644 \\u0641\\u064a\\u0634\\u064a\"}', '1621251497.jpg', 0, 'http://youtube.com', '2021-06-07 15:23:22', '2021-06-07 15:23:22', 'win-lab', 1, 2, 0, '2021-06-07 13:23:49', '2021-06-09 08:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `promo_videos`
--

CREATE TABLE `promo_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_videos`
--

INSERT INTO `promo_videos` (`id`, `video_title`, `video_link`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Ondes Forever Earrings\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://www.youtube.com/watch?v=VCcVOx_gTNw', 1, 3, 0, '2021-06-07 05:46:54', '2021-06-09 06:36:38', NULL),
(2, '{\"en\":\"Age lift Procedure\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://www.youtube.com/watch?v=LLJSfU8oD60', 1, 3, 0, '2021-06-07 05:47:01', '2021-06-09 06:35:35', NULL),
(3, '{\"en\":\"Ondes Forever Earrings\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://www.youtube.com/watch?v=_JRPtr7Ahyc', 1, 3, 0, '2021-06-07 05:46:54', '2021-06-09 06:35:58', NULL),
(4, '{\"en\":\"Age lift Procedure\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://www.youtube.com/watch?v=beXq6mjTb38', 1, 3, 0, '2021-06-07 05:47:01', '2021-06-09 06:36:10', NULL),
(5, '{\"en\":\"Ondes Forever Earrings\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://www.youtube.com/watch?v=iYGOpUSbi7Q', 1, 3, 0, '2021-06-07 05:46:54', '2021-08-23 12:34:25', NULL),
(6, '{\"en\":\"Age lift Procedure\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://youtu.be/9xwazD5SyVg', 1, 3, 0, '2021-06-07 05:47:01', '2021-08-23 12:34:29', NULL),
(7, '{\"en\":\"Ondes Forever Earrings\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://youtu.be/9xwazD5SyVg', 1, 3, 0, '2021-06-07 05:46:54', '2021-08-23 12:34:32', NULL),
(8, '{\"en\":\"Age lift Procedure\",\"ar\":\"اقراط اوندز فوريفر\"}', 'https://youtu.be/9xwazD5SyVg', 1, 3, 0, '2021-06-07 05:47:01', '2021-08-23 12:34:36', NULL),
(9, '{\"en\":\"dvdsvsd\",\"ar\":\"svsdvdv\"}', 'https://www.youtube.com/watch?v=VCcVOx_gTNw', 1, 3, 0, '2021-08-19 06:38:07', '2021-08-23 12:34:39', '2021-08-19 06:40:24'),
(10, '{\"en\":\"csc\",\"ar\":\"scsc\"}', 'https://www.youtube.com/watch?v=VCcVOx_gTNw', 1, 3, 0, '2021-08-19 06:38:44', '2021-08-23 12:34:54', '2021-08-19 06:40:20'),
(11, '{\"en\":\"Ondes Forever\",\"ar\":\"\\u0627\\u0642\\u0631\\u0627\\u0637 \\u0627\\u0648\\u0646\\u062f\\u0632 \\u0641\\u0648\\u0631\\u064a\\u0641\\u0631\"}', 'https://www.youtube.com/watch?v=VCcVOx_gTNw', 1, 3, 0, '2021-08-23 08:11:34', '2021-08-23 12:34:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviews` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rateable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_position` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0 COMMENT '0 - Pending, 1 - Published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `reviews`, `rateable_type`, `rateable_id`, `user_id`, `listing_position`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'App\\Models\\Items', 2, 1, 0, 1, '2021-07-04 12:26:12', '2021-07-05 05:30:21'),
(2, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'App\\Models\\Items', 2, 1, 0, 1, '2021-07-04 12:26:12', '2021-07-05 05:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-08-05 11:31:06', '2021-08-05 11:31:06'),
(2, 'Administrator', 'web', '2021-08-05 11:31:37', '2021-08-05 11:31:37'),
(3, 'Vendor', 'web', '2021-08-05 11:32:52', '2021-08-05 11:32:52'),
(4, 'Delivery', 'web', '2021-08-05 11:33:35', '2021-08-05 11:33:35'),
(5, 'Social Media', 'web', '2021-08-05 11:35:11', '2021-08-05 11:35:11'),
(7, 'Finance', 'web', '2021-08-08 11:56:41', '2021-08-08 11:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 7),
(2, 1),
(2, 2),
(2, 7),
(3, 1),
(3, 7),
(4, 1),
(4, 2),
(4, 7),
(5, 1),
(5, 7),
(6, 1),
(6, 2),
(6, 5),
(6, 7),
(7, 1),
(7, 2),
(7, 5),
(7, 7),
(9, 1),
(9, 2),
(9, 5),
(9, 7),
(10, 1),
(10, 2),
(10, 5),
(10, 7),
(11, 7),
(12, 1),
(12, 2),
(12, 5),
(12, 7),
(13, 1),
(13, 2),
(13, 5),
(13, 7),
(14, 2),
(14, 5),
(14, 7),
(15, 1),
(15, 2),
(15, 5),
(15, 7),
(16, 1),
(16, 2),
(16, 7),
(18, 1),
(18, 2),
(18, 7),
(19, 1),
(19, 2),
(19, 7),
(21, 1),
(21, 2),
(21, 7),
(22, 1),
(22, 2),
(22, 5),
(22, 7),
(23, 1),
(23, 2),
(23, 5),
(23, 7),
(24, 1),
(24, 2),
(24, 5),
(24, 7),
(25, 1),
(25, 2),
(25, 5),
(25, 7),
(26, 1),
(26, 2),
(26, 5),
(26, 7),
(27, 1),
(27, 2),
(27, 7),
(28, 1),
(28, 2),
(28, 7),
(29, 1),
(29, 2),
(29, 7),
(30, 1),
(30, 2),
(30, 7),
(31, 1),
(31, 2),
(31, 7),
(32, 1),
(32, 2),
(32, 7),
(33, 1),
(33, 2),
(33, 7),
(34, 1),
(34, 2),
(34, 7),
(35, 1),
(35, 2),
(35, 7),
(36, 1),
(36, 2),
(36, 7),
(37, 1),
(37, 2),
(37, 7),
(38, 1),
(38, 2),
(38, 7),
(39, 1),
(39, 2),
(39, 7),
(40, 1),
(40, 2),
(40, 7),
(41, 1),
(41, 2),
(41, 7),
(42, 1),
(42, 2),
(42, 7),
(43, 1),
(43, 2),
(43, 7),
(44, 1),
(44, 2),
(44, 7),
(45, 1),
(45, 2),
(45, 7),
(46, 1),
(46, 2),
(46, 7),
(47, 1),
(47, 2),
(47, 7),
(48, 1),
(48, 2),
(48, 7),
(49, 1),
(49, 2),
(49, 7),
(50, 1),
(50, 2),
(50, 5),
(50, 7),
(51, 1),
(51, 2),
(51, 5),
(51, 7),
(52, 1),
(52, 2),
(52, 5),
(52, 7),
(53, 1),
(53, 2),
(53, 5),
(53, 7),
(54, 1),
(54, 2),
(54, 5),
(54, 7),
(55, 1),
(55, 2),
(55, 5),
(55, 7),
(56, 1),
(56, 2),
(56, 5),
(56, 7),
(57, 1),
(57, 2),
(57, 5),
(57, 7),
(58, 1),
(58, 2),
(58, 5),
(58, 7),
(59, 1),
(59, 2),
(59, 5),
(59, 7),
(60, 1),
(60, 2),
(60, 5),
(60, 7),
(61, 1),
(61, 2),
(61, 5),
(61, 7),
(62, 1),
(62, 2),
(62, 5),
(62, 7),
(63, 1),
(63, 2),
(63, 5),
(63, 7),
(64, 1),
(64, 2),
(64, 5),
(64, 7),
(65, 1),
(65, 2),
(65, 5),
(65, 7),
(66, 1),
(66, 2),
(66, 5),
(66, 7),
(67, 1),
(67, 2),
(67, 5),
(67, 7),
(68, 1),
(68, 2),
(68, 5),
(68, 7),
(69, 1),
(69, 2),
(69, 5),
(69, 7),
(70, 1),
(70, 2),
(70, 7),
(71, 1),
(71, 2),
(71, 5),
(71, 7),
(72, 1),
(72, 2),
(72, 5),
(72, 7),
(73, 1),
(73, 2),
(73, 7),
(74, 1),
(74, 2),
(74, 5),
(74, 7),
(75, 1),
(75, 2),
(75, 7),
(76, 1),
(76, 2),
(76, 7),
(77, 1),
(77, 2),
(77, 5),
(77, 7),
(78, 1),
(78, 2),
(78, 7),
(79, 1),
(79, 2),
(79, 7),
(80, 1),
(80, 2),
(80, 7),
(81, 1),
(81, 2),
(81, 3),
(81, 5),
(81, 7),
(82, 1),
(82, 2),
(82, 3),
(82, 7),
(83, 1),
(83, 2),
(83, 3),
(83, 7),
(84, 1),
(84, 2),
(84, 7),
(85, 1),
(85, 7),
(86, 1),
(86, 7),
(87, 1),
(87, 2),
(87, 3),
(87, 7),
(88, 1),
(88, 2),
(88, 3),
(88, 7),
(89, 1),
(89, 2),
(89, 3),
(89, 7),
(90, 1),
(90, 2),
(90, 3),
(90, 7),
(91, 1),
(91, 2),
(91, 7),
(92, 1),
(92, 2),
(92, 5),
(92, 7),
(93, 1),
(93, 2),
(93, 7),
(94, 1),
(94, 2),
(94, 7),
(95, 1),
(95, 2),
(95, 7),
(96, 1),
(96, 2),
(96, 7),
(97, 1),
(97, 2),
(97, 7),
(98, 1),
(98, 2),
(98, 7),
(99, 1),
(99, 2),
(99, 7),
(100, 1),
(100, 2),
(100, 7),
(101, 1),
(101, 2),
(101, 7),
(102, 1),
(102, 2),
(102, 3),
(102, 4),
(102, 5),
(102, 7),
(103, 1),
(103, 2),
(103, 4),
(103, 7),
(104, 1),
(104, 2),
(104, 4),
(104, 7),
(105, 1),
(105, 2),
(105, 4),
(105, 7),
(106, 1),
(106, 2),
(106, 4),
(106, 7),
(107, 1),
(107, 2),
(107, 4),
(107, 7),
(108, 2),
(108, 7),
(109, 2),
(109, 7),
(110, 2),
(110, 7),
(111, 7),
(112, 7),
(113, 7),
(114, 1),
(114, 7),
(115, 1),
(115, 7),
(116, 1),
(116, 7);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customercare_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customercare_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `express_delivery_hrs` double DEFAULT NULL,
  `standard_delivery_hrs` double DEFAULT NULL,
  `express_delivery` double DEFAULT 0 COMMENT 'Amount',
  `standard_delivery` double DEFAULT 0 COMMENT 'Amount',
  `scheduled_delivery` double DEFAULT 0 COMMENT 'Amount',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_account` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_api` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migs_merchant_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migs_access_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `migs_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naps_merchant_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naps_bank_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naps_secret_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` int(11) DEFAULT 0 COMMENT '0 - Sandbox, 1 - Live',
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_delivery_hrs` double DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_mode` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Offline, 1 - Live',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `about_site`, `customercare_email`, `customercare_number`, `meta_title`, `meta_keywords`, `meta_description`, `express_delivery_hrs`, `standard_delivery_hrs`, `express_delivery`, `standard_delivery`, `scheduled_delivery`, `country_code`, `paypal_account`, `paypal_api`, `paypal_signature`, `migs_merchant_id`, `migs_access_code`, `migs_secret_key`, `naps_merchant_id`, `naps_bank_id`, `naps_secret_key`, `payment_mode`, `currency_code`, `schedule_delivery_hrs`, `logo`, `favicon`, `logo_ar`, `favicon_ar`, `site_mode`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Rizycare\",\"ar\":\"Rizycare\"}', '{\"en\":\"Founded with the purpose of spreading beauty, care and wellness to everyone everywhere, through our carefully curated collection of services and products.\",\"ar\":\"\\u062a\\u0623\\u0633\\u0633\\u062a \\u0628\\u0647\\u062f\\u0641 \\u0646\\u0634\\u0631 \\u0627\\u0644\\u062c\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0639\\u0627\\u0641\\u064a\\u0629 \\u0644\\u0644\\u062c\\u0645\\u064a\\u0639 \\u0641\\u064a \\u0643\\u0644 \\u0645\\u0643\\u0627\\u0646 \\u060c \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0645\\u062c\\u0645\\u0648\\u0639\\u062a\\u0646\\u0627 \\u0627\\u0644\\u0645\\u0646\\u0633\\u0642\\u0629 \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a.\"}', 'info@ritzy.care', '1234 5678 9101', 'Online Shopping for Women in Qatar | Buy Beauty, Cosmetics, Fragrances &amp; More', 'ritzycare,cosmetic,ازياء,بوتيك ,skin care,مكياج ناعم,اسواق,golden,nice, b,عطر,grooming,beauty,perfumes', 'Buy Beauty &amp; Cosmetic Products Online for Women in Qatar Shop for Fashion, Perfumes &amp;amp; Makeup Accessories from top celebrity brands at ritzycare.com. ✓COD ✓Exclusive Brands ✓Trending Products ✓100% Genuine Products.', 8, 12, 20, 10, 15, '974', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 10, NULL, NULL, NULL, NULL, 1, '2021-06-14 13:15:17', '2021-07-25 07:52:32');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT 0 COMMENT '0 - Normal, 1 - Premium',
  `ref_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Package - rowId',
  `cart_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` int(11) DEFAULT 0 COMMENT '0 - Web, 1 - Android, 2 - IOS',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `user_type`, `ref_id`, `cart_id`, `item_id`, `item_name`, `price`, `quantity`, `options`, `device_id`, `device_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0999f7db08dde7e178a31c14e850a3bc', 22, 15, '*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml', 21.56, 1, '{\"item_id\":15,\"item_code\":\"RC-OPKW0ETN\",\"item_name_en\":\"*** Rodan And + Field Lash Boost Eyelash Conditioning Serum New Sealed 5 Ml\",\"item_name_ar\":\"*** \\u0631\\u0648\\u062f\\u0627\\u0646 \\u0623\\u0646\\u062f + \\u0641\\u064a\\u0644\\u062f \\u0644\\u0627\\u0634 \\u0628\\u0648\\u0633\\u062a \\u0633\\u064a\\u0631\\u0648\\u0645 \\u0645\\u0643\\u064a\\u0641 \\u0627\\u0644\\u0631\\u0645\\u0648\\u0634 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f \\u0645\\u062e\\u062a\\u0648\\u0645 5 \\u0645\\u0644\",\"has_variant\":0,\"variant_id\":\"22\",\"has_inventory_track\":1,\"stock\":44,\"image\":\"RC-OPKW0ETN-0.jpg\",\"item_category_id\":13,\"item_category\":\"{\\\"en\\\":\\\"Products\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0646\\\\u062a\\\\u062c\\\\u0627\\\\u062a\\\"}\",\"base_price\":44,\"selling_price\":44,\"discount\":0,\"member_discount\":51,\"member_selling_price\":21.56,\"item_type\":1}', 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 0, '2021-07-27 11:42:47', '2021-08-08 14:07:44'),
(2, 1, 1, '3a2388ae30fdd5541fd4304d2f58f76b', 11, 5, 'One Step Hair Dryer & Volumiser', 16, 2, '{\"item_id\":5,\"item_code\":\"RC-WOV0SP1I\",\"item_name_en\":\"One Step Hair Dryer & Volumiser\",\"item_name_ar\":\"\\u062c\\u0647\\u0627\\u0632 \\u062a\\u062c\\u0641\\u064a\\u0641 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\",\"has_variant\":0,\"variant_id\":\"11\",\"has_inventory_track\":1,\"stock\":100,\"image\":\"RC-WOV0SP1I-0.jpg\",\"item_category_id\":13,\"item_category\":\"{\\\"en\\\":\\\"Products\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0646\\\\u062a\\\\u062c\\\\u0627\\\\u062a\\\"}\",\"base_price\":20,\"selling_price\":19,\"discount\":5,\"member_discount\":20,\"member_selling_price\":16,\"item_type\":1}', 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 0, '2021-07-27 11:44:37', '2021-08-08 14:07:44'),
(3, 1, 1, '38da22230e826ecd73c412cb7fea51e2', 19, 12, '6in1 Ultrasonic Cavitation Fat Remover Anti-cellulite Body Slimming Machine Gel', 14, 1, '{\"item_id\":12,\"item_code\":\"RC-O9CJDP3L\",\"item_name_en\":\"6in1 Ultrasonic Cavitation Fat Remover Anti-cellulite Body Slimming Machine Gel\",\"item_name_ar\":\"6in1 \\u0628\\u0627\\u0644\\u0645\\u0648\\u062c\\u0627\\u062a \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062c\\u0648\\u064a\\u0641 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u062f\\u0647\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0636\\u0627\\u062f\\u0629 \\u0644\\u0644\\u0633\\u064a\\u0644\\u0648\\u0644\\u064a\\u062a \\u0627\\u0644\\u062c\\u0633\\u0645 \\u0627\\u0644\\u062a\\u062e\\u0633\\u064a\\u0633 \\u0622\\u0644\\u0629 \\u062c\\u0644\",\"has_variant\":0,\"variant_id\":\"19\",\"has_inventory_track\":1,\"stock\":56,\"image\":\"RC-O9CJDP3L-0.jpg\",\"item_category_id\":13,\"item_category\":\"{\\\"en\\\":\\\"Products\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0646\\\\u062a\\\\u062c\\\\u0627\\\\u062a\\\"}\",\"base_price\":56,\"selling_price\":16.8,\"discount\":70,\"member_discount\":75,\"member_selling_price\":14,\"item_type\":1}', 't85kjsnzSboJRLJW28wVq0UTB8fn07yxT9T8gbzu', 0, '2021-07-27 11:44:49', '2021-08-08 14:07:44'),
(4, 1, 1, '3a2388ae30fdd5541fd4304d2f58f76b', 11, 5, 'One Step Hair Dryer & Volumiser', 16, 1, '{\"item_id\":5,\"item_code\":\"RC-WOV0SP1I\",\"item_name_en\":\"One Step Hair Dryer & Volumiser\",\"item_name_ar\":\"\\u062c\\u0647\\u0627\\u0632 \\u062a\\u062c\\u0641\\u064a\\u0641 \\u0648\\u0645\\u0643\\u062b\\u0641 \\u0627\\u0644\\u0634\\u0639\\u0631 \\u0628\\u062e\\u0637\\u0648\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629\",\"has_variant\":0,\"variant_id\":\"11\",\"has_inventory_track\":1,\"stock\":100,\"image\":\"RC-WOV0SP1I-0.jpg\",\"item_category_id\":13,\"item_category\":\"{\\\"en\\\":\\\"Products\\\",\\\"ar\\\":\\\"\\\\u0645\\\\u0646\\\\u062a\\\\u062c\\\\u0627\\\\u062a\\\"}\",\"base_price\":20,\"selling_price\":19,\"discount\":5,\"member_discount\":20,\"member_selling_price\":16,\"item_type\":1}', 'xO73Z6ahCOYq0xtYfgUdgFfMEMDkL4FdZXC2DiiR', 0, '2021-08-08 14:07:44', '2021-08-08 14:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_reviews`
--

CREATE TABLE `social_media_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posted_date` date DEFAULT NULL,
  `media_type` int(11) DEFAULT NULL COMMENT 'Ref - Config',
  `rating` int(11) DEFAULT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_higlight` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_reviews`
--

INSERT INTO `social_media_reviews` (`id`, `name`, `image`, `posted_date`, `media_type`, `rating`, `comments`, `is_higlight`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 'Mariyam Hoggard', '1625482562.png', '2021-07-05', 0, 2, '<p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 1, 1, 3, 0, '2021-07-05 10:56:02', '2021-08-08 05:47:33', NULL),
(10, 'James Anderson', NULL, '2021-07-04', 1, 3, '<p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 1, 1, 3, 0, '2021-07-05 10:56:35', '2021-07-05 10:57:31', NULL),
(11, 'Virat Kohli', NULL, '2021-07-02', 2, 4, '<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 1, 1, 3, 0, '2021-07-05 10:57:01', '2021-07-05 11:07:56', NULL),
(12, 'Dhoni M.S', NULL, '2021-07-01', 3, 5, '<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 1, 1, 3, 0, '2021-07-05 10:57:27', '2021-07-05 10:57:35', NULL),
(13, 'Rohit Sharma', NULL, '2021-06-17', 0, 3, '<p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 0, 1, 3, 0, '2021-07-05 10:57:57', '2021-07-05 11:09:45', NULL),
(14, 'Maiye', NULL, '2021-07-02', 1, 4, '<p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 0, 1, 3, 0, '2021-07-05 10:58:21', '2021-07-05 10:58:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media_settings`
--

CREATE TABLE `social_media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_app` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_app` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_sdk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_settings`
--

INSERT INTO `social_media_settings` (`id`, `facebook`, `twiter`, `linkedin`, `youtube`, `snapchat`, `instagram`, `android_app`, `ios_app`, `google_analytics`, `google_tag`, `facebook_sdk`, `app_type`, `created_at`, `updated_at`) VALUES
(1, 'https://facebook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-07-05 08:10:19', '2021-07-05 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `static_pages`
--

CREATE TABLE `static_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_pages`
--

INSERT INTO `static_pages` (`id`, `page_title`, `page_content`, `slug`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 'testimonials', 1, 3, 0, '2021-06-07 07:54:49', '2021-06-07 07:54:49', NULL),
(2, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 'privacy-policy', 1, 3, 0, '2021-06-07 07:54:49', '2021-06-07 07:54:49', NULL),
(3, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 'terms-conditions', 1, 3, 0, '2021-06-07 07:54:49', '2021-06-07 07:54:49', NULL),
(4, '{\"en\":\"What is Lorem Ipsum?\",\"ar\":\"ما هو lorem ipsum؟\"}', '{\"en\":\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"ar\":\"لوريم إيبسوم هو ببساطة نص شكلي يستخدم في صناعة الطباعة والتنضيد. كان Lorem Ipsum هو النص الوهمي القياسي في الصناعة منذ القرن الخامس عشر الميلادي ، عندما أخذت طابعة غير معروفة لوحًا من النوع وتدافعت عليه لعمل كتاب عينة. لقد نجت ليس فقط خمسة قرون ، ولكن أيضًا القفزة في التنضيد الإلكتروني ، وظلت دون تغيير جوهري. تم نشره في الستينيات من القرن الماضي مع إصدار أوراق Letraset التي تحتوي على مقاطع Lorem Ipsum ، ومؤخرًا مع برامج النشر المكتبي مثل Aldus PageMaker بما في ذلك إصدارات Lorem Ipsum.\"}', 'return-policy', 1, 3, 0, '2021-06-07 07:54:49', '2021-06-07 07:54:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_no` int(11) DEFAULT 0,
  `street_no` int(11) DEFAULT 0,
  `zone_no` int(11) DEFAULT 0,
  `landmark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_box` int(11) DEFAULT 0,
  `sm_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fm_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fm_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fm_contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone_id` int(11) DEFAULT 0,
  `area_id` int(11) DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `vendor_id`, `store_name`, `contact_number`, `building_no`, `street_no`, `zone_no`, `landmark`, `po_box`, `sm_name`, `sm_email`, `sm_contact_number`, `fm_name`, `fm_email`, `fm_contact_number`, `zone_id`, `area_id`, `slug`, `is_active`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '{\"en\":\"Karak Stop\",\"ar\":\"\\u0645\\u062a\\u062c\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', '44442222', 102, 113, 124, 'Pearl Qatar', 662255, 'Vin', 'diesel@gmail.com', '44443333', 'Rodn', 'red@gmail.com', '44441111', 1, 1, 'karak-stop', 1, 1, 3, 0, '2021-05-19 04:18:06', '2021-05-19 11:18:11', NULL),
(2, 4, '{\"en\":\"Testing Store\",\"ar\":\"\\u0643\\u0627\\u0631\\u0627\\u0643\\u0633\\u062a\\u0648\\u0628\"}', '77778888', 12, 23, 89, 'Landmark mall', 45896, 'Vin', 'vin@gmail.com', '33556655', 'Rodine', 'rod@gmail.com', '66556655', 1, 1, 'karakstop', 1, 1, 3, 0, '2021-05-19 09:19:05', '2021-05-19 10:58:13', NULL),
(3, 6, '{\"en\":\"Vendor 2 Store\",\"ar\":\"\\u0627\\u0644\\u0628\\u0627\\u0626\\u0639 2 \\u0627\\u0644\\u0645\\u062a\\u062c\\u0631\"}', '33330000', 12, 1, 231, 'Borooq Tower', 66220, 'Vendor Two SM', 'vtsm@gmail.com', '66660000', 'Vendor Two FM', 'vtfm@gmail.com', '55550000', 2, 2, 'vendor-2-store', 1, 1, 3, 0, '2021-06-01 03:42:53', '2021-06-01 03:42:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `dial_code` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expiry` datetime DEFAULT NULL,
  `token_status` int(11) DEFAULT 0 COMMENT '0 - Pending, 1 - Verified',
  `is_active` int(11) DEFAULT 0 COMMENT '0 - In Active, 1 - Active',
  `is_subscribed` int(11) DEFAULT 0 COMMENT '0 - Normal User, 1 - Premium User',
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `dob`, `dial_code`, `phone_number`, `email_verified_at`, `password`, `verification_token`, `token_expiry`, `token_status`, `is_active`, `is_subscribed`, `last_login`, `last_login_ip`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dhinesh', 'dhinesh@gmail.com', '2021-05-20', 974, 55555555, '2021-06-20 12:35:39', '$2y$10$FghxZEHqPr9BJfteY1m8.elBgs3Jd9nHNKQlfL/5Fnm9eo3HtpFmG', 'RlkyUkdBNDZTRUJKMzdXTDU4RFgwMU5RVFZNS1BPOVo=', '2021-06-27 15:34:54', 1, 1, 1, '2021-08-08 17:07:44', '::1', NULL, '2021-06-20 12:34:54', '2021-08-08 14:07:44'),
(2, 'Praveena', 'qa@360-bytes.com', NULL, 974, 50640118, '2021-06-28 03:47:48', '$2y$10$acS4DGc9QPFIdJR3/818F.sT8D6bZhagYr4uZCaDI0eRCA1HXIofS', 'WVFXRlpCVEs1T1ZDMUpOTDc4OTAySTNHNkFYU1I0SEQ=', '2021-07-05 09:17:48', 1, 1, 0, NULL, '89.211.174.52', NULL, '2021-06-28 03:47:48', '2021-06-28 03:47:48'),
(3, 'Krishna Kumar K', 'projects@360-bytes.com', NULL, 974, 50424433, '2021-06-28 04:30:11', '$2y$10$uOCzUYElFZT91ttueUUqPuAV0iGII8ZtQkfjvgUsFwu/NvAvH8FkW', 'WU9YQ0xKOEtBMk5FVjAxQjdNM1A1UUdIWlJTSUQ5RjY=', '2021-07-05 10:00:11', 1, 1, 0, NULL, '89.211.174.52', NULL, '2021-06-28 04:30:11', '2021-06-28 04:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping_addresses`
--

CREATE TABLE `user_shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_no` int(11) DEFAULT NULL,
  `street_no` int(11) DEFAULT NULL,
  `zone_no` int(11) DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_shipping_addresses`
--

INSERT INTO `user_shipping_addresses` (`id`, `user_id`, `first_name`, `last_name`, `email`, `dial_code`, `phone_number`, `building_no`, `street_no`, `zone_no`, `address`, `is_default`, `created_at`, `updated_at`) VALUES
(2, 1, 'Aathi', 'Rocks', 'aathimithran@gmail.com', '974', '77556644', 75, 890, 10, 'Al dafna, Doha, Qatar', 0, '2021-07-19 07:20:24', '2021-07-25 11:10:00'),
(3, 1, 'Dhinesh', 'Raj', 'dhinesh@gmail.com', '974', '33556644', 175, 290, 104, 'C Ring Road, Al Mansoura, Doha, Qatar', 1, '2021-07-19 09:11:17', '2021-07-25 11:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_wish_lists`
--

CREATE TABLE `user_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wish_lists`
--

INSERT INTO `user_wish_lists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(6, 1, 6, '2021-08-01 12:15:52', '2021-08-02 06:20:19'),
(8, 1, 1, '2021-08-01 13:18:06', '2021-08-01 13:18:06'),
(13, 1, 5, '2021-08-02 07:15:45', '2021-08-02 07:15:45'),
(15, 1, 11, '2021-08-02 07:15:52', '2021-08-02 07:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_margin_details`
--

CREATE TABLE `vendor_margin_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `margin_percentage` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_margin_details`
--

INSERT INTO `vendor_margin_details` (`id`, `margin_percentage`, `vendor_id`, `created_at`, `updated_at`) VALUES
(7, 12, 4, '2021-05-19 09:05:12', '2021-05-19 09:05:12'),
(8, 10, 6, '2021-06-01 03:42:53', '2021-06-01 03:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_payouts`
--

CREATE TABLE `vendor_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) DEFAULT NULL COMMENT 'fkey of admin',
  `paycycle_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paycycle_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_sales` double DEFAULT 0 COMMENT 'This pay cycle',
  `total_paid` double DEFAULT 0,
  `total_payable` double DEFAULT 0,
  `total_outstanding` double DEFAULT 0,
  `prev_outstanding` double DEFAULT 0,
  `is_active` int(11) DEFAULT 1 COMMENT '1 - Active, 0 - In Active',
  `status` int(11) DEFAULT 1 COMMENT '1 - Pending, 0 - Completed',
  `paid_by` int(11) DEFAULT 0,
  `paid_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_payouts`
--

INSERT INTO `vendor_payouts` (`id`, `vendor_id`, `paycycle_start`, `paycycle_end`, `total_sales`, `total_paid`, `total_payable`, `total_outstanding`, `prev_outstanding`, `is_active`, `status`, `paid_by`, `paid_date`, `created_at`, `updated_at`) VALUES
(5, 4, '2021-05-19 12:05:12', '2021-06-19 12:05:12', 0, 0, 0, 0, 0, 1, 1, 0, NULL, '2021-05-19 09:04:46', '2021-05-19 09:05:12'),
(6, 6, '2021-06-01 06:42:53', '2021-07-01 06:42:53', 0, 0, 0, 0, 0, 1, 1, 0, NULL, '2021-06-01 03:42:53', '2021-06-01 03:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_registrations`
--

CREATE TABLE `vendor_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '974',
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_no` int(11) DEFAULT NULL,
  `street_no` int(11) DEFAULT NULL,
  `zone_no` int(11) DEFAULT NULL,
  `store_portfolio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Pending, 1 - Approved, 2 - Declined',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_reviews`
--

CREATE TABLE `video_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_highlight` int(11) DEFAULT 0 COMMENT '0 - No, 1 - Yes',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `app_type` int(11) NOT NULL DEFAULT 0 COMMENT '0 - Both, 1 - Men, 2 - Women',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_reviews`
--

INSERT INTO `video_reviews` (`id`, `video_name`, `video_url`, `is_highlight`, `status`, `modified_by`, `app_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'video 1', 'https://www.youtube.com/watch?v=DaLha1j5PrE', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:49:51', NULL),
(2, 'video 1', 'https://www.youtube.com/watch?v=e8eqPKlRA14', 1, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:50:10', NULL),
(3, 'video 1', 'https://www.youtube.com/watch?v=FFVhDj8Ixk4', 1, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:50:29', NULL),
(4, 'video 1', 'https://www.youtube.com/watch?v=J3qKui3GKo4', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:04:04', NULL),
(5, 'video 1', 'https://www.youtube.com/watch?v=_K7eDg3TO00', 1, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:50:55', NULL),
(6, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 1, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:47', NULL),
(7, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(8, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(9, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(10, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(11, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(12, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(13, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(14, 'video 1', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-07-05 13:51:29', NULL),
(15, 'test video', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-08-24 07:08:22', NULL),
(16, 'ddd', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-08-23 12:54:26', NULL),
(17, 'asss', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-08-23 12:54:21', NULL),
(18, 'dsd', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-08-23 12:54:19', NULL),
(19, 'ASSas', 'https://www.youtube.com/watch?v=otej7WLdPh0', 0, 1, 0, 0, '2021-07-05 13:04:04', '2021-08-23 12:54:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 - Inactive, 1 - Active',
  `slug` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `zone_name`, `status`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"Doha\",\"ar\":\"\\u0627\\u0644\\u062f\\u0648\\u062d\\u0629\"}', 1, 'doha', '2021-05-04 02:29:16', '2021-05-09 03:11:57', NULL),
(2, '{\"en\":\"Al Wakara\",\"ar\":\"\\u0623\\u0644 \\u0648\\u0627\\u0642\\u0631\\u0627\"}', 1, 'al-wakara', '2021-05-04 02:40:23', '2021-05-09 06:43:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_programmes`
--
ALTER TABLE `app_programmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_programmes_app_type_index` (`app_type`);

--
-- Indexes for table `app_programme_histories`
--
ALTER TABLE `app_programme_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_programme_histories_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_types`
--
ALTER TABLE `attribute_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competitions_is_agree_index` (`is_agree`),
  ADD KEY `competitions_is_permission_index` (`is_permission`),
  ADD KEY `competitions_app_type_index` (`app_type`);

--
-- Indexes for table `competition_offers`
--
ALTER TABLE `competition_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_offers_app_type_index` (`app_type`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_subscriptions`
--
ALTER TABLE `email_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_app_type_index` (`app_type`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_item_sku_unique` (`item_sku`),
  ADD UNIQUE KEY `items_item_rcin_unique` (`item_rcin`),
  ADD KEY `items_item_name_index` (`item_name`(768)),
  ADD KEY `items_brand_id_index` (`brand_id`),
  ADD KEY `items_item_group_index` (`item_group`),
  ADD KEY `items_item_sku_index` (`item_sku`),
  ADD KEY `items_item_rcin_index` (`item_rcin`),
  ADD KEY `items_is_active_index` (`is_active`),
  ADD KEY `items_status_index` (`status`),
  ADD KEY `items_app_type_index` (`app_type`);

--
-- Indexes for table `item_attributes`
--
ALTER TABLE `item_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_attributes_item_id_foreign` (`item_id`),
  ADD KEY `item_attributes_item_rcin_index` (`item_rcin`),
  ADD KEY `item_attributes_variant_rcin_index` (`variant_rcin`),
  ADD KEY `item_attributes_variant_type_index` (`variant_type`),
  ADD KEY `item_attributes_attribute_type_index` (`attribute_type`),
  ADD KEY `item_attributes_status_index` (`status`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`),
  ADD KEY `item_images_item_attribute_id_foreign` (`item_attribute_id`);

--
-- Indexes for table `item_inventories`
--
ALTER TABLE `item_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_inventories_item_id_foreign` (`item_id`),
  ADD KEY `item_inventories_attribute_id_index` (`attribute_id`),
  ADD KEY `item_inventories_vendor_id_index` (`vendor_id`),
  ADD KEY `item_inventories_store_id_index` (`store_id`),
  ADD KEY `item_inventories_base_price_index` (`base_price`),
  ADD KEY `item_inventories_selling_price_index` (`selling_price`),
  ADD KEY `item_inventories_quantity_index` (`quantity`),
  ADD KEY `item_inventories_purchase_count_index` (`purchase_count`),
  ADD KEY `item_inventories_status_index` (`status`);

--
-- Indexes for table `item_inventory_histories`
--
ALTER TABLE `item_inventory_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_inventory_histories_item_id_foreign` (`item_id`),
  ADD KEY `item_inventory_histories_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `item_promotions`
--
ALTER TABLE `item_promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_promotions_promotion_id_index` (`promotion_id`),
  ADD KEY `item_promotions_is_expired_index` (`is_expired`),
  ADD KEY `item_promotions_status_index` (`status`);

--
-- Indexes for table `item_promotion_histories`
--
ALTER TABLE `item_promotion_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_promotion_histories_item_id_index` (`item_id`),
  ADD KEY `item_promotion_histories_promotion_id_index` (`promotion_id`);

--
-- Indexes for table `item_specifications`
--
ALTER TABLE `item_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_specifications_item_id_foreign` (`item_id`),
  ADD KEY `item_specifications_specification_name_index` (`specification_name`),
  ADD KEY `item_specifications_status_index` (`status`);

--
-- Indexes for table `item_view_histories`
--
ALTER TABLE `item_view_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `module_settings`
--
ALTER TABLE `module_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_settings_app_type_index` (`app_type`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `promo_ads`
--
ALTER TABLE `promo_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_ads_app_type_index` (`app_type`);

--
-- Indexes for table `promo_videos`
--
ALTER TABLE `promo_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_videos_app_type_index` (`app_type`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_reviews`
--
ALTER TABLE `social_media_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_reviews_app_type_index` (`app_type`);

--
-- Indexes for table `social_media_settings`
--
ALTER TABLE `social_media_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_settings_app_type_index` (`app_type`);

--
-- Indexes for table `static_pages`
--
ALTER TABLE `static_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_pages_app_type_index` (`app_type`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_shipping_addresses`
--
ALTER TABLE `user_shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wish_lists`
--
ALTER TABLE `user_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_margin_details`
--
ALTER TABLE `vendor_margin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_payouts`
--
ALTER TABLE `vendor_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_registrations`
--
ALTER TABLE `vendor_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_reviews`
--
ALTER TABLE `video_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_reviews_app_type_index` (`app_type`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_programmes`
--
ALTER TABLE `app_programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app_programme_histories`
--
ALTER TABLE `app_programme_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_types`
--
ALTER TABLE `attribute_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competition_offers`
--
ALTER TABLE `competition_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_subscriptions`
--
ALTER TABLE `email_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `item_attributes`
--
ALTER TABLE `item_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `item_inventories`
--
ALTER TABLE `item_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `item_inventory_histories`
--
ALTER TABLE `item_inventory_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `item_promotions`
--
ALTER TABLE `item_promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `item_promotion_histories`
--
ALTER TABLE `item_promotion_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `item_specifications`
--
ALTER TABLE `item_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `item_view_histories`
--
ALTER TABLE `item_view_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `module_settings`
--
ALTER TABLE `module_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `promo_ads`
--
ALTER TABLE `promo_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promo_videos`
--
ALTER TABLE `promo_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_media_reviews`
--
ALTER TABLE `social_media_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `social_media_settings`
--
ALTER TABLE `social_media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `static_pages`
--
ALTER TABLE `static_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_shipping_addresses`
--
ALTER TABLE `user_shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_wish_lists`
--
ALTER TABLE `user_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vendor_margin_details`
--
ALTER TABLE `vendor_margin_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendor_payouts`
--
ALTER TABLE `vendor_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor_registrations`
--
ALTER TABLE `vendor_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_reviews`
--
ALTER TABLE `video_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_programme_histories`
--
ALTER TABLE `app_programme_histories`
  ADD CONSTRAINT `app_programme_histories_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `app_programmes` (`id`);

--
-- Constraints for table `item_attributes`
--
ALTER TABLE `item_attributes`
  ADD CONSTRAINT `item_attributes_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_images`
--
ALTER TABLE `item_images`
  ADD CONSTRAINT `item_images_item_attribute_id_foreign` FOREIGN KEY (`item_attribute_id`) REFERENCES `item_attributes` (`id`),
  ADD CONSTRAINT `item_images_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_inventories`
--
ALTER TABLE `item_inventories`
  ADD CONSTRAINT `item_inventories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_inventory_histories`
--
ALTER TABLE `item_inventory_histories`
  ADD CONSTRAINT `item_inventory_histories_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `item_specifications`
--
ALTER TABLE `item_specifications`
  ADD CONSTRAINT `item_specifications_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
