-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2022 at 04:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berkatsoft`
--

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
(38, '2014_10_12_000000_create_users_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(42, '2022_07_12_125923_produk', 1),
(43, '2022_07_13_125923_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_produk`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-07-13 05:56:23', '2022-07-13 05:56:23'),
(2, 3, 2, '2022-07-13 05:56:23', '2022-07-13 05:56:23');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `created_at`, `updated_at`) VALUES
(1, 'QG7Jt', 'Produk48', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(2, 'X6ESh', 'Produk69', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(3, 'zvCUC', 'Produk21', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(4, 'tCAZH', 'Produk86', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(5, 'dq2F7', 'Produk77', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(6, '1SSE6', 'Produk38', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(7, 'UQ5SB', 'Produk36', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(8, 'qX45q', 'Produk95', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(9, 'IEvjv', 'Produk11', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(10, '2b5ex', 'Produk70', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(11, '2Gfld', 'Produk80', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(12, 'LIAhS', 'Produk46', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(13, 'wnXVv', 'Produk23', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(14, 'jduMi', 'Produk94', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(15, 'hIwDp', 'Produk11', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(16, 'gEh14', 'Produk95', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(17, 'E43el', 'Produk25', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(18, '3wuoe', 'Produk27', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(19, 'WUsFU', 'Produk86', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(20, 'NwtTk', 'Produk37', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(21, 'Xbyvk', 'Produk66', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(22, 'c1iWx', 'Produk4', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(23, 'jS8Xm', 'Produk71', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(24, 'jOER2', 'Produk94', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(25, 'Kjtdz', 'Produk77', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(26, '6A7E3', 'Produk96', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(27, 'aYMFR', 'Produk51', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(28, '1eArW', 'Produk61', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(29, 'Eh0HF', 'Produk12', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(30, 'YgZld', 'Produk20', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(31, 'uQFNO', 'Produk32', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(32, 'lXkJM', 'Produk47', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(33, 'loM4w', 'Produk68', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(34, 'KuqKe', 'Produk37', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(35, 'fbbwB', 'Produk51', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(36, '2LrML', 'Produk3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(37, 'WHjsM', 'Produk94', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(38, 'XY5aa', 'Produk8', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(39, 'WTOMG', 'Produk9', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(40, 'pWdgt', 'Produk25', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(41, 'HwYVk', 'Produk89', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(42, 'tefKP', 'Produk29', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(43, 'cKyto', 'Produk33', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(44, 'YhJAZ', 'Produk20', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(45, '5kdoc', 'Produk86', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(46, 'RfT3p', 'Produk53', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(47, '7LmFr', 'Produk27', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(48, '4tavq', 'Produk9', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(49, 'mtbYd', 'Produk17', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(50, 'ZDlBM', 'Produk29', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(51, '8wKig', 'Produk9', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(52, 'EqOKR', 'Produk29', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(53, 'VSlb6', 'Produk50', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(54, 'JAdLO', 'Produk83', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(55, 'QWMVO', 'Produk46', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(56, '1liJU', 'Produk79', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(57, 'VVydB', 'Produk30', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(58, 'm2lgJ', 'Produk81', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(59, '0G4Fn', 'Produk24', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(60, 'oAh6l', 'Produk24', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(61, 'juC3g', 'Produk70', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(62, 'WEnhA', 'Produk61', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(63, 'VhjHT', 'Produk9', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(64, 'sSxRT', 'Produk48', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(65, 'yZO5G', 'Produk89', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(66, 'N5SEo', 'Produk99', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(67, 'KIKHs', 'Produk55', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(68, 'lMEQ5', 'Produk46', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(69, 'AW66W', 'Produk82', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(70, 'VC27l', 'Produk82', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(71, 'M6LSl', 'Produk39', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(72, 'npdIl', 'Produk44', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(73, 'HNCZL', 'Produk27', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(74, 'Xikft', 'Produk28', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(75, 'ZDI0k', 'Produk86', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(76, 'azjv0', 'Produk84', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(77, 'svTa0', 'Produk47', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(78, 'DMnEk', 'Produk54', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(79, 'YObhd', 'Produk54', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(80, 'Lpzlq', 'Produk72', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(81, 'o3fAe', 'Produk43', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(82, 'dwBlG', 'Produk43', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(83, 'GIlGi', 'Produk6', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(84, 'gqJW7', 'Produk11', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(85, 'pcHqj', 'Produk92', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(86, 'lW5cE', 'Produk5', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(87, 'XieRV', 'Produk38', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(88, 'iwGaC', 'Produk96', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(89, 'qoMqF', 'Produk38', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(90, 'E72AO', 'Produk88', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(91, 'dCJxx', 'Produk89', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(92, 'nXVte', 'Produk73', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(93, 'DlZ19', 'Produk84', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(94, 'Z0Sc1', 'Produk25', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(95, '46ELd', 'Produk8', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(96, 'LKXxu', 'Produk43', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(97, 'yn2x5', 'Produk12', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(98, 'zkn2Y', 'Produk37', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(99, 'F9Nrk', 'Produk77', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(100, 'ZzWsq', 'Produk74', '2022-07-13 05:14:06', '2022-07-13 05:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Costumer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `userfile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Ms. Jolie Corwin', 'admin@gmail.com', '2022-07-13 05:14:06', '$2a$12$vGhnLXvQ/7UVob9Gf8Txdu/1zq3hcmJa2OHAalalxbcC78aYsqA0O', NULL, 'cDoRyCN2au', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(2, 'Costumer', 'Ms. Abigale Metz DDS', 'rkling@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'pkJVpXFQD7', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(3, 'Costumer', 'Robb Leannon DVM', 'abrown@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '6Die2MUBW7', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(4, 'Costumer', 'Cordell Pacocha', 'okeefe.maxie@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'tdcagpc0vP', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(5, 'Costumer', 'Camryn Johnson', 'moen.maye@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'BvFXLzHeDh', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(6, 'Costumer', 'Mr. Ellsworth Vandervort MD', 'rahul.schmidt@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1QZkGyUHFO', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(7, 'Costumer', 'Mrs. Rae Beatty Sr.', 'crawford95@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'rHBaSeBAu9', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(8, 'Costumer', 'Kariane Cremin', 'nicole.jacobson@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7xH2qMSAeE', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(9, 'Costumer', 'Jamarcus Keeling', 'lehner.iliana@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'lv51m2zJP5', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(10, 'Costumer', 'Alyson Rowe', 'vhyatt@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'JOMasPwJHB', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(11, 'Costumer', 'Verna Ferry', 'mthompson@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'wtYkggQi9X', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(12, 'Costumer', 'Michele Halvorson', 'willms.jameson@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3GNf9HAyzz', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(13, 'Costumer', 'Miss Cassie Breitenberg PhD', 'vkuhlman@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '0TFdWDaeay', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(14, 'Costumer', 'Everette O\'Reilly', 'carlo12@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'D9Cn7mV39m', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(15, 'Costumer', 'Olin Terry', 'mbreitenberg@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'cRGIdHvG2W', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(16, 'Costumer', 'Henri Weissnat DDS', 'vpfeffer@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '44poCqjDM4', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(17, 'Costumer', 'Dr. Haven Emmerich II', 'treinger@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'nE14pTDqh0', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(18, 'Costumer', 'Dr. Scottie Kuvalis MD', 'shaun.roberts@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'BGqXqElBVt', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(19, 'Costumer', 'Kurtis Murazik', 'lavern.smitham@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7KNo99QLJA', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(20, 'Costumer', 'Prof. Eduardo Corwin PhD', 'briana.maggio@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '5LmtnN3BnO', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(21, 'Costumer', 'Julie Koepp', 'sidney89@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yRJMMLN1Wk', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(22, 'Costumer', 'Genesis Glover', 'stiedemann.berenice@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'UKeT6mMjnn', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(23, 'Costumer', 'Ofelia Rice', 'eugenia.lemke@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LGNmP7vMkX', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(24, 'Costumer', 'Electa Crona', 'vsawayn@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'RMoMh6e5tc', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(25, 'Costumer', 'Melody Wilderman I', 'nryan@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'BGDAgxkEM1', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(26, 'Costumer', 'Otha Stroman', 'trenton.adams@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '0ULlZE1uWe', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(27, 'Costumer', 'Dr. Cindy Olson', 'lehner.malika@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mPwEhvqME3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(28, 'Costumer', 'Eladio Stroman', 'ikreiger@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '316Pr0vTJe', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(29, 'Costumer', 'Ms. Elinor Jacobson Sr.', 'monty.upton@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'jSOfbc4JVj', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(30, 'Costumer', 'Prof. Vivien Bartoletti DVM', 'mozell.stanton@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'uIE1PPGBMM', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(31, 'Costumer', 'Dan Greenholt', 'aschuppe@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7rTzywqK28', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(32, 'Costumer', 'Eladio Mertz', 'eleanore18@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '8UQVFgt1bu', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(33, 'Costumer', 'Sadye Kessler', 'ratke.jailyn@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'PrrB6u6MP3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(34, 'Costumer', 'Mr. Alvis Torphy I', 'marjory.rice@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Z2ffeJsLuW', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(35, 'Costumer', 'Chris Schulist Jr.', 'smcclure@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ykz5wJlcug', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(36, 'Costumer', 'Tracey Rosenbaum', 'webert@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LE97C7SprF', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(37, 'Costumer', 'Deon Pfeffer', 'zschumm@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '8JKoX1yLWB', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(38, 'Costumer', 'Emmie Stamm', 'mraz.bartholome@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'S0emONCtUe', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(39, 'Costumer', 'Mrs. Maymie Wehner PhD', 'sbartoletti@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'f0DqhuKysz', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(40, 'Costumer', 'Loren Schulist DVM', 'marcos16@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'CbFBQEmEzo', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(41, 'Costumer', 'Desmond Volkman', 'heller.vida@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'WGetCP8GPy', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(42, 'Costumer', 'Brandon Howell', 'kara28@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ds3Q1KitpS', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(43, 'Costumer', 'Chet Ledner', 'sid.mann@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'uHM6roG78M', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(44, 'Costumer', 'Ms. Jalyn Williamson', 'reynold.heidenreich@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '6B7s2jmoDn', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(45, 'Costumer', 'Dr. Lonnie Flatley III', 'christiana.bradtke@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zrzyDk3mwD', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(46, 'Costumer', 'Prof. Brendan Klein', 'emma72@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'JRxpXY8WTj', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(47, 'Costumer', 'Santiago Graham', 'fhane@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4AgT8MXMRz', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(48, 'Costumer', 'Miss Marilou Orn', 'noel59@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'wiahG4LEcS', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(49, 'Costumer', 'Kobe Price', 'bogan.clifton@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '4U3fIbOvJZ', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(50, 'Costumer', 'Everett Jacobi', 'cjaskolski@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'dPukQRAcPj', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(51, 'Costumer', 'Mohamed Roberts', 'bella.runte@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Fq4bcJLpfP', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(52, 'Costumer', 'Sally Franecki', 'ebashirian@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Eml6RsIkQ1', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(53, 'Costumer', 'Kailyn Hoeger DDS', 'mosciski.caterina@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'edXpBVnrjP', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(54, 'Costumer', 'Elva Boyle', 'tyundt@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'nBAibH1zCE', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(55, 'Costumer', 'Jennings Stokes', 'fmills@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'oQePuDB7oM', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(56, 'Costumer', 'Cleora Rohan', 'cordelia.metz@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'KzOz3hGs4V', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(57, 'Costumer', 'Prof. Elsie Boehm', 'kassulke.precious@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1xH8Yhoq7B', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(58, 'Costumer', 'Mrs. Delfina Ziemann DVM', 'beier.clint@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'uYvIxxM8se', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(59, 'Costumer', 'Mr. Nickolas Powlowski', 'kole65@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'OFi3wtzPe3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(60, 'Costumer', 'Dante Gulgowski I', 'tatum79@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'QUfFMIDozT', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(61, 'Costumer', 'Prof. Carissa Von DVM', 'grant.grace@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Sa8Ll6wI1E', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(62, 'Costumer', 'Margaret Baumbach', 'nikolaus.tad@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'agPaWBHdrV', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(63, 'Costumer', 'Russell Blanda', 'glover.sharon@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'jGt4j0P9KQ', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(64, 'Costumer', 'Prof. Jessie Shields', 'gswift@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'IZ5cXqW84M', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(65, 'Costumer', 'Toy Dicki', 'makenzie.deckow@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'reXEEZ4YQN', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(66, 'Costumer', 'Eliane Armstrong', 'winnifred.cronin@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'mQV8P3NnHw', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(67, 'Costumer', 'Mr. Mark Kautzer II', 'rodriguez.johnathon@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Yp5ixKl9wx', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(68, 'Costumer', 'Kendall Morar', 'jamal77@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'icb1bixr0B', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(69, 'Costumer', 'Carissa O\'Connell', 'vheathcote@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'CCGsGQMXyo', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(70, 'Costumer', 'Nia Blanda', 'evangeline85@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'pBwQ7QcsRA', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(71, 'Costumer', 'Dr. Owen Bernier I', 'feeney.terrence@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Oi5rGiIl12', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(72, 'Costumer', 'Joesph Hartmann', 'prince.hirthe@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Up5NghFVMP', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(73, 'Costumer', 'Ellis Beier', 'kkutch@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Mg4CYnO0jy', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(74, 'Costumer', 'Dax Rogahn', 'miller.pearline@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'R7covWdTT3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(75, 'Costumer', 'Jodie Tromp', 'marlen70@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'dqz3wCF6Cx', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(76, 'Costumer', 'Dr. Daija Lueilwitz IV', 'marielle16@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'h2RCbPwO8f', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(77, 'Costumer', 'Mr. Golden Bergstrom', 'madie.gibson@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'leA13dAbR8', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(78, 'Costumer', 'Prof. Julius Reinger', 'kerluke.clifford@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zkToy750V5', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(79, 'Costumer', 'Marcel Lind', 'mitchell31@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'MIsRQ9fa82', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(80, 'Costumer', 'Emery Strosin', 'leanna.leuschke@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'X56F59ffca', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(81, 'Costumer', 'Herta Stehr', 'hertha.hudson@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7OvubdAM2J', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(82, 'Costumer', 'Helen Macejkovic', 'elyssa20@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'SRYTqx5i77', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(83, 'Costumer', 'Carmen Veum', 'joana.wiegand@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'roT9lmISe6', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(84, 'Costumer', 'Ms. Christina Kirlin', 'bo.hodkiewicz@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'QJlG6NNaIn', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(85, 'Costumer', 'Adan Wehner', 'velva.ziemann@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ZNtdEjCTUr', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(86, 'Costumer', 'Flossie O\'Reilly Jr.', 'nolan.alexa@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'M0L0j0xig3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(87, 'Costumer', 'Miss Caroline Predovic', 'clinton54@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yCywMllbXa', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(88, 'Costumer', 'Brandy Williamson', 'wallace71@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'tuKef1A7Mc', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(89, 'Costumer', 'Mckayla Reichert', 'magali30@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'zyLJXvSd4y', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(90, 'Costumer', 'Camila Osinski', 'lgreen@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'iudJTeW35e', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(91, 'Costumer', 'Prof. Holden Cruickshank DDS', 'jbartell@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'rzykKCScmJ', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(92, 'Costumer', 'Johnson Kling DVM', 'alvera72@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3qqynyFbZJ', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(93, 'Costumer', 'Kirsten Schuster', 'bartell.aniyah@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'hF3t9WJIch', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(94, 'Costumer', 'Flossie Rath', 'sasha83@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '6eUsWEQWKO', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(95, 'Costumer', 'Ardella Doyle', 'myrtis34@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '86w2wAC2WH', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(96, 'Costumer', 'Leanne Abshire', 'taya.skiles@example.net', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'n9f2NTta4a', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(97, 'Costumer', 'Marquis Halvorson', 'schmeler.kailee@example.com', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'IatQLEEnb3', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(98, 'Costumer', 'Berta Treutel', 'simonis.mylene@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'YuRNzXXaNO', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(99, 'Costumer', 'Tamia Blick DVM', 'anienow@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'GXSifK2e9Q', '2022-07-13 05:14:06', '2022-07-13 05:14:06'),
(100, 'Costumer', 'Dahlia Cruickshank', 'ethan.little@example.org', '2022-07-13 05:14:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'frknDuvfZ0', '2022-07-13 05:14:06', '2022-07-13 05:14:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `order`
--
ALTER TABLE `order`
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
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
