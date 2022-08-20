-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 يوليو 2022 الساعة 21:15
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- بنية الجدول `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `store_id`, `cart_id`, `size`, `color`, `product_id`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '0dd43694-f92d-4508-bea6-d19ef7f57d17', NULL, NULL, '3', '1', NULL, '2022-06-25 05:56:10', '2022-06-25 05:56:10'),
(2, NULL, 1, '0dd43694-f92d-4508-bea6-d19ef7f57d17', '3', 'white', '10', '3', NULL, '2022-06-25 06:17:49', '2022-06-25 06:17:49'),
(23, NULL, 1, '396a15b7-f8d4-407f-85a8-675de4332154', 'M', 'Khaki', '12', '1', NULL, '2022-07-20 15:14:53', '2022-07-20 15:14:53');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `store_id`, `name`, `name_ar`, `desc`, `desc_ar`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, NULL, 1, 'women', 'women', 'women', 'women', '62b04c2180b63.png', 'active', NULL, '2022-06-20 07:27:36', '2022-06-20 09:08:37'),
(4, NULL, 1, 'Man', 'Man', 'Man clothes', 'Man clothes', '62b04d28340eb.png', 'active', NULL, '2022-06-20 07:34:16', '2022-06-20 09:09:30'),
(5, NULL, 1, 'Shoes', 'Shoes', 'Shoes', 'Shoes', '62b05ce778576.png', 'active', NULL, '2022-06-20 07:38:50', '2022-06-20 09:09:59'),
(6, NULL, 1, 'Kids', 'Kids', 'Kids clothes', 'Kids clothes', '62b05d5c67a9e.png', 'active', NULL, '2022-06-20 08:43:24', '2022-06-20 09:11:09'),
(9, NULL, 1, 'Abayas', 'عبايات', 'Abayas', 'عبايات', '62baca897a50a.png', 'active', NULL, '2022-06-28 06:31:53', '2022-06-28 06:31:53');

-- --------------------------------------------------------

--
-- بنية الجدول `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `cities`
--

