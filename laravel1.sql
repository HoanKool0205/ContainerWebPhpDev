-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 11:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fashion', 'fashion', '2024-05-25 12:01:22', '2024-06-19 20:35:48'),
(2, 'Household Goods', 'household-goods', '2024-05-25 12:01:22', '2024-06-19 20:37:46'),
(3, 'Health and Beauty', 'health-and-beauty', '2024-05-25 12:01:22', '2024-06-19 20:38:00'),
(4, 'Movies and Games', 'movies-andgames', '2024-05-25 12:01:22', '2024-06-19 20:40:30'),
(5, 'Gifts and Occasions', 'gifts-and-occasions', '2024-05-25 12:01:22', '2024-06-19 20:38:45'),
(6, 'Music', 'music', '2024-05-25 12:01:22', '2024-06-19 20:40:12'),
(9, 'Electronics and Technology', 'electronics-and-technology', '2024-06-16 00:45:25', '2024-06-19 20:39:12'),
(10, 'Furniture', 'furniture', '2024-06-20 08:55:13', '2024-06-20 08:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Vĩ Đại', 'vidai@gmail.com', '0398209052', 'Test Message', '2024-06-14 03:06:57', '2024-06-14 03:06:57'),
(2, 'Phạm Nhung', 'phamnhung@gmail.com', '0398209052', 'Very good', '2024-06-20 01:59:39', '2024-06-20 01:59:39'),
(3, 'Nguyễn Đình vĩ Đại', 'nguyendinhvidai@gmail.com', '0398209052', 'very good wow', '2024-06-20 09:43:22', '2024-06-20 09:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` enum('fixed','percent') NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expriry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expriry_date`) VALUES
(7, 'a', 'fixed', 10.00, 100.00, '2024-06-10 22:44:10', '2024-06-10 22:44:10', '2024-06-12'),
(10, 'aa', 'percent', 10.00, 100.00, '2024-06-11 21:44:23', '2024-06-11 21:44:23', '2024-06-12'),
(11, '1234', 'percent', 15.00, 150.00, '2024-06-20 01:54:35', '2024-06-20 01:54:35', '2024-06-20'),
(12, 'a2', 'percent', 10.00, 100.00, '2024-06-20 09:50:32', '2024-06-20 09:50:49', '2024-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '3,4,9', 5, '2024-06-05 10:57:53', '2024-06-20 09:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'First Slide Title', 'First Slide Subtitle', '200', 'http://127.0.0.1:8000/shop', '1718873238.jpg', 1, '2024-06-05 00:50:12', '2024-06-20 01:47:18'),
(4, 'Second Title', 'Second Subtitle', '150', 'http://127.0.0.1:8000/shop', '1718873262.jpg', 1, '2024-06-05 01:04:26', '2024-06-20 01:47:42'),
(5, '3', '3', '12', 'http://127.0.0.1:8000/shop', '1718873298.png', 1, '2024-06-20 01:48:18', '2024-06-20 01:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_05_22_084006_create_sessions_table', 1),
(7, '2024_05_25_065058_create_categories_table', 2),
(8, '2024_05_25_065632_create_products_table', 3),
(9, '2024_05_29_134734_create_shoppingcart_table', 4),
(10, '2024_06_04_092841_create_home_sliders_table', 5),
(11, '2024_06_05_105354_create_home_categories_table', 6),
(12, '2024_06_07_144246_create_sales_table', 7),
(13, '2024_06_10_160327_create_coupons_table', 8),
(18, '2024_06_12_093325_add_expiry_date_to_coupons_table', 9),
(19, '2024_06_11_063357_create_orders_table', 10),
(20, '2024_06_11_063449_create_order_items_table', 10),
(21, '2024_06_11_063518_create_shippings_table', 10),
(22, '2024_06_11_063551_create_transactions_table', 10),
(23, '2024_06_13_073049_add_delivered_canceled_date_to_orders_table', 11),
(24, '2024_06_13_135344_create_reviews_table', 12),
(25, '2024_06_13_135940_add_rstatus_to_order_items_table', 12),
(26, '2024_06_14_082622_create_contacts_table', 13),
(27, '2024_06_14_101607_create_settings_table', 14),
(28, '2024_06_16_065305_create_subcategories_table', 15),
(29, '2024_06_16_145248_add_subcategory_id_to_products_table', 16),
(30, '2024_06_17_055814_create_profiles_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `status` enum('ordered','delivered','canceled') NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 1, 396.00, 0.00, 83.16, 479.16, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test line 1', 'test line 2', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'delivered', 1, '2024-06-12 10:23:41', '2024-06-13 04:05:10', '2024-06-13', NULL),
(2, 2, 469.00, 0.00, 98.49, 567.49, 'NGUYỄN', 'Chung', '0398209052', 'nguyenchung@gmail.com', 'test  11', 'test  22', 'An Lac', 'Ha Noi', 'Vietnam', '1321', 'canceled', 1, '2024-06-12 21:00:56', '2024-06-13 01:00:13', '2024-06-13', '2024-06-13'),
(3, 1, 928.00, 10.00, 194.88, 1122.88, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test line 1', 'test  11', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'canceled', 1, '2024-06-13 04:17:37', '2024-06-13 04:19:43', NULL, '2024-06-13'),
(4, 1, 50.00, 0.00, 10.50, 60.50, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test line 1', NULL, 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '11111122', 'ordered', 1, '2024-06-13 04:21:17', '2024-06-13 04:21:17', NULL, NULL),
(5, 4, 431.00, 0.00, 90.51, 521.51, 'NGUYỄN', 'Linh', '0398209052', 'nguyenlinh@gmail.com', 'test line 1', 'test  11', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'ordered', 0, '2024-06-15 11:06:14', '2024-06-15 11:06:14', NULL, NULL),
(6, 4, 431.00, 0.00, 90.51, 521.51, 'NGUYỄN', 'Linh', '0398209052', 'nguyenlinh@gmail.com', 'test line 1', 'test  11', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'ordered', 0, '2024-06-15 11:07:36', '2024-06-15 11:07:36', NULL, NULL),
(7, 4, 4.00, 0.00, 997.92, 5.00, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'delivered', 0, '2024-06-16 00:29:55', '2024-06-16 00:32:11', '2024-06-16', NULL),
(8, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:19:03', '2024-06-18 03:19:03', NULL, NULL),
(9, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:19:58', '2024-06-18 03:19:58', NULL, NULL),
(10, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:20:14', '2024-06-18 03:20:14', NULL, NULL),
(11, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:20:16', '2024-06-18 03:20:16', NULL, NULL),
(12, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:20:17', '2024-06-18 03:20:17', NULL, NULL),
(13, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:20:19', '2024-06-18 03:20:19', NULL, NULL),
(14, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'dainguyen2032003@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:22:05', '2024-06-18 03:22:05', NULL, NULL),
(15, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'dainguyen2032003@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:26:21', '2024-06-18 03:26:21', NULL, NULL),
(16, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'dainguyen2032003@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:27:56', '2024-06-18 03:27:56', NULL, NULL),
(17, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'dainguyen2032003@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:28:09', '2024-06-18 03:28:09', NULL, NULL),
(18, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'dainguyen2032003@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:29:26', '2024-06-18 03:29:26', NULL, NULL),
(19, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:29:49', '2024-06-18 03:29:49', NULL, NULL),
(20, 4, 515.00, 0.00, 108.15, 623.15, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 03:44:58', '2024-06-18 03:44:58', NULL, NULL),
(21, 4, 610.00, 0.00, 128.10, 738.10, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 06:19:49', '2024-06-18 06:19:49', NULL, NULL),
(22, 4, 610.00, 0.00, 128.10, 738.10, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 06:30:45', '2024-06-18 06:30:45', NULL, NULL),
(23, 4, 610.00, 0.00, 128.10, 738.10, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 06:34:39', '2024-06-18 06:34:39', NULL, NULL),
(24, 4, 610.00, 0.00, 128.10, 738.10, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 06:38:20', '2024-06-18 06:38:20', NULL, NULL),
(25, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 09:34:37', '2024-06-18 09:34:37', NULL, NULL),
(26, 4, 238.00, 0.00, 49.98, 287.98, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 09:46:48', '2024-06-18 09:46:48', NULL, NULL),
(27, 4, 50.00, 0.00, 10.50, 60.50, 'Nguyễn', 'Chung', '09786543', 'nguyenchung@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '654', 'ordered', 0, '2024-06-18 10:23:15', '2024-06-18 10:23:15', NULL, NULL),
(28, 4, 50.00, 0.00, 10.50, 60.50, 'Nguyễn', 'Chung', '09876543', 'dainguyen2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '98765432', 'ordered', 0, '2024-06-18 10:44:05', '2024-06-18 10:44:05', NULL, NULL),
(29, 4, 238.00, 0.00, 49.98, 287.98, 'Nguyen', 'Dai', '0987849996', '21012487@st.phenikaa-uni.edu.vn', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 10:54:48', '2024-06-18 10:54:48', NULL, NULL),
(30, 4, 238.00, 0.00, 49.98, 287.98, 'Nguyen', 'Dai', '0987849996', '21012487@st.phenikaa-uni.edu.vn', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 11:02:34', '2024-06-18 11:02:34', NULL, NULL),
(31, 4, 238.00, 0.00, 49.98, 287.98, 'Nguyen', 'Dai', '0987849996', '21012487@st.phenikaa-uni.edu.vn', 'aaa', 'aaaa', 'Yen nghĩa ', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 11:03:22', '2024-06-18 11:03:22', NULL, NULL),
(32, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', '21012487@st.phenikaa-uni.edu.vn', 'a', 'aa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 11:04:08', '2024-06-18 11:04:08', NULL, NULL),
(33, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 11:27:16', '2024-06-18 11:27:16', NULL, NULL),
(34, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 11:51:00', '2024-06-18 11:51:00', NULL, NULL),
(35, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:30', '2024-06-18 12:01:30', NULL, NULL),
(36, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:32', '2024-06-18 12:01:32', NULL, NULL),
(37, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:33', '2024-06-18 12:01:33', NULL, NULL),
(38, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:33', '2024-06-18 12:01:33', NULL, NULL),
(39, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:34', '2024-06-18 12:01:34', NULL, NULL),
(40, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:34', '2024-06-18 12:01:34', NULL, NULL),
(41, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:35', '2024-06-18 12:01:35', NULL, NULL),
(42, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:35', '2024-06-18 12:01:35', NULL, NULL),
(43, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:35', '2024-06-18 12:01:35', NULL, NULL),
(44, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:36', '2024-06-18 12:01:36', NULL, NULL),
(45, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:36', '2024-06-18 12:01:36', NULL, NULL),
(46, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:37', '2024-06-18 12:01:37', NULL, NULL),
(47, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:37', '2024-06-18 12:01:37', NULL, NULL),
(48, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:37', '2024-06-18 12:01:37', NULL, NULL),
(49, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:38', '2024-06-18 12:01:38', NULL, NULL),
(50, 4, 373.00, 0.00, 78.33, 451.33, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:46', '2024-06-18 12:01:46', NULL, NULL),
(51, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:58', '2024-06-18 12:01:58', NULL, NULL),
(52, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:01:59', '2024-06-18 12:01:59', NULL, NULL),
(53, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:00', '2024-06-18 12:02:00', NULL, NULL),
(54, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:06', '2024-06-18 12:02:06', NULL, NULL),
(55, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:06', '2024-06-18 12:02:06', NULL, NULL),
(56, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:24', '2024-06-18 12:02:24', NULL, NULL),
(57, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:25', '2024-06-18 12:02:25', NULL, NULL),
(58, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:25', '2024-06-18 12:02:25', NULL, NULL),
(59, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:25', '2024-06-18 12:02:25', NULL, NULL),
(60, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:25', '2024-06-18 12:02:25', NULL, NULL),
(61, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:26', '2024-06-18 12:02:26', NULL, NULL),
(62, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:26', '2024-06-18 12:02:26', NULL, NULL),
(63, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:27', '2024-06-18 12:02:27', NULL, NULL),
(64, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:27', '2024-06-18 12:02:27', NULL, NULL),
(65, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Daia', '09878499962', 'vidai1223@gmail.com', 'aa', 'aaaa', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:02:27', '2024-06-18 12:02:27', NULL, NULL),
(66, 4, 119.00, 0.00, 24.99, 143.99, 'Nguyen', 'Dai', '0987849996', 'vidai123@gmail.com', 'a', 'a', 'Yen nghĩa', 'vn', 'Vietnam', '12345', 'ordered', 0, '2024-06-18 12:03:07', '2024-06-18 12:03:07', NULL, NULL),
(67, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-18 23:43:07', '2024-06-18 23:43:07', NULL, NULL),
(68, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:24:25', '2024-06-19 00:24:25', NULL, NULL),
(69, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:24:32', '2024-06-19 00:24:32', NULL, NULL),
(70, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:24:38', '2024-06-19 00:24:38', NULL, NULL),
(71, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:24:39', '2024-06-19 00:24:39', NULL, NULL),
(72, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:25:52', '2024-06-19 00:25:52', NULL, NULL),
(73, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:25:55', '2024-06-19 00:25:55', NULL, NULL),
(74, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:25:56', '2024-06-19 00:25:56', NULL, NULL),
(75, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:27:25', '2024-06-19 00:27:25', NULL, NULL),
(76, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'user@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:28:10', '2024-06-19 00:28:10', NULL, NULL),
(77, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyễn', 'Chung', '123456', 'admin@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:30:12', '2024-06-19 00:30:12', NULL, NULL),
(78, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 00:36:10', '2024-06-19 00:36:10', NULL, NULL),
(79, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', 'user@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 01:05:11', '2024-06-19 01:05:11', NULL, NULL),
(80, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', 'user@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 01:15:26', '2024-06-19 01:15:26', NULL, NULL),
(81, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '098765432', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 01:22:32', '2024-06-19 01:22:32', NULL, NULL),
(82, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '098765', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '654', 'ordered', 0, '2024-06-19 01:31:49', '2024-06-19 01:31:49', NULL, NULL),
(83, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 01:46:56', '2024-06-19 01:46:56', NULL, NULL),
(84, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:12:02', '2024-06-19 02:12:02', NULL, NULL),
(85, 4, 428.00, 0.00, 89.88, 517.88, 'khuất', 'Chung', '123456', 'dainguyen2032003@gmail.com', 'a', NULL, 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:17:44', '2024-06-19 02:17:44', NULL, NULL),
(86, 4, 428.00, 0.00, 89.88, 517.88, 'nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:18:51', '2024-06-19 02:18:51', NULL, NULL),
(87, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:21:57', '2024-06-19 02:21:57', NULL, NULL),
(88, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:23:09', '2024-06-19 02:23:09', NULL, NULL),
(89, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:29:35', '2024-06-19 02:29:35', NULL, NULL),
(90, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:34:46', '2024-06-19 02:34:46', NULL, NULL),
(91, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'dainguyen2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:37:55', '2024-06-19 02:37:55', NULL, NULL),
(92, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:41:51', '2024-06-19 02:41:51', NULL, NULL),
(93, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'dainguyen2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:46:37', '2024-06-19 02:46:37', NULL, NULL),
(94, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:51:04', '2024-06-19 02:51:04', NULL, NULL),
(95, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:54:05', '2024-06-19 02:54:05', NULL, NULL),
(96, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'dainguyen2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:55:48', '2024-06-19 02:55:48', NULL, NULL),
(97, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', '21012487@st.phenikaa-uni.edu.vn', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:57:16', '2024-06-19 02:57:16', NULL, NULL),
(98, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 02:59:38', '2024-06-19 02:59:38', NULL, NULL),
(99, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:01:30', '2024-06-19 03:01:30', NULL, NULL),
(100, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:03:14', '2024-06-19 03:03:14', NULL, NULL),
(101, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:04:23', '2024-06-19 03:04:23', NULL, NULL),
(102, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:32', '2024-06-19 03:06:32', NULL, NULL),
(103, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:40', '2024-06-19 03:06:40', NULL, NULL),
(104, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:40', '2024-06-19 03:06:40', NULL, NULL),
(105, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:40', '2024-06-19 03:06:40', NULL, NULL),
(106, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:41', '2024-06-19 03:06:41', NULL, NULL),
(107, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:41', '2024-06-19 03:06:41', NULL, NULL),
(108, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:41', '2024-06-19 03:06:41', NULL, NULL),
(109, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:45', '2024-06-19 03:06:45', NULL, NULL),
(110, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'delivered', 0, '2024-06-19 03:06:46', '2024-06-21 01:35:43', '2024-06-21', NULL),
(111, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:46', '2024-06-19 03:06:46', NULL, NULL),
(112, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:46', '2024-06-19 03:06:46', NULL, NULL),
(113, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'ordered', 0, '2024-06-19 03:06:46', '2024-06-19 03:06:46', NULL, NULL),
(114, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'canceled', 0, '2024-06-19 03:06:47', '2024-06-20 02:18:11', NULL, '2024-06-20'),
(115, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'Chung', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'canceled', 0, '2024-06-19 03:06:47', '2024-06-20 02:18:13', NULL, '2024-06-20'),
(116, 4, 428.00, 0.00, 89.88, 517.88, 'Nguyen', 'ChungAA', '123456', 'vidai2032003@gmail.com', 'a', 'a', 'Thương Lâm', 'Hà Nội', 'Việt nam', '68565', 'delivered', 0, '2024-06-19 03:06:54', '2024-06-20 02:00:41', '2024-06-20', NULL),
(117, 4, 425.00, 75.00, 89.25, 514.25, 'Phạm', 'Nhung', '03982090523', 'phamnhung@gmail.com', 'test  11', 'test  11', 'Yên Phong', 'Ha Noi', 'Vietnam', '5321', 'delivered', 0, '2024-06-20 01:57:22', '2024-06-20 02:00:21', '2024-06-20', NULL),
(118, 4, 340.00, 60.00, 71.40, 411.40, 'Trần', 'Cúc', '087653222', 'cuc@gmail.com', 'test  11', 'test  11', 'An Thượng', 'Ha Noi', 'Vietnam', '5432', 'delivered', 0, '2024-06-20 02:03:59', '2024-06-20 02:19:02', '2024-06-20', NULL),
(119, 4, 466.00, 10.00, 97.86, 563.86, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test  11', 'test  11', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'delivered', 0, '2024-06-20 08:46:44', '2024-06-21 01:35:40', '2024-06-21', NULL),
(120, 6, 782.00, 10.00, 164.22, 946.22, 'NGUYỄN', 'Đại', '087653422', 'nguyendinhvidai@gmail.com', 'test  11', 'test  11', 'Yên Nghĩa', 'Ha Noi', 'Vietnam', '254', 'delivered', 0, '2024-06-20 09:41:18', '2024-06-20 09:51:39', '2024-06-20', NULL),
(121, 6, 356.40, 39.60, 74.84, 431.24, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test  11', NULL, 'An Thượng, TP', 'Ha Noi', 'Vietnam', '111111', 'delivered', 0, '2024-06-20 09:54:28', '2024-06-21 01:35:38', '2024-06-21', NULL),
(122, 4, 100.00, 0.00, 21.00, 121.00, 'NGUYỄN', 'KIm', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test  11', NULL, 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', 'delivered', 0, '2024-06-21 01:29:22', '2024-06-21 01:35:35', '2024-06-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(1, 3, 1, 396.00, 1, '2024-06-12 10:23:42', '2024-06-13 10:19:48', 1),
(2, 6, 2, 469.00, 1, '2024-06-12 21:00:56', '2024-06-12 21:00:56', 0),
(3, 6, 3, 469.00, 2, '2024-06-13 04:17:37', '2024-06-13 04:17:37', 0),
(4, 12, 4, 50.00, 1, '2024-06-13 04:21:17', '2024-06-13 04:21:17', 0),
(5, 5, 5, 431.00, 1, '2024-06-15 11:06:14', '2024-06-15 11:06:14', 0),
(6, 5, 6, 431.00, 1, '2024-06-15 11:07:36', '2024-06-15 11:07:36', 0),
(7, 3, 7, 396.00, 12, '2024-06-16 00:29:55', '2024-06-16 00:29:55', 0),
(8, 1, 8, 119.00, 1, '2024-06-18 03:19:03', '2024-06-18 03:19:03', 0),
(9, 3, 8, 396.00, 1, '2024-06-18 03:19:03', '2024-06-18 03:19:03', 0),
(10, 1, 9, 119.00, 1, '2024-06-18 03:19:58', '2024-06-18 03:19:58', 0),
(11, 3, 9, 396.00, 1, '2024-06-18 03:19:59', '2024-06-18 03:19:59', 0),
(12, 1, 10, 119.00, 1, '2024-06-18 03:20:14', '2024-06-18 03:20:14', 0),
(13, 3, 10, 396.00, 1, '2024-06-18 03:20:14', '2024-06-18 03:20:14', 0),
(14, 1, 11, 119.00, 1, '2024-06-18 03:20:16', '2024-06-18 03:20:16', 0),
(15, 3, 11, 396.00, 1, '2024-06-18 03:20:16', '2024-06-18 03:20:16', 0),
(16, 1, 12, 119.00, 1, '2024-06-18 03:20:17', '2024-06-18 03:20:17', 0),
(17, 3, 12, 396.00, 1, '2024-06-18 03:20:17', '2024-06-18 03:20:17', 0),
(18, 1, 13, 119.00, 1, '2024-06-18 03:20:19', '2024-06-18 03:20:19', 0),
(19, 3, 13, 396.00, 1, '2024-06-18 03:20:19', '2024-06-18 03:20:19', 0),
(20, 1, 14, 119.00, 1, '2024-06-18 03:22:05', '2024-06-18 03:22:05', 0),
(21, 3, 14, 396.00, 1, '2024-06-18 03:22:05', '2024-06-18 03:22:05', 0),
(22, 1, 15, 119.00, 1, '2024-06-18 03:26:21', '2024-06-18 03:26:21', 0),
(23, 3, 15, 396.00, 1, '2024-06-18 03:26:21', '2024-06-18 03:26:21', 0),
(24, 1, 16, 119.00, 1, '2024-06-18 03:27:56', '2024-06-18 03:27:56', 0),
(25, 3, 16, 396.00, 1, '2024-06-18 03:27:56', '2024-06-18 03:27:56', 0),
(26, 1, 17, 119.00, 1, '2024-06-18 03:28:09', '2024-06-18 03:28:09', 0),
(27, 3, 17, 396.00, 1, '2024-06-18 03:28:09', '2024-06-18 03:28:09', 0),
(28, 1, 18, 119.00, 1, '2024-06-18 03:29:26', '2024-06-18 03:29:26', 0),
(29, 3, 18, 396.00, 1, '2024-06-18 03:29:26', '2024-06-18 03:29:26', 0),
(30, 1, 19, 119.00, 1, '2024-06-18 03:29:49', '2024-06-18 03:29:49', 0),
(31, 3, 19, 396.00, 1, '2024-06-18 03:29:49', '2024-06-18 03:29:49', 0),
(32, 1, 20, 119.00, 1, '2024-06-18 03:44:58', '2024-06-18 03:44:58', 0),
(33, 3, 20, 396.00, 1, '2024-06-18 03:44:58', '2024-06-18 03:44:58', 0),
(34, 2, 21, 214.00, 1, '2024-06-18 06:19:49', '2024-06-18 06:19:49', 0),
(35, 3, 21, 396.00, 1, '2024-06-18 06:19:49', '2024-06-18 06:19:49', 0),
(36, 2, 22, 214.00, 1, '2024-06-18 06:30:45', '2024-06-18 06:30:45', 0),
(37, 3, 22, 396.00, 1, '2024-06-18 06:30:45', '2024-06-18 06:30:45', 0),
(38, 2, 23, 214.00, 1, '2024-06-18 06:34:39', '2024-06-18 06:34:39', 0),
(39, 3, 23, 396.00, 1, '2024-06-18 06:34:39', '2024-06-18 06:34:39', 0),
(40, 2, 24, 214.00, 1, '2024-06-18 06:38:20', '2024-06-18 06:38:20', 0),
(41, 3, 24, 396.00, 1, '2024-06-18 06:38:20', '2024-06-18 06:38:20', 0),
(42, 1, 25, 119.00, 1, '2024-06-18 09:34:37', '2024-06-18 09:34:37', 0),
(43, 1, 26, 119.00, 2, '2024-06-18 09:46:48', '2024-06-18 09:46:48', 0),
(44, 12, 27, 50.00, 1, '2024-06-18 10:23:15', '2024-06-18 10:23:15', 0),
(45, 12, 28, 50.00, 1, '2024-06-18 10:44:05', '2024-06-18 10:44:05', 0),
(46, 1, 29, 119.00, 2, '2024-06-18 10:54:48', '2024-06-18 10:54:48', 0),
(47, 1, 30, 119.00, 2, '2024-06-18 11:02:34', '2024-06-18 11:02:34', 0),
(48, 1, 31, 119.00, 2, '2024-06-18 11:03:22', '2024-06-18 11:03:22', 0),
(49, 10, 32, 373.00, 1, '2024-06-18 11:04:08', '2024-06-18 11:04:08', 0),
(50, 10, 33, 373.00, 1, '2024-06-18 11:27:16', '2024-06-18 11:27:16', 0),
(51, 10, 34, 373.00, 1, '2024-06-18 11:51:00', '2024-06-18 11:51:00', 0),
(52, 10, 35, 373.00, 1, '2024-06-18 12:01:30', '2024-06-18 12:01:30', 0),
(53, 10, 36, 373.00, 1, '2024-06-18 12:01:32', '2024-06-18 12:01:32', 0),
(54, 10, 37, 373.00, 1, '2024-06-18 12:01:33', '2024-06-18 12:01:33', 0),
(55, 10, 38, 373.00, 1, '2024-06-18 12:01:33', '2024-06-18 12:01:33', 0),
(56, 10, 39, 373.00, 1, '2024-06-18 12:01:34', '2024-06-18 12:01:34', 0),
(57, 10, 40, 373.00, 1, '2024-06-18 12:01:34', '2024-06-18 12:01:34', 0),
(58, 10, 41, 373.00, 1, '2024-06-18 12:01:35', '2024-06-18 12:01:35', 0),
(59, 10, 42, 373.00, 1, '2024-06-18 12:01:35', '2024-06-18 12:01:35', 0),
(60, 10, 43, 373.00, 1, '2024-06-18 12:01:35', '2024-06-18 12:01:35', 0),
(61, 10, 44, 373.00, 1, '2024-06-18 12:01:36', '2024-06-18 12:01:36', 0),
(62, 10, 45, 373.00, 1, '2024-06-18 12:01:36', '2024-06-18 12:01:36', 0),
(63, 10, 46, 373.00, 1, '2024-06-18 12:01:37', '2024-06-18 12:01:37', 0),
(64, 10, 47, 373.00, 1, '2024-06-18 12:01:37', '2024-06-18 12:01:37', 0),
(65, 10, 48, 373.00, 1, '2024-06-18 12:01:37', '2024-06-18 12:01:37', 0),
(66, 10, 49, 373.00, 1, '2024-06-18 12:01:38', '2024-06-18 12:01:38', 0),
(67, 10, 50, 373.00, 1, '2024-06-18 12:01:46', '2024-06-18 12:01:46', 0),
(68, 1, 51, 119.00, 1, '2024-06-18 12:01:58', '2024-06-18 12:01:58', 0),
(69, 1, 52, 119.00, 1, '2024-06-18 12:01:59', '2024-06-18 12:01:59', 0),
(70, 1, 53, 119.00, 1, '2024-06-18 12:02:00', '2024-06-18 12:02:00', 0),
(71, 1, 54, 119.00, 1, '2024-06-18 12:02:06', '2024-06-18 12:02:06', 0),
(72, 1, 55, 119.00, 1, '2024-06-18 12:02:06', '2024-06-18 12:02:06', 0),
(73, 1, 56, 119.00, 1, '2024-06-18 12:02:24', '2024-06-18 12:02:24', 0),
(74, 1, 57, 119.00, 1, '2024-06-18 12:02:25', '2024-06-18 12:02:25', 0),
(75, 1, 58, 119.00, 1, '2024-06-18 12:02:25', '2024-06-18 12:02:25', 0),
(76, 1, 59, 119.00, 1, '2024-06-18 12:02:25', '2024-06-18 12:02:25', 0),
(77, 1, 60, 119.00, 1, '2024-06-18 12:02:25', '2024-06-18 12:02:25', 0),
(78, 1, 61, 119.00, 1, '2024-06-18 12:02:26', '2024-06-18 12:02:26', 0),
(79, 1, 62, 119.00, 1, '2024-06-18 12:02:26', '2024-06-18 12:02:26', 0),
(80, 1, 63, 119.00, 1, '2024-06-18 12:02:27', '2024-06-18 12:02:27', 0),
(81, 1, 64, 119.00, 1, '2024-06-18 12:02:27', '2024-06-18 12:02:27', 0),
(82, 1, 65, 119.00, 1, '2024-06-18 12:02:27', '2024-06-18 12:02:27', 0),
(83, 1, 66, 119.00, 1, '2024-06-18 12:03:07', '2024-06-18 12:03:07', 0),
(84, 2, 67, 214.00, 2, '2024-06-18 23:43:07', '2024-06-18 23:43:07', 0),
(85, 2, 68, 214.00, 2, '2024-06-19 00:24:25', '2024-06-19 00:24:25', 0),
(86, 2, 69, 214.00, 2, '2024-06-19 00:24:32', '2024-06-19 00:24:32', 0),
(87, 2, 70, 214.00, 2, '2024-06-19 00:24:38', '2024-06-19 00:24:38', 0),
(88, 2, 71, 214.00, 2, '2024-06-19 00:24:39', '2024-06-19 00:24:39', 0),
(89, 2, 72, 214.00, 2, '2024-06-19 00:25:52', '2024-06-19 00:25:52', 0),
(90, 2, 73, 214.00, 2, '2024-06-19 00:25:55', '2024-06-19 00:25:55', 0),
(91, 2, 74, 214.00, 2, '2024-06-19 00:25:56', '2024-06-19 00:25:56', 0),
(92, 2, 75, 214.00, 2, '2024-06-19 00:27:25', '2024-06-19 00:27:25', 0),
(93, 2, 76, 214.00, 2, '2024-06-19 00:28:10', '2024-06-19 00:28:10', 0),
(94, 2, 77, 214.00, 2, '2024-06-19 00:30:12', '2024-06-19 00:30:12', 0),
(95, 2, 78, 214.00, 2, '2024-06-19 00:36:10', '2024-06-19 00:36:10', 0),
(96, 2, 79, 214.00, 2, '2024-06-19 01:05:11', '2024-06-19 01:05:11', 0),
(97, 2, 80, 214.00, 2, '2024-06-19 01:15:26', '2024-06-19 01:15:26', 0),
(98, 2, 81, 214.00, 2, '2024-06-19 01:22:32', '2024-06-19 01:22:32', 0),
(99, 2, 82, 214.00, 2, '2024-06-19 01:31:49', '2024-06-19 01:31:49', 0),
(100, 2, 83, 214.00, 2, '2024-06-19 01:46:56', '2024-06-19 01:46:56', 0),
(101, 2, 84, 214.00, 2, '2024-06-19 02:12:02', '2024-06-19 02:12:02', 0),
(102, 2, 85, 214.00, 2, '2024-06-19 02:17:44', '2024-06-19 02:17:44', 0),
(103, 2, 86, 214.00, 2, '2024-06-19 02:18:51', '2024-06-19 02:18:51', 0),
(104, 2, 87, 214.00, 2, '2024-06-19 02:21:57', '2024-06-19 02:21:57', 0),
(105, 2, 88, 214.00, 2, '2024-06-19 02:23:09', '2024-06-19 02:23:09', 0),
(106, 2, 89, 214.00, 2, '2024-06-19 02:29:35', '2024-06-19 02:29:35', 0),
(107, 2, 90, 214.00, 2, '2024-06-19 02:34:46', '2024-06-19 02:34:46', 0),
(108, 2, 91, 214.00, 2, '2024-06-19 02:37:55', '2024-06-19 02:37:55', 0),
(109, 2, 92, 214.00, 2, '2024-06-19 02:41:51', '2024-06-19 02:41:51', 0),
(110, 2, 93, 214.00, 2, '2024-06-19 02:46:37', '2024-06-19 02:46:37', 0),
(111, 2, 94, 214.00, 2, '2024-06-19 02:51:04', '2024-06-19 02:51:04', 0),
(112, 2, 95, 214.00, 2, '2024-06-19 02:54:05', '2024-06-19 02:54:05', 0),
(113, 2, 96, 214.00, 2, '2024-06-19 02:55:48', '2024-06-19 02:55:48', 0),
(114, 2, 97, 214.00, 2, '2024-06-19 02:57:16', '2024-06-19 02:57:16', 0),
(115, 2, 98, 214.00, 2, '2024-06-19 02:59:38', '2024-06-19 02:59:38', 0),
(116, 2, 99, 214.00, 2, '2024-06-19 03:01:30', '2024-06-19 03:01:30', 0),
(117, 2, 100, 214.00, 2, '2024-06-19 03:03:14', '2024-06-19 03:03:14', 0),
(118, 2, 101, 214.00, 2, '2024-06-19 03:04:23', '2024-06-19 03:04:23', 0),
(119, 2, 102, 214.00, 2, '2024-06-19 03:06:32', '2024-06-19 03:06:32', 0),
(120, 2, 103, 214.00, 2, '2024-06-19 03:06:40', '2024-06-19 03:06:40', 0),
(121, 2, 104, 214.00, 2, '2024-06-19 03:06:40', '2024-06-19 03:06:40', 0),
(122, 2, 105, 214.00, 2, '2024-06-19 03:06:40', '2024-06-19 03:06:40', 0),
(123, 2, 106, 214.00, 2, '2024-06-19 03:06:41', '2024-06-19 03:06:41', 0),
(124, 2, 107, 214.00, 2, '2024-06-19 03:06:41', '2024-06-19 03:06:41', 0),
(125, 2, 108, 214.00, 2, '2024-06-19 03:06:41', '2024-06-19 03:06:41', 0),
(126, 2, 109, 214.00, 2, '2024-06-19 03:06:45', '2024-06-19 03:06:45', 0),
(127, 2, 110, 214.00, 2, '2024-06-19 03:06:46', '2024-06-19 03:06:46', 0),
(128, 2, 111, 214.00, 2, '2024-06-19 03:06:46', '2024-06-19 03:06:46', 0),
(129, 2, 112, 214.00, 2, '2024-06-19 03:06:46', '2024-06-19 03:06:46', 0),
(130, 2, 113, 214.00, 2, '2024-06-19 03:06:46', '2024-06-19 03:06:46', 0),
(131, 2, 114, 214.00, 2, '2024-06-19 03:06:47', '2024-06-19 03:06:47', 0),
(132, 2, 115, 214.00, 2, '2024-06-19 03:06:47', '2024-06-19 03:06:47', 0),
(133, 2, 116, 214.00, 2, '2024-06-19 03:06:54', '2024-06-19 03:06:54', 0),
(134, 35, 117, 500.00, 1, '2024-06-20 01:57:22', '2024-06-20 01:57:22', 0),
(135, 32, 118, 400.00, 1, '2024-06-20 02:03:59', '2024-06-20 02:19:59', 1),
(136, 1, 119, 119.00, 4, '2024-06-20 08:46:44', '2024-06-20 08:46:44', 0),
(137, 3, 120, 396.00, 2, '2024-06-20 09:41:18', '2024-06-20 09:55:03', 1),
(138, 3, 121, 396.00, 1, '2024-06-20 09:54:28', '2024-06-20 09:54:28', 0),
(139, 12, 122, 50.00, 2, '2024-06-21 01:29:22', '2024-06-21 01:47:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$l0tLoc0EdXh3FdpnXyq5b.HOrZu5jS2E4tqJ5PpP39GjTvUXrNJUe', '2024-06-14 10:00:26'),
('user@gmail.com', '$2y$10$0uthWgt2K5VRrWOOaF89redUEqonDJ/1kUeFbntVO9sJzlKfeob96', '2024-06-14 10:14:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'LapTop - Dell', 'laptop-dell', 'Sunt vero dolor eveniet modi. Aut molestiae qui quam tenetur corrupti ratione. Nihil rerum perspiciatis aspernatur quod.', 'Nisi repellat ut reprehenderit eos ea ipsum reiciendis. Dicta sapiente voluptatem nobis fuga voluptatem. Porro enim ipsam et eaque architecto assumenda et. Eaque sint voluptas culpa ipsam. Nostrum id commodi est ipsum perspiciatis hic. Impedit consequatur dolor consequatur laudantium. Qui consectetur deserunt quibusdam vitae molestiae officia nisi. A repellat eius iure. Exercitationem consequuntur veritatis officia consequatur quidem recusandae. Enim adipisci autem est.', 119.00, 10.00, 'DIGI146', 'instock', 0, 127, '1717866966.jpg', '17188985690.jpg', 9, '2024-05-25 12:01:22', '2024-06-20 08:49:29', 3),
(2, 'Bluetooth speaker combined with clock', 'bluetooth-speaker-combined-with-clock', 'Molestiae quas quas culpa et. Et id nobis ullam laboriosam quas dolorum voluptatem. Illum magnam qui totam velit quaerat. At sunt nam eos perspiciatis aliquid porro vitae.', 'Voluptatem quia beatae nemo ut. Molestias alias consequuntur id porro et ex. Repudiandae accusamus consequatur est sint dolor. Voluptate impedit omnis dolor vero nisi. Nisi non dolorem sed modi. Est qui officia rerum rerum dolor rem. Molestiae quia voluptatem rerum qui et quasi excepturi quis. Sapiente nihil architecto sint eum dicta sed nihil. Neque eum mollitia ducimus magnam similique. Sapiente quis dolore nisi. Quidem et minus atque laudantium et praesentium aut.', 214.00, 200.00, 'DIGI481', 'instock', 0, 115, 'digital_16.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-19 20:44:01', NULL),
(3, 'Electric balance scooter 2 for sale', 'electric-balance-scooter-2-for-sale', 'Libero voluptatem fugiat voluptatum architecto quisquam voluptas. Nesciunt itaque qui iure animi. Voluptatem explicabo voluptate iste placeat temporibus numquam qui.', 'Libero id eligendi optio nisi. Sit enim qui molestias. Doloremque aut ut dolor reiciendis. Nulla est eveniet aut enim aut. Dolor excepturi ad aut ea. Tempore quae voluptas non. Labore non ut error quia enim nobis consequuntur. Sunt et accusamus enim asperiores. Commodi officia assumenda officia maiores hic quia assumenda. Et qui facilis repudiandae in eaque.', 396.00, 300.00, 'DIGI433', 'instock', 0, 129, 'digital_15.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-19 20:45:11', NULL),
(5, 'Air purifier', 'air-purifier', 'Aut incidunt et sed. Voluptas temporibus voluptatem sit consequuntur vero. Voluptas rerum beatae dolore molestiae est enim possimus. Assumenda excepturi harum ratione vel aliquam.', 'Est molestias dolores nulla adipisci aut. Nulla deleniti aperiam alias rerum. Iste fugiat amet iure. Rem neque in id repellat necessitatibus. Magnam quasi earum ut fuga quia ut. Nostrum expedita maxime optio voluptates sunt dolorum. Eveniet sit voluptas modi possimus numquam magni. Mollitia maxime animi minima ratione a iste. Dolor aut qui nostrum quam ut molestiae similique dignissimos. Repellendus vel molestiae omnis magnam ut beatae.', 431.00, 400.00, 'DIGI151', 'instock', 0, 175, 'digital_17.jpg', NULL, 3, '2024-05-25 12:01:22', '2024-06-19 20:46:28', NULL),
(6, 'Gaming handle', 'gaming-handle', 'Quis ea id iste doloribus illum in nesciunt. Ea sed eveniet optio temporibus. Voluptas molestiae et quam aut non. Qui corporis et quidem rerum qui autem.', 'Enim quis iusto ut fugit similique aut. Rerum dicta in amet quam rerum. Laboriosam minima veniam molestias accusantium. Voluptatem quia nulla sit autem ad. Blanditiis omnis dolor tempore enim beatae quasi facere. Sapiente voluptate omnis quisquam natus nesciunt dignissimos aut aut. Exercitationem delectus id cupiditate quisquam odit inventore minima.', 469.00, 10.00, 'DIGI312', 'instock', 0, 131, 'digital_10.jpg', NULL, 4, '2024-05-25 12:01:22', '2024-06-19 20:47:24', NULL),
(7, 'Illuminating lights', 'illuminating-lights', 'Voluptatum quisquam dolorem eligendi. Similique aut occaecati dolor. Quibusdam et maxime qui earum est. Id id tenetur qui.', 'Deleniti excepturi omnis ut sunt voluptas et laborum. Eius nihil quia sapiente officiis asperiores recusandae. Ut aut vel et vel cum quo voluptatum. Accusamus vero ex odio qui quae quia non. Inventore quasi dolor rerum ea. Blanditiis mollitia et voluptatibus aut officiis adipisci commodi. Saepe rem facere id vel. Corporis consequatur tempora tenetur in ad modi. Ea et laudantium non natus pariatur. Sapiente ipsum dolorem aut.', 451.00, 1.00, 'DIGI432', 'instock', 0, 140, '1718858962.jpg', NULL, 2, '2024-05-25 12:01:22', '2024-06-19 21:49:22', NULL),
(8, 'Camera', 'camera', 'Vero voluptates veritatis cumque recusandae ratione. Quia exercitationem unde asperiores neque. Facere autem quidem aut sunt laborum impedit enim et.', 'Fuga sunt rerum illum velit non rerum reiciendis. Et ea omnis omnis. Soluta quibusdam occaecati qui et quia. Eos dolore dignissimos reprehenderit ea. Nobis quae ullam provident dicta nihil nesciunt enim. Animi quo et non corporis. Repellendus aut deserunt et facilis vel omnis quia. Eligendi aut soluta vel iure vel aspernatur ratione. Vel libero sed sequi recusandae doloremque distinctio. Eum omnis vero dolor voluptas omnis non. Aut ut magni recusandae veniam quia voluptatem.', 433.00, 10.00, 'DIGI169', 'instock', 0, 187, 'digital_21.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-19 20:49:32', NULL),
(9, 'Phone toys', 'phone-toys', 'Pariatur aut repellendus in pariatur voluptatem. Est est ut eligendi et. Recusandae repudiandae ab et quaerat dolorem.', 'Ea voluptatibus consequatur aut. Reprehenderit perferendis et deserunt tempore enim. Nisi ducimus asperiores voluptates quis tempore. Et reiciendis nam tempore repudiandae vel minima qui. Ab et aliquam nesciunt ducimus numquam amet neque. Sint ut repellendus doloremque asperiores dolor dolorem molestias sequi. Repellat aut eum sapiente molestias. Suscipit quo consequuntur harum id veniam.', 314.00, 20.00, 'DIGI363', 'instock', 0, 104, 'digital_2.jpg', '17188988520.jpg', 5, '2024-05-25 12:01:22', '2024-06-20 08:54:12', NULL),
(10, 'Samsung phone', 'samsung-phone', 'Voluptatem a tempore aspernatur sequi. At quia provident quae occaecati illo dolor quia dolores. Optio illo debitis impedit placeat tempore ipsa.', 'Ea perferendis autem maxime libero sunt est. Aut doloremque vitae sit rem in. Cumque natus temporibus provident vel. Asperiores at omnis quia rem quia. Ut et esse nesciunt aliquid et quidem. Rem neque harum possimus inventore minima. Quia molestiae occaecati recusandae et ut eaque voluptates quos. Accusantium enim et laudantium voluptate. Qui architecto neque consequatur. Ratione deleniti saepe qui consectetur at incidunt. Aliquid voluptas illo est ex architecto.', 373.00, 50.00, 'DIGI275', 'instock', 0, 141, 'digital_5.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-19 20:51:50', NULL),
(12, 'Bluetooth headphone', 'bluetooth-headphone', 'Commodi inventore consequatur quia magni. Nulla sed atque autem nesciunt in consequatur et optio. Alias modi nulla sed saepe.', 'Veniam ratione dolorem necessitatibus libero quas consectetur quos non. Amet laudantium culpa numquam incidunt ut. Est id at sunt nobis. Ut quo qui et dolor voluptate adipisci. Est natus aperiam eaque non molestiae ea voluptas. Sed nesciunt at quo sequi. Adipisci repellendus nihil libero vel commodi. Sit odio et non deleniti nostrum. Praesentium deleniti adipisci rerum necessitatibus illo. Ex ut ut praesentium soluta.', 50.00, 5.00, 'DIGI259', 'instock', 0, 189, 'digital_13.jpg', NULL, 6, '2024-05-25 12:01:22', '2024-06-19 20:52:50', NULL),
(13, 'Samsung Toys', 'samsung-toys', 'Commodi nobis quidem sit nesciunt delectus sapiente. Quibusdam excepturi consequatur enim dicta praesentium corrupti rerum. Et suscipit optio expedita saepe facere doloribus.', 'Quia dolores in qui. Nostrum voluptatem deserunt inventore reiciendis. Quibusdam odio sapiente laboriosam numquam ullam. Minima non unde accusantium. Ratione non voluptatem dolor cum nobis animi voluptas. Eum porro enim quasi consequatur nulla eos. Sit deserunt occaecati architecto mollitia sit tenetur qui. Magni ea nobis molestiae sint.', 277.00, 20.00, 'DIGI121', 'instock', 0, 168, 'digital_5.jpg', NULL, 5, '2024-05-25 12:01:22', '2024-06-20 00:56:15', NULL),
(14, 'Sleep Alight', 'sleep-alight', 'Modi provident deleniti rerum quia. Itaque sunt sed voluptas quis nobis. Dignissimos facere tenetur aliquid blanditiis iste aliquam.', 'Nobis voluptas placeat ut animi quia. Fugiat voluptatibus quisquam id blanditiis voluptatum id. Rem sit voluptatem aut a labore sed necessitatibus. Qui recusandae quibusdam modi voluptatem soluta. Libero eum nesciunt placeat vel voluptate fugit consequuntur quis. Ut veritatis necessitatibus nulla voluptatibus quo. Ducimus ullam aspernatur aspernatur molestias. Culpa reprehenderit rem ab magni asperiores. Ea tenetur molestias et corrupti sit tempore accusamus.', 83.00, NULL, 'DIGI299', 'instock', 0, 132, '1718858772.jpg', NULL, 2, '2024-05-25 12:01:22', '2024-06-19 21:46:12', NULL),
(15, 'smart watch-2', 'smart-watch-2', 'Placeat consequatur molestias dolor. Maxime qui aut et at modi in et. Qui eum aut incidunt.', 'Sapiente dignissimos in illum maxime inventore est. Sed voluptatibus enim omnis rerum sit ullam qui. Ducimus molestiae in accusantium assumenda. Provident dolorem rerum nesciunt veritatis eos et sint. Delectus cumque quos blanditiis tempora voluptas qui. Magnam et mollitia reprehenderit deserunt rem impedit. Explicabo non dolor deleniti nesciunt. Sint dolorum quo dolores quia.', 489.00, NULL, 'DIGI118', 'instock', 0, 138, 'digital_11.jpg', NULL, 1, '2024-05-25 12:01:22', '2024-06-20 00:57:04', 6),
(16, 'SamSung Note 3', 'samsung-note-3', 'Id perferendis tempora sit sit commodi explicabo autem voluptas. Perferendis explicabo est commodi repellat rerum magni. Iusto est velit perferendis officiis voluptatem. Corrupti sit omnis occaecati.', 'Cumque voluptatibus rerum ex rerum et maxime accusantium. Soluta expedita aliquid eius atque necessitatibus ut. Deleniti amet cupiditate nihil at suscipit eum quo dolor. Fuga qui dolorem et non. Quis repudiandae animi aut dolorem quia officia et nam. Et alias harum maxime numquam. Labore quasi et eaque temporibus aut nihil fugit. Aut vel necessitatibus enim vel ab earum. Ad in nulla quis dolorem quam. Suscipit cum qui alias. Minus laborum est explicabo sed.', 138.00, NULL, 'DIGI176', 'instock', 0, 127, 'digital_2.jpg', NULL, 4, '2024-05-25 12:01:22', '2024-06-19 21:52:08', NULL),
(17, 'Xiaomi Watch 3', 'xiaomi-watch-3', 'Laborum sint occaecati ut nulla corporis ducimus officiis. Et voluptas ratione aperiam animi ut.', 'Rerum dolorem minima aut incidunt consequatur. Eos dolore assumenda ipsam exercitationem voluptatibus. Incidunt dolor ut quo eveniet explicabo repellendus et. Quaerat adipisci aspernatur sed aliquid quam reprehenderit. Iste modi et provident sunt dolorem placeat. Ullam in cum eos qui in itaque saepe nam. Perferendis nihil officia voluptatibus fugit eos. Sed ipsa architecto rerum est quod voluptatem.', 168.00, NULL, 'DIGI390', 'instock', 0, 169, 'digital_11.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-20 00:57:39', NULL),
(18, 'voluptatem voluptas qui odio', 'voluptatem-voluptas-qui-odio', 'Recusandae incidunt nulla quae enim delectus autem libero quis. Quas cupiditate dolores voluptas ipsam. Porro ut et rem qui.', 'Non et eum optio minus iure velit voluptatem. Illum quibusdam eaque aut accusantium doloribus beatae. Fuga aut sed minima atque esse voluptas est. Officiis sit esse quod quia dolor neque. Consequatur iure ut eaque voluptatem earum animi est cupiditate. Et perferendis culpa eum voluptatem velit vel. Accusantium quas debitis laborum id architecto id. Magnam qui saepe molestiae officia. Tenetur ipsum exercitationem quibusdam. Nam quam in ex.', 395.00, NULL, 'DIGI301', 'instock', 0, 166, 'digital_6.jpg', NULL, 4, '2024-05-25 12:01:22', '2024-05-25 12:01:22', NULL),
(19, 'Samsung Galaxy S8', 'samsung-galaxy-s8', 'Minima cumque exercitationem id eveniet ea debitis facere laudantium. Repellat ducimus ex est voluptatem repudiandae labore. Enim quia aut consequatur exercitationem quas dolores neque.', 'Et deleniti optio ut qui. Aperiam et quaerat qui ducimus dignissimos. Impedit id qui dolorem qui facilis dolorem. Dolor vel ipsam alias corrupti. A ea rerum officiis id. Error ut consectetur accusamus ipsum. Magni corrupti repellendus sit saepe minus est consectetur. Aut veniam nemo sint.', 160.00, NULL, 'DIGI450', 'instock', 0, 174, 'digital_1.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-19 21:54:07', NULL),
(20, 'High bedside lamp', 'high-bedside-lamp', 'Ex autem quia qui aspernatur optio ipsam fuga. In qui culpa aliquid nihil assumenda. Repellendus voluptas quisquam consequuntur minus architecto.', 'In quia et cupiditate blanditiis numquam eveniet tempora voluptas. Dolore quia possimus suscipit. Delectus sed quas velit et sint. Sed iste sit repellat voluptatem non voluptas. Minus quasi expedita et enim provident ea. Facilis optio quo vero quibusdam doloremque. Facere culpa sit magnam eius quisquam sunt. Harum corrupti et voluptates. Velit tempore dolorem corrupti numquam sint ipsa. Necessitatibus animi ut quis itaque. Et harum magni quae fugiat earum. Earum veniam deleniti non est quia.', 216.00, NULL, 'DIGI417', 'instock', 0, 185, '1718859358.jpg', NULL, 2, '2024-05-25 12:01:22', '2024-06-19 21:55:58', NULL),
(21, 'SamSung Note 3 Pro', 'samsung-note-3-pro', 'Quae voluptates consequuntur saepe delectus. Ab voluptates eaque sit sunt. Provident quia in eaque voluptas. Corrupti vitae vel exercitationem dolore aliquam temporibus.', 'Veniam quos aut sit voluptatem. Quidem deserunt qui itaque qui. Aut consequatur aut voluptas iure atque. Minus blanditiis quam consequatur impedit. Minima ipsam maxime ut et exercitationem ab. Et vitae architecto porro. Officiis amet iure molestiae architecto delectus. Rerum aliquid necessitatibus nam laborum quam iure voluptates non. Non qui sint consectetur quod velit ipsum delectus consectetur.', 448.00, NULL, 'DIGI425', 'instock', 0, 114, 'digital_2.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-20 00:59:07', NULL),
(22, 'Asus screen', 'asus-screen', 'Aspernatur cupiditate enim quasi ut consequatur ut sed. Quia molestiae placeat laboriosam ut est atque. Quo et sit nobis voluptas odit. Recusandae ab neque quo aliquam iusto commodi expedita.', 'Sint libero unde quia dolor iusto. Aspernatur maxime quidem sit et velit. Quos cupiditate non tempora ad ullam. Harum velit sit ipsam dolorem dicta dolor qui. Eligendi a in temporibus rerum nihil ex eum quod. Illo sed non excepturi quaerat minima. Molestiae explicabo quam eaque cupiditate ab et maxime. Est beatae dolorem odio aut saepe. Deleniti nisi veniam sit ex. Optio id officia repudiandae voluptas autem ratione. Ut impedit facere sint et.', 316.00, NULL, 'DIGI174', 'instock', 0, 166, '1718859587.jpg', NULL, 9, '2024-05-25 12:01:22', '2024-06-20 00:59:32', NULL),
(29, 'Saw machine', 'saw-machine', 'aa', 'aaaa', 200.00, 10.00, 'DIGI43534', 'instock', 0, 11, '1718872165.jpg', '17188721650.jpg,17188721651.jpg', 2, '2024-06-14 09:30:54', '2024-06-20 01:29:25', NULL),
(32, 'Smart Alight', 'smartalight', 'aa', 'aa', 400.00, 10.00, 'DIGI65', 'instock', 0, 123, '1718872386.jpg', NULL, 9, '2024-06-19 21:19:56', '2024-06-20 01:33:06', NULL),
(33, 'Screwdriver', 'screwdriver', 'r', 'r', 250.00, 10.00, 'A', 'instock', 0, 123, '1718870445.jpg', NULL, 2, '2024-06-19 21:34:06', '2024-06-20 01:00:45', NULL),
(34, 'Car toy', 'car-toy', 'Beautifull', 'beautifull', 50.00, 5.00, 'DIGI876', 'instock', 0, 23, '1718872328.jpg', NULL, 5, '2024-06-20 01:32:08', '2024-06-20 01:32:08', NULL),
(35, 'Bike', 'bike', 'Wow', 'wow', 500.00, 200.00, 'DIGI54', 'instock', 0, 23, '1718873595.jpg', NULL, 5, '2024-06-20 01:53:15', '2024-06-20 01:53:15', NULL),
(37, 'Sofa', 'sofa', 'good', 'good', 250.00, 100.00, 'DIGI53', 'instock', 0, 123, '1718902012.jpg', ',17189020120.jpg', 10, '2024-06-20 09:46:52', '2024-06-20 09:46:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, '099458218546', 'aaa', 'aaa', 'Hà Tây', 'Yên Nghĩa', 'Việt Nam', '65432', '2024-06-17 00:35:11', '2024-06-18 00:20:11'),
(2, 6, '', '0398209052', 'a', 'a', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', '2024-06-20 09:42:15', '2024-06-20 09:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'nice product for home', 1, '2024-06-13 10:19:48', '2024-06-13 10:19:48'),
(2, 5, 'Sản phẩm rất tốt', 135, '2024-06-20 02:19:59', '2024-06-20 02:19:59'),
(3, 5, 'sản phẩm tốt', 137, '2024-06-20 09:55:03', '2024-06-20 09:55:03'),
(4, 4, 'very good', 139, '2024-06-21 01:47:42', '2024-06-21 01:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2024-06-22 04:30:30', 1, NULL, '2024-06-21 01:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('tKKpfXbZjEZNURfZZ4YtHBunMQvRVIdT9bYdy04e', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWjNHMEJ1VGxsRUtRUngwSkdIbXdxU2NJZzZvV3VZWVZwNVNoTEd6ViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1718959718);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone2` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(1000) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `tiktok` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `instagram`, `tiktok`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'nguyendinhvidai@gmail.com', '0643214235', '0876543423', 'Chùa Thượng An Thượng Tp. Hài Dương, Hải Dương', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.748538460395!2d105.7461061100469!3d20.962611180589604!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313452efff394ce3%3A0x391a39d4325be464!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBQaGVuaWthYQ!5e0!3m2!1svi!2s!4v1718379174763!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', '#', '#', '#', '#', '#', '2024-06-14 04:09:14', '2024-06-20 09:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `line1` varchar(255) NOT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test line 11', 'test line 22', 'Yên Nghĩa', 'Ha Noi', 'Vietnam', '1234', '2024-06-12 10:23:42', '2024-06-12 10:23:42'),
(2, 2, 'NGUYỄN', 'Chung', '0398209052', 'nguyenchung@gmail.com', 'test line 11', 'test line 123', 'Yên Lãng', 'Ha Noi', 'Vietnam', '14545', '2024-06-12 21:00:56', '2024-06-12 21:00:56'),
(3, 3, 'NGUYỄN', 'HOAN11', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test line 1', 'test line 1', 'An Thượng, TP. Hải Dương, Hải Dương', 'H320', 'Vietnam', '43321', '2024-06-13 04:17:37', '2024-06-13 04:17:37'),
(4, 4, 'NGUYỄN', 'HOAN', '0398209052', 'nguyenhuuhoan22032003@gmail.com', 'test  11', 'test  11', 'An Thượng, TP. Hải Dương, Hải Dương', 'Ha Noi', 'Vietnam', '111111', '2024-06-13 04:21:17', '2024-06-13 04:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Desktop', 'desktop', 9, '2024-06-16 00:47:03', '2024-06-16 01:53:50'),
(2, 'Mobile', 'mobile', 9, '2024-06-16 01:14:06', '2024-06-16 01:14:06'),
(3, 'Laptop', 'laptop', 9, '2024-06-16 02:36:56', '2024-06-16 02:36:56'),
(4, 'Air Cooler', 'air-cooler', 9, '2024-06-16 02:37:38', '2024-06-16 02:37:38'),
(6, 'Watch', 'watch', 1, '2024-06-16 08:26:23', '2024-06-16 08:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cod', 'pending', '2024-06-12 10:23:42', '2024-06-12 10:23:42'),
(2, 2, 2, 'cod', 'pending', '2024-06-12 21:00:56', '2024-06-12 21:00:56'),
(3, 1, 3, 'cod', 'pending', '2024-06-13 04:17:37', '2024-06-13 04:17:37'),
(4, 1, 4, 'cod', 'pending', '2024-06-13 04:21:17', '2024-06-13 04:21:17'),
(5, 4, 5, 'cod', 'pending', '2024-06-15 11:06:14', '2024-06-15 11:06:14'),
(6, 4, 6, 'cod', 'pending', '2024-06-15 11:07:36', '2024-06-15 11:07:36'),
(7, 4, 7, 'cod', 'pending', '2024-06-16 00:29:55', '2024-06-16 00:29:55'),
(8, 4, 31, 'cod', 'pending', '2024-06-18 11:03:22', '2024-06-18 11:03:22'),
(9, 4, 50, 'cod', 'pending', '2024-06-18 12:01:46', '2024-06-18 12:01:46'),
(10, 4, 117, 'cod', 'pending', '2024-06-20 01:57:22', '2024-06-20 01:57:22'),
(11, 4, 118, 'cod', 'pending', '2024-06-20 02:03:59', '2024-06-20 02:03:59'),
(12, 4, 119, 'cod', 'pending', '2024-06-20 08:46:45', '2024-06-20 08:46:45'),
(13, 6, 120, 'cod', 'pending', '2024-06-20 09:41:18', '2024-06-20 09:41:18'),
(14, 6, 121, 'cod', 'pending', '2024-06-20 09:54:28', '2024-06-20 09:54:28'),
(15, 4, 122, 'cod', 'pending', '2024-06-21 01:29:22', '2024-06-21 01:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR fro User or CUstomer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Dinh Vi Dai', 'vidai123@gmail.com', NULL, '$2y$10$ZB/dg2M58oOu71SRFkmc9eFxYPcd/cG73HADlyCHHwspmqdrPlER.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-05-24 10:42:47', '2024-06-14 01:08:20'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$.yfrq4NSDNJbpMxAoG5v2eLVl5tuvb8zgQ4oBpjjdfxV2aSjBEfQC', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2024-05-28 23:08:18', '2024-05-28 23:08:18'),
(3, 'User1', 'user1@gmail.com', NULL, '$2y$10$eJJFcfmt25wts/rjZMtAIOa2yu6qrPaWXER4lLaDlQDfb/bj1fXpa', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-06-12 22:00:31', '2024-06-12 22:00:31'),
(4, 'Hoan', 'user@gmail.com', NULL, '$2y$10$w5pgxlA4nY48OFpMkVX0UOJXkeALy1lF7.ZElv2SdXu1COv6LIJA6', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-06-14 09:51:32', '2024-06-20 02:26:05'),
(5, 'Đại', 'user2@gmail.com', NULL, '$2y$10$KYgF0eAUAcaMCetMUYTuIelFS27ZKxJdEotXKyIXYN9BkVjQ/OQim', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-06-20 09:22:34', '2024-06-20 09:22:54'),
(6, 'Hoan', 'user3@gmail.com', NULL, '$2y$10$R1US9mOqXCFiCu6SFkRmYe0TTffug0ivW16kqMEggUajUguOsLa42', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2024-06-20 09:34:15', '2024-06-20 09:42:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
