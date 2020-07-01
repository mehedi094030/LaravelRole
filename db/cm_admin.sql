-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 07:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cm_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_02_22_055308_create_user_groups', 1),
(2, '2018_02_22_060129_create_user_permission', 1),
(3, '2018_02_22_061459_create_group_permission_logs', 1),
(4, '2018_02_27_065843_create_user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sys_group_permissions`
--

CREATE TABLE `sys_group_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `sys_group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_verbs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `as` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sys_group_permissions`
--

INSERT INTO `sys_group_permissions` (`id`, `sys_group_id`, `uri`, `http_verbs`, `as`, `created_by`, `created_at`, `updated_at`) VALUES
(346, '2', 'api/user', 'GET,HEAD', NULL, NULL, NULL, NULL),
(347, '2', 'admin/permissions', 'GET,HEAD', 'permissions', NULL, NULL, NULL),
(348, '2', 'admin/permissions/create-group', 'GET,HEAD', 'create_group', NULL, NULL, NULL),
(349, '2', 'admin/permissions/store', 'POST', NULL, NULL, NULL, NULL),
(350, '2', 'admin/permissions/build/{id}', 'GET,HEAD', 'build_permission', NULL, NULL, NULL),
(351, '2', 'admin/permissions/set/{id}', 'POST', NULL, NULL, NULL, NULL),
(352, '2', 'admin/permissions/menu', 'POST', 'menu.store', NULL, NULL, NULL),
(353, '2', 'admin/permissions/menu/{menu}', 'GET,HEAD', 'menu.show', NULL, NULL, NULL),
(354, '2', 'admin/permissions/menu/{menu}/edit', 'GET,HEAD', 'menu.edit', NULL, NULL, NULL),
(355, '2', 'admin/permissions/menu/{menu}', 'PUT,PATCH', 'menu.update', NULL, NULL, NULL),
(356, '2', 'admin/permissions/menu/{menu}', 'DELETE', 'menu.destroy', NULL, NULL, NULL),
(357, '2', 'admin', 'GET,HEAD', 'admin_dashboard', NULL, NULL, NULL),
(358, '2', '/', 'GET,HEAD', 'login', NULL, NULL, NULL),
(359, '2', 'register', 'GET,HEAD', 'register', NULL, NULL, NULL),
(360, '2', 'register', 'POST', NULL, NULL, NULL, NULL),
(361, '2', 'login', 'POST', NULL, NULL, NULL, NULL),
(362, '2', 'logout', 'GET,HEAD', 'logout', NULL, NULL, NULL),
(474, '4', 'admin/permissions/build/{id}', 'GET,HEAD', 'build_permission', NULL, NULL, NULL),
(475, '5', 'admin/permissions', 'GET,HEAD', 'permissions', NULL, NULL, NULL),
(476, '5', 'admin/permissions/create-group', 'GET,HEAD', 'create_group', NULL, NULL, NULL),
(477, '5', 'admin', 'GET,HEAD', 'admin_dashboard', NULL, NULL, NULL),
(478, '5', 'register', 'GET,HEAD', 'register', NULL, NULL, NULL),
(479, '5', 'logout', 'GET,HEAD', 'logout', NULL, NULL, NULL),
(519, '1', 'api/user', 'GET,HEAD', NULL, NULL, NULL, NULL),
(520, '1', 'admin/permissions', 'GET,HEAD', 'permissions', NULL, NULL, NULL),
(521, '1', 'admin/permissions/create-group', 'GET,HEAD', 'create_group', NULL, NULL, NULL),
(522, '1', 'admin/permissions/store', 'POST', NULL, NULL, NULL, NULL),
(523, '1', 'admin/permissions/build/{id}', 'GET,HEAD', 'build_permission', NULL, NULL, NULL),
(524, '1', 'admin/permissions/set/{id}', 'POST', NULL, NULL, NULL, NULL),
(525, '1', 'admin/permissions/menu', 'GET,HEAD', 'menu.index', NULL, NULL, NULL),
(526, '1', 'admin/permissions/menu/create', 'GET,HEAD', 'menu.create', NULL, NULL, NULL),
(527, '1', 'admin/permissions/menu', 'POST', 'menu.store', NULL, NULL, NULL),
(528, '1', 'admin/permissions/menu/{menu}', 'GET,HEAD', 'menu.show', NULL, NULL, NULL),
(529, '1', 'admin/permissions/menu/{menu}/edit', 'GET,HEAD', 'menu.edit', NULL, NULL, NULL),
(530, '1', 'admin/permissions/menu/{menu}', 'PUT,PATCH', 'menu.update', NULL, NULL, NULL),
(531, '1', 'admin/permissions/menu/{menu}', 'DELETE', 'menu.destroy', NULL, NULL, NULL),
(532, '1', 'admin', 'GET,HEAD', 'admin_dashboard', NULL, NULL, NULL),
(533, '1', 'admin/register', 'GET,HEAD', 'register', NULL, NULL, NULL),
(534, '1', 'admin/register', 'POST', NULL, NULL, NULL, NULL),
(535, '1', '/', 'GET,HEAD', 'login', NULL, NULL, NULL),
(536, '1', 'login', 'GET,HEAD', 'login', NULL, NULL, NULL),
(537, '1', 'login', 'POST', NULL, NULL, NULL, NULL),
(538, '1', 'logout', 'GET,HEAD', 'logout', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_group_permission_logs`
--

CREATE TABLE `sys_group_permission_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_roles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL COMMENT 'same as route',
  `title` varchar(150) NOT NULL,
  `alt_title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT 'md md-apps',
  `order` int(5) DEFAULT 999,
  `status` tinyint(2) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `parent_id`, `url`, `uri`, `title`, `alt_title`, `description`, `icon`, `order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'admin', 'Dashboard', 'Home', NULL, 'md md-assessment', NULL, 1, NULL, NULL, '2018-07-29 09:05:44', '2020-06-28 07:54:05'),
(2, NULL, NULL, NULL, 'System Management', 'For Super Admin', NULL, 'md md-tune', 999, 1, NULL, NULL, '2018-07-29 09:14:32', '2018-07-30 09:09:37'),
(3, 2, 'admin/permissions/menu', 'admin/permissions/menu', 'Menu Management', 'Left Menu Management', NULL, 'md md-view-list', 999, 1, NULL, NULL, '2018-07-29 09:14:59', '2018-07-29 09:14:59'),
(5, NULL, NULL, NULL, 'Permission Management', NULL, NULL, 'md md-lock', 999, 1, NULL, NULL, '2018-07-30 08:34:34', '2018-07-30 09:34:07'),
(6, 5, 'admin/permissions', 'admin/permissions', 'Group Permission', 'User Group Permission Management', NULL, 'md md-security', 999, 1, NULL, NULL, '2018-07-30 08:37:14', '2018-07-30 09:10:02'),
(7, NULL, NULL, NULL, 'User Group', 'User Group Management', NULL, 'md md-account-circle', 999, 1, NULL, NULL, '2018-07-30 08:38:04', '2018-07-30 08:38:04'),
(8, 7, 'admin/permissions/create-group', 'admin/permissions/create-group', 'Create New Group', 'New User Group', NULL, 'md md-my-library-add', 999, 1, NULL, NULL, '2018-07-30 08:38:49', '2018-07-30 08:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `sys_user_groups`
--

CREATE TABLE `sys_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sys_user_groups`
--

INSERT INTO `sys_user_groups` (`id`, `parent_id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', NULL, NULL, '2018-02-26 02:25:21', '2018-02-26 02:25:21'),
(2, NULL, 'Admin', NULL, NULL, '2018-02-26 02:39:45', '2018-02-26 02:39:45'),
(3, NULL, 'Editor', NULL, NULL, '2018-02-27 00:30:48', '2018-02-27 00:30:48'),
(4, NULL, 'test', NULL, NULL, '2018-06-27 00:19:45', '2018-06-27 00:19:45'),
(5, NULL, 'CM Admin', NULL, NULL, '2020-06-27 08:14:54', '2020-06-27 08:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `sys_group_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `sys_group_id`, `full_name`, `username`, `password`, `image`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'admin', '$2y$12$rvy2iSFeA4VdhMBailF.GuBDhfYbpY7VunRWdQ7zGzPSy3wiO8FCO', 'img/demo.png', NULL, 1, '2018-02-27 03:15:06', '2018-02-27 03:15:06'),
(2, 5, 'Mehedi Hasan', 'mehedi', '$2y$12$rvy2iSFeA4VdhMBailF.GuBDhfYbpY7VunRWdQ7zGzPSy3wiO8FCO', NULL, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_group_permissions`
--
ALTER TABLE `sys_group_permissions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_group_permission_logs`
--
ALTER TABLE `sys_group_permission_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sys_user_groups`
--
ALTER TABLE `sys_user_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_group_permissions`
--
ALTER TABLE `sys_group_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `sys_group_permission_logs`
--
ALTER TABLE `sys_group_permission_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_user_groups`
--
ALTER TABLE `sys_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