INSERT INTO `cities` (`id`, `city_id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, '1', 'Beit Lahiya', NULL, NULL),
(2, '5', 'Bani Suheila', NULL, NULL),
(3, '25', 'Jabalia', NULL, NULL),
(4, '26', 'Beit Hanoun', NULL, NULL),
(5, '27', 'Rafah', NULL, NULL),
(6, '29', 'Khan Younes', NULL, NULL),
(7, '44', 'Gaza', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `commpanies`
--

CREATE TABLE `commpanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `commpanies`
--

INSERT INTO `commpanies` (`id`, `company_id`, `company_name`, `created_at`, `updated_at`, `logo`, `desc`) VALUES
(1, '111', 'حمامة', '2022-06-24 15:22:06', '2022-07-05 23:12:12', NULL, 'ديلفري حمامة  للخدمات اللوجستية'),
(3, '222', 'حمامة للتوصيل', '2022-07-05 23:12:32', '2022-07-05 23:12:32', NULL, 'حمامة للتوصيل');

-- --------------------------------------------------------

--
-- بنية الجدول `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'noor rezq', 'noor@gmail.com', 'mmmmmmmmmmmmm', NULL, '2022-06-25 05:28:00', '2022-06-25 05:28:00');

-- --------------------------------------------------------

--
-- بنية الجدول `contact_us_ecommerces`
--

CREATE TABLE `contact_us_ecommerces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `contact_us_ecommerces`
--

INSERT INTO `contact_us_ecommerces` (`id`, `name`, `email`, `subject`, `msg`, `created_at`, `updated_at`) VALUES
(2, 'noor', 'noor2@gmail.com', 'التسليم', 'التسليم', '2022-07-05 21:12:28', '2022-07-05 21:12:28'),
(3, 'dina', 'dina11@gmail.com', 'التسليم', 'التسلييم', '2022-07-05 22:29:43', '2022-07-05 22:29:43'),
(4, 'ameera emad', 'ameera5@gmail.com', 'التسليم', 'التسلييم', '2022-07-05 23:05:09', '2022-07-05 23:05:09');

-- --------------------------------------------------------

--
-- بنية الجدول `currently_sells`
--

CREATE TABLE `currently_sells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `store_id`, `email`, `phone`, `city`, `address`, `postal_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ameera', 'emad', '1', 'ameera@gmail.com', '12121212121', '1', 'gaza', 'NULL', NULL, '2022-06-25 06:02:23', '2022-07-05 21:16:35'),
(2, 'dina', 'ibraim', '1', 'dina@gmail.com', '0599123456', '27', 'gaza', 'NULL', '2022-07-05 19:24:56', '2022-06-28 06:24:12', '2022-07-05 19:24:56'),
(3, 'dina', 'ibraim', '1', 'dinaa@gmail.com', '0598743211', '27', 'Ramala', '122', NULL, '2022-07-05 19:26:20', '2022-07-05 20:14:24'),
(4, 'dina', 'ibraim', '1', 'dina121@gmail.com', '05991234561', '27', 'gaza', '1212', '2022-07-05 20:14:02', '2022-07-05 20:13:45', '2022-07-05 20:14:02'),
(5, 'noor', 'rezq', '1', 'noor123@gmail.com', '059897866', '44', 'gaza', '1211', '2022-07-05 20:34:10', '2022-07-05 20:33:54', '2022-07-05 20:34:10'),
(6, 'dina', 'ibraim', '1', 'dina199@gmail.com', '05987976', '44', 'gaza', '211', '2022-07-05 22:05:11', '2022-07-05 22:04:36', '2022-07-05 22:05:11'),
(7, 'noor', 'rezq', '1', 'noorrezq@gmail.com', '09584399939', '44', 'gaza', '999', '2022-07-05 22:20:02', '2022-07-05 22:19:39', '2022-07-05 22:20:02'),
(8, 'noor', 'rezq', '1', 'noor1111@gmail.com', '0948348738747', '44', 'gaza', '90', '2022-07-05 22:55:41', '2022-07-05 22:55:21', '2022-07-05 22:55:41');

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_24_114027_create_stores_table', 1),
(6, '2021_09_03_133030_create_roles_table', 1),
(7, '2021_09_06_114104_create_role_users_table', 1),
(8, '2021_09_09_073157_create_currently_sells_table', 1),
(9, '2021_09_21_091757_create_sales_categories_table', 1),
(10, '2021_09_27_093555_create_contact_us_table', 1),
(11, '2021_10_06_082330_create_products_table', 1),
(12, '2021_10_06_082544_create_categories_table', 1),
(13, '2021_10_09_110409_create_orders_table', 1),
(14, '2021_10_09_110719_create_customers_table', 1),
(15, '2021_10_10_184935_create_tags_table', 1),
(16, '2021_10_10_185207_create_product_tag_table', 1),
(17, '2021_10_11_154617_create_product_images_table', 1),
(18, '2021_10_16_092714_create_variants_table', 1),
(19, '2021_10_16_092749_create_variant__options_table', 1),
(20, '2021_10_21_163829_create_carts_table', 1),
(21, '2021_10_24_080631_create_order_products_table', 1),
(22, '2021_10_26_081427_create_pages_table', 1),
(23, '2021_10_27_054640_create_page_detailes_table', 1),
(24, '2021_11_23_112147_add_userid_to_orders_table', 1),
(25, '2021_11_27_084342_create_contact_us_ecommerces_table', 1),
(26, '2022_01_11_112318_create_cities_table', 1),
(27, '2022_01_12_125646_create_commpanies_table', 1),
(28, '2022_03_01_110738_add_logo_to_commpanies_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','processing','in-delivery','completed','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `store_id`, `total`, `status`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 2, 1, 30, 'pending', '2022-07-05 19:24:56', '2022-06-25 06:16:53', '2022-07-05 19:24:56', '3'),
(2, 2, 1, 180, 'in-delivery', '2022-07-05 19:24:56', '2022-06-30 06:07:37', '2022-07-05 19:24:56', NULL),
(3, 1, 1, 90, 'in-delivery', NULL, '2022-06-30 06:35:52', '2022-06-30 06:41:53', NULL),
(4, 2, 1, 240, 'in-delivery', '2022-07-05 19:24:56', '2022-07-03 18:47:29', '2022-07-05 19:24:56', NULL),
(5, 2, 1, 90, 'processing', '2022-07-05 19:24:56', '2022-07-05 19:23:34', '2022-07-05 19:24:56', '3'),
(6, 1, 1, 90, 'in-delivery', NULL, '2022-07-05 19:40:59', '2022-07-05 20:10:03', NULL),
(7, 3, 1, 90, 'pending', NULL, '2022-07-05 20:10:49', '2022-07-05 20:10:49', '3'),
(8, 1, 1, 270, 'in-delivery', NULL, '2022-07-05 20:22:47', '2022-07-05 20:29:19', NULL),
(9, 1, 1, 90, 'processing', NULL, '2022-07-05 20:32:01', '2022-07-05 20:32:01', '3'),
(10, 1, 1, 90, 'in-delivery', NULL, '2022-07-05 21:16:35', '2022-07-05 22:01:50', NULL),
(11, 3, 1, 90, 'pending', NULL, '2022-07-05 22:03:03', '2022-07-05 22:18:40', '3'),
(12, 3, 1, 120, 'processing', NULL, '2022-07-05 22:18:16', '2022-07-05 22:18:16', '3'),
(13, 1, 1, 90, 'in-delivery', NULL, '2022-07-05 22:32:58', '2022-07-05 22:33:27', NULL),
(14, 3, 1, 90, 'pending', NULL, '2022-07-05 22:53:49', '2022-07-05 22:54:11', '3'),
(15, 1, 1, 90, 'in-delivery', NULL, '2022-07-05 23:07:48', '2022-07-05 23:08:15', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `order__products`
--

CREATE TABLE `order__products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `order__products`
--

INSERT INTO `order__products` (`id`, `product_id`, `order_id`, `size`, `color`, `quantity`, `price`, `total_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '10', '1', '3', 'white', '1', '30', '30', '2022-07-05 19:24:56', '2022-06-25 06:16:53', '2022-07-05 19:24:56'),
(2, '3', '2', '40', 'white', '2', '87', '174', '2022-07-05 19:24:56', '2022-06-30 06:07:37', '2022-07-05 19:24:56'),
(3, '12', '3', 'M', 'Khaki', '1', '87', '87', NULL, '2022-06-30 06:35:52', '2022-06-30 06:35:52'),
(4, '12', '4', 'L', 'Khaki', '1', '87', '87', '2022-07-05 19:24:56', '2022-07-03 18:47:29', '2022-07-05 19:24:56'),
(5, '14', '4', 'S', 'light gray', '1', '120', '120', '2022-07-05 19:24:56', '2022-07-03 18:47:30', '2022-07-05 19:24:56'),
(6, '12', '5', 'M', 'Khaki', '1', '90', '90', '2022-07-05 19:24:56', '2022-07-05 19:23:34', '2022-07-05 19:24:56'),
(7, '12', '6', 'M', 'Khaki', '1', '87', '87', NULL, '2022-07-05 19:40:59', '2022-07-05 19:40:59'),
(8, '12', '7', 'M', 'Khaki', '1', '90', '90', NULL, '2022-07-05 20:10:49', '2022-07-05 20:10:49'),
(9, '12', '8', 'M', 'Khaki', '3', '87', '261', NULL, '2022-07-05 20:22:47', '2022-07-05 20:22:47'),
(10, '12', '9', 'S', 'Khaki', '1', '90', '90', NULL, '2022-07-05 20:32:01', '2022-07-05 20:32:01'),
(11, '12', '10', 'M', 'Khaki', '1', '87', '87', NULL, '2022-07-05 21:16:35', '2022-07-05 21:16:35'),
(12, '12', '11', 'L', 'Khaki', '1', '90', '90', NULL, '2022-07-05 22:03:03', '2022-07-05 22:03:03'),
(13, '15', '12', 'S', 'light brown', '1', '120', '120', NULL, '2022-07-05 22:18:16', '2022-07-05 22:18:16'),
(14, '12', '13', 'L', 'Khaki', '1', '87', '87', NULL, '2022-07-05 22:32:58', '2022-07-05 22:32:58'),
(15, '20', '14', 'S', 'green', '1', '90', '90', NULL, '2022-07-05 22:53:49', '2022-07-05 22:53:49'),
(16, '12', '15', 'L', 'Khaki', '1', '87', '87', NULL, '2022-07-05 23:07:48', '2022-07-05 23:07:48');

-- --------------------------------------------------------

--
-- بنية الجدول `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `pages`
--

INSERT INTO `pages` (`id`, `key_page`, `title`, `title_ar`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'about_us', 'about us', 'من نحن ', NULL, '2022-03-15 13:10:39', '2022-03-15 13:10:39'),
(2, 'contact_us', 'contact us', 'اتصل بنا ', NULL, '2022-03-15 13:10:39', '2022-03-15 13:10:39');

-- --------------------------------------------------------

--
-- بنية الجدول `page_detailes`
--

CREATE TABLE `page_detailes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `page_detailes`
--

INSERT INTO `page_detailes` (`id`, `page_id`, `store_id`, `desc_ar`, `desc`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-21 21:15:36', '2022-06-21 21:15:36'),
(2, '2', '1', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-21 21:15:36', '2022-06-21 21:15:36'),
(3, '1', '2', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-22 12:07:13', '2022-06-22 12:07:13'),
(4, '2', '2', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-22 12:07:14', '2022-06-22 12:07:14'),
(5, '1', '3', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-27 05:46:20', '2022-06-27 05:46:20'),
(6, '2', '3', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-27 05:46:20', '2022-06-27 05:46:20'),
(7, '1', '4', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-27 07:00:27', '2022-06-27 07:00:27'),
(8, '2', '4', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-27 07:00:27', '2022-06-27 07:00:27'),
(9, '1', '5', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-27 07:01:08', '2022-06-27 07:01:08'),
(10, '2', '5', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-27 07:01:08', '2022-06-27 07:01:08'),
(11, '1', '6', 'من نحن', 'about_us', '', 'active', NULL, '2022-06-28 12:01:30', '2022-06-28 12:01:30'),
(12, '2', '6', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-06-28 12:01:31', '2022-06-28 12:01:31'),
(13, '1', '7', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 19:15:30', '2022-07-05 19:15:30'),
(14, '2', '7', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 19:15:30', '2022-07-05 19:15:30'),
(15, '1', '8', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 19:21:38', '2022-07-05 19:21:38'),
(16, '2', '8', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 19:21:38', '2022-07-05 19:21:38'),
(17, '1', '9', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 19:31:40', '2022-07-05 19:31:40'),
(18, '2', '9', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 19:31:40', '2022-07-05 19:31:40'),
(19, '1', '10', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 20:08:16', '2022-07-05 20:08:16'),
(20, '2', '10', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 20:08:16', '2022-07-05 20:08:16'),
(21, '1', '11', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 20:28:05', '2022-07-05 20:28:05'),
(22, '2', '11', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 20:28:05', '2022-07-05 20:28:05'),
(23, '1', '12', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 21:21:12', '2022-07-05 21:21:12'),
(24, '2', '12', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 21:21:12', '2022-07-05 21:21:12'),
(25, '1', '13', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 22:00:38', '2022-07-05 22:00:38'),
(26, '2', '13', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 22:00:38', '2022-07-05 22:00:38'),
(27, '1', '14', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 22:16:25', '2022-07-05 22:16:25'),
(28, '2', '14', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 22:16:25', '2022-07-05 22:16:25'),
(29, '1', '15', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 22:37:19', '2022-07-05 22:37:19'),
(30, '2', '15', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 22:37:19', '2022-07-05 22:37:19'),
(31, '1', '16', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 22:51:19', '2022-07-05 22:51:19'),
(32, '2', '16', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 22:51:19', '2022-07-05 22:51:19'),
(33, '1', '17', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-05 23:10:49', '2022-07-05 23:10:49'),
(34, '2', '17', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-05 23:10:49', '2022-07-05 23:10:49'),
(35, '1', '18', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-20 14:43:48', '2022-07-20 14:43:48'),
(36, '2', '18', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-20 14:43:48', '2022-07-20 14:43:48'),
(37, '1', '19', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-20 14:48:35', '2022-07-20 14:48:35'),
(38, '2', '19', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-20 14:48:35', '2022-07-20 14:48:35'),
(39, '1', '20', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-20 14:49:39', '2022-07-20 14:49:39'),
(40, '2', '20', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-20 14:49:39', '2022-07-20 14:49:39'),
(41, '1', '21', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-20 14:58:16', '2022-07-20 14:58:16'),
(42, '2', '21', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-20 14:58:16', '2022-07-20 14:58:16'),
(43, '1', '22', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-20 15:08:02', '2022-07-20 15:08:02'),
(44, '2', '22', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-20 15:08:02', '2022-07-20 15:08:02'),
(45, '1', '23', 'من نحن', 'about_us', '', 'active', NULL, '2022-07-21 08:07:11', '2022-07-21 08:07:11'),
(46, '2', '23', 'اتصل بنا', 'contact_us', '', 'active', NULL, '2022-07-21 08:07:11', '2022-07-21 08:07:11');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('amen@gmail.com', '$2y$10$Kfubqrp2NPX/KUfLwf9kAuyLZ1oeP/nYl1iVB9HjJymHRFer./xNS', '2022-04-08 11:58:26'),
('bazaard@gmail.com', '$2y$10$rWtRroqWnEE7oaM3KWCZ6uYDsTa8IL7v.OliyX4Zbvp9rGWQSxOGO', '2022-06-22 12:37:15'),
('noor@gmail.com', '$2y$10$Nwcsvq/0uiv2v66KNwo.sOEciUbfd2cnaOIyc9AU3qHAkXIT8B/z.', '2022-06-24 15:31:46'),
('matjari@gmail.com', '$2y$10$nDasc0j3jIJSTfbuSDmmue8.hLEeB0J2fxFkqOzA1gOdYy/kuNhIW', '2022-06-25 05:22:31');

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `num_off_sales` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` enum('in_stock','out_of_stock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in_stock',
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `saleprice` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `name_ar`, `intro`, `intro_ar`, `desc`, `desc_ar`, `image`, `price`, `qty`, `num_off_sales`, `stock`, `viewed`, `status`, `saleprice`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 5, 1, 'Two-tone lace-up skate shoe with high toe', 'حذاء سكيت بلونين ورباط وجبهة عالية', 'Two-tone lace-up skate shoe with high toe', 'حذاء سكيت بلونين ورباط وجبهة عالية', 'Color: black\r\nLining Material: Cotton\r\nShoe Inner Material: Cotton Blend\r\nShoe Outer Material: Rubber\r\nOuter Material: Canvas', 'لون:	الأسود\r\nبطانة المواد:	قطن\r\nالمواد الداخلية للحذاء:	خلط القطن\r\nالمادة الخارجية للحذاء:	مطاط\r\nالمواد الخارجية:	قماش', '1655722150.png', 76, 20, NULL, 'in_stock', 0, 'active', 60, NULL, '2022-06-20 07:49:10', '2022-06-20 09:28:50'),
(6, 4, 1, 'Men\'s Heart Print Drawstring Hoodie', 'هودي برباط بطباعة قلب للرجال', 'Men\'s Heart Print Drawstring Hoodie', 'هودي برباط بطباعة قلب للرجال', 'Color: black\r\nDesigns: casual\r\nDesign Categories: Drawing, Heart\r\nDetails: Drawstring, pocket\r\nType: Pullover\r\nSleeve length: long sleeves\r\nSleeve Types: Low Shoulder\r\nLength: regular\r\nShape Type: Regular Style\r\nMaterial: 100% polyester', 'لون:	الأسود\r\nتصاميم:	كاجوال\r\nأصناف التصميم:	رسم, قلب\r\nتفاصيل:	الرباط, الجيب\r\nنوع:	كنزة صوفية\r\nطول الأكمام:	الأكمام الطويلة\r\nأنواع الأكمام:	منخفض الاكتاف\r\nالطول:	منتظم\r\nنوع الشكل:	النمط العادي\r\nالمواد:	100%بوليستر', '1655724141.png', 120, 20, NULL, 'in_stock', 0, 'active', 100, NULL, '2022-06-20 08:22:21', '2022-06-20 09:29:36'),
(7, 3, 1, 'Floral Print Floral Stitch Fringed Sleeve One Piece Dress', 'فستان طباعة الأزهار بغرز اكمام منتفضة مقلم بهدب قطعة واحدة', 'Floral Print Floral Stitch Fringed Sleeve One Piece Dress', 'فستان طباعة الأزهار بغرز اكمام منتفضة مقلم بهدب قطعة واحدة', 'Color: multicolor\r\nDesigns: elegant\r\nDesign Varieties: Flower Drawing\r\nDetails: ruffles, ruffle collar, seams\r\nNeckline: square hole\r\nSleeve length: Three-quarter length sleeves\r\nSleeve types: wide-sleeved\r\nWaist circumference: high waist', 'لون:	متعدد الألوان\r\nتصاميم:	أنيقة\r\nأصناف التصميم:	رسم الزهر\r\nتفاصيل:	كشكش الثوب, طوق كشكش, درز\r\nخط العنق:	الفتحة المربعة\r\nطول الأكمام:	أكمام بثلاثة أرباع الأطوال\r\nأنواع الأكمام:	واسعة الاكمام\r\nمحيط الخصر:	ارتفاع الخصر', '1655726232.png', 100, 20, NULL, 'in_stock', 0, 'active', 90, NULL, '2022-06-20 08:57:12', '2022-06-20 09:24:35'),
(8, 4, 1, 'Hooded T-Shirt With Drawstring Graphic Detail', 'تي شيرت مقنع بتفاصيل رباط بجرافيك', 'Hooded T-Shirt With Drawstring Graphic Detail', 'تي شيرت مقنع بتفاصيل رباط بجرافيك', 'Color: black\r\nDesigns: casual\r\nDesign Categories: Graphic, Logo\r\nNeckline: with hat\r\nDetails: lace\r\nSleeve length: short sleeve\r\nSleeve Types: Regular Sleeves\r\nLength: regular', 'لون:	الأسود\r\nتصاميم:	كاجوال\r\nأصناف التصميم:	رسم, شعار\r\nخط العنق:	مع قبعة\r\nتفاصيل:	الرباط\r\nطول الأكمام:	الأكمام القصيرة\r\nأنواع الأكمام:	اكمام عادية\r\nالطول:	منتظم', '1655728707.png', 40, 20, NULL, 'in_stock', 0, 'active', 20, NULL, '2022-06-20 09:38:27', '2022-06-20 09:38:27'),
(10, 6, 1, 't-shirt', 'بلوزة', 'Striped Bodysuit with Cartoon Pictures 3 Pieces', 'بوديسوت مخطط مع صور رسوم كارتون 3 قطع', 'Striped Bodysuit with Cartoon Pictures 3 Pieces', 'بوديسوت مخطط مع صور رسوم كارتون 3 قطع', '1656148571.png', 30, 10, '1', 'in_stock', 0, 'active', 20, NULL, '2022-06-25 06:16:11', '2022-06-25 06:16:53'),
(12, 3, 1, 'Square Neck Shirred Ruffle Hem Dress', 'فستان بحافة مكشكشة مدرز وبعنق مربع', 'Square Neck Shirred Ruffle Hem Dress', 'فستان بحافة مكشكشة مدرز وبعنق مربع', 'color:Khaki', 'color:Khaki', '1656581484.png', 90, 1, '11', 'in_stock', 0, 'active', 87, NULL, '2022-06-30 06:31:24', '2022-07-05 23:07:48'),
(14, 4, 1, 'Coat', 'معطف', 'Single button pocket detail coat', 'معطف تفاصيل جيب صف ازرار احادية', 'Single button pocket detail coat', 'معطف تفاصيل جيب صف ازرار احادية', '1656865791.png', 150, 9, '1', 'in_stock', 0, 'active', 120, NULL, '2022-07-03 13:29:51', '2022-07-03 18:47:30'),
(15, 4, 1, 'Collar Coat', 'معطف بياقة', 'Solid color buttoned notched collar coat', 'معطف بياقة مسنن بازرار بلون موحد', 'Solid color buttoned notched collar coat', 'معطف بياقة مسنن بازرار بلون موحد', '1656866280.png', 120, 10, '1', 'in_stock', 0, 'active', 100, NULL, '2022-07-03 13:38:00', '2022-07-05 22:18:16'),
(16, 4, 1, 'shirt', 'قميص', 'Uniform Shirt Buttons Front Pocket Drawstring Cotton Fabric One Piece', 'قميص موحدة اللون أزرار أمامية جيب رباط نسيج قطن قطعة واحدة', 'Uniform Shirt Buttons Front Pocket Drawstring Cotton Fabric One Piece', 'قميص موحدة اللون أزرار أمامية جيب رباط نسيج قطن قطعة واحدة', '1656866663.png', 100, 10, NULL, 'in_stock', 0, 'active', 80, NULL, '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(17, 4, 1, 'square shirt', 'قميص مربع', 'buffalo plaid shirt', 'قميص مربع النقش جاموس', 'buffalo plaid shirt', 'قميص مربع النقش جاموس', '1656867085.png', 50, 10, NULL, 'in_stock', 0, 'active', 45, NULL, '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(18, 3, 1, 'houndstooth dress', 'فستان هاوندستوث', 'Houndstooth dress with short neck and puff sleeves', 'فستان هاوندستوث برقبة قصيرة وأكمام منفوشة', 'Houndstooth dress with short neck and puff sleeves', 'فستان هاوندستوث برقبة قصيرة وأكمام منفوشة', '1656867383.png', 200, 10, NULL, 'in_stock', 0, 'active', 180, NULL, '2022-07-03 13:56:23', '2022-07-03 13:56:23'),
(19, 3, 1, 'dress', 'فستان', 'Floral print lantern sleeves dress', 'فستان طباعة الأزهار أكمام فانوس', 'Floral print lantern sleeves dress', 'فستان طباعة الأزهار أكمام فانوس', '1656867617.png', 120, 10, NULL, 'in_stock', 0, 'active', 100, NULL, '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(20, 3, 1, 'back slit blouse', 'بلوزة فتحة خلفي', 'Back slit blouse, lantern sleeves, ruffled edge', 'بلوزة فتحة خلفي أكمام فانوس حافة مكشكشة', 'Back slit blouse, lantern sleeves, ruffled edge', 'بلوزة فتحة خلفي أكمام فانوس حافة مكشكشة', '1656867973.png', 90, 10, '1', 'in_stock', 0, 'active', 80, NULL, '2022-07-03 14:06:13', '2022-07-05 22:53:49'),
(21, 3, 1, 'belt blouse', 'بلوزة الحزام', 'Casual Color Block Belt Blouse', 'بلوزة الحزام حاجز اللون كاجوال', 'Casual Color Block Belt Blouse', 'بلوزة الحزام حاجز اللون كاجوال', '1656868919.png', 80, 10, NULL, 'in_stock', 0, 'active', 60, NULL, '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(22, 5, 1, 'Athletic Shoe', 'حذاء رياضي', 'Athletic shoes with mesh panel, lace-up front', 'حذاء رياضي بلوحة شبكي برباط امامي', 'Athletic shoes with mesh panel, lace-up front', 'حذاء رياضي بلوحة شبكي برباط امامي', '1656878681.png', 60, 10, NULL, 'in_stock', 0, 'active', 50, NULL, '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(23, 5, 1, 'shoes', 'حذاء', 'Floral embroidered lace-up front sneakers', 'حذاء رياضي بأربطة امامي مطرز بورد', 'Floral embroidered lace-up front sneakers', 'حذاء رياضي بأربطة امامي مطرز بورد', '1656878936.png', 60, 10, NULL, 'in_stock', 0, 'active', 50, NULL, '2022-07-03 17:08:56', '2022-07-03 17:08:56'),
(24, 5, 1, 'slipper', 'شبشب', 'Butterfly Knot Floral Slippers', 'شبشب بزخرفة عقدة الفراشة برسم الزهر', 'Butterfly Knot Floral Slippers', 'شبشب بزخرفة عقدة الفراشة برسم الزهر', '1656879186.png', 40, 10, NULL, 'in_stock', 0, 'active', 25, NULL, '2022-07-03 17:13:06', '2022-07-03 17:13:06'),
(25, 5, 1, 'sandals', 'صندل', 'Open toe sandal', 'صندل بعروة وباصابع قدم مفتوح', 'Open toe sandal', 'صندل بعروة وباصابع قدم مفتوح', '1656879521.png', 30, 10, NULL, 'in_stock', 0, 'active', 20, NULL, '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(28, 6, 1, 'print dress', 'فستان بطباعة', 'Children\'s dress with heart print stitching puff sleeves', 'للاطفال فستان بطباعة قلب بغرز اكمام منتفخة', 'Children\'s dress with heart print stitching puff sleeves', 'للاطفال فستان بطباعة قلب بغرز اكمام منتفخة', '1656880688.png', 30, 10, NULL, 'in_stock', 0, 'active', 26, NULL, '2022-07-03 17:38:08', '2022-07-03 17:38:08'),
(31, 6, 1, 'T-shirt set', 'طقم تي شيرت', 'T-shirt with drawstring waist pants set with headphone print', 'تي شيرت مع رباط خصر بنطلون طقم', 'T-shirt with drawstring waist pants set with headphone print', 'تي شيرت مع رباط خصر بنطلون طقم', '1656881663.png', 30, 10, NULL, 'in_stock', 0, 'active', 26, NULL, '2022-07-03 17:54:23', '2022-07-03 17:54:23'),
(33, 6, 1, 'jumpsuit', 'جمبسوت', 'Stitched floral print cami jumpsuit', 'جمبسوت كامي طباعة الأزهار مزخرفة بغرز', 'Stitched floral print cami jumpsuit', 'جمبسوت كامي طباعة الأزهار مزخرفة بغرز', '1656882378.png', 35, 10, NULL, 'in_stock', 0, 'active', 30, NULL, '2022-07-03 18:06:18', '2022-07-03 18:06:18'),
(35, 9, 1, 'Round neck -abaya', 'عباية-قبة مدورة', 'عباية-قبة مدورة', 'عباية-قبة مدورة', 'عباية-قبة مدورة', 'عباية-قبة مدورة', '1656885689.png', 150, 10, NULL, 'in_stock', 0, 'active', 120, NULL, '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(36, 9, 1, 'black - abaya', 'أسود - عباية', 'black - abaya', 'أسود - عباية', 'black - abaya', 'أسود - عباية', '1656886005.png', 100, 10, NULL, 'in_stock', 0, 'active', 80, NULL, '2022-07-03 19:06:45', '2022-07-03 19:06:45'),
(39, 3, 1, 'dress with sleeves', 'فستان باكمام', 'dress with sleeves', 'فستان باكمام', 'dress with sleeves', 'فستان باكمام', '1657070667.png', 100, 10, NULL, 'in_stock', 0, 'active', 80, NULL, '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(40, 3, 1, 'dress with puff sleeves', 'فستان باكمام منفوخة', 'dress with puff sleeves', 'فستان باكمام منفوخة', 'dress with puff sleeves', 'فستان باكمام منفوخة', '1657072786.png', 100, 10, NULL, 'in_stock', 0, 'active', 80, NULL, '2022-07-05 22:59:46', '2022-07-05 22:59:46');

-- --------------------------------------------------------

--
-- بنية الجدول `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 3, '1428409019.PNG', '2022-06-20 07:13:42', '2022-06-20 07:13:42'),
(2, 4, '861718640.PNG', '2022-06-20 07:43:53', '2022-06-20 07:43:53'),
(3, 5, '1944949166.PNG', '2022-06-20 07:49:10', '2022-06-20 07:49:10'),
(4, 6, '1994678987.PNG', '2022-06-20 08:22:21', '2022-06-20 08:22:21'),
(5, 4, '701811355.PNG', '2022-06-20 08:47:31', '2022-06-20 08:47:31'),
(6, 7, '275668345.PNG', '2022-06-20 08:57:12', '2022-06-20 08:57:12'),
(7, 8, '1265088453.PNG', '2022-06-20 09:38:27', '2022-06-20 09:38:27'),
(9, 10, '438587809.PNG', '2022-06-25 06:16:11', '2022-06-25 06:16:11'),
(10, 11, '681833845.PNG', '2022-06-28 06:44:39', '2022-06-28 06:44:39'),
(11, 12, '1746655755.PNG', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(12, 12, '1605570461.PNG', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(13, 13, '1907784981.PNG', '2022-07-03 13:23:48', '2022-07-03 13:23:48'),
(14, 13, '2029369818.PNG', '2022-07-03 13:23:48', '2022-07-03 13:23:48'),
(15, 14, '816178251.PNG', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(16, 14, '1030452113.PNG', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(17, 14, '2054266852.PNG', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(18, 15, '1138039848.PNG', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(19, 15, '329776697.PNG', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(20, 15, '907391896.PNG', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(21, 16, '1994426402.PNG', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(22, 16, '818673624.PNG', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(23, 16, '1877608240.PNG', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(24, 17, '1206338157.PNG', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(25, 17, '154156649.PNG', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(26, 17, '1182412007.PNG', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(27, 18, '857108399.PNG', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(28, 18, '1479271889.PNG', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(29, 18, '2111082351.PNG', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(30, 19, '969100165.PNG', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(31, 19, '1492617613.PNG', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(32, 19, '1112041395.PNG', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(33, 20, '780865276.PNG', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(34, 20, '1524408253.PNG', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(35, 20, '1517595022.PNG', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(36, 21, '1565378420.PNG', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(37, 21, '261186019.PNG', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(38, 21, '1843915672.PNG', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(39, 22, '1778900198.PNG', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(40, 22, '1638338892.PNG', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(41, 22, '1474488306.PNG', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(42, 23, '1110046650.PNG', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(43, 23, '273517808.PNG', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(44, 23, '1455523935.PNG', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(45, 24, '139504187.PNG', '2022-07-03 17:13:06', '2022-07-03 17:13:06'),
(46, 24, '2018904462.PNG', '2022-07-03 17:13:06', '2022-07-03 17:13:06'),
(47, 24, '1073952570.PNG', '2022-07-03 17:13:06', '2022-07-03 17:13:06'),
(48, 25, '816799251.PNG', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(49, 25, '2139197060.PNG', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(50, 25, '903844063.PNG', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(51, 26, '1318873891.PNG', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(52, 26, '882666788.PNG', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(53, 26, '855787056.PNG', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(54, 27, '1290558323.PNG', '2022-07-03 17:30:49', '2022-07-03 17:30:49'),
(55, 27, '116364723.PNG', '2022-07-03 17:30:49', '2022-07-03 17:30:49'),
(56, 27, '1138069499.PNG', '2022-07-03 17:30:49', '2022-07-03 17:30:49'),
(57, 28, '195931046.PNG', '2022-07-03 17:38:08', '2022-07-03 17:38:08'),
(58, 28, '546856932.PNG', '2022-07-03 17:38:08', '2022-07-03 17:38:08'),
(59, 28, '2013580036.PNG', '2022-07-03 17:38:08', '2022-07-03 17:38:08'),
(60, 29, '312357404.PNG', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(61, 29, '1192802026.PNG', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(62, 29, '1423704121.PNG', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(63, 30, '1176526903.PNG', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(64, 30, '321193403.PNG', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(65, 30, '984542847.PNG', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(66, 31, '1472364810.PNG', '2022-07-03 17:54:23', '2022-07-03 17:54:23'),
(67, 31, '923519606.PNG', '2022-07-03 17:54:23', '2022-07-03 17:54:23'),
(68, 31, '456710451.PNG', '2022-07-03 17:54:23', '2022-07-03 17:54:23'),
(69, 32, '1582835940.PNG', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(70, 32, '1110848469.PNG', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(71, 32, '1410223125.PNG', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(72, 33, '756979725.PNG', '2022-07-03 18:06:18', '2022-07-03 18:06:18'),
(73, 33, '1603817114.PNG', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(74, 33, '995950375.PNG', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(75, 34, '1175305221.PNG', '2022-07-03 18:13:23', '2022-07-03 18:13:23'),
(76, 34, '799316882.PNG', '2022-07-03 18:13:23', '2022-07-03 18:13:23'),
(77, 35, '268921027.PNG', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(78, 35, '1735355359.PNG', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(79, 35, '1367092750.PNG', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(80, 36, '198302676.PNG', '2022-07-03 19:06:45', '2022-07-03 19:06:45'),
(81, 37, '1443434159.PNG', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(82, 37, '886559228.PNG', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(83, 37, '1382099487.PNG', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(84, 38, '776793403.PNG', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(85, 38, '1307679557.PNG', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(86, 38, '221638085.PNG', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(87, 39, '934375885.PNG', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(88, 39, '700133024.PNG', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(89, 39, '481590715.PNG', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(90, 40, '2053275559.PNG', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(91, 40, '1504995573.PNG', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(92, 40, '805397125.PNG', '2022-07-05 22:59:46', '2022-07-05 22:59:46');

-- --------------------------------------------------------

--
-- بنية الجدول `product_tag`
--

CREATE TABLE `product_tag` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `product_tag`
--

INSERT INTO `product_tag` (`product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, NULL),
(11, 1, NULL, NULL),
(12, 1, NULL, NULL),
(13, 1, NULL, NULL),
(14, 1, NULL, NULL),
(17, 1, NULL, NULL),
(18, 1, NULL, NULL),
(20, 1, NULL, NULL),
(21, 1, NULL, NULL),
(22, 1, NULL, NULL),
(23, 1, NULL, NULL),
(24, 1, NULL, NULL),
(31, 1, NULL, NULL),
(37, 1, NULL, NULL),
(38, 2, NULL, NULL),
(39, 1, NULL, NULL),
(40, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`abilities`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `abilities`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'super_admins', '[\"users.viewAny\",\"users.view\",\"users.create\",\"users.update\",\"users.delete\",\"roles.viewAny\",\"roles.view\",\"roles.create\",\"roles.update\",\"roles.delete\",\"products.viewAny\",\"products.view\",\"products.create\",\"products.update\",\"products.delete\",\"categories.viewAny\",\"categories.view\",\"categories.create\",\"categories.update\",\"categories.delete\",\"currently_sells.viewAny\",\"currently_sells.view\",\"currently_sells.create\",\"currently_sells.update\",\"currently_sells.delete\"]', NULL, NULL, NULL),
(2, 'admins', '[\"users.viewAny\",\"users.view\",\"users.create\",\"users.update\",\"users.delete\",\"roles.viewAny\",\"roles.view\",\"roles.create\",\"roles.update\",\"roles.delete\",\"products.viewAny\",\"products.view\",\"products.create\",\"products.update\",\"products.delete\",\"categories.viewAny\",\"categories.view\",\"categories.create\",\"categories.update\",\"categories.delete\",\"currently_sells.viewAny\",\"currently_sells.view\",\"currently_sells.create\",\"currently_sells.update\",\"currently_sells.delete\",\"sales_categories.viewAny\"]', NULL, NULL, '2022-07-05 22:38:38'),
(3, 'merchants', '[\"users.viewAny\",\"users.view\",\"users.create\",\"users.update\",\"users.delete\",\"products.viewAny\",\"products.view\",\"products.create\",\"products.update\",\"products.delete\",\"categories.viewAny\",\"categories.view\",\"categories.create\",\"categories.update\",\"categories.delete\",\"currently_sells.delete\",\"sales_categories.update\"]', NULL, NULL, '2022-07-05 23:11:48'),
(4, 'users', '[\"products.viewAny\",\"products.view\",\"products.create\",\"products.update\",\"categories.view\"]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-03-15 13:10:39', '2022-03-15 13:10:39'),
(2, 3, 2, '2022-03-28 06:03:20', '2022-03-28 06:03:20'),
(3, 3, 3, '2022-06-21 21:15:36', '2022-06-21 21:15:36'),
(4, 3, 4, '2022-06-22 12:07:13', '2022-06-22 12:07:13'),
(5, 3, 5, '2022-06-27 05:46:20', '2022-06-27 05:46:20'),
(6, 2, 6, '2022-06-27 06:58:34', '2022-06-27 06:58:34'),
(7, 3, 7, '2022-06-27 07:00:27', '2022-06-27 07:00:27'),
(8, 3, 8, '2022-06-27 07:01:08', '2022-06-27 07:01:08'),
(9, 4, 9, '2022-06-28 11:35:28', '2022-06-28 11:35:28'),
(10, 3, 10, '2022-06-28 12:01:30', '2022-06-28 12:01:30'),
(11, 4, 11, '2022-07-03 12:54:05', '2022-07-03 12:54:05'),
(12, 4, 12, '2022-07-03 19:55:04', '2022-07-03 19:55:04'),
(13, 3, 13, '2022-07-05 19:15:30', '2022-07-05 19:15:30'),
(14, 3, 14, '2022-07-05 19:21:38', '2022-07-05 19:21:38'),
(15, 3, 15, '2022-07-05 19:31:40', '2022-07-05 19:31:40'),
(16, 3, 16, '2022-07-05 20:08:16', '2022-07-05 20:08:16'),
(17, 3, 17, '2022-07-05 20:28:05', '2022-07-05 20:28:05'),
(18, 4, 18, '2022-07-05 20:49:37', '2022-07-05 20:49:37'),
(19, 2, 19, '2022-07-05 21:19:50', '2022-07-05 21:19:50'),
(20, 3, 20, '2022-07-05 21:21:12', '2022-07-05 21:21:12'),
(21, 4, 21, '2022-07-05 21:26:13', '2022-07-05 21:26:13'),
(22, 3, 22, '2022-07-05 22:00:38', '2022-07-05 22:00:38'),
(23, 3, 23, '2022-07-05 22:16:25', '2022-07-05 22:16:25'),
(24, 4, 24, '2022-07-05 22:27:47', '2022-07-05 22:27:47'),
(25, 2, 25, '2022-07-05 22:36:09', '2022-07-05 22:36:09'),
(26, 3, 26, '2022-07-05 22:37:19', '2022-07-05 22:37:19'),
(27, 3, 27, '2022-07-05 22:51:19', '2022-07-05 22:51:19'),
(28, 4, 28, '2022-07-05 23:03:01', '2022-07-05 23:03:01'),
(29, 2, 29, '2022-07-05 23:09:24', '2022-07-05 23:09:24'),
(30, 3, 30, '2022-07-05 23:10:49', '2022-07-05 23:10:49'),
(31, 3, 31, '2022-07-20 14:43:48', '2022-07-20 14:43:48'),
(32, 3, 32, '2022-07-20 14:48:35', '2022-07-20 14:48:35'),
(33, 3, 33, '2022-07-20 14:49:39', '2022-07-20 14:49:39'),
(34, 3, 34, '2022-07-20 14:58:16', '2022-07-20 14:58:16'),
(35, 3, 35, '2022-07-20 15:08:02', '2022-07-20 15:08:02'),
(36, 3, 36, '2022-07-21 08:07:11', '2022-07-21 08:07:11');

-- --------------------------------------------------------

--
-- بنية الجدول `sales_categories`
--

CREATE TABLE `sales_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_sell_products` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_going_sell` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_registered` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ecommerce1',
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` enum('free','premium','enterprise') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `company_id`, `name`, `slug`, `how_sell_products`, `what_going_sell`, `business_registered`, `theme`, `setting`, `logo`, `plan`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 'zara', 'zara.com', NULL, 'clothes_shoes', 'social_media', 'ecommerce', '{\"ecommerce\":{\"main_color\":\"white\",\"hover_color\":\"black\",\"font_color\":\"black\"},\"ecommerce1\":{\"main_color\":\"white\",\"hover_color\":\"black\",\"font_color\":\"black\"}}', NULL, 'free', 'active', NULL, '2022-06-21 21:15:36', '2022-07-20 15:12:41'),
(2, 4, NULL, 'noorp', 'noojr.com', NULL, 'tech_products', 'my_own_website', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-06-22 12:07:12', '2022-06-22 12:12:38'),
(3, 5, NULL, 'mmm', 'nooro.com', 'my_own_website', 'health_beauty', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-06-27 05:46:18', '2022-06-28 11:58:19'),
(4, 7, NULL, 'noor', 'zaraa12.com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-06-27 07:00:27', '2022-06-27 07:00:27'),
(5, 8, NULL, 'noorrezq', 'noor.com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-06-27 07:01:08', '2022-06-27 07:01:08'),
(6, 10, NULL, 'shein', 'dinaa.com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-06-28 12:01:30', '2022-06-28 12:01:30'),
(7, 13, NULL, 'Zara', 'zara1.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 19:15:28', '2022-07-05 19:15:30'),
(8, 14, NULL, 'Zara', 'zara2.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 19:21:38', '2022-07-05 19:21:38'),
(9, 15, NULL, 'Zara', 'zara123.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 19:31:40', '2022-07-05 19:31:40'),
(10, 16, NULL, 'Zara', 'zara121.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 20:08:16', '2022-07-05 20:08:16'),
(11, 17, NULL, 'zara', 'zara321.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 20:28:05', '2022-07-05 20:28:05'),
(12, 20, NULL, 'zara', 'zara98com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 21:21:11', '2022-07-05 21:21:41'),
(13, 22, NULL, 'zara', 'zara12.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 22:00:38', '2022-07-05 22:00:38'),
(14, 23, NULL, 'zara', 'zara90.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 22:16:24', '2022-07-05 22:16:25'),
(15, 26, NULL, 'zaraDina', 'zaradina.com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 22:37:19', '2022-07-05 22:38:14'),
(16, 27, NULL, 'zara', 'zara98.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 22:51:18', '2022-07-05 22:51:19'),
(17, 30, NULL, 'ZaraAmeera', 'ameerazara.com', NULL, NULL, NULL, 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-05 23:10:48', '2022-07-05 23:11:09'),
(18, 31, NULL, 'zara', 'zara6.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-20 14:43:47', '2022-07-20 14:43:48'),
(19, 32, NULL, 'zara', 'zara4.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-20 14:48:35', '2022-07-20 14:48:35'),
(20, 33, NULL, 'dina ibraim', 'zarasa.com', 'e_Market_platforms', 'clothes_shoes', 'my_own_website', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-20 14:49:38', '2022-07-20 14:49:39'),
(21, 34, NULL, 'zara', 'zaraa9.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-20 14:58:16', '2022-07-20 14:58:16'),
(22, 35, NULL, 'zara', 'zaraaa.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-20 15:08:01', '2022-07-20 15:08:02'),
(23, 36, NULL, 'zaraa', 'zaraaa1.com', 'physical_store', 'clothes_shoes', 'social_media', 'ecommerce1', '{\"ecommerce\":{\"main_color\":\"#f11616\",\"hover_color\":\"#ffffff\",\"font_color\":\"#ffffff\"},\"ecommerce1\":{\"main_color\":\"#ffffff\",\"hover_color\":\"#000000\",\"font_color\":\"#000000\"}}', NULL, 'free', 'active', NULL, '2022-07-21 08:07:11', '2022-07-21 08:07:11');

-- --------------------------------------------------------

--
-- بنية الجدول `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Zara', 'zara', NULL, '2022-06-28 06:44:39', '2022-06-28 06:44:39'),
(2, 'zata', 'zata', NULL, '2022-07-05 22:10:25', '2022-07-05 22:10:25');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('superadmin','admins','merchants','users') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'merchants',
  `birthday` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `abilities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`abilities`)),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `store_id`, `user_name`, `merchant_id`, `full_name`, `email`, `address`, `type`, `birthday`, `avatar`, `country`, `phone_number`, `status`, `email_verified_at`, `abilities`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AdminNoor', NULL, NULL, 'matjari@gmail.com', NULL, 'superadmin', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$cfWXju76pEN8Ntn5BxKepOUWgrlLclldfM5bVm0ZpFNV0P..RXVyi', NULL, NULL, '2022-03-15 13:10:39', '2022-06-28 11:53:23'),
(3, 1, 'noor', NULL, NULL, 'noor@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '12121212', 'active', NULL, NULL, '$2y$10$sBbLw35tqoPV4br/WfkSBu7LDNbt.CDdLqzBGeMTE7TDQPq5jBblK', NULL, NULL, '2022-06-21 21:15:36', '2022-07-05 22:52:29'),
(4, 2, 'noor', NULL, NULL, 'noorl@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '12121212', 'active', NULL, NULL, '$2y$10$F13x5miPm6PdcUEpSsIWgOa1rMGtzK6rWdzabj0ANglNf6jD7rlAO', NULL, NULL, '2022-06-22 12:07:12', '2022-06-22 12:07:12'),
(5, 3, 'noor', NULL, NULL, 'noor9@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0599123456', 'active', NULL, NULL, '$2y$10$fpDhTmlTb58MF75VoQfNqO1BG.HINH..NWQ5wJIa5gQrhRArA0DEK', NULL, NULL, '2022-06-27 05:46:19', '2022-06-28 11:58:19'),
(7, 4, 'noor', NULL, NULL, 'dinao@gmail.com', NULL, 'merchants', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$aAAwogG6/ZM5bFdc7f0iGOXYvhL5DDiE05G.4iswMfM8PergbijGi', NULL, NULL, '2022-06-27 07:00:27', '2022-06-27 07:00:27'),
(8, 5, 'noor', NULL, NULL, 'dina1@gmail.com', NULL, 'merchants', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$Ostt0ri3iffckzIPVAxiIOjVLFbTuJHatxhD57E7QkHbAzK7qs7uO', NULL, NULL, '2022-06-27 07:01:08', '2022-06-27 07:01:08'),
(10, 6, 'dina', NULL, NULL, 'dina22@gmail.com', NULL, 'merchants', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$stxLtcXvQNQN8nmltyAzyOG3o0tx7i3FDz/wL9D4O8PcUzHrtx2m.', NULL, NULL, '2022-06-28 12:01:30', '2022-06-28 12:01:30'),
(13, 7, 'noor', NULL, NULL, 'd.58312888@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '22212121211', 'active', NULL, NULL, '$2y$10$9Pn8Oo15gDo8fdUy7Gh/Eekh8LyduLjJMBbF4V5uOOoZny6EIVjf.', NULL, NULL, '2022-07-05 19:15:29', '2022-07-05 19:15:29'),
(14, 8, 'noor', NULL, NULL, 'd.5831286@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0599123456', 'active', NULL, NULL, '$2y$10$6XORv16GVvDkUAlHoVY.zeroGY2WhVqJB133w7hGGqBNzRloA0U3i', NULL, NULL, '2022-07-05 19:21:38', '2022-07-05 19:21:38'),
(15, 9, 'noor', NULL, NULL, 'd.5831281@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0567217294', 'active', NULL, NULL, '$2y$10$IgAr.TogUGF9FCbDNDDhOeYcP5rBnEWTkqzn9f24/YMfyvaFCamV.', NULL, NULL, '2022-07-05 19:31:40', '2022-07-05 19:31:40'),
(16, 10, 'noor', NULL, NULL, 'd.58312821@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '059873421', 'active', NULL, NULL, '$2y$10$Krdf2Jjxd8z7p0XSZ5sU0.JN5/KLZWb62cUDKZZ8FOiR1ioaKJAva', NULL, NULL, '2022-07-05 20:08:16', '2022-07-05 20:08:16'),
(17, 11, 'noor', NULL, NULL, 'd.58312833@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0599123456', 'active', NULL, NULL, '$2y$10$94Skz1Y8HOAACniPEF6nEu8LvZJKx./UpxkbmeTY4RFljXdWBKtD2', NULL, NULL, '2022-07-05 20:28:05', '2022-07-05 20:28:05'),
(18, 1, 'zara1', NULL, NULL, 'noor45@gmail.com', NULL, 'users', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$TxItXCJTSEI9Zt2msNRan.3ZxjL1vUgjlfzwiNQtzJpCTm2BdV1EK', NULL, NULL, '2022-07-05 20:49:36', '2022-07-05 20:49:36'),
(19, NULL, 'dina', NULL, NULL, 'dina43@gmail.com', NULL, 'admins', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$63S6OYGVZf3FxSB8pft/sOwokKFSOT9pBvKieeL8qlq8OEiZDbeSa', NULL, NULL, '2022-07-05 21:19:50', '2022-07-05 21:19:50'),
(21, 1, 'ameera', NULL, NULL, 'ameera12@gmail.com', NULL, 'users', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$oezxAC.rKCmde2dEts74euA0k3Cn4LAqXcoIfN2r7PnrTz.Yat.de', NULL, NULL, '2022-07-05 21:26:13', '2022-07-05 21:26:13'),
(22, 13, 'noor', NULL, NULL, 'd.5831287@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '1234567', 'active', NULL, NULL, '$2y$10$3xmv6kxQRzGlmL6g7RlaiuzZL6LIhFXrKiZxSom2D.mtP3VqUwzca', NULL, NULL, '2022-07-05 22:00:38', '2022-07-05 22:00:38'),
(23, 14, 'noor', NULL, NULL, 'd.5831276@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '123456789', 'active', NULL, NULL, '$2y$10$/eGHOaAt.vaizJb2BtyrB.RUfhBybVP0Mrf26V3ylKbMS80r5NMPq', NULL, NULL, '2022-07-05 22:16:25', '2022-07-05 22:16:25'),
(24, 1, 'ameera', NULL, NULL, 'ameera90@gmail.com', NULL, 'users', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$q2UdFlVcvpLFBOVZxyg.1OV.GMqY79v1QUA1s4ADnPIHBHl/kvE6K', NULL, NULL, '2022-07-05 22:27:47', '2022-07-05 22:27:47'),
(27, 16, 'noor', NULL, NULL, 'zaraNoor@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '05483843748', 'active', NULL, NULL, '$2y$10$Fv0jzErr73YL9PukA8kcY.uJ7MLbsPmdVfASnHFTgdIVJrCsoN.F2', NULL, NULL, '2022-07-05 22:51:19', '2022-07-05 22:51:19'),
(28, 1, 'noor', NULL, NULL, 'noor32@gmail.com', NULL, 'users', NULL, NULL, NULL, NULL, 'active', NULL, NULL, '$2y$10$B0hWwa/y5v/q7Bz3M4GQk.ppmNqK0fU5p90oeaTdsaEzC3jIPZRM2', NULL, NULL, '2022-07-05 23:03:01', '2022-07-05 23:03:01'),
(31, 18, 'noor', NULL, NULL, 'd.5899888@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '2323322343', 'active', NULL, NULL, '$2y$10$uWgSRoppPZbHvF8RoBSDjukk5LUC1HRZ5mPSYgbft1wjDcwDKNskG', NULL, NULL, '2022-07-20 14:43:48', '2022-07-20 14:43:48'),
(32, 19, 'noor', NULL, NULL, 'noor12@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '343445454', 'active', NULL, NULL, '$2y$10$QHDdxLccJtC.ukbEnFjKXecYmXbmpK3tX3xUPNHvYStzqiOfhz/MW', NULL, NULL, '2022-07-20 14:48:35', '2022-07-20 14:48:35'),
(33, 20, 'kmlkm', NULL, NULL, 'dina@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0599123456', 'active', NULL, NULL, '$2y$10$BdPzaHw5mGO7ZOP4B6ynIeiq8/up.ii4jLpeBUw40tKRnivl7n15a', NULL, NULL, '2022-07-20 14:49:39', '2022-07-20 14:49:39'),
(34, 21, 'noor', NULL, NULL, 'd.767878@gmil.coma', NULL, 'merchants', NULL, NULL, NULL, '65676767', 'active', NULL, NULL, '$2y$10$LKlQqxB1zBfUKUo6j7DEI.HqXkE0FaMQwZqRhOpb7AIs15ob29IAy', NULL, NULL, '2022-07-20 14:58:16', '2022-07-20 14:58:16'),
(35, 22, 'dina', NULL, NULL, 'dina11@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '0599123456', 'active', NULL, NULL, '$2y$10$GfjvOcXD93v92QNZ/VeQwOA7F9Jkk6iE61wejXacCFARhKSKV2LWy', NULL, NULL, '2022-07-20 15:08:02', '2022-07-20 15:08:02'),
(36, 23, 'noor', NULL, NULL, 'noor1222@gmail.com', NULL, 'merchants', NULL, NULL, NULL, '121212121', 'active', NULL, NULL, '$2y$10$Hpau8ALi7ry26m4AAtY84emz.xDhMbh6KGZMsPGS.JbtO65uQHUsS', NULL, NULL, '2022-07-21 08:07:11', '2022-07-21 08:07:11');

-- --------------------------------------------------------

--
-- بنية الجدول `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_variant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_variant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `variants`
--

INSERT INTO `variants` (`id`, `product_id`, `price_variant`, `quantity_variant`, `created_at`, `updated_at`) VALUES
(1, '3', '90', '3', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(2, '3', '95', '3', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(3, '3', '95', '4', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(4, '10', '30', '4', '2022-06-25 06:16:11', '2022-06-25 06:16:11'),
(5, '10', '30', '3', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(6, '10', '30', '3', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(7, '12', '87', '3', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(8, '12', '87', '3', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(9, '12', '87', '4', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(10, '13', '120', '3', '2022-07-03 13:23:48', '2022-07-03 13:23:48'),
(11, '13', '120', '3', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(12, '13', '120', '4', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(13, '14', '120', '3', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(14, '14', '120', '3', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(15, '14', '120', '4', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(16, '15', '100', '3', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(17, '15', '100', '3', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(18, '15', '100', '4', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(19, '16', '80', '3', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(20, '16', '80', '3', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(21, '16', '80', '4', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(22, '17', '45', '3', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(23, '17', '45', '3', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(24, '17', '45', '4', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(25, '18', '180', '3', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(26, '18', '180', '3', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(27, '18', '180', '4', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(28, '19', '100', '3', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(29, '19', '100', '3', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(30, '19', '100', '4', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(31, '20', '80', '3', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(32, '20', '80', '3', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(33, '20', '80', '4', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(34, '21', '60', '3', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(35, '21', '60', '3', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(36, '21', '60', '4', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(37, '22', '50', '3', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(38, '22', '50', '3', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(39, '22', '50', '4', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(40, '23', '50', '3', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(41, '23', '50', '3', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(42, '23', '50', '1', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(43, '23', '50', '3', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(44, '24', '25', '3', '2022-07-03 17:13:07', '2022-07-03 17:13:07'),
(45, '24', '25', '3', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(46, '24', '25', '4', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(47, '25', '20', '3', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(48, '25', '20', '3', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(49, '25', '20', '4', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(50, '26', '60', '1', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(51, '26', '60', '3', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(52, '26', '60', '3', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(53, '26', '60', '3', '2022-07-03 17:22:42', '2022-07-03 17:22:42'),
(54, '28', '26', '3', '2022-07-03 17:38:08', '2022-07-03 17:38:08'),
(55, '28', '26', '3', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(56, '28', '26', '4', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(57, '29', '25', '5', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(58, '29', '25', '5', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(59, '30', '26', '4', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(60, '30', '26', '3', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(61, '30', '26', '3', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(62, '32', '19', '3', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(63, '32', '19', '3', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(64, '32', '19', '4', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(65, '33', '30', '3', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(66, '33', '30', '3', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(67, '33', '30', '3', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(68, '33', '30', '1', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(69, '34', '70', '10', '2022-07-03 18:13:23', '2022-07-03 18:13:23'),
(70, '35', '120', '10', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(71, '37', '90', '5', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(72, '37', '90', '5', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(73, '38', '90', '5', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(74, '38', '90', '5', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(75, '39', '80', '5', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(76, '39', '80', '5', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(77, '40', '80', '5', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(78, '40', '80', '5', '2022-07-05 22:59:46', '2022-07-05 22:59:46');

-- --------------------------------------------------------

--
-- بنية الجدول `variant__options`
--

CREATE TABLE `variant__options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variants_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `variant__options`
--

INSERT INTO `variant__options` (`id`, `variants_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, '1', 'size', '38', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(2, '1', 'color', 'white', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(3, '2', 'size', '40', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(4, '2', 'color', 'white', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(5, '3', 'size', '42', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(6, '3', 'color', 'white', '2022-06-25 06:05:59', '2022-06-25 06:05:59'),
(7, '4', 'size', '3', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(8, '4', 'color', 'white', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(9, '5', 'size', '4', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(10, '5', 'color', 'white', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(11, '6', 'size', '5', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(12, '6', 'color', 'white', '2022-06-25 06:16:12', '2022-06-25 06:16:12'),
(13, '7', 'size', 'M', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(14, '7', 'color', 'Khaki', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(15, '8', 'size', 'L', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(16, '8', 'color', 'Khaki', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(17, '9', 'size', 'S', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(18, '9', 'color', 'Khaki', '2022-06-30 06:31:24', '2022-06-30 06:31:24'),
(19, '10', 'size', 'M', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(20, '10', 'color', 'light gray', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(21, '11', 'size', 'S', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(22, '11', 'color', 'light gray', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(23, '12', 'size', 'L', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(24, '12', 'color', 'light gray', '2022-07-03 13:23:49', '2022-07-03 13:23:49'),
(25, '13', 'size', 'S', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(26, '13', 'color', 'light gray', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(27, '14', 'size', 'L', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(28, '14', 'color', 'light gray', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(29, '15', 'size', 'M', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(30, '15', 'color', 'light gray', '2022-07-03 13:29:51', '2022-07-03 13:29:51'),
(31, '16', 'size', 'S', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(32, '16', 'color', 'light brown', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(33, '17', 'size', 'L', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(34, '17', 'color', 'light brown', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(35, '18', 'size', 'M', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(36, '18', 'color', 'light brown', '2022-07-03 13:38:00', '2022-07-03 13:38:00'),
(37, '19', 'size', 'S', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(38, '19', 'color', 'navy blue', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(39, '20', 'size', 'L', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(40, '20', 'color', 'navy blue', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(41, '21', 'size', 'M', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(42, '21', 'color', 'navy blue', '2022-07-03 13:44:23', '2022-07-03 13:44:23'),
(43, '22', 'size', 'S', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(44, '22', 'color', 'white&black', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(45, '23', 'size', 'L', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(46, '23', 'color', 'white&black', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(47, '24', 'size', 'M', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(48, '24', 'color', 'white&black', '2022-07-03 13:51:25', '2022-07-03 13:51:25'),
(49, '25', 'size', 'S', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(50, '25', 'color', 'white&black', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(51, '26', 'size', 'L', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(52, '26', 'color', 'white&black', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(53, '27', 'size', 'M', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(54, '27', 'color', 'white&black', '2022-07-03 13:56:24', '2022-07-03 13:56:24'),
(55, '28', 'size', 'S', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(56, '28', 'color', 'white', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(57, '29', 'size', 'L', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(58, '29', 'color', 'white', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(59, '30', 'size', 'M', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(60, '30', 'color', 'white', '2022-07-03 14:00:17', '2022-07-03 14:00:17'),
(61, '31', 'size', 'S', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(62, '31', 'color', 'green', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(63, '32', 'size', 'L', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(64, '32', 'color', 'green', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(65, '33', 'size', 'M', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(66, '33', 'color', 'green', '2022-07-03 14:06:14', '2022-07-03 14:06:14'),
(67, '34', 'size', 'S', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(68, '34', 'color', 'color bar', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(69, '35', 'size', 'L', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(70, '35', 'color', 'color bar', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(71, '36', 'size', 'M', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(72, '36', 'color', 'color bar', '2022-07-03 14:21:59', '2022-07-03 14:21:59'),
(73, '37', 'size', '36', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(74, '37', 'color', 'white', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(75, '38', 'size', '37', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(76, '38', 'color', 'white', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(77, '39', 'size', '38', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(78, '39', 'color', 'white', '2022-07-03 17:04:41', '2022-07-03 17:04:41'),
(79, '40', 'size', '35', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(80, '40', 'color', 'white', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(81, '41', 'size', '36', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(82, '41', 'color', 'white', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(83, '42', 'size', '37', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(84, '42', 'color', 'white', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(85, '43', 'size', '38', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(86, '43', 'color', 'white', '2022-07-03 17:08:57', '2022-07-03 17:08:57'),
(87, '44', 'size', '35', '2022-07-03 17:13:07', '2022-07-03 17:13:07'),
(88, '44', 'color', 'beige', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(89, '45', 'size', '36', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(90, '45', 'color', 'beige', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(91, '46', 'size', '37', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(92, '46', 'color', 'beige', '2022-07-03 17:13:08', '2022-07-03 17:13:08'),
(93, '47', 'size', '37', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(94, '47', 'color', 'صاهفث', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(95, '48', 'size', '38', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(96, '48', 'color', 'صاهفث', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(97, '49', 'size', '39', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(98, '49', 'color', 'صاهفث', '2022-07-03 17:18:41', '2022-07-03 17:18:41'),
(99, '50', 'size', '36', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(100, '50', 'color', 'black', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(101, '51', 'size', '37', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(102, '51', 'color', 'black', '2022-07-03 17:22:41', '2022-07-03 17:22:41'),
(103, '52', 'size', '38', '2022-07-03 17:22:42', '2022-07-03 17:22:42'),
(104, '52', 'color', 'black', '2022-07-03 17:22:42', '2022-07-03 17:22:42'),
(105, '53', 'size', '39', '2022-07-03 17:22:42', '2022-07-03 17:22:42'),
(106, '53', 'color', 'black', '2022-07-03 17:22:42', '2022-07-03 17:22:42'),
(107, '54', 'size', '3-6m', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(108, '54', 'color', 'beige', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(109, '55', 'size', '6-9m', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(110, '55', 'color', 'beige', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(111, '56', 'size', '9-12m', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(112, '56', 'color', 'beige', '2022-07-03 17:38:09', '2022-07-03 17:38:09'),
(113, '57', 'size', '6-9m', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(114, '57', 'color', 'white', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(115, '58', 'size', '9-12m', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(116, '58', 'color', 'white', '2022-07-03 17:43:29', '2022-07-03 17:43:29'),
(117, '59', 'size', '2y', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(118, '59', 'color', 'multi', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(119, '60', 'size', '3y', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(120, '60', 'color', 'multi', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(121, '61', 'size', '4y', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(122, '61', 'color', 'multi', '2022-07-03 17:50:08', '2022-07-03 17:50:08'),
(123, '62', 'size', '2y', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(124, '62', 'color', 'white', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(125, '63', 'size', '3y', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(126, '63', 'color', 'white', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(127, '64', 'size', '4y', '2022-07-03 18:01:10', '2022-07-03 18:01:10'),
(128, '64', 'color', 'white', '2022-07-03 18:01:11', '2022-07-03 18:01:11'),
(129, '65', 'size', '2y', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(130, '65', 'color', 'mint green', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(131, '66', 'size', '3y', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(132, '66', 'color', 'mint green', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(133, '67', 'size', '4y', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(134, '67', 'color', 'mint green', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(135, '68', 'size', '5y', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(136, '68', 'color', 'mint green', '2022-07-03 18:06:19', '2022-07-03 18:06:19'),
(137, '69', 'size', 'one size', '2022-07-03 18:13:23', '2022-07-03 18:13:23'),
(138, '69', 'color', 'black', '2022-07-03 18:13:23', '2022-07-03 18:13:23'),
(139, '70', 'size', 'one size', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(140, '70', 'color', 'black', '2022-07-03 19:01:29', '2022-07-03 19:01:29'),
(141, '71', 'size', '39', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(142, '71', 'color', 'white', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(143, '72', 'size', '40', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(144, '72', 'color', 'white', '2022-07-05 20:38:55', '2022-07-05 20:38:55'),
(145, '73', 'size', '37', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(146, '73', 'color', 'white', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(147, '74', 'size', '38', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(148, '74', 'color', 'white', '2022-07-05 22:10:26', '2022-07-05 22:10:26'),
(149, '75', 'size', '37', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(150, '75', 'color', 'white', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(151, '76', 'size', '38', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(152, '76', 'color', 'white', '2022-07-05 22:24:27', '2022-07-05 22:24:27'),
(153, '77', 'size', '37', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(154, '77', 'color', 'white', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(155, '78', 'size', '38', '2022-07-05 22:59:46', '2022-07-05 22:59:46'),
(156, '78', 'color', 'white', '2022-07-05 22:59:46', '2022-07-05 22:59:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commpanies`
--
ALTER TABLE `commpanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_ecommerces`
--
ALTER TABLE `contact_us_ecommerces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currently_sells`
--
ALTER TABLE `currently_sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order__products`
--
ALTER TABLE `order__products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_detailes`
--
ALTER TABLE `page_detailes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_user_role_id_user_id_unique` (`role_id`,`user_id`);

--
-- Indexes for table `sales_categories`
--
ALTER TABLE `sales_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_slug_unique` (`slug`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant__options`
--
ALTER TABLE `variant__options`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `commpanies`
--
ALTER TABLE `commpanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us_ecommerces`
--
ALTER TABLE `contact_us_ecommerces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currently_sells`
--
ALTER TABLE `currently_sells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order__products`
--
ALTER TABLE `order__products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page_detailes`
--
ALTER TABLE `page_detailes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sales_categories`
--
ALTER TABLE `sales_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `variant__options`
--
ALTER TABLE `variant__options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
