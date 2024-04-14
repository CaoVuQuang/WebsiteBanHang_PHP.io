-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2024 lúc 07:45 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Quản Lý Users', 'fa-users', 'auth/users', NULL, NULL, '2024-04-06 11:26:58'),
(4, 2, 4, 'Quản Lý Sản Phẩm', 'fa-user', 'products', NULL, NULL, '2024-04-06 11:27:13'),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 2, 0, 'Quản Lý Customer', 'fa-bars', 'customer', NULL, '2024-04-06 11:34:36', '2024-04-06 11:39:08'),
(9, 2, 0, 'QL Loại Sản Phẩm', 'fa-bars', 'type_products', NULL, '2024-04-06 11:44:13', '2024-04-06 11:44:13'),
(12, 2, 0, 'Quản Lý Banner', 'fa-bars', 'slide', NULL, '2024-04-13 09:56:04', '2024-04-13 09:56:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 05:46:54', '2024-04-02 05:46:54'),
(2, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 05:47:09', '2024-04-02 05:47:09'),
(3, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 05:47:30', '2024-04-02 05:47:30'),
(4, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 05:47:44', '2024-04-02 05:47:44'),
(5, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 05:47:52', '2024-04-02 05:47:52'),
(6, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 06:04:07', '2024-04-02 06:04:07'),
(7, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 06:07:03', '2024-04-02 06:07:03'),
(8, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:07:15', '2024-04-02 06:07:15'),
(9, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 06:14:18', '2024-04-02 06:14:18'),
(10, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:14:31', '2024-04-02 06:14:31'),
(11, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:15:49', '2024-04-02 06:15:49'),
(12, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 06:25:22', '2024-04-02 06:25:22'),
(13, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:25:41', '2024-04-02 06:25:41'),
(14, 1, 'admin/auth/menu/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:03', '2024-04-02 06:27:03'),
(15, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(16, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:28', '2024-04-02 06:27:28'),
(17, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:32', '2024-04-02 06:27:32'),
(18, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:34', '2024-04-02 06:27:34'),
(19, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:27:46', '2024-04-02 06:27:46'),
(20, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 06:28:59', '2024-04-02 06:28:59'),
(21, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 06:29:01', '2024-04-02 06:29:01'),
(22, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 06:29:02', '2024-04-02 06:29:02'),
(23, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 06:45:38', '2024-04-02 06:45:38'),
(24, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 06:45:47', '2024-04-02 06:45:47'),
(25, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 07:29:20', '2024-04-02 07:29:20'),
(26, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 07:33:41', '2024-04-02 07:33:41'),
(27, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:33:47', '2024-04-02 07:33:47'),
(28, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:35:20', '2024-04-02 07:35:20'),
(29, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:35:25', '2024-04-02 07:35:25'),
(30, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:37:33', '2024-04-02 07:37:33'),
(31, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:37:40', '2024-04-02 07:37:40'),
(32, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:37:50', '2024-04-02 07:37:50'),
(33, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:37:57', '2024-04-02 07:37:57'),
(34, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:40:26', '2024-04-02 07:40:26'),
(35, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:40:33', '2024-04-02 07:40:33'),
(36, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:40:47', '2024-04-02 07:40:47'),
(37, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:44:02', '2024-04-02 07:44:02'),
(38, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:44:05', '2024-04-02 07:44:05'),
(39, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:44:08', '2024-04-02 07:44:08'),
(40, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:44:11', '2024-04-02 07:44:11'),
(41, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:44:14', '2024-04-02 07:44:14'),
(42, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:44:17', '2024-04-02 07:44:17'),
(43, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:44:23', '2024-04-02 07:44:23'),
(44, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:19', '2024-04-02 07:46:19'),
(45, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:21', '2024-04-02 07:46:21'),
(46, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:46:23', '2024-04-02 07:46:23'),
(47, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:25', '2024-04-02 07:46:25'),
(48, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:34', '2024-04-02 07:46:34'),
(49, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:35', '2024-04-02 07:46:35'),
(50, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:46:35', '2024-04-02 07:46:35'),
(51, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:46:38', '2024-04-02 07:46:38'),
(52, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:51:58', '2024-04-02 07:51:58'),
(53, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:02', '2024-04-02 07:52:02'),
(54, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:07', '2024-04-02 07:52:07'),
(55, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:15', '2024-04-02 07:52:15'),
(56, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:18', '2024-04-02 07:52:18'),
(57, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:20', '2024-04-02 07:52:20'),
(58, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:22', '2024-04-02 07:52:22'),
(59, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:52:26', '2024-04-02 07:52:26'),
(60, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:52:58', '2024-04-02 07:52:58'),
(61, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:52:59', '2024-04-02 07:52:59'),
(62, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:53:02', '2024-04-02 07:53:02'),
(63, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:53:55', '2024-04-02 07:53:55'),
(64, 1, 'admin/auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:54:42', '2024-04-02 07:54:42'),
(65, 1, 'admin/auth/users', 'POST', '::1', '{\"username\":\"fesfsef\",\"name\":\"qqq\",\"password\":\"\\u00e8esf\",\"password_confirmation\":\"<?php  namespace App\\\\Admin\\\\Controllers;  use App\\\\Models\\\\User; use Encore\\\\Admin\\\\Controllers\\\\AdminController; use Encore\\\\Admin\\\\Form; use Encore\\\\Admin\\\\Grid; use Encore\\\\Admin\\\\Show;  class UserController extends AdminController {     protected $title =\'Users\';      protected function grid()     {         $grid = new Grid(new User());          $grid->column(\'id\', __(\'Id\'));         $grid->column(\'name\', __(\'Name\'));         $grid->column(\'email\', __(\'Email\'));         $grid->column(\'password\', __(\'Password\'));         $grid->column(\'created_at\', __(\'Created at\'));         $grid->column(\'updated_at\', __(\'Updated at\'));          return $grid;     }      protected function detail($id)     {         $show = new Show(User::findOrFail($id));          $show->field(\'id\', __(\'Id\'));         $show->field(\'name\', __(\'Name\'));         $show->field(\'email\', __(\'Email\'));         $show->field(\'password\', __(\'Password\'));         $show->field(\'created_at\', __(\'Created at\'));         $show->field(\'updated_at\', __(\'Updated at\'));          return $show;     }      protected function form()     {         $form = new Form(new User());          $form->textarea(\'name\', __(\'Name\'));         $form->textarea(\'email\', __(\'Email\'));         $form->textarea(\'password\', __(\'Password\'));          return $form;     } }\",\"roles\":[null],\"permissions\":[\"3\",null],\"_token\":\"wne6sHE4LXLPzRuqdFqK3oNdN3fXwplCqBEFY4Vq\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/users\"}', '2024-04-02 07:55:06', '2024-04-02 07:55:06'),
(66, 1, 'admin/auth/users/create', 'GET', '::1', '[]', '2024-04-02 07:55:07', '2024-04-02 07:55:07'),
(67, 1, 'admin/auth/users', 'POST', '::1', '{\"username\":\"fesfsef\",\"name\":\"qqq\",\"password\":\"123\",\"password_confirmation\":\"123\",\"roles\":[null],\"permissions\":[\"3\",null],\"_token\":\"wne6sHE4LXLPzRuqdFqK3oNdN3fXwplCqBEFY4Vq\"}', '2024-04-02 07:55:16', '2024-04-02 07:55:16'),
(68, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:55:17', '2024-04-02 07:55:17'),
(69, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:56:14', '2024-04-02 07:56:14'),
(70, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 07:56:21', '2024-04-02 07:56:21'),
(71, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:56:42', '2024-04-02 07:56:42'),
(72, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:58:19', '2024-04-02 07:58:19'),
(73, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 07:58:21', '2024-04-02 07:58:21'),
(74, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 08:02:01', '2024-04-02 08:02:01'),
(75, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:04:09', '2024-04-02 08:04:09'),
(76, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 08:07:33', '2024-04-02 08:07:33'),
(77, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:09:10', '2024-04-02 08:09:10'),
(78, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:09:45', '2024-04-02 08:09:45'),
(79, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:12:43', '2024-04-02 08:12:43'),
(80, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:12:50', '2024-04-02 08:12:50'),
(81, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:12:58', '2024-04-02 08:12:58'),
(82, 1, 'admin/products', 'GET', '::1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:13:10', '2024-04-02 08:13:10'),
(83, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2024-04-02 08:13:13', '2024-04-02 08:13:13'),
(84, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:13:31', '2024-04-02 08:13:31'),
(85, 1, 'admin', 'GET', '::1', '[]', '2024-04-02 08:14:01', '2024-04-02 08:14:01'),
(86, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:14:50', '2024-04-02 08:14:50'),
(87, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:15:40', '2024-04-02 08:15:40'),
(88, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-02 08:16:56', '2024-04-02 08:16:56'),
(89, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:17:03', '2024-04-02 08:17:03'),
(90, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:21:39', '2024-04-02 08:21:39'),
(91, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:21:51', '2024-04-02 08:21:51'),
(92, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:22:07', '2024-04-02 08:22:07'),
(93, 1, 'admin/auth/menu/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:22:21', '2024-04-02 08:22:21'),
(94, 1, 'admin/auth/menu/4', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"Product\",\"icon\":\"fa-user\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/menu\"}', '2024-04-02 08:23:14', '2024-04-02 08:23:14'),
(95, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 08:23:14', '2024-04-02 08:23:14'),
(96, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-02 08:23:26', '2024-04-02 08:23:26'),
(97, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:23:30', '2024-04-02 08:23:30'),
(98, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:24:36', '2024-04-02 08:24:36'),
(99, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:24:39', '2024-04-02 08:24:39'),
(100, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:24:59', '2024-04-02 08:24:59'),
(101, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:25:07', '2024-04-02 08:25:07'),
(102, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:35:51', '2024-04-02 08:35:51'),
(103, 1, 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:35:54', '2024-04-02 08:35:54'),
(104, 1, 'admin/products', 'POST', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"5\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-02 08:36:36', '2024-04-02 08:36:36'),
(105, 1, 'admin/products/create', 'GET', '::1', '[]', '2024-04-02 08:36:37', '2024-04-02 08:36:37'),
(106, 1, 'admin/products', 'POST', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"5\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\"}', '2024-04-02 08:38:00', '2024-04-02 08:38:00'),
(107, 1, 'admin/products/create', 'GET', '::1', '[]', '2024-04-02 08:38:01', '2024-04-02 08:38:01'),
(108, 1, 'admin/products/create', 'GET', '::1', '[]', '2024-04-02 08:41:50', '2024-04-02 08:41:50'),
(109, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:41:55', '2024-04-02 08:41:55'),
(110, 1, 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:42:00', '2024-04-02 08:42:00'),
(111, 1, 'admin/products', 'POST', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-02 08:42:42', '2024-04-02 08:42:42'),
(112, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 08:42:42', '2024-04-02 08:42:42'),
(113, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:43:17', '2024-04-02 08:43:17'),
(114, 1, 'admin/products/63/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:43:22', '2024-04-02 08:43:22'),
(115, 1, 'admin/products/63', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-02 08:43:48', '2024-04-02 08:43:48'),
(116, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:43:48', '2024-04-02 08:43:48'),
(117, 1, 'admin/products/63/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:44:19', '2024-04-02 08:44:19'),
(118, 1, 'admin/products/63', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-02 08:48:28', '2024-04-02 08:48:28'),
(119, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:48:29', '2024-04-02 08:48:29'),
(120, 1, 'admin/products/63/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:49:38', '2024-04-02 08:49:38'),
(121, 1, 'admin/products/63', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-02 08:49:45', '2024-04-02 08:49:45'),
(122, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:49:45', '2024-04-02 08:49:45'),
(123, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:51:38', '2024-04-02 08:51:38'),
(124, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:51:40', '2024-04-02 08:51:40'),
(125, 1, 'admin/products/63/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:51:43', '2024-04-02 08:51:43'),
(126, 1, 'admin/products/63', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-02 08:51:50', '2024-04-02 08:51:50'),
(127, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:51:51', '2024-04-02 08:51:51'),
(128, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:52:02', '2024-04-02 08:52:02'),
(129, 1, 'admin/products/63/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:52:06', '2024-04-02 08:52:06'),
(130, 1, 'admin/products/63', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi\",\"id_type\":\"3\",\"description\":\"m\\u00f4 t\\u1ea3\",\"unit_price\":\"123000\",\"promotion_price\":\"10000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-02 08:52:12', '2024-04-02 08:52:12'),
(131, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:52:13', '2024-04-02 08:52:13'),
(132, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:54:19', '2024-04-02 08:54:19'),
(133, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:54:22', '2024-04-02 08:54:22'),
(134, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-02 08:54:23', '2024-04-02 08:54:23'),
(135, 1, 'admin/products/62/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:54:39', '2024-04-02 08:54:39'),
(136, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 08:59:32', '2024-04-02 08:59:32'),
(137, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2024-04-02 08:59:44', '2024-04-02 08:59:44'),
(138, 1, 'admin/products/63', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:01:14', '2024-04-02 09:01:14'),
(139, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:01:21', '2024-04-02 09:01:21'),
(140, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2024-04-02 09:01:24', '2024-04-02 09:01:24'),
(141, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"63\",\"_model\":\"App_Models_Product\",\"_token\":\"wY68fJL1lhnxi3AY12IlMc1O8YJ547lg51Js3gWn\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-02 09:01:30', '2024-04-02 09:01:30'),
(142, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:01:30', '2024-04-02 09:01:30'),
(143, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-02 09:01:54', '2024-04-02 09:01:54'),
(144, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:10:01', '2024-04-02 09:10:01'),
(145, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:22:44', '2024-04-02 09:22:44'),
(146, 1, 'admin/auth/users/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:22:55', '2024-04-02 09:22:55'),
(147, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:26:21', '2024-04-02 09:26:21'),
(148, 1, 'admin/auth/users/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:26:35', '2024-04-02 09:26:35'),
(149, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:26:49', '2024-04-02 09:26:49'),
(150, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-02 09:26:55', '2024-04-02 09:26:55'),
(151, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-03 01:24:08', '2024-04-03 01:24:08'),
(152, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 01:24:12', '2024-04-03 01:24:12'),
(153, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 01:24:22', '2024-04-03 01:24:22'),
(154, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 01:24:25', '2024-04-03 01:24:25'),
(155, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-03 12:58:30', '2024-04-03 12:58:30'),
(156, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-03 13:14:30', '2024-04-03 13:14:30'),
(157, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 13:14:36', '2024-04-03 13:14:36'),
(158, 1, 'admin', 'GET', '::1', '[]', '2024-04-03 13:14:48', '2024-04-03 13:14:48'),
(159, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-03 13:14:55', '2024-04-03 13:14:55'),
(160, 1, 'admin/auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 13:15:00', '2024-04-03 13:15:00'),
(161, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-03 13:15:11', '2024-04-03 13:15:11'),
(162, 1, 'admin', 'GET', '::1', '[]', '2024-04-06 11:25:47', '2024-04-06 11:25:47'),
(163, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:25:54', '2024-04-06 11:25:54'),
(164, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:26:06', '2024-04-06 11:26:06'),
(165, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:26:36', '2024-04-06 11:26:36'),
(166, 1, 'admin/auth/menu/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:26:48', '2024-04-06 11:26:48'),
(167, 1, 'admin/auth/menu/3', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"Qu\\u1ea3n L\\u00fd Users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/menu\"}', '2024-04-06 11:26:58', '2024-04-06 11:26:58'),
(168, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:26:59', '2024-04-06 11:26:59'),
(169, 1, 'admin/auth/menu/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:27:02', '2024-04-06 11:27:02'),
(170, 1, 'admin/auth/menu/4', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"Qu\\u1ea3n L\\u00fd S\\u1ea3n Ph\\u1ea9m\",\"icon\":\"fa-user\",\"uri\":\"products\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/menu\"}', '2024-04-06 11:27:13', '2024-04-06 11:27:13'),
(171, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:27:14', '2024-04-06 11:27:14'),
(172, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:33:20', '2024-04-06 11:33:20'),
(173, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"customer\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:34:17', '2024-04-06 11:34:17'),
(174, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:34:17', '2024-04-06 11:34:17'),
(175, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Qu\\u1ea3n L\\u00fd Customer\",\"icon\":\"fa-bars\",\"uri\":\"customer\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:34:35', '2024-04-06 11:34:35'),
(176, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:34:36', '2024-04-06 11:34:36'),
(177, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:34:42', '2024-04-06 11:34:42'),
(178, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:34:54', '2024-04-06 11:34:54'),
(179, 1, 'admin/auth/users', 'GET', '::1', '[]', '2024-04-06 11:36:48', '2024-04-06 11:36:48'),
(180, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:36:49', '2024-04-06 11:36:49'),
(181, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:36:51', '2024-04-06 11:36:51'),
(182, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:36:57', '2024-04-06 11:36:57'),
(183, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-06 11:37:10', '2024-04-06 11:37:10'),
(184, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:37:14', '2024-04-06 11:37:14'),
(185, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:37:37', '2024-04-06 11:37:37'),
(186, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:37:48', '2024-04-06 11:37:48'),
(187, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:38:37', '2024-04-06 11:38:37'),
(188, 1, 'admin/customer', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:38:39', '2024-04-06 11:38:39'),
(189, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:38:55', '2024-04-06 11:38:55'),
(190, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:39:01', '2024-04-06 11:39:01'),
(191, 1, 'admin/auth/menu/8', 'PUT', '::1', '{\"parent_id\":\"2\",\"title\":\"Qu\\u1ea3n L\\u00fd Customer\",\"icon\":\"fa-bars\",\"uri\":\"customer\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/menu\"}', '2024-04-06 11:39:08', '2024-04-06 11:39:08'),
(192, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:39:09', '2024-04-06 11:39:09'),
(193, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:39:14', '2024-04-06 11:39:14'),
(194, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:39:25', '2024-04-06 11:39:25'),
(195, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:39:25', '2024-04-06 11:39:25'),
(196, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:39:28', '2024-04-06 11:39:28'),
(197, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:43:37', '2024-04-06 11:43:37'),
(198, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"2\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"type_products\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:43:51', '2024-04-06 11:43:51'),
(199, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:43:52', '2024-04-06 11:43:52'),
(200, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"2\",\"title\":\"QL Lo\\u1ea1i S\\u1ea3n Ph\\u1ea9m\",\"icon\":\"fa-bars\",\"uri\":\"type_products\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:44:13', '2024-04-06 11:44:13'),
(201, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:44:14', '2024-04-06 11:44:14'),
(202, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:44:17', '2024-04-06 11:44:17'),
(203, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:44:18', '2024-04-06 11:44:18'),
(204, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:44:52', '2024-04-06 11:44:52'),
(205, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:44:56', '2024-04-06 11:44:56'),
(206, 1, 'admin/type_products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:45:10', '2024-04-06 11:45:10'),
(207, 1, 'admin/type_products', 'POST', '::1', '{\"name\":\"b\\u00e1nh ngon n\\u00e8\",\"description\":\"ngon l\\u1eafm\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/type_products\"}', '2024-04-06 11:45:22', '2024-04-06 11:45:22'),
(208, 1, 'admin/type_products/create', 'GET', '::1', '[]', '2024-04-06 11:45:22', '2024-04-06 11:45:22'),
(209, 1, 'admin/type_products', 'POST', '::1', '{\"name\":\"b\\u00e1nh ngon n\\u00e8\",\"description\":\"ngon l\\u1eafm\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:45:36', '2024-04-06 11:45:36'),
(210, 1, 'admin/type_products', 'GET', '::1', '[]', '2024-04-06 11:45:37', '2024-04-06 11:45:37'),
(211, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:45:44', '2024-04-06 11:45:44'),
(212, 1, 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:45:47', '2024-04-06 11:45:47'),
(213, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:46:04', '2024-04-06 11:46:04'),
(214, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:46:13', '2024-04-06 11:46:13'),
(215, 1, 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:46:16', '2024-04-06 11:46:16'),
(216, 1, 'admin/products', 'POST', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi ngon\",\"id_type\":\"8\",\"description\":\"ngo\",\"unit_price\":\"123000\",\"promotion_price\":\"100000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-06 11:46:44', '2024-04-06 11:46:44'),
(217, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-06 11:46:44', '2024-04-06 11:46:44'),
(218, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:47:04', '2024-04-06 11:47:04'),
(219, 1, 'admin/products/64/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:47:17', '2024-04-06 11:47:17'),
(220, 1, 'admin/products/64', 'PUT', '::1', '{\"name\":\"b\\u00e1nh m\\u1edbi ngon\",\"id_type\":\"8\",\"description\":\"ngo\",\"unit_price\":\"123000\",\"promotion_price\":\"100000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products?page=4\"}', '2024-04-06 11:47:54', '2024-04-06 11:47:54'),
(221, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\"}', '2024-04-06 11:47:55', '2024-04-06 11:47:55'),
(222, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:04', '2024-04-06 11:48:04'),
(223, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"8\",\"_model\":\"App_Models_ProductType\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-06 11:48:13', '2024-04-06 11:48:13'),
(224, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:24', '2024-04-06 11:48:24'),
(225, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2024-04-06 11:48:27', '2024-04-06 11:48:27'),
(226, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"64\",\"_model\":\"App_Models_Product\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-06 11:48:33', '2024-04-06 11:48:33'),
(227, 1, 'admin/products', 'GET', '::1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:34', '2024-04-06 11:48:34'),
(228, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:37', '2024-04-06 11:48:37'),
(229, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"8\",\"_model\":\"App_Models_ProductType\",\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-06 11:48:43', '2024-04-06 11:48:43'),
(230, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:44', '2024-04-06 11:48:44'),
(231, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:48', '2024-04-06 11:48:48'),
(232, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:48:53', '2024-04-06 11:48:53'),
(233, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:49:08', '2024-04-06 11:49:08'),
(234, 1, 'admin/auth/menu/9', 'PUT', '::1', '{\"parent_id\":\"9\",\"title\":\"QL Lo\\u1ea1i S\\u1ea3n Ph\\u1ea9m\",\"icon\":\"fa-bars\",\"uri\":\"type_products\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/auth\\/menu\"}', '2024-04-06 11:49:26', '2024-04-06 11:49:26'),
(235, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '[]', '2024-04-06 11:49:26', '2024-04-06 11:49:26'),
(236, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-06 11:49:35', '2024-04-06 11:49:35'),
(237, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"fvxv\",\"icon\":\"fa-bars\",\"uri\":\"vdsv\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:51:46', '2024-04-06 11:51:46'),
(238, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:51:46', '2024-04-06 11:51:46'),
(239, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:51:49', '2024-04-06 11:51:49'),
(240, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"vsvesv\",\"icon\":\"fa-bars\",\"uri\":\"evs\",\"roles\":[null],\"permission\":null,\"_token\":\"nX5ZFGiYrS1sgV8qzEAFyubsMhnfaiLsQalk1I2O\"}', '2024-04-06 11:52:05', '2024-04-06 11:52:05'),
(241, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:52:06', '2024-04-06 11:52:06'),
(242, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-06 11:52:11', '2024-04-06 11:52:11'),
(243, 1, 'admin', 'GET', '::1', '[]', '2024-04-07 10:27:45', '2024-04-07 10:27:45'),
(244, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:28:01', '2024-04-07 10:28:01'),
(245, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:28:15', '2024-04-07 10:28:15'),
(246, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:28:18', '2024-04-07 10:28:18'),
(247, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:29:41', '2024-04-07 10:29:41'),
(248, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:49:21', '2024-04-07 10:49:21'),
(249, 1, 'admin/type_products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:49:25', '2024-04-07 10:49:25'),
(250, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-07 10:51:15', '2024-04-07 10:51:15'),
(251, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:28:16', '2024-04-09 05:28:16'),
(252, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:29:05', '2024-04-09 05:29:05'),
(253, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Chocolate\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:32:37', '2024-04-09 05:32:37'),
(254, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:32:37', '2024-04-09 05:32:37'),
(255, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:32:54', '2024-04-09 05:32:54'),
(256, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang\",\"id_type\":\"5\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"150000\",\"promotion_price\":\"120000\",\"unit\":\"h\\u1ed9p\",\"new\":\"0\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:33:10', '2024-04-09 05:33:10'),
(257, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:33:11', '2024-04-09 05:33:11'),
(258, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:33:35', '2024-04-09 05:33:35'),
(259, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Chocolate\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:34:13', '2024-04-09 05:34:13'),
(260, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:34:13', '2024-04-09 05:34:13'),
(261, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:36:38', '2024-04-09 05:36:38'),
(262, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Chocolate\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:36:56', '2024-04-09 05:36:56'),
(263, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:36:57', '2024-04-09 05:36:57'),
(264, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:37:57', '2024-04-09 05:37:57'),
(265, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang\",\"id_type\":\"5\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"150000\",\"promotion_price\":\"120000\",\"unit\":\"h\\u1ed9p\",\"new\":\"0\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:38:05', '2024-04-09 05:38:05'),
(266, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:38:05', '2024-04-09 05:38:05'),
(267, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:39:28', '2024-04-09 05:39:28'),
(268, 1, 'admin/products/1', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang\",\"id_type\":\"5\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"150000\",\"promotion_price\":\"120000\",\"unit\":\"h\\u1ed9p\",\"new\":\"0\",\"_token\":\"OY9x0wfxzRhFKTn2sZV4ZDLSGCZrgDxR5wCGu0gp\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-09 05:40:08', '2024-04-09 05:40:08'),
(269, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-09 05:40:09', '2024-04-09 05:40:09'),
(270, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:46:49', '2024-04-09 05:46:49'),
(271, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-09 05:46:54', '2024-04-09 05:46:54'),
(272, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 09:52:03', '2024-04-13 09:52:03'),
(273, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:52:20', '2024-04-13 09:52:20'),
(274, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:55:41', '2024-04-13 09:55:41'),
(275, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"2\",\"title\":\"Qu\\u1ea3n L\\u00fd Banner\",\"icon\":\"fa-bars\",\"uri\":\"slide\",\"roles\":[null],\"permission\":null,\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 09:56:03', '2024-04-13 09:56:03'),
(276, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:56:04', '2024-04-13 09:56:04'),
(277, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:56:07', '2024-04-13 09:56:07'),
(278, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:56:54', '2024-04-13 09:56:54'),
(279, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:56:56', '2024-04-13 09:56:56'),
(280, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:57:00', '2024-04-13 09:57:00'),
(281, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:57:04', '2024-04-13 09:57:04'),
(282, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:57:49', '2024-04-13 09:57:49'),
(283, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:57:56', '2024-04-13 09:57:56'),
(284, 1, 'admin/slide/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:58:04', '2024-04-13 09:58:04'),
(285, 1, 'admin/slide', 'POST', '::1', '{\"link\":null,\"image\":\"banner-do-an-tranbg-mieng.jpg\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 09:58:23', '2024-04-13 09:58:23'),
(286, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 09:58:26', '2024-04-13 09:58:26'),
(287, 1, 'admin/slide', 'POST', '::1', '{\"link\":\"banner-do-an-tranbg-mieng.jpg\",\"image\":\"banner-do-an-tranbg-mieng.jpg\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 09:58:35', '2024-04-13 09:58:35'),
(288, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 09:58:36', '2024-04-13 09:58:36'),
(289, 1, 'admin/slide', 'POST', '::1', '{\"link\":\"banner\",\"image\":\"banner-do-an-tranbg-mieng.jpg\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 09:58:45', '2024-04-13 09:58:45'),
(290, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 09:58:46', '2024-04-13 09:58:46'),
(291, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:58:51', '2024-04-13 09:58:51'),
(292, 1, 'admin/slide/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:59:01', '2024-04-13 09:59:01'),
(293, 1, 'admin/slide/1', 'PUT', '::1', '{\"link\":null,\"image\":\"banner-do-an-tranbg-mieng.jpg\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 09:59:06', '2024-04-13 09:59:06'),
(294, 1, 'admin/slide/1/edit', 'GET', '::1', '[]', '2024-04-13 09:59:07', '2024-04-13 09:59:07'),
(295, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:59:47', '2024-04-13 09:59:47'),
(296, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2024-04-13 09:59:50', '2024-04-13 09:59:50'),
(297, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:59:53', '2024-04-13 09:59:53'),
(298, 1, 'admin/slide/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 09:59:57', '2024-04-13 09:59:57'),
(299, 1, 'admin/slide/1', 'PUT', '::1', '{\"link\":null,\"image\":\"banner-do-an-tranbg-mieng.jpg\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:00:01', '2024-04-13 10:00:01'),
(300, 1, 'admin/slide/1/edit', 'GET', '::1', '[]', '2024-04-13 10:00:02', '2024-04-13 10:00:02'),
(301, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:00:13', '2024-04-13 10:00:13'),
(302, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:00:17', '2024-04-13 10:00:17'),
(303, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:00:25', '2024-04-13 10:00:25'),
(304, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:01:23', '2024-04-13 10:01:23'),
(305, 1, 'admin/slide/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:01:26', '2024-04-13 10:01:26'),
(306, 1, 'admin/slide/1', 'PUT', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:01:40', '2024-04-13 10:01:40'),
(307, 1, 'admin/slide/1/edit', 'GET', '::1', '[]', '2024-04-13 10:01:41', '2024-04-13 10:01:41'),
(308, 1, 'admin/slide/1', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 10:01:56', '2024-04-13 10:01:56'),
(309, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:01:57', '2024-04-13 10:01:57'),
(310, 1, 'admin/slide/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:02:09', '2024-04-13 10:02:09'),
(311, 1, 'admin/slide', 'POST', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:02:16', '2024-04-13 10:02:16'),
(312, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:02:16', '2024-04-13 10:02:16'),
(313, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:03:54', '2024-04-13 10:03:54'),
(314, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:03:57', '2024-04-13 10:03:57'),
(315, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:04:45', '2024-04-13 10:04:45'),
(316, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:04:54', '2024-04-13 10:04:54'),
(317, 1, 'admin/slide/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:04:57', '2024-04-13 10:04:57'),
(318, 1, 'admin/slide', 'POST', '::1', '{\"link\":null,\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:05:04', '2024-04-13 10:05:04'),
(319, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:05:05', '2024-04-13 10:05:05'),
(320, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:05:55', '2024-04-13 10:05:55'),
(321, 1, 'admin/slide', 'POST', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:06:01', '2024-04-13 10:06:01'),
(322, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:06:02', '2024-04-13 10:06:02'),
(323, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:06:08', '2024-04-13 10:06:08'),
(324, 1, 'admin/slide/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:06:15', '2024-04-13 10:06:15'),
(325, 1, 'admin/slide/6', 'PUT', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:06:21', '2024-04-13 10:06:21'),
(326, 1, 'admin/slide/6/edit', 'GET', '::1', '[]', '2024-04-13 10:06:22', '2024-04-13 10:06:22'),
(327, 1, 'admin/slide/6/edit', 'GET', '::1', '[]', '2024-04-13 10:07:50', '2024-04-13 10:07:50'),
(328, 1, 'admin/slide/6', 'PUT', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\\/create\"}', '2024-04-13 10:07:54', '2024-04-13 10:07:54'),
(329, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:07:55', '2024-04-13 10:07:55'),
(330, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:08:02', '2024-04-13 10:08:02'),
(331, 1, 'admin/slide/6', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:08:08', '2024-04-13 10:08:08'),
(332, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:08:14', '2024-04-13 10:08:14'),
(333, 1, 'admin/slide/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:08:19', '2024-04-13 10:08:19'),
(334, 1, 'admin/slide/6', 'PUT', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:08:31', '2024-04-13 10:08:31'),
(335, 1, 'admin/slide/6/edit', 'GET', '::1', '[]', '2024-04-13 10:08:31', '2024-04-13 10:08:31'),
(336, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:08:36', '2024-04-13 10:08:36'),
(337, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:10:38', '2024-04-13 10:10:38'),
(338, 1, 'admin/slide/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:10:42', '2024-04-13 10:10:42'),
(339, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:10:48', '2024-04-13 10:10:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(340, 1, 'admin/slide/2/edit', 'GET', '::1', '[]', '2024-04-13 10:10:49', '2024-04-13 10:10:49'),
(341, 1, 'admin/slide/2/edit', 'GET', '::1', '[]', '2024-04-13 10:13:28', '2024-04-13 10:13:28'),
(342, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:13:34', '2024-04-13 10:13:34'),
(343, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:13:35', '2024-04-13 10:13:35'),
(344, 1, 'admin/slide/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:14:33', '2024-04-13 10:14:33'),
(345, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:14:40', '2024-04-13 10:14:40'),
(346, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:14:40', '2024-04-13 10:14:40'),
(347, 1, 'admin/slide/2', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:14:57', '2024-04-13 10:14:57'),
(348, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:15:02', '2024-04-13 10:15:02'),
(349, 1, 'admin/slide/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:15:09', '2024-04-13 10:15:09'),
(350, 1, 'admin/slide/2/edit', 'GET', '::1', '[]', '2024-04-13 10:15:38', '2024-04-13 10:15:38'),
(351, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-04-13 10:15:47', '2024-04-13 10:15:47'),
(352, 1, 'admin/slide/2/edit', 'GET', '::1', '[]', '2024-04-13 10:15:47', '2024-04-13 10:15:47'),
(353, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\"}', '2024-04-13 10:15:53', '2024-04-13 10:15:53'),
(354, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:15:54', '2024-04-13 10:15:54'),
(355, 1, 'admin/slide/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:16:54', '2024-04-13 10:16:54'),
(356, 1, 'admin/slide/3', 'PUT', '::1', '{\"id\":\"3\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:17:00', '2024-04-13 10:17:00'),
(357, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:17:00', '2024-04-13 10:17:00'),
(358, 1, 'admin/slide/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:17:21', '2024-04-13 10:17:21'),
(359, 1, 'admin/slide/3', 'PUT', '::1', '{\"id\":\"3\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:17:31', '2024-04-13 10:17:31'),
(360, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:17:31', '2024-04-13 10:17:31'),
(361, 1, 'admin/slide/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:17:35', '2024-04-13 10:17:35'),
(362, 1, 'admin/slide/2', 'PUT', '::1', '{\"id\":\"2\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:17:43', '2024-04-13 10:17:43'),
(363, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:17:43', '2024-04-13 10:17:43'),
(364, 1, 'admin/slide/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:17:48', '2024-04-13 10:17:48'),
(365, 1, 'admin/slide/3', 'PUT', '::1', '{\"id\":\"3\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:17:55', '2024-04-13 10:17:55'),
(366, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:17:56', '2024-04-13 10:17:56'),
(367, 1, 'admin/slide/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:19:20', '2024-04-13 10:19:20'),
(368, 1, 'admin/slide/4', 'PUT', '::1', '{\"id\":\"4\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:19:27', '2024-04-13 10:19:27'),
(369, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:19:28', '2024-04-13 10:19:28'),
(370, 1, 'admin/slide/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:19:32', '2024-04-13 10:19:32'),
(371, 1, 'admin/slide/6', 'PUT', '::1', '{\"id\":\"6\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:19:41', '2024-04-13 10:19:41'),
(372, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:19:41', '2024-04-13 10:19:41'),
(373, 1, 'admin/slide/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:20:10', '2024-04-13 10:20:10'),
(374, 1, 'admin/slide/4', 'PUT', '::1', '{\"id\":\"4\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:20:16', '2024-04-13 10:20:16'),
(375, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:20:17', '2024-04-13 10:20:17'),
(376, 1, 'admin/slide/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:20:22', '2024-04-13 10:20:22'),
(377, 1, 'admin/slide/4', 'PUT', '::1', '{\"id\":\"4\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:20:28', '2024-04-13 10:20:28'),
(378, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:20:29', '2024-04-13 10:20:29'),
(379, 1, 'admin/slide/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:21:06', '2024-04-13 10:21:06'),
(380, 1, 'admin/slide/4', 'PUT', '::1', '{\"id\":\"4\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:21:25', '2024-04-13 10:21:25'),
(381, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:21:26', '2024-04-13 10:21:26'),
(382, 1, 'admin/slide/6/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:21:51', '2024-04-13 10:21:51'),
(383, 1, 'admin/slide/6', 'PUT', '::1', '{\"id\":\"6\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:22:04', '2024-04-13 10:22:04'),
(384, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:22:04', '2024-04-13 10:22:04'),
(385, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"6\",\"_model\":\"App_Models_Slide\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-13 10:22:49', '2024-04-13 10:22:49'),
(386, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:22:50', '2024-04-13 10:22:50'),
(387, 1, 'admin/slide/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:23:11', '2024-04-13 10:23:11'),
(388, 1, 'admin/slide', 'POST', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:23:20', '2024-04-13 10:23:20'),
(389, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:23:21', '2024-04-13 10:23:21'),
(390, 1, 'admin/slide/create', 'GET', '::1', '[]', '2024-04-13 10:25:12', '2024-04-13 10:25:12'),
(391, 1, 'admin/slide', 'POST', '::1', '{\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 10:25:19', '2024-04-13 10:25:19'),
(392, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:25:19', '2024-04-13 10:25:19'),
(393, 1, 'admin/slide/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:25:45', '2024-04-13 10:25:45'),
(394, 1, 'admin/slide/7', 'PUT', '::1', '{\"id\":\"7\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:25:52', '2024-04-13 10:25:52'),
(395, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:25:52', '2024-04-13 10:25:52'),
(396, 1, 'admin/slide/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:25:56', '2024-04-13 10:25:56'),
(397, 1, 'admin/slide/7', 'PUT', '::1', '{\"id\":\"7\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:26:02', '2024-04-13 10:26:02'),
(398, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:26:03', '2024-04-13 10:26:03'),
(399, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:26:06', '2024-04-13 10:26:06'),
(400, 1, 'admin/slide/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:26:10', '2024-04-13 10:26:10'),
(401, 1, 'admin/slide/7', 'PUT', '::1', '{\"id\":\"7\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/slide\"}', '2024-04-13 10:26:32', '2024-04-13 10:26:32'),
(402, 1, 'admin/slide', 'GET', '::1', '[]', '2024-04-13 10:26:33', '2024-04-13 10:26:33'),
(403, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:39:53', '2024-04-13 10:39:53'),
(404, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:17', '2024-04-13 10:40:17'),
(405, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:19', '2024-04-13 10:40:19'),
(406, 1, 'admin/customer', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:21', '2024-04-13 10:40:21'),
(407, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:27', '2024-04-13 10:40:27'),
(408, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:29', '2024-04-13 10:40:29'),
(409, 1, 'admin/slide', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:31', '2024-04-13 10:40:31'),
(410, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:32', '2024-04-13 10:40:32'),
(411, 1, 'admin/type_products', 'GET', '::1', '[]', '2024-04-13 10:40:41', '2024-04-13 10:40:41'),
(412, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:46', '2024-04-13 10:40:46'),
(413, 1, 'admin/auth/menu/10', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 10:40:50', '2024-04-13 10:40:50'),
(414, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:51', '2024-04-13 10:40:51'),
(415, 1, 'admin/auth/menu/11', 'DELETE', '::1', '{\"_method\":\"delete\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\"}', '2024-04-13 10:40:57', '2024-04-13 10:40:57'),
(416, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:40:57', '2024-04-13 10:40:57'),
(417, 1, 'admin/customer', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:41:15', '2024-04-13 10:41:15'),
(418, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:46:33', '2024-04-13 10:46:33'),
(419, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:48:49', '2024-04-13 10:48:49'),
(420, 1, 'admin/products/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:48:55', '2024-04-13 10:48:55'),
(421, 1, 'admin/products/3', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang - Chu\\u1ed1i\",\"id_type\":\"5\",\"description\":null,\"unit_price\":\"150000\",\"promotion_price\":\"120000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:49:05', '2024-04-13 10:49:05'),
(422, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:49:06', '2024-04-13 10:49:06'),
(423, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:49:18', '2024-04-13 10:49:18'),
(424, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Chocolate\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:49:30', '2024-04-13 10:49:30'),
(425, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:49:30', '2024-04-13 10:49:30'),
(426, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:49:38', '2024-04-13 10:49:38'),
(427, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Chocolate\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:49:45', '2024-04-13 10:49:45'),
(428, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:49:45', '2024-04-13 10:49:45'),
(429, 1, 'admin/products/3/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:49:53', '2024-04-13 10:49:53'),
(430, 1, 'admin/products/3', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang - Chu\\u1ed1i\",\"id_type\":\"5\",\"description\":null,\"unit_price\":\"150000\",\"promotion_price\":\"120000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:49:59', '2024-04-13 10:49:59'),
(431, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:50:00', '2024-04-13 10:50:00'),
(432, 1, 'admin/products/4/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:50:11', '2024-04-13 10:50:11'),
(433, 1, 'admin/products/4', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe \\u0110\\u00e0o\",\"id_type\":\"5\",\"description\":null,\"unit_price\":\"160000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:50:21', '2024-04-13 10:50:21'),
(434, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:50:21', '2024-04-13 10:50:21'),
(435, 1, 'admin/products/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:50:32', '2024-04-13 10:50:32'),
(436, 1, 'admin/products/8', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe Tr\\u00e0 xanh\",\"id_type\":\"5\",\"description\":null,\"unit_price\":\"160000\",\"promotion_price\":\"150000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:50:51', '2024-04-13 10:50:51'),
(437, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:50:52', '2024-04-13 10:50:52'),
(438, 1, 'admin/products/9/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:51:12', '2024-04-13 10:51:12'),
(439, 1, 'admin/products/9', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe S\\u1ea7u ri\\u00eang v\\u00e0 D\\u1ee9a\",\"id_type\":\"5\",\"description\":null,\"unit_price\":\"160000\",\"promotion_price\":\"150000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:51:20', '2024-04-13 10:51:20'),
(440, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:51:21', '2024-04-13 10:51:21'),
(441, 1, 'admin/products/13/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:51:32', '2024-04-13 10:51:32'),
(442, 1, 'admin/products/13', 'PUT', '::1', '{\"name\":\"B\\u00e1nh kem Chocolate D\\u00e2u\",\"id_type\":\"3\",\"description\":null,\"unit_price\":\"300000\",\"promotion_price\":\"280000\",\"unit\":\"c\\u00e1i\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:51:41', '2024-04-13 10:51:41'),
(443, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:51:41', '2024-04-13 10:51:41'),
(444, 1, 'admin/products/14/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:51:55', '2024-04-13 10:51:55'),
(445, 1, 'admin/products/14', 'PUT', '::1', '{\"name\":\"B\\u00e1nh kem D\\u00e2u III\",\"id_type\":\"3\",\"description\":null,\"unit_price\":\"300000\",\"promotion_price\":\"280000\",\"unit\":\"c\\u00e1i\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:52:13', '2024-04-13 10:52:13'),
(446, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:52:14', '2024-04-13 10:52:14'),
(447, 1, 'admin/products/11/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:52:38', '2024-04-13 10:52:38'),
(448, 1, 'admin/products/11', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Gato Tr\\u00e1i c\\u00e2y Vi\\u1ec7t Qu\\u1ea5t\",\"id_type\":\"3\",\"description\":null,\"unit_price\":\"140000\",\"promotion_price\":\"0\",\"unit\":\"c\\u00e1i\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:52:51', '2024-04-13 10:52:51'),
(449, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:52:51', '2024-04-13 10:52:51'),
(450, 1, 'admin/products/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 10:53:13', '2024-04-13 10:53:13'),
(451, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe\",\"id_type\":\"9\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/DoAnPHP\\/public\\/admin\\/products\"}', '2024-04-13 10:53:22', '2024-04-13 10:53:22'),
(452, 1, 'admin/products/2/edit', 'GET', '::1', '[]', '2024-04-13 10:53:23', '2024-04-13 10:53:23'),
(453, 1, 'admin/products/2', 'PUT', '::1', '{\"name\":\"B\\u00e1nh Crepe\",\"id_type\":\"6\",\"description\":\"B\\u00e1nh n\\u00e0y r\\u1ea5t ngon\",\"unit_price\":\"180000\",\"promotion_price\":\"160000\",\"unit\":\"h\\u1ed9p\",\"new\":\"1\",\"_token\":\"X6BIpbvz0J50K37VsEXC2FzL5HSV72TZbS5jMXZE\",\"_method\":\"PUT\"}', '2024-04-13 10:53:27', '2024-04-13 10:53:27'),
(454, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 10:53:27', '2024-04-13 10:53:27'),
(455, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:28:36', '2024-04-13 14:28:36'),
(456, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:28:42', '2024-04-13 14:28:42'),
(457, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:28:45', '2024-04-13 14:28:45'),
(458, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:29:30', '2024-04-13 14:29:30'),
(459, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:29:36', '2024-04-13 14:29:36'),
(460, 1, 'admin/products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:31:11', '2024-04-13 14:31:11'),
(461, 1, 'admin/type_products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:31:44', '2024-04-13 14:31:44'),
(462, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:31:55', '2024-04-13 14:31:55'),
(463, 1, 'admin/products/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:31:58', '2024-04-13 14:31:58'),
(464, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:33:25', '2024-04-13 14:33:25'),
(465, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-13 14:33:39', '2024-04-13 14:33:39'),
(466, 1, 'admin/_handle_action_', 'POST', '::1', '{\"_key\":\"6\",\"_model\":\"App_Models_Product\",\"_token\":\"pvFMiF1575mtAF9WlI4XLosPc2Nwr6Kobuq4qph3\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2024-04-13 14:33:45', '2024-04-13 14:33:45'),
(467, 1, 'admin/products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-13 14:33:46', '2024-04-13 14:33:46'),
(468, 1, 'admin/products', 'GET', '::1', '[]', '2024-04-14 03:19:49', '2024-04-14 03:19:49'),
(469, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-14 03:19:57', '2024-04-14 03:19:57'),
(470, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-14 03:20:03', '2024-04-14 03:20:03'),
(471, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-14 03:20:14', '2024-04-14 03:20:14'),
(472, 1, 'admin', 'GET', '::1', '[]', '2024-04-14 03:20:28', '2024-04-14 03:20:28'),
(473, 1, 'admin/auth/logout', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-14 03:20:35', '2024-04-14 03:20:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-04-02 05:46:26', '2024-04-02 05:46:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$oC9IPojLBLsII7QPqL0uRe6EkihSn8jDez.2kOx4HBI.VyBcb00Me', 'Administrator', NULL, 'RVToxkV5HhCKkmkOLQq93WEsDM1jwPsKT013AvbOFARyaOj2Bd9cR8mJbLpw', '2024-04-02 05:46:25', '2024-04-02 05:46:25'),
(2, 'fsefes', 'fwfwf3', 'èwf', 'fwefwef', NULL, NULL, NULL),
(3, 'fesfsef', '$2y$10$G1t4iSz2HN5yxW4GHrUI0.ZoA4NJYkV2k.k3pWaAW1Y7d423fhYrC', 'qqq', NULL, NULL, '2024-04-02 07:55:16', '2024-04-02 07:55:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(27, 28, '2024-04-11', 150000, 'ATM', 'note', '2024-04-11 08:38:15', '2024-04-11 08:38:15'),
(26, 27, '2024-04-09', 330000, 'COD', 'ghf', '2024-04-09 08:28:49', '2024-04-09 08:28:49'),
(25, 26, '2024-04-07', 180000, 'COD', 'kh co', '2024-04-07 10:26:40', '2024-04-07 10:26:40'),
(24, 25, '2024-04-06', 630000, 'ATM', 'fewf', '2024-04-06 11:22:58', '2024-04-06 11:22:58'),
(23, 24, '2024-04-06', 180000, 'COD', 'kh có', '2024-04-06 11:11:44', '2024-04-06 11:11:44'),
(22, 23, '2024-04-05', 500000, 'COD', 'alo', '2024-04-05 16:45:16', '2024-04-05 16:45:16'),
(21, 22, '2024-04-05', 360000, 'COD', 'fesf', '2024-04-05 16:11:36', '2024-04-05 16:11:36'),
(20, 21, '2024-04-05', 360000, 'COD', 'fesf', '2024-04-05 16:11:15', '2024-04-05 16:11:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(8, 24, 4, 2, 160000, '2024-04-06 11:22:58', '2024-04-06 11:22:58'),
(7, 23, 2, 1, 180000, '2024-04-06 11:11:45', '2024-04-06 11:11:45'),
(6, 22, 11, 1, 140000, '2024-04-05 16:45:16', '2024-04-05 16:45:16'),
(5, 22, 2, 2, 180000, '2024-04-05 16:45:16', '2024-04-05 16:45:16'),
(9, 24, 3, 1, 150000, '2024-04-06 11:22:58', '2024-04-06 11:22:58'),
(10, 24, 22, 1, 160000, '2024-04-06 11:22:58', '2024-04-06 11:22:58'),
(11, 25, 2, 1, 180000, '2024-04-07 10:26:40', '2024-04-07 10:26:40'),
(12, 26, 2, 1, 180000, '2024-04-09 08:28:49', '2024-04-09 08:28:49'),
(13, 26, 3, 1, 150000, '2024-04-09 08:28:49', '2024-04-09 08:28:49'),
(14, 27, 3, 1, 150000, '2024-04-11 08:38:15', '2024-04-11 08:38:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `note` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(28, 'Cao Vũ Quang', 'Nam', 'caovuquang1204@gmail.com', 'the more', '0909090909', 'note', '2024-04-11 08:38:15', '2024-04-11 08:38:15'),
(27, 'ghfgh', 'Nữ', 'quangvu120401@gmail.com', 'gfdhg', '0987612041', 'ghf', '2024-04-09 08:28:49', '2024-04-09 08:28:49'),
(26, 'huy', 'Nam', 'ngochuy@gmail.com', 'dong nai', '324', 'kh co', '2024-04-07 10:26:40', '2024-04-07 10:26:40'),
(25, 'fweffsef', 'Nữ', 'quangvu120401@gmail.com', 'é', '123', 'fewf', '2024-04-06 11:22:58', '2024-04-06 11:22:58'),
(24, 'Natsu Quang', 'Nam', 'quangvu120401@gmail.com', 'hà tĩnh', '657', 'kh có', '2024-04-06 11:11:44', '2024-04-06 11:11:44'),
(23, 'haha', 'Nam', 'quangvu120401@gmail.com', 'cam trug', '0190294012', 'alo', '2024-04-05 16:45:16', '2024-04-05 16:45:16'),
(22, 'fesf', 'Nữ', 'caovuquang1204@gmail.com', 'abc', '123', 'fesf', '2024-04-05 16:11:36', '2024-04-05 16:11:36'),
(21, 'fesf', 'Nữ', 'caovuquang1204@gmail.com', 'abc', '123', 'fesf', '2024-04-05 16:11:15', '2024-04-05 16:11:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `created_at`, `updated_at`, `new`) VALUES
(1, 'Bánh Crepe Sầu riêng', 5, 'Bánh này rất ngon', 150000, 120000, 'shutterstock_657998458.jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-09 05:40:08', 0),
(2, 'Bánh Crepe', 6, 'Bánh này rất ngon', 180000, 160000, '1234.jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-13 10:53:27', 1),
(3, 'Bánh Crepe Sầu riêng - Chuối', 5, NULL, 150000, 120000, '210215-banh-sinh-nhat-rau-cau-body- (6).jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-13 10:49:59', 1),
(4, 'Bánh Crepe Đào', 5, NULL, 160000, 160000, 'chicken black pepper_large-900x900.jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-13 10:50:21', 1),
(5, 'Bánh Crepe Dâu', 5, '', 150000, 140000, 'crepedau.jpg', 'hộp', '2016-10-26 03:00:16', '2016-10-24 22:11:00', 0),
(7, 'Bánh Crepe Táo', 5, '', 160000, 160000, 'crepe-tao.jpg', 'hộp', '2016-10-26 03:00:16', '2016-10-24 22:11:00', 0),
(8, 'Bánh Crepe Trà xanh', 5, NULL, 160000, 150000, 'images.jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-13 10:50:51', 1),
(9, 'Bánh Crepe Sầu riêng và Dứa', 5, NULL, 160000, 150000, 'kfa1384392025.jpg', 'hộp', '2016-10-26 03:00:16', '2024-04-13 10:51:20', 1),
(11, 'Bánh Gato Trái cây Việt Quất', 3, NULL, 140000, 0, 'S0da19c9c16194ced8c8b846f6aafffd6V.jpg_720x720q80.jpg', 'cái', '2016-10-12 02:00:00', '2024-04-13 10:52:51', 1),
(12, 'Bánh sinh nhật rau câu trái cây', 3, '', 200000, 180000, '210215-banh-sinh-nhat-rau-cau-body- (6).jpg', 'cái', '2016-10-12 02:00:00', '2016-10-27 02:24:00', 0),
(13, 'Bánh kem Chocolate Dâu', 3, NULL, 300000, 280000, 'hq720.jpg', 'cái', '2016-10-12 02:00:00', '2024-04-13 10:51:41', 1),
(14, 'Bánh kem Dâu III', 3, NULL, 300000, 280000, 'tiem-banh-piza-bin-bin-quan-binh-tan-ho-chi-minh-1637132123870779974-eatery-avatar-1637662887.jpg', 'cái', '2016-10-12 02:00:00', '2024-04-13 10:52:14', 1),
(15, 'Bánh kem Dâu I', 3, '', 350000, 320000, 'banhkem-dau.jpg', 'cái', '2016-10-12 02:00:00', '2016-10-27 02:24:00', 0),
(16, 'Bánh trái cây II', 3, '', 150000, 120000, 'banhtraicay.jpg', 'hộp', '2016-10-12 02:00:00', '2016-10-27 02:24:00', 0),
(17, 'Apple Cake', 3, '', 250000, 240000, 'Fruit-Cake_7979.jpg', 'cai', '2016-10-12 02:00:00', '2016-10-27 02:24:00', 1),
(18, 'Bánh ngọt nhân cream táo', 2, '', 180000, 160000, '20131108144733.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(19, 'Bánh Chocolate Trái cây', 2, '', 150000, 150000, 'Fruit-Cake_7976.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(20, 'Bánh Chocolate Trái cây II', 2, '', 150000, 150000, 'Fruit-Cake_7981.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(21, 'Peach Cake', 2, '', 160000, 150000, 'Peach-Cake_3294.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 1),
(22, 'Bánh bông lan trứng muối I', 1, '', 160000, 0, 'banhbonglantrung.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(23, 'Bánh bông lan trứng muối II', 1, '', 180000, 180000, 'banhbonglantrungmuoi.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(24, 'Bánh French', 1, '', 180000, 0, 'banh-man-thu-vi-nhat-1.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(25, 'Bánh mì Australia', 1, '', 80000, 70000, 'dung-khoai-tay-lam-banh-gato-man-cuc-ngon.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 1),
(26, 'Bánh mặn thập cẩm', 1, '', 50000, 0, 'Fruit-Cake.png', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(27, 'Bánh Muffins trứng', 1, '', 100000, 80000, 'maxresdefault.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(28, 'Bánh Scone Peach Cake', 1, '', 120000, 120000, 'Peach-Cake_3300.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(29, 'Bánh mì Loaf I', 1, '', 100000, 100000, 'sli12.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(30, 'Bánh kem Chocolate Dâu I', 4, '', 380000, 350000, 'sli12.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(31, 'Bánh kem Trái cây I', 4, '', 380000, 350000, 'Fruit-Cake.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(32, 'Bánh kem Trái cây II', 4, '', 380000, 350000, 'Fruit-Cake_7971.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(33, 'Bánh kem Doraemon', 4, '', 280000, 250000, 'p1392962167_banh74.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(34, 'Bánh kem Caramen Pudding', 4, '', 280000, 280000, 'Caramen-pudding636099031482099583.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(35, 'Bánh kem Chocolate Fruit', 4, '', 320000, 300000, 'chocolate-fruit636098975917921990.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(36, 'Bánh kem Coffee Chocolate GH6', 4, '', 320000, 300000, 'COFFE-CHOCOLATE636098977566220885.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(37, 'Bánh kem Mango Mouse', 4, '', 320000, 300000, 'mango-mousse-cake.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(38, 'Bánh kem Matcha Mouse', 4, '', 350000, 330000, 'MATCHA-MOUSSE.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(39, 'Bánh kem Flower Fruit', 4, '', 350000, 330000, 'flower-fruits636102461981788938.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(40, 'Bánh kem Strawberry Delight', 4, '', 350000, 330000, 'strawberry-delight636102445035635173.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(41, 'Bánh kem Raspberry Delight', 4, '', 350000, 330000, 'raspberry.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(42, 'Beefy Pizza', 6, 'Thịt bò xay, ngô, sốt BBQ, phô mai mozzarella', 150000, 130000, '40819_food_pizza.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(43, 'Hawaii Pizza', 6, 'Sốt cà chua, ham , dứa, pho mai mozzarella', 120000, 120000, 'hawaiian paradise_large-900x900.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(44, 'Smoke Chicken Pizza', 6, 'Gà hun khói,nấm, sốt cà chua, pho mai mozzarella.', 120000, 120000, 'chicken black pepper_large-900x900.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(45, 'Sausage Pizza', 6, 'Xúc xích klobasa, Nấm, Ngô, sốtcà chua, pho mai Mozzarella.', 120000, 120000, 'pizza-miami.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(46, 'Ocean Pizza', 6, 'Tôm , mực, xào cay,ớt xanh, hành tây, cà chua, phomai mozzarella.', 120000, 120000, 'seafood curry_large-900x900.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(47, 'All Meaty Pizza', 6, 'Ham, bacon, chorizo, pho mai mozzarella.', 140000, 140000, 'all1).jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(48, 'Tuna Pizza', 6, 'Cá Ngừ, sốt Mayonnaise,sốt càchua, hành tây, pho mai Mozzarella', 140000, 140000, '54eaf93713081_-_07-germany-tuna.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(49, 'Bánh su kem nhân dừa', 7, '', 120000, 100000, 'maxresdefault.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(50, 'Bánh su kem sữa tươi', 7, '', 120000, 100000, 'sukem.jpg', 'cái', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(51, 'Bánh su kem sữa tươi chiên giòn', 7, '', 150000, 150000, '1434429117-banh-su-kem-chien-20.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(52, 'Bánh su kem dâu sữa tươi', 7, '', 150000, 150000, 'sukemdau.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(53, 'Bánh su kem bơ sữa tươi', 7, '', 150000, 150000, 'He-Thong-Banh-Su-Singapore-Chewy-Junior.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(54, 'Bánh su kem nhân trái cây sữa tươi', 7, '', 150000, 150000, 'foody-banh-su-que-635930347896369908.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(55, 'Bánh su kem cà phê', 7, '', 150000, 150000, 'banh-su-kem-ca-phe-1.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(56, 'Bánh su kem phô mai', 7, '', 150000, 150000, '50020041-combo-20-banh-su-que-pho-mai-9.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(57, 'Bánh su kem sữa tươi chocolate', 7, '', 150000, 150000, 'combo-20-banh-su-que-kem-sua-tuoi-phu-socola.jpg', 'hộp', '2016-10-13 02:20:00', '2016-10-19 03:20:00', 0),
(58, 'Bánh Macaron Pháp', 2, 'Thưởng thức macaron, người ta có thể tìm thấy từ những hương vị truyền thống như mâm xôi, chocolate, cho đến những hương vị mới như nấm và trà xanh. Macaron với vị giòn tan của vỏ bánh, béo ngậy ngọt ngào của phần nhân, với vẻ ngoài đáng yêu và nhiều màu sắc đẹp mắt, đây là món bạn không nên bỏ qua khi khám phá nền ẩm thực Pháp.', 200000, 180000, 'Macaron9.jpg', '', '2016-10-26 17:00:00', '2016-10-11 17:00:00', 0),
(59, 'Bánh Tiramisu - Italia', 2, 'Chỉ cần cắn một miếng, bạn sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một chính vì thế người ta còn ví món bánh này là Thiên đường trong miệng của bạn', 200000, 200000, '234.jpg', '', '2016-10-26 17:00:00', '2016-10-11 17:00:00', 0),
(60, 'Bánh Táo - Mỹ', 2, 'Bánh táo Mỹ với phần vỏ bánh mỏng, giòn mềm, ẩn chứa phần nhân táo thơm ngọt, điểm chút vị chua dịu của trái cây quả sẽ là một lựa chọn hoàn hảo cho những tín đồ bánh ngọt trên toàn thế giới.', 200000, 200000, '1234.jpg', '', '2016-10-26 17:00:00', '2016-10-11 17:00:00', 0),
(61, 'Bánh Cupcake - Anh Quốc', 6, 'Những chiếc cupcake có cấu tạo gồm phần vỏ bánh xốp mịn và phần kem trang trí bên trên rất bắt mắt với nhiều hình dạng và màu sắc khác nhau. Cupcake còn được cho là chiếc bánh mang lại niềm vui và tiếng cười như chính hình dáng đáng yêu của chúng.', 150000, 120000, 'cupcake.jpg', 'cái', NULL, NULL, 0),
(62, 'Bánh Sachertorte', 6, 'Sachertorte là một loại bánh xốp được tạo ra bởi loại&nbsp;chocholate&nbsp;tuyệt hảo nhất của nước Áo. Sachertorte có vị ngọt nhẹ, gồm nhiều lớp bánh được làm từ ruột bánh mì và bánh sữa chocholate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocholate này nổi tiếng tới mức thành phố Vienna của Áo đã ấn định&nbsp;tổ chức một ngày Sachertorte quốc gia, vào 5/12 hằng năm', 250000, 220000, '111.jpg', 'cái', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `image`, `updated_at`, `created_at`) VALUES
(2, 'baner6.png', '2024-04-13 10:17:43', NULL),
(3, 'banner5.jpg', '2024-04-13 10:17:55', NULL),
(4, 'baner7.jpg', '2024-04-13 10:21:26', NULL),
(5, 'banner-do-an-tranbg-mieng.jpg', NULL, NULL),
(7, 'banner22.jpg', '2024-04-13 10:26:32', '2024-04-13 10:25:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Bánh mặn', 'Nếu từng bị mê hoặc bởi các loại tarlet ngọt thì chắn chắn bạn không thể bỏ qua những loại tarlet mặn. Ngoài hình dáng bắt mắt, lớp vở bánh giòn giòn cùng với nhân mặn như thịt gà, nấm, thị heo ,… của bánh sẽ chinh phục bất cứ ai dùng thử.', 'banh-man-thu-vi-nhat-1.jpg', NULL, NULL),
(2, 'Bánh ngọt', 'Bánh ngọt là một loại thức ăn thường dưới hình thức món bánh dạng bánh mì từ bột nhào, được nướng lên dùng để tráng miệng. Bánh ngọt có nhiều loại, có thể phân loại dựa theo nguyên liệu và kỹ thuật chế biến như bánh ngọt làm từ lúa mì, bơ, bánh ngọt dạng bọt biển. Bánh ngọt có thể phục vụ những mục đính đặc biệt như bánh cưới, bánh sinh nhật, bánh Giáng sinh, bánh Halloween..', '20131108144733.jpg', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Bánh trái cây', 'Bánh trái cây, hay còn gọi là bánh hoa quả, là một món ăn chơi, không riêng gì của Huế nhưng khi \"lạc\" vào mảnh đất Cố đô, món bánh này dường như cũng mang chút tinh tế, cầu kỳ và đặc biệt. Lấy cảm hứng từ những loại trái cây trong vườn, qua bàn tay khéo léo của người phụ nữ Huế, món bánh trái cây ra đời - ngọt thơm, dịu nhẹ làm đẹp lòng biết bao người thưởng thức.', 'banhtraicay.jpg', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'Bánh kem', 'Với người Việt Nam thì bánh ngọt nói chung đều hay được quy về bánh bông lan – một loại tráng miệng bông xốp, ăn không hoặc được phủ kem lên thành bánh kem. Tuy nhiên, cốt bánh kem thực ra có rất nhiều loại với hương vị, kết cấu và phương thức làm khác nhau chứ không chỉ đơn giản là “bánh bông lan” chung chung đâu nhé!', 'banhkem.jpg', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'Bánh crepe', 'Crepe là một món bánh nổi tiếng của Pháp, nhưng từ khi du nhập vào Việt Nam món bánh đẹp mắt, ngon miệng này đã làm cho biết bao bạn trẻ phải “xiêu lòng”', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'Bánh Pizza', 'Pizza đã không chỉ còn là một món ăn được ưa chuộng khắp thế giới mà còn được những nhà cầm quyền EU chứng nhận là một phần di sản văn hóa ẩm thực châu Âu. Và để được chứng nhận là một nhà sản xuất pizza không hề đơn giản. Người ta phải qua đủ mọi các bước xét duyệt của chính phủ Ý và liên minh châu Âu nữa… tất cả là để đảm bảo danh tiếng cho món ăn này.', 'pizza.jpg', '2016-10-25 17:19:00', NULL),
(7, 'Bánh su kem', 'Bánh su kem là món bánh ngọt ở dạng kem được làm từ các nguyên liệu như bột mì, trứng, sữa, bơ.... đánh đều tạo thành một hỗn hợp và sau đó bằng thao tác ép và phun qua một cái túi để định hình thành những bánh nhỏ và cuối cùng được nướng chín. Bánh su kem có thể thêm thành phần Sô cô la để tăng vị hấp dẫn. Bánh có xuất xứ từ nước Pháp.', 'sukemdau.jpg', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quang', 'caovuquang1204@gmail.com', NULL, '$2y$10$rQlNTtcvMX4Sq0cFj2fBGOhbV5izlZOBobX5fIuzK6XDOqR/ZzYVu', NULL, '2024-04-06 10:26:33', '2024-04-06 10:26:33'),
(2, 'nguyen ngoc huy', 'quangvu120401@gmail.com', NULL, '$2y$10$mVq0MfHDKivjLmnQTrette39r..cH8yKWSA.kkH/a/ECOrSUTtKFS', NULL, '2024-04-06 10:29:48', '2024-04-06 10:29:48'),
(3, 'ngoc huy', 'ngochuy@gmail.com', NULL, '$2y$10$V1jfwzIw7tNlMyFrY7dIVeKOr1PYbAKXQMYX/vn4H2bMG0vRq/Jnq', NULL, '2024-04-07 10:24:56', '2024-04-07 10:24:56'),
(4, 'báo cáo', 'caovuquang12efes04@gmail.com', NULL, '$2y$10$f8z4n9S8aBlKOkMSfffhU.J9f2z8qDYircTyDwH/s71VLGgyQ22um', NULL, '2024-04-13 10:28:19', '2024-04-13 10:28:19');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
