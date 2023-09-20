-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 11:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '1->attended',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `user_type`, `duration`, `course_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, '3', '2', '3', '1', '2023-08-20 00:00:00', '1', '2023-08-20 17:45:29', '2023-08-20 17:45:29'),
(2, '2', '1', '3', '1', '2023-08-20 00:00:00', '1', '2023-08-20 17:45:55', '2023-08-20 17:46:18'),
(3, '2', '1', '3', '2', '2023-08-21 00:00:00', '1', '2023-08-20 18:23:55', '2023-08-20 18:23:55'),
(4, '3', '2', '2', '2', '2023-08-21 00:00:00', '1', '2023-08-20 18:24:29', '2023-08-20 18:24:29'),
(5, '3', '2', '2', '1', '2023-08-21 00:00:00', '1', '2023-08-20 18:24:38', '2023-08-24 15:20:55'),
(6, '3', '2', '3', '1', '2023-08-23 00:00:00', '1', '2023-08-23 13:01:54', '2023-08-23 13:01:54'),
(7, '2', '1', '2', '2', '2023-08-24 00:00:00', '1', '2023-08-24 16:33:46', '2023-08-25 19:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` text NOT NULL DEFAULT '1',
  `image` varchar(255) DEFAULT 'dummy.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subtitle`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'First blog post', 'An introduction to our blog', 'Experience the beauty and spirituality of Umrah with our affordable packages.', '1', '1692302537.png', NULL, '2023-08-17 14:02:17'),
