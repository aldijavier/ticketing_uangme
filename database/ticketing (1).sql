-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 08:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `approval_ticket`
--

CREATE TABLE `approval_ticket` (
  `id` int(10) NOT NULL,
  `ticket_id` int(10) DEFAULT NULL,
  `category_id` int(10) NOT NULL,
  `user_request` int(10) DEFAULT NULL,
  `modification` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `assigned_to_user_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approval_ticket`
--

INSERT INTO `approval_ticket` (`id`, `ticket_id`, `category_id`, `user_request`, `modification`, `url`, `assigned_to_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 2, NULL, 'AS', 'sASAs', 11, '2023-07-25 21:05:28', '2023-07-25 21:05:28', NULL),
(2, 9, 1, NULL, 'sdf', 'sdf', 5, '2023-07-26 01:03:14', '2023-07-26 01:03:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'created', 1, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:29:08.000000Z\",\"created_at\":\"2023-07-24T07:29:08.000000Z\",\"id\":1,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:29:08', '2023-07-24 00:29:08'),
(2, 'created', 2, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:29:29.000000Z\",\"created_at\":\"2023-07-24T07:29:29.000000Z\",\"id\":2,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:29:29', '2023-07-24 00:29:29'),
(3, 'created', 3, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:29:39.000000Z\",\"created_at\":\"2023-07-24T07:29:39.000000Z\",\"id\":3,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:29:39', '2023-07-24 00:29:39'),
(4, 'created', 4, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:30:50.000000Z\",\"created_at\":\"2023-07-24T07:30:50.000000Z\",\"id\":4,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:30:50', '2023-07-24 00:30:50'),
(5, 'created', 5, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:31:50.000000Z\",\"created_at\":\"2023-07-24T07:31:50.000000Z\",\"id\":5,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:31:50', '2023-07-24 00:31:50'),
(6, 'created', 6, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:32:05.000000Z\",\"created_at\":\"2023-07-24T07:32:05.000000Z\",\"id\":6,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:32:05', '2023-07-24 00:32:05'),
(7, 'created', 7, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:38:15.000000Z\",\"created_at\":\"2023-07-24T07:38:15.000000Z\",\"id\":7,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:38:15', '2023-07-24 00:38:15'),
(8, 'created', 8, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"1\",\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"status_id\":\"1\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T07:39:00.000000Z\",\"created_at\":\"2023-07-24T07:39:00.000000Z\",\"id\":8,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 00:39:00', '2023-07-24 00:39:00'),
(9, 'deleted', 8, 'App\\Ticket', 1, '{\"id\":8,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T07:39:00.000000Z\",\"updated_at\":\"2023-07-24T09:32:57.000000Z\",\"deleted_at\":\"2023-07-24T09:32:57.000000Z\",\"status_id\":1,\"priority_id\":3,\"category_id\":1,\"assigned_to_user_id\":null,\"request\":\"Collection\",\"requestdesc\":\"collection desc\",\"notifyProduct\":\"YES\",\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 02:32:57', '2023-07-24 02:32:57'),
(10, 'created', 9, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"3\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"status_id\":\"3\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T09:33:44.000000Z\",\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"id\":9,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 02:33:44', '2023-07-24 02:33:44'),
(11, 'updated', 9, 'App\\Ticket', 6, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T09:36:23.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":null,\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 02:36:23', '2023-07-24 02:36:23'),
(12, 'updated', 9, 'App\\Ticket', 1, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T09:43:05.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"10\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 02:43:05', '2023-07-24 02:43:05'),
(13, 'updated', 9, 'App\\Ticket', 6, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T09:59:27.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"7\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 02:59:27', '2023-07-24 02:59:27'),
(14, 'updated', 9, 'App\\Ticket', 1, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T10:06:42.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"9\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 03:06:42', '2023-07-24 03:06:42'),
(15, 'updated', 9, 'App\\Ticket', 6, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T10:08:55.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"7\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 03:08:55', '2023-07-24 03:08:55'),
(16, 'created', 10, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"2\",\"request\":\"CS\",\"requestdesc\":\"CS team detail\",\"status_id\":\"3\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-24T10:20:46.000000Z\",\"created_at\":\"2023-07-24T10:20:46.000000Z\",\"id\":10,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-24 03:20:46', '2023-07-24 03:20:46'),
(17, 'updated', 10, 'App\\Ticket', 1, '{\"id\":10,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T10:20:46.000000Z\",\"updated_at\":\"2023-07-24T10:29:57.000000Z\",\"deleted_at\":null,\"status_id\":\"3\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":\"7\",\"request\":\"CS\",\"requestdesc\":\"CS team detail\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}]}', '127.0.0.1', '2023-07-24 03:29:57', '2023-07-24 03:29:57'),
(18, 'updated', 10, 'App\\Ticket', 1, '{\"id\":10,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T10:20:46.000000Z\",\"updated_at\":\"2023-07-24T10:30:10.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":\"7\",\"request\":\"CS\",\"requestdesc\":\"CS team detail\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}]}', '127.0.0.1', '2023-07-24 03:30:10', '2023-07-24 03:30:10'),
(19, 'updated', 9, 'App\\Ticket', 1, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-24T10:30:30.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"9\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-24 03:30:30', '2023-07-24 03:30:30'),
(20, 'updated', 10, 'App\\Ticket', 6, '{\"id\":10,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T10:20:46.000000Z\",\"updated_at\":\"2023-07-25T10:01:26.000000Z\",\"deleted_at\":null,\"status_id\":\"4\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":\"7\",\"request\":\"CS\",\"requestdesc\":\"CS team detail\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}]}', '127.0.0.1', '2023-07-25 03:01:26', '2023-07-25 03:01:26'),
(21, 'updated', 10, 'App\\Ticket', 12, '{\"id\":10,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T10:20:46.000000Z\",\"updated_at\":\"2023-07-25T10:05:21.000000Z\",\"deleted_at\":null,\"status_id\":\"5\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":7,\"request\":\"CS\",\"requestdesc\":\"CS team detail\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}],\"media\":[{\"id\":2,\"model_type\":\"App\\\\Ticket\",\"model_id\":10,\"uuid\":\"e0be7e65-ecd5-482e-90a7-a27ba11bdb74\",\"collection_name\":\"attachments\",\"name\":\"64be506f065df_Screenshot_3\",\"file_name\":\"64be506f065df_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":2,\"created_at\":\"2023-07-24T10:20:51.000000Z\",\"updated_at\":\"2023-07-24T10:20:51.000000Z\"}]}', '127.0.0.1', '2023-07-25 03:05:21', '2023-07-25 03:05:21'),
(22, 'updated', 9, 'App\\Ticket', 1, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-25T10:14:44.000000Z\",\"deleted_at\":null,\"status_id\":\"4\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":\"9\",\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-25 03:14:44', '2023-07-25 03:14:44'),
(23, 'updated', 9, 'App\\Ticket', 12, '{\"id\":9,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-24T09:33:44.000000Z\",\"updated_at\":\"2023-07-26T02:15:14.000000Z\",\"deleted_at\":null,\"status_id\":\"5\",\"priority_id\":\"3\",\"category_id\":\"3\",\"assigned_to_user_id\":9,\"request\":\"Change guangong\",\"requestdesc\":\"guangong system\",\"notifyProduct\":\"YES\",\"attachments\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}],\"media\":[{\"id\":1,\"model_type\":\"App\\\\Ticket\",\"model_id\":9,\"uuid\":\"f43a72db-494b-4498-a46f-dc53c56875f8\",\"collection_name\":\"attachments\",\"name\":\"64be456cccc58_Screenshot_3\",\"file_name\":\"64be456cccc58_Screenshot_3.png\",\"mime_type\":\"image\\/png\",\"disk\":\"public\",\"conversions_disk\":\"public\",\"size\":87492,\"manipulations\":[],\"custom_properties\":{\"generated_conversions\":{\"thumb\":true}},\"responsive_images\":[],\"order_column\":1,\"created_at\":\"2023-07-24T09:34:02.000000Z\",\"updated_at\":\"2023-07-24T09:34:07.000000Z\"}]}', '127.0.0.1', '2023-07-25 19:15:14', '2023-07-25 19:15:14'),
(24, 'created', 11, 'App\\Ticket', 5, '{\"title\":\"aldi@uangme.com\",\"category_id\":\"2\",\"request\":\"asd\",\"requestdesc\":\"asd\",\"status_id\":\"3\",\"priority_id\":\"3\",\"notifyProduct\":\"YES\",\"updated_at\":\"2023-07-26T03:02:00.000000Z\",\"created_at\":\"2023-07-26T03:02:00.000000Z\",\"id\":11,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-25 20:02:00', '2023-07-25 20:02:00'),
(25, 'created', 12, 'App\\Ticket', 1, '{\"title\":\"admin@admin.com\",\"category_id\":\"2\",\"request\":\"asd\",\"requestdesc\":\"asd\",\"status_id\":\"3\",\"priority_id\":\"1\",\"notifyProduct\":\"asd\",\"assigned_to_user_id\":\"11\",\"updated_at\":\"2023-07-26T04:07:46.000000Z\",\"created_at\":\"2023-07-26T04:07:46.000000Z\",\"id\":12,\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-25 21:07:46', '2023-07-25 21:07:46'),
(26, 'updated', 11, 'App\\Ticket', 6, '{\"id\":11,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-26T03:02:00.000000Z\",\"updated_at\":\"2023-07-26T04:09:07.000000Z\",\"deleted_at\":null,\"status_id\":\"3\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":\"11\",\"request\":\"asd\",\"requestdesc\":\"asd\",\"notifyProduct\":\"YES\",\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-25 21:09:07', '2023-07-25 21:09:07'),
(27, 'updated', 11, 'App\\Ticket', 6, '{\"id\":11,\"title\":\"aldi@uangme.com\",\"content\":null,\"author_name\":null,\"author_email\":null,\"created_at\":\"2023-07-26T03:02:00.000000Z\",\"updated_at\":\"2023-07-26T04:09:21.000000Z\",\"deleted_at\":null,\"status_id\":\"1\",\"priority_id\":\"3\",\"category_id\":\"2\",\"assigned_to_user_id\":\"11\",\"request\":\"asd\",\"requestdesc\":\"asd\",\"notifyProduct\":\"YES\",\"attachments\":[],\"media\":[]}', '127.0.0.1', '2023-07-25 21:09:21', '2023-07-25 21:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Collection', '#9efff5', '2023-07-20 00:49:17', '2023-07-23 20:07:34', NULL),
(2, 'Customer Service', '#244462', '2023-07-20 00:49:17', '2023-07-23 20:07:44', NULL),
(3, 'Management', '#a793da', '2023-07-20 00:49:17', '2023-07-23 20:07:51', NULL),
(4, 'Borrower Apps', '#2670d0', '2023-07-23 20:08:11', '2023-07-23 20:08:11', NULL),
(5, 'Lender Apps', '#24e4c6', '2023-07-23 20:08:25', '2023-07-23 20:08:25', NULL),
(6, 'Website', '#19d0ee', '2023-07-23 20:08:33', '2023-07-23 20:08:33', NULL),
(7, 'API', '#ff0769', '2023-07-23 20:08:45', '2023-07-23 20:08:45', NULL),
(8, 'Payment and Order System', '#0818da', '2023-07-23 20:09:01', '2023-07-23 20:09:01', NULL),
(9, 'Matching and Settlement', '#971cee', '2023-07-23 20:09:15', '2023-07-23 20:09:15', NULL),
(10, 'Others', '#5a3f3f', '2023-07-23 20:09:27', '2023-07-23 20:09:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author_name`, `author_email`, `comment_text`, `created_at`, `updated_at`, `deleted_at`, `ticket_id`, `user_id`) VALUES
(1, 'Admin', 'admin@admin.com', 'asd', '2023-07-24 00:41:22', '2023-07-24 00:41:22', NULL, 1, 1),
(2, 'Admin', 'admin@admin.com', 'UangMe', '2023-07-24 00:41:45', '2023-07-24 00:41:45', NULL, 1, 1),
(3, 'Christian Andre', 'christianandre@uangme.com', 'Will assign to Annisa because she responsible with this', '2023-07-24 03:08:19', '2023-07-24 03:08:19', NULL, 9, 6),
(4, 'QA', 'qa@uangme.com', 'Approved', '2023-07-25 19:15:04', '2023-07-25 19:15:04', NULL, 9, 12);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Ticket', 9, 'f43a72db-494b-4498-a46f-dc53c56875f8', 'attachments', '64be456cccc58_Screenshot_3', '64be456cccc58_Screenshot_3.png', 'image/png', 'public', 'public', 87492, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2023-07-24 02:34:02', '2023-07-24 02:34:07'),
(2, 'App\\Ticket', 10, 'e0be7e65-ecd5-482e-90a7-a27ba11bdb74', 'attachments', '64be506f065df_Screenshot_3', '64be506f065df_Screenshot_3.png', 'image/png', 'public', 'public', 87492, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2023-07-24 03:20:51', '2023-07-24 03:20:51');

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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_11_09_000001_create_permissions_table', 1),
(8, '2019_11_09_000002_create_roles_table', 1),
(9, '2019_11_09_000003_create_users_table', 1),
(10, '2019_11_09_000004_create_statuses_table', 1),
(11, '2019_11_09_000005_create_priorities_table', 1),
(12, '2019_11_09_000006_create_categories_table', 1),
(13, '2019_11_09_000007_create_tickets_table', 1),
(14, '2019_11_09_000008_create_comments_table', 1),
(15, '2019_11_09_000009_create_permission_role_pivot_table', 1),
(16, '2019_11_09_000010_create_role_user_pivot_table', 1),
(17, '2019_11_09_000011_add_relationship_fields_to_tickets_table', 1),
(18, '2019_11_09_000012_add_relationship_fields_to_comments_table', 1),
(19, '2019_11_09_000013_create_audit_logs_table', 1),
(20, '2019_11_10_000001_create_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'status_create', NULL, NULL, NULL),
(18, 'status_edit', NULL, NULL, NULL),
(19, 'status_show', NULL, NULL, NULL),
(20, 'status_delete', NULL, NULL, NULL),
(21, 'status_access', NULL, NULL, NULL),
(22, 'priority_create', NULL, NULL, NULL),
(23, 'priority_edit', NULL, NULL, NULL),
(24, 'priority_show', NULL, NULL, NULL),
(25, 'priority_delete', NULL, NULL, NULL),
(26, 'priority_access', NULL, NULL, NULL),
(27, 'category_create', NULL, NULL, NULL),
(28, 'category_edit', NULL, NULL, NULL),
(29, 'category_show', NULL, NULL, NULL),
(30, 'category_delete', NULL, NULL, NULL),
(31, 'category_access', NULL, NULL, NULL),
(32, 'ticket_create', NULL, NULL, NULL),
(33, 'ticket_edit', NULL, NULL, NULL),
(34, 'ticket_show', NULL, NULL, NULL),
(35, 'ticket_delete', NULL, NULL, NULL),
(36, 'ticket_access', NULL, NULL, NULL),
(37, 'comment_create', NULL, NULL, NULL),
(38, 'comment_edit', NULL, NULL, NULL),
(39, 'comment_show', NULL, NULL, NULL),
(40, 'comment_delete', NULL, NULL, NULL),
(41, 'comment_access', NULL, NULL, NULL),
(42, 'audit_log_show', NULL, NULL, NULL),
(43, 'audit_log_access', NULL, NULL, NULL),
(44, 'dashboard_access', NULL, NULL, NULL),
(45, 'user_request', '2023-07-23 21:04:29', '2023-07-23 21:04:29', NULL),
(46, 'user_request_create', '2023-07-25 00:12:48', '2023-07-25 00:12:48', NULL),
(47, 'code_review_access', '2023-07-25 00:12:56', '2023-07-25 00:12:56', NULL),
(48, 'approval_access', '2023-07-25 19:18:43', '2023-07-25 19:18:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(2, 33),
(2, 34),
(2, 36),
(2, 32),
(1, 45),
(2, 35),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 9),
(2, 14),
(2, 19),
(3, 32),
(3, 34),
(3, 36),
(3, 42),
(4, 32),
(4, 34),
(4, 35),
(4, 36),
(4, 44),
(4, 33),
(1, 47),
(5, 47),
(5, 33),
(5, 34),
(1, 48),
(5, 48);

-- --------------------------------------------------------

--
-- Table structure for table `priorities`
--

CREATE TABLE `priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priorities`
--

INSERT INTO `priorities` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Low', '#04bd59', '2023-07-20 00:49:17', '2023-07-24 19:12:00', NULL),
(2, 'Medium', '#e7f54e', '2023-07-20 00:49:17', '2023-07-24 19:11:50', NULL),
(3, 'High', '#ff0000', '2023-07-20 00:49:17', '2023-07-24 19:11:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'Developer', NULL, '2023-07-24 02:37:43', NULL),
(3, 'User', '2023-07-24 01:12:30', '2023-07-24 01:12:30', NULL),
(4, 'Product Manager', '2023-07-24 02:35:20', '2023-07-24 02:35:20', NULL),
(5, 'Quality Assurance', '2023-07-25 03:01:55', '2023-07-25 03:01:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 4),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(12, 5),
(13, 3),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Open', '#09bb39', '2023-07-20 00:49:17', '2023-07-20 00:49:17', NULL),
(2, 'Closed', '#0057ff', '2023-07-20 00:49:17', '2023-07-24 19:12:57', NULL),
(3, 'PM Approve', '#f20715', '2023-07-24 02:30:04', '2023-07-24 02:30:04', NULL),
(4, 'Code Review by QA', '#00fa19', '2023-07-25 00:49:18', '2023-07-25 00:49:18', NULL),
(5, 'Approved by QA', '#1127f0', '2023-07-25 03:05:05', '2023-07-25 03:05:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `assigned_to_user_id` int(10) UNSIGNED DEFAULT NULL,
  `request` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestdesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifyProduct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `content`, `author_name`, `author_email`, `created_at`, `updated_at`, `deleted_at`, `status_id`, `priority_id`, `category_id`, `assigned_to_user_id`, `request`, `requestdesc`, `notifyProduct`) VALUES
(1, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:29:08', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(2, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:29:29', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(3, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:29:39', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(4, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:30:50', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(5, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:31:50', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(6, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:32:05', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(7, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:38:15', '2023-07-24 02:33:10', '2023-07-24 02:33:10', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(8, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 00:39:00', '2023-07-24 02:32:57', '2023-07-24 02:32:57', 1, 3, 1, NULL, 'Collection', 'collection desc', 'YES'),
(9, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 02:33:44', '2023-07-25 19:15:14', NULL, 5, 3, 3, 9, 'Change guangong', 'guangong system', 'YES'),
(10, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-24 03:20:46', '2023-07-25 03:05:21', NULL, 5, 3, 2, 7, 'CS', 'CS team detail', 'YES'),
(11, 'aldi@uangme.com', NULL, NULL, NULL, '2023-07-25 20:02:00', '2023-07-25 21:09:21', NULL, 1, 3, 2, 11, 'asd', 'asd', 'YES'),
(12, 'admin@admin.com', NULL, NULL, NULL, '2023-07-25 21:07:46', '2023-07-25 21:07:46', NULL, 3, 1, 2, 11, 'asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$UnLIBQB1uZZC1r5msFWTPuZCZsMBUpZINpJ48G5FmMxz6yVGP83rO', NULL, NULL, NULL, NULL),
(2, 'Agent 1', 'agent1@agent1.com', NULL, '$2y$10$UnLIBQB1uZZC1r5msFWTPuZCZsMBUpZINpJ48G5FmMxz6yVGP83rO', NULL, NULL, NULL, NULL),
(3, 'Agent 2', 'agent2@agent2.com', NULL, '$2y$10$UnLIBQB1uZZC1r5msFWTPuZCZsMBUpZINpJ48G5FmMxz6yVGP83rO', NULL, NULL, NULL, NULL),
(4, 'Agent 3', 'agent3@agent3.com', NULL, '$2y$10$UnLIBQB1uZZC1r5msFWTPuZCZsMBUpZINpJ48G5FmMxz6yVGP83rO', NULL, NULL, NULL, NULL),
(5, 'Aldi', 'aldi@uangme.com', NULL, '$2y$10$7D6/PWmoMUFHBva5N6wo5.ljhjAkyVrdL7xuaT3xkDUrhd/eJ7rIm', NULL, '2023-07-23 20:11:00', '2023-07-23 20:11:00', NULL),
(6, 'Christian Andre', 'christianandre@uangme.com', NULL, '$2y$10$W/WaLmzvXfWl43NnFKbNnuusCKE3GqxWCiieK0sitYqOMUy6wdI6C', NULL, '2023-07-24 02:35:46', '2023-07-24 02:35:46', NULL),
(7, 'Annisa Sidiutami', 'annisa.sidiutami@uangme.com', NULL, '$2y$10$L6aIe3g73SakvoOU4EC64.o.XOoI.cKuLH4cbBNk2CNW/ItgH0aS.', NULL, '2023-07-24 02:37:12', '2023-07-24 03:29:22', NULL),
(8, 'Raka Adli Pramudita', 'raka@uangme.com', NULL, '$2y$10$.nymXkaw4BD5Mf8SHk.qPuCuasy3n0ySiLb1340K93MHOFka0EHJm', NULL, '2023-07-24 02:37:29', '2023-07-24 02:37:29', NULL),
(9, 'Felisia Handayani', 'handayanifelisia@uangme.com', NULL, '$2y$10$kPlwDUD8lCxJfF0GGmUtxeevdTVTpge/ItzzRk4qxELgF4YDE/YrS', NULL, '2023-07-24 02:38:52', '2023-07-24 03:29:42', NULL),
(10, 'Hezron', 'hezron@uangme.com', NULL, '$2y$10$aX0Bb1N7ntCTAuyJS4biW.hdfOOntQfJxh9B8E1.pnI/esdbk0/Ni', NULL, '2023-07-24 02:41:57', '2023-07-24 02:41:57', NULL),
(11, 'Marvel Sugi Hartono', 'marvel@uangme.com', NULL, '$2y$10$ialIZChlFKQk94rNsv377.ZsvSbHQaJyhSC1eJ33Ocd729oFEnpLS', NULL, '2023-07-24 03:23:31', '2023-07-24 03:23:31', NULL),
(12, 'QA', 'qa@uangme.com', NULL, '$2y$10$2x8ScKGCTxpnI5ruK42D9ug3USj513m9b2n/5HagDQwxVewZcVQ6m', NULL, '2023-07-25 03:02:16', '2023-07-25 03:02:16', NULL),
(13, 'Fadhita', 'fadhita@uangme.com', NULL, '$2y$10$dUeIocMijEbe41naB6SDVuk/TR2K6u7LvK0PTzJ10GkUi8yrj.v56', NULL, '2023-07-25 19:40:50', '2023-07-25 19:40:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE `user_request` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Product Manager', '2023-07-23 23:53:49', '2023-07-23 23:53:49', NULL),
(2, 'Collection Team', '2023-07-23 23:53:56', '2023-07-23 23:53:56', NULL),
(3, 'QA Team', '2023-07-23 23:54:05', '2023-07-23 23:54:05', NULL),
(4, 'Product Team', '2023-07-23 23:54:11', '2023-07-23 23:54:11', NULL),
(5, 'CS Team', '2023-07-23 23:54:16', '2023-07-23 23:54:16', NULL),
(6, 'Digital Marketing Team', '2023-07-23 23:54:22', '2023-07-23 23:54:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval_ticket`
--
ALTER TABLE `approval_ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_fk_583774` (`ticket_id`),
  ADD KEY `user_fk_583777` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_583549` (`role_id`),
  ADD KEY `permission_id_fk_583549` (`permission_id`);

--
-- Indexes for table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_583558` (`user_id`),
  ADD KEY `role_id_fk_583558` (`role_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_fk_583763` (`status_id`),
  ADD KEY `priority_fk_583764` (`priority_id`),
  ADD KEY `category_fk_583765` (`category_id`),
  ADD KEY `assigned_to_user_fk_583768` (`assigned_to_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_request`
--
ALTER TABLE `user_request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approval_ticket`
--
ALTER TABLE `approval_ticket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_request`
--
ALTER TABLE `user_request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `ticket_fk_583774` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `user_fk_583777` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_583549` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_583549` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_583558` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_583558` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `assigned_to_user_fk_583768` FOREIGN KEY (`assigned_to_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `category_fk_583765` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `priority_fk_583764` FOREIGN KEY (`priority_id`) REFERENCES `priorities` (`id`),
  ADD CONSTRAINT `status_fk_583763` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
