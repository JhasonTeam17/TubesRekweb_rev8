-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 05:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4login`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site administrator'),
(2, 'user', 'Reguler User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'a32238856@gmail.com', 2, '2020-12-20 07:13:52', 1),
(2, '::1', 'JhasonTeam', NULL, '2020-12-20 07:20:48', 0),
(3, '::1', 'a32238856@gmail.com', 2, '2020-12-20 07:21:17', 1),
(4, '::1', 'tamjid_anas@yahoo.com', 3, '2020-12-20 07:43:51', 1),
(5, '::1', 'a32238856@gmail.com', 2, '2020-12-20 07:44:20', 1),
(6, '::1', 'a32238856@gmail.com', 2, '2020-12-20 10:11:47', 1),
(7, '::1', 'a32238856@gmail.com', 2, '2020-12-20 10:12:49', 1),
(8, '::1', 'anas12@gmail.com', 4, '2020-12-20 10:15:01', 1),
(9, '::1', 'a32238856@gmail.com', 2, '2020-12-20 20:45:09', 1),
(10, '::1', 'fikran', NULL, '2020-12-20 20:49:52', 0),
(11, '::1', 'a32238856@gmail.com', 2, '2020-12-20 20:58:47', 1),
(12, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-20 21:59:02', 1),
(13, '::1', 'a32238856@gmail.com', 2, '2020-12-20 22:01:29', 1),
(14, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-20 22:09:56', 1),
(15, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-20 22:45:46', 1),
(16, '::1', 'a32238856@gmail.com', 2, '2020-12-20 22:46:13', 1),
(17, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-20 22:59:41', 1),
(18, '::1', 'a32238856@gmail.com', 2, '2020-12-20 23:16:06', 1),
(19, '::1', 'a32238856@gmail.com', 2, '2020-12-21 06:56:56', 1),
(20, '::1', 'a32238856@gmail.com', 2, '2020-12-21 07:00:37', 1),
(21, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 07:39:01', 1),
(22, '::1', 'a32238856@gmail.com', 2, '2020-12-21 07:53:38', 1),
(23, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:01:35', 1),
(24, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:31:14', 1),
(25, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:35:28', 1),
(26, '::1', 'a32238856@gmail.com', 2, '2020-12-21 08:46:46', 1),
(27, '::1', 'a32238856@gmail.com', 2, '2020-12-21 08:48:09', 1),
(28, '::1', 'a32238856@gmail.com', 2, '2020-12-21 08:51:18', 1),
(29, '::1', 'tamzid', NULL, '2020-12-21 08:51:58', 0),
(30, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:52:12', 1),
(31, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:53:03', 1),
(32, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 08:58:11', 1),
(33, '::1', 'a32238856@gmail.com', 2, '2020-12-21 09:06:43', 1),
(34, '::1', 'yudistira.183040055@mail.unpas.ac.id', 5, '2020-12-21 09:09:37', 1),
(35, '::1', 'a32238856@gmail.com', 2, '2020-12-22 18:58:29', 1),
(36, '::1', 'ghaidadwi25@gmail.com', 6, '2020-12-22 19:00:19', 1),
(37, '::1', 'a32238856@gmail.com', 2, '2020-12-22 20:44:55', 1),
(38, '::1', 'ghaidadwi25@gmail.com', 6, '2020-12-22 21:07:16', 1),
(39, '::1', 'a32238856@gmail.com', 2, '2020-12-22 22:30:07', 1),
(40, '::1', 'ghaiddwi', NULL, '2020-12-22 22:37:25', 0),
(41, '::1', 'ghaidadwi25@gmail.com', 6, '2020-12-22 22:37:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profil', 'Manage user\'s profil');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(13, 'Harry Potter and the deathly hallows', 'naruto', 'J.K. Rownling', 'Gramedia Pustaka Utama', '1608558976_7cc43b4ffa408e094d32.jpg', '2020-10-24 04:22:38', '2020-12-21 07:56:16'),
(16, 'Kamus Bergambar Benda di Sekitar Kita', 'kamus-bergambar-benda-di-sekitar-kita', ' Tim Media Vista', 'Cikal Aksara', '1608559146_83f867c3ded520b9404f.jpg', '2020-12-21 07:59:06', '2020-12-21 07:59:06'),
(17, 'Masak Apa', 'masak-apa', 'Hayatinufus A. L. Tobing', 'Gramedia Pustaka Utama', '1608559196_d03efa13c57f597a53cf.jpg', '2020-12-21 07:59:56', '2020-12-21 07:59:56'),
(18, 'Cinta Doang? Gak Cukup Dong!', 'cinta-doang-gak-cukup-dong', 'Aisha Chuang & Muhammad Shodiq', 'QultumMedia', '1608559233_348aac3de96cc82d673c.jpg', '2020-12-21 08:00:33', '2020-12-21 08:00:33'),
(19, 'PHP dan MysSQL Secara Otodidak', 'php-dan-myssql-secara-otodidak', 'Anhar', 'MediaKita', '1608559269_ca7e7eab5a5e34f13e48.jpg', '2020-12-21 08:01:09', '2020-12-21 08:01:09'),
(20, 'Harry Potter dan pangeran berdarah-campuran', 'harry-potter-dan-pangeran-berdarah-campuran', 'J.K. Rownling', 'Gramedia Pustaka Utama', '1608691556_96efa90e31458585941d.jpg', '2020-12-22 20:45:56', '2020-12-22 20:45:56'),
(21, 'Kamus Biologi untuk SMA', 'kamus-biologi-untuk-sma', 'Astutiningsih,SP', 'Kawan Pustaka', '1608691592_c1cae8ffda56e259ab38.jpg', '2020-12-22 20:46:32', '2020-12-22 20:46:32'),
(22, 'Doa-Doa Cinta', 'doa-doa-cinta', 'Abu Dzacky', 'DAR! Mizan', '1608691622_af0ff9f0687b24dd9535.jpg', '2020-12-22 20:47:02', '2020-12-22 20:47:02'),
(23, 'Kumpulan Resep Masakan Tradisional dari Sabang sampai Merauke', 'kumpulan-resep-masakan-tradisional-dari-sabang-sampai-merauke', 'Badiatul Muclisin Asti & Laela Nurisysyafa\'ah', 'Media Pressindo', '1608691656_c2f2fc6a337fe3acc44a.jpg', '2020-12-22 20:47:36', '2020-12-22 20:47:36'),
(24, 'Tukar Takdir', 'tukar-takdir', 'Valiant Budi', 'Gramedia Pustaka Utama', '1608691685_2befc3a7f7534e0053be.jpg', '2020-12-22 20:48:05', '2020-12-22 20:48:05'),
(25, 'Panduan Praktis Membuat WEB dengan PHP utk Pemula', 'panduan-praktis-membuat-web-dengan-php-utk-pemula', 'FN Jovan', 'MediaKita', '1608691710_6531b5f2f417136c18ea.jpg', '2020-12-22 20:48:30', '2020-12-22 20:48:30'),
(26, 'Setelah Hujan Reda', 'setelah-hujan-reda', 'Boy Candra', 'MediaKita', '1608691734_797768c15a3b6799386b.jpg', '2020-12-22 20:48:54', '2020-12-22 20:48:54'),
(27, 'Dilan', 'dilan', 'Pidi Baiq', 'PastelBooks', '1608691768_74ccd9fd01c34898f357.jpg', '2020-12-22 20:49:28', '2020-12-22 20:49:28'),
(28, 'Dilan 2', 'dilan-2', 'Pidi Baiq', 'PastelBooks', '1608691798_7323e431bc8033a4fe74.jpg', '2020-12-22 20:49:58', '2020-12-22 20:49:58'),
(29, 'Milea', 'milea', 'Pidi Baiq', 'PastelBooks', '1608692426_dfe18c102f4d5ffedf1b.jpg', '2020-12-22 21:00:26', '2020-12-22 21:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1608454474, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'jhasonteam17@gmail.com', 'anas', NULL, 'default.svg', '$2y$10$9WvXRFDorQ0WT6Blpbnm.eEw6FP0InUv8S4qWXHHH17085zQ6JbDy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-20 06:48:12', '2020-12-20 06:48:12', NULL),
(2, 'a32238856@gmail.com', 'JhasonTeam', 'JhasonTeamMantap', 'default.svg', '$2y$10$0aLk21BtTIhh5xxixboGQewLb2Mc1f/YLB7IU7c41OsE7PAQBm9aC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-20 07:13:21', '2020-12-20 07:13:21', NULL),
(3, 'tamjid_anas@yahoo.com', 'fikran', NULL, 'default.svg', '$2y$10$5jzu4Jj8bLFwTXUJYzYmCe5JoF8C3hP4IXeWMBf77ZCgrupH9whZG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-20 07:27:32', '2020-12-20 07:27:32', NULL),
(4, 'anas12@gmail.com', 'bau12', NULL, 'default.svg', '$2y$10$xiudiWzCPtFfwE9aRA7hB.seMNwXY1X2pvUWZSXM/spYW9Sz3ZSPG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-20 10:14:48', '2020-12-20 10:14:48', NULL),
(5, 'yudistira.183040055@mail.unpas.ac.id', 'Tamzid', NULL, 'default.svg', '$2y$10$uGRX39KR6jPaZNRJaKU8zejFeS8/7Gnjg0AupOPOPYSH4ZiuLSr3q', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-20 21:58:50', '2020-12-20 21:58:50', NULL),
(6, 'ghaidadwi25@gmail.com', 'ghaidadwi', NULL, 'default.svg', '$2y$10$8iLJwxQ0t9yxWDSsGAdH9O9hXcVx84iSxRpyvFErDWGBodjXppp4K', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-22 19:00:02', '2020-12-22 19:00:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