(2, '10 tips for a successful business', 'Learn the best practices to succeed in your industry', 'Experience the beauty and spirituality of Umrah with our affordable packages.', '1', '1692302507.png', NULL, '2023-08-25 19:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `image`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HSC', 'HSC', '01.jpg', 1, 1, NULL, '2023-08-25 19:50:42'),
(2, 'SSC', 'SSC', '02.jpg', 2, 1, NULL, '2023-08-25 19:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `sender_role` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `sender_role`, `course_id`, `text`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', 'Hello there!!!', '2023-08-20 17:33:06', '2023-08-20 17:33:06'),
(2, '3', '2', '1', 'hi Arman how are u??', '2023-08-20 17:37:47', '2023-08-20 17:37:47'),
(3, '5', '1', '1', 'Hi sir', '2023-08-20 17:40:52', '2023-08-20 17:40:52'),
(4, '2', '1', '1', 'ICT class', '2023-08-20 17:42:16', '2023-08-20 17:42:16'),
(5, '2', '1', '2', 'hellooooooooo', '2023-08-20 18:23:29', '2023-08-20 18:23:29'),
(6, '3', '2', '2', 'hmmmmmmmmmmmm', '2023-08-23 12:58:30', '2023-08-23 12:58:30'),
(7, '2', '1', '2', 'hi arman sir', '2023-08-23 13:39:06', '2023-08-23 13:39:06'),
(8, '1', '0', '1', 'hello students', '2023-08-24 16:34:40', '2023-08-24 16:34:40'),
(9, '1', '0', '2', 'hello students', '2023-08-24 16:35:11', '2023-08-24 16:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `blog_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_name`, `text`, `blog_id`, `created_at`, `updated_at`) VALUES
(1, '3', 'teacherTest1', 'ffffffffffffffffffffffffffffffffffffffffffffffffff', '1', '2023-08-20 18:34:18', '2023-08-20 18:34:18'),
(2, '5', 'studentTest2', 'fgfgfgfgfgfgfgfgfgfg', '1', '2023-08-20 18:35:56', '2023-08-20 18:35:56'),
(3, '2', 'arman', 'mmmccc', '2', '2023-08-23 13:32:04', '2023-08-23 13:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `website_description` text NOT NULL,
  `website_logo` varchar(255) NOT NULL,
  `website_favicon` varchar(255) NOT NULL,
  `website_email` varchar(255) NOT NULL,
  `website_phone` int(11) NOT NULL,
  `website_address` varchar(255) NOT NULL,
  `about_content` longtext NOT NULL,
  `about_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `website_name`, `website_description`, `website_logo`, `website_favicon`, `website_email`, `website_phone`, `website_address`, `about_content`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'Lekha Pora', 'A Learning Alternate', 'logo.png', 'logo.png', 'info@lekhapora.com', 1643675060, 'House: 2 Dhaka-121', 'Lekhapora is a Learning Management System (LMS) designed to provide an efficient and engaging online learning experience. It is a platform that allows teachers and students to connect, collaborate, and learn from anywhere, anytime. With Lekhapora, students can access a wide range of educational resources, participate in discussions, and complete assignments. Teachers can create and manage courses, deliver lectures, and evaluate student performance. Lekhapora is a comprehensive tool that simplifies the process of teaching and learning, making education accessible to all.', '1680173512.png', '2023-08-17 04:08:58', '2023-08-17 04:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_link` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `price`, `description`, `class_id`, `subject_id`, `creator_id`, `meeting_link`, `duration`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ICT For HSC', '50', '<p>Hsc exam preparation text&nbsp;</p>', 1, 1, 3, 'wdksnceljhcbef', '3', '1692302669.png', 1, '2023-08-17 14:04:29', '2023-08-17 14:05:01'),
(2, 'Math', '99', '<p>Biology course</p>', 2, 6, 3, 'wdksnceljhcbef', '2', '1692555327.png', 1, '2023-08-20 18:15:27', '2023-08-25 18:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `c_a_r_t_s`
--

CREATE TABLE `c_a_r_t_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timeline` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id`, `timeline`, `status`, `created_at`, `updated_at`) VALUES
(1, '9 am - 12 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(2, '12 pm - 3 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(3, '3 pm - 6 pm', '1', '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(4, '8 am - 10 am', '1', '2023-08-24 15:27:12', '2023-08-25 18:46:42');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_30_065417_create__service_table', 1),
(6, '2023_04_06_062845_create_blogs_table', 1),
(7, '2023_04_09_183406_create_permission_tables', 1),
(8, '2023_04_09_184343_create_subjects_table', 1),
(9, '2023_04_12_165304_create_categories_table', 1),
(10, '2023_04_20_092752_create_student_information_table', 1),
(11, '2023_04_25_032855_create_contents_table', 1),
(12, '2023_05_04_040624_creaet_teachers_table', 1),
(13, '2023_05_04_040706_create_teacher_information_table', 1),
(14, '2023_05_04_060529_create_course_table', 1),
(15, '2023_05_13_103259_create_c_a_r_t_s_table', 1),
(16, '2023_05_15_164852_create_shops_table', 1),
(17, '2023_05_16_153151_create_orders_table', 1),
(18, '2023_05_18_152259_create_products_table', 1),
(19, '2023_05_26_171244_create_transactions_table', 1),
(20, '2023_05_27_160143_create_chats_table', 1),
(21, '2023_06_03_174341_create_durations_table', 1),
(22, '2023_08_07_053600_create_comments_table', 1),
(23, '2023_08_12_055109_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'type->1 = course, type->2 = ecommerce',
  `status` varchar(255) NOT NULL DEFAULT '2',
  `phone` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_id`, `type`, `status`, `phone`, `price`, `payment_type`, `transaction_id`, `created_at`, `updated_at`) VALUES
(12, '3', '2', '2', '1', '01817063522', '50.00', 'Rocket', 'Affux22', '2023-08-20 11:21:16', '2023-08-25 19:17:23'),
(14, '2', '1', '1', '1', '01817063533', '50', 'Bkash', 'Affux22vvvv', '2023-08-20 17:29:21', '2023-08-20 17:29:57'),
(15, '5', '1', '1', '1', '01817063544', '50', 'Nagad', 'Affux22zzzzzz', '2023-08-20 17:39:37', '2023-08-20 17:39:58'),
(16, '2', '2', '1', '1', '01817063588', '99', 'Rocket', 'Affux24', '2023-08-20 18:19:44', '2023-08-20 18:22:48');

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
('1001121@daffodil.ac', '$2y$10$RHhsvaB.hWDjMknxw5z45urfWgbICqD.W0g4MBzNy9pKyK.lEabqe', '2023-08-23 13:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Matador Gel Pen', '<p>Black Gel Pen</p>', 50.00, '1692551434.webp', '1', '2023-08-20 11:10:34', '2023-08-25 18:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `current_department` varchar(255) DEFAULT NULL,
  `current_class` varchar(255) NOT NULL,
  `current_school` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `user_id`, `image`, `file`, `birthday`, `address`, `current_department`, `current_class`, `current_school`, `created_at`, `updated_at`) VALUES
(1, '2', '1692553305.jpg', '1692301659_file.jpg', '1999-07-21', 'Dhaka,Bangladesh', 'science', 'Hsc', 'jlab', '2023-08-17 13:47:39', '2023-08-20 17:41:45'),
(2, '5', '1692550507.jpg', '1692550507_file.jpg', '2015-12-09', 'Dhaka,Bangladesh', 'commerce', 'SSC', 'jlab', '2023-08-20 10:55:07', '2023-08-20 10:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) NOT NULL,
  `order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `description`, `image`, `category_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ICT', 'ICT Subject', '1682391808.jpg', '3', 1, 1, '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(2, 'Chemistry 1st Part', 'Chemistry', '1682391794.jpg', '2', 2, 1, '2023-08-17 04:08:58', '2023-08-20 18:32:25'),
(6, 'Biology', 'Biology', '1682391745.jpg', '3', 6, 1, '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(7, 'Physics', 'Physics', '1682391829.png', '3', 7, 1, '2023-08-17 04:08:58', '2023-08-25 19:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_information`
--

CREATE TABLE `teacher_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_information`
--

INSERT INTO `teacher_information` (`id`, `user_id`, `image`, `file`, `birthday`, `address`, `profession`, `subject`, `created_at`, `updated_at`) VALUES
(1, '3', '1692301874.jpg', '1692301874_file.jpg', '1988-06-14', 'Dhaka,Bangladesh', '2', '1', '2023-08-17 13:51:14', '2023-08-17 13:51:14'),
(2, '6', '1692550655.jpg', '1692550656_file.jpg', '2015-12-28', 'Dhaka,Bangladesh', '2', '1', '2023-08-20 10:57:36', '2023-08-20 10:57:36'),
(3, '7', '1692551018.png', '1692551018_file.PNG', '2015-12-25', 'Dhaka,Bangladesh', '2', '2', '2023-08-20 11:03:38', '2023-08-20 11:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `ratio` decimal(8,2) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `invoice`, `teacher_id`, `student_id`, `amount`, `ratio`, `teacher`, `owner`, `created_at`, `updated_at`) VALUES
(2, 12, 'LP-0000000012', 0, 3, 50.00, 100.00, '0', '50.00', '2023-08-20 11:21:17', '2023-08-20 11:21:17'),
(4, 14, 'LP-0000000014', 3, 2, 50.00, 25.00, '12.5', '37.5', '2023-08-20 17:29:22', '2023-08-20 17:29:22'),
(5, 15, 'LP-0000000015', 3, 5, 50.00, 25.00, '12.5', '37.5', '2023-08-20 17:39:38', '2023-08-20 17:39:38'),
(6, 16, 'LP-0000000016', 3, 2, 99.00, 25.00, '24.75', '74.25', '2023-08-20 18:19:45', '2023-08-20 18:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `allow` varchar(255) DEFAULT '0',
  `complete` varchar(255) DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role`, `allow`, `complete`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@admin.com', '0123456789', NULL, '$2y$10$MFwU5PYdqH7rX6uUUPktnuWUIHraDEL4meGm.5oM236MdVOnEgI5y', '0', '1', '1', NULL, '2023-08-17 04:08:58', '2023-08-17 04:08:58'),
(2, 'arman', '1001121@daffodil.ac', '01869645172', NULL, '$2y$10$zm0ttMYA/IhbJR4DplPWFelXTWPOqzEhyS3hQWApzFaE/HTiYEW.q', '1', '1', '1', NULL, '2023-08-17 13:46:03', '2023-08-17 13:52:48'),
(3, 'teacherTest1', 'armanhossen22@yahoo.com', '01817063588', NULL, '$2y$10$hU02F6fpJOzriRJUwfAcPesr3VV8hbOPVqCmeFBlJYWKrsbuWCeye', '2', '1', '1', NULL, '2023-08-17 13:49:17', '2023-08-17 13:53:12'),
(5, 'studentTest2', 'hossenarman160@gmail.com', '01817063589', NULL, '$2y$10$4owsaPkiOPq0/hJdIIdvF.AIoTVd0msn/HtLyaktFzkTE99Eo8lxm', '1', '1', '1', NULL, '2023-08-20 10:54:08', '2023-08-20 17:39:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_a_r_t_s`
--
ALTER TABLE `c_a_r_t_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_information`
--
ALTER TABLE `teacher_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `c_a_r_t_s`
--
ALTER TABLE `c_a_r_t_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_information`
--
ALTER TABLE `teacher_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
