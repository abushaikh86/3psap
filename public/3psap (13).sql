-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2024 at 01:23 PM
-- Server version: 5.7.40
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3psap`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

DROP TABLE IF EXISTS `academic_year`;
CREATE TABLE IF NOT EXISTS `academic_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_string` varchar(100) DEFAULT NULL,
  `year_id` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `year_string`, `year_id`, `created_at`, `updated_at`) VALUES
(7, NULL, '2020', '2023-12-06 17:08:45', '2023-12-06 17:09:27'),
(8, NULL, '2021', '2023-12-06 17:09:29', '2023-12-06 17:09:29'),
(9, NULL, '2023', '2023-12-06 17:09:33', '2023-12-06 17:09:33'),
(10, NULL, '2024', '2023-12-06 17:09:36', '2023-12-06 17:09:36'),
(11, NULL, '2025', '2023-12-06 17:09:40', '2023-12-06 17:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `session_id` text,
  `module` varchar(255) DEFAULT NULL,
  `action` text,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=830 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `user_name`, `session_id`, `module`, `action`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'test admin', 'AvNvHXXxQFuWIpbpr92UIt3XNs1f2R78YwghPMUb', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,82,83,84,93,94,96,97,102,103,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,24,54\"', '2023-11-16 08:01:04', '2023-11-16 08:01:04', NULL),
(2, '1', 'test admin', 'AvNvHXXxQFuWIpbpr92UIt3XNs1f2R78YwghPMUb', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> expiry_date=\"2024-09-12\"', '2023-11-16 08:17:55', '2023-11-16 08:17:55', NULL),
(3, '1', 'test admin', 'AvNvHXXxQFuWIpbpr92UIt3XNs1f2R78YwghPMUb', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> hsncode_id=\"876546\" batch=\"Batch 2\" expiry_date=\"2024-09-11\" layer_pallet=\"7\"', '2021-11-16 08:19:33', '2023-11-16 08:24:20', NULL),
(4, '1', 'test admin', 'AvNvHXXxQFuWIpbpr92UIt3XNs1f2R78YwghPMUb', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"6\"', '2023-11-16 08:24:57', '2023-11-16 08:24:57', NULL),
(5, '1', 'test admin', 'AvNvHXXxQFuWIpbpr92UIt3XNs1f2R78YwghPMUb', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"7\"', '2023-11-16 08:25:38', '2023-11-16 08:25:38', NULL),
(6, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>68603592 Change=> layer_pallet=\"6\"', '2023-11-16 10:32:48', '2023-11-16 10:32:48', NULL),
(7, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"6\"', '2023-11-16 10:33:07', '2023-11-16 10:33:07', NULL),
(8, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"8\"', '2023-11-16 10:33:15', '2023-11-16 10:33:15', NULL),
(9, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Created', 'Product Created: Consequatur reprehen', '2023-11-16 11:20:24', '2023-11-16 11:20:24', NULL),
(10, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>Consequatur reprehen Change=> product_thumb=\"1700133640.png\"', '2023-11-16 11:20:40', '2023-11-16 11:20:40', NULL),
(11, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Deleted', 'Product Deleted: Consequatur reprehen', '2023-11-16 11:25:28', '2023-11-16 11:25:28', NULL),
(12, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"6\"', '2023-11-16 11:36:16', '2023-11-16 11:36:16', NULL),
(13, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Created', 'Product Created: Odit ad dolorem sunt', '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(14, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Deleted', 'Product Deleted: Odit ad dolorem sunt', '2023-11-16 11:39:33', '2023-11-16 11:39:33', NULL),
(15, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Created', 'Product Created: Fugiat qui non cons', '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(16, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Deleted', 'Product Deleted: Fugiat qui non cons', '2023-11-16 11:41:00', '2023-11-16 11:41:00', NULL),
(17, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> layer_pallet=\"10\"', '2023-11-16 11:53:42', '2023-11-16 11:53:42', NULL),
(18, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Created', 'Product Created: Culpa omnis eligend', '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(19, '1', 'test admin', 'IQmz6VkfarcQ07DE4akNU44KM5XrgZqGok0daoIN', 'Products', 'Product Deleted', 'Product Deleted: Culpa omnis eligend', '2023-11-16 12:16:53', '2023-11-16 12:16:53', NULL),
(20, '1', 'test admin', 'F25YIVbcLW7WNQ1RKdaMrn4JbIobBPdraTgJZXSl', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,24,54\"', '2023-11-17 04:49:22', '2023-11-17 04:49:22', NULL),
(21, '1', 'test admin', '3OdELageYEm0SOh50vsOU1xnMhBYktogDiOTSkEP', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Rana Obrien', '2023-11-17 06:43:25', '2023-11-17 06:43:25', NULL),
(22, '1', 'test admin', '3OdELageYEm0SOh50vsOU1xnMhBYktogDiOTSkEP', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-11-17 06:44:56', '2023-11-17 06:44:56', NULL),
(23, '1', 'test admin', '3OdELageYEm0SOh50vsOU1xnMhBYktogDiOTSkEP', 'Beat Master', 'Beat Created', 'Beat Created: Ralph Tyler', '2023-11-17 06:45:22', '2023-11-17 06:45:22', NULL),
(24, '1', 'test admin', '3OdELageYEm0SOh50vsOU1xnMhBYktogDiOTSkEP', 'Beat Master', 'Beat Deleted', 'Beat Deleted: Ralph Tyler', '2023-11-17 06:45:26', '2023-11-17 06:45:26', NULL),
(25, '1', 'test admin', 'ImOEqY3UyWSxP0vb5MSpHMvavshF2N4JIAdj7sTJ', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-11-17 09:36:42', '2023-11-17 09:36:42', NULL),
(26, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Jerry Koch', '2023-11-20 04:53:04', '2023-11-20 04:53:04', NULL),
(27, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: Jasper Larson Change=> bp_address_name=\"Ruth Calhoun1\" pin_code=\"997875\" district=\"BISHNUPUR\"', '2023-11-20 04:57:58', '2023-11-20 04:57:58', NULL),
(28, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-11-20 04:58:06', '2023-11-20 04:58:06', NULL),
(29, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Colt Mckinney', '2023-11-20 05:05:09', '2023-11-20 05:05:09', NULL),
(30, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-11-20 05:07:34', '2023-11-20 05:07:34', NULL),
(31, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-11-20 05:07:57', '2023-11-20 05:07:57', NULL),
(32, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Zephr Chan', '2023-11-20 05:12:48', '2023-11-20 05:12:48', NULL),
(33, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Veda Moon', '2023-11-20 05:13:30', '2023-11-20 05:13:30', NULL),
(34, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Oscar Fernandez', '2023-11-20 05:14:58', '2023-11-20 05:14:58', NULL),
(35, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Deleted', 'Bussiness Partner Address Deleted: Oscar Fernandez', '2023-11-20 05:15:00', '2023-11-20 05:15:00', NULL),
(36, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: April Randall', '2023-11-20 05:15:20', '2023-11-20 05:15:20', NULL),
(37, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Deleted', 'Bussiness Partner Address Deleted: April Randall', '2023-11-20 05:15:23', '2023-11-20 05:15:23', NULL),
(38, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Mariko Slater', '2023-11-20 05:16:08', '2023-11-20 05:16:08', NULL),
(39, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Deleted', 'Bussiness Partner Address Deleted: Mariko Slater', '2023-11-20 05:16:11', '2023-11-20 05:16:11', NULL),
(40, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/107', '2023-11-20 07:02:45', '2023-11-20 07:02:45', NULL),
(41, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/106', '2023-11-20 07:02:53', '2023-11-20 07:02:53', NULL),
(42, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> bp_address_name=\"Kausa Mumbra Thane\" district=\"THANE\"', '2023-11-20 09:38:09', '2023-11-20 09:38:09', NULL),
(43, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: KALYAN Change=> bp_address_name=\"KHADAKPADA KALYAN\" district=\"NORTH GOA\"', '2023-11-20 09:38:22', '2023-11-20 09:38:22', NULL),
(44, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: ANDHERI Change=> bp_address_name=\"RAJ NAGAR ANDHERI\" district=\"AHMEDNAGAR\"', '2023-11-20 09:38:31', '2023-11-20 09:38:31', NULL),
(45, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Mona Manning', '2023-11-20 09:43:53', '2023-11-20 09:43:53', NULL),
(46, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> bp_address_name=\"SHIL PHATA MUMBRA\" district=\"AHMEDNAGAR\"', '2023-11-20 10:32:30', '2023-11-20 10:32:30', NULL),
(47, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Order Booking', 'Order Booking Updated', 'Order Booking Updated: Name=>3PSAP/22-23/10 Change=> bill_to=\"126\" ship_to=\"183\" bill_date=\"2023-11-20\" party_id=\"124\" party_name=\"IRFAN PATHAN\" posting_date=\"2023-11-20\" contact_person=\"77\" bill_to_gst_no=\"SDGDF546554\"', '2023-11-20 10:39:24', '2023-11-20 10:39:24', NULL),
(48, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Order Booking', 'Order Booking Updated', 'Order Booking Updated: Name=>3PSAP/22-23/10 Change=> party_name=\"IRFAN PATHAN\"', '2023-11-20 10:39:30', '2023-11-20 10:39:30', NULL),
(49, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Order Fulfilment', 'Order Fulfilment Deleted', 'Order Fulfilment Deleted: 3PSAP/22-23/10', '2023-11-20 11:06:15', '2023-11-20 11:06:15', NULL),
(50, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'Order Fulfillment', 'Order Fulfillment Created', 'Order Fulfillment Created: 3PSAP/22-23/10', '2023-11-20 11:09:39', '2023-11-20 11:09:39', NULL),
(51, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Deleted', 'A/R Invoice Deleted: 3PSAP/22-23/10', '2023-11-20 11:13:57', '2023-11-20 11:13:57', NULL),
(52, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Created', 'A/R Invoice Created: 3PSAP/22-23/10', '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(53, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Deleted', 'A/R Invoice Deleted: 3PSAP/22-23/10', '2023-11-20 11:14:05', '2023-11-20 11:14:05', NULL),
(54, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Created', 'A/R Invoice Created: 3PSAP/22-23/10', '2023-11-20 11:14:27', '2023-11-20 11:14:27', NULL),
(55, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Updated', 'A/R Invoice Updated: Name=>3PSAP/22-23/10 Change=> trans_type=\"zxcgdf\" ship_from=\"127\" remarks=\"Est id vero hic cufsdg\"', '2023-11-20 11:40:25', '2023-11-20 11:40:25', NULL),
(56, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/R Invoice', 'A/R Invoice Updated', 'A/R Invoice Updated: Name=>3PSAP/22-23/10 Change=> ship_from=\"183\"', '2023-11-20 11:40:35', '2023-11-20 11:40:35', NULL),
(57, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/107 Change=> bill_date=\"2023-11-20\" party_name=\"USAMA SHAIKH\" posting_date=\"2023-11-20\"', '2023-11-20 11:48:50', '2023-11-20 11:48:50', NULL),
(58, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/107 Change=> bill_date=\"2023-11-20\" place_of_supply=\"test\" posting_date=\"2023-11-20\"', '2023-11-20 11:54:43', '2023-11-20 11:54:43', NULL),
(59, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/106', '2023-11-20 11:59:12', '2023-11-20 11:59:12', NULL),
(60, '1', 'test admin', 'oHmpvCruJilN2PbiBTdxaXSzRwQnV8UBrgOoTGls', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/107', '2023-11-20 11:59:15', '2023-11-20 11:59:15', NULL),
(61, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/108', '2023-11-21 08:21:29', '2023-11-21 08:21:29', NULL),
(62, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/107 Change=> bill_date=\"2023-11-21\" posting_date=\"2023-11-21\"', '2023-11-21 08:24:22', '2023-11-21 08:24:22', NULL),
(63, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/107 Change=> trans_type=\"teset\" bill_date=\"2023-11-21\" posting_date=\"2023-11-21\"', '2023-11-21 08:27:05', '2023-11-21 08:27:05', NULL),
(64, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'Order Booking', 'Order Booking Updated', 'Order Booking Updated: Name=>3PSAP/22-23/10 Change=> bill_date=\"2023-11-21\" party_name=\"IRFAN PATHAN\" posting_date=\"2023-11-21\"', '2023-11-21 08:29:43', '2023-11-21 08:29:43', NULL),
(65, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'Order Fulfilment', 'Order Fulfilment Updated', 'Order Fulfilment Updated: Name=>3PSAP/22-23/10 Change=> bill_date=\"2023-11-21\" posting_date=\"2023-11-21\"', '2023-11-21 08:29:54', '2023-11-21 08:29:54', NULL),
(66, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'A/R Invoice', 'A/R Invoice Updated', 'A/R Invoice Updated: Name=>3PSAP/22-23/10 Change=> bill_date=\"2023-11-21\" posting_date=\"2023-11-21\"', '2023-11-21 08:30:08', '2023-11-21 08:30:08', NULL),
(67, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/107 Change=> vendor_inv_no=\"4554\"', '2023-11-21 08:42:48', '2023-11-21 08:42:48', NULL),
(68, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/107', '2023-11-21 08:44:02', '2023-11-21 08:44:02', NULL),
(69, '1', 'test admin', '8ZoMrAiLC6BOMU7wlTIlf5IjDrkAVfVbxppQvKjp', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/107', '2023-11-21 08:44:25', '2023-11-21 08:44:25', NULL),
(70, '1', 'test admin', 'MhnJ4qkfJQm2XKSmEA7a9gCVlJcwlRq9byK6Rz1S', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-21 12:41:40', '2023-11-21 12:41:40', NULL),
(71, '1', 'test admin', 'MhnJ4qkfJQm2XKSmEA7a9gCVlJcwlRq9byK6Rz1S', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-21 12:46:47', '2023-11-21 12:46:47', NULL),
(72, '1', 'test admin', 'MhnJ4qkfJQm2XKSmEA7a9gCVlJcwlRq9byK6Rz1S', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-21 12:51:21', '2023-11-21 12:51:21', NULL),
(73, '1', 'test admin', 'MhnJ4qkfJQm2XKSmEA7a9gCVlJcwlRq9byK6Rz1S', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/107 Change=> is_bill_booking_done=\"1\"', '2023-11-21 12:53:15', '2023-11-21 12:53:15', NULL),
(74, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/107 Change=> bill_date=\"2023-11-22\" posting_date=\"2023-11-22\"', '2023-11-22 05:07:42', '2023-11-22 05:07:42', NULL),
(75, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>123-5 Change=> invoice_ref_date=\"2023-11-22\" series_no=\"3\" doc_no=\"123-5\" posting_date=\"2023-11-22\"', '2023-11-22 05:11:30', '2023-11-22 05:11:30', NULL),
(76, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: VASHI Change=> district=\"AHMEDNAGAR\"', '2023-11-22 06:36:42', '2023-11-22 06:36:42', NULL),
(77, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: NOIDA Change=> bp_address_name=\"LOTUS PARK NOIDA\" district=\"BAGALKOT\" state=\"KARNATAKA\"', '2023-11-22 06:37:25', '2023-11-22 06:37:25', NULL),
(78, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/109', '2023-11-22 06:39:13', '2023-11-22 06:39:13', NULL),
(79, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 06:39:21', '2023-11-22 06:39:21', NULL),
(80, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 07:25:34', '2023-11-22 07:25:34', NULL),
(81, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 07:25:38', '2023-11-22 07:25:38', NULL),
(82, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 07:46:03', '2023-11-22 07:46:03', NULL),
(83, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 08:53:06', '2023-11-22 08:53:06', NULL),
(84, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 08:53:15', '2023-11-22 08:53:15', NULL),
(85, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"asdrgg\" place_of_supply=\"asdg\"', '2023-11-22 08:57:59', '2023-11-22 08:57:59', NULL),
(86, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:07:14', '2023-11-22 09:07:14', NULL),
(87, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:07:14', '2023-11-22 09:07:14', NULL),
(88, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:07:15', '2023-11-22 09:07:15', NULL),
(89, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 09:07:16', '2023-11-22 09:07:16', NULL),
(90, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:07:17', '2023-11-22 09:07:17', NULL),
(91, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 09:08:56', '2023-11-22 09:08:56', NULL),
(92, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"65446544\" place_of_supply=\"545\"', '2023-11-22 09:09:08', '2023-11-22 09:09:08', NULL),
(93, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:11:49', '2023-11-22 09:11:49', NULL),
(94, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 09:12:05', '2023-11-22 09:12:05', NULL),
(95, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 09:12:08', '2023-11-22 09:12:08', NULL),
(96, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"654654\" place_of_supply=\"sdu\"', '2023-11-22 09:12:15', '2023-11-22 09:12:15', NULL),
(97, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:13:45', '2023-11-22 09:13:45', NULL),
(98, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 09:13:52', '2023-11-22 09:13:52', NULL),
(99, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 09:13:59', '2023-11-22 09:13:59', NULL),
(100, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:14:26', '2023-11-22 09:14:26', NULL),
(101, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:14:26', '2023-11-22 09:14:26', NULL),
(102, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 09:14:41', '2023-11-22 09:14:41', NULL),
(103, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 09:14:44', '2023-11-22 09:14:44', NULL),
(104, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"654654\" place_of_supply=\"dfhsfg\"', '2023-11-22 09:14:50', '2023-11-22 09:14:50', NULL),
(105, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 09:15:27', '2023-11-22 09:15:27', NULL),
(106, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 09:15:28', '2023-11-22 09:15:28', NULL),
(107, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 09:15:34', '2023-11-22 09:15:34', NULL),
(108, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"65465\" place_of_supply=\"sdgsdft\"', '2023-11-22 09:15:39', '2023-11-22 09:15:39', NULL),
(109, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"123\"', '2023-11-22 10:22:03', '2023-11-22 10:22:03', NULL),
(110, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:22:57', '2023-11-22 10:22:57', NULL),
(111, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:39:15', '2023-11-22 10:39:15', NULL),
(112, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:46:01', '2023-11-22 10:46:01', NULL),
(113, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:46:54', '2023-11-22 10:46:54', NULL),
(114, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-22 10:47:18', '2023-11-22 10:47:18', NULL),
(115, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:47:48', '2023-11-22 10:47:48', NULL),
(116, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:51:08', '2023-11-22 10:51:08', NULL),
(117, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"654654\"', '2023-11-22 10:54:28', '2023-11-22 10:54:28', NULL),
(118, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:54:47', '2023-11-22 10:54:47', NULL),
(119, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:55:00', '2023-11-22 10:55:00', NULL),
(120, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:55:01', '2023-11-22 10:55:01', NULL),
(121, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 10:55:02', '2023-11-22 10:55:02', NULL),
(122, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/107', '2023-11-22 10:55:05', '2023-11-22 10:55:05', NULL),
(123, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-22 10:55:09', '2023-11-22 10:55:09', NULL),
(124, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/107', '2023-11-22 10:55:09', '2023-11-22 10:55:09', NULL),
(125, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: 3PSAP/22-23/108', '2023-11-22 10:55:11', '2023-11-22 10:55:11', NULL),
(126, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: 3PSAP/22-23/107', '2023-11-22 10:55:12', '2023-11-22 10:55:12', NULL),
(127, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 10:55:31', '2023-11-22 10:55:31', NULL),
(128, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 10:55:41', '2023-11-22 10:55:41', NULL),
(129, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:56:23', '2023-11-22 10:56:23', NULL),
(130, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 10:56:23', '2023-11-22 10:56:23', NULL),
(131, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 10:56:43', '2023-11-22 10:56:43', NULL),
(132, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 10:58:18', '2023-11-22 10:58:18', NULL),
(133, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"789\"', '2023-11-22 10:58:29', '2023-11-22 10:58:29', NULL),
(134, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:59:17', '2023-11-22 10:59:17', NULL),
(135, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:59:17', '2023-11-22 10:59:17', NULL),
(136, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 10:59:18', '2023-11-22 10:59:18', NULL),
(137, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 10:59:19', '2023-11-22 10:59:19', NULL),
(138, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 11:01:42', '2023-11-22 11:01:42', NULL),
(139, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 11:02:03', '2023-11-22 11:02:03', NULL),
(140, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:02:31', '2023-11-22 11:02:31', NULL),
(141, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"987\"', '2023-11-22 11:02:46', '2023-11-22 11:02:46', NULL),
(142, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:04:39', '2023-11-22 11:04:39', NULL),
(143, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:04:40', '2023-11-22 11:04:40', NULL),
(144, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:04:40', '2023-11-22 11:04:40', NULL),
(145, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 11:04:42', '2023-11-22 11:04:42', NULL),
(146, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 11:05:15', '2023-11-22 11:05:15', NULL),
(147, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 11:05:29', '2023-11-22 11:05:29', NULL),
(148, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:05:55', '2023-11-22 11:05:55', NULL),
(149, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"789\"', '2023-11-22 11:06:13', '2023-11-22 11:06:13', NULL),
(150, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 11:09:13', '2023-11-22 11:09:13', NULL),
(151, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 11:09:25', '2023-11-22 11:09:25', NULL),
(152, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:09:41', '2023-11-22 11:09:41', NULL),
(153, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:10:56', '2023-11-22 11:10:56', NULL),
(154, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:11:10', '2023-11-22 11:11:10', NULL),
(155, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 11:11:11', '2023-11-22 11:11:11', NULL),
(156, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 11:11:15', '2023-11-22 11:11:15', NULL),
(157, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 11:11:26', '2023-11-22 11:11:26', NULL),
(158, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:11:31', '2023-11-22 11:11:31', NULL),
(159, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:12:30', '2023-11-22 11:12:30', NULL),
(160, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:12:31', '2023-11-22 11:12:31', NULL),
(161, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-22 11:12:32', '2023-11-22 11:12:32', NULL),
(162, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-22 11:12:35', '2023-11-22 11:12:35', NULL),
(163, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/109 Change=> vendor_inv_no=\"123\" place_of_supply=\"bhiwandi\"', '2023-11-22 11:12:42', '2023-11-22 11:12:42', NULL),
(164, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:12:49', '2023-11-22 11:12:49', NULL),
(165, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-22 11:18:44', '2023-11-22 11:18:44', NULL),
(166, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> vendor_inv_no=\"456\"', '2023-11-22 11:22:54', '2023-11-22 11:22:54', NULL),
(167, '1', 'test admin', 'Gy03TceRK9tpvoIy68WpX1yvJ4VRJwZCQ93hPU5U', 'A/R Invoice', 'A/R Invoice Created', 'A/R Invoice Created: 3PSAP/22-23/10', '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL),
(168, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:31:59', '2023-11-23 04:31:59', NULL),
(169, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:35:55', '2023-11-23 04:35:55', NULL),
(170, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:36:19', '2023-11-23 04:36:19', NULL),
(171, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/110 Change=> is_bill_booking_done=\"1\"', '2023-11-23 04:36:41', '2023-11-23 04:36:41', NULL),
(172, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:40:40', '2023-11-23 04:40:40', NULL),
(173, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:40:49', '2023-11-23 04:40:49', NULL),
(174, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:41:00', '2023-11-23 04:41:00', NULL),
(175, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:41:00', '2023-11-23 04:41:00', NULL),
(176, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:45:28', '2023-11-23 04:45:28', NULL),
(177, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:46:34', '2023-11-23 04:46:34', NULL),
(178, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:47:15', '2023-11-23 04:47:15', NULL),
(179, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 04:47:17', '2023-11-23 04:47:17', NULL),
(180, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-23 04:47:34', '2023-11-23 04:47:34', NULL),
(181, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-23 05:06:15', '2023-11-23 05:06:15', NULL),
(182, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/110 Change=> is_bill_booking_done=\"1\"', '2023-11-23 05:06:33', '2023-11-23 05:06:33', NULL),
(183, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-23 06:39:26', '2023-11-23 06:39:26', NULL),
(184, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-23 06:39:28', '2023-11-23 06:39:28', NULL),
(185, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-23 06:41:06', '2023-11-23 06:41:06', NULL),
(186, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'A/P Invoice', 'A/P Invoice Updated', 'A/P Invoice Updated: Name=>3PSAP/22-23/110 Change=> is_bill_booking_done=\"1\"', '2023-11-23 06:41:24', '2023-11-23 06:41:24', NULL),
(187, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-11-23 06:50:29', '2023-11-23 06:50:29', NULL),
(188, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>123-6 Change=> invoice_ref_date=\"2023-11-23\" series_no=\"3\" doc_no=\"123-6\" posting_date=\"2023-11-23\"', '2023-11-23 06:51:08', '2023-11-23 06:51:08', NULL),
(189, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 123-6', '2023-11-23 07:22:56', '2023-11-23 07:22:56', NULL),
(190, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 123-6', '2023-11-23 07:24:01', '2023-11-23 07:24:01', NULL),
(191, '1', 'test admin', 'uyE2KRHNd9LC4iouW8Y0wUTATN8D1FjGLIroMN9E', 'Banking Payment', 'Banking Payment Deleted', 'Banking Payment Deleted: 123-6', '2023-11-23 07:24:13', '2023-11-23 07:24:13', NULL),
(192, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:02:58', '2023-11-27 09:02:58', NULL),
(193, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-27 09:03:21', '2023-11-27 09:03:21', NULL),
(194, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/110', '2023-11-27 09:03:23', '2023-11-27 09:03:23', NULL),
(195, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:03:26', '2023-11-27 09:03:26', NULL),
(196, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:03:32', '2023-11-27 09:03:32', NULL),
(197, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:20:21', '2023-11-27 09:20:21', NULL),
(198, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:20:47', '2023-11-27 09:20:47', NULL),
(199, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:21:45', '2023-11-27 09:21:45', NULL),
(200, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:22:13', '2023-11-27 09:22:13', NULL),
(201, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:24:03', '2023-11-27 09:24:03', NULL),
(202, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:36:31', '2023-11-27 09:36:31', NULL),
(203, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:37:13', '2023-11-27 09:37:13', NULL),
(204, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:44:38', '2023-11-27 09:44:38', NULL),
(205, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:45:10', '2023-11-27 09:45:10', NULL),
(206, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-27 09:52:56', '2023-11-27 09:52:56', NULL),
(207, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-27 09:53:01', '2023-11-27 09:53:01', NULL),
(208, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/110', '2023-11-27 10:07:13', '2023-11-27 10:07:13', NULL),
(209, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/110', '2023-11-27 10:34:18', '2023-11-27 10:34:18', NULL),
(210, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/111', '2023-11-27 10:37:08', '2023-11-27 10:37:08', NULL),
(211, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/112', '2023-11-27 10:39:07', '2023-11-27 10:39:07', NULL),
(212, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/113', '2023-11-27 10:47:34', '2023-11-27 10:47:34', NULL),
(213, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/114', '2023-11-27 10:48:43', '2023-11-27 10:48:43', NULL),
(214, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/115', '2023-11-27 10:55:55', '2023-11-27 10:55:55', NULL),
(215, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/116', '2023-11-27 10:58:33', '2023-11-27 10:58:33', NULL),
(216, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/117', '2023-11-27 11:08:07', '2023-11-27 11:08:07', NULL),
(217, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: 3PSAP/22-23/115', '2023-11-27 11:51:56', '2023-11-27 11:51:56', NULL),
(218, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,57,73,74,53,55,58,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,24,54\"', '2023-11-27 12:39:34', '2023-11-27 12:39:34', NULL);
INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `user_name`, `session_id`, `module`, `action`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(219, '1', 'test admin', 'P8imzxV4AOx6tvWOsLeqObRkfra95mCC3LAHaoKK', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,24,54\"', '2023-11-27 12:39:44', '2023-11-27 12:39:44', NULL),
(220, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-28 04:35:00', '2023-11-28 04:35:00', NULL),
(221, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/109', '2023-11-28 04:35:08', '2023-11-28 04:35:08', NULL),
(222, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/109', '2023-11-28 04:36:36', '2023-11-28 04:36:36', NULL),
(223, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-28 04:46:03', '2023-11-28 04:46:03', NULL),
(224, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: 123-1', '2023-11-28 09:52:03', '2023-11-28 09:52:03', NULL),
(225, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: 456-1', '2023-11-28 09:52:46', '2023-11-28 09:52:46', NULL),
(226, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 789-1', '2023-11-28 10:00:35', '2023-11-28 10:00:35', NULL),
(227, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 789-2', '2023-11-28 10:01:01', '2023-11-28 10:01:01', NULL),
(228, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 456-1', '2023-11-28 10:02:49', '2023-11-28 10:02:49', NULL),
(229, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 456-2', '2023-11-28 10:04:07', '2023-11-28 10:04:07', NULL),
(230, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 789-3', '2023-11-28 10:05:45', '2023-11-28 10:05:45', NULL),
(231, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 123-7', '2023-11-28 10:05:52', '2023-11-28 10:05:52', NULL),
(232, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 123-8', '2023-11-28 10:05:57', '2023-11-28 10:05:57', NULL),
(233, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 123-9', '2023-11-28 10:06:04', '2023-11-28 10:06:04', NULL),
(234, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 789-4', '2023-11-28 10:06:11', '2023-11-28 10:06:11', NULL),
(235, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Created', 'BillBooking Created: 789-5', '2023-11-28 10:06:22', '2023-11-28 10:06:22', NULL),
(236, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 456-1', '2023-11-28 10:09:47', '2023-11-28 10:09:47', NULL),
(237, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 123-9', '2023-11-28 10:10:15', '2023-11-28 10:10:15', NULL),
(238, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 789-3', '2023-11-28 10:10:30', '2023-11-28 10:10:30', NULL),
(239, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 789-1', '2023-11-28 10:10:53', '2023-11-28 10:10:53', NULL),
(240, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 456-2', '2023-11-28 10:11:07', '2023-11-28 10:11:07', NULL),
(241, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 789-4', '2023-11-28 10:11:24', '2023-11-28 10:11:24', NULL),
(242, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 123-4', '2023-11-28 10:11:38', '2023-11-28 10:11:38', NULL),
(243, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 123-2', '2023-11-28 10:11:59', '2023-11-28 10:11:59', NULL),
(244, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 456-2', '2023-11-28 10:12:29', '2023-11-28 10:12:29', NULL),
(245, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: 789-1', '2023-11-28 10:13:01', '2023-11-28 10:13:01', NULL),
(246, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Updated', 'Banking Payment Updated: Name=>123-9 Change=> transaction_type=\"rtgs\" payment_type=\"urgent\"', '2023-11-28 10:14:01', '2023-11-28 10:14:01', NULL),
(247, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'Banking Payment', 'Banking Payment Updated', 'Banking Payment Updated: Name=>123-9 Change=> payment_type=\"regular\" bank=\"100\"', '2023-11-28 10:16:13', '2023-11-28 10:16:13', NULL),
(248, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/118', '2023-11-28 10:17:37', '2023-11-28 10:17:37', NULL),
(249, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/119', '2023-11-28 10:18:16', '2023-11-28 10:18:16', NULL),
(250, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/120', '2023-11-28 10:19:13', '2023-11-28 10:19:13', NULL),
(251, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/121', '2023-11-28 10:20:57', '2023-11-28 10:20:57', NULL),
(252, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/122', '2023-11-28 10:22:29', '2023-11-28 10:22:29', NULL),
(253, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/123', '2023-11-28 10:22:58', '2023-11-28 10:22:58', NULL),
(254, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/124', '2023-11-28 10:25:53', '2023-11-28 10:25:53', NULL),
(255, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/109', '2023-11-28 10:27:37', '2023-11-28 10:27:37', NULL),
(256, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/111', '2023-11-28 10:27:51', '2023-11-28 10:27:51', NULL),
(257, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/112', '2023-11-28 10:27:56', '2023-11-28 10:27:56', NULL),
(258, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/114', '2023-11-28 10:28:03', '2023-11-28 10:28:03', NULL),
(259, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/116', '2023-11-28 10:28:07', '2023-11-28 10:28:07', NULL),
(260, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/117', '2023-11-28 10:28:12', '2023-11-28 10:28:12', NULL),
(261, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/113', '2023-11-28 10:28:23', '2023-11-28 10:28:23', NULL),
(262, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/119', '2023-11-28 10:28:34', '2023-11-28 10:28:34', NULL),
(263, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/118', '2023-11-28 10:28:39', '2023-11-28 10:28:39', NULL),
(264, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/124', '2023-11-28 10:28:55', '2023-11-28 10:28:55', NULL),
(265, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/123', '2023-11-28 10:29:01', '2023-11-28 10:29:01', NULL),
(266, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/122', '2023-11-28 10:29:06', '2023-11-28 10:29:06', NULL),
(267, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/121', '2023-11-28 10:29:11', '2023-11-28 10:29:11', NULL),
(268, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/120', '2023-11-28 10:29:16', '2023-11-28 10:29:16', NULL),
(269, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-28 10:34:16', '2023-11-28 10:34:16', NULL),
(270, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/109', '2023-11-28 10:34:30', '2023-11-28 10:34:30', NULL),
(271, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-28 10:35:53', '2023-11-28 10:35:53', NULL),
(272, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>789-6 Change=> vendor_id=\"122\" invoice_ref_date=\"1973-01-23\" series_no=\"5\" doc_no=\"789-6\" posting_date=\"2023-11-28\"', '2023-11-28 10:36:52', '2023-11-28 10:36:52', NULL),
(273, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>789-7 Change=> vendor_id=\"122\" invoice_ref_date=\"2019-04-21\" series_no=\"5\" doc_no=\"789-7\" posting_date=\"2023-11-28\"', '2023-11-28 10:37:02', '2023-11-28 10:37:02', NULL),
(274, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-28 10:39:58', '2023-11-28 10:39:58', NULL),
(275, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/109', '2023-11-28 10:43:55', '2023-11-28 10:43:55', NULL),
(276, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/109', '2023-11-28 10:43:58', '2023-11-28 10:43:58', NULL),
(277, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-28 10:44:01', '2023-11-28 10:44:01', NULL),
(278, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-28 10:44:04', '2023-11-28 10:44:04', NULL),
(279, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/113', '2023-11-28 10:44:34', '2023-11-28 10:44:34', NULL),
(280, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-28 10:45:10', '2023-11-28 10:45:10', NULL),
(281, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/113', '2023-11-28 10:47:02', '2023-11-28 10:47:02', NULL),
(282, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Deleted', 'A/P Invoice Deleted: 3PSAP/22-23/110', '2023-11-28 10:47:04', '2023-11-28 10:47:04', NULL),
(283, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/122', '2023-11-28 10:47:13', '2023-11-28 10:47:13', NULL),
(284, '1', 'test admin', 'Fx4x4VZoOap1l03d7RsRyQu13KJDOaqDT270Xt14', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: 3PSAP/22-23/110', '2023-11-28 10:47:33', '2023-11-28 10:47:33', NULL),
(285, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: Kalyan', '2023-12-02 06:02:00', '2023-12-02 06:02:00', NULL),
(286, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Created', 'Storage Location Created: WH01', '2023-12-02 06:09:55', '2023-12-02 06:09:55', NULL),
(287, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Deleted', 'Storage Location Deleted: Storage Location 1', '2023-12-02 06:16:00', '2023-12-02 06:16:00', NULL),
(288, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Deleted', 'Storage Location Deleted: Storage Location 2', '2023-12-02 06:16:00', '2023-12-02 06:16:00', NULL),
(289, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bussiness Partner Address', 'Bussiness Partner Address Created', 'Bussiness Partner Address Created: bhiwandi', '2023-12-02 06:17:00', '2023-12-02 06:17:00', NULL),
(290, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: bhiwandi Change=> address_type=\"Ship-To/ Ship-From\"', '2023-12-02 06:17:16', '2023-12-02 06:17:16', NULL),
(291, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Created', 'Storage Location Created: WH02', '2023-12-02 06:17:25', '2023-12-02 06:17:25', NULL),
(292, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Updated', 'Storage Location Updated: Name=>1WH01 Change=> storage_location_name=\"1WH01\"', '2023-12-02 06:29:57', '2023-12-02 06:29:57', NULL),
(293, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Updated', 'Storage Location Updated: Name=>WH01 Change=> storage_location_name=\"WH01\"', '2023-12-02 06:30:05', '2023-12-02 06:30:05', NULL),
(294, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Deleted', 'Storage Location Deleted: WH01', '2023-12-02 06:30:23', '2023-12-02 06:30:23', NULL),
(295, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Storage Location', 'Storage Location Created', 'Storage Location Created: WH01', '2023-12-02 06:30:31', '2023-12-02 06:30:31', NULL),
(296, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-02 06:48:42', '2023-12-02 06:48:42', NULL),
(297, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-02 06:53:06', '2023-12-02 06:53:06', NULL),
(298, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Deleted', 'Bin Management Deleted: ', '2023-12-02 06:56:42', '2023-12-02 06:56:42', NULL),
(299, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Updated', 'Bin Management Updated: Name=> Change=> bin_name=\"gjhs1\"', '2023-12-02 06:59:19', '2023-12-02 06:59:19', NULL),
(300, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Updated', 'Bin Management Updated: Name=> Change=> bin_name=\"gjhs\"', '2023-12-02 06:59:34', '2023-12-02 06:59:34', NULL),
(301, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Updated', 'Bin Management Updated: Name=> Change=> warehouse_id=\"7\"', '2023-12-02 06:59:38', '2023-12-02 06:59:38', NULL),
(302, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Updated', 'Bin Management Updated: Name=> Change=> bin_name=\"BIN150\"', '2023-12-02 06:59:43', '2023-12-02 06:59:43', NULL),
(303, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-02 06:59:51', '2023-12-02 06:59:51', NULL),
(304, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-02 06:59:55', '2023-12-02 06:59:55', NULL),
(305, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Bin Management', 'Bin Management Deleted', 'Bin Management Deleted: ', '2023-12-02 06:59:57', '2023-12-02 06:59:57', NULL),
(306, '1', 'test admin', 'uQrXV6gXGi00t2A1Ucs3Jrj8lGhjp3Sxv3VjKHA5', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,24,54\"', '2023-12-02 07:23:16', '2023-12-02 07:23:16', NULL),
(307, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,24,54\"', '2023-12-04 04:34:04', '2023-12-04 04:34:04', NULL),
(308, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 04:48:49', '2023-12-04 04:48:49', NULL),
(309, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Updated', 'Bin Type Updated: Name=> Change=> name=\"Test1\"', '2023-12-04 04:49:23', '2023-12-04 04:49:23', NULL),
(310, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Deleted', 'Bin Type Deleted: ', '2023-12-04 04:49:28', '2023-12-04 04:49:28', NULL),
(311, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 04:49:40', '2023-12-04 04:49:40', NULL),
(312, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 04:57:09', '2023-12-04 04:57:09', NULL),
(313, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Updated', 'Bin Type Updated: Name=> Change=> name=\"sedf\"', '2023-12-04 04:57:14', '2023-12-04 04:57:14', NULL),
(314, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Updated', 'Bin Type Updated: Name=> Change=> name=\"dsfgasdg\"', '2023-12-04 04:57:21', '2023-12-04 04:57:21', NULL),
(315, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Deleted', 'Bin Type Deleted: ', '2023-12-04 04:57:54', '2023-12-04 04:57:54', NULL),
(316, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 04:58:33', '2023-12-04 04:58:33', NULL),
(317, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Deleted', 'Bin Type Deleted: ', '2023-12-04 04:58:51', '2023-12-04 04:58:51', NULL),
(318, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Management', 'Bin Management Deleted', 'Bin Management Deleted: ', '2023-12-04 05:02:20', '2023-12-04 05:02:20', NULL),
(319, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Management', 'Bin Management Deleted', 'Bin Management Deleted: ', '2023-12-04 05:02:20', '2023-12-04 05:02:20', NULL),
(320, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-04 05:02:38', '2023-12-04 05:02:38', NULL),
(321, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Updated', 'Bin Type Updated: Name=> Change=> name=\"Goods\"', '2023-12-04 05:03:50', '2023-12-04 05:03:50', NULL),
(322, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 05:03:56', '2023-12-04 05:03:56', NULL),
(323, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 05:04:00', '2023-12-04 05:04:00', NULL),
(324, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 05:04:06', '2023-12-04 05:04:06', NULL),
(325, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Type', 'Bin Type Created', 'Bin Type Created: ', '2023-12-04 05:04:11', '2023-12-04 05:04:11', NULL),
(326, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-04 05:04:30', '2023-12-04 05:04:30', NULL),
(327, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-04 05:04:52', '2023-12-04 05:04:52', NULL),
(328, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Updated', 'Product Updated: Name=>68603592 Change=> variant=\"27\"', '2023-12-04 05:21:22', '2023-12-04 05:21:22', NULL),
(329, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> variant=\"27\"', '2023-12-04 05:23:08', '2023-12-04 05:23:08', NULL),
(330, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Updated', 'Product Updated: Name=>67983439 Change=> sku=\"25-17-30-27\"', '2023-12-04 05:32:38', '2023-12-04 05:32:38', NULL),
(331, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Updated', 'Product Updated: Name=>68603592 Change=> sku=\"26-17-31-27\"', '2023-12-04 05:35:34', '2023-12-04 05:35:34', NULL),
(332, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Consequat Ea iste c', '2023-12-04 05:39:35', '2023-12-04 05:39:35', NULL),
(333, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Consequat Ea iste c', '2023-12-04 05:41:12', '2023-12-04 05:41:12', NULL),
(334, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Deleted', 'Product Deleted: Consequat Ea iste c', '2023-12-04 05:41:14', '2023-12-04 05:41:14', NULL),
(335, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Deleted', 'Product Deleted: Consequat Ea iste c', '2023-12-04 05:41:15', '2023-12-04 05:41:15', NULL),
(336, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Nisi aliquip dolor d', '2023-12-04 05:41:18', '2023-12-04 05:41:18', NULL),
(337, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Deleted', 'Product Deleted: Nisi aliquip dolor d', '2023-12-04 05:42:18', '2023-12-04 05:42:18', NULL),
(338, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Et consequuntur in o', '2023-12-04 05:42:24', '2023-12-04 05:42:24', NULL),
(339, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Deleted', 'Product Deleted: Et consequuntur in o', '2023-12-04 05:42:26', '2023-12-04 05:42:26', NULL),
(340, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Itaque modi quas ea', '2023-12-04 05:42:30', '2023-12-04 05:42:30', NULL),
(341, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Deleted', 'Product Deleted: Itaque modi quas ea', '2023-12-04 05:43:06', '2023-12-04 05:43:06', NULL),
(342, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Created', 'Product Created: Fugit porro quis in', '2023-12-04 05:43:08', '2023-12-04 05:43:08', NULL),
(343, '1', 'test admin', 'B8w5tbnKOAbYihfy99LdWI6KgEmsDCrKdtMDcocw', 'Products', 'Product Updated', 'Product Updated: Name=>Fugit porro quis in Change=> product_thumb=\"1701668599.png\"', '2023-12-04 05:43:19', '2023-12-04 05:43:19', NULL),
(344, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> is_inventory_updated=\"1\"', '2023-12-04 11:03:22', '2023-12-04 11:03:22', NULL),
(345, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/110 Change=> is_inventory_updated=\"1\"', '2023-12-04 11:04:44', '2023-12-04 11:04:44', NULL),
(346, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/112 Change=> vendor_inv_no=\"65445\" bill_date=\"2023-12-04\" place_of_supply=\"sdgsd\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 11:13:38', '2023-12-04 11:13:38', NULL),
(347, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/116 Change=> vendor_inv_no=\"56546\" bill_date=\"2023-12-04\" place_of_supply=\"dfgh\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 11:49:12', '2023-12-04 11:49:12', NULL),
(348, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/117 Change=> vendor_inv_no=\"345345\" bill_date=\"2023-12-04\" place_of_supply=\"sdhg\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 11:51:10', '2023-12-04 11:51:10', NULL),
(349, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/113 Change=> vendor_inv_no=\"546546\" bill_date=\"2023-12-04\" place_of_supply=\"dghyg\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 11:51:46', '2023-12-04 11:51:46', NULL),
(350, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/118 Change=> vendor_inv_no=\"34563546\" bill_date=\"2023-12-04\" place_of_supply=\"rtdyh\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 11:53:24', '2023-12-04 11:53:24', NULL),
(351, '1', 'test admin', 'ZTt5Yt7MHNNTZJQrA2OnZq7oL1QyO2jVoQ8SMxk3', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/123 Change=> vendor_inv_no=\"sdfgdf\" bill_date=\"2023-12-04\" place_of_supply=\"dfsg\" posting_date=\"2023-12-04\" is_inventory_updated=\"1\"', '2023-12-04 12:07:33', '2023-12-04 12:07:33', NULL),
(352, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/109 Change=> bill_date=\"2023-12-05\" posting_date=\"2023-12-05\"', '2023-12-05 04:53:16', '2023-12-05 04:53:16', NULL),
(353, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'Order Fulfilment', 'Order Fulfilment Updated', 'Order Fulfilment Updated: Name=>3PSAP/22-23/10 Change=> bill_date=\"2023-12-05\" posting_date=\"2023-12-05\"', '2023-12-05 05:18:57', '2023-12-05 05:18:57', NULL),
(354, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'A/R Invoice', 'A/R Invoice Updated', 'A/R Invoice Updated: Name=>3PSAP/22-23/10 Change=> bill_date=\"2023-12-05\" posting_date=\"2023-12-05\"', '2023-12-05 05:21:48', '2023-12-05 05:21:48', NULL),
(355, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/109 Change=> party_name=\"Hedwig Oneill\" discount=\"2\"', '2023-12-05 06:12:25', '2023-12-05 06:12:25', NULL),
(356, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/109 Change=> party_name=\"Hedwig Oneill\"', '2023-12-05 06:16:31', '2023-12-05 06:16:31', NULL),
(357, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/109 Change=> party_name=\"Hedwig Oneill\"', '2023-12-05 06:19:44', '2023-12-05 06:19:44', NULL),
(358, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: 789-7', '2023-12-05 08:43:20', '2023-12-05 08:43:20', NULL),
(359, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: 789-6', '2023-12-05 08:43:24', '2023-12-05 08:43:24', NULL),
(360, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-12-05 08:43:27', '2023-12-05 08:43:27', NULL),
(361, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/125', '2023-12-05 08:46:02', '2023-12-05 08:46:02', NULL),
(362, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 08:46:13', '2023-12-05 08:46:13', NULL),
(363, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Deleted', 'GoodsServiceReceipts Deleted: 3PSAP/22-23/126', '2023-12-05 08:49:34', '2023-12-05 08:49:34', NULL),
(364, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 08:50:07', '2023-12-05 08:50:07', NULL),
(365, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/125 Change=> vendor_inv_no=\"56546\" is_inventory_updated=\"1\"', '2023-12-05 08:50:18', '2023-12-05 08:50:18', NULL),
(366, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 08:52:38', '2023-12-05 08:52:38', NULL),
(367, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/125 Change=> party_name=\"Hedwig Oneill\"', '2023-12-05 08:54:25', '2023-12-05 08:54:25', NULL),
(368, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/125 Change=> party_name=\"Hedwig Oneill\"', '2023-12-05 08:54:36', '2023-12-05 08:54:36', NULL),
(369, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:00:38', '2023-12-05 09:00:38', NULL),
(370, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/125 Change=> vendor_inv_no=\"453\" is_inventory_updated=\"1\"', '2023-12-05 09:00:45', '2023-12-05 09:00:45', NULL),
(371, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:02:08', '2023-12-05 09:02:08', NULL),
(372, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:02:44', '2023-12-05 09:02:44', NULL),
(373, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/125 Change=> vendor_inv_no=\"32434\" is_inventory_updated=\"1\"', '2023-12-05 09:02:51', '2023-12-05 09:02:51', NULL),
(374, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:05:41', '2023-12-05 09:05:41', NULL),
(375, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:08:59', '2023-12-05 09:08:59', NULL),
(376, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/125 Change=> vendor_inv_no=\"4354\" is_inventory_updated=\"1\"', '2023-12-05 09:09:13', '2023-12-05 09:09:13', NULL),
(377, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/125', '2023-12-05 09:11:55', '2023-12-05 09:11:55', NULL),
(378, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/125 Change=> vendor_inv_no=\"5646\"', '2023-12-05 09:12:04', '2023-12-05 09:12:04', NULL),
(379, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"4354\"', '2023-12-05 09:12:28', '2023-12-05 09:12:28', NULL),
(380, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"345345\"', '2023-12-05 09:12:38', '2023-12-05 09:12:38', NULL),
(381, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"45646\"', '2023-12-05 11:00:44', '2023-12-05 11:00:44', NULL),
(382, '1', 'test admin', '7V6pt5HqBSf9ISime3DFMaMv4lSk6Kne4cPNanPo', 'Bin Management', 'Bin Management Created', 'Bin Management Created: ', '2023-12-05 12:34:23', '2023-12-05 12:34:23', NULL),
(383, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: 3PSAP/22-23/126', '2023-12-06 05:16:24', '2023-12-06 05:16:24', NULL),
(384, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 05:17:01', '2023-12-06 05:17:01', NULL),
(385, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"6544\"', '2023-12-06 05:17:35', '2023-12-06 05:17:35', NULL),
(386, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 05:19:59', '2023-12-06 05:19:59', NULL),
(387, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/126 Change=> party_name=\"USAMA SHAIKH\"', '2023-12-06 05:53:11', '2023-12-06 05:53:11', NULL),
(388, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 06:03:15', '2023-12-06 06:03:15', NULL),
(389, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:15:52', '2023-12-06 07:15:52', NULL),
(390, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"567567\"', '2023-12-06 07:15:58', '2023-12-06 07:15:58', NULL),
(391, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"456546\"', '2023-12-06 07:16:27', '2023-12-06 07:16:27', NULL),
(392, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:17:42', '2023-12-06 07:17:42', NULL),
(393, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:23:52', '2023-12-06 07:23:52', NULL),
(394, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:24:49', '2023-12-06 07:24:49', NULL),
(395, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:25:40', '2023-12-06 07:25:40', NULL),
(396, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"54654\"', '2023-12-06 07:25:45', '2023-12-06 07:25:45', NULL),
(397, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567567\"', '2023-12-06 07:26:39', '2023-12-06 07:26:39', NULL),
(398, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:30:31', '2023-12-06 07:30:31', NULL),
(399, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"56767\"', '2023-12-06 07:30:51', '2023-12-06 07:30:51', NULL),
(400, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:32:01', '2023-12-06 07:32:01', NULL),
(401, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:33:05', '2023-12-06 07:33:05', NULL),
(402, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:34:31', '2023-12-06 07:34:31', NULL),
(403, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"567\"', '2023-12-06 07:34:40', '2023-12-06 07:34:40', NULL),
(404, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567\"', '2023-12-06 07:37:30', '2023-12-06 07:37:30', NULL),
(405, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:47:03', '2023-12-06 07:47:03', NULL),
(406, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:48:56', '2023-12-06 07:48:56', NULL),
(407, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"4575467\"', '2023-12-06 07:49:04', '2023-12-06 07:49:04', NULL),
(408, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"546\"', '2023-12-06 07:49:17', '2023-12-06 07:49:17', NULL),
(409, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:50:21', '2023-12-06 07:50:21', NULL),
(410, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"546546\"', '2023-12-06 07:50:27', '2023-12-06 07:50:27', NULL),
(411, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567\"', '2023-12-06 07:51:35', '2023-12-06 07:51:35', NULL),
(412, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:52:36', '2023-12-06 07:52:36', NULL),
(413, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"6546546\"', '2023-12-06 07:52:42', '2023-12-06 07:52:42', NULL),
(414, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 07:54:36', '2023-12-06 07:54:36', NULL),
(415, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"567\"', '2023-12-06 07:54:46', '2023-12-06 07:54:46', NULL),
(416, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567567\"', '2023-12-06 07:55:11', '2023-12-06 07:55:11', NULL),
(417, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"546546\"', '2023-12-06 07:57:08', '2023-12-06 07:57:08', NULL),
(418, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567657\"', '2023-12-06 08:03:27', '2023-12-06 08:03:27', NULL),
(419, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 08:06:13', '2023-12-06 08:06:13', NULL),
(420, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"567\"', '2023-12-06 08:06:25', '2023-12-06 08:06:25', NULL),
(421, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"57567\"', '2023-12-06 08:07:10', '2023-12-06 08:07:10', NULL),
(422, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"46546\"', '2023-12-06 08:08:28', '2023-12-06 08:08:28', NULL),
(423, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"567\"', '2023-12-06 08:11:20', '2023-12-06 08:11:20', NULL),
(424, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/126 Change=> party_name=\"USAMA SHAIKH\"', '2023-12-06 09:15:23', '2023-12-06 09:15:23', NULL),
(425, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>3PSAP/22-23/126 Change=> party_name=\"USAMA SHAIKH\"', '2023-12-06 09:15:31', '2023-12-06 09:15:31', NULL),
(426, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: 3PSAP/22-23/126', '2023-12-06 09:39:10', '2023-12-06 09:39:10', NULL),
(427, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/126 Change=> vendor_inv_no=\"546\"', '2023-12-06 09:39:20', '2023-12-06 09:39:20', NULL),
(428, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"5467\"', '2023-12-06 09:42:32', '2023-12-06 09:42:32', NULL),
(429, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/22-23/127 Change=> vendor_inv_no=\"4535\"', '2023-12-06 09:43:57', '2023-12-06 09:43:57', NULL),
(430, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-06 10:41:23', '2023-12-06 10:41:23', NULL),
(431, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:04:17', '2023-12-06 11:04:17', NULL),
(432, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Year Academic', 'Year Academic Updated', 'Year Academic Updated: Name=> Change=> year_string=\"202122\"', '2023-12-06 11:21:03', '2023-12-06 11:21:03', NULL),
(433, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:23:15', '2023-12-06 11:23:15', NULL),
(434, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:23:24', '2023-12-06 11:23:24', NULL),
(435, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:23:30', '2023-12-06 11:23:30', NULL),
(436, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:29:06', '2023-12-06 11:29:06', NULL),
(437, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:37:28', '2023-12-06 11:37:28', NULL),
(438, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:37:30', '2023-12-06 11:37:30', NULL),
(439, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:37:30', '2023-12-06 11:37:30', NULL),
(440, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:37:31', '2023-12-06 11:37:31', NULL),
(441, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:37:32', '2023-12-06 11:37:32', NULL),
(442, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:37:42', '2023-12-06 11:37:42', NULL),
(443, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Deleted', 'Academic Year Deleted: ', '2023-12-06 11:38:08', '2023-12-06 11:38:08', NULL),
(444, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:38:45', '2023-12-06 11:38:45', NULL);
INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `user_name`, `session_id`, `module`, `action`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(445, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Year Academic', 'Year Academic Updated', 'Year Academic Updated: Name=> Change=> year_id=\"2021-2022\"', '2023-12-06 11:38:49', '2023-12-06 11:38:49', NULL),
(446, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Year Academic', 'Year Academic Updated', 'Year Academic Updated: Name=> Change=> year_id=\"2021\"', '2023-12-06 11:39:24', '2023-12-06 11:39:24', NULL),
(447, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Year Academic', 'Year Academic Updated', 'Year Academic Updated: Name=> Change=> year_id=\"2020\"', '2023-12-06 11:39:27', '2023-12-06 11:39:27', NULL),
(448, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:39:30', '2023-12-06 11:39:30', NULL),
(449, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:39:33', '2023-12-06 11:39:33', NULL),
(450, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:39:36', '2023-12-06 11:39:36', NULL),
(451, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Academic Year', 'Academic Year Created', 'Academic Year Created: ', '2023-12-06 11:39:40', '2023-12-06 11:39:40', NULL),
(452, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Created', 'Series Number Created: PO', '2023-12-06 11:46:39', '2023-12-06 11:46:39', NULL),
(453, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: 789', '2023-12-06 11:46:41', '2023-12-06 11:46:41', NULL),
(454, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: 456', '2023-12-06 11:46:42', '2023-12-06 11:46:42', NULL),
(455, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: 123', '2023-12-06 11:46:42', '2023-12-06 11:46:42', NULL),
(456, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: PO', '2023-12-06 11:53:13', '2023-12-06 11:53:13', NULL),
(457, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Created', 'Series Number Created: PO', '2023-12-06 11:53:25', '2023-12-06 11:53:25', NULL),
(458, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: PO', '2023-12-06 12:21:04', '2023-12-06 12:21:04', NULL),
(459, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Created', 'Series Number Created: PO', '2023-12-06 12:21:08', '2023-12-06 12:21:08', NULL),
(460, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Updated', 'Series Number Updated: Name=>PO Change=> module=\"1\"', '2023-12-06 12:26:42', '2023-12-06 12:26:42', NULL),
(461, '1', 'test admin', 'D1zdMvdN5bXbpX0MsqBR3nGXm5Q5oQCDj8giUknF', 'Series Number Master', 'Series Number Created', 'Series Number Created: GR', '2023-12-06 12:26:49', '2023-12-06 12:26:49', NULL),
(462, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-1', '2023-12-07 05:12:27', '2023-12-07 05:12:27', NULL),
(463, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-1', '2023-12-07 05:23:11', '2023-12-07 05:23:11', NULL),
(464, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2022-2', '2023-12-07 06:55:21', '2023-12-07 06:55:21', NULL),
(465, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2021-2', '2023-12-07 06:59:58', '2023-12-07 06:59:58', NULL),
(466, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2024-1', '2023-12-07 07:02:58', '2023-12-07 07:02:58', NULL),
(467, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2021-1', '2023-12-07 07:19:04', '2023-12-07 07:19:04', NULL),
(468, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-1', '2023-12-07 07:19:29', '2023-12-07 07:19:29', NULL),
(469, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2', '2023-12-07 07:19:53', '2023-12-07 07:19:53', NULL),
(470, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-3', '2023-12-07 07:21:53', '2023-12-07 07:21:53', NULL),
(471, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: ', '2023-12-07 07:22:01', '2023-12-07 07:22:01', NULL),
(472, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: ', '2023-12-07 07:22:02', '2023-12-07 07:22:02', NULL),
(473, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: ', '2023-12-07 07:22:04', '2023-12-07 07:22:04', NULL),
(474, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: ', '2023-12-07 07:22:06', '2023-12-07 07:22:06', NULL),
(475, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 07:34:19', '2023-12-07 07:34:19', NULL),
(476, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-4', '2023-12-07 07:34:44', '2023-12-07 07:34:44', NULL),
(477, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 07:35:06', '2023-12-07 07:35:06', NULL),
(478, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 07:36:55', '2023-12-07 07:36:55', NULL),
(479, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 07:37:06', '2023-12-07 07:37:06', NULL),
(480, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 07:37:54', '2023-12-07 07:37:54', NULL),
(481, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-2', '2023-12-07 07:38:05', '2023-12-07 07:38:05', NULL),
(482, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-3', '2023-12-07 07:38:22', '2023-12-07 07:38:22', NULL),
(483, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-1', '2023-12-07 08:01:17', '2023-12-07 08:01:17', NULL),
(484, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2', '2023-12-07 08:01:43', '2023-12-07 08:01:43', NULL),
(485, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-1', '2023-12-07 08:01:52', '2023-12-07 08:01:52', NULL),
(486, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-2', '2023-12-07 08:02:15', '2023-12-07 08:02:15', NULL),
(487, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>PO-2023-1 Change=> financial_year=\"2023\"', '2023-12-07 08:04:30', '2023-12-07 08:04:30', NULL),
(488, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>PO-2023-2 Change=> financial_year=\"2023\"', '2023-12-07 08:04:36', '2023-12-07 08:04:36', NULL),
(489, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-3', '2023-12-07 08:04:58', '2023-12-07 08:04:58', NULL),
(490, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-2 Change=> vendor_inv_no=\"3546546\" financial_year=\"2023\"', '2023-12-07 08:05:15', '2023-12-07 08:05:15', NULL),
(491, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>3PSAP/2023/4 Change=> vendor_inv_no=\"456546\"', '2023-12-07 08:08:56', '2023-12-07 08:08:56', NULL),
(492, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-4', '2023-12-07 09:10:52', '2023-12-07 09:10:52', NULL),
(493, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-4', '2023-12-07 09:11:03', '2023-12-07 09:11:03', NULL),
(494, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-4 Change=> vendor_inv_no=\"654\" financial_year=\"2023\"', '2023-12-07 09:11:34', '2023-12-07 09:11:34', NULL),
(495, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-5 Change=> vendor_inv_no=\"567\"', '2023-12-07 09:12:06', '2023-12-07 09:12:06', NULL),
(496, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'Series Number Master', 'Series Number Created', 'Series Number Created: AP', '2023-12-07 09:17:26', '2023-12-07 09:17:26', NULL),
(497, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-3', '2023-12-07 09:18:24', '2023-12-07 09:18:24', NULL),
(498, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-5', '2023-12-07 09:20:19', '2023-12-07 09:20:19', NULL),
(499, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-6', '2023-12-07 09:20:34', '2023-12-07 09:20:34', NULL),
(500, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-6 Change=> vendor_inv_no=\"54654\" financial_year=\"2023\"', '2023-12-07 09:30:17', '2023-12-07 09:30:17', NULL),
(501, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-7 Change=> vendor_inv_no=\"456546\"', '2023-12-07 09:30:44', '2023-12-07 09:30:44', NULL),
(502, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-8 Change=> vendor_inv_no=\"34534\"', '2023-12-07 09:31:15', '2023-12-07 09:31:15', NULL),
(503, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-4', '2023-12-07 09:39:33', '2023-12-07 09:39:33', NULL),
(504, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-6', '2023-12-07 09:41:10', '2023-12-07 09:41:10', NULL),
(505, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-9', '2023-12-07 09:41:13', '2023-12-07 09:41:13', NULL),
(506, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'Series Number Master', 'Series Number Created', 'Series Number Created: BB', '2023-12-07 10:15:34', '2023-12-07 10:15:34', NULL),
(507, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: ', '2023-12-07 10:16:58', '2023-12-07 10:16:58', NULL),
(508, '1', 'test admin', 'Lty5t68XgfVBKo8R31G3mUa0rxKQTxM3Wr2L47Q2', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: BB-2023-1', '2023-12-07 10:19:10', '2023-12-07 10:19:10', NULL),
(509, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-2 Change=> invoice_ref_date=\"2023-12-01\" is_bb_updated=\"1\"', '2023-12-07 11:13:43', '2023-12-07 11:13:43', NULL),
(510, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-3 Change=> invoice_ref_date=\"2023-12-02\" is_bb_updated=\"1\"', '2023-12-07 11:23:25', '2023-12-07 11:23:25', NULL),
(511, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-6', '2023-12-07 11:23:38', '2023-12-07 11:23:38', NULL),
(512, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-4 Change=> invoice_ref_date=\"2023-12-02\" is_bb_updated=\"1\"', '2023-12-07 11:24:17', '2023-12-07 11:24:17', NULL),
(513, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-7', '2023-12-07 11:38:34', '2023-12-07 11:38:34', NULL),
(514, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-5 Change=> invoice_ref_date=\"2023-12-01\" is_bb_updated=\"1\"', '2023-12-07 11:51:04', '2023-12-07 11:51:04', NULL),
(515, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-9 Change=> vendor_inv_no=\"546546\" financial_year=\"2023\"', '2023-12-07 11:57:30', '2023-12-07 11:57:30', NULL),
(516, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-8', '2023-12-07 11:57:37', '2023-12-07 11:57:37', NULL),
(517, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-6 Change=> invoice_ref_date=\"2023-12-04\" is_bb_updated=\"1\"', '2023-12-07 11:58:03', '2023-12-07 11:58:03', NULL),
(518, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-07 12:18:29', '2023-12-07 12:18:29', NULL),
(519, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-07 12:20:00', '2023-12-07 12:20:00', NULL),
(520, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Deleted', 'Banking Payment Deleted: ', '2023-12-07 12:20:35', '2023-12-07 12:20:35', NULL),
(521, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Series Number Master', 'Series Number Created', 'Series Number Created: BP', '2023-12-07 12:21:33', '2023-12-07 12:21:33', NULL),
(522, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-07 12:27:28', '2023-12-07 12:27:28', NULL),
(523, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Updated', 'Banking Payment Updated: Name=>BP-2023-1 Change=> bill_booking_item_ids=\"114\" net_total=\"5671.48\" tax_total=\"1020.78\" gorss_total=\"6691.78\"', '2023-12-07 12:32:10', '2023-12-07 12:32:10', NULL),
(524, '1', 'test admin', 'yD6VgJxrEgMQYVr0d5j08eCWorCY0Uw3w3TKuEYO', 'Banking Payment', 'Banking Payment Updated', 'Banking Payment Updated: Name=>BP-2023-1 Change=> bill_booking_item_ids=\"114,119\" net_total=\"8480.13\" tax_total=\"1526.22\" gorss_total=\"10005.22\"', '2023-12-07 12:32:16', '2023-12-07 12:32:16', NULL),
(525, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,109,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-08 04:50:23', '2023-12-08 04:50:23', NULL),
(526, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,82,83,84,93,94,96,97,102,103,104,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-08 04:58:54', '2023-12-08 04:58:54', NULL),
(527, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-7', '2023-12-08 07:10:10', '2023-12-08 07:10:10', NULL),
(528, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,48,49,50,51,11,22\"', '2023-12-08 07:56:50', '2023-12-08 07:56:50', NULL),
(529, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,82,83,84,93,94,96,97,102,103,104,111,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-08 08:03:19', '2023-12-08 08:03:19', NULL),
(530, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Products', 'Product Updated', 'Product Updated: Name=>68603592 Change=> shelf_life_number=\"180\" shelf_life=\"days\"', '2023-12-08 11:22:51', '2023-12-08 11:22:51', NULL),
(531, '1', 'test admin', 'ri2Pz3EBgNM8ZqFhHojTBV5C7mexAYdzKGptBT8d', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,82,83,84,93,94,96,97,102,103,104,111,112,113,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-08 12:01:17', '2023-12-08 12:01:17', NULL),
(532, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,48,49,50,51,52,11,22\"', '2023-12-11 04:42:42', '2023-12-11 04:42:42', NULL),
(533, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-11 04:53:56', '2023-12-11 04:53:56', NULL),
(534, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Products', 'Product Updated', 'Product Updated: Name=>654654 Change=> item_code=\"654654\"', '2023-12-11 07:15:42', '2023-12-11 07:15:42', NULL),
(535, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>USAMA SHAIKH Change=> pricing_profile=\"1\" beat_id=\"\"', '2023-12-11 10:40:47', '2023-12-11 10:40:47', NULL),
(536, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>Hedwig Oneill Change=> residential_status=\"resident\" gst_reg_type=\"composite\" rcm_app=\"1\" msme_reg=\"1\" pricing_profile=\"1\" beat_id=\"\"', '2023-12-11 10:41:05', '2023-12-11 10:41:05', NULL),
(537, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>IRFAN PATHAN Change=> pricing_profile=\"1\" beat_id=\"\"', '2023-12-11 10:41:19', '2023-12-11 10:41:19', NULL),
(538, '1', 'test admin', '2C0uKcYF24IXV4MO7yEPfdC3IkDPHF6T981pds50', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,115,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-11 10:43:48', '2023-12-11 10:43:48', NULL),
(539, '1', 'test admin', 'yfzrg7bVJeGICsjfATvKhdYar47301rqpTI4lt9K', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,53,55,58,105,108,109,110,115,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-12 12:52:23', '2023-12-12 12:52:23', NULL),
(540, '1', 'test admin', 'w5zi23iF5YGTTxpExBS2iloqracqYxsZPRoJq1Wv', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> district=\"JALGAON\"', '2023-12-13 07:11:36', '2023-12-13 07:11:36', NULL),
(541, '1', 'test admin', 'w5zi23iF5YGTTxpExBS2iloqracqYxsZPRoJq1Wv', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> district=\"AKOLA\"', '2023-12-13 07:11:45', '2023-12-13 07:11:45', NULL),
(542, '1', 'test admin', 'w5zi23iF5YGTTxpExBS2iloqracqYxsZPRoJq1Wv', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> district=\"BEED\"', '2023-12-13 07:13:32', '2023-12-13 07:13:32', NULL),
(543, '1', 'test admin', 'w5zi23iF5YGTTxpExBS2iloqracqYxsZPRoJq1Wv', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: MUMBRA Change=> district=\"THANE\"', '2023-12-13 07:15:36', '2023-12-13 07:15:36', NULL),
(544, '1', 'test admin', 'w5zi23iF5YGTTxpExBS2iloqracqYxsZPRoJq1Wv', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: ANDHERI Change=> district=\"THANE\"', '2023-12-13 07:21:22', '2023-12-13 07:21:22', NULL),
(545, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'BSPL Category Master', 'BSPL Category Updated', 'BSPL Category Updated: Name=>new cat Change=> has_subcat=\"0\"', '2023-12-13 08:03:08', '2023-12-13 08:03:08', NULL),
(546, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'Series Number Master', 'Series Number Created', 'Series Number Created: FHV', '2023-12-13 08:07:30', '2023-12-13 08:07:30', NULL),
(547, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'Series Number Master', 'Series Number Deleted', 'Series Number Deleted: FHV', '2023-12-13 08:07:34', '2023-12-13 08:07:34', NULL),
(548, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-8', '2023-12-13 08:44:36', '2023-12-13 08:44:36', NULL),
(549, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-11', '2023-12-13 08:46:34', '2023-12-13 08:46:34', NULL),
(550, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-11 Change=> vendor_inv_no=\"142142\" financial_year=\"2023\" place_of_supply=\"andheri gali\" remarks=\"akshay bhae ne gr created\"', '2023-12-13 08:52:16', '2023-12-13 08:52:16', NULL),
(551, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-12 Change=> vendor_inv_no=\"145341\" remarks=\"akshay bhae ne gr created again truck came\"', '2023-12-13 08:53:35', '2023-12-13 08:53:35', NULL),
(552, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-13 Change=> vendor_inv_no=\"5645665\"', '2023-12-13 09:03:35', '2023-12-13 09:03:35', NULL),
(553, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-9', '2023-12-13 09:36:55', '2023-12-13 09:36:55', NULL),
(554, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-7 Change=> invoice_ref_date=\"2023-12-13\" is_bb_updated=\"1\"', '2023-12-13 09:47:35', '2023-12-13 09:47:35', NULL),
(555, '1', 'test admin', 'cHlSBmlH6NK4sEdbx2KBpU5s0Vv0wXB4mhNfaQcX', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-13 10:08:26', '2023-12-13 10:08:26', NULL),
(556, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Robotest', '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(557, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Akshay\'s 1st Vendor', '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(558, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'Products', 'Product Created', 'Product Created: 00011', '2023-12-14 03:42:46', '2023-12-14 03:42:46', NULL),
(559, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-9', '2023-12-14 03:44:44', '2023-12-14 03:44:44', NULL),
(560, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-14', '2023-12-14 03:47:30', '2023-12-14 03:47:30', NULL),
(561, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-14 Change=> vendor_inv_no=\"0111\" financial_year=\"2023\" place_of_supply=\"Test galli\"', '2023-12-14 03:50:05', '2023-12-14 03:50:05', NULL),
(562, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-11', '2023-12-14 03:50:26', '2023-12-14 03:50:26', NULL),
(563, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-8 Change=> invoice_ref_date=\"2023-12-14\" is_bb_updated=\"1\"', '2023-12-14 03:54:28', '2023-12-14 03:54:28', NULL),
(564, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'Products', 'Product Created', 'Product Created: 00012', '2023-12-14 04:03:15', '2023-12-14 04:03:15', NULL),
(565, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Created', 'Product Created: 000145', '2023-12-14 04:05:21', '2023-12-14 04:05:21', NULL),
(566, '1', 'test admin', 'SZA2aqfsVjrdPc15ssYs6Axujz3dYnhOH1uNi5sC', 'Internal User Management', 'Internal User Created', 'Internal User Created: Akshay Tester', '2023-12-14 04:08:57', '2023-12-14 04:08:57', NULL),
(567, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Internal User Management', 'Internal User Created', 'Internal User Created: Siya Patil', '2023-12-14 04:13:37', '2023-12-14 04:13:37', NULL),
(568, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Updated', 'Product Updated: Name=>000145 Change=> hsncode_id=\"876550\"', '2023-12-14 04:54:29', '2023-12-14 04:54:29', NULL),
(569, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Akshay New Vendor', '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(570, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Created', 'Product Created: 000263', '2023-12-14 05:15:45', '2023-12-14 05:15:45', NULL),
(571, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Products', 'Product Created', 'Product Created: 00013', '2023-12-14 05:15:46', '2023-12-14 05:15:46', NULL),
(572, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Deleted', 'Product Deleted: 000263', '2023-12-14 05:15:55', '2023-12-14 05:15:55', NULL),
(573, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Products', 'Product Updated', 'Product Updated: Name=>00013 Change=> hsncode_id=\"\"', '2023-12-14 05:16:25', '2023-12-14 05:16:25', NULL),
(574, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Area Master', 'Area Created', 'Area Created: Test Area', '2023-12-14 05:19:32', '2023-12-14 05:19:32', NULL),
(575, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Route Master', 'Route Created', 'Route Created: Test Route', '2023-12-14 05:20:00', '2023-12-14 05:20:00', NULL),
(576, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'Beat Master', 'Beat Created', 'Beat Created: Circle', '2023-12-14 05:20:21', '2023-12-14 05:20:21', NULL),
(577, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'BSPL Head Master', 'BSPL Head Created', 'BSPL Head Created: AKS Head', '2023-12-14 05:21:12', '2023-12-14 05:21:12', NULL),
(578, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'BSPL Category Master', 'BSPL Category Created', 'BSPL Category Created: aks category', '2023-12-14 05:21:38', '2023-12-14 05:21:38', NULL),
(579, '1', 'test admin', 'Xgkjii8N8ZEMu2Asosy2ZQTVK356QYNhb2i3atNu', 'BSPL Sub-Category Master', 'BSPL Sub-Category Created', 'BSPL Sub-Category Created: aks subCategory', '2023-12-14 05:22:04', '2023-12-14 05:22:04', NULL),
(580, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Created', 'Product Created: 4560', '2023-12-14 05:22:21', '2023-12-14 05:22:21', NULL),
(581, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-10', '2023-12-14 06:06:58', '2023-12-14 06:06:58', NULL),
(582, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-15', '2023-12-14 06:07:29', '2023-12-14 06:07:29', NULL),
(583, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Aks Customer', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(584, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-11', '2023-12-14 06:48:54', '2023-12-14 06:48:54', NULL),
(585, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-12', '2023-12-14 06:50:27', '2023-12-14 06:50:27', NULL),
(586, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-16', '2023-12-14 06:52:09', '2023-12-14 06:52:09', NULL),
(587, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-13', '2023-12-14 06:58:29', '2023-12-14 06:58:29', NULL),
(588, '1', 'test admin', 'BcjTqEyEWPadr8bNrN0ikWWJlP0Xj6tOJkefj0Sb', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-17', '2023-12-14 07:03:15', '2023-12-14 07:03:15', NULL),
(589, '1', 'test admin', 'BcjTqEyEWPadr8bNrN0ikWWJlP0Xj6tOJkefj0Sb', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-17 Change=> vendor_inv_no=\"43555\" financial_year=\"2023\"', '2023-12-14 07:03:30', '2023-12-14 07:03:30', NULL),
(590, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Sarthak', '2023-12-14 07:14:19', '2023-12-14 07:14:19', NULL),
(591, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-14', '2023-12-14 07:26:40', '2023-12-14 07:26:40', NULL),
(592, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-18', '2023-12-14 07:27:13', '2023-12-14 07:27:13', NULL),
(593, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-18 Change=> vendor_inv_no=\"1245\" financial_year=\"2023\" place_of_supply=\"Test galli\"', '2023-12-14 07:29:04', '2023-12-14 07:29:04', NULL),
(594, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-12', '2023-12-14 07:29:23', '2023-12-14 07:29:23', NULL),
(595, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Enterprises', '2023-12-14 09:31:56', '2023-12-14 09:31:56', NULL),
(596, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: The Doctor Vendor', '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(597, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Bussiness Partner Master', 'Bussiness Partner Deleted', 'Bussiness Partner Deleted', '2023-12-14 09:34:01', '2023-12-14 09:34:01', NULL),
(598, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Dr Customer', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(599, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Products', 'Product Created', 'Product Created: 000789', '2023-12-14 09:39:10', '2023-12-14 09:39:10', NULL),
(600, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'Bussiness Partner Address', 'Bussiness Partner Address Updated', 'Bussiness Partner Address Updated: Toronto Change=> bp_address_name=\"Jersey\"', '2023-12-14 09:43:20', '2023-12-14 09:43:20', NULL),
(601, '1', 'test admin', 'OgaMhHg1ke2Os0HaiT6XHG6JPabC9NrSIYGjiXVm', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-15', '2023-12-14 09:45:00', '2023-12-14 09:45:00', NULL),
(602, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'Products', 'Product Created', 'Product Created: 2001', '2023-12-14 10:01:55', '2023-12-14 10:01:55', NULL),
(603, '1', 'test admin', 'JqH2caznm6jGC2S7Nnvjy2CGfsB5F9l8Yv2mnAiN', 'Products', 'Product Updated', 'Product Updated: Name=>000789 Change=> hsncode_id=\"876545\"', '2023-12-14 10:10:12', '2023-12-14 10:10:12', NULL),
(604, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Roles Management', 'Role Created', 'Role Created: ASE', '2023-12-14 11:01:19', '2023-12-14 11:01:19', NULL),
(605, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Roles Management', 'Role Created', 'Role Created: ASM', '2023-12-14 11:01:30', '2023-12-14 11:01:30', NULL),
(606, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Salesman Change=> menu_ids=\"53\" submenu_ids=\"116\" is_sub=\"1\"', '2023-12-14 11:04:41', '2023-12-14 11:04:41', NULL),
(607, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Internal User Management', 'Internal User Created', 'Internal User Created: SHADY JOHN', '2023-12-14 11:05:15', '2023-12-14 11:05:15', NULL),
(608, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>Dinesh Pandey Change=> company_id=\"6\" role=\"13\"', '2023-12-14 11:05:34', '2023-12-14 11:05:34', NULL),
(609, '1', 'test admin', 'LImuIv6g90iyl5oTRvabvhsyg6TdspCL6Vby0aJe', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>jatin singh Change=> company_id=\"6\" role=\"14\"', '2023-12-14 11:05:44', '2023-12-14 11:05:44', NULL),
(610, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'Products', 'Product Created', 'Product Created: 2002', '2023-12-15 02:08:21', '2023-12-15 02:08:21', NULL),
(611, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-16', '2023-12-15 02:13:40', '2023-12-15 02:13:40', NULL),
(612, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>PO-2023-16 Change=> financial_year=\"2023\"', '2023-12-15 02:15:07', '2023-12-15 02:15:07', NULL),
(613, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-19', '2023-12-15 02:15:59', '2023-12-15 02:15:59', NULL),
(614, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-19 Change=> vendor_inv_no=\"222000\" place_of_supply=\"thane\"', '2023-12-15 02:19:57', '2023-12-15 02:19:57', NULL),
(615, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-13', '2023-12-15 02:20:10', '2023-12-15 02:20:10', NULL),
(616, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'Order Booking', 'Order Booking Created', 'Order Booking Created: 3PSAP/2023/1', '2023-12-15 02:25:18', '2023-12-15 02:25:18', NULL),
(617, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'Order Fulfillment', 'Order Fulfillment Created', 'Order Fulfillment Created: 3PSAP/2023/1', '2023-12-15 02:27:23', '2023-12-15 02:27:23', NULL),
(618, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'A/R Invoice', 'A/R Invoice Created', 'A/R Invoice Created: 3PSAP/2023/1', '2023-12-15 02:27:44', '2023-12-15 02:27:44', NULL),
(619, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'A/R Invoice', 'A/R Invoice Updated', 'A/R Invoice Updated: Name=>3PSAP/2023/1 Change=> trans_type=\"cash\"', '2023-12-15 02:28:07', '2023-12-15 02:28:07', NULL),
(620, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'Internal User Management', 'Internal User Created', 'Internal User Created: Chinu Patil', '2023-12-15 02:31:43', '2023-12-15 02:31:43', NULL),
(621, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-17', '2023-12-15 02:33:17', '2023-12-15 02:33:17', NULL),
(622, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-20', '2023-12-15 02:33:35', '2023-12-15 02:33:35', NULL),
(623, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-20 Change=> vendor_inv_no=\"500500\" financial_year=\"2023\" place_of_supply=\"thane\"', '2023-12-15 02:34:21', '2023-12-15 02:34:21', NULL),
(624, '1', 'test admin', 'aWomgzUeBuinFF9UlItXBIADUQBCbCGT1qIxOJX2', 'Internal User Management', 'Internal User Created', 'Internal User Created: Riya Patil', '2023-12-15 02:45:05', '2023-12-15 02:45:05', NULL),
(625, '1', 'test admin', 'b5dtZweWogTDumDw7nlFrIGDGEnkFwR4RZROQpeO', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-18', '2023-12-16 03:51:41', '2023-12-16 03:51:41', NULL),
(626, '1', 'test admin', 'jvNwuwEtyG11Dw1HkosKRdrd99QpZpalIMLfw0A8', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-10 Change=> invoice_ref_date=\"2023-12-01\" posting_date=\"2023-12-16\" is_bb_updated=\"1\" status=\"open\"', '2023-12-16 05:15:04', '2023-12-16 05:15:04', NULL),
(627, '1', 'test admin', 'VeKz6mkxXpcL2GOmDe7DsxwSpob6hFx4CGH8DBJv', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-22', '2023-12-16 07:09:37', '2023-12-16 07:09:37', NULL),
(628, '1', 'test admin', 'VeKz6mkxXpcL2GOmDe7DsxwSpob6hFx4CGH8DBJv', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-22 Change=> vendor_inv_no=\"3433434\" financial_year=\"2023\" place_of_supply=\"eswe\"', '2023-12-16 07:18:47', '2023-12-16 07:18:47', NULL),
(629, '1', 'test admin', 'b5dtZweWogTDumDw7nlFrIGDGEnkFwR4RZROQpeO', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-19', '2023-12-16 07:52:07', '2023-12-16 07:52:07', NULL),
(630, '1', 'test admin', 'b5dtZweWogTDumDw7nlFrIGDGEnkFwR4RZROQpeO', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-24', '2023-12-16 07:54:34', '2023-12-16 07:54:34', NULL),
(631, '1', 'test admin', 'b5dtZweWogTDumDw7nlFrIGDGEnkFwR4RZROQpeO', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-24 Change=> vendor_inv_no=\"0123\" financial_year=\"2023\" place_of_supply=\"thane\"', '2023-12-16 07:55:18', '2023-12-16 07:55:18', NULL),
(632, '1', 'test admin', 'VeKz6mkxXpcL2GOmDe7DsxwSpob6hFx4CGH8DBJv', 'Products', 'Product Updated', 'Product Updated: Name=>00013 Change=> hsncode_id=\"876543\"', '2023-12-16 07:57:33', '2023-12-16 07:57:33', NULL),
(633, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: House Vendor', '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(634, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'Products', 'Product Created', 'Product Created: 9763', '2023-12-18 09:11:56', '2023-12-18 09:11:56', NULL),
(635, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-20', '2023-12-18 09:41:35', '2023-12-18 09:41:35', NULL),
(636, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-26', '2023-12-18 09:43:03', '2023-12-18 09:43:03', NULL),
(637, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-26 Change=> vendor_inv_no=\"97635601\" financial_year=\"2023\" place_of_supply=\"In the warehouse\"', '2023-12-18 09:48:25', '2023-12-18 09:48:25', NULL),
(638, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-14', '2023-12-18 09:49:00', '2023-12-18 09:49:00', NULL),
(639, '1', 'test admin', 'tAbqr6OaPI9bid3Fi4ppDJKt1Ip1UbR1bos1ykk7', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-11 Change=> invoice_ref_date=\"2023-12-18\" is_bb_updated=\"1\" status=\"open\"', '2023-12-18 09:57:49', '2023-12-18 09:57:49', NULL),
(640, '1', 'test admin', 'iOIxbvVszFmSoVxGrF33BOMxOUTOGcj04xZAxhsF', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-25 Change=> vendor_inv_no=\"fgdfgdf\" bill_date=\"2023-12-19\" posting_date=\"2023-12-19\"', '2023-12-19 08:35:48', '2023-12-19 08:35:48', NULL),
(641, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: Test House Vendor', '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL),
(642, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'Products', 'Product Created', 'Product Created: 8766', '2023-12-19 09:39:20', '2023-12-19 09:39:20', NULL),
(643, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-21', '2023-12-19 09:45:06', '2023-12-19 09:45:06', NULL),
(644, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-27', '2023-12-19 09:45:30', '2023-12-19 09:45:30', NULL),
(645, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-27 Change=> vendor_inv_no=\"877877\" financial_year=\"2023\" place_of_supply=\"test area\"', '2023-12-19 09:47:16', '2023-12-19 09:47:16', NULL),
(646, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-15', '2023-12-19 09:47:41', '2023-12-19 09:47:41', NULL),
(647, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-16', '2023-12-19 09:48:10', '2023-12-19 09:48:10', NULL),
(648, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-12 Change=> invoice_ref_date=\"2024-01-04\" is_bb_updated=\"1\" status=\"open\"', '2023-12-19 09:50:09', '2023-12-19 09:50:09', NULL),
(649, '1', 'test admin', 'nUgy0ItSE6cmvf8sZAZ3gIror2GxoqNUOM3miOcH', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-9 Change=> invoice_ref_date=\"2023-12-28\" posting_date=\"2023-12-19\" is_bb_updated=\"1\" status=\"open\"', '2023-12-19 09:50:36', '2023-12-19 09:50:36', NULL),
(650, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-15 Change=> bill_date=\"2023-12-20\" posting_date=\"2023-12-20\"', '2023-12-20 04:59:22', '2023-12-20 04:59:22', NULL),
(651, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-16 Change=> bill_date=\"2023-12-20\" posting_date=\"2023-12-20\"', '2023-12-20 06:43:03', '2023-12-20 06:43:03', NULL),
(652, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-21 Change=> vendor_inv_no=\"54654\" bill_date=\"2023-12-20\" posting_date=\"2023-12-20\"', '2023-12-20 06:45:51', '2023-12-20 06:45:51', NULL),
(653, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-23 Change=> vendor_inv_no=\"6546\" bill_date=\"2023-12-20\" posting_date=\"2023-12-20\"', '2023-12-20 06:46:39', '2023-12-20 06:46:39', NULL),
(654, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,55,58,105,108,109,110,115,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,53,64,76,77,78,79,95,100,101,106,107,24,54\"', '2023-12-20 07:01:28', '2023-12-20 07:01:28', NULL),
(655, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,55,58,105,108,109,110,115,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,53,64,76,77,78,79,95,100,101,106,107,117,24,54\"', '2023-12-20 07:03:58', '2023-12-20 07:03:58', NULL),
(656, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,55,58,105,108,109,110,115,82,83,84,93,94,96,97,102,103,104,111,112,113,114,38,42,43,44,45,46,47,53,64,76,77,78,79,95,100,101,106,107,117,118,24,54\"', '2023-12-20 07:09:42', '2023-12-20 07:09:42', NULL),
(657, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-28', '2023-12-20 11:41:28', '2023-12-20 11:41:28', NULL),
(658, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-28 Change=> vendor_inv_no=\"43534\" bill_date=\"2023-12-20\" financial_year=\"2023\" place_of_supply=\"bhiwandi\" posting_date=\"2023-12-20\"', '2023-12-20 11:42:28', '2023-12-20 11:42:28', NULL),
(659, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-29 Change=> vendor_inv_no=\"7567\"', '2023-12-20 11:49:02', '2023-12-20 11:49:02', NULL),
(660, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-17', '2023-12-20 11:52:24', '2023-12-20 11:52:24', NULL),
(661, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-13 Change=> invoice_ref_date=\"2023-12-19\" is_bb_updated=\"1\" status=\"open\"', '2023-12-20 11:58:25', '2023-12-20 11:58:25', NULL),
(662, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-20 11:58:42', '2023-12-20 11:58:42', NULL),
(663, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-23', '2023-12-20 11:59:53', '2023-12-20 11:59:53', NULL);
INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `user_name`, `session_id`, `module`, `action`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(664, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-14 Change=> invoice_ref_date=\"2023-12-09\" is_bb_updated=\"1\" status=\"open\"', '2023-12-20 12:00:25', '2023-12-20 12:00:25', NULL),
(665, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-20 12:00:43', '2023-12-20 12:00:43', NULL),
(666, '1', 'test admin', 'jKs81rZraij8QX25H9rPAhbUg3b0LmGPRTA7g82z', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-30', '2023-12-20 12:20:20', '2023-12-20 12:20:20', NULL),
(667, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'Products', 'Product Created', 'Product Created: 12300', '2023-12-21 05:46:58', '2023-12-21 05:46:58', NULL),
(668, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'Products', 'Product Updated', 'Product Updated: Name=>12300 Change=> mrp=\"854\" sku=\"31-17-31-29\"', '2023-12-21 05:48:19', '2023-12-21 05:48:19', NULL),
(669, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-22', '2023-12-21 05:49:38', '2023-12-21 05:49:38', NULL),
(670, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: PO-2023-22', '2023-12-21 05:50:15', '2023-12-21 05:50:15', NULL),
(671, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-23', '2023-12-21 05:51:17', '2023-12-21 05:51:17', NULL),
(672, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-31', '2023-12-21 05:51:22', '2023-12-21 05:51:22', NULL),
(673, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-31 Change=> vendor_inv_no=\"9991\" financial_year=\"2023\" place_of_supply=\"bhiwandi\"', '2023-12-21 05:52:28', '2023-12-21 05:52:28', NULL),
(674, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'Products', 'Product Updated', 'Product Updated: Name=>12300 Change=> sku=\"31173129\"', '2023-12-21 06:12:23', '2023-12-21 06:12:23', NULL),
(675, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-32 Change=> vendor_inv_no=\"978654\"', '2023-12-21 06:12:44', '2023-12-21 06:12:44', NULL),
(676, '1', 'test admin', 'Ep4skoaQmSwLpq74GQ654VwOqHJMPXQ5HftlntPp', 'Products', 'Product Updated', 'Product Updated: Name=>12300 Change=> unit_case=\"56\"', '2023-12-21 06:47:34', '2023-12-21 06:47:34', NULL),
(677, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-28', '2023-12-21 10:31:59', '2023-12-21 10:31:59', NULL),
(678, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-31', '2023-12-21 10:32:55', '2023-12-21 10:32:55', NULL),
(679, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-32', '2023-12-21 10:32:58', '2023-12-21 10:32:58', NULL),
(680, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-33', '2023-12-21 10:33:01', '2023-12-21 10:33:01', NULL),
(681, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-34', '2023-12-21 10:33:04', '2023-12-21 10:33:04', NULL),
(682, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-36', '2023-12-21 10:33:09', '2023-12-21 10:33:09', NULL),
(683, '1', 'test admin', 'HlYdRezcoUOz5a2QuqtaHd14z0OVmALFqL6YEMrq', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-37', '2023-12-21 10:33:12', '2023-12-21 10:33:12', NULL),
(684, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'Products', 'Product Created', 'Product Created: 310', '2023-12-22 02:25:42', '2023-12-22 02:25:42', NULL),
(685, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'Products', 'Product Updated', 'Product Updated: Name=>310 Change=> variant=\"34\" hsncode_id=\"310310\" sku=\"32233634\"', '2023-12-22 02:28:27', '2023-12-22 02:28:27', NULL),
(686, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'Products', 'Product Created', 'Product Created: 311', '2023-12-22 02:30:22', '2023-12-22 02:30:22', NULL),
(687, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'Products', 'Product Created', 'Product Created: 312', '2023-12-22 03:02:44', '2023-12-22 03:02:44', NULL),
(688, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-24', '2023-12-22 03:06:17', '2023-12-22 03:06:17', NULL),
(689, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-33', '2023-12-22 03:09:56', '2023-12-22 03:09:56', NULL),
(690, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-33 Change=> vendor_inv_no=\"9552210\" financial_year=\"2023\" place_of_supply=\"In Test Area\" remarks=\"This is created on 22/12/2023.      //././\"', '2023-12-22 03:20:23', '2023-12-22 03:20:23', NULL),
(691, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-39', '2023-12-22 03:24:51', '2023-12-22 03:24:51', NULL),
(692, '1', 'test admin', 'XSImsdQoDD0oLrFw0pQswvJU8JwIFRturfffxOvm', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-15 Change=> invoice_ref_date=\"2023-12-22\" is_bb_updated=\"1\" status=\"open\"', '2023-12-22 04:39:59', '2023-12-22 04:39:59', NULL),
(693, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-30 Change=> vendor_inv_no=\"9878\" bill_date=\"2023-12-22\" financial_year=\"2023\" place_of_supply=\"mumbra\" posting_date=\"2023-12-22\"', '2023-12-22 10:58:09', '2023-12-22 10:58:09', NULL),
(694, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-25', '2023-12-22 11:03:49', '2023-12-22 11:03:49', NULL),
(695, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-35', '2023-12-22 11:04:30', '2023-12-22 11:04:30', NULL),
(696, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-35 Change=> vendor_inv_no=\"78667\" financial_year=\"2023\" place_of_supply=\"kausa\" remarks=\"new entry today by usama batch number is 86123\"', '2023-12-22 11:05:50', '2023-12-22 11:05:50', NULL),
(697, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-36 Change=> vendor_inv_no=\"34324\"', '2023-12-22 11:26:02', '2023-12-22 11:26:02', NULL),
(698, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-37 Change=> vendor_inv_no=\"5345\"', '2023-12-22 11:27:07', '2023-12-22 11:27:07', NULL),
(699, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-40', '2023-12-22 11:32:44', '2023-12-22 11:32:44', NULL),
(700, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-16 Change=> invoice_ref_date=\"2023-12-22\" is_bb_updated=\"1\" status=\"open\"', '2023-12-22 11:33:20', '2023-12-22 11:33:20', NULL),
(701, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-43', '2023-12-22 11:36:36', '2023-12-22 11:36:36', NULL),
(702, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-47', '2023-12-22 11:45:56', '2023-12-22 11:45:56', NULL),
(703, '1', 'test admin', 'PQCIAgtS9QlL4ITZxIRxwt1eSsnvCTLYXWxPKj3d', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-51', '2023-12-22 11:51:38', '2023-12-22 11:51:38', NULL),
(704, '1', 'test admin', '0zJSLBHf38384HwLNkUV9tuPyeoAOKZsqo8E9iUh', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-52', '2023-12-22 12:10:27', '2023-12-22 12:10:27', NULL),
(705, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Created', 'Role Created: testing', '2023-12-26 06:05:36', '2023-12-26 06:05:36', NULL),
(706, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Created', 'Role Created: testing', '2023-12-26 06:07:08', '2023-12-26 06:07:08', NULL),
(707, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Updated', 'Role Updated: Name=>testing Change=> parent_roles=\"5,10,12\"', '2023-12-26 06:10:10', '2023-12-26 06:10:10', NULL),
(708, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Updated', 'Role Updated: Name=>testing Change=> parent_roles=\"10,12\"', '2023-12-26 06:10:28', '2023-12-26 06:10:28', NULL),
(709, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Deleted', 'Role Deleted: testing', '2023-12-26 06:10:41', '2023-12-26 06:10:41', NULL),
(710, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Updated', 'Role Updated: Name=>ASE Change=> parent_roles=\"14\"', '2023-12-26 06:12:48', '2023-12-26 06:12:48', NULL),
(711, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Salesman Change=> parent_roles=\"10,12\"', '2023-12-26 06:13:27', '2023-12-26 06:13:27', NULL),
(712, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Sales Officer Change=> parent_roles=\"12\"', '2023-12-26 06:15:51', '2023-12-26 06:15:51', NULL),
(713, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Internal User Management', 'Internal User Created', 'Internal User Created: Zeph Smith', '2023-12-26 06:40:23', '2023-12-26 06:40:23', NULL),
(714, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Internal User Management', 'Internal User Created', 'Internal User Created: Paki Espinoza', '2023-12-26 07:09:36', '2023-12-26 07:09:36', NULL),
(715, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>Paki Espinoza Change=> parent_users=\"29,44\"', '2023-12-26 07:31:38', '2023-12-26 07:31:38', NULL),
(716, '1', 'test admin', 'PSkwbKZ3mhDGS3hrYEiNTCTjKSeMLTLIWWOUojv9', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>Paki Espinoza Change=> parent_users=\"28,44\"', '2023-12-26 07:31:55', '2023-12-26 07:31:55', NULL),
(717, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-26', '2023-12-26 10:31:26', '2023-12-26 10:31:26', NULL),
(718, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-27', '2023-12-26 10:57:29', '2023-12-26 10:57:29', NULL),
(719, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-28', '2023-12-26 11:04:43', '2023-12-26 11:04:43', NULL),
(720, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-29', '2023-12-26 11:06:37', '2023-12-26 11:06:37', NULL),
(721, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-30', '2023-12-26 11:08:14', '2023-12-26 11:08:14', NULL),
(722, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-31', '2023-12-26 11:14:14', '2023-12-26 11:14:14', NULL),
(723, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-32', '2023-12-26 11:15:52', '2023-12-26 11:15:52', NULL),
(724, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-33', '2023-12-26 11:21:55', '2023-12-26 11:21:55', NULL),
(725, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-40', '2023-12-26 11:30:04', '2023-12-26 11:30:04', NULL),
(726, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-41', '2023-12-26 11:33:48', '2023-12-26 11:33:48', NULL),
(727, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-40 Change=> vendor_inv_no=\"35345\" financial_year=\"2023\" place_of_supply=\"bhiwandi\"', '2023-12-26 12:20:27', '2023-12-26 12:20:27', NULL),
(728, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-53', '2023-12-26 12:20:30', '2023-12-26 12:20:30', NULL),
(729, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-17 Change=> invoice_ref_date=\"2023-12-02\" is_bb_updated=\"1\" status=\"open\"', '2023-12-26 12:21:02', '2023-12-26 12:21:02', NULL),
(730, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'BillBooking', 'BillBooking Created', 'BillBooking Created: ', '2023-12-26 12:30:31', '2023-12-26 12:30:31', NULL),
(731, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'BillBooking', 'BillBooking Created', 'BillBooking Created: ', '2023-12-26 12:32:01', '2023-12-26 12:32:01', NULL),
(732, '1', 'test admin', '50pa8h4maWfYVZLEJ2cADLyojxqdzEo0FS8MG29x', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-26 12:41:02', '2023-12-26 12:41:02', NULL),
(733, '1', 'test admin', 'zNk9K4MF9CE07nQqDOj2qciRkJQrTcpyYfzC9siF', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-34', '2023-12-27 04:53:08', '2023-12-27 04:53:08', NULL),
(734, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-42', '2023-12-27 04:56:23', '2023-12-27 04:56:23', NULL),
(735, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-42 Change=> vendor_inv_no=\"978978\" bill_date=\"2023-12-27\" financial_year=\"2023\" place_of_supply=\"mumbra\" discount=\"1\" remarks=\"new added batch 123 half\"', '2023-12-27 04:57:59', '2023-12-27 04:57:59', NULL),
(736, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-54', '2023-12-27 04:59:18', '2023-12-27 04:59:18', NULL),
(737, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-35', '2023-12-27 05:06:54', '2023-12-27 05:06:54', NULL),
(738, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-44', '2023-12-27 05:07:01', '2023-12-27 05:07:01', NULL),
(739, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-44 Change=> vendor_inv_no=\"6984654\" financial_year=\"2023\" place_of_supply=\"bhiwandi\" remarks=\"check for back dated date\"', '2023-12-27 05:10:33', '2023-12-27 05:10:33', NULL),
(740, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-56', '2023-12-27 05:10:49', '2023-12-27 05:10:49', NULL),
(741, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'Bill Booking', 'Bill Booking Deleted', 'Bill Booking Deleted: BB-2023-21', '2023-12-27 05:18:29', '2023-12-27 05:18:29', NULL),
(742, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-22 Change=> invoice_ref_date=\"2023-12-20\" is_bb_updated=\"1\"', '2023-12-27 05:50:40', '2023-12-27 05:50:40', NULL),
(743, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-27 05:50:58', '2023-12-27 05:50:58', NULL),
(744, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-23 Change=> invoice_ref_date=\"2023-12-07\" is_bb_updated=\"1\"', '2023-12-27 06:03:30', '2023-12-27 06:03:30', NULL),
(745, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-27 06:03:47', '2023-12-27 06:03:47', NULL),
(746, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-43 Change=> vendor_inv_no=\"546\"', '2023-12-27 06:04:26', '2023-12-27 06:04:26', NULL),
(747, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-61', '2023-12-27 06:04:30', '2023-12-27 06:04:30', NULL),
(748, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-24 Change=> invoice_ref_date=\"2023-12-20\" is_bb_updated=\"1\"', '2023-12-27 06:04:50', '2023-12-27 06:04:50', NULL),
(749, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-36', '2023-12-27 06:38:16', '2023-12-27 06:38:16', NULL),
(750, '1', 'test admin', 'WWWOYpr61qhUL4a6tIB01pybPlX175NIZsZHiA9j', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-37', '2023-12-27 06:39:18', '2023-12-27 06:39:18', NULL),
(751, '1', 'test admin', 'lyXPN4LQ6BSyfRNeuXPMkZAsX65KsVUNK9F8QZLx', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2024-1', '2023-12-27 07:12:05', '2023-12-27 07:12:05', NULL),
(752, '1', 'test admin', 'lyXPN4LQ6BSyfRNeuXPMkZAsX65KsVUNK9F8QZLx', 'PurchaseOrder', 'PurchaseOrder Deleted', 'PurchaseOrder Deleted: PO-2023-2024-1', '2023-12-27 07:12:48', '2023-12-27 07:12:48', NULL),
(753, '1', 'test admin', '1mFktEyBf3Hol1ix2W55sYssKbhD4Qm415oLGaiQ', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2023-1', '2023-12-27 07:14:25', '2023-12-27 07:14:25', NULL),
(754, '1', 'test admin', 'o9eQV4ZyK4figki7hA2KlocQA3qX3JSIXE87vZvU', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2024-2', '2023-12-27 07:15:17', '2023-12-27 07:15:17', NULL),
(755, '1', 'test admin', 'ANrBbMR4OrxVj6i9CP6BCuyxf96vixR9hVzj4AMd', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-2024-3', '2023-12-27 07:58:27', '2023-12-27 07:58:27', NULL),
(756, '1', 'test admin', 'ANrBbMR4OrxVj6i9CP6BCuyxf96vixR9hVzj4AMd', 'Roles Management', 'Role Created', 'Role Created: Super Admin', '2023-12-27 09:20:03', '2023-12-27 09:20:03', NULL),
(757, '1', 'test admin', 'ANrBbMR4OrxVj6i9CP6BCuyxf96vixR9hVzj4AMd', 'Internal User Management', 'Internal User Created', 'Internal User Created: hermaj test', '2023-12-27 09:28:26', '2023-12-27 09:28:26', NULL),
(758, '1', 'test admin', 'ANrBbMR4OrxVj6i9CP6BCuyxf96vixR9hVzj4AMd', 'Internal User Management', 'Internal User Created', 'Internal User Created: hermaj test', '2023-12-27 09:37:25', '2023-12-27 09:37:25', NULL),
(759, '53', 'hermaj test', 'a2aCckZk5TYhYDk91bEcUflKEAxYGc3AqvmGjXjT', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> parent_roles=\"\" menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,100,101,106,107,117,118,24,54\"', '2023-12-27 09:39:37', '2023-12-27 09:39:37', NULL),
(760, '53', 'hermaj test', 'Vah4gYMnqeR4p9U53gedS6mzfiPzVYfhDzVYcjuf', 'Internal User Management', 'Internal User Deleted', 'Internal User Deleted: hermaj test', '2023-12-27 11:21:29', '2023-12-27 11:21:29', NULL),
(761, '1', 'test admin', 'VEc7cjKbtF5Oo7jZRKoFFhJynI04sipDWHbmqP6S', 'Internal User Management', 'Internal User Created', 'Internal User Created: super admin', '2023-12-27 11:22:02', '2023-12-27 11:22:02', NULL),
(762, '1', 'test admin', 'xkgjb4dfDLpisdARquZJx6ia8jI3PSxl29060Nhd', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-2024-1', '2023-12-27 11:24:14', '2023-12-27 11:24:14', NULL),
(763, '1', 'test admin', 'xkgjb4dfDLpisdARquZJx6ia8jI3PSxl29060Nhd', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-2024-1 Change=> vendor_inv_no=\"6565\" place_of_supply=\"bhiwandi\" remarks=\"tesing inventory\"', '2023-12-27 11:24:53', '2023-12-27 11:24:53', NULL),
(764, '1', 'test admin', 'xkgjb4dfDLpisdARquZJx6ia8jI3PSxl29060Nhd', 'A/P Invoice', 'A/P Invoice Created', 'A/P Invoice Created: AP-2023-2024-1', '2023-12-27 11:25:03', '2023-12-27 11:25:03', NULL),
(765, '1', 'test admin', 'xkgjb4dfDLpisdARquZJx6ia8jI3PSxl29060Nhd', 'BillBooking', 'BillBooking Updated', 'BillBooking Updated: Name=>BB-2023-2024-1 Change=> invoice_ref_date=\"2023-12-14\" is_bb_updated=\"1\"', '2023-12-27 11:25:19', '2023-12-27 11:25:19', NULL),
(766, '1', 'test admin', 'xkgjb4dfDLpisdARquZJx6ia8jI3PSxl29060Nhd', 'Banking Payment', 'Banking Payment Created', 'Banking Payment Created: ', '2023-12-27 11:27:08', '2023-12-27 11:27:08', NULL),
(767, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-24-1', '2024-01-02 05:08:26', '2024-01-02 05:08:26', NULL),
(768, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-24-1', '2024-01-02 05:08:36', '2024-01-02 05:08:36', NULL),
(769, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-24-1 Change=> vendor_inv_no=\"36346\" financial_year=\"2023-24\" place_of_supply=\"test\"', '2024-01-02 05:09:12', '2024-01-02 05:09:12', NULL),
(770, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'Series Number Master', 'Series Number Created', 'Series Number Created: GRR', '2024-01-02 05:13:04', '2024-01-02 05:13:04', NULL),
(771, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'Series Number Master', 'Series Number Created', 'Series Number Created: GIR', '2024-01-02 05:13:41', '2024-01-02 05:13:41', NULL),
(772, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'Series Number Master', 'Series Number Created', 'Series Number Created: AR', '2024-01-02 05:14:20', '2024-01-02 05:14:20', NULL),
(773, '1', 'test admin', 'IBUFqHxUtZ6PvrPxijkQVOswmJ0Fi70daod1YlWr', 'Roles Management', 'Role Created', 'Role Created: 4', '2024-01-02 05:42:16', '2024-01-02 05:42:16', NULL),
(774, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 05:51:37', '2024-01-02 05:51:37', NULL),
(775, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Updated', 'Role Updated: Name=>2 Change=> parent_roles=\"\" menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 05:52:19', '2024-01-02 05:52:19', NULL),
(776, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Updated', 'Role Updated: Name=>2 Change=> parent_roles=\"\"', '2024-01-02 06:00:38', '2024-01-02 06:00:38', NULL),
(777, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 06:07:42', '2024-01-02 06:07:42', NULL),
(778, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 06:11:50', '2024-01-02 06:11:50', NULL),
(779, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 5', '2024-01-02 06:27:12', '2024-01-02 06:27:12', NULL),
(780, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Updated', 'Role Updated: Name=>2 Change=> name=\"2\" menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 06:28:54', '2024-01-02 06:28:54', NULL),
(781, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 4', '2024-01-02 06:32:14', '2024-01-02 06:32:14', NULL),
(782, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 9', '2024-01-02 06:37:27', '2024-01-02 06:37:27', NULL),
(783, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Created', 'Role Created: 8', '2024-01-02 06:37:50', '2024-01-02 06:37:50', NULL),
(784, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Salesman Change=> menu_ids=\"53\" submenu_ids=\"116\" is_sub=\"1\"', '2024-01-02 06:38:09', '2024-01-02 06:38:09', NULL),
(785, '54', 'super admin', 'zkCFWOXKg1z87keGM8eZCK7HTXKkSNQjTYDvIyeA', 'Internal User Management', 'Internal User Created', 'Internal User Created: admin test', '2024-01-02 06:49:36', '2024-01-02 06:49:36', NULL),
(786, '54', 'super admin', 'COFHVNANTy2GahghtJ2MQJpeuAgQMNCRgbKBAPyx', 'Internal User Management', 'Internal User Created', 'Internal User Created: asm test', '2024-01-02 06:55:55', '2024-01-02 06:55:55', NULL),
(787, '54', 'super admin', 'COFHVNANTy2GahghtJ2MQJpeuAgQMNCRgbKBAPyx', 'Internal User Management', 'Internal User Created', 'Internal User Created: ase test', '2024-01-02 06:56:30', '2024-01-02 06:56:30', NULL),
(788, '54', 'super admin', 'COFHVNANTy2GahghtJ2MQJpeuAgQMNCRgbKBAPyx', 'Internal User Management', 'Internal User Created', 'Internal User Created: se test', '2024-01-02 07:00:54', '2024-01-02 07:00:54', NULL),
(789, '54', 'super admin', 'COFHVNANTy2GahghtJ2MQJpeuAgQMNCRgbKBAPyx', 'Internal User Management', 'Internal User Created', 'Internal User Created: Shady John', '2024-01-02 07:01:27', '2024-01-02 07:01:27', NULL),
(790, '55', 'admin test', 'xEmRduFLaeEZGdkGaDcFNst0CoNioMpfiF2I46bP', 'Internal User Management', 'Internal User Created', 'Internal User Created: test salesman', '2024-01-02 07:14:37', '2024-01-02 07:14:37', NULL),
(791, '54', 'super admin', 'OPR1eiKnQCcNk3kx1HReC5tLRcadQL5THcno17CB', 'Internal User Management', 'Internal User Created', 'Internal User Created: admin test', '2024-01-02 07:15:49', '2024-01-02 07:15:49', NULL),
(792, '61', 'admin test', 'VehjOMIP3clSKahwYayWpn1GHciZTXmnKHUgB6n7', 'Internal User Management', 'Internal User Created', 'Internal User Created: asm test', '2024-01-02 07:16:24', '2024-01-02 07:16:24', NULL),
(793, '61', 'admin test', 'VehjOMIP3clSKahwYayWpn1GHciZTXmnKHUgB6n7', 'Internal User Management', 'Internal User Created', 'Internal User Created: Ebony Baker', '2024-01-02 07:16:50', '2024-01-02 07:16:50', NULL),
(794, '61', 'admin test', 'VehjOMIP3clSKahwYayWpn1GHciZTXmnKHUgB6n7', 'Internal User Management', 'Internal User Created', 'Internal User Created: Breanna Kelley', '2024-01-02 07:17:19', '2024-01-02 07:17:19', NULL),
(795, '61', 'admin test', 'VehjOMIP3clSKahwYayWpn1GHciZTXmnKHUgB6n7', 'Internal User Management', 'Internal User Created', 'Internal User Created: Shady John', '2024-01-02 07:17:36', '2024-01-02 07:17:36', NULL),
(796, '54', 'super admin', 'SYXswR0kHGjakcZYQq7gTkg0ZOx59BSgPfz0LTzb', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>Shady John Change=> parent_users=\"\"', '2024-01-02 07:18:35', '2024-01-02 07:18:35', NULL),
(797, '54', 'super admin', 'SYXswR0kHGjakcZYQq7gTkg0ZOx59BSgPfz0LTzb', 'Internal User Management', 'Internal User Updated', 'Internal User Updated: Name=>Shady John Change=> parent_users=\"64\"', '2024-01-02 07:19:19', '2024-01-02 07:19:19', NULL),
(798, '54', 'super admin', 'SYXswR0kHGjakcZYQq7gTkg0ZOx59BSgPfz0LTzb', 'Roles Management', 'Role Created', 'Role Created: 7', '2024-01-02 07:20:00', '2024-01-02 07:20:00', NULL),
(799, '54', 'super admin', '6HucTFSUvI2FwXX0gnSXmjJ9mZmH1C1Rpg4xfyXa', 'Roles Management', 'Role Created', 'Role Created: 3', '2024-01-02 08:21:52', '2024-01-02 08:21:52', NULL),
(800, '54', 'super admin', '6HucTFSUvI2FwXX0gnSXmjJ9mZmH1C1Rpg4xfyXa', 'Internal User Management', 'Internal User Created', 'Internal User Created: admin1 test', '2024-01-02 08:22:28', '2024-01-02 08:22:28', NULL),
(801, '54', 'super admin', 'EvNuZLxuT82dCGXrczUC1UoGMPshebSelub4TVdE', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Manager Change=> menu_ids=\"43,44,47,49,50,51,53,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,116,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 08:34:13', '2024-01-02 08:34:13', NULL),
(802, '54', 'super admin', 'EvNuZLxuT82dCGXrczUC1UoGMPshebSelub4TVdE', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Manager Change=> submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,116,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 09:05:09', '2024-01-02 09:05:09', NULL),
(803, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 11:07:38', '2024-01-02 11:07:38', NULL),
(804, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Internal User Management', 'Internal User Created', 'Internal User Created: test admin', '2024-01-02 11:07:57', '2024-01-02 11:07:57', NULL),
(805, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 11:09:10', '2024-01-02 11:09:10', NULL),
(806, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 11:13:47', '2024-01-02 11:13:47', NULL),
(807, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: Admin', '2024-01-02 11:16:13', '2024-01-02 11:16:13', NULL),
(808, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 11:19:04', '2024-01-02 11:19:04', NULL),
(809, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 11:21:53', '2024-01-02 11:21:53', NULL),
(810, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Internal User Management', 'Internal User Created', 'Internal User Created: admin test', '2024-01-02 11:22:52', '2024-01-02 11:22:52', NULL),
(811, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 11:29:44', '2024-01-02 11:29:44', NULL),
(812, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 2', '2024-01-02 12:18:06', '2024-01-02 12:18:06', NULL),
(813, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Internal User Management', 'Internal User Created', 'Internal User Created: test admin', '2024-01-02 12:18:43', '2024-01-02 12:18:43', NULL),
(814, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,49,50,51,53,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,116,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 12:28:07', '2024-01-02 12:28:07', NULL),
(815, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 5', '2024-01-02 12:30:50', '2024-01-02 12:30:50', NULL),
(816, '54', 'super admin', 'E83mGsBlnGCQ4jUV0pZP243OYdSlku8egsH3TkiU', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Admin Change=> menu_ids=\"43,44,47,49,50,51,11,22\" submenu_ids=\"48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24\"', '2024-01-02 12:30:54', '2024-01-02 12:30:54', NULL),
(817, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 4', '2024-01-02 12:32:10', '2024-01-02 12:32:10', NULL),
(818, '69', 'test admin', 'LJwGomnHcyvdWBHha8me2bvaJroHuAC5z4awohym', 'Internal User Management', 'Internal User Created', 'Internal User Created: Dustin Ramos', '2024-01-02 12:32:32', '2024-01-02 12:32:32', NULL),
(819, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>ASE Change=> parent_roles=\"34\"', '2024-01-02 12:33:00', '2024-01-02 12:33:00', NULL),
(820, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 9', '2024-01-02 12:33:15', '2024-01-02 12:33:15', NULL),
(821, '69', 'test admin', 'LJwGomnHcyvdWBHha8me2bvaJroHuAC5z4awohym', 'Internal User Management', 'Internal User Created', 'Internal User Created: Malcolm Meadows', '2024-01-02 12:33:28', '2024-01-02 12:33:28', NULL),
(822, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Created', 'Role Created: 8', '2024-01-02 12:34:40', '2024-01-02 12:34:40', NULL),
(823, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Sales Executive Change=> parent_roles=\"35\"', '2024-01-02 12:34:58', '2024-01-02 12:34:58', NULL),
(824, '69', 'test admin', 'LJwGomnHcyvdWBHha8me2bvaJroHuAC5z4awohym', 'Internal User Management', 'Internal User Created', 'Internal User Created: Gail Bruce', '2024-01-02 12:35:32', '2024-01-02 12:35:32', NULL),
(825, '69', 'test admin', 'LJwGomnHcyvdWBHha8me2bvaJroHuAC5z4awohym', 'Internal User Management', 'Internal User Created', 'Internal User Created: Shady John', '2024-01-02 12:35:52', '2024-01-02 12:35:52', NULL),
(826, '54', 'super admin', 'nEfBXTUgwoFBi98od1fTYt8vKpocVy9p0WQIHeiD', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Salesman Change=> menu_ids=\"53\" submenu_ids=\"116\" is_sub=\"1\"', '2024-01-02 12:36:29', '2024-01-02 12:36:29', NULL),
(827, '69', 'test admin', 'mkmXHXy5cuITdjp7jGF6qLwJHTTgYBxP6RB1UOIQ', 'Outlet', 'Outlet Created', 'Outlet Created: Ivory Rosario', '2024-01-02 12:52:30', '2024-01-02 12:52:30', NULL),
(828, '69', 'test admin', 'mkmXHXy5cuITdjp7jGF6qLwJHTTgYBxP6RB1UOIQ', 'BeatCalender Master', 'BeatCalender Created', 'BeatCalender Created: ', '2024-01-02 13:19:38', '2024-01-02 13:19:38', NULL),
(829, '69', 'test admin', 'mkmXHXy5cuITdjp7jGF6qLwJHTTgYBxP6RB1UOIQ', 'BeatCalender Master', 'BeatCalender Updated', 'BeatCalender Updated: Name=> Change=> beat_id=\"45\"', '2024-01-02 13:23:12', '2024-01-02 13:23:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-11 18:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(50) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `account_status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `parent_users` varchar(220) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`admin_user_id`, `first_name`, `last_name`, `email`, `password`, `mobile_no`, `profile_pic`, `role_id`, `company_id`, `account_status`, `remember_token`, `location_id`, `is_admin`, `user_type`, `role`, `parent_users`, `created_at`, `updated_at`, `deleted_at`) VALUES
(54, 'super', 'admin', 'superadmin@gmail.com', '$2y$10$mw/sr23ZhbqLyKv1owvRZe7bwDrH1mAy5HFDnrw5kF0mHx7Sfw14S', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '17', '', '2023-12-27 11:22:02', '2023-12-27 11:22:30', NULL),
(69, 'test', 'admin', 'admin@gmail.com', '$2y$10$kI8KGQ2U8l4GBOTpd3NXnepqTL8hRe5pv15rXc01NZcsOXjiAYuEW', NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '33', '', '2024-01-02 12:18:43', '2024-01-02 12:19:17', NULL),
(70, 'Dustin', 'Ramos', 'gypupuz@mailinator.com', '$2y$10$9uaTU8BDfq1AyACsSDuGP.po4Rnh3PJ3wjFHg1szZxlZ7u5CjelPe', NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '34', '', '2024-01-02 12:32:32', '2024-01-02 12:32:32', NULL),
(71, 'Malcolm', 'Meadows', 'sykyhiqyp@mailinator.com', '$2y$10$jzVBBI.XB6kjkcAGmJQXC.ChvIfeFMtufWlelVQ36zoYe7.s8kFdm', NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '35', '70', '2024-01-02 12:33:28', '2024-01-02 12:33:28', NULL),
(72, 'Gail', 'Bruce', 'pehuryc@mailinator.com', '$2y$10$j1Tnl5UpLIaOuSa4dgbjJuJeDoQS.HP3toVfFwUk3e7hs04aPoI4K', NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '36', '71', '2024-01-02 12:35:32', '2024-01-02 12:35:32', NULL),
(73, 'Shady', 'John', 'shady@gmail.com', '$2y$10$Ft/cS5cAriaKkdwgCOvgAe7rIhBvGqIO5bzTsCFNs9h2cUQVk6/Uy', NULL, NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '37', '72', '2024-01-02 12:35:52', '2024-01-02 12:35:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `agent_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `tan` varchar(100) DEFAULT NULL,
  `cin` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `name`, `email`, `contact_no`, `address`, `gst_no`, `state`, `pan`, `tan`, `cin`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Blue Bell Logistics Private Limited', 'bluebell@gmail.com', '34242343', 'India', '23423423', 'Manipur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 08:14:19', '2021-05-25 08:15:37', '2021-05-25 08:15:37'),
(4, 'Blue Bell Logistics Private Limited', 'bluebell@gmail.com', '234234234', 'India', '23423423423', 'Madhya Pradesh', '234234234', '3453453453', '2423423423', 'Blue Bell Logistics Pvt Ltd', '50200018838693', 'HDFC Bank Ltd', 'HDFC0000592', 'MUMBAI - MAROL State: MAHARASHTRA', '2021-05-25 08:16:01', '2021-05-26 11:51:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_invoice`
--

DROP TABLE IF EXISTS `ap_invoice`;
CREATE TABLE IF NOT EXISTS `ap_invoice` (
  `goods_service_receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` int(11) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `purchase_order_counter` int(11) DEFAULT NULL,
  `vendor_ref_no` varchar(110) NOT NULL,
  `vendor_inv_no` varchar(100) DEFAULT NULL,
  `ap_inv_no` int(11) DEFAULT NULL,
  `trans_type` varchar(110) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `total_down_payment` varchar(200) DEFAULT NULL,
  `applied_amount` varchar(110) DEFAULT NULL,
  `balance_due` varchar(110) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_to` varchar(255) DEFAULT NULL,
  `receipt_type` varchar(255) DEFAULT NULL,
  `po_document` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `ship_from` varchar(200) DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `t_down_pmnt` varchar(110) DEFAULT NULL,
  `applied_amt` varchar(110) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `is_bill_booking_done` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ap_invoice_batches`
--

DROP TABLE IF EXISTS `ap_invoice_batches`;
CREATE TABLE IF NOT EXISTS `ap_invoice_batches` (
  `goods_service_receipts_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_service_receipt_id` int(11) DEFAULT NULL,
  `goods_service_receipts_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipts_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ap_invoice_batches`
--

INSERT INTO `ap_invoice_batches` (`goods_service_receipts_batches_id`, `goods_service_receipt_id`, `goods_service_receipts_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 83, 68, 2, 'dffg updated1', '2023-06-13', '2023-06-13', '2023-06-12 10:47:13', '2023-06-12 10:47:13', NULL),
(12, 83, 68, 2, 'hfgh updated', '2023-06-22', '2023-06-27', '2023-06-12 10:47:13', '2023-06-12 10:47:13', NULL),
(13, 83, 69, 2, '34eryrtuy updated', '2023-06-13', '2023-06-13', '2023-06-12 10:47:13', '2023-06-12 10:47:13', NULL),
(14, 83, 69, 2, '43esdef updated', '2023-06-28', '2023-06-28', '2023-06-12 10:47:13', '2023-06-12 10:47:13', NULL),
(15, 84, 70, 3, 'check now', '2023-06-13', '2023-06-13', '2023-06-12 11:07:57', '2023-06-12 11:17:35', NULL),
(16, 84, 70, 3, 'hfgh updated', '2023-06-22', '2023-06-27', '2023-06-12 11:07:57', '2023-06-12 11:17:35', NULL),
(17, 84, 71, 3, '34eryrtuy updated', '2023-06-13', '2023-06-13', '2023-06-12 11:07:57', '2023-06-12 11:17:35', NULL),
(18, 84, 71, 3, '43esdef updated worw', '2023-06-28', '2023-06-28', '2023-06-12 11:07:57', '2023-06-12 11:17:35', NULL),
(19, 84, 71, 3, 'sdgsdfg', '2023-06-14', NULL, '2023-06-12 11:17:35', '2023-06-12 11:17:35', NULL),
(20, 85, 72, 2, 'dfhxdfhdfgh', NULL, NULL, '2023-11-20 11:59:15', '2023-11-20 11:59:15', NULL),
(21, 85, 72, 2, 'dfghfg', NULL, NULL, '2023-11-20 11:59:15', '2023-11-20 11:59:15', NULL),
(22, 85, 72, 2, 'sfghsfgh', NULL, NULL, '2023-11-20 11:59:15', '2023-11-20 11:59:15', NULL),
(23, 85, 73, 2, 'new test', NULL, NULL, '2023-11-20 11:59:15', '2023-11-20 11:59:15', NULL),
(24, 86, 74, 2, 'dfhxdfhdfgh', NULL, NULL, '2023-11-21 08:44:25', '2023-11-21 08:44:25', NULL),
(25, 86, 74, 2, 'dfghfg', NULL, NULL, '2023-11-21 08:44:25', '2023-11-21 08:44:25', NULL),
(26, 86, 74, 2, 'sfghsfgh', NULL, NULL, '2023-11-21 08:44:25', '2023-11-21 08:44:25', NULL),
(27, 86, 75, 2, 'new test', NULL, NULL, '2023-11-21 08:44:25', '2023-11-21 08:44:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_invoice_items`
--

DROP TABLE IF EXISTS `ap_invoice_items`;
CREATE TABLE IF NOT EXISTS `ap_invoice_items` (
  `goods_service_receipts_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_service_receipt_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipts_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(47, 'Khadakpada', '2023-09-06 13:29:44', '2023-09-06 13:29:44', NULL),
(48, 'Lal CHowki', '2023-09-06 13:30:00', '2023-09-06 13:30:00', NULL),
(49, 'Bhiwandi', '2023-09-06 14:35:12', '2023-09-06 14:35:12', NULL),
(50, 'Saki Vihar', '2023-10-14 15:28:07', '2023-10-14 15:28:07', NULL),
(51, 'Patlipada', '2023-10-14 15:37:07', '2023-10-14 15:37:07', NULL),
(52, 'Test Area', '2023-12-14 13:19:32', '2023-12-14 13:19:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ar_invoice`
--

DROP TABLE IF EXISTS `ar_invoice`;
CREATE TABLE IF NOT EXISTS `ar_invoice` (
  `order_fulfillment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `order_booking_counter` int(11) DEFAULT NULL,
  `customer_ref_no` varchar(110) DEFAULT NULL,
  `trans_type` varchar(110) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `total_down_payment` varchar(200) DEFAULT NULL,
  `applied_amount` varchar(110) DEFAULT NULL,
  `balance_due` varchar(110) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_to` varchar(255) DEFAULT NULL,
  `receipt_type` varchar(255) DEFAULT NULL,
  `po_document` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `ship_from` varchar(200) DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `t_down_pmnt` varchar(110) DEFAULT NULL,
  `applied_amt` varchar(110) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_invoice`
--

INSERT INTO `ar_invoice` (`order_fulfillment_id`, `order_booking_id`, `order_booking_counter`, `customer_ref_no`, `trans_type`, `place_of_supply`, `total_down_payment`, `applied_amount`, `balance_due`, `bill_no`, `bill_to`, `receipt_type`, `po_document`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `ship_from`, `contact_person`, `status`, `posting_date`, `due_date`, `document_date`, `discount`, `bill_to_gst_no`, `gst_rate`, `t_down_pmnt`, `applied_amt`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 100, 4, '427', NULL, 'Voluptatum non saepe', NULL, NULL, NULL, '3PSAP/22-23/4', NULL, NULL, NULL, '2023-06-07', 124, NULL, NULL, '22-23', NULL, NULL, 77, 'open', '2023-06-07', '1982-04-18', '1970-07-22', 4, 'SDGDF546554', '18', NULL, NULL, 'Seventy-Two Thousand Eight Hundred and Fifty Only', 'Eleven Thousand Five Hundred and Three Only', '65208', '0', '0', '11502.6912', '11502.6912', NULL, '0', 'Facere ipsam quis al', NULL, NULL, '2023-06-07 12:06:55', '2023-06-07 12:13:18', '2023-06-07 12:13:18'),
(18, 101, 5, '346', NULL, 'Et aliqua Doloribus', NULL, NULL, NULL, '3PSAP/22-23/5', NULL, NULL, NULL, '2023-06-07', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, NULL, 77, 'open', '2023-06-07', '1992-10-04', '1978-02-10', 1, 'SDGDF546554', '18', NULL, NULL, 'Two Lakhs Fifty-Five Thousand Three Hundred and Seventy-One Only', 'Thirty-Nine Thousand Two Hundred and Eigthy-Eight Only', '224956', '0', '0', '39287.772', '39287.772', NULL, '0', 'Nostrud maxime fugia', NULL, NULL, '2023-06-07 12:13:57', '2023-06-07 12:14:08', '2023-06-07 12:14:08'),
(19, 101, 5, '346', 'sdg', 'Et aliqua Doloribus', NULL, NULL, NULL, '3PSAP/22-23/5', NULL, NULL, NULL, '2023-06-07', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, NULL, 77, 'open', '2023-06-07', '1992-10-04', '1978-02-10', 3, 'SDGDF546554', '18', NULL, NULL, 'Two Lakhs Fifty-Four Thousand Seven Hundred and Sixty-Seven Only', 'Thirty-Nine Thousand Eight Hundred and Seventy-Seven Only', '228256', '0', '0', '39876.5448', '39876.5448', NULL, '0', 'Nostrud maxime fugia', NULL, NULL, '2023-06-07 12:14:30', '2023-06-12 12:34:24', '2023-06-12 12:34:24'),
(20, 106, 10, '886', NULL, 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', NULL, NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:57:21', '2023-06-12 12:57:45', '2023-06-12 12:57:45'),
(21, 106, 10, '886', NULL, 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', NULL, NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:57:47', '2023-06-12 13:07:33', '2023-06-12 13:07:33'),
(22, 106, 10, '886', NULL, 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', NULL, NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 13:07:35', '2023-06-12 13:10:35', '2023-06-12 13:10:35'),
(23, 106, 10, '886', 'sdgd', 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', NULL, NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 13:10:37', '2023-11-20 11:13:57', '2023-11-20 11:13:57'),
(24, 106, 10, '886', NULL, 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', '126', NULL, NULL, '2023-11-20', 124, NULL, NULL, '22-23', NULL, '183', 77, 'open', '2023-11-20', '1983-10-10', '1977-11-29', 10, 'SDGDF546554', '18', NULL, NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-11-20 11:14:00', '2023-11-20 11:14:05', '2023-11-20 11:14:05'),
(25, 106, 10, '886', 'zxcgdf', 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', '126', NULL, NULL, '2023-12-05', 124, NULL, NULL, '22-23', NULL, '183', 77, 'open', '2023-12-05', '1983-10-10', '1977-11-29', 10, 'SDGDF546554', '18', NULL, NULL, 'Four Thousand Two Hundred and Sixty-One Only', 'Seven Hundred and Ten Only', '80758', '355.0968', '355.0968', '0', '710.1936', NULL, '0', 'Est id vero hic cufsdg', NULL, NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(26, 106, 10, '886', NULL, 'zxdfhfg', NULL, NULL, NULL, '3PSAP/22-23/10', '126', NULL, NULL, '2023-11-21', 124, NULL, NULL, '22-23', NULL, '183', 77, 'open', '2023-11-21', '1983-10-10', '1977-11-29', 10, 'SDGDF546554', '18', NULL, NULL, 'Four Thousand Two Hundred and Sixty-One Only', 'Seven Hundred and Ten Only', '80758', '355.0968', '355.0968', '0', '710.1936', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-11-22 11:28:05', '2023-12-05 05:21:48', NULL),
(27, 107, 1, '3300', 'cash', 'thane', NULL, NULL, NULL, '3PSAP/2023/1', '192', NULL, NULL, '2023-12-15', 152, 'Aks Customer', NULL, '2023', NULL, '193', 105, 'open', '2023-12-15', '2023-12-17', '2023-12-18', NULL, 'akss45236tst', '18', NULL, NULL, 'Thirteen Thousand Two Hundred and Seventy-Five Only', 'Two Thousand and Twenty-Five Only', '11250', '1012.5', '1012.5', '0', '2025', NULL, '13275', NULL, NULL, NULL, '2023-12-15 02:27:44', '2023-12-15 02:28:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ar_invoice_batches`
--

DROP TABLE IF EXISTS `ar_invoice_batches`;
CREATE TABLE IF NOT EXISTS `ar_invoice_batches` (
  `ar_invoice_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_fulfillment_id` int(11) DEFAULT NULL,
  `order_fulfillment_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ar_invoice_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ar_invoice_batches`
--

INSERT INTO `ar_invoice_batches` (`ar_invoice_batches_id`, `order_fulfillment_id`, `order_fulfillment_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 93, 2, 'zsdgjh updated1', NULL, NULL, '2023-06-12 12:57:47', '2023-06-12 12:57:47', NULL),
(2, 21, 93, 2, 'dfhfdghfgh up to date', NULL, NULL, '2023-06-12 12:57:47', '2023-06-12 12:57:47', NULL),
(3, 22, 94, 2, 'zsdgjh updated1', NULL, NULL, '2023-06-12 13:07:35', '2023-06-12 13:07:35', NULL),
(4, 22, 94, 2, 'dfhfdghfgh up to date', NULL, NULL, '2023-06-12 13:07:35', '2023-06-12 13:07:35', NULL),
(5, 23, 95, 3, 'zsdgjh updated1 sdgjhasdjukg', NULL, NULL, '2023-06-12 13:10:37', '2023-06-12 13:18:10', NULL),
(6, 23, 95, 3, 'dfhfdghfgh up to date sdrhfg', NULL, NULL, '2023-06-12 13:10:37', '2023-06-12 13:18:10', NULL),
(7, 24, 96, 3, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(8, 24, 96, 3, 'dfhfdghfgh', NULL, NULL, '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(9, 24, 96, 3, 'zsdgjh updated1', NULL, NULL, '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(10, 24, 96, 3, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(11, 25, 97, NULL, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(12, 25, 97, NULL, 'dfhfdghfgh', NULL, NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(13, 25, 97, NULL, 'zsdgjh updated1', NULL, NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(14, 25, 97, NULL, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(15, 26, 98, 3, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL),
(16, 26, 98, 3, 'dfhfdghfgh', NULL, NULL, '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL),
(17, 26, 98, 3, 'zsdgjh updated1', NULL, NULL, '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL),
(18, 26, 98, 3, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ar_invoice_items`
--

DROP TABLE IF EXISTS `ar_invoice_items`;
CREATE TABLE IF NOT EXISTS `ar_invoice_items` (
  `order_fulfillment_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_fulfillment_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `order_booking_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(110) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_invoice_items`
--

INSERT INTO `ar_invoice_items` (`order_fulfillment_item_id`, `order_fulfillment_id`, `party_id`, `order_booking_id`, `item_name`, `item_code`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(85, 17, NULL, 100, 'Lesley Lara', NULL, 'Doloremque ea eu dol', '143', '2', '446.88', NULL, '456', 1, '11502.69', '0', '0', '0', '0', '18', '11502.6912', '63903.84', NULL, '2023-06-07 12:06:55', '2023-06-07 12:06:55', NULL),
(86, 18, NULL, 101, 'Orlando Cherry', NULL, 'Non laboriosam impe', '252', '3', '858.45', '255268.69', '885', 1, '38939.29', '0', '0', '0', '0', '18', '38939.292', '216329.40', NULL, '2023-06-07 12:13:57', '2023-06-07 12:13:57', NULL),
(87, 18, NULL, 101, 'sfg', NULL, 'sdgsdf', '44', NULL, '44.00', '2284.48', '44', 1, '348.48', NULL, '0', NULL, '0', '18', '348.48', '1936.00', NULL, '2023-06-07 12:13:57', '2023-06-07 12:13:57', NULL),
(88, 19, NULL, 101, 'Orlando Cherry', NULL, 'Non laboriosam impe', '252', '3', '858.45', '255268.69', '885', 1, '38939.29', '0', '0', '0', '0', '18', '38939.292', '216329.40', NULL, '2023-06-07 12:14:30', '2023-06-07 12:14:30', NULL),
(89, 19, NULL, 101, 'sfg', NULL, 'sdgsdf', '44', NULL, '44.00', '2284.48', '44', 1, '348.48', NULL, '0', NULL, '0', '18', '348.48', '1936.00', NULL, '2023-06-07 12:14:30', '2023-06-07 12:14:30', NULL),
(90, 19, 124, 101, 'dfgh', NULL, 'fdh', '44', '2', '32.34', '1679.09', '33', 1, '256.13', NULL, '0', NULL, '0', '18', '256.1328', '1422.96', NULL, '2023-06-07 12:14:30', '2023-06-07 12:24:15', NULL),
(91, 19, 124, 101, 'sdg', NULL, 'dfsg', '44', NULL, '42.00', '2180.64', '42', 1, '332.64', NULL, '0', NULL, '0', '18', '332.64', '1848.00', NULL, '2023-06-07 12:14:44', '2023-06-07 12:14:44', NULL),
(92, 20, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:57:21', '2023-06-12 12:57:21', NULL),
(93, 21, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:57:47', '2023-06-12 12:57:47', NULL),
(94, 22, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 13:07:35', '2023-06-12 13:07:35', NULL),
(95, 23, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 3, '2023-06-12 13:10:37', '2023-06-12 13:18:10', NULL),
(96, 24, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 3, '2023-11-20 11:14:00', '2023-11-20 11:14:00', NULL),
(97, 25, NULL, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '537', '96', '5.96', '3776.61', '149', 1, '576.09', '9', '288.04680000000036', '9', '288.04680000000036', '0', '0', '3200.52', NULL, '2023-11-20 11:14:27', '2023-12-05 05:21:48', NULL),
(98, 26, NULL, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '537', '96', '5.96', '3776.61', '149', 1, '576.09', '9', '288.04680000000036', '9', '288.04680000000036', '0', '0', '3200.52', 3, '2023-11-22 11:28:05', '2023-11-22 11:28:05', NULL),
(99, 25, 124, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '5', NULL, '149.00', '879.10', '149', 1, '134.10', '9', '67.05', '9', '67.05', '0', '0', '745.00', NULL, '2023-12-05 05:21:48', '2023-12-05 05:21:48', NULL),
(100, 27, NULL, 107, 'Haldiram 1 x 25gm', '2001', '010908789', '25', NULL, '250.00', '7375.00', '250', 1, '1125.00', '9', '562.5', '9', '562.5', '0', '0', '6250.00', 6, '2023-12-15 02:27:44', '2023-12-15 02:27:44', NULL),
(101, 27, NULL, 107, 'Born Vita 1 x 200gm', '2002', '232323', '20', NULL, '250.00', '5900.00', '250', 1, '900.00', '9', '450', '9', '450', '0', '0', '5000.00', 6, '2023-12-15 02:27:44', '2023-12-15 02:27:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backend_menubar`
--

DROP TABLE IF EXISTS `backend_menubar`;
CREATE TABLE IF NOT EXISTS `backend_menubar` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_controller_name` varchar(50) DEFAULT NULL,
  `menu_action_name` varchar(50) DEFAULT NULL,
  `has_submenu` tinyint(4) DEFAULT '0',
  `menu_icon` varchar(200) DEFAULT NULL,
  `permissions` varchar(200) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`menu_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_menubar`
--

INSERT INTO `backend_menubar` (`menu_id`, `menu_name`, `menu_controller_name`, `menu_action_name`, `has_submenu`, `menu_icon`, `permissions`, `visibility`, `sort_order`, `created_at`, `updated_at`) VALUES
(6, 'Roles', 'admin.roles', NULL, 0, 'user-plus', '6,7,8,9', 0, 9, '2020-11-06 04:46:01', '2023-07-05 11:37:37'),
(11, 'Master Administration', '#', NULL, 1, 'layers', NULL, 1, 2, '2021-01-05 18:47:55', '2023-12-21 09:54:17'),
(22, 'User Management', '#', NULL, 1, 'users', NULL, 1, 10, '2021-09-14 23:42:49', '2021-11-02 08:09:19'),
(34, 'Pricings', 'admin.pricings', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 07:54:39', '2023-01-07 09:54:38'),
(35, 'Expenses', 'admin.expenses', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2022-12-07 13:24:12'),
(36, 'Purchase Order', 'admin.purchaseorder', NULL, 0, 'dollar-sign', '6,7,8,9,10', 0, 0, '2022-09-13 11:03:12', '2023-11-27 12:39:09'),
(37, 'Invoice', 'admin.invoice', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-13 08:50:04'),
(38, 'Order Booking', 'admin.orderbooking', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-07 10:09:12'),
(39, 'Order Fulfilment', 'admin.orderfulfilment', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-07 10:09:16'),
(40, 'Goods/Service Receipts', 'admin.goodsservicereceipts', NULL, 0, 'dollar-sign', '6,7,8,9,10', 0, 0, '2022-09-13 11:03:12', '2023-11-28 04:54:53'),
(41, 'Proforma', 'admin.proforma', NULL, 0, 'dollar-sign', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-07 10:09:21'),
(42, 'Storage Locations', 'admin.storagelocations', NULL, 0, 'layers', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-07 10:10:31'),
(43, 'Sales', '#', NULL, 1, 'layers', '6,7,8,9', 1, 0, '2022-09-13 11:03:12', '2023-01-09 05:02:44'),
(44, 'Purchases', '#', NULL, 1, 'layers', '6,7,8,9', 1, 0, '2022-09-13 11:03:12', '2023-01-09 05:27:17'),
(45, 'Settings', '#', NULL, 1, 'layers', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-09 05:24:18'),
(46, 'Journal Entries', '#', NULL, 1, 'layers', '6,7,8,9', 0, 0, '2022-09-13 11:03:12', '2023-01-09 05:24:22'),
(47, 'Inventory', '#', NULL, 1, 'layers', NULL, 1, 0, '2022-09-13 11:03:12', '2023-01-09 05:42:41'),
(48, 'Returns', '#', NULL, 1, 'layers', NULL, 0, 0, '2022-09-13 11:03:12', '2023-12-21 12:20:28'),
(49, 'Finance & Banking', '#', NULL, 1, 'layers', NULL, 1, 0, '2022-09-13 11:03:12', '2023-01-09 05:42:46'),
(50, 'Logs & History', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-11-15 11:42:54', '2023-11-15 11:42:54'),
(51, 'Reports', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-12-08 07:56:15', '2023-12-08 07:56:15'),
(52, 'Pricing', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-12-11 04:42:29', '2023-12-11 04:42:29'),
(53, 'Outlet', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-12-14 11:04:01', '2023-12-14 11:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `backend_submenubar`
--

DROP TABLE IF EXISTS `backend_submenubar`;
CREATE TABLE IF NOT EXISTS `backend_submenubar` (
  `submenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `submenu_name` varchar(50) DEFAULT NULL,
  `submenu_controller_name` varchar(50) DEFAULT NULL,
  `submenu_action_name` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `sub_parent_id` varchar(110) DEFAULT NULL,
  `has_sub_submenu` tinyint(1) DEFAULT NULL,
  `submenu_permissions` varchar(200) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`submenu_id`),
  KEY `submenu_id` (`submenu_id`),
  KEY `menu_id` (`menu_id`),
  KEY `sub_parent_id` (`sub_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_submenubar`
--

INSERT INTO `backend_submenubar` (`submenu_id`, `submenu_name`, `submenu_controller_name`, `submenu_action_name`, `menu_id`, `sub_parent_id`, `has_sub_submenu`, `submenu_permissions`, `visibility`, `sort_order`, `created_at`, `updated_at`) VALUES
(24, 'Internal Users', 'admin.users', 'grid', 22, NULL, NULL, '6,7,8,9', 1, NULL, '2021-09-14 23:44:11', '2022-09-06 12:53:48'),
(38, 'Bussiness Master', 'admin.bussinesspartner', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2022-09-02 07:32:55'),
(39, 'Down', 'admin.sitemanagement.down', NULL, 32, NULL, NULL, '7,8', 1, NULL, '2022-07-07 07:11:18', '2022-07-07 07:11:18'),
(40, 'Up', 'admin.sitemanagement.up', NULL, 32, NULL, NULL, '7,8', 1, NULL, '2022-07-07 07:11:46', '2022-07-07 07:11:46'),
(42, 'Categories', 'admin.categories', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2022-09-12 06:45:15', '2022-12-07 10:31:22'),
(43, 'Sub Categories', 'admin.subcategories', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2022-09-12 06:45:48', '2022-12-07 10:31:25'),
(44, 'Brands', 'admin.brands', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2022-09-13 11:08:54', '2022-12-07 10:31:29'),
(45, 'Expense Categories', 'admin.expensecategories', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2022-09-13 11:13:03', '2023-06-05 11:39:21'),
(46, 'Expense Sub Categories', 'admin.expensesubcategories', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2022-09-13 11:13:49', '2023-01-07 07:06:21'),
(47, 'Products', 'admin.products', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2022-09-02 07:32:55'),
(48, 'Proforma', 'admin.proforma', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:04:44'),
(53, 'Warehouse Management', '#', NULL, 11, '117,118,106', 1, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-12-20 07:11:18'),
(54, 'Roles', 'admin.roles', NULL, 22, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2022-09-02 07:32:55'),
(55, 'Stock Count Adjustment', 'admin.stockcountadjustment', NULL, 47, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-12-02 07:23:45'),
(56, 'Purchase Order', 'admin.purchaseorder', NULL, 44, NULL, NULL, '6,7,8,9,10', 1, NULL, '2022-06-30 00:56:06', '2023-11-27 12:42:50'),
(57, 'Goods Receipt PO', 'admin.goodsservicereceipts', NULL, 44, NULL, NULL, '7,8,9,10', 1, NULL, '2022-06-30 00:56:06', '2023-11-27 12:52:26'),
(58, 'Stock On Hand', '#', NULL, 47, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-12-02 07:24:07'),
(59, 'Sales Return', 'admin.salesreturn', NULL, 48, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-01-09 05:43:43'),
(60, 'RTV', 'admin.rtv', NULL, 48, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-01-09 05:43:43'),
(64, 'GST', 'admin.gst.index', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-09-13 11:13:03', '2023-01-07 07:06:16'),
(65, 'Material', '#', NULL, NULL, '49', NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-01-13 09:02:20'),
(66, 'Service', '#', NULL, NULL, '49', NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-01-13 09:02:20'),
(67, 'Sales Order/Order Booking', 'admin.orderbooking', NULL, 43, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-06-07 09:05:14'),
(68, 'Order Fulfilment/Dispatch', 'admin.orderfulfilment', NULL, 43, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-06-07 10:34:44'),
(69, 'Incoming Payments', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:04:12'),
(70, 'Return', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:03:53'),
(71, 'A/R Credit Memo', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:04:24'),
(73, 'A/P Invoice', 'admin.apinvoice', NULL, 44, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-11-28 05:33:18'),
(74, 'Goods Return', '#', NULL, 44, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-01-13 09:09:58'),
(76, 'Area', 'admin.area', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-05-23 05:43:38'),
(77, 'Route', 'admin.route', NULL, 11, NULL, NULL, '6,7,9', 1, NULL, '2023-05-23 06:55:35', '2023-05-23 06:55:35'),
(78, 'Beat', 'admin.beat', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(79, 'Beat Calender Master', 'admin.beatcalender', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(82, 'BSPL Heads', 'admin.bsplheads', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 06:37:17', '2023-10-09 09:03:43'),
(83, 'BSPL Category', 'admin.bsplcat', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(84, 'BSPL Sub-Category', 'admin.bsplsubcat', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 05:45:34', '2023-10-09 09:05:39'),
(89, 'Outgoing Payments', '#', NULL, 44, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-06-02 13:12:14'),
(93, 'Type', 'admin.bspltype', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(94, 'Banking Payments', 'admin.bankingpayment', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(95, 'Expenses', '#', NULL, 11, '99,82,83,84,93', 1, '6,7,8,9', 1, NULL, '2023-06-05 11:40:25', '2023-10-09 11:36:32'),
(96, 'Banking Receipts', 'admin.bankingreceipt', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(97, 'Bill Booking', 'admin.billbooking', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(98, 'A/R Invoice', 'admin.arinvoice', NULL, 43, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(99, 'Expense Master', 'admin.expensemaster', NULL, 11, NULL, 1, '6,7,8,9', 0, NULL, '2023-06-05 11:40:25', '2024-01-02 05:50:26'),
(100, 'Series Master', 'admin.seriesmaster', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-10-09 11:40:59', '2023-10-09 11:40:59'),
(101, 'Company Master', 'admin.company', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-10-10 08:06:47', '2023-10-10 08:06:47'),
(102, 'Logs', 'admin.logs', NULL, 50, NULL, NULL, '6,7,8,9', 1, NULL, '2023-11-15 11:55:37', '2023-11-15 11:56:18'),
(103, 'Products History', 'admin.productshistory', NULL, 50, NULL, NULL, '6,7,8,9', 1, NULL, '2023-11-16 08:00:33', '2023-11-16 08:00:33'),
(104, 'Traffic Source', 'admin.trafficsource', NULL, 50, NULL, NULL, '7', 1, NULL, '2023-11-17 04:48:38', '2023-11-17 04:48:38'),
(105, 'Bin Transfer', 'admin.stockmanagement', NULL, 47, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-02 07:22:59', '2023-12-05 06:29:17'),
(106, 'Bin Type', 'admin.bintype', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-04 04:33:52', '2023-12-20 07:11:07'),
(107, 'Academic Year', 'admin.yearmanage', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-06 10:41:14', '2023-12-06 11:40:15'),
(108, 'Inventory Rectification', '#', NULL, 47, '109,110', 1, '6,7,8,9', 1, NULL, '2023-12-08 04:47:44', '2023-12-08 08:00:40'),
(109, 'Goods Receipt', 'admin.goodsreceipt', NULL, 47, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-08 04:49:48', '2023-12-08 05:12:27'),
(110, 'Goods Issue', 'admin.goodsissue', NULL, 47, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-08 04:49:48', '2023-12-12 12:51:29'),
(111, 'Inventory Transactions', 'admin.reports', NULL, 47, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-08 08:02:20', '2023-12-20 12:06:30'),
(112, 'Purchase', 'admin.purchase', NULL, 51, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-08 08:02:20', '2023-12-08 12:01:34'),
(113, 'Sales', 'admin.sales', NULL, 51, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-08 08:02:20', '2023-12-08 12:01:40'),
(114, 'Pricing List', 'admin.pricings', NULL, 52, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-11 04:53:22', '2023-12-21 05:43:16'),
(115, 'Inventory', 'admin.inventory', NULL, 51, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-11 10:43:30', '2023-12-20 12:07:03'),
(116, 'Outlet Addition', 'admin.outlet', NULL, 53, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(117, 'Warehouses', 'admin.storagelocations', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-20 07:01:06', '2023-12-20 07:10:54'),
(118, 'Bin Management', 'admin.bin', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-20 07:01:06', '2023-12-20 07:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `banking_details`
--

DROP TABLE IF EXISTS `banking_details`;
CREATE TABLE IF NOT EXISTS `banking_details` (
  `banking_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `bussiness_partner_id` varchar(200) DEFAULT NULL,
  `bank_name` varchar(200) DEFAULT NULL,
  `acc_holdername` varchar(200) DEFAULT NULL,
  `bank_branch` varchar(200) DEFAULT NULL,
  `ifsc` varchar(15) DEFAULT NULL,
  `ac_number` varchar(100) DEFAULT NULL,
  `bank_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`banking_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banking_details`
--

INSERT INTO `banking_details` (`banking_details_id`, `bussiness_partner_id`, `bank_name`, `acc_holdername`, `bank_branch`, `ifsc`, `ac_number`, `bank_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(74, '121', 'YES BANK', 'ABU OSAMA SHAIKH', 'KALYAN', 'YES100034', '83984904389', 'KHADAKPADA, KALYAN', '2023-06-01 12:19:07', '2023-06-01 12:19:07', NULL),
(75, '122', 'BOB', 'Hedwig Oneill', 'NOIDA', 'BOB38743', '98347239847', 'NOIDA CITY', '2023-06-01 12:24:01', '2023-06-01 12:24:01', NULL),
(76, '123', 'CANARA BANK', 'Basil Marshall', 'Zia West', 'CAN33222', '324335435', 'Qui aut deleniti inc', '2023-06-02 12:37:06', '2023-06-06 09:59:09', NULL),
(77, '121', 'AXIS BANK', NULL, 'NOIDA', 'AXIS33321', '546443333', 'NOIDA', '2023-06-06 07:43:55', '2023-06-06 10:00:20', NULL),
(78, '123', 'HDFC BANK', NULL, 'Zia West', 'HDFC34343', '644334433', 'TEST', '2023-06-06 09:59:54', '2023-06-06 09:59:54', NULL),
(79, '124', 'BOB', 'IRFAN PATHAN', 'KALSEKAR', 'BOB342543', '23534534534', 'KALSEKAR', '2023-06-07 04:49:41', '2023-06-07 04:49:41', NULL),
(80, '125', 'Autumn Leblanc', 'Chloe Odom', 'Kaden Gutierrez', 'Magnam aliquam', '24', 'Fugiat id dolores in', '2023-06-07 05:13:32', '2023-06-07 05:13:32', NULL),
(81, '126', 'Lois Duran', 'Faith Russo', 'Isaac Berry', 'Enim qui dicta', '878', 'Facere vitae quia pe', '2023-06-07 05:19:29', '2023-06-07 05:19:29', NULL),
(82, '127', 'Sydnee Collins', 'Haley Hays', 'Marny Griffith', 'Maxime nostrud', '231', 'Amet nostrud odio d', '2023-06-07 05:30:16', '2023-06-07 05:30:16', NULL),
(83, '128', 'Tucker Steele', 'Harriet Frazier', 'Leigh Mccarthy', 'Vero qui labore', '153', 'Tenetur harum conseq', '2023-06-07 05:30:32', '2023-06-07 05:30:32', NULL),
(84, '129', 'Chester Medina', 'Burke Cherry', 'Camilla Gibson', 'Rem obcaecati i', '142', 'Dolore autem et saep', '2023-06-07 05:31:14', '2023-06-07 05:31:14', NULL),
(85, '130', 'Barclay Potter', 'Brady Adams', 'Jameson Powers', 'Labore dolores', '907', 'Lorem tempor et repu', '2023-06-07 05:31:30', '2023-06-07 05:31:30', NULL),
(86, '131', 'Armand Strickland', 'Lacy Bender', 'Karyn Franco', 'Cupiditate ab q', '243', 'Qui ut proident por', '2023-06-07 05:38:09', '2023-06-07 05:38:09', NULL),
(87, '132', 'Remedios Richardson', 'Geoffrey Holloway', 'Amethyst Burns', 'Eum quidem dolo', '684', 'Natus molestiae saep', '2023-06-07 05:51:15', '2023-06-07 05:51:15', NULL),
(88, '133', 'Wynne Edwards', 'Taylor Browning', 'Tanner Drake', 'Esse odit id n', '75', 'Eius eum duis molest', '2023-06-07 05:57:42', '2023-06-07 05:57:42', NULL),
(89, '134', 'Stephen Marquez', 'Dante Gilbert', 'Keelie Cooke', 'Culpa nesciunt', '314', 'Cupiditate perferend', '2023-06-07 06:19:14', '2023-06-07 06:19:14', NULL),
(90, '135', 'Ishmael Long', 'Orla Duke', 'Lilah Bentley', 'Nulla est facer', '945', 'Rerum et tenetur exc', '2023-06-07 06:19:35', '2023-06-07 06:19:35', NULL),
(91, '136', 'Rina Mcdaniel', 'Garrett Vaughan', 'Alec Kirby', 'Suscipit autem', '995', 'Ad id voluptatem vel', '2023-06-07 06:19:47', '2023-06-07 06:19:47', NULL),
(92, '137', 'Claire Perez', 'Rajah Horne', 'Hiram Rivera', 'Obcaecati nulla', '22', 'Qui enim ullamco ips', '2023-06-07 06:41:43', '2023-06-07 06:41:43', NULL),
(93, '138', 'Bryar Rice', 'Francesca Roman', 'Reese Mullen', 'Vitae consectet', '403', 'Ab est accusantium d', '2023-06-07 06:41:55', '2023-06-07 06:41:55', NULL),
(94, '139', 'Eden Workman', 'Zelda Lee', 'Adara Frank', 'Aut dolorem off', '453', 'Accusamus cupiditate', '2023-06-07 06:55:47', '2023-06-07 06:55:47', NULL),
(95, '140', 'Deirdre Guerra', 'Fiona Fisher', 'Karly Holmes', 'Anim ex est bl', '568', 'Placeat aute except', '2023-06-07 06:55:56', '2023-06-07 06:55:56', NULL),
(96, '141', 'Simone Molina', 'Noel Gates', 'Melinda Osborn', 'Natus voluptate', '704', 'Eveniet ad aliquid', '2023-06-07 06:56:17', '2023-06-07 06:56:17', NULL),
(97, '142', 'Ross Weeks', 'Glenna Hayden', 'Lani Forbes', 'Ratione odio pr', '278', 'Totam optio ullamco', '2023-06-07 06:56:25', '2023-06-07 06:56:25', NULL),
(98, '143', 'Wyoming Richards', 'Margaret Mclean', 'Arden Suarez', 'Eiusmod volupta', '680', 'Voluptatem Velit co', '2023-06-07 06:56:33', '2023-06-07 06:56:33', NULL),
(99, '6', 'Len Dominguez', NULL, 'Jarrod Alvarez', 'dfg4334', '91', 'Molestiae iure labor', '2023-10-10 08:16:57', '2023-10-10 08:30:29', '2023-10-10 08:30:29'),
(100, '6', 'BOB', NULL, 'Compnay Bank', 'BOB38743', '99999999999', 'company address', '2023-10-10 08:31:10', '2023-10-10 08:31:10', NULL),
(101, '6', 'Maharashtra Bank', NULL, 'Compnay Bank', 'MAH3787', '99999999998', 'Compnay address', '2023-10-10 10:23:34', '2023-10-10 10:23:34', NULL),
(102, '144', 'Bank of Baroda', 'Mali Gurjar', 'Mall ROad', 'BOB000067', '3284020319123', 'Thane', '2023-10-14 10:11:15', '2023-10-14 10:11:15', NULL),
(103, '145', 'IDFC', 'Dhawal Rawat', 'Lower Parel', 'IDFC000012', '913749021349823', 'Lower Parel', '2023-10-14 10:36:00', '2023-10-14 10:36:00', NULL),
(104, '146', 'Martena Ryan', 'Keith Aguilar', 'Adara Mathis', 'Irure sint ea e', '630', 'Optio a alias corru', '2023-11-17 06:43:25', '2023-11-17 06:43:25', NULL),
(105, '147', 'Martin Brady', 'Griffith Cantu', 'Hamish Austin', 'Tenetur ea et f', '890', 'Ad sequi quod sed ni', '2023-11-20 04:53:04', '2023-11-20 04:53:04', NULL),
(106, '148', 'Olga Fox', 'Zelenia Chaney', 'Dakota Acosta', 'Illum odio est', '270', 'Modi voluptate commo', '2023-11-20 05:05:09', '2023-11-20 05:05:09', NULL),
(107, '149', 'Yes Bank', 'Robotest', 'Kalyan', '0001234567', '1000234567', 'Khadakpada', '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(108, '150', 'Test Bank', 'Akshay Account Holder', 'Test Branch', 'Test000254', '0102050406', 'Near Test Area.', '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(109, '151', 'New BAnk', 'New AC Holder', 'Test Branch', 'Test000269', '01020614545', 'Test Street', '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(110, '152', 'tst Cus branch', 'Cus as Holder', 'Cus Tst Branch', 'Tst000254h', '010205040789', 'Test Street', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(111, '153', 'Testing Bank', 'Sarthak', 'Kalyan', '00112345', '0001234567', 'Mumbai', '2023-12-14 07:14:19', '2023-12-14 07:14:19', NULL),
(112, '154', 'Axis Bank', 'Enterprises', 'Khadakpada', '0123456789', '0001234567', 'Mumbai', '2023-12-14 09:31:56', '2023-12-14 09:31:56', NULL),
(113, '155', 'Dr Bank', 'Dr Account Holdr name', 'Dr Branch', 'Dr6263', '814114161', 'London Branch', '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(114, '156', 'Dr Cus Name', 'Dr cust Holder', 'dr cst name is name', 'Tst000254h', '68284284246624', 'Dr cst Branch', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(115, '157', 'house bank', 'house account vendor', 'house branch', '87686', '87998787', 'neat vendor house', '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(116, '158', 'test house bank', 'test house holder', 'test house branch', 'test00098', '987', 'near test area', '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banking_payment`
--

DROP TABLE IF EXISTS `banking_payment`;
CREATE TABLE IF NOT EXISTS `banking_payment` (
  `banking_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(110) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `overdue_range` varchar(110) DEFAULT NULL,
  `payment_type` varchar(110) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `doc_no` varchar(50) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `bill_booking_item_ids` varchar(110) DEFAULT NULL,
  `net_total` varchar(50) DEFAULT NULL,
  `tax_total` varchar(50) DEFAULT NULL,
  `gorss_total` varchar(50) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`banking_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_permissions`
--

DROP TABLE IF EXISTS `base_permissions`;
CREATE TABLE IF NOT EXISTS `base_permissions` (
  `base_permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `base_permission_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`base_permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_permissions`
--

INSERT INTO `base_permissions` (`base_permission_id`, `base_permission_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(6, 'Create', 'admin', '2020-11-20 23:47:05', '2020-11-20 23:47:05'),
(7, 'View', 'admin', '2020-11-20 23:47:26', '2020-11-20 23:47:26'),
(8, 'Update', 'admin', '2020-11-20 23:47:32', '2020-11-20 23:47:32'),
(9, 'Delete', 'admin', '2020-11-20 23:47:37', '2020-11-20 23:47:37'),
(10, 'Clone', 'admin', '2023-11-27 12:35:57', '2023-11-27 12:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `beat`
--

DROP TABLE IF EXISTS `beat`;
CREATE TABLE IF NOT EXISTS `beat` (
  `beat_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `beat_number` varchar(110) DEFAULT NULL,
  `beat_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`beat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beat`
--

INSERT INTO `beat` (`beat_id`, `route_id`, `area_id`, `beat_number`, `beat_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(45, 70, 48, NULL, 'Test Beat', '2023-09-06 14:26:41', '2023-09-06 14:26:41', NULL),
(46, 73, 50, NULL, 'Andheri East', '2023-10-14 15:28:49', '2023-10-14 15:28:49', NULL),
(47, 74, 51, NULL, 'Thane Ghodbunder', '2023-10-14 15:40:50', '2023-10-14 15:40:50', NULL),
(48, 69, 47, '4769LER3522', 'Ralph Tyler', '2023-11-17 12:15:22', '2023-11-17 12:15:26', '2023-11-17 12:15:26'),
(49, 68, 47, NULL, 'Testing Beat', '2023-11-17 12:34:40', '2023-11-17 12:34:40', NULL),
(50, 75, 52, '5275CLE0221', 'Circle', '2023-12-14 13:20:21', '2023-12-14 13:20:21', NULL),
(51, 75, 52, NULL, 'Cus Beat', '2023-12-14 14:42:50', '2023-12-14 14:42:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beat_calender`
--

DROP TABLE IF EXISTS `beat_calender`;
CREATE TABLE IF NOT EXISTS `beat_calender` (
  `beat_cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `salesman` varchar(110) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `beat_id` int(11) DEFAULT NULL,
  `outlet` varchar(110) DEFAULT NULL,
  `sales_execu` int(11) DEFAULT NULL,
  `ase` varchar(110) DEFAULT NULL,
  `asm` varchar(110) DEFAULT NULL,
  `beat_week` varchar(110) DEFAULT NULL,
  `beat_day` varchar(110) DEFAULT NULL,
  `beat_month` varchar(110) DEFAULT NULL,
  `beat_year` varchar(110) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`beat_cal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beat_calender`
--

INSERT INTO `beat_calender` (`beat_cal_id`, `salesman`, `area_id`, `route_id`, `beat_id`, `outlet`, `sales_execu`, `ase`, `asm`, `beat_week`, `beat_day`, `beat_month`, `beat_year`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, '3', '4,5,6', 'July', '2029', '2024-01-02 18:49:38', '2024-01-02 18:53:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `beat_requirement`
--

DROP TABLE IF EXISTS `beat_requirement`;
CREATE TABLE IF NOT EXISTS `beat_requirement` (
  `beat_requirement_id` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_id` int(11) DEFAULT NULL,
  `outlet_name` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `gst_no` varchar(255) DEFAULT NULL,
  `outlet` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `beat_no` varchar(255) DEFAULT NULL,
  `beat_name` varchar(255) DEFAULT NULL,
  `salesman` varchar(255) DEFAULT NULL,
  `salesman_exe` varchar(255) DEFAULT NULL,
  `ase` varchar(255) DEFAULT NULL,
  `asm` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`beat_requirement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `billoflading`
--

DROP TABLE IF EXISTS `billoflading`;
CREATE TABLE IF NOT EXISTS `billoflading` (
  `billoflading_id` int(11) NOT NULL,
  `billoflading_counter` int(11) DEFAULT NULL,
  `import_rotation_no` varchar(100) DEFAULT NULL,
  `mv` varchar(100) DEFAULT NULL,
  `voy` varchar(100) DEFAULT NULL,
  `under_captain` varchar(100) DEFAULT NULL,
  `sailed_from` varchar(100) DEFAULT NULL,
  `sailed_to` varchar(200) DEFAULT NULL,
  `eta_on` varchar(100) DEFAULT NULL,
  `bl_no` varchar(200) DEFAULT NULL,
  `manifest_id` int(11) DEFAULT NULL,
  `freight_payable_at` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billoflading`
--

INSERT INTO `billoflading` (`billoflading_id`, `billoflading_counter`, `import_rotation_no`, `mv`, `voy`, `under_captain`, `sailed_from`, `sailed_to`, `eta_on`, `bl_no`, `manifest_id`, `freight_payable_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, '10', 'Nhava Sheva', 'CORAL GEOGRAPHER', 'Capt. Bavesh Balchandran', 'West', 'East', '2021-10-12', NULL, NULL, NULL, '2021-07-08 21:15:53', '2021-07-08 21:15:53', NULL),
(2, 7, '12', 'Mundra', 'MKVoy', 'Capt. Ravindra', 'East', 'North', '2021-11-14', NULL, 2, NULL, '2021-07-08 21:20:44', '2021-07-08 21:20:44', NULL),
(3, 8, '10', 'Nhava Sheva', 'CORAL GEOGRAPHER', 'Capt. Bavesh Balchandran', 'East', 'East', '2021-10-12', NULL, NULL, NULL, '2021-08-04 01:21:58', '2021-08-04 01:21:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billoflading_items`
--

DROP TABLE IF EXISTS `billoflading_items`;
CREATE TABLE IF NOT EXISTS `billoflading_items` (
  `billoflading_item_id` int(11) NOT NULL,
  `billoflading_id` int(11) DEFAULT NULL,
  `bl` varchar(100) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  `no_of_pkgs` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `shipper` varchar(200) DEFAULT NULL,
  `consignee` varchar(200) NOT NULL,
  `container_no` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billoflading_items`
--

INSERT INTO `billoflading_items` (`billoflading_item_id`, `billoflading_id`, `bl`, `mark`, `no_of_pkgs`, `description`, `weight`, `unit`, `shipper`, `consignee`, `container_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1234', '2', '200', 'Coconut', '2054', 'kg', 'Parasight Solutions', 'Rajmarine services pvt ltd', NULL, '2021-07-08 21:15:53', '2021-07-08 21:15:53', NULL),
(2, 2, '5142635845', '2', '50', 'Banana', '5000', 'kg', 'Logistics Solutions', 'Parasight Solutions', NULL, '2021-07-08 21:20:44', '2021-07-08 21:20:44', NULL),
(3, 3, '1234', '2', '200', 'Coconut', '2054', 'kg', 'Parasight Solutions', 'Rajmarine services pvt ltd', NULL, '2021-08-04 01:21:58', '2021-08-04 01:21:58', NULL),
(4, 3, '32', '5', '333', 'Banana', '322', 'kg', 'PS', 'As', NULL, '2021-08-04 01:21:58', '2021-08-04 01:21:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill_booking`
--

DROP TABLE IF EXISTS `bill_booking`;
CREATE TABLE IF NOT EXISTS `bill_booking` (
  `bill_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `invoice_ref_date` date DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `doc_no` varchar(110) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'Expense',
  `is_bb_updated` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bill_booking_items`
--

DROP TABLE IF EXISTS `bill_booking_items`;
CREATE TABLE IF NOT EXISTS `bill_booking_items` (
  `bill_booking_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_booking_id` int(11) DEFAULT NULL,
  `description` varchar(220) DEFAULT NULL,
  `invoice_ref_no` varchar(100) DEFAULT NULL,
  `expense_id` varchar(100) DEFAULT NULL,
  `bsplstype_id` varchar(110) DEFAULT NULL,
  `bsplsubcat_id` varchar(110) DEFAULT NULL,
  `bsplcat_id` varchar(110) DEFAULT NULL,
  `bsplheads_id` varchar(110) DEFAULT NULL,
  `gl_code` varchar(110) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total_value` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bill_booking_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bin_mangement`
--

DROP TABLE IF EXISTS `bin_mangement`;
CREATE TABLE IF NOT EXISTS `bin_mangement` (
  `bin_id` int(11) NOT NULL AUTO_INCREMENT,
  `bin_name` varchar(200) DEFAULT NULL,
  `bin_type` varchar(100) DEFAULT NULL,
  `warehouse_id` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`bin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bin_mangement`
--

INSERT INTO `bin_mangement` (`bin_id`, `bin_name`, `bin_type`, `warehouse_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, NULL, '14', '7', '2023-12-04 05:02:38', '2023-12-04 05:02:38', NULL),
(13, NULL, '15', '7', '2023-12-04 05:04:30', '2023-12-04 05:04:30', NULL),
(14, NULL, '14', '6', '2023-12-04 05:04:52', '2023-12-04 05:04:52', NULL),
(15, NULL, '17', '6', '2023-12-05 12:34:23', '2023-12-05 12:34:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bin_transfer`
--

DROP TABLE IF EXISTS `bin_transfer`;
CREATE TABLE IF NOT EXISTS `bin_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_warehouse` int(11) DEFAULT NULL,
  `from_bin` int(11) DEFAULT NULL,
  `to_warehouse` int(11) DEFAULT NULL,
  `to_bin` int(11) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `batch` varchar(100) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `from_qty` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `remarks` varchar(210) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bin_type`
--

DROP TABLE IF EXISTS `bin_type`;
CREATE TABLE IF NOT EXISTS `bin_type` (
  `bin_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`bin_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bin_type`
--

INSERT INTO `bin_type` (`bin_type_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'Goods', '2023-12-04 04:58:33', '2023-12-04 05:03:50', NULL),
(15, 'Damage', '2023-12-04 05:03:56', '2023-12-04 05:03:56', NULL),
(16, 'Block', '2023-12-04 05:04:00', '2023-12-04 05:04:00', NULL),
(17, 'Expire', '2023-12-04 05:04:06', '2023-12-04 05:04:06', NULL),
(18, 'Return', '2023-12-04 05:04:11', '2023-12-04 05:04:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bp_address`
--

DROP TABLE IF EXISTS `bp_address`;
CREATE TABLE IF NOT EXISTS `bp_address` (
  `bp_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `bussiness_partner_id` int(11) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `bp_address_name` varchar(110) DEFAULT NULL,
  `building_no_name` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bp_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_address`
--

INSERT INTO `bp_address` (`bp_address_id`, `bussiness_partner_id`, `address_type`, `bp_address_name`, `building_no_name`, `street_name`, `landmark`, `city`, `pin_code`, `district`, `state`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(119, 121, 'Bill-To/ Bill-From', 'Kausa Mumbra Thane', 'DONGRE PLAZA', 'KADAR PALACE', 'KAUSA', 'MUMBRA', 400612, 'THANE', 'MAHARASHTRA', '2', '2023-06-01 12:19:07', '2023-12-13 07:15:36', NULL),
(120, 121, 'Ship-To/ Ship-From', 'KHADAKPADA KALYAN', 'SHREEJI SOLITARIE', 'KHADAKPADA', 'KHADAKPADA', 'KALYAN', 400122, 'NORTH GOA', 'GOA', '2', '2023-06-01 12:19:07', '2023-11-20 09:38:22', NULL),
(121, 122, 'Bill-To/ Bill-From', 'SECTOR 17 VASHI', 'NAVRATNA HOTEL', 'SECTOR 17', 'SECTOR 17', 'VASHI', 400614, 'AHMEDNAGAR', 'MAHARASHTRA', '2', '2023-06-01 12:24:01', '2023-11-22 06:36:42', NULL),
(122, 122, 'Ship-To/ Ship-From', 'LOTUS PARK NOIDA', 'HEAVEAN HEIGHT', 'RAJWADA APT', 'LOTUS PARK', 'NOIDA', 400651, 'BAGALKOT', 'KARNATAKA', '2', '2023-06-01 12:24:01', '2023-11-22 06:37:25', NULL),
(123, 121, 'Ship-To/ Ship-From', 'RAJ NAGAR ANDHERI', 'GULAB PARK', 'NEW  ACADEMY STREET', 'RAJ NAGAR', 'ANDHERI', 400321, 'THANE', 'MAHARASHTRA', '2', '2023-06-01 12:25:57', '2023-12-13 07:21:22', NULL),
(124, 123, 'Bill-To/ Bill-From', '0', 'Rinah Gutierrez', 'Hyatt Boyle', 'Eum sunt pariatur H', 'Tobias Decker', 95, 'Enim non non dolorum', 'Ut et lorem quo nobi', 'Sapiente ex aut sed', '2023-06-02 12:37:06', '2023-06-02 12:37:06', NULL),
(125, 123, 'Ship-To/ Ship-From', '0', 'Julie Barlow', 'Arden Lindsay', 'Officiis odit pariat', 'Indira Hampton', 55, 'Incididunt cum reici', 'Magnam sint Nam rer', 'Dolor qui possimus', '2023-06-02 12:37:06', '2023-06-02 12:37:06', NULL),
(126, 124, 'Bill-To/ Bill-From', 'SHIL PHATA MUMBRA', '1- DONRE PLAZA', 'MH ROAD', 'SHIL PHATA', 'MUMBRA', 400612, 'AHMEDNAGAR', 'MAHARASHTRA', '2', '2023-06-07 04:49:41', '2023-11-20 10:32:30', NULL),
(127, 124, 'Ship-To/ Ship-From', '0', '233-a1-street', '2-KHETASARAY', 'SARAIMEER', 'SARAIMEER', 546552, 'AZAMGARH', 'UTTAR PRADESH', 'INDIA', '2023-06-07 04:49:41', '2023-06-07 04:49:41', NULL),
(128, 125, 'Bill-To/ Bill-From', '0', 'Adam Mccall', 'Camden James', 'Incidunt beatae pla', 'Aidan Maynard', 4, 'Amet fugit proiden', 'Enim voluptatem Con', 'Sint duis autem quis', '2023-06-07 05:13:32', '2023-06-07 05:13:32', NULL),
(129, 125, 'Ship-To/ Ship-From', '0', 'Lani Pennington', 'Beatrice House', 'Qui doloremque non a', 'Leila Warren', 46, 'Eius dolor iusto ad', 'Atque adipisci dolor', 'At alias assumenda a', '2023-06-07 05:13:32', '2023-06-07 05:13:32', NULL),
(130, 126, 'Bill-To/ Bill-From', '0', 'Cassidy Malone', 'Larissa Nash', 'Consequatur aliquam', 'Roth Hurley', 17, 'Quis Nam ut in fuga', 'Et dolor accusantium', 'Quaerat maxime et do', '2023-06-07 05:19:29', '2023-06-07 05:19:29', NULL),
(131, 126, 'Ship-To/ Ship-From', '0', 'Oleg Battle', 'Jenna Holloway', 'Minus aspernatur cup', 'Latifah Flynn', 68, 'Laborum corrupti Na', 'Dolore quam unde sap', 'Quia ut dolor deseru', '2023-06-07 05:19:29', '2023-06-07 05:19:29', NULL),
(132, 127, 'Bill-To/ Bill-From', '0', 'Knox Christensen', 'Cailin Perry', 'In maxime dolore fac', 'Rachel Kirby', 12, 'Placeat amet magna', 'Voluptate nobis natu', 'Provident eum lorem', '2023-06-07 05:30:16', '2023-06-07 05:30:16', NULL),
(133, 127, 'Ship-To/ Ship-From', '0', 'Avram Oneil', 'Colton Sanders', 'Maxime ab rerum omni', 'Brendan Rosales', 40, 'Ipsum sint quo sit', 'Non ea voluptas dolo', 'Iure corrupti nihil', '2023-06-07 05:30:16', '2023-06-07 05:30:16', NULL),
(134, 128, 'Bill-To/ Bill-From', '0', 'Portia Joyner', 'Ursula Ross', 'Autem quis est quib', 'Lucy Reed', 68, 'Reprehenderit tempo', 'Sit vel officia ex t', 'Dolores quam accusan', '2023-06-07 05:30:32', '2023-06-07 05:30:32', NULL),
(135, 128, 'Ship-To/ Ship-From', '0', 'Jakeem Zimmerman', 'Alika Koch', 'Doloremque quo moles', 'Keefe Snow', 61, 'Sequi cupiditate qua', 'Sit modi aliquam vol', 'Asperiores ad beatae', '2023-06-07 05:30:32', '2023-06-07 05:30:32', NULL),
(136, 129, 'Bill-To/ Bill-From', '0', 'Ciaran Scott', 'Quynn Christian', 'Ex ut sunt officia r', 'Hammett Maxwell', 57, 'Do necessitatibus ut', 'Voluptatem Quod eni', 'Enim quo eos et aliq', '2023-06-07 05:31:14', '2023-06-07 05:31:14', NULL),
(137, 129, 'Ship-To/ Ship-From', '0', 'Allistair Bentley', 'Xerxes Osborne', 'Et quia aut qui quo', 'Yuli Duncan', 85, 'Veritatis sunt optio', 'Accusantium laborum', 'Quisquam et in conse', '2023-06-07 05:31:14', '2023-06-07 05:31:14', NULL),
(138, 130, 'Bill-To/ Bill-From', '0', 'Emma Leach', 'Hector Mayer', 'Reprehenderit itaque', 'Mariko Atkins', 96, 'Cupiditate veniam o', 'Culpa ipsa minima s', 'Sed officia adipisic', '2023-06-07 05:31:30', '2023-06-07 05:31:30', NULL),
(139, 130, 'Ship-To/ Ship-From', '0', 'Willa Hendrix', 'Trevor Scott', 'Laudantium qui corr', 'Declan Flores', 60, 'Elit unde consequat', 'Quia repellendus Mo', 'Est consequatur vol', '2023-06-07 05:31:30', '2023-06-07 05:31:30', NULL),
(140, 131, 'Bill-To/ Bill-From', '0', 'Eaton Torres', 'Yuri Garrison', 'Elit atque similiqu', 'Beau Richardson', 80, 'Voluptate occaecat v', 'Molestias minima ali', 'Voluptates deserunt', '2023-06-07 05:38:09', '2023-06-07 05:38:09', NULL),
(141, 131, 'Ship-To/ Ship-From', '0', 'Ebony Gates', 'Sean Cooke', 'Qui iure omnis ipsum', 'Berk Browning', 71, 'Ducimus corporis qu', 'Autem amet magni al', 'Enim nisi possimus', '2023-06-07 05:38:09', '2023-06-07 05:38:09', NULL),
(142, 132, 'Bill-To/ Bill-From', '0', 'Macaulay Winters', 'Salvador Sheppard', 'Sapiente consectetur', 'Dominic Randolph', 91, 'Duis vel ratione ips', 'Aperiam omnis culpa', 'Minus similique volu', '2023-06-07 05:51:15', '2023-06-07 05:51:15', NULL),
(143, 132, 'Ship-To/ Ship-From', '0', 'Macaulay Winters', 'Salvador Sheppard', 'Sapiente consectetur', 'Dominic Randolph', 91, 'Duis vel ratione ips', 'Aperiam omnis culpa', 'Minus similique volu', '2023-06-07 05:51:15', '2023-06-07 05:51:15', NULL),
(144, 133, 'Bill-To/ Bill-From', '0', 'Quin Owen', 'Hyacinth Dickson', 'Animi quod dolorem', 'Mark Huff', 3, 'Et cillum ut velit i', 'In porro dolore odio', 'Non eiusmod et ullam', '2023-06-07 05:57:42', '2023-06-07 05:57:42', NULL),
(145, 133, 'Ship-To/ Ship-From', '0', 'Sylvester Le', 'Kasimir Roth', 'Ipsam ea eveniet ma', 'Cassandra Sykes', 52, 'Aute ut duis tempor', 'Rem eaque enim id ir', 'Cupidatat quasi fugi', '2023-06-07 05:57:42', '2023-06-07 05:57:42', NULL),
(146, 134, 'Bill-To/ Bill-From', '0', 'MacKensie Lynn', 'Louis Lancaster', 'Aliquip atque magni', 'Kyra Snider', 45, 'Sint necessitatibus', 'Quod dolore possimus', 'Ad quia voluptate er', '2023-06-07 06:19:14', '2023-06-07 06:19:14', NULL),
(147, 134, 'Ship-To/ Ship-From', '0', 'Tad Maxwell', 'Willa Knapp', 'Nam quis sit sit in', 'Nehru Mooney', 76, 'Velit culpa modi ve', 'Velit omnis unde nos', 'Hic excepturi commod', '2023-06-07 06:19:14', '2023-06-07 06:19:14', NULL),
(148, 135, 'Bill-To/ Bill-From', '0', 'Tate Bowen', 'Edward Edwards', 'Animi aute ad quis', 'Roth Knowles', 94, 'Error veniam sunt', 'Voluptatem a nesciun', 'Consequatur ut nequ', '2023-06-07 06:19:35', '2023-06-07 06:19:35', NULL),
(149, 135, 'Ship-To/ Ship-From', '0', 'Oliver Gamble', 'Deacon Levine', 'Sequi et aut et quib', 'Timon Kirkland', 2, 'Vero est pariatur N', 'Praesentium ut conse', 'Alias aspernatur aut', '2023-06-07 06:19:35', '2023-06-07 06:19:35', NULL),
(150, 136, 'Bill-To/ Bill-From', '0', 'Stuart Gardner', 'Nadine Hardy', 'Nesciunt ea non exe', 'Karyn Marquez', 29, 'Non non laborum labo', 'Quia nostrum dolorem', 'Aut irure facilis ar', '2023-06-07 06:19:47', '2023-06-07 06:19:47', NULL),
(151, 136, 'Ship-To/ Ship-From', '0', 'Pandora Moran', 'Shafira Weeks', 'Et omnis quaerat ita', 'Quyn Gonzalez', 14, 'Ea qui in corporis t', 'Velit sit facere co', 'Sunt quis velit ut', '2023-06-07 06:19:47', '2023-06-07 06:19:47', NULL),
(152, 137, 'Bill-To/ Bill-From', '0', 'Malcolm Pace', 'Brianna Travis', 'Eum facere voluptate', 'Melyssa Leonard', 36, 'Est quibusdam exerci', 'Eaque eos veniam an', 'Esse fugiat culpa c', '2023-06-07 06:41:43', '2023-06-07 06:41:43', NULL),
(153, 137, 'Ship-To/ Ship-From', '0', 'Darrel Sargent', 'Nomlanga Lawrence', 'Inventore quia enim', 'Isadora Thomas', 79, 'Sit ut non lorem omn', 'Et in dolorem perspi', 'Sunt irure in volupt', '2023-06-07 06:41:43', '2023-06-07 06:41:43', NULL),
(154, 138, 'Bill-To/ Bill-From', '0', 'Hasad Rivera', 'Wendy Levine', 'Elit labore ipsum o', 'Cairo Barry', 81, 'Explicabo Mollit el', 'Blanditiis rerum mod', 'Quo animi quis aut', '2023-06-07 06:41:55', '2023-06-07 06:41:55', NULL),
(155, 138, 'Ship-To/ Ship-From', '0', 'Hasad Rivera', 'Wendy Levine', 'Elit labore ipsum o', 'Cairo Barry', 81, 'Explicabo Mollit el', 'Blanditiis rerum mod', 'Quo animi quis aut', '2023-06-07 06:41:55', '2023-06-07 06:41:55', NULL),
(156, 139, 'Bill-To/ Bill-From', '0', 'Dacey Mays', 'Ciaran Ochoa', 'Occaecat eaque est', 'Reese Kline', 55, 'Qui numquam mollitia', 'Voluptate libero id', 'Id eaque consequat', '2023-06-07 06:55:47', '2023-06-07 06:55:47', NULL),
(157, 139, 'Ship-To/ Ship-From', '0', 'Chandler Dixon', 'Raymond Cantrell', 'Similique reprehende', 'Lance Hinton', 10, 'Quibusdam eum non qu', 'Consectetur ea ut q', 'Nisi assumenda vitae', '2023-06-07 06:55:47', '2023-06-07 06:55:47', NULL),
(158, 140, 'Bill-To/ Bill-From', '0', 'Kathleen Bentley', 'Colleen Skinner', 'Amet sint dolorem', 'Melissa Thompson', 21, 'Voluptatum sed quos', 'Libero quo deleniti', 'Aliquam provident e', '2023-06-07 06:55:56', '2023-06-07 06:55:56', NULL),
(159, 140, 'Ship-To/ Ship-From', '0', 'Conan Castillo', 'Dustin Phelps', 'Qui natus nostrud at', 'Gavin Wilder', 32, 'Officia maxime susci', 'Consequat Dolorem o', 'Dolor eius iusto acc', '2023-06-07 06:55:56', '2023-06-07 06:55:56', NULL),
(160, 141, 'Bill-To/ Bill-From', '0', 'Martin Osborn', 'Gabriel King', 'Minima fugiat aut ex', 'Bell Knight', 61, 'Exercitationem dolor', 'Labore aut perspicia', 'Quia quia et velit', '2023-06-07 06:56:17', '2023-06-07 06:56:17', NULL),
(161, 141, 'Ship-To/ Ship-From', '0', 'Timothy Franco', 'Allistair Ramirez', 'Repellendus Corpori', 'Dawn Dawson', 2, 'Voluptate quam quis', 'Eos pariatur Aut ni', 'Itaque doloribus eiu', '2023-06-07 06:56:17', '2023-06-07 06:56:17', NULL),
(162, 142, 'Bill-To/ Bill-From', '0', 'Sylvester Jensen', 'Imelda Hodges', 'Quos laudantium lab', 'Eaton Hebert', 68, 'Et esse qui eveniet', 'Dolore et aute volup', 'Quos exercitation of', '2023-06-07 06:56:25', '2023-06-07 06:56:25', NULL),
(163, 142, 'Ship-To/ Ship-From', '0', 'Marsden Mckinney', 'Carly Mejia', 'Voluptatem laboriosa', 'Lance Young', 14, 'Et et sed nesciunt', 'Incididunt exercitat', 'Consectetur eum vol', '2023-06-07 06:56:25', '2023-06-07 06:56:25', NULL),
(164, 143, 'Bill-To/ Bill-From', '0', 'Sandra Odom', 'Bianca Mooney', 'Numquam consectetur', 'Hu Hurst', 19, 'Consequatur sit con', 'Necessitatibus corru', 'Expedita aute in sin', '2023-06-07 06:56:33', '2023-06-07 06:56:33', NULL),
(165, 143, 'Ship-To/ Ship-From', '0', 'Ina Simon', 'Reed Lester', 'Numquam ex consequat', 'Quin Savage', 53, 'Non dolor id aperiam', 'Tempora quia quis qu', 'Numquam consequatur', '2023-06-07 06:56:33', '2023-06-07 06:56:33', NULL),
(166, 121, 'Bill-To/ Bill-From', 'SECTOR 17 VASHI', 'Oleg Hudson', 'Keely Roach', 'Voluptas sequi nulla', 'Quintessa Sawyer', 400123, 'MUMBAI', 'MAHARASHTRA', '2', '2023-08-29 13:07:19', '2023-08-29 13:08:17', '2023-08-29 13:08:17'),
(167, 6, 'Bill-To/ Bill-From', '0', 'Lysandra Frost', 'Rooney Hensley', 'Dolor sit maiores ad', 'Meghan Combs', 400613, 'THIRUVANANTHAPURAM', 'KERALA', '2', '2023-10-10 08:31:35', '2023-10-10 08:31:35', NULL),
(168, 144, 'Bill-To/ Bill-From', '0', '923, Grand Central Arcade', 'Bridge Junction', 'Near Thaker Banquet Hall', 'Thane', 400092, 'THANE', 'MAHARASHTRA', '2', '2023-10-14 10:11:15', '2023-11-20 05:07:34', '2023-11-20 05:07:34'),
(169, 144, 'Ship-To/ Ship-From', '0', '923, Grand Central Arcade', 'Bridge Junction', 'Near Thaker Banquet Hall', 'Thane', 400092, 'THANE', 'MAHARASHTRA', '2', '2023-10-14 10:11:15', '2023-11-20 05:07:34', '2023-11-20 05:07:34'),
(170, 145, 'Bill-To/ Bill-From', '0', '923, Grand Central Arcade', 'Nayak Road', 'Opposite Ram Metal Workshop', 'Mumbai', 400001, 'THANE', 'MAHARASHTRA', '2', '2023-10-14 10:36:00', '2023-10-14 10:36:00', NULL),
(171, 145, 'Ship-To/ Ship-From', '0', '923, Grand Central Arcade', 'Nayak Road', 'Opposite Ram Metal Workshop', 'Mumbai', 400001, 'THANE', 'MAHARASHTRA', '2', '2023-10-14 10:36:00', '2023-10-14 10:36:00', NULL),
(172, 146, 'Bill-To/ Bill-From', '0', 'Haley Ford', 'Brett Riggs', 'Reprehenderit qui fu', 'Sebastian Norman', 39, 'BRISBANE', 'QUEENSLAND', '1', '2023-11-17 06:43:25', '2023-11-17 06:43:25', NULL),
(173, 146, 'Ship-To/ Ship-From', '0', 'Wyatt Walls', 'Ray Allison', 'Eos corporis conseq', 'Deirdre Spencer', 57, '0', 'Select State', '6', '2023-11-17 06:43:25', '2023-11-17 06:43:25', NULL),
(176, 148, 'Bill-To/ Bill-From', 'Wynne Rojas', 'Rogan Valenzuela', 'Shelby Peterson', 'Quis voluptas dolore', 'Kylynn Fuentes', 17, 'BRISBANE', 'QUEENSLAND', '1', '2023-11-20 05:05:09', '2023-11-20 05:07:57', '2023-11-20 05:07:57'),
(177, 148, 'Ship-To/ Ship-From', 'Wynne Rojas', 'Shelly Simmons', 'Jemima Gibson', 'Maiores est reprehen', 'Price Phillips', 70, 'AUCKLAND', 'AUCKLAND', '3', '2023-11-20 05:05:09', '2023-11-20 05:07:57', '2023-11-20 05:07:57'),
(178, 124, 'Ship-To/ Ship-From', 'Pamela Shannon', 'Lee Mercer', 'Tanisha Blackburn', 'In quis cupiditate i', 'Zephr Chan', 400612, 'MAURITIUS', 'MAURITIUS', '6', '2023-11-20 05:12:48', '2023-11-20 05:13:10', '2023-11-20 05:13:10'),
(179, 124, 'Official', 'Elvis Schultz', 'Tallulah Guy', 'Mechelle Holland', 'Eum laboris consequa', 'Veda Moon', 400612, 'KARUR', 'TAMIL NADU', '2', '2023-11-20 05:13:30', '2023-11-20 05:13:32', '2023-11-20 05:13:32'),
(180, 124, 'Ship-To/ Ship-From', 'Malik Mcpherson', 'Mia Olsen', 'Nyssa Morales', 'Reiciendis veritatis', 'Oscar Fernandez', 400612, 'AUCKLAND', 'AUCKLAND', '3', '2023-11-20 05:14:58', '2023-11-20 05:15:00', '2023-11-20 05:15:00'),
(181, 124, 'Official', 'Lesley Albert', 'Hillary Knowles', 'Vernon Bowers', 'Deleniti commodi qui', 'April Randall', 654654, 'CHICAGO', 'ILLINOIS', '4', '2023-11-20 05:15:20', '2023-11-20 05:15:23', '2023-11-20 05:15:23'),
(182, 124, 'Official', 'Cade Washington', 'Caesar Torres', 'Laura Newman', 'Ut neque odit assume', 'Mariko Slater', 400612, 'AUCKLAND', 'AUCKLAND', '3', '2023-11-20 05:16:08', '2023-11-20 05:16:11', '2023-11-20 05:16:11'),
(183, 124, 'Ship-To/ Ship-From', 'Labore est qui elige Mona Manning', 'Salvador Booker', 'Daphne Shaw', 'Labore est qui elige', 'Mona Manning', 400612, 'KAITHAL', 'HARYANA', '2', '2023-11-20 09:43:53', '2023-11-20 09:43:53', NULL),
(184, 6, 'Ship-To/ Ship-From', 'KHADAKPADA KALYAN', 'shreeji solitarie', 'khadakpada', 'khadakpada', 'Kalyan', 421301, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-02 06:02:00', '2023-12-02 06:02:00', NULL),
(185, 6, 'Ship-To/ Ship-From', 'Bhwaindi', 'wafa park', 'gaibi nagar', 'bhiwandi', 'bhiwandi', 401254, 'AHMEDNAGAR', 'MAHARASHTRA', '2', '2023-12-02 06:17:00', '2023-12-02 06:17:16', NULL),
(186, 149, 'Bill-To/ Bill-From', 'Khadakpada', 'Shreeji Solitaire,3rd floor', 'Amrut park', 'Kalyan', 'Kalyan', 41301, 'THANE', 'MAHARASHTRA', '2', '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(187, 149, 'Ship-To/ Ship-From', 'Khadakpada', 'Shreeji Solitaire,3rd floor', 'Amrut park', 'Kalyan', 'Dadar', 421301, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(188, 150, 'Bill-To/ Bill-From', 'Near Test Area', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(189, 150, 'Ship-To/ Ship-From', 'Near Test Area', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(190, 151, 'Bill-To/ Bill-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'THANE', 'MAHARASHTRA', '2', '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(191, 151, 'Ship-To/ Ship-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'THANE', 'MAHARASHTRA', '2', '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(192, 152, 'Bill-To/ Bill-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'THANE', 'MAHARASHTRA', '2', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(193, 152, 'Ship-To/ Ship-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Kalyan', 4213010, 'THANE', 'MAHARASHTRA', '2', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(194, 153, 'Bill-To/ Bill-From', 'Khadakpada', 'Shreeji Solitaire,3rd floor', 'Amrut park', 'Kalyan', 'Thane', 400601, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-14 07:14:19', '2023-12-14 09:34:01', '2023-12-14 09:34:01'),
(195, 153, 'Ship-To/ Ship-From', 'Khadakpada', 'M5H 2A4 416-368-. 3894.', 'Markham', 'Gallagher Canada Limited', 'Toronto', 8903, 'EDISON', 'NEWJERSEY', '4', '2023-12-14 07:14:19', '2023-12-14 09:34:01', '2023-12-14 09:34:01'),
(196, 154, 'Bill-To/ Bill-From', 'Khadakpada', 'Shreeji Solitaire,3rd floor', 'Amrut park', 'Kalyan', 'Kalyan', 421301, 'MUMBAI', 'MAHARASHTRA', '2', '2023-12-14 09:31:56', '2023-12-14 09:31:56', NULL),
(197, 154, 'Ship-To/ Ship-From', 'Jersey', 'M5H 2A4 416-368-. 3894.', 'Markham', 'Gallagher Canada Limited', 'Toronto', 425678, 'BRISBANE', 'QUEENSLAND', '1', '2023-12-14 09:31:56', '2023-12-14 09:43:20', NULL),
(198, 155, 'Bill-To/ Bill-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'London', 477, 'EDISON', 'NEWJERSEY', '4', '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(199, 155, 'Ship-To/ Ship-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'London', 477, 'EDISON', 'NEWJERSEY', '4', '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(200, 156, 'Bill-To/ Bill-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Dont know', 623656, 'AUCKLAND', 'AUCKLAND', '3', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(201, 156, 'Ship-To/ Ship-From', 'Test Street', '1995 Akshay\'s Billing', 'Test Street', 'Test LAndmark', 'Dont know', 623656, 'AUCKLAND', 'AUCKLAND', '3', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(202, 157, 'Bill-To/ Bill-From', 'house vendor address', 'house vendor building', 'house street', 'house landmark', 'melbouren', 7676, 'MELBOURNE', 'VICTORIA', '1', '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(203, 157, 'Ship-To/ Ship-From', 'house vendor address', 'house vendor building', 'house street', 'house landmark', 'melbouren', 7676, 'MELBOURNE', 'VICTORIA', '1', '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(204, 158, 'Bill-To/ Bill-From', 'Test House 01', 'Test House 02', 'Test House 03', 'Test House 04', 'Test City', 404, 'EDISON', 'NEWJERSEY', '4', '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL),
(205, 158, 'Ship-To/ Ship-From', 'Test House 01', 'Test House 02', 'Test House 03', 'Test House 04', 'Test City', 404, 'EDISON', 'NEWJERSEY', '4', '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bp_contact_details`
--

DROP TABLE IF EXISTS `bp_contact_details`;
CREATE TABLE IF NOT EXISTS `bp_contact_details` (
  `contact_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `bussiness_partner_id` int(11) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `email_id` varchar(200) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_contact_details`
--

INSERT INTO `bp_contact_details` (`contact_details_id`, `bussiness_partner_id`, `contact_person`, `type`, `email_id`, `mobile_no`, `landline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(73, 121, 'ABU OSAMA SHAIKH', 'Bill-To/ Bill-From', 'USA12@gmail.com', '9819593242', '02243948398', '2023-06-01 12:19:07', '2023-06-01 12:19:07', NULL),
(74, 122, 'Hedwig Oneill', 'Bill-To/ Bill-From', 'qaxasebeto@mailinator.com', '9128767162', '02383287483', '2023-06-01 12:24:01', '2023-06-01 12:24:01', NULL),
(75, 121, 'Genevieve Gilmore', 'Bill-To/ Bill-From', 'dipucaziq@mailinator.com', '9819672121', '034342343232', '2023-06-01 12:24:49', '2023-06-01 12:24:49', NULL),
(76, 123, 'Fitzgerald Shepard', 'Ship-To/ Ship-From', 'wuhu@mailinator.com', '91', 'Quam voluptatum volu', '2023-06-02 12:37:06', '2023-06-02 12:37:06', NULL),
(77, 124, 'IRFAN PATHAN', 'Bill-To/ Bill-From', 'irfan1@gmail.com', '9819595874', '0224545554', '2023-06-07 04:49:41', '2023-06-07 04:49:41', NULL),
(78, 125, 'Mikayla Scott', 'Bill-To/ Bill-From', 'jano@mailinator.com', '65', 'Laboris aut fugiat', '2023-06-07 05:13:32', '2023-06-07 05:13:32', NULL),
(79, 126, 'Eve Paul', 'Ship-To/ Ship-From', 'leleke@mailinator.com', '11', 'Et voluptates duis r', '2023-06-07 05:19:29', '2023-06-07 05:19:29', NULL),
(80, 127, 'Guy Valenzuela', 'Bill-To/ Bill-From', 'vaqe@mailinator.com', '82', 'Dolorum voluptatem', '2023-06-07 05:30:16', '2023-06-07 05:30:16', NULL),
(81, 128, 'Len Hardy', 'Bill-To/ Bill-From', 'muzeqadu@mailinator.com', '94', 'Labore saepe ullamco', '2023-06-07 05:30:32', '2023-06-07 05:30:32', NULL),
(82, 129, 'Garrett Ryan', 'Ship-To/ Ship-From', 'nuku@mailinator.com', '31', 'Voluptatibus laborum', '2023-06-07 05:31:14', '2023-06-07 05:31:14', NULL),
(83, 130, 'Blair Weiss', 'Bill-To/ Bill-From', 'behapap@mailinator.com', '54', 'In est provident ve', '2023-06-07 05:31:30', '2023-06-07 05:31:30', NULL),
(84, 131, 'Jorden Juarez', 'Bill-To/ Bill-From', 'cyfavobaj@mailinator.com', '88', 'Tempor et anim sed n', '2023-06-07 05:38:09', '2023-06-07 05:38:09', NULL),
(85, 132, 'Octavius Harrison', 'Ship-To/ Ship-From', 'tysegewo@mailinator.com', '50', 'Et aut et velit do e', '2023-06-07 05:51:15', '2023-06-07 05:51:15', NULL),
(86, 133, 'Amber Bartlett', 'Ship-To/ Ship-From', 'havereji@mailinator.com', '15', 'Et sed tenetur sit e', '2023-06-07 05:57:42', '2023-06-07 05:57:42', NULL),
(87, 134, 'Bree Collins', 'Ship-To/ Ship-From', 'vesar@mailinator.com', '64', 'Amet id eu voluptat', '2023-06-07 06:19:14', '2023-06-07 06:19:14', NULL),
(88, 135, 'Carson Page', 'Bill-To/ Bill-From', 'hudyw@mailinator.com', '72', 'Corporis aspernatur', '2023-06-07 06:19:35', '2023-06-07 06:19:35', NULL),
(89, 136, 'Cooper Mendez', 'Bill-To/ Bill-From', 'qipoku@mailinator.com', '95', 'Perspiciatis ut dol', '2023-06-07 06:19:47', '2023-06-07 06:19:47', NULL),
(90, 137, 'Sonia Henson', 'Bill-To/ Bill-From', 'nulydedid@mailinator.com', '72', 'Lorem quis culpa dol', '2023-06-07 06:41:43', '2023-06-07 06:41:43', NULL),
(91, 138, 'Francesca Miles', 'Ship-To/ Ship-From', 'sakubylugo@mailinator.com', '11', 'Est nesciunt fuga', '2023-06-07 06:41:55', '2023-06-07 06:41:55', NULL),
(92, 139, 'Elvis Haynes', 'Bill-To/ Bill-From', 'wybobasusa@mailinator.com', '48', 'Anim quaerat minima', '2023-06-07 06:55:47', '2023-06-07 06:55:47', NULL),
(93, 140, 'Daquan Melendez', 'Bill-To/ Bill-From', 'cijel@mailinator.com', '80', 'Sit elit in facili', '2023-06-07 06:55:56', '2023-06-07 06:55:56', NULL),
(94, 141, 'Larissa Francis', 'Bill-To/ Bill-From', 'qesyfonih@mailinator.com', '22', 'Cupidatat vitae do l', '2023-06-07 06:56:17', '2023-06-07 06:56:17', NULL),
(95, 142, 'Dexter Kidd', 'Ship-To/ Ship-From', 'muteba@mailinator.com', '2', 'Exercitation tempore', '2023-06-07 06:56:25', '2023-06-07 06:56:25', NULL),
(96, 143, 'Zephr Holcomb', 'Bill-To/ Bill-From', 'gysaza@mailinator.com', '82', 'Neque consequatur D', '2023-06-07 06:56:33', '2023-06-07 06:56:33', NULL),
(97, 144, 'Mali Gurjar', 'Bill-To/ Bill-From', 'mali@centmail.com', '9823618812', 'NA', '2023-10-14 10:11:15', '2023-10-14 10:11:15', NULL),
(98, 145, 'Dhaval Rawat', 'Bill-To/ Bill-From', 'dhawal@test.com', '9828736235', 'NA', '2023-10-14 10:36:00', '2023-10-14 10:36:00', NULL),
(99, 146, 'Serena Crane', 'Bill-To/ Bill-From', 'qycaseril@mailinator.com', '16', 'Facilis est enim und', '2023-11-17 06:43:25', '2023-11-17 06:43:25', NULL),
(100, 147, 'Russell Garrett', 'Bill-To/ Bill-From', 'pexiqepo@mailinator.com', '42', 'Optio inventore qua', '2023-11-20 04:53:04', '2023-11-20 04:53:04', NULL),
(101, 148, 'Diana Berger', 'Bill-To/ Bill-From', 'cytiwaca@mailinator.com', '67', 'Mollit quisquam enim', '2023-11-20 05:05:09', '2023-11-20 05:05:09', NULL),
(102, 149, 'Para', 'Bill-To/ Bill-From', 'robotest12@gmail.com', '9552205520', '02512203211', '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(103, 150, 'Name of Contact Person', 'Bill-To/ Bill-From', 'test@test.com', '9552205520', '123548625', '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(104, 151, 'New Contact Person', 'Bill-To/ Bill-From', 'test1@test.com', '9552205521', '12548841', '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(105, 152, 'Cus Cntct Prsn', 'Bill-To/ Bill-From', 'aks@tst.com', '9552205523', '12548841', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(106, 153, 'IP', 'Bill-To/ Bill-From', 'sarthak1@gmail.com', '9874563210', '0251234562107', '2023-12-14 07:14:19', '2023-12-14 07:14:19', NULL),
(107, 154, 'Deepti', 'Bill-To/ Bill-From', 'enterprises1@gmail.com', '9874563200', '00221133445', '2023-12-14 09:31:56', '2023-12-14 09:31:56', NULL),
(108, 155, 'Dr Contractor', 'Ship-To/ Ship-From', 'dr@test.com', '9552205525', '42956464', '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(109, 156, 'Dr Persn', 'Ship-To/ Ship-From', 'dr@cst.com', '9552205531', '286262828', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(110, 157, 'house contact person', 'Bill-To/ Bill-From', 'house@vendor.com', '8788787', '876768', '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(111, 158, 'House Test Contact', 'Bill-To/ Bill-From', 'test@mail.com', '9876543210', '98765', '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bp_organisation_type`
--

DROP TABLE IF EXISTS `bp_organisation_type`;
CREATE TABLE IF NOT EXISTS `bp_organisation_type` (
  `bp_organisation_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `bp_organisation_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bp_organisation_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_organisation_type`
--

INSERT INTO `bp_organisation_type` (`bp_organisation_type_id`, `bp_organisation_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Proprietor', '2022-08-01 10:12:32', NULL, NULL),
(2, 'Partnership', '2022-08-03 10:12:32', NULL, NULL),
(3, 'Company', '2022-08-02 10:13:11', NULL, NULL),
(4, 'LLP', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) DEFAULT NULL,
  `brand_desc` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_desc`, `created_at`, `updated_at`) VALUES
(24, 'test', NULL, '2023-09-05 11:44:33', '2023-09-05 11:44:33'),
(25, 'Kellogs', NULL, '2023-10-24 14:48:20', '2023-10-24 14:48:20'),
(26, 'Bingo', NULL, '2023-10-28 13:34:25', '2023-10-28 13:34:25'),
(27, 'Akshay\'s Testy Choco', NULL, '2023-12-14 02:47:30', '2023-12-14 02:47:30'),
(28, 'Robotest', NULL, '2023-12-14 03:52:08', '2023-12-14 03:52:08'),
(29, 'Robotest', NULL, '2023-12-14 04:00:57', '2023-12-14 04:00:57'),
(30, 'Dabar', NULL, '2023-12-15 01:49:07', '2023-12-15 01:49:07'),
(31, 'house brand', NULL, '2023-12-18 09:03:26', '2023-12-18 09:03:26'),
(32, 'Para Brand', NULL, '2023-12-22 02:20:21', '2023-12-22 02:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `bspl_cateogry`
--

DROP TABLE IF EXISTS `bspl_cateogry`;
CREATE TABLE IF NOT EXISTS `bspl_cateogry` (
  `bsplcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `bspl_cat_name` varchar(110) NOT NULL,
  `bsplheads_id` int(11) DEFAULT NULL,
  `has_subcat` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bsplcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bspl_cateogry`
--

INSERT INTO `bspl_cateogry` (`bsplcat_id`, `bspl_cat_name`, `bsplheads_id`, `has_subcat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 'cat1', 6, 1, '2023-06-05 15:40:12', '2023-06-05 16:54:57', '2023-06-05 16:54:57'),
(52, 'cat2', 6, 1, '2023-06-05 15:40:32', '2023-06-05 16:54:57', '2023-06-05 16:54:57'),
(53, '4st', 7, 1, '2023-06-05 16:50:14', '2023-06-05 16:52:42', '2023-06-05 16:52:42'),
(54, 'new cat', 7, 0, '2023-06-05 16:55:45', '2023-12-13 16:03:08', NULL),
(55, 'new category', 8, 1, '2023-06-06 11:46:46', '2023-06-06 11:46:46', NULL),
(56, 'aks category', 9, 1, '2023-12-14 13:21:38', '2023-12-14 13:21:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bspl_heads`
--

DROP TABLE IF EXISTS `bspl_heads`;
CREATE TABLE IF NOT EXISTS `bspl_heads` (
  `bsplheads_id` int(11) NOT NULL AUTO_INCREMENT,
  `bspl_heads_name` varchar(110) NOT NULL,
  `has_subcat` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bsplheads_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bspl_heads`
--

INSERT INTO `bspl_heads` (`bsplheads_id`, `bspl_heads_name`, `has_subcat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'head', NULL, '2023-06-05 15:40:00', '2023-06-05 16:54:57', '2023-06-05 16:54:57'),
(7, 'head2', NULL, '2023-06-05 15:40:05', '2023-06-05 15:40:05', NULL),
(8, 'new head', NULL, '2023-06-06 11:46:32', '2023-06-06 11:46:32', NULL),
(9, 'AKS Head', NULL, '2023-12-14 13:21:12', '2023-12-14 13:21:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bspl_sub_cateogry`
--

DROP TABLE IF EXISTS `bspl_sub_cateogry`;
CREATE TABLE IF NOT EXISTS `bspl_sub_cateogry` (
  `bsplsubcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `bsplcat_id` int(11) DEFAULT NULL,
  `bsplheads_id` int(11) DEFAULT NULL,
  `bspl_subcat_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bsplsubcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bspl_sub_cateogry`
--

INSERT INTO `bspl_sub_cateogry` (`bsplsubcat_id`, `bsplcat_id`, `bsplheads_id`, `bspl_subcat_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(46, 51, NULL, 'sub-cat1', '2023-06-05 15:40:21', '2023-06-05 16:54:48', '2023-06-05 16:54:48'),
(47, 52, NULL, 'sub-cat2', '2023-06-05 15:40:40', '2023-06-05 16:53:47', '2023-06-05 16:53:47'),
(48, 53, NULL, 'erte', '2023-06-05 16:50:21', '2023-06-05 16:52:42', '2023-06-05 16:52:42'),
(49, 52, NULL, 'sub cat 2', '2023-06-05 16:54:41', '2023-06-05 16:54:57', '2023-06-05 16:54:57'),
(50, 54, NULL, 'sub cat new', '2023-06-05 16:55:53', '2023-06-05 16:55:53', NULL),
(51, 54, NULL, 'test sub cat', '2023-06-06 11:50:31', '2023-06-06 11:50:31', NULL),
(52, 56, NULL, 'aks subCategory', '2023-12-14 13:22:04', '2023-12-14 13:22:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bspl_type`
--

DROP TABLE IF EXISTS `bspl_type`;
CREATE TABLE IF NOT EXISTS `bspl_type` (
  `bsplstype_id` int(11) NOT NULL AUTO_INCREMENT,
  `bsplsubcat_id` int(11) DEFAULT NULL,
  `bspl_type_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bsplstype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bspl_type`
--

INSERT INTO `bspl_type` (`bsplstype_id`, `bsplsubcat_id`, `bspl_type_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 46, 'sdfgsd', '2023-06-05 16:48:29', '2023-06-05 16:54:48', '2023-06-05 16:54:48'),
(6, 47, '455', '2023-06-05 16:50:06', '2023-06-05 16:53:47', '2023-06-05 16:53:47'),
(7, 48, 'ertert', '2023-06-05 16:50:25', '2023-06-05 16:52:42', '2023-06-05 16:52:42'),
(8, 46, 'test1 type', '2023-06-05 16:54:31', '2023-06-05 16:54:45', '2023-06-05 16:54:45'),
(9, 50, 'new type', '2023-06-05 16:56:00', '2023-06-05 16:56:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_partner_category`
--

DROP TABLE IF EXISTS `business_partner_category`;
CREATE TABLE IF NOT EXISTS `business_partner_category` (
  `business_partner_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_partner_category_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`business_partner_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_partner_category`
--

INSERT INTO `business_partner_category` (`business_partner_category_id`, `business_partner_category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BP Category 1', '2023-01-13 10:05:11', NULL, NULL),
(2, 'BP Category 2', '2023-01-13 10:05:11', NULL, NULL),
(3, 'BP Category 3', '2023-01-13 10:05:11', NULL, NULL),
(31, 'test cat', '2023-08-29 11:09:44', '2023-08-29 11:09:44', NULL),
(32, 'asdsad', '2023-09-05 05:39:43', '2023-09-05 05:39:43', NULL),
(33, 'check', '2023-09-05 05:40:01', '2023-09-05 05:40:01', NULL),
(34, 'asdsad', '2023-09-05 05:41:45', '2023-09-05 05:41:45', NULL),
(35, 'sadas', '2023-09-05 05:42:14', '2023-09-05 05:42:14', NULL),
(36, 'sadas', '2023-09-05 05:43:23', '2023-09-05 05:43:23', NULL),
(37, 'sadad', '2023-09-05 05:45:56', '2023-09-05 05:45:56', NULL),
(38, 'asdasd', '2023-09-05 05:46:36', '2023-09-05 05:46:36', NULL),
(39, 'asdad', '2023-09-05 05:47:15', '2023-09-05 05:47:15', NULL),
(40, 'asdasd', '2023-09-05 05:51:13', '2023-09-05 05:51:13', NULL),
(41, 'tes12', '2023-09-05 05:51:35', '2023-09-05 05:51:35', NULL),
(42, 'asdar', '2023-09-05 05:51:53', '2023-09-05 05:51:53', NULL),
(43, 'new category testing 05-09-2023', '2023-09-05 09:47:35', '2023-09-05 09:47:35', NULL),
(44, 'edit done', '2023-09-05 09:48:54', '2023-09-05 09:48:54', NULL),
(45, 'asd', '2023-09-05 11:20:22', '2023-09-05 11:20:22', NULL),
(46, 'Retailer', '2023-10-14 09:41:05', '2023-10-14 09:41:05', NULL),
(47, 'Importer', '2023-10-14 10:30:56', '2023-10-14 10:30:56', NULL),
(48, 'BP Category 3', '2023-12-14 01:59:07', '2023-12-14 01:59:07', NULL),
(49, 'Newly Added Category', '2023-12-14 01:59:08', '2023-12-14 01:59:08', NULL),
(50, 'House category Type', '2023-12-18 08:15:55', '2023-12-18 08:15:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_partner_master`
--

DROP TABLE IF EXISTS `business_partner_master`;
CREATE TABLE IF NOT EXISTS `business_partner_master` (
  `business_partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_partner_type` varchar(200) DEFAULT NULL,
  `residential_status` varchar(100) DEFAULT NULL,
  `bp_name` varchar(255) DEFAULT NULL,
  `bp_organisation_type` int(11) DEFAULT NULL,
  `bp_category` varchar(100) DEFAULT NULL,
  `bp_group` varchar(200) DEFAULT NULL,
  `sales_manager` varchar(255) DEFAULT NULL,
  `sales_officer` varchar(255) DEFAULT NULL,
  `salesman` varchar(255) DEFAULT NULL,
  `payment_terms_id` int(11) DEFAULT NULL,
  `credit_limit` text,
  `gst_details` varchar(100) DEFAULT NULL,
  `gst_reg_type` varchar(110) DEFAULT NULL,
  `rcm_app` int(11) DEFAULT NULL,
  `msme_reg` int(11) DEFAULT NULL,
  `pricing_profile` varchar(255) DEFAULT NULL,
  `shelf_life` varchar(255) DEFAULT NULL,
  `area_id` varchar(110) DEFAULT NULL,
  `route_id` varchar(110) DEFAULT NULL,
  `beat_id` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`business_partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_partner_master`
--

INSERT INTO `business_partner_master` (`business_partner_id`, `business_partner_type`, `residential_status`, `bp_name`, `bp_organisation_type`, `bp_category`, `bp_group`, `sales_manager`, `sales_officer`, `salesman`, `payment_terms_id`, `credit_limit`, `gst_details`, `gst_reg_type`, `rcm_app`, `msme_reg`, `pricing_profile`, `shelf_life`, `area_id`, `route_id`, `beat_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(121, '3', 'resident', 'USAMA SHAIKH', 1, '3', 'SHADY GR', '13', '11', '12', 4, '1 LAKH', 'JH435BB444', 'composite', 1, 1, '1', '1', '7', '23', NULL, '2023-06-01 12:19:07', '2023-12-11 10:40:47', NULL),
(122, '3', 'resident', 'Hedwig Oneill', 2, '3', 'Perferendis placeat', '13', '14', '12', 3, '2 LAKH', 'EFDS7887', 'composite', 1, 1, '1', '2', '31', '56', NULL, '2023-06-01 12:24:01', '2023-12-11 10:41:05', NULL),
(123, '1', 'Voluptatibus quasi i', 'Cairo Myers', 3, '1', 'Debitis aut dolorem', '13', '11', '12', 3, 'Dolores deserunt id', 'Amet consequuntur q', NULL, NULL, NULL, '0', 'Unde animi id id es', '7', '23', '34', '2023-06-02 12:37:06', '2023-11-17 06:44:56', '2023-11-17 06:44:56'),
(124, '1', 'indian-company', 'IRFAN PATHAN', 3, '1', 'IP GROUP', '13', '11', '12', 4, '15 DAYS', 'SDGDF546554', 'regular', 0, 0, '1', '1 YEAR', '34', '64', NULL, '2023-06-07 04:49:41', '2023-12-11 10:41:19', NULL),
(125, '1', 'foriegn-company', 'Macaulay Pollard', 2, '1', 'Necessitatibus volup', '13', '14', '12', 4, '1', '118', 'composite', 1, 1, '0', '1', '7', NULL, NULL, '2023-06-07 05:13:32', '2023-06-07 05:13:35', '2023-06-07 05:13:35'),
(126, '1', 'indian-company', 'Denise Todd', 3, '2', 'Quo eaque veniam du', '13', '11', '12', 4, '1', '722', 'regular', 1, 0, '0', '1', '34', NULL, NULL, '2023-06-07 05:19:29', '2023-06-07 05:19:33', '2023-06-07 05:19:33'),
(127, '3', 'non-resident', 'Thane Reese', 2, '1', 'In veniam qui elige', '13', '14', '12', 1, 'Consequat Qui dolor', '872', 'regular', 0, 1, '0', 'Voluptatem omnis ha', '7', NULL, NULL, '2023-06-07 05:30:16', '2023-06-07 05:30:20', '2023-06-07 05:30:20'),
(128, '1', 'non-resident', 'Amy Hampton', 4, '2', 'Laborum perferendis', '13', '11', '12', 4, '1', '332', 'regular', 0, 1, '0', '1', '31', NULL, NULL, '2023-06-07 05:30:32', '2023-06-07 05:30:36', '2023-06-07 05:30:36'),
(129, '3', 'foriegn-company', 'Alana Flores', 4, '2', 'Repellendus Odio cu', '13', '14', '12', 3, 'Sunt irure delectus', '190', 'composite', 1, 0, '0', 'Sapiente dolore nisi', '33', NULL, NULL, '2023-06-07 05:31:14', '2023-06-07 05:31:17', '2023-06-07 05:31:17'),
(130, '1', 'indian-company', 'Adele Dalton', 1, '3', 'Veritatis est sit', '13', '14', '12', 4, 'Nisi sunt deleniti i', '740', 'regular', 1, 1, '0', '1', '31', NULL, NULL, '2023-06-07 05:31:30', '2023-06-07 05:31:33', '2023-06-07 05:31:33'),
(131, '1', 'indian-company', 'Keely Miranda', 3, '3', 'Et atque sit sapien', '13', '14', '12', 1, 'Vitae magna sint cul', '608', 'regular', 0, 0, '0', 'Ex quis culpa eos ad', '31', NULL, NULL, '2023-06-07 05:38:09', '2023-06-07 05:38:13', '2023-06-07 05:38:13'),
(132, '1', 'non-resident', 'Althea Harper', 1, '1', 'Veniam totam ab vol', '13', '11', '12', 4, '1', '968', 'regular', 0, 0, '0', '1', '34', NULL, NULL, '2023-06-07 05:51:15', '2023-06-07 05:51:19', '2023-06-07 05:51:19'),
(133, '1', 'indian-company', 'Ainsley Bowman', 1, '1', 'Nihil corrupti plac', '13', '11', '12', 4, '1', '230', 'regular', 0, 1, '0', '1', '31', NULL, NULL, '2023-06-07 05:57:42', '2023-06-07 05:57:46', '2023-06-07 05:57:46'),
(134, '1', 'non-resident', 'India Black', 3, '1', 'Unde nulla quas nisi', '13', '11', '12', 4, '1', '781', 'regular', 1, 0, '0', '1', '33', NULL, NULL, '2023-06-07 06:19:14', '2023-06-07 06:19:18', '2023-06-07 06:19:18'),
(135, '1', 'non-resident', 'Francis Burton', 3, '3', 'Rerum fugit possimu', '13', '11', '12', 4, '1', '456', 'composite', 1, 1, '0', 'Officia non quia sae', '7', NULL, NULL, '2023-06-07 06:19:35', '2023-06-07 06:19:39', '2023-06-07 06:19:39'),
(136, '3', 'foriegn-company', 'Wyatt Ward', 1, '2', 'Eveniet sunt natus', '13', '14', '12', 3, 'Consequatur aut dese', '326', 'regular', 1, 0, '0', 'Alias ducimus volup', '7', NULL, NULL, '2023-06-07 06:19:47', '2023-06-07 06:19:53', '2023-06-07 06:19:53'),
(137, '3', 'foriegn-company', 'Graiden Higgins', 2, '2', 'Qui voluptatem in r', '13', '14', '12', 3, 'Saepe minima consequ', '492', 'regular', 1, 1, '0', 'Quia amet qui aut q', '31', NULL, NULL, '2023-06-07 06:41:43', '2023-06-07 06:41:47', '2023-06-07 06:41:47'),
(138, '1', 'foriegn-company', 'Melinda Wiggins', 1, '3', 'Esse et quas sint ea', '13', '11', '12', 2, 'Ducimus hic eligend', '212', 'composite', 0, 0, '0', NULL, '7', NULL, NULL, '2023-06-07 06:41:55', '2023-06-07 06:42:07', '2023-06-07 06:42:07'),
(139, '3', 'foriegn-company', 'Constance Allen', 1, '1', 'Laborum Soluta erro', '13', '11', '12', 3, 'Architecto ea cupida', '607', 'composite', 0, 0, '0', 'Ut modi veniam unde', '31', NULL, NULL, '2023-06-07 06:55:47', '2023-06-07 06:55:51', '2023-06-07 06:55:51'),
(140, '1', 'foriegn-company', 'Sophia Burnett', 4, '3', 'Commodo duis duis co', '13', '14', '12', 4, 'Quis sit et exceptu', '308', 'composite', 1, 0, '0', NULL, '7', NULL, NULL, '2023-06-07 06:55:56', '2023-06-07 06:56:01', '2023-06-07 06:56:01'),
(141, '3', 'non-resident', 'Clare Martin', 1, '2', 'Reprehenderit qui r', NULL, NULL, NULL, 2, NULL, '368', 'regular', 0, 1, '0', NULL, NULL, NULL, NULL, '2023-06-07 06:56:17', '2023-06-07 06:56:22', '2023-06-07 06:56:22'),
(142, '3', 'resident', 'Hilel Irwin', 2, '3', 'Reprehenderit repudi', NULL, NULL, NULL, 1, NULL, '303', 'regular', 0, 1, '0', NULL, NULL, NULL, NULL, '2023-06-07 06:56:25', '2023-06-07 06:56:29', '2023-06-07 06:56:29'),
(143, '1', 'resident', 'Medge Barnes', 3, '1', 'Consectetur nihil d', '13', '14', '12', 1, 'Nihil vel velit repr', '517', 'regular', 1, 0, '0', NULL, '31', NULL, NULL, '2023-06-07 06:56:33', '2023-06-07 06:56:38', '2023-06-07 06:56:38'),
(144, '1', 'resident', 'HARI OM MED & GEN. STORES', 1, '1', 'Pharma & Chemist', NULL, '11', NULL, 4, '30', '27EWOAI3948O4ZR', 'composite', 1, 0, '0', '50%', NULL, NULL, '47', '2023-10-14 10:11:15', '2023-11-20 05:07:34', '2023-11-20 05:07:34'),
(145, '3', 'resident', 'Mahavir Marketing', 2, '47', 'Importer', NULL, NULL, NULL, 4, '30', '27EWOAI3948O4ZR', 'regular', 1, 1, '0', NULL, NULL, NULL, NULL, '2023-10-14 10:35:59', '2023-11-17 06:44:25', '2023-11-17 06:44:25'),
(146, '3', 'resident', 'Rana Obrien', 4, '42', 'Laborum aut quasi qu', NULL, NULL, NULL, 3, NULL, '531', 'regular', 0, 0, '0', NULL, NULL, NULL, NULL, '2023-11-17 06:43:25', '2023-11-17 06:43:43', '2023-11-17 06:43:43'),
(147, '3', 'non-resident', 'Jerry Koch', 4, '40', 'Veniam eveniet et', NULL, NULL, NULL, 1, NULL, '666', 'regular', 0, 1, '0', NULL, NULL, NULL, NULL, '2023-11-20 04:53:04', '2023-11-20 04:58:06', '2023-11-20 04:58:06'),
(148, '3', 'non-resident', 'Colt Mckinney', 4, '32', 'Ipsum sit dolor id', NULL, NULL, NULL, 1, NULL, '344', 'composite', 0, 0, '0', NULL, NULL, NULL, NULL, '2023-11-20 05:05:09', '2023-11-20 05:07:57', '2023-11-20 05:07:57'),
(149, '3', 'indian-company', 'Robotest', 1, '3', 'DHL', NULL, NULL, NULL, 1, NULL, '0001234567', 'regular', 1, 1, '1', NULL, NULL, NULL, NULL, '2023-12-14 02:11:37', '2023-12-14 02:11:37', NULL),
(150, '3', 'resident', 'Akshay\'s 1st Vendor', 3, '49', 'Akshay\'s', NULL, NULL, NULL, 3, NULL, 'akshu125478test', 'regular', 1, 1, '6', NULL, NULL, NULL, NULL, '2023-12-14 02:18:04', '2023-12-14 02:18:04', NULL),
(151, '3', 'non-resident', 'Akshay New Vendor', 2, '49', 'New Grp', NULL, NULL, NULL, 1, NULL, 'akshu142536Tst', 'regular', 0, 0, '6', NULL, NULL, NULL, NULL, '2023-12-14 05:07:37', '2023-12-14 05:07:37', NULL),
(152, '1', 'non-resident', 'Aks Customer', 1, '49', 'Aks Cus GRP', '44', '45', '46', 4, '120', 'akss45236tst', 'composite', 0, 0, '6', '60', NULL, NULL, '51', '2023-12-14 06:43:00', '2023-12-14 06:43:00', NULL),
(153, '1', 'foriegn-company', 'Sarthak', 2, '1', 'Qwert', '30', '29', '33', 3, NULL, '00011224', 'regular', 1, 1, '1', '1Year', NULL, NULL, '45', '2023-12-14 07:14:19', '2023-12-14 09:34:01', '2023-12-14 09:34:01'),
(154, '3', 'foriegn-company', 'Enterprises', 1, '49', 'ATM', NULL, NULL, NULL, 2, NULL, '0012', 'regular', 1, 1, '1', NULL, NULL, NULL, NULL, '2023-12-14 09:31:56', '2023-12-14 09:31:56', NULL),
(155, '3', 'non-resident', 'The Doctor Vendor', 2, '49', 'Dr group', NULL, NULL, NULL, 2, NULL, 'drtst010504test', 'composite', 1, 0, '6', NULL, NULL, NULL, NULL, '2023-12-14 09:32:59', '2023-12-14 09:32:59', NULL),
(156, '1', 'non-resident', 'Dr Customer', 1, '49', 'Dr Cust grp', '44', '45', '46', 4, '50 Days', 'akss45236tst', 'composite', 1, 0, '6', '60', NULL, NULL, '50', '2023-12-14 09:36:32', '2023-12-14 09:36:32', NULL),
(157, '3', 'non-resident', 'House Vendor', 1, '50', 'House Partner Group', NULL, NULL, NULL, 4, '28 days', 'house76473hs', 'composite', 1, 0, '6', NULL, NULL, NULL, NULL, '2023-12-18 09:02:04', '2023-12-18 09:02:04', NULL),
(158, '3', 'non-resident', 'Test House Vendor', 1, '50', 'Test House Group', NULL, NULL, NULL, 4, '12 days', '09808hkjh', 'regular', 0, 0, '6', NULL, NULL, NULL, NULL, '2023-12-19 09:02:30', '2023-12-19 09:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bussiness_master_type`
--

DROP TABLE IF EXISTS `bussiness_master_type`;
CREATE TABLE IF NOT EXISTS `bussiness_master_type` (
  `bussiness_master_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `bussiness_master_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bussiness_master_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bussiness_master_type`
--

INSERT INTO `bussiness_master_type` (`bussiness_master_type_id`, `bussiness_master_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Customer', '2022-09-01 07:12:02', NULL, NULL),
(3, 'Vendor', '2022-09-01 10:10:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `category_description` text,
  `category_slug` varchar(200) DEFAULT NULL,
  `category_banner_image` varchar(200) DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `has_subcategories` int(11) DEFAULT NULL,
  `text_color` varchar(300) DEFAULT NULL,
  `drop_down_menu_text_color` varchar(100) DEFAULT NULL,
  `drop_down_sub_category_class` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `category_slug`, `category_banner_image`, `visibility`, `has_subcategories`, `text_color`, `drop_down_menu_text_color`, `drop_down_sub_category_class`, `created_at`, `deleted_at`, `updated_at`) VALUES
(16, 'test', NULL, 'test', NULL, 1, NULL, NULL, NULL, NULL, '2023-09-05 11:44:43', NULL, '2023-09-05 17:14:43'),
(17, 'Foods & Refreshment', NULL, 'foods-refreshment', NULL, 1, NULL, NULL, NULL, NULL, '2023-10-24 14:51:22', NULL, '2023-10-24 20:21:22'),
(18, 'Akshay\'s Choco', NULL, 'akshay-s-choco', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-14 02:49:04', NULL, '2023-12-14 10:49:04'),
(19, 'Robolays', NULL, 'robolays', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-14 03:53:37', NULL, '2023-12-14 11:53:37'),
(20, 'Robolays', NULL, 'robolays-2', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-14 04:01:08', NULL, '2023-12-14 12:01:08'),
(21, 'Dabar category', NULL, 'dabar-category', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-15 01:49:28', NULL, '2023-12-15 09:49:28'),
(22, 'house category', NULL, 'house-category', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-18 09:03:54', NULL, '2023-12-18 17:03:54'),
(23, 'Para Category', NULL, 'para-category', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-22 02:20:46', NULL, '2023-12-22 10:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `address_line1` varchar(500) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `cin` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `tan` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `account_name_1` varchar(100) DEFAULT NULL,
  `account_no_1` varchar(100) DEFAULT NULL,
  `bank_name_1` varchar(100) DEFAULT NULL,
  `ifsc_code_1` varchar(100) DEFAULT NULL,
  `branch_1` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `landmark` varchar(300) DEFAULT NULL,
  `address_line2` varchar(300) DEFAULT NULL,
  `gstno` varchar(300) DEFAULT NULL,
  `city` varchar(300) DEFAULT NULL,
  `district` varchar(300) DEFAULT NULL,
  `country` varchar(300) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `batch_system` tinyint(4) NOT NULL DEFAULT '0',
  `db_type` varchar(110) DEFAULT NULL,
  `ay_type` varchar(50) DEFAULT NULL,
  `ac_start_date` varchar(110) DEFAULT NULL,
  `ac_end_date` varchar(110) DEFAULT NULL,
  `is_backdated_date` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `email`, `mobile_no`, `address_line1`, `gst_no`, `state`, `cin`, `pan`, `tan`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch`, `account_name_1`, `account_no_1`, `bank_name_1`, `ifsc_code_1`, `branch_1`, `type`, `logo`, `signature`, `address`, `landmark`, `address_line2`, `gstno`, `city`, `district`, `country`, `pincode`, `batch_system`, `db_type`, `ay_type`, `ac_start_date`, `ac_end_date`, `is_backdated_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, '3P SAP', 'info@3psap.com', '9638527410', 'test', '27AAECL5366R1ZP', 'MAHARASHTRA', 'U63030MH2021PTC356379', 'AAECL5366R', 'PNEL08723B', 'LOGIVIA LOGISTICS SOLUTIONS PRIVATE LIMITED', '921020012440078', 'AXIS BANK LTD', 'UTIB0001342', 'KATRAP BADLAPUR', 'LOGIVIA LOGISTICS SOLUTIONS PRIVATE LIMITED', '10069772496', 'IDFC FIRST BANK', 'IDFB0040107', 'ANDHERI EAST', 'agent', '1624085914.png', '', NULL, 'Khad', 'test', '10012', 'Kalyan', 'THANE', '2', '421301', 1, 'Distributor', 'fi_year', '2023-12-01', '2023-12-25', 0, '2021-05-27 08:26:57', '2023-12-27 07:16:45', NULL),
(10, 'Jenkins and Patterson LLC', 'lavezisymo@mailinator.com', '9999999999', '32 South Nobel Street', NULL, 'AUCKLAND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Eveniet eaque ipsum', 'Ut dolorum sint expl', 'Deserunt optio temp', 'Veniam alias vel ex', 'AUCKLAND', '3', '888888', 1, 'Distributor', 'cal_year', '2023-12-09', '2024-12-08', 1, '2023-12-26 09:52:01', '2024-01-02 05:05:56', NULL),
(11, 'Noel Fernandez Plc', 'neqiwyluc@mailinator.com', '9999999999', '968 West Nobel Avenue', NULL, 'CHHATTISGARH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sapiente esse quod', 'Expedita quia aut am', 'Molestiae vel magna', 'Quo quos velit est', 'RAJNANDGAON', '2', '400615', 0, 'Supplier', 'cal_year', NULL, NULL, 0, '2023-12-27 07:13:21', '2024-01-02 05:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consignee`
--

DROP TABLE IF EXISTS `consignee`;
CREATE TABLE IF NOT EXISTS `consignee` (
  `consignee_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `cin` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `tan` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignee`
--

INSERT INTO `consignee` (`consignee_id`, `name`, `email`, `contact_no`, `address`, `gst_no`, `state`, `cin`, `pan`, `tan`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'KWANTAM B.V', 'kwantam.bv@gmail.com', '234234234', 'India', '2342342344', 'Bihar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 08:38:29', '2021-05-25 08:39:03', '2021-05-25 08:39:03'),
(6, 'KWANTAM B.V', 'kwantam.bv@gmail.com', '232342343', 'India', '234234234', 'Punjab', '3247239847239', '3434345345', '38093859305119', 'alsdkfj', 'lskdfj', 'lsadkj', 'slkdjf', 'lsslkdfj', '2021-05-25 08:39:38', '2021-05-26 11:52:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `gst_no` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `cin` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `tan` varchar(100) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `signature` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `contact_no`, `address`, `gst_no`, `state`, `cin`, `pan`, `tan`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch`, `type`, `logo`, `signature`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Hira Laal and son India', 'hiralal@gmail.com', '234234234', '94/96, KAROLIA BUILDING\r\nROOM NO.02, 2ND FLOOR,BORA BAZAR STREET\r\nFORT, MUMBAI - 400 001', '27AHHPP8593M1ZC', 'Andaman and Nicobar Islands', '27AHHPP8593M1ZC', '27AHHPP8593M1ZC', '27AHHPP8593M1ZC', 'laksdjfl', 'laksdjf', 'laskdfj', 'lksdjf', 'lkjsdf', 'party', '', '', '2021-05-27 08:19:38', '2021-07-08 08:16:07', NULL),
(6, 'Blue Bell Logistics Private Limited', 'del.accounts@bluebellglobal.in', '+91- 022- 4973 6516', 'OFFICE NO. 403, , 119 BUSINESS POINT,\r\nSAHAR ROAD, NEAR AIR CARGO COMPLEX\r\nSAHAR, ANDHERI EAST, MUMBAI CITY,MAHARASHTRA, 400099', '27AAFCB1701K1ZX', 'Maharashtra', 'U63090DL2012PTC241563', 'AAFCB1701K', 'DELB13417F', 'Blue Bell Logistics Pvt Ltd', '50200018838693', 'HDFC Bank Ltd', 'HDFC0000592', 'MUMBAI - MAROL State: MAHARASHTRA', 'agent', '1622205537.jpg', '1622205538.jpg', '2021-05-27 08:26:57', '2021-05-28 07:08:58', NULL),
(7, 'KWANTAM B.V', 'kwantam.bv@gmail.com', '5689562365', 'PT.UNILEVER INDONESIA TBK\r\nJL.BSD BOULEVARD BARAT GREEN OFFICE\r\nPARK KAVLING 3 BSD CITY SAMPORA CISAUK\r\nKAB.TANGERANG BANTEN,INDONESIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'consignee', '1622141886.jpg', '1622141886.jpg', '2021-05-27 08:27:18', '2021-05-28 01:55:25', NULL),
(8, 'New party', 'new@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'party', '1622141034.jpg', '1622141034.jpg', '2021-05-27 13:13:54', '2021-05-28 07:09:24', '2021-05-28 07:09:24'),
(9, 'iphone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'agent', '1622141842.jpg', '1622141842.jpg', '2021-05-27 13:27:22', '2021-05-28 07:08:00', '2021-05-28 07:08:00'),
(10, 'Vendor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'consignee', '1622141871.jpg', '1622141871.jpg', '2021-05-27 13:27:51', '2021-05-28 07:09:36', '2021-05-28 07:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `deapartment`
--

DROP TABLE IF EXISTS `deapartment`;
CREATE TABLE IF NOT EXISTS `deapartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deapartment`
--

INSERT INTO `deapartment` (`id`, `name`) VALUES
(2, 'Admin'),
(3, 'Manager'),
(4, 'ASE'),
(5, 'ASM'),
(6, 'Sales Officer'),
(7, 'Sales Manager'),
(8, 'Salesman'),
(9, 'Sales Executive');

-- --------------------------------------------------------

--
-- Table structure for table `def_bacth_no_counter`
--

DROP TABLE IF EXISTS `def_bacth_no_counter`;
CREATE TABLE IF NOT EXISTS `def_bacth_no_counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counter` int(11) NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `def_bacth_no_counter`
--

INSERT INTO `def_bacth_no_counter` (`id`, `counter`, `updated`) VALUES
(1, 853, '2023-12-05 11:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_order`
--

DROP TABLE IF EXISTS `delivery_order`;
CREATE TABLE IF NOT EXISTS `delivery_order` (
  `delivery_order_id` int(11) NOT NULL,
  `delivery_order_counter` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_authority` varchar(200) DEFAULT NULL,
  `am_eta` varchar(100) DEFAULT NULL,
  `mv` varchar(100) DEFAULT NULL,
  `voy` varchar(100) DEFAULT NULL,
  `bl_no` varchar(100) DEFAULT NULL,
  `bl_date` date DEFAULT NULL,
  `line_no` varchar(100) DEFAULT NULL,
  `container_no` varchar(100) DEFAULT NULL,
  `delivery_to` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_order`
--

INSERT INTO `delivery_order` (`delivery_order_id`, `delivery_order_counter`, `delivery_date`, `delivery_authority`, `am_eta`, `mv`, `voy`, `bl_no`, `bl_date`, `line_no`, `container_no`, `delivery_to`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '2021-07-09', NULL, '2021-08-24', 'Nhava Sheva', 'CORAL GEOGRAPHER', '2342342342344', '2021-07-16', '78456231', '7895426321', 'Parasight Solutions', '2021-07-08 21:24:19', '2021-07-08 21:24:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_order_items`
--

DROP TABLE IF EXISTS `delivery_order_items`;
CREATE TABLE IF NOT EXISTS `delivery_order_items` (
  `delivery_order_item_id` int(11) NOT NULL,
  `delivery_order_id` int(11) DEFAULT NULL,
  `marks` varchar(100) DEFAULT NULL,
  `no_of_pkgs` varchar(100) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `gross_weight` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_order_items`
--

INSERT INTO `delivery_order_items` (`delivery_order_item_id`, `delivery_order_id`, `marks`, `no_of_pkgs`, `details`, `gross_weight`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '5', '3', 'Coconut', '500 kg', '2021-07-08 21:24:19', '2021-07-08 21:24:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(110) DEFAULT NULL,
  `bsplheads_id` int(11) DEFAULT NULL,
  `bsplcat_id` int(11) DEFAULT NULL,
  `bsplsubcat_id` int(11) DEFAULT NULL,
  `bsplstype_id` int(11) DEFAULT NULL,
  `gl_code` varchar(110) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`expense_id`, `expense_name`, `bsplheads_id`, `bsplcat_id`, `bsplsubcat_id`, `bsplstype_id`, `gl_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'new', 7, 54, 50, 9, NULL, '2023-06-06 10:48:12', '2023-06-06 12:07:04', '2023-06-06 12:07:04'),
(2, 'New Expense', 7, 54, 50, 9, '123', '2023-06-06 12:07:19', '2023-10-10 10:52:13', '2023-10-10 10:52:13'),
(3, 'Dominique Burnett', 7, 54, 50, 9, 'Non enim sit irure q', '2023-10-09 11:59:11', '2023-10-09 11:59:15', '2023-10-09 11:59:15'),
(4, 'New Expense', 7, 54, 50, 9, '456', '2023-10-10 10:52:42', '2023-10-10 10:53:33', NULL),
(5, 'Breathing Expense', 7, 54, 50, 9, '123', '2023-10-10 17:09:52', '2023-10-10 17:09:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_name` varchar(255) DEFAULT NULL,
  `has_subexpensecategories` tinyint(4) DEFAULT '1',
  `visibility` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expense_category_id`, `expense_category_name`, `has_subexpensecategories`, `visibility`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Capital Expense/ Capex', 1, 0, '2022-09-13 09:43:30', '2023-05-29 10:04:18', NULL),
(2, 'Operational Expense/ Opex', 1, 1, '2022-09-13 09:47:48', '2022-09-13 09:47:48', NULL),
(3, 'test ex', 1, 1, '2022-10-03 11:58:43', '2022-10-03 11:58:43', NULL),
(4, 'another test', 1, 1, '2022-10-03 12:05:46', '2022-10-03 12:05:46', NULL),
(5, 'test', 1, 1, '2023-03-27 04:16:03', '2023-03-27 04:16:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_master`
--

DROP TABLE IF EXISTS `expense_master`;
CREATE TABLE IF NOT EXISTS `expense_master` (
  `expense_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category_id` int(11) DEFAULT NULL,
  `expense_sub_category_id` int(11) DEFAULT NULL,
  `expense_type_id` int(11) DEFAULT NULL,
  `expense_sub_type_id` int(11) DEFAULT NULL,
  `service_expense` int(11) DEFAULT NULL,
  `goods_expense` int(11) DEFAULT NULL,
  `rental_deposits_banking` int(11) DEFAULT NULL,
  `hr_admin` int(11) DEFAULT NULL,
  `Infra_stationary` int(11) DEFAULT NULL,
  `miscellaneous` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expense_subcategories`
--

DROP TABLE IF EXISTS `expense_subcategories`;
CREATE TABLE IF NOT EXISTS `expense_subcategories` (
  `expense_subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_subcategory_name` varchar(255) DEFAULT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_subcategories`
--

INSERT INTO `expense_subcategories` (`expense_subcategory_id`, `expense_subcategory_name`, `expense_category_id`, `visibility`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manufacturing', 1, 1, '2022-09-13 10:48:03', '2022-09-13 10:48:03', NULL),
(2, 'Sales & Distribution', 1, 1, '2022-09-13 10:50:52', '2022-09-13 10:50:52', NULL),
(3, 'Supply Chain', 2, 1, '2022-09-13 10:54:20', '2022-09-13 10:54:20', NULL),
(4, 'test', 5, 1, '2023-03-27 04:16:21', '2023-03-27 04:16:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_sub_type`
--

DROP TABLE IF EXISTS `expense_sub_type`;
CREATE TABLE IF NOT EXISTS `expense_sub_type` (
  `expense_sub_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_sub_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_sub_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

DROP TABLE IF EXISTS `expense_types`;
CREATE TABLE IF NOT EXISTS `expense_types` (
  `expense_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`expense_type_id`, `expense_type_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Goods', NULL, NULL, NULL),
(2, 'Services', NULL, NULL, NULL),
(3, 'Deposits & banking', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(151) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `financials_master`
--

DROP TABLE IF EXISTS `financials_master`;
CREATE TABLE IF NOT EXISTS `financials_master` (
  `financials_id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_particulars` int(11) NOT NULL,
  `sub_group` int(11) DEFAULT NULL,
  `particulars` int(11) DEFAULT NULL,
  `gl_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`financials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `financial_year`
--

DROP TABLE IF EXISTS `financial_year`;
CREATE TABLE IF NOT EXISTS `financial_year` (
  `financial_year_id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(50) DEFAULT NULL,
  `billoflading_counter` int(11) DEFAULT '0',
  `proforma_counter` int(11) DEFAULT '0',
  `delivery_order_counter` int(11) DEFAULT '0',
  `gatepass_counter` int(11) DEFAULT '0',
  `manifest_counter` int(11) DEFAULT '0',
  `job_counter` int(11) DEFAULT '0',
  `purchase_order_counter` int(11) DEFAULT '0',
  `goods_servie_receipt_counter` int(11) DEFAULT '0',
  `ap_invoice_counter` int(11) NOT NULL DEFAULT '0',
  `bill_booking_counter` int(11) NOT NULL DEFAULT '0',
  `banking_payment_counter` int(11) NOT NULL DEFAULT '0',
  `order_booking_counter` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`financial_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_year`
--

INSERT INTO `financial_year` (`financial_year_id`, `year`, `billoflading_counter`, `proforma_counter`, `delivery_order_counter`, `gatepass_counter`, `manifest_counter`, `job_counter`, `purchase_order_counter`, `goods_servie_receipt_counter`, `ap_invoice_counter`, `bill_booking_counter`, `banking_payment_counter`, `order_booking_counter`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2023-12-27 07:11:23', '2023-12-27 07:11:30', NULL),
(2, '2023-2024', 0, 0, 0, 0, 0, 0, 3, 1, 1, 1, 1, NULL, 0, '2023-12-27 07:11:30', '2023-12-27 11:27:08', NULL),
(3, '2023-2023', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, '2023-12-27 07:13:57', '2023-12-27 10:13:04', NULL),
(4, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2023-12-27 10:13:04', '2024-01-02 05:05:39', NULL),
(5, '2023-24', 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, NULL, 1, '2024-01-02 05:05:39', '2024-01-02 05:09:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gate_pass`
--

DROP TABLE IF EXISTS `gate_pass`;
CREATE TABLE IF NOT EXISTS `gate_pass` (
  `gate_pass_id` int(11) NOT NULL,
  `gate_pass_counter` int(11) DEFAULT NULL,
  `lorry_no` varchar(100) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `ex_mv` varchar(100) DEFAULT NULL,
  `voy` varchar(100) DEFAULT NULL,
  `lorry_in` varchar(100) DEFAULT NULL,
  `consignee` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gate_pass`
--

INSERT INTO `gate_pass` (`gate_pass_id`, `gate_pass_counter`, `lorry_no`, `dated`, `ex_mv`, `voy`, `lorry_in`, `consignee`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, '33333211', '2021-07-21', NULL, 'CORAL GEOGRAPHER', 'kgs', 'Parasight Solutions', '2021-07-08 21:25:37', '2021-07-08 21:25:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gate_pass_items`
--

DROP TABLE IF EXISTS `gate_pass_items`;
CREATE TABLE IF NOT EXISTS `gate_pass_items` (
  `gate_pass_item_id` int(11) NOT NULL,
  `gate_pass_id` int(11) DEFAULT NULL,
  `marks` varchar(100) DEFAULT NULL,
  `no_of_pkgs` varchar(100) DEFAULT NULL,
  `description_of_goods` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gate_pass_items`
--

INSERT INTO `gate_pass_items` (`gate_pass_item_id`, `gate_pass_id`, `marks`, `no_of_pkgs`, `description_of_goods`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '5', '22', 'Coconut', '2021-07-08 21:25:37', '2021-07-08 21:25:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `glcodes`
--

DROP TABLE IF EXISTS `glcodes`;
CREATE TABLE IF NOT EXISTS `glcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_code` varchar(50) DEFAULT NULL,
  `gl_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gl_code` (`gl_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `glcodes`
--

INSERT INTO `glcodes` (`id`, `gl_code`, `gl_name`, `created_at`, `updated_at`) VALUES
(1, '123', NULL, '2023-10-09 06:56:20', '2023-10-09 06:56:20'),
(2, '456', NULL, '2023-10-10 05:22:49', '2023-10-10 05:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `gl_code`
--

DROP TABLE IF EXISTS `gl_code`;
CREATE TABLE IF NOT EXISTS `gl_code` (
  `gl_code_de` int(11) NOT NULL AUTO_INCREMENT,
  `gl_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gl_code_de`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gl_master`
--

DROP TABLE IF EXISTS `gl_master`;
CREATE TABLE IF NOT EXISTS `gl_master` (
  `gl_id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_particulars` varchar(110) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gl_master`
--

INSERT INTO `gl_master` (`gl_id`, `gl_particulars`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Direct Expenses\r\n', '2023-06-06 12:28:34', '2023-06-06 12:28:34', NULL),
(2, 'Indirect Expenses\r\n', '2023-06-06 12:28:44', '2023-06-06 12:28:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gl_particulars`
--

DROP TABLE IF EXISTS `gl_particulars`;
CREATE TABLE IF NOT EXISTS `gl_particulars` (
  `gl_particulars_id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_particulars` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gl_particulars_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goods_expense`
--

DROP TABLE IF EXISTS `goods_expense`;
CREATE TABLE IF NOT EXISTS `goods_expense` (
  `goods_expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_expense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `goods_issue`
--

DROP TABLE IF EXISTS `goods_issue`;
CREATE TABLE IF NOT EXISTS `goods_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(110) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `batch_no` varchar(110) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `remarks` varchar(220) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_issue`
--

INSERT INTO `goods_issue` (`id`, `item_name`, `item_code`, `fy_year`, `company_id`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `manufacturing_date`, `expiry_date`, `storage_location_id`, `discount`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Testy Choco1 mg old 15 x 50gm', '00012', '2023-24', 6, NULL, '876551', '5', NULL, NULL, '737.50', '125', 1, '112.50', '0', '0', '0', '0', '18', '112.5', '625.00', '435', NULL, NULL, 7, NULL, NULL, '2024-01-02 05:16:52', '2024-01-02 05:16:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goods_receipt`
--

DROP TABLE IF EXISTS `goods_receipt`;
CREATE TABLE IF NOT EXISTS `goods_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(110) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `batch_no` varchar(110) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `remarks` varchar(220) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_receipt`
--

INSERT INTO `goods_receipt` (`id`, `item_name`, `item_code`, `fy_year`, `company_id`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `manufacturing_date`, `expiry_date`, `storage_location_id`, `discount`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Testy Choco1 mg old 15 x 50gm', '00012', '2023-24', 6, NULL, '876551', '5', NULL, NULL, '737.50', '125', 1, '112.50', '0', '0', '0', '0', '18', '112.5', '625.00', '435', NULL, NULL, 7, NULL, NULL, '2024-01-02 05:16:18', '2024-01-02 05:16:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goods_service_receipts`
--

DROP TABLE IF EXISTS `goods_service_receipts`;
CREATE TABLE IF NOT EXISTS `goods_service_receipts` (
  `goods_service_receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) DEFAULT NULL,
  `fy_year` varchar(110) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `purchase_order_counter` int(11) DEFAULT NULL,
  `vendor_ref_no` varchar(110) NOT NULL,
  `vendor_inv_no` varchar(100) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_to` varchar(255) DEFAULT NULL,
  `receipt_type` varchar(255) DEFAULT NULL,
  `po_document` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `ship_from` varchar(200) DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `is_gr_done` tinyint(4) NOT NULL DEFAULT '0',
  `is_inventory_updated` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_service_receipts`
--

INSERT INTO `goods_service_receipts` (`goods_service_receipt_id`, `purchase_order_id`, `fy_year`, `company_id`, `purchase_order_counter`, `vendor_ref_no`, `vendor_inv_no`, `bill_no`, `bill_to`, `receipt_type`, `po_document`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `place_of_supply`, `ship_from`, `contact_person`, `status`, `posting_date`, `due_date`, `document_date`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `storage_location_id`, `is_gr_done`, `is_inventory_updated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2023-24', 6, 1, '5345', '36346', 'GR-2023-24-1', NULL, NULL, NULL, '2024-01-02', 121, 'USAMA SHAIKH', NULL, '2023-24', NULL, 'test', '123', 73, 'open', '2024-01-02', '2024-01-02', '2024-01-10', 0, 'JH435BB444', '18', 'Four Thousand Four Hundred and Twenty-Five Only', 'Six Hundred and Seventy-Five Only', '3750', '337.5', '337.5', '0', '675', NULL, '4425', NULL, NULL, NULL, 1, 1, '2024-01-02 05:08:36', '2024-01-02 05:09:12', NULL),
(2, 1, '2023-24', 6, 1, '5345', '', 'GR-2023-24-2', NULL, NULL, NULL, '2024-01-02', 121, 'USAMA SHAIKH', NULL, '2023-24', NULL, 'test', '123', 73, 'open', '2024-01-02', '2024-01-02', '2024-01-10', 0, 'JH435BB444', NULL, 'Seven Thousand Three Hundred and Seventy-Five Only', 'One Thousand One Hundred and Twenty-Five Only', '6250', '562.5', '562.5', '0', '1125', NULL, '7375', NULL, NULL, NULL, 0, 0, '2024-01-02 05:09:12', '2024-01-02 05:09:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goods_service_receipts_batches`
--

DROP TABLE IF EXISTS `goods_service_receipts_batches`;
CREATE TABLE IF NOT EXISTS `goods_service_receipts_batches` (
  `goods_service_receipts_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_service_receipt_id` int(11) DEFAULT NULL,
  `goods_service_receipts_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipts_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goods_service_receipts_batches`
--

INSERT INTO `goods_service_receipts_batches` (`goods_service_receipts_batches_id`, `goods_service_receipt_id`, `goods_service_receipts_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(86, 85, 152, 2, 'dffg updated1 new check', '2023-06-13', '2023-06-13', '2023-06-12 06:53:21', '2023-11-20 07:02:53', '2023-11-20 07:02:53'),
(87, 85, 152, 2, 'hfgh updated', '2023-06-22', '2023-06-27', '2023-06-12 06:53:21', '2023-11-20 07:02:53', '2023-11-20 07:02:53'),
(88, 85, 153, 2, '34eryrtuy updated', '2023-06-13', '2023-06-13', '2023-06-12 06:53:21', '2023-11-20 07:02:53', '2023-11-20 07:02:53'),
(89, 85, 153, 2, '43esdef updated', '2023-06-28', '2023-06-28', '2023-06-12 06:53:21', '2023-11-20 07:02:53', '2023-11-20 07:02:53'),
(90, 86, 154, 2, 'dfhxdfhdfgh', NULL, NULL, '2023-11-20 07:02:45', '2023-11-22 10:55:05', '2023-11-22 10:55:05'),
(91, 86, 154, 2, 'dfghfg', NULL, NULL, '2023-11-20 07:02:45', '2023-11-22 10:55:05', '2023-11-22 10:55:05'),
(92, 86, 154, 2, 'sfghsfgh', NULL, NULL, '2023-11-20 07:02:45', '2023-11-22 10:55:05', '2023-11-22 10:55:05'),
(93, 86, 155, 2, 'new test', NULL, NULL, '2023-11-20 07:02:45', '2023-11-22 10:55:05', '2023-11-22 10:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `goods_service_receipts_items`
--

DROP TABLE IF EXISTS `goods_service_receipts_items`;
CREATE TABLE IF NOT EXISTS `goods_service_receipts_items` (
  `goods_service_receipts_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_service_receipt_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(110) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `batch_no` varchar(110) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_service_receipts_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_service_receipts_items`
--

INSERT INTO `goods_service_receipts_items` (`goods_service_receipts_item_id`, `goods_service_receipt_id`, `party_id`, `purchase_order_id`, `item_name`, `item_code`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `manufacturing_date`, `expiry_date`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 'Testy Choco1 mg old 15 x 50gm', '00012', '27-18-32-28', '876551', '30', NULL, '125.00', '4425.00', '125', 1, '675.00', '9', '337.5', '9', '337.5', '0', '0', '3750.00', '435', '2023-01-05', '2024-01-10', 7, '2024-01-02 05:08:36', '2024-01-02 05:09:12', NULL),
(2, 2, NULL, 1, 'Testy Choco1 mg old 15 x 50gm', '00012', '27-18-32-28', '876551', '20', NULL, '125.00', '4425.00', '125', 1, '675.00', '9', '337.5', '9', '337.5', '0', '0', '3750.00', '435', '2023-01-05', '2024-01-10', 7, '2024-01-02 05:09:12', '2024-01-02 05:09:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

DROP TABLE IF EXISTS `gst`;
CREATE TABLE IF NOT EXISTS `gst` (
  `gst_id` int(11) NOT NULL AUTO_INCREMENT,
  `gst_name` varchar(100) DEFAULT NULL,
  `gst_percent` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`gst_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`gst_id`, `gst_name`, `gst_percent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GST @ 18 %', 18, '2021-05-27 11:34:37', '2021-06-21 00:57:40', NULL),
(2, 'GST @ 28 %', 28, '2021-05-27 11:34:58', '2021-06-21 00:58:03', NULL),
(3, 'GST @ 5 %', 5, '2021-06-21 00:58:29', '2021-06-21 00:58:29', NULL),
(4, 'No GST', 0, '2021-06-21 00:58:50', '2021-06-21 00:58:50', NULL),
(5, 'Gst name test edtied', 2345, '2023-01-11 08:32:44', '2023-01-11 08:34:13', '2023-01-11 08:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `hr_admin`
--

DROP TABLE IF EXISTS `hr_admin`;
CREATE TABLE IF NOT EXISTS `hr_admin` (
  `hr_admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_admin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hr_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hsncodes`
--

DROP TABLE IF EXISTS `hsncodes`;
CREATE TABLE IF NOT EXISTS `hsncodes` (
  `hsncode_id` int(11) NOT NULL AUTO_INCREMENT,
  `hsncode_name` varchar(50) DEFAULT NULL,
  `hsncode_desc` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hsncode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hsncodes`
--

INSERT INTO `hsncodes` (`hsncode_id`, `hsncode_name`, `hsncode_desc`, `created_at`, `updated_at`) VALUES
(1, 'Import Duty', '876543', '2022-09-12 11:08:12', '2023-09-05 12:06:28'),
(2, 'Basic Duty', '876545', '2022-09-12 11:08:12', '2023-09-05 12:06:37'),
(3, 'Surcharge', '876546', '2022-09-12 11:08:12', '2023-09-05 12:06:49'),
(4, 'Options as per Government', '876547', '2022-09-12 11:08:12', '2023-09-05 12:06:58'),
(8, 'Test Code', '876548', '2023-09-05 12:07:59', '2023-09-05 12:07:59'),
(9, 'Akshay\'s HSN', '876549', '2023-12-14 02:51:14', '2023-12-14 02:51:14'),
(10, 'Lays', '876550', '2023-12-14 03:55:16', '2023-12-14 03:55:16'),
(11, 'Akshay\'s 2nd code', '876551', '2023-12-14 03:57:03', '2023-12-14 03:57:03'),
(12, 'ABC123', '014785', '2023-12-14 05:06:47', '2023-12-14 05:06:47'),
(13, '123456', '014785', '2023-12-14 05:08:10', '2023-12-14 05:08:10'),
(14, '100101', '031', '2023-12-14 05:12:40', '2023-12-14 05:12:40'),
(15, '123456789', '0123', '2023-12-14 05:14:18', '2023-12-14 05:14:18'),
(16, '987456321', '0123', '2023-12-14 05:16:57', '2023-12-14 05:16:57'),
(17, '987456321', '01234', '2023-12-14 05:17:27', '2023-12-14 05:17:27'),
(18, '9874563222', '0123400', '2023-12-14 05:17:53', '2023-12-14 05:17:53'),
(19, '6541230789', '7890', '2023-12-14 05:25:15', '2023-12-14 05:25:15'),
(20, '789123456', '04562', '2023-12-14 09:37:18', '2023-12-14 09:37:18'),
(21, '010908789', '01', '2023-12-14 09:50:58', '2023-12-14 09:50:58'),
(22, '232323', '2003', '2023-12-15 02:01:10', '2023-12-15 02:01:10'),
(23, '09811', '098', '2023-12-18 09:05:50', '2023-12-18 09:05:50'),
(24, '0998989', '8766', '2023-12-19 09:36:56', '2023-12-19 09:36:56'),
(25, '331100', '310310', '2023-12-22 02:22:22', '2023-12-22 02:22:22'),
(26, '310310', '311311', '2023-12-22 02:28:52', '2023-12-22 02:28:52'),
(27, '3123', '312312', '2023-12-22 03:01:22', '2023-12-22 03:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `infra_stationary`
--

DROP TABLE IF EXISTS `infra_stationary`;
CREATE TABLE IF NOT EXISTS `infra_stationary` (
  `Infra_stationary_id` int(11) NOT NULL AUTO_INCREMENT,
  `Infra_stationary` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Infra_stationary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `bin_id` int(11) NOT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `sku` varchar(50) NOT NULL,
  `item_code` varchar(110) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `remarks` varchar(210) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `warehouse_id`, `bin_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `unit_price`, `remarks`, `fy_year`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 12, '435', '2023-01-05', '2024-01-10', '27-18-32-28', '00012', '30', '125', NULL, '2023-24', 6, 1, '2024-01-02 10:39:12', '2024-01-02 10:46:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_counter` int(11) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `vessel` varchar(200) DEFAULT NULL,
  `port` varchar(200) DEFAULT NULL,
  `date_of_arrival` date DEFAULT NULL,
  `date_of_departure` date DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_counter`, `bill_no`, `bill_date`, `job_id`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `vessel`, `port`, `date_of_arrival`, `date_of_departure`, `place_of_supply`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'RMS/21-22/14', '2021-07-09', NULL, 3, 'Hira Laal and son India', '<strong>Hira Laal and son India</strong><br><span>94/96, KAROLIA BUILDING\r\nROOM NO.02, 2ND FLOOR,BORA BAZAR STREET\r\nFORT, MUMBAI - 400 001</span><br><span>POS: Code & State: Andaman and Nicobar Islands</span><br><span>GSTIN:27AHHPP8593M1ZC</span><br>', '21-22', NULL, 'MT. KOVA', 'Port Blair', '2021-07-16', '2021-07-23', 'Port Blair', '27AHHPP8593M1ZC', '28', 'One Thousand and Eleven Only', 'One Hundred and Sixty-Eight Only', '843', '83.77', '83.77', '0', '167.54', NULL, '1011', NULL, 0, '2021-07-08 21:04:35', '2022-10-28 08:09:20', '2022-10-28 08:09:20'),
(2, 15, 'RMS/21-22/15', '2021-07-10', NULL, 3, 'Hira Laal and son India', '<strong>Hira Laal and son India</strong><br><span>94/96, KAROLIA BUILDING\r\nROOM NO.02, 2ND FLOOR,BORA BAZAR STREET\r\nFORT, MUMBAI - 400 001</span><br><span>POS: Code & State: Andaman and Nicobar Islands</span><br><span>GSTIN:27AHHPP8593M1ZC</span><br>', '21-22', NULL, 'MT. KOVA', 'Port Blair', '2021-07-20', '2021-07-23', 'Port Blair', '27AHHPP8593M1ZC', '18', 'One Thousand and Eleven Only', 'One Hundred and Sixty-Eight Only', '843', '83.77', '83.77', '0', '167.54', NULL, '1011', NULL, 1, '2021-07-08 21:07:44', '2022-10-28 08:09:18', '2022-10-28 08:09:18'),
(3, 16, 'RMS/21-22/16', '2021-07-09', NULL, NULL, '', NULL, '21-22', NULL, NULL, NULL, '2021-07-09', '2021-07-09', NULL, NULL, '18', 'Seven Hundred and Eight Only', 'One Hundred and Eight Only', '600', '54', '54', '0', '108', NULL, '708', NULL, 0, '2021-07-09 00:13:49', '2021-07-09 04:38:23', '2021-07-09 04:38:23'),
(4, 17, 'RMS/21-22/17', '2021-10-26', NULL, 3, 'Hira Laal and son India', '<strong>Hira Laal and son India</strong><br><span>94/96, KAROLIA BUILDING\r\nROOM NO.02, 2ND FLOOR,BORA BAZAR STREET\r\nFORT, MUMBAI - 400 001</span><br><span>POS: Code & State: Andaman and Nicobar Islands</span><br><span>GSTIN:27AHHPP8593M1ZC</span><br>', '21-22', NULL, NULL, NULL, '2021-10-26', '2021-10-26', NULL, '27AHHPP8593M1ZC', '18', 'One Thousand and Eleven Only', 'One Hundred and Sixty-Eight Only', '843', '83.77', '83.77', '0', '167.54', NULL, '1011', NULL, 1, '2021-08-04 00:59:31', '2022-10-28 08:09:16', '2022-10-28 08:09:16'),
(5, 18, 'RMS/22-23/18', '2022-10-28', NULL, 1, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'asdfasdf', 'asdfasdf', '16', 'One Lakhs Eigthy-One Thousand Nine Hundred Only', 'Thirty-Five Thousand Two Hundred and Four Only', '146696', '17601.76', '17601.76', '0', '35203.52', NULL, '181900', NULL, 0, '2022-10-28 08:18:10', '2022-10-28 08:18:10', NULL),
(6, 19, 'RMS/22-23/19', '2023-05-26', NULL, 88, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Proident nihil itaq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:21:35', '2023-05-26 07:22:05', '2023-05-26 07:22:05'),
(7, 20, 'RMS/22-23/20', '2023-05-26', NULL, 5, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Quo irure voluptates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:26:54', '2023-05-26 07:28:24', '2023-05-26 07:28:24'),
(8, 21, 'RMS/22-23/21', '2023-05-26', NULL, 5, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Sit beatae aperiam n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:27:03', '2023-05-26 07:28:25', '2023-05-26 07:28:25'),
(9, 22, 'RMS/22-23/22', '2023-05-26', NULL, 5, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Sit beatae aperiam n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:27:12', '2023-05-26 07:28:26', '2023-05-26 07:28:26'),
(10, 23, 'RMS/22-23/23', '2023-05-26', NULL, 10, NULL, '<strong></strong><br><span></span><br><span>POS: Code & State: </span><br><span>GSTIN:</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Mollit dolore corrup', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:27:36', '2023-05-26 07:34:24', '2023-05-26 07:34:24'),
(11, 24, 'RMS/22-23/24', '2023-05-26', NULL, 3, NULL, '<strong>Nell Mercer</strong><br><span>503/Heaven Park Street 12 Area75 CItypur DistThane</span><br><span>POS: Code & State: 400615 maharashtra</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Fuga Est illum mai', 'Enim quo et incidunt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:48:40', '2023-05-26 07:49:05', '2023-05-26 07:49:05'),
(12, 25, 'RMS/22-23/25', '2023-05-26', NULL, 4, NULL, '<strong>Nell Mercer</strong><br><span>503/Heaven Park Street 12 Area75 CItypur DistThane</span><br><span>POS: Code & State: 400615 maharashtra</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Ipsa velit quo plac', 'Enim quo et incidunt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:48:45', '2023-05-26 07:49:06', '2023-05-26 07:49:06'),
(13, 26, 'RMS/22-23/26', '2023-05-26', NULL, 87, NULL, '<strong>usama shaikh</strong><br><span>Murphy Henderson Whilemina Stein Enim veniam eligend Abigail Booker Dolor minim reprehen</span><br><span>POS: Code & State: 400615 Qui ut sint accusamu</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Et laboris reiciendi', '1test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:48:52', '2023-05-26 07:49:07', '2023-05-26 07:49:07'),
(14, 27, 'RMS/22-23/27', '2023-05-26', NULL, 88, NULL, '<strong>Abraham Freeman</strong><br><span>Jasper Mendez Aileen Mcdaniel Vero expedita omnis Kareem Graves Minim magni a consec</span><br><span>POS: Code & State: 7564 Reiciendis molestias</span><br>', '22-23', NULL, NULL, NULL, NULL, NULL, 'Dolore iure et offic', 'Minim officiis provi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:49:15', '2023-05-26 07:49:20', '2023-05-26 07:49:20'),
(15, 28, 'RMS/22-23/28', '2023-05-26', NULL, 90, NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, 'Dolores consequatur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:49:22', '2023-05-26 07:49:26', '2023-05-26 07:49:26'),
(16, 29, 'RMS/22-23/29', '2023-05-26', NULL, 1, NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, 'Fuga Ea et ut tempo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:49:28', '2023-05-26 07:49:33', '2023-05-26 07:49:33'),
(17, 30, 'RMS/22-23/30', '2023-05-26', NULL, 12, NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, 'Tempor laboriosam s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:49:40', '2023-05-26 07:49:50', '2023-05-26 07:49:50'),
(18, 31, 'RMS/22-23/31', '2023-05-26', NULL, 3, NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, 'Ea quia vel facere l', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 07:50:26', '2023-05-26 07:50:31', '2023-05-26 07:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

DROP TABLE IF EXISTS `invoice_items`;
CREATE TABLE IF NOT EXISTS `invoice_items` (
  `invoice_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`invoice_item_id`, `invoice_id`, `item_name`, `hsn_sac`, `qty`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Terminal Charges', '996719', '1', '158', '14', '22.12', '14', '22.12', '0', '0.00', '158.00', '2021-07-08 21:04:35', '2021-07-08 21:04:35', NULL),
(2, 1, 'DUE Agent', '996713', '1', '685', '9', '61.65', '9', '61.65', '0', '0.00', '685.00', '2021-07-08 21:04:35', '2021-07-08 21:04:35', NULL),
(3, 2, 'DUE Agent', '996713', '1', '685', '9', '61.65', '9', '61.65', '0', '0.00', '685.00', '2021-07-08 21:07:44', '2021-07-08 21:07:44', NULL),
(4, 2, 'Terminal Charges', '996719', '1', '158', '14', '22.12', '14', '22.12', '0', '0.00', '158.00', '2021-07-08 21:07:44', '2021-07-08 21:07:44', NULL),
(5, 3, 'Terminal Charges', '996719', '1', '100', '9', '9.00', '9', '9.00', '0', '0.00', '100.00', '2021-07-09 00:13:49', '2021-07-09 00:13:49', NULL),
(6, 3, 'DUE Agent', '996713', '1', '500', '9', '45.00', '9', '45.00', '0', '0.00', '500.00', '2021-07-09 00:13:49', '2021-07-09 00:13:49', NULL),
(7, 4, 'DUE Agent', '996713', '1', '685', '9', '61.65', '9', '61.65', '0', '0.00', '685.00', '2021-08-04 00:59:31', '2021-10-26 02:27:48', '2021-10-26 02:27:48'),
(8, 4, 'Terminal Charges', '996719', '1', '158', '14', '22.12', '14', '22.12', '0', '0.00', '158.00', '2021-08-04 00:59:31', '2021-10-26 02:27:48', '2021-10-26 02:27:48'),
(9, 4, 'DUE Agent', '996713', '1', '685', '9', '61.65', '9', '61.65', '0', '0.00', '685.00', '2021-10-26 02:27:48', '2021-10-26 02:27:48', NULL),
(10, 4, 'Terminal Charges', '996719', '1', '158', '14', '22.12', '14', '22.12', '0', '0.00', '158.00', '2021-10-26 02:27:48', '2021-10-26 02:27:48', NULL),
(11, 5, 'asdfasdf', 'asdfasdf', '1', '44', '8', '3.52', '8', '3.52', '0', '0.00', '44.00', '2022-10-28 08:18:10', '2022-10-28 08:18:10', NULL),
(12, 5, 'dsfgsdfgadsf', 'asdfasdf', '44', '3333', '12', '17598.24', '12', '17598.24', NULL, '0.00', '146652.00', '2022-10-28 08:18:10', '2022-10-28 08:18:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_types`
--

DROP TABLE IF EXISTS `item_types`;
CREATE TABLE IF NOT EXISTS `item_types` (
  `item_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`item_type_id`, `item_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Raw Material', '2022-09-12 08:06:20', NULL),
(2, 'Production Material', '2022-09-12 08:06:20', NULL),
(3, 'Finished Goods', '2022-09-12 08:06:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
CREATE TABLE IF NOT EXISTS `job` (
  `job_id` int(11) NOT NULL,
  `job_no` varchar(20) DEFAULT NULL,
  `job_counter` int(11) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `job_date` date DEFAULT NULL,
  `financial_year` varchar(20) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `agent_name` varchar(200) DEFAULT NULL,
  `consignee_id` int(11) DEFAULT NULL,
  `consignee_name` varchar(200) DEFAULT NULL,
  `bill_to` varchar(20) DEFAULT NULL,
  `bill_to_name` varchar(200) DEFAULT NULL,
  `destination` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `special_instructions` varchar(600) DEFAULT NULL,
  `shipment_handled_by` varchar(500) DEFAULT NULL,
  `job_close_on` date DEFAULT NULL,
  `p_c` varchar(100) DEFAULT NULL,
  `pkgs` varchar(200) DEFAULT NULL,
  `gr_wt` varchar(100) DEFAULT NULL,
  `ch_wt` varchar(100) DEFAULT NULL,
  `cbm` varchar(100) DEFAULT NULL,
  `profit_on` varchar(100) DEFAULT NULL,
  `bl_no` varchar(100) DEFAULT NULL,
  `bl_date` date DEFAULT NULL,
  `lcl_fcl` varchar(100) DEFAULT NULL,
  `lcl_fcl_content` varchar(600) DEFAULT NULL,
  `s_line` varchar(100) DEFAULT NULL,
  `vessel` varchar(200) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `doc_received_date` date DEFAULT NULL,
  `doc_processed_date` date DEFAULT NULL,
  `cargo_received_date` date DEFAULT NULL,
  `handover_date` date DEFAULT NULL,
  `examination_date` date DEFAULT NULL,
  `eta_date` date DEFAULT NULL,
  `etd_date` date DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `doc_to_party_date` date DEFAULT NULL,
  `hand_courier` varchar(100) DEFAULT NULL,
  `own_bill_no` varchar(100) DEFAULT NULL,
  `leo_date` date DEFAULT NULL,
  `cha` varchar(100) DEFAULT NULL,
  `port_loading` varchar(100) DEFAULT NULL,
  `port_discharge` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `job_no`, `job_counter`, `job_type`, `job_date`, `financial_year`, `party_id`, `party_name`, `agent_id`, `agent_name`, `consignee_id`, `consignee_name`, `bill_to`, `bill_to_name`, `destination`, `description`, `special_instructions`, `shipment_handled_by`, `job_close_on`, `p_c`, `pkgs`, `gr_wt`, `ch_wt`, `cbm`, `profit_on`, `bl_no`, `bl_date`, `lcl_fcl`, `lcl_fcl_content`, `s_line`, `vessel`, `release_date`, `doc_received_date`, `doc_processed_date`, `cargo_received_date`, `handover_date`, `examination_date`, `eta_date`, `etd_date`, `remarks`, `doc_to_party_date`, `hand_courier`, `own_bill_no`, `leo_date`, `cha`, `port_loading`, `port_discharge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AE', 4, 'M', '2021-05-28', '21-22', 3, 'Hira Laal and son India', 6, 'Blue Bell Logistics Private Limited', 7, 'KWANTAM B.V', '6', 'Blue Bell Logistics Private Limited', 'JAKARTA', 'SPARES FOR PACKAGING MACHINERY', 'No', 'Nothing', '2021-05-28', 'P', '1', '54', '3', '43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-28 08:02:24', '2021-10-26 02:24:15', '2021-10-26 02:24:15'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-29 10:17:46', '2021-10-21 01:16:39', '2021-10-21 01:16:39'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-29 10:19:21', '2021-10-21 01:16:37', '2021-10-21 01:16:37'),
(4, 'AE', 1, 'm', '2021-10-22', '21-22', 3, 'Hira Laal and son India', 6, 'Blue Bell Logistics Private Limited', 7, 'KWANTAM B.V', '6', 'Blue Bell Logistics Private Limited', 'test', 'lasdfkj', 'lasdfkj', 'asdf', NULL, 'P', 'sldkf', 'lsadkf', 'lkdjasf', 'lkdjasf', NULL, NULL, '2021-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-21 01:14:28', '2021-10-21 01:14:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
CREATE TABLE IF NOT EXISTS `job_types` (
  `job_type_id` int(11) NOT NULL,
  `job_type_name` varchar(100) DEFAULT NULL,
  `job_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`job_type_id`, `job_type_name`, `job_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Sea Export', 'SE', '2021-05-24 16:54:22', '2021-05-26 07:25:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_managements`
--

DROP TABLE IF EXISTS `login_managements`;
CREATE TABLE IF NOT EXISTS `login_managements` (
  `login_management_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_management_login` int(11) NOT NULL,
  `login_management_facebook` int(11) NOT NULL,
  `login_management_google` int(11) NOT NULL,
  `login_management_signup` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_management_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_managements`
--

INSERT INTO `login_managements` (`login_management_id`, `login_management_login`, `login_management_facebook`, `login_management_google`, `login_management_signup`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-06-21 03:45:08', '2022-06-30 06:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `manifest`
--

DROP TABLE IF EXISTS `manifest`;
CREATE TABLE IF NOT EXISTS `manifest` (
  `manifest_id` int(11) NOT NULL,
  `manifest_counter` int(11) DEFAULT NULL,
  `import_rotation_no` varchar(100) DEFAULT NULL,
  `mv` varchar(100) DEFAULT NULL,
  `voy` varchar(100) DEFAULT NULL,
  `under_captain` varchar(100) DEFAULT NULL,
  `sailed_from` varchar(100) DEFAULT NULL,
  `sailed_to` varchar(200) DEFAULT NULL,
  `eta_on` varchar(100) DEFAULT NULL,
  `billoflading_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\backend\\AdminUsers', 1),
(1, 'App\\Models\\backend\\JobTypes', 1),
(33, 'App\\Models\\backend\\AdminUsers', 69),
(34, 'App\\Models\\backend\\AdminUsers', 70),
(35, 'App\\Models\\backend\\AdminUsers', 71),
(36, 'App\\Models\\backend\\AdminUsers', 72),
(37, 'App\\Models\\backend\\AdminUsers', 73);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`) VALUES
(1, 'Purchase Order'),
(2, 'Goods Service Receipts'),
(3, 'A/P Invoice'),
(4, 'Bill Booking'),
(5, 'Banking Payment'),
(6, 'GOODS RECEIPT'),
(7, 'GOODS ISSUE'),
(8, 'A/R INVOICE');

-- --------------------------------------------------------

--
-- Table structure for table `order_booking`
--

DROP TABLE IF EXISTS `order_booking`;
CREATE TABLE IF NOT EXISTS `order_booking` (
  `order_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_counter` int(11) DEFAULT NULL,
  `receipt_type` varchar(110) DEFAULT NULL,
  `customer_ref_no` varchar(110) NOT NULL,
  `bill_to` varchar(110) DEFAULT NULL,
  `ship_from` varchar(110) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_booking`
--

INSERT INTO `order_booking` (`order_booking_id`, `order_booking_counter`, `receipt_type`, `customer_ref_no`, `bill_to`, `ship_from`, `bill_no`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `place_of_supply`, `status`, `posting_date`, `delivery_date`, `document_date`, `contact_person`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(99, 3, NULL, 'JHFKFDJH678', NULL, NULL, '3PSAP/22-23/3', '2023-06-07', 124, NULL, NULL, '22-23', NULL, 'Cum ad reprehenderit', 'open', '2023-06-07', '1970-03-27', '1998-02-04', 77, 5, 'SDGDF546554', '18', 'Two Lakhs Fifty Thousand Seven Hundred and Eigthy-Five Only', 'Thirty-Nine Thousand Nine Hundred and Fourty-Eight Only', '221934', '0', '0', '39948.12', '39948.12', NULL, '0', 'Alias placeat vero', NULL, '2023-06-07 09:32:07', '2023-06-07 10:02:38', '2023-06-07 10:02:38'),
(100, 4, NULL, '427', NULL, NULL, '3PSAP/22-23/4', '2023-06-07', 124, NULL, NULL, '22-23', NULL, 'Voluptatum non saepe', 'open', '2023-06-07', '1982-04-18', '1970-07-22', 77, 4, 'SDGDF546554', '18', 'Eigthy-Four Thousand Eight Hundred and Eigthy Only', 'Thirteen Thousand Four Hundred and Two Only', '75867', '0', '0', '13402.125', '13402.125', NULL, '0', 'Facere ipsam quis al', NULL, '2023-06-07 10:02:54', '2023-06-07 12:13:13', '2023-06-07 12:13:13'),
(101, 5, NULL, '346', NULL, NULL, '3PSAP/22-23/5', '2023-06-07', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, 'Et aliqua Doloribus', 'open', '2023-06-07', '1992-10-04', '1978-02-10', 77, 1, 'SDGDF546554', '18', 'Two Lakhs Fifty-Five Thousand Three Hundred and Seventy-One Only', 'Thirty-Nine Thousand Two Hundred and Eigthy-Eight Only', '224956', '0', '0', '39287.772', '39287.772', NULL, '0', 'Nostrud maxime fugia', NULL, '2023-06-07 12:13:37', '2023-06-12 12:04:08', '2023-06-12 12:04:08'),
(102, 6, NULL, '448', NULL, NULL, '3PSAP/22-23/6', '2023-06-12', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, 'Ut vitae quia dolor', 'open', '2023-06-12', '2003-01-10', '1975-03-22', 77, 2, 'SDGDF546554', '18', 'Two Thousand Seven Hundred and Twenty-Six Only', 'Four Hundred and Twenty-Three Only', '29380', '211.536', '211.536', '0', '423.072', NULL, '0', 'Excepturi delectus', NULL, '2023-06-12 12:03:12', '2023-06-12 12:04:07', '2023-06-12 12:04:07'),
(103, 7, NULL, '7', NULL, NULL, '3PSAP/22-23/7', '2023-06-12', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, 'Vel distinctio Eius', 'open', '2023-06-12', '2004-12-23', '1979-01-03', 77, 16, 'SDGDF546554', '18', 'Three Lakhs Fourty-Seven Thousand Two Hundred and Thirty-Five Only', 'Sixty-One Thousand Two Hundred and Seventy-Seven Only', '447930', '30638.412', '30638.412', '0', '61276.824', NULL, '0', 'Vel tempore invento', NULL, '2023-06-12 12:04:20', '2023-06-12 12:06:52', '2023-06-12 12:06:52'),
(104, 8, NULL, '5', NULL, NULL, '3PSAP/22-23/8', '2023-06-12', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, 'Non saepe aut laboru', 'open', '2023-06-12', '2000-11-25', '1973-12-11', 77, 82, 'SDGDF546554', '18', 'Seven Thousand Nine Hundred and Sixty-Seven Only', 'Three Thousand Nine Hundred and Eigthy-Three Only', '28012', '1991.6532', '1991.6532', '0', '3983.3064', NULL, '0', 'Adipisicing nulla se', NULL, '2023-06-12 12:07:08', '2023-06-12 12:07:24', '2023-06-12 12:07:24'),
(105, 9, NULL, '169', NULL, NULL, '3PSAP/22-23/9', '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'Incidunt sequi faci', 'open', '2023-06-12', '2000-08-05', '2008-06-11', 76, 5, 'Amet consequuntur q', '18', 'Eleven Thousand Five Hundred and Twenty-Nine Only', 'One Thousand Eight Hundred and Thirty-Six Only', '255060', '0', '0', '1836.432', '1836.432', NULL, '0', 'Veritatis voluptatem', NULL, '2023-06-12 12:07:45', '2023-06-12 12:13:18', '2023-06-12 12:13:18'),
(106, 10, NULL, '886', '126', '183', '3PSAP/22-23/10', '2023-12-05', 124, NULL, NULL, '22-23', NULL, 'zxdfhfg', 'open', '2023-12-05', '1983-10-10', '1977-11-29', 77, 10, 'SDGDF546554', '18', 'Four Thousand Two Hundred and Sixty-One Only', 'Seven Hundred and Ten Only', '80758', '355.0968', '355.0968', '0', '710.1936', NULL, '0', 'Est id vero hic cu', NULL, '2023-06-12 12:13:36', '2023-12-05 05:11:56', NULL),
(107, 1, NULL, '3300', '192', '193', '3PSAP/2023/1', '2023-12-15', 152, 'Aks Customer', NULL, '2023', NULL, 'thane', 'open', '2023-12-15', '2023-12-17', '2023-12-18', 105, NULL, 'akss45236tst', '18', 'Thirteen Thousand Two Hundred and Seventy-Five Only', 'Two Thousand and Twenty-Five Only', '11250', '1012.5', '1012.5', '0', '2025', NULL, '13275', NULL, NULL, '2023-12-15 02:25:18', '2023-12-15 02:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_booking_batches`
--

DROP TABLE IF EXISTS `order_booking_batches`;
CREATE TABLE IF NOT EXISTS `order_booking_batches` (
  `order_booking_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `order_booking_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_booking_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_booking_batches`
--

INSERT INTO `order_booking_batches` (`order_booking_batches_id`, `order_booking_id`, `order_booking_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 103, 11, NULL, 'dfh', NULL, NULL, '2023-06-12 12:04:20', '2023-06-12 12:04:20', NULL),
(2, 103, 11, NULL, 'hfghfg', NULL, NULL, '2023-06-12 12:04:20', '2023-06-12 12:04:20', NULL),
(3, 103, 11, NULL, 'dfgh', NULL, NULL, '2023-06-12 12:04:20', '2023-06-12 12:04:20', NULL),
(4, 104, 12, 2, 'dfhfgjhfgj', NULL, NULL, '2023-06-12 12:07:08', '2023-06-12 12:07:08', NULL),
(5, 104, 12, 2, 'fghj', NULL, NULL, '2023-06-12 12:07:08', '2023-06-12 12:07:08', NULL),
(6, 104, 12, 2, 'ghjghjgh', NULL, NULL, '2023-06-12 12:07:08', '2023-06-12 12:07:08', NULL),
(7, 105, 13, 2, 'fghfg', NULL, NULL, '2023-06-12 12:07:45', '2023-06-12 12:07:45', NULL),
(8, 105, 13, 2, 'fgh', NULL, NULL, '2023-06-12 12:07:45', '2023-06-12 12:07:45', NULL),
(9, 105, 13, 13, 'fghfg updated', NULL, NULL, '2023-06-12 12:09:06', '2023-06-12 12:09:06', NULL),
(10, 105, 13, 13, 'fgh', NULL, NULL, '2023-06-12 12:09:06', '2023-06-12 12:09:06', NULL),
(11, 105, 13, 13, 'sdvgdmjkfghjsfg', NULL, NULL, '2023-06-12 12:09:06', '2023-06-12 12:09:06', NULL),
(12, 106, 14, NULL, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-06-12 12:13:36', '2023-12-05 05:06:44', NULL),
(13, 106, 14, NULL, 'dfhfdghfgh', NULL, NULL, '2023-06-12 12:40:19', '2023-12-05 05:06:44', NULL),
(14, 106, 14, NULL, 'zsdgjh updated1', NULL, NULL, '2023-06-12 13:15:07', '2023-12-05 05:06:44', NULL),
(15, 106, 14, NULL, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-06-12 13:15:07', '2023-12-05 05:06:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_booking_items`
--

DROP TABLE IF EXISTS `order_booking_items`;
CREATE TABLE IF NOT EXISTS `order_booking_items` (
  `order_booking_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_booking_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_booking_items`
--

INSERT INTO `order_booking_items` (`order_booking_item_id`, `order_booking_id`, `item_name`, `item_code`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `storage_location_id`, `total`, `gst_rate`, `gst_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '537', '96', '5.96', '3776.61', '149', '9', '288.04680000000036', '9', '288.04680000000036', '0', '0', NULL, '3200.52', 1, '576.09', '2023-06-12 12:13:36', '2023-12-05 05:06:44', NULL),
(15, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '5', NULL, '149.00', '879.10', '149', '9', '67.05', '9', '67.05', '0', '0', NULL, '745.00', 1, '134.10', '2023-12-05 05:11:56', '2023-12-05 05:11:56', NULL),
(16, 107, 'Haldiram 1 x 25gm', '2001', '010908789', '25', NULL, '250.00', '7375.00', '250', '9', '562.5', '9', '562.5', '0', '0', 6, '6250.00', 1, '1125.00', '2023-12-15 02:25:18', '2023-12-15 02:25:18', NULL),
(17, 107, 'Born Vita 1 x 200gm', '2002', '232323', '20', NULL, '250.00', '5900.00', '250', '9', '450', '9', '450', '0', '0', 6, '5000.00', 1, '900.00', '2023-12-15 02:25:18', '2023-12-15 02:25:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfilment`
--

DROP TABLE IF EXISTS `order_fulfilment`;
CREATE TABLE IF NOT EXISTS `order_fulfilment` (
  `order_fulfillment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `order_booking_counter` int(11) DEFAULT NULL,
  `customer_ref_no` varchar(110) NOT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_to` varchar(255) DEFAULT NULL,
  `receipt_type` varchar(255) DEFAULT NULL,
  `po_document` varchar(255) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `ship_from` varchar(200) DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_fulfilment`
--

INSERT INTO `order_fulfilment` (`order_fulfillment_id`, `order_booking_id`, `order_booking_counter`, `customer_ref_no`, `bill_no`, `bill_to`, `receipt_type`, `po_document`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `place_of_supply`, `ship_from`, `contact_person`, `status`, `posting_date`, `due_date`, `document_date`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 100, 4, '1427', '3PSAP/22-23/4', NULL, NULL, NULL, '2023-06-07', 124, NULL, NULL, '22-23', NULL, 'Voluptatum non saepe', NULL, 77, 'open', '2023-06-07', '1982-04-18', '1970-07-22', 4, 'SDGDF546554', '18', 'Eigthy-Five Thousand Five Hundred and Fifty-Three Only', 'Thirteen Thousand Five Hundred and Eight Only', '76351', '0', '0', '13508.4312', '13508.4312', NULL, '0', 'Facere ipsam quis al', NULL, NULL, '2023-06-07 10:42:26', '2023-06-07 10:59:12', '2023-06-07 10:59:12'),
(8, 100, 4, '427', '3PSAP/22-23/4', NULL, NULL, NULL, '2023-06-07', 124, NULL, NULL, '22-23', NULL, 'Voluptatum non saepe', NULL, 77, 'open', '2023-06-07', '1982-04-18', '1970-07-22', 4, 'SDGDF546554', '18', 'Eigthy-Five Thousand Seven Hundred and Eight Only', 'Thirteen Thousand Five Hundred and Thirty-Three Only', '76593', '0', '0', '13532.805', '13532.805', NULL, '0', 'Facere ipsam quis al', NULL, NULL, '2023-06-07 10:59:24', '2023-06-07 11:03:18', '2023-06-07 11:03:18'),
(9, 100, 4, '427', '3PSAP/22-23/4', NULL, NULL, NULL, '2023-06-07', 124, NULL, NULL, '22-23', NULL, 'Voluptatum non saepe', NULL, 77, 'open', '2023-06-07', '1982-04-18', '1970-07-22', 4, 'SDGDF546554', '18', 'Seventy-Two Thousand Eight Hundred and Fifty Only', 'Eleven Thousand Five Hundred and Three Only', '65208', '0', '0', '11502.6912', '11502.6912', NULL, '0', 'Facere ipsam quis al', NULL, NULL, '2023-06-07 11:03:24', '2023-06-07 12:13:16', '2023-06-07 12:13:16'),
(10, 101, 5, '346', '3PSAP/22-23/5', NULL, NULL, NULL, '2023-06-07', 124, 'IRFAN PATHAN', NULL, '22-23', NULL, 'Et aliqua Doloribus', NULL, 77, 'open', '2023-06-07', '1992-10-04', '1978-02-10', 3, 'SDGDF546554', '18', 'Fourty Thousand Nine Hundred and Fifty-Eight Only', 'Thirty-Nine Thousand Five Hundred and Fourty-Nine Only', '226408', '0', '0', '39549.132', '39549.132', NULL, '0', 'Nostrud maxime fugia', NULL, NULL, '2023-06-07 12:13:52', '2023-06-12 12:34:21', '2023-06-12 12:34:21'),
(11, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:34:27', '2023-06-12 12:34:52', '2023-06-12 12:34:52'),
(12, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:34:56', '2023-06-12 12:36:15', '2023-06-12 12:36:15'),
(13, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:36:27', '2023-06-12 12:36:49', '2023-06-12 12:36:49'),
(14, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:36:51', '2023-06-12 12:38:18', '2023-06-12 12:38:18'),
(15, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', NULL, 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:38:20', '2023-06-12 12:39:56', '2023-06-12 12:39:56'),
(16, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:39:59', '2023-06-12 12:40:09', '2023-06-12 12:40:09'),
(17, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-06-12 12:40:23', '2023-09-06 05:20:17', '2023-09-06 05:20:17'),
(18, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-10-11', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-10-11', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-09-06 05:20:24', '2023-10-11 07:38:44', '2023-10-11 07:38:44'),
(19, 106, 10, '886', '3PSAP/22-23/10', NULL, NULL, NULL, '2023-06-12', 123, NULL, NULL, '22-23', NULL, 'zxdfhfg', NULL, 76, 'open', '2023-06-12', '1983-10-10', '1977-11-29', 10, 'Amet consequuntur q', '18', 'Five Thousand Six Hundred and Eigthy-Four Only', 'Nine Hundred and Fourty-Seven Only', '131565', '473.634', '473.634', '0', '947.268', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-10-11 07:38:47', '2023-11-20 11:06:15', '2023-11-20 11:06:15'),
(20, 106, 10, '886', '3PSAP/22-23/10', '126', NULL, NULL, '2023-12-05', 124, NULL, NULL, '22-23', NULL, 'zxdfhfg', '183', 77, 'open', '2023-12-05', '1983-10-10', '1977-11-29', 10, 'SDGDF546554', '18', 'Four Thousand Two Hundred and Sixty-One Only', 'Seven Hundred and Ten Only', '80758', '355.0968', '355.0968', '0', '710.1936', NULL, '0', 'Est id vero hic cu', NULL, NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL),
(21, 107, 1, '3300', '3PSAP/2023/1', '192', NULL, NULL, '2023-12-15', 152, 'Aks Customer', NULL, '2023', NULL, 'thane', '193', 105, 'open', '2023-12-15', '2023-12-17', '2023-12-18', NULL, 'akss45236tst', '18', 'Thirteen Thousand Two Hundred and Seventy-Five Only', 'Two Thousand and Twenty-Five Only', '11250', '1012.5', '1012.5', '0', '2025', NULL, '13275', NULL, NULL, NULL, '2023-12-15 02:27:23', '2023-12-15 02:27:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfilment_batches`
--

DROP TABLE IF EXISTS `order_fulfilment_batches`;
CREATE TABLE IF NOT EXISTS `order_fulfilment_batches` (
  `order_fulfilment_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_fulfillment_id` int(11) DEFAULT NULL,
  `order_fulfillment_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfilment_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_fulfilment_batches`
--

INSERT INTO `order_fulfilment_batches` (`order_fulfilment_batches_id`, `order_fulfillment_id`, `order_fulfillment_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 16, 143, 2, 'zsdgjh updated1', NULL, NULL, '2023-06-12 12:39:59', '2023-06-12 12:39:59', NULL),
(2, 17, 144, 3, 'dshdfzsdgjh updated1 sdfjhkase', NULL, NULL, '2023-06-12 12:40:23', '2023-06-12 13:18:25', NULL),
(3, 17, 144, 3, 'dfhfdghfgh up to date', NULL, NULL, '2023-06-12 12:40:23', '2023-06-12 13:18:25', NULL),
(4, 17, 144, 3, 'sdsghdfth', NULL, NULL, '2023-06-12 13:18:25', '2023-06-12 13:18:25', NULL),
(5, 18, 145, 3, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-09-06 05:20:24', '2023-09-06 05:20:24', NULL),
(6, 18, 145, 3, 'dfhfdghfgh', NULL, NULL, '2023-09-06 05:20:24', '2023-09-06 05:20:24', NULL),
(7, 18, 145, 3, 'zsdgjh updated1', NULL, NULL, '2023-09-06 05:20:24', '2023-09-06 05:20:24', NULL),
(8, 18, 145, 3, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-09-06 05:20:24', '2023-09-06 05:20:24', NULL),
(9, 19, 146, 3, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-10-11 07:38:47', '2023-10-11 07:38:47', NULL),
(10, 19, 146, 3, 'dfhfdghfgh', NULL, NULL, '2023-10-11 07:38:47', '2023-10-11 07:38:47', NULL),
(11, 19, 146, 3, 'zsdgjh updated1', NULL, NULL, '2023-10-11 07:38:47', '2023-10-11 07:38:47', NULL),
(12, 19, 146, 3, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-10-11 07:38:47', '2023-10-11 07:38:47', NULL),
(13, 20, 147, NULL, 'zsdgjh updated1 hdfgjfts', NULL, NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL),
(14, 20, 147, NULL, 'dfhfdghfgh', NULL, NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL),
(15, 20, 147, NULL, 'zsdgjh updated1', NULL, NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL),
(16, 20, 147, NULL, 'dfhfdghfgh drshdftj', NULL, NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfilment_items`
--

DROP TABLE IF EXISTS `order_fulfilment_items`;
CREATE TABLE IF NOT EXISTS `order_fulfilment_items` (
  `order_fulfillment_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_fulfillment_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `order_booking_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_fulfilment_items`
--

INSERT INTO `order_fulfilment_items` (`order_fulfillment_item_id`, `order_fulfillment_id`, `party_id`, `order_booking_id`, `item_name`, `item_code`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(129, 7, NULL, 100, 'Lesley Lara', NULL, 'Doloremque ea eu dol', '143', '2', '446.88', NULL, '456', 1, '11502.69', '0', '0', '0', '0', '18', '11502.6912', '63903.84', NULL, '2023-06-07 10:42:26', '2023-06-07 10:42:26', NULL),
(130, 7, NULL, 100, 'ITEM2', NULL, 'SDG435', '33', NULL, '323.00', NULL, '323', 1, '1918.62', NULL, '0', NULL, '0', '18', '1918.62', '10659.00', NULL, '2023-06-07 10:42:26', '2023-06-07 10:42:26', NULL),
(131, 7, 124, 100, 'ITEM3', NULL, 'SDF44', '22', NULL, '22.00', NULL, '22', 1, '87.12', NULL, '0', NULL, '0', '18', '87.12', '484.00', NULL, '2023-06-07 10:54:02', '2023-06-07 10:54:02', NULL),
(132, 8, NULL, 100, 'Lesley Lara', NULL, 'Doloremque ea eu dol', '143', '2', '446.88', NULL, '456', 1, '11502.69', '0', '0', '0', '0', '18', '11502.6912', '63903.84', NULL, '2023-06-07 10:59:24', '2023-06-07 10:59:24', NULL),
(133, 8, NULL, 100, 'ITEM2', NULL, 'SDG435', '33', '1', '319.77', NULL, '323', 1, '1899.43', NULL, '0', NULL, '0', '18', '1899.4338', '10552.41', NULL, '2023-06-07 10:59:24', '2023-06-07 10:59:24', NULL),
(134, 8, 124, 100, 'ITEM3', NULL, 'ASGJHD', '33', NULL, '22.00', NULL, '22', 1, '130.68', NULL, '0', NULL, '0', '18', '130.68', '726.00', NULL, '2023-06-07 11:02:51', '2023-06-07 11:02:51', NULL),
(135, 9, NULL, 100, 'Lesley Lara', NULL, 'Doloremque ea eu dol', '143', '2', '446.88', NULL, '456', 1, '11502.69', '0', '0', '0', '0', '18', '11502.6912', '63903.84', NULL, '2023-06-07 11:03:24', '2023-06-07 11:03:24', NULL),
(137, 10, NULL, 101, 'Orlando Cherry', NULL, 'Non laboriosam impe', '252', '3', '858.45', '255268.69', '885', 1, '38939.29', '0', '0', '0', '0', '18', '38939.292', '216329.40', NULL, '2023-06-07 12:13:52', '2023-06-07 12:13:52', NULL),
(138, 10, NULL, 101, 'sfg', NULL, 'sdgsdf', '44', NULL, '44.00', '2284.48', '44', 1, '348.48', NULL, '0', NULL, '0', '18', '348.48', '1936.00', NULL, '2023-06-07 12:13:52', '2023-06-07 12:13:52', NULL),
(139, 10, 124, 101, 'dfgh', NULL, 'fdh', '44', NULL, '33.00', '1713.36', '33', 1, '261.36', NULL, '0', NULL, '0', '18', '261.36', '1452.00', NULL, '2023-06-07 12:14:25', '2023-06-07 12:14:25', NULL),
(140, 11, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:34:27', '2023-06-12 12:34:27', NULL),
(141, 12, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:34:56', '2023-06-12 12:34:56', NULL),
(142, 13, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:36:27', '2023-06-12 12:36:27', NULL),
(143, 16, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 2, '2023-06-12 12:39:59', '2023-06-12 12:39:59', NULL),
(144, 17, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 3, '2023-06-12 12:40:23', '2023-06-12 13:18:25', NULL),
(146, 19, NULL, 106, 'Ebony Ramos', NULL, 'Dignissimos in tempo', '537', '96', '9.80', '6209.87', '245', 1, '947.27', '9', '473.6340000000005', '9', '473.6340000000005', '0', '0', '5262.60', 3, '2023-10-11 07:38:47', '2023-10-11 07:38:47', NULL),
(147, 20, NULL, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '537', '96', '5.96', '3776.61', '149', 1, '576.09', '9', '288.04680000000036', '9', '288.04680000000036', '0', '0', '3200.52', NULL, '2023-11-20 11:09:39', '2023-12-05 05:18:57', NULL),
(148, 20, 124, 106, 'Kellogs Chocos MG new 12 x 200g', '67983439', '876546', '5', NULL, '149.00', '879.10', '149', 1, '134.10', '9', '67.05', '9', '67.05', '0', '0', '745.00', NULL, '2023-12-05 05:18:57', '2023-12-05 05:18:57', NULL),
(149, 21, NULL, 107, 'Haldiram 1 x 25gm', '2001', '010908789', '25', NULL, '250.00', '7375.00', '250', 1, '1125.00', '9', '562.5', '9', '562.5', '0', '0', '6250.00', 6, '2023-12-15 02:27:23', '2023-12-15 02:27:23', NULL),
(150, 21, NULL, 107, 'Born Vita 1 x 200gm', '2002', '232323', '20', NULL, '250.00', '5900.00', '250', 1, '900.00', '9', '450', '9', '450', '0', '0', '5000.00', 6, '2023-12-15 02:27:23', '2023-12-15 02:27:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

DROP TABLE IF EXISTS `outlet`;
CREATE TABLE IF NOT EXISTS `outlet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outlet_name` varchar(110) DEFAULT NULL,
  `building_no_name` varchar(210) DEFAULT NULL,
  `street_name` varchar(110) DEFAULT NULL,
  `landmark` varchar(110) DEFAULT NULL,
  `country` varchar(110) DEFAULT NULL,
  `state` varchar(110) DEFAULT NULL,
  `district` varchar(110) DEFAULT NULL,
  `city` varchar(110) DEFAULT NULL,
  `pin_code` varchar(110) DEFAULT NULL,
  `phone` varchar(110) DEFAULT NULL,
  `salesman` varchar(110) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `beat_id` int(11) DEFAULT NULL,
  `beat_day` varchar(110) DEFAULT NULL,
  `sales_execu` varchar(100) DEFAULT NULL,
  `ase` varchar(100) DEFAULT NULL,
  `asm` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`id`, `outlet_name`, `building_no_name`, `street_name`, `landmark`, `country`, `state`, `district`, `city`, `pin_code`, `phone`, `salesman`, `area_id`, `route_id`, `beat_id`, `beat_day`, `sales_execu`, `ase`, `asm`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Xena Acosta', 'Shellie Waters', 'Armand Mills', 'Corporis deserunt ex', '4', 'NEWJERSEY', 'EDISON', 'Colton Gallagher', '56', '86', '42', 48, 70, 45, '4', '11', '41', '40', '2023-12-14 18:12:49', '2023-12-14 18:28:37', '2023-12-14 18:28:37'),
(3, 'Ivory Rosario', 'Robert Parrish', 'Drew Fry', 'Quo est aut exercita', '4', 'ILLINOIS', 'CHICAGO', 'Aimee Anderson', '16', '91', '73', 48, 70, 45, '2', '72', '71', '70', '2024-01-02 18:22:30', '2024-01-02 18:22:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `particulars`
--

DROP TABLE IF EXISTS `particulars`;
CREATE TABLE IF NOT EXISTS `particulars` (
  `particulars_id` int(11) NOT NULL,
  `gl_particulars_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

DROP TABLE IF EXISTS `payment_terms`;
CREATE TABLE IF NOT EXISTS `payment_terms` (
  `payment_terms_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_type` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_terms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`payment_terms_id`, `term_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LC', '2022-08-01 10:14:12', NULL, NULL),
(2, 'Advance/ Pre-Payment', '2022-08-01 10:35:58', NULL, NULL),
(3, 'PDC', '2022-08-10 10:15:14', NULL, NULL),
(4, 'On Credit', '2022-09-01 10:16:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `base_permission_id` int(11) DEFAULT NULL,
  `base_permission_name` varchar(255) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `submenu_id` int(11) DEFAULT NULL,
  `is_sub` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `base_permission_id`, `base_permission_name`, `menu_id`, `submenu_id`, `is_sub`, `created_at`, `updated_at`) VALUES
(5, 'Update Backend Menu', 'admin', 8, 'Update', 2, NULL, 0, '2021-01-04 05:16:32', '2021-01-13 00:40:17'),
(7, 'View Admin Users', 'admin', 7, 'View', 22, 32, 0, '2021-01-04 05:17:00', '2021-11-02 08:00:50'),
(8, 'Update Admin Users', 'admin', 8, 'Update', 22, 32, 0, '2021-01-04 05:17:00', '2021-11-02 08:00:50'),
(11, 'View Backend Menu', 'admin', 7, 'View', 2, NULL, 0, '2021-01-04 17:27:42', '2021-01-13 00:40:17'),
(12, 'View Categories', 'admin', 7, 'View', 11, 42, 0, '2021-01-04 17:27:51', '2022-09-12 06:45:16'),
(13, 'Update Categories', 'admin', 8, 'Update', 11, 42, 0, '2021-01-04 17:27:51', '2022-09-12 06:45:16'),
(16, 'View Sub Categories', 'admin', 7, 'View', 11, 43, 0, '2021-01-04 17:29:04', '2022-09-12 06:45:48'),
(17, 'Update Sub Categories', 'admin', 8, 'Update', 11, 43, 0, '2021-01-04 17:29:04', '2022-09-12 06:45:48'),
(22, 'Create test my menu', 'admin', 6, 'Create', NULL, NULL, 0, '2021-01-05 18:24:59', '2021-01-05 18:39:19'),
(23, 'View test my menu', 'admin', 7, 'View', NULL, NULL, 0, '2021-01-05 18:24:59', '2021-01-05 18:39:19'),
(24, 'Update test my menu', 'admin', 8, 'Update', NULL, NULL, 0, '2021-01-05 18:24:59', '2021-01-05 18:39:19'),
(25, 'Delete test my menu', 'admin', 9, 'Delete', NULL, NULL, 0, '2021-01-05 18:24:59', '2021-01-05 18:39:19'),
(31, 'Create ', 'admin', 6, 'Create', 11, 21, 0, '2021-01-05 20:20:39', '2021-05-26 05:52:53'),
(32, 'View ', 'admin', 7, 'View', 11, 21, 0, '2021-01-05 20:20:39', '2021-05-26 05:52:53'),
(36, 'Create Sellers', 'admin', 6, 'Create', 11, 6, 0, '2021-01-05 20:28:28', '2021-01-21 19:45:05'),
(37, 'View Sellers', 'admin', 7, 'View', 11, 6, 0, '2021-01-05 20:28:29', '2021-01-21 19:45:05'),
(44, 'Create Admin Users', 'admin', 6, 'Create', 22, 32, 0, '2021-01-05 22:43:25', '2021-11-02 08:00:50'),
(45, 'Delete Admin Users', 'admin', 9, 'Delete', 22, 32, 0, '2021-01-05 22:46:22', '2021-11-02 08:00:50'),
(46, 'Delete Permissions', 'admin', 9, 'Delete', 1, NULL, 0, '2021-01-13 00:40:10', '2021-02-04 20:45:24'),
(47, 'Create Backend Menu', 'admin', 6, 'Create', 2, NULL, 0, '2021-01-13 00:40:17', '2021-01-13 00:40:17'),
(48, 'Delete Backend Menu', 'admin', 9, 'Delete', 2, NULL, 0, '2021-01-13 00:40:17', '2021-01-13 00:40:17'),
(49, 'Create Categories', 'admin', 6, 'Create', 11, 42, 0, '2021-01-13 00:40:30', '2022-09-12 06:45:16'),
(50, 'Delete Categories', 'admin', 9, 'Delete', 11, 42, 0, '2021-01-13 00:40:30', '2022-09-12 06:45:16'),
(53, 'Create Sub Categories', 'admin', 6, 'Create', 11, 43, 0, '2021-01-13 00:46:14', '2022-09-12 06:45:48'),
(54, 'Delete Sub Categories', 'admin', 9, 'Delete', 11, 43, 0, '2021-01-13 00:46:14', '2022-09-12 06:45:48'),
(55, 'Create Products', 'admin', 6, 'Create', 12, NULL, 0, '2021-01-18 17:39:31', '2021-01-18 17:39:31'),
(56, 'View Products', 'admin', 7, 'View', 12, NULL, 0, '2021-01-18 17:39:31', '2021-01-18 17:39:31'),
(57, 'Update Products', 'admin', 8, 'Update', 12, NULL, 0, '2021-01-18 17:39:31', '2021-01-18 17:39:31'),
(58, 'Delete Products', 'admin', 9, 'Delete', 12, NULL, 0, '2021-01-18 17:39:32', '2021-01-18 17:39:32'),
(59, 'Update Sellers', 'admin', 8, 'Update', 11, 6, 0, '2021-01-21 19:45:05', '2021-01-21 19:45:05'),
(60, 'Delete Sellers', 'admin', 9, 'Delete', 11, 6, 0, '2021-01-21 19:45:05', '2021-01-21 19:45:05'),
(61, 'Update ', 'admin', 8, 'Update', 11, 21, 0, '2021-01-21 20:06:03', '2021-05-26 05:52:53'),
(62, 'Delete ', 'admin', 9, 'Delete', 11, 21, 0, '2021-01-21 20:06:03', '2021-05-26 05:52:53'),
(63, 'Create Packers', 'admin', 6, 'Create', 11, 8, 0, '2021-01-21 20:18:47', '2021-01-21 20:18:47'),
(64, 'View Packers', 'admin', 7, 'View', 11, 8, 0, '2021-01-21 20:18:47', '2021-01-21 20:18:47'),
(65, 'Update Packers', 'admin', 8, 'Update', 11, 8, 0, '2021-01-21 20:18:47', '2021-01-21 20:18:47'),
(66, 'Delete Packers', 'admin', 9, 'Delete', 11, 8, 0, '2021-01-21 20:18:47', '2021-01-21 20:18:47'),
(67, 'Create Importers', 'admin', 6, 'Create', 11, 10, 0, '2021-01-21 20:28:16', '2021-01-21 20:28:16'),
(68, 'View Importers', 'admin', 7, 'View', 11, 10, 0, '2021-01-21 20:28:16', '2021-01-21 20:28:16'),
(69, 'Update Importers', 'admin', 8, 'Update', 11, 10, 0, '2021-01-21 20:28:16', '2021-01-21 20:28:16'),
(70, 'Delete Importers', 'admin', 9, 'Delete', 11, 10, 0, '2021-01-21 20:28:16', '2021-01-21 20:28:16'),
(71, 'Create Product Images', 'admin', 6, 'Create', 13, NULL, 0, '2021-01-27 20:50:39', '2021-01-28 19:51:20'),
(72, 'View Product Images', 'admin', 7, 'View', 13, NULL, 0, '2021-01-27 20:50:40', '2021-01-28 19:51:20'),
(73, 'Update Product Images', 'admin', 8, 'Update', 13, NULL, 0, '2021-01-27 20:50:40', '2021-01-28 19:51:21'),
(74, 'Create Filters', 'admin', 6, 'Create', 29, 11, 0, '2021-02-03 21:28:48', '2022-02-08 04:37:42'),
(75, 'View Filters', 'admin', 7, 'View', 29, 11, 0, '2021-02-03 21:28:48', '2022-02-08 04:37:42'),
(76, 'Update Filters', 'admin', 8, 'Update', 29, 11, 0, '2021-02-03 21:28:49', '2022-02-08 04:37:42'),
(77, 'Delete Filters', 'admin', 9, 'Delete', 29, 11, 0, '2021-02-03 21:28:49', '2022-02-08 04:37:42'),
(78, 'Create Manufacturers', 'admin', 6, 'Create', 11, 7, 0, '2021-02-04 20:43:57', '2021-02-04 20:43:57'),
(79, 'View Manufacturers', 'admin', 7, 'View', 11, 7, 0, '2021-02-04 20:43:57', '2021-02-04 20:43:57'),
(80, 'Update Manufacturers', 'admin', 8, 'Update', 11, 7, 0, '2021-02-04 20:43:57', '2021-02-04 20:43:57'),
(81, 'Delete Manufacturers', 'admin', 9, 'Delete', 11, 7, 0, '2021-02-04 20:43:57', '2021-02-04 20:43:57'),
(82, 'Create Permissions', 'admin', 6, 'Create', 1, NULL, 0, '2021-02-04 20:45:24', '2021-02-04 20:45:24'),
(83, 'View Permissions', 'admin', 7, 'View', 1, NULL, 0, '2021-02-04 20:45:24', '2021-02-04 20:45:24'),
(84, 'Update Permissions', 'admin', 8, 'Update', 1, NULL, 0, '2021-02-04 20:45:24', '2021-02-04 20:45:24'),
(85, 'Create Roles', 'admin', 6, 'Create', 6, NULL, 0, '2021-02-04 20:45:57', '2023-07-05 11:37:37'),
(86, 'View Roles', 'admin', 7, 'View', 6, NULL, 0, '2021-02-04 20:45:57', '2023-07-05 11:37:37'),
(88, 'Create Colors', 'admin', 6, 'Create', 11, 12, 0, '2021-02-07 23:44:59', '2021-02-07 23:44:59'),
(89, 'View Colors', 'admin', 7, 'View', 11, 12, 0, '2021-02-07 23:44:59', '2021-02-07 23:44:59'),
(90, 'Update Colors', 'admin', 8, 'Update', 11, 12, 0, '2021-02-07 23:44:59', '2021-02-07 23:44:59'),
(91, 'Delete Colors', 'admin', 9, 'Delete', 11, 12, 0, '2021-02-07 23:45:00', '2021-02-07 23:45:00'),
(92, 'Create Sizes', 'admin', 6, 'Create', 11, 13, 0, '2021-02-07 23:45:18', '2021-02-07 23:45:18'),
(93, 'View Sizes', 'admin', 7, 'View', 11, 13, 0, '2021-02-07 23:45:18', '2021-02-07 23:45:18'),
(94, 'Update Sizes', 'admin', 8, 'Update', 11, 13, 0, '2021-02-07 23:45:18', '2021-02-07 23:45:18'),
(95, 'Delete Sizes', 'admin', 9, 'Delete', 11, 13, 0, '2021-02-07 23:45:18', '2021-02-07 23:45:18'),
(96, 'Create CMS Pages', 'admin', 6, 'Create', 14, NULL, 0, '2021-02-24 00:20:43', '2021-02-24 00:20:43'),
(97, 'View CMS Pages', 'admin', 7, 'View', 14, NULL, 0, '2021-02-24 00:20:44', '2021-02-24 00:20:44'),
(98, 'Update CMS Pages', 'admin', 8, 'Update', 14, NULL, 0, '2021-02-24 00:20:44', '2021-02-24 00:20:44'),
(99, 'Delete CMS Pages', 'admin', 9, 'Delete', 14, NULL, 0, '2021-02-24 00:20:44', '2021-02-24 00:20:44'),
(100, 'Create Size Charts', 'admin', 6, 'Create', 11, 14, 0, '2021-03-08 23:19:59', '2021-03-08 23:19:59'),
(101, 'View Size Charts', 'admin', 7, 'View', 11, 14, 0, '2021-03-08 23:20:00', '2021-03-08 23:20:00'),
(102, 'Update Size Charts', 'admin', 8, 'Update', 11, 14, 0, '2021-03-08 23:20:00', '2021-03-08 23:20:00'),
(103, 'Delete Size Charts', 'admin', 9, 'Delete', 11, 14, 0, '2021-03-08 23:20:00', '2021-03-08 23:20:00'),
(104, 'Create FAQs', 'admin', 6, 'Create', 11, 15, 0, '2021-03-15 17:45:17', '2021-03-15 17:45:17'),
(105, 'View FAQs', 'admin', 7, 'View', 11, 15, 0, '2021-03-15 17:45:18', '2021-03-15 17:45:18'),
(106, 'Update FAQs', 'admin', 8, 'Update', 11, 15, 0, '2021-03-15 17:45:18', '2021-03-15 17:45:18'),
(107, 'Delete FAQs', 'admin', 9, 'Delete', 11, 15, 0, '2021-03-15 17:45:18', '2021-03-15 17:45:18'),
(108, 'Create Size Chart Types', 'admin', 6, 'Create', 11, 16, 0, '2021-03-17 23:03:50', '2021-03-17 23:03:50'),
(109, 'View Size Chart Types', 'admin', 7, 'View', 11, 16, 0, '2021-03-17 23:03:50', '2021-03-17 23:03:50'),
(110, 'Update Size Chart Types', 'admin', 8, 'Update', 11, 16, 0, '2021-03-17 23:03:50', '2021-03-17 23:03:50'),
(111, 'Delete Size Chart Types', 'admin', 9, 'Delete', 11, 16, 0, '2021-03-17 23:03:50', '2021-03-17 23:03:50'),
(112, 'Create Home Page', 'admin', 6, 'Create', 15, NULL, 0, '2021-03-18 18:57:58', '2021-03-19 00:34:35'),
(113, 'View Home Page', 'admin', 7, 'View', 15, NULL, 0, '2021-03-18 18:57:58', '2021-03-19 00:34:35'),
(114, 'Update Home Page', 'admin', 8, 'Update', 15, NULL, 0, '2021-03-18 18:57:58', '2021-03-19 00:34:35'),
(115, 'Delete Home Page', 'admin', 9, 'Delete', 15, NULL, 0, '2021-03-18 18:57:58', '2021-03-19 00:34:35'),
(120, 'Create Home Page Sections', 'admin', 6, 'Create', 15, NULL, 0, '2021-03-19 00:35:12', '2021-03-19 00:35:12'),
(121, 'View Home Page Sections', 'admin', 7, 'View', 15, NULL, 0, '2021-03-19 00:35:12', '2021-03-19 00:35:12'),
(122, 'Update Home Page Sections', 'admin', 8, 'Update', 15, NULL, 0, '2021-03-19 00:35:12', '2021-03-19 00:35:12'),
(123, 'Delete Home Page Sections', 'admin', 9, 'Delete', 15, NULL, 0, '2021-03-19 00:35:12', '2021-03-19 00:35:12'),
(124, 'Create Home Page Section Types', 'admin', 6, 'Create', 11, 18, 0, '2021-03-19 20:26:32', '2021-03-19 20:26:32'),
(125, 'View Home Page Section Types', 'admin', 7, 'View', 11, 18, 0, '2021-03-19 20:26:32', '2021-03-19 20:26:32'),
(126, 'Update Home Page Section Types', 'admin', 8, 'Update', 11, 18, 0, '2021-03-19 20:26:32', '2021-03-19 20:26:32'),
(127, 'Delete Home Page Section Types', 'admin', 9, 'Delete', 11, 18, 0, '2021-03-19 20:26:33', '2021-03-19 20:26:33'),
(128, 'Create Footer Content', 'admin', 6, 'Create', 16, NULL, 0, '2021-03-22 18:43:41', '2021-03-24 00:21:35'),
(129, 'View Footer Content', 'admin', 7, 'View', 16, NULL, 0, '2021-03-22 18:43:41', '2021-03-24 00:21:35'),
(130, 'Update Footer Content', 'admin', 8, 'Update', 16, NULL, 0, '2021-03-22 18:43:41', '2021-03-24 00:21:35'),
(131, 'Delete Footer Content', 'admin', 9, 'Delete', 16, NULL, 0, '2021-03-22 18:43:41', '2021-03-24 00:21:35'),
(132, 'Create Featured Products', 'admin', 6, 'Create', 11, 19, 0, '2021-03-24 00:22:24', '2021-03-24 00:22:24'),
(133, 'View Featured Products', 'admin', 7, 'View', 11, 19, 0, '2021-03-24 00:22:24', '2021-03-24 00:22:24'),
(134, 'Update Featured Products', 'admin', 8, 'Update', 11, 19, 0, '2021-03-24 00:22:24', '2021-03-24 00:22:24'),
(135, 'Delete Featured Products', 'admin', 9, 'Delete', 11, 19, 0, '2021-03-24 00:22:25', '2021-03-24 00:22:25'),
(136, 'Create Footer', 'admin', 6, 'Create', 11, 20, 0, '2021-04-20 01:45:36', '2021-04-20 01:45:36'),
(137, 'View Footer', 'admin', 7, 'View', 11, 20, 0, '2021-04-20 01:45:36', '2021-04-20 01:45:36'),
(138, 'Update Footer', 'admin', 8, 'Update', 11, 20, 0, '2021-04-20 01:45:36', '2021-04-20 01:45:36'),
(139, 'Delete Footer', 'admin', 9, 'Delete', 11, 20, 0, '2021-04-20 01:45:38', '2021-04-20 01:45:38'),
(140, 'Create Header Note', 'admin', 6, 'Create', 11, 21, 0, '2021-05-26 05:53:29', '2021-05-26 05:53:29'),
(141, 'View Header Note', 'admin', 7, 'View', 11, 21, 0, '2021-05-26 05:53:30', '2021-05-26 05:53:30'),
(142, 'Update Header Note', 'admin', 8, 'Update', 11, 21, 0, '2021-05-26 05:53:30', '2021-05-26 05:53:30'),
(143, 'Delete Header Note', 'admin', 9, 'Delete', 11, 21, 0, '2021-05-26 05:53:32', '2021-05-26 05:53:32'),
(144, 'Create Coupons', 'admin', 6, 'Create', 17, NULL, 0, '2021-05-26 05:58:01', '2021-05-26 05:58:01'),
(145, 'View Coupons', 'admin', 7, 'View', 17, NULL, 0, '2021-05-26 05:58:01', '2021-05-26 05:58:01'),
(146, 'Update Coupons', 'admin', 8, 'Update', 17, NULL, 0, '2021-05-26 05:58:01', '2021-05-26 05:58:01'),
(147, 'Delete Coupons', 'admin', 9, 'Delete', 17, NULL, 0, '2021-05-26 05:58:02', '2021-05-26 05:58:02'),
(152, 'Create Missing Payments', 'admin', 6, 'Create', 19, NULL, 0, '2021-08-04 00:29:42', '2021-08-04 00:29:42'),
(153, 'View Missing Payments', 'admin', 7, 'View', 19, NULL, 0, '2021-08-04 00:29:43', '2021-08-04 00:29:43'),
(154, 'Update Missing Payments', 'admin', 8, 'Update', 19, NULL, 0, '2021-08-04 00:29:43', '2021-08-04 00:29:43'),
(155, 'Delete Missing Payments', 'admin', 9, 'Delete', 19, NULL, 0, '2021-08-04 00:29:44', '2021-08-04 00:29:44'),
(156, 'Create Reviews', 'admin', 6, 'Create', 20, NULL, 0, '2021-08-04 00:31:38', '2021-08-04 00:31:38'),
(157, 'View Reviews', 'admin', 7, 'View', 20, NULL, 0, '2021-08-04 00:31:38', '2021-08-04 00:31:38'),
(158, 'Update Reviews', 'admin', 8, 'Update', 20, NULL, 0, '2021-08-04 00:31:38', '2021-08-04 00:31:38'),
(159, 'Delete Reviews', 'admin', 9, 'Delete', 20, NULL, 0, '2021-08-04 00:31:40', '2021-08-04 00:31:40'),
(160, 'Create Newsletters', 'admin', 6, 'Create', 21, NULL, 0, '2021-08-04 00:33:36', '2021-08-04 00:33:36'),
(161, 'View Newsletters', 'admin', 7, 'View', 21, NULL, 0, '2021-08-04 00:33:37', '2021-08-04 00:33:37'),
(162, 'Update Newsletters', 'admin', 8, 'Update', 21, NULL, 0, '2021-08-04 00:33:37', '2021-08-04 00:33:37'),
(163, 'Delete Newsletters', 'admin', 9, 'Delete', 21, NULL, 0, '2021-08-04 00:33:38', '2021-08-04 00:33:38'),
(164, 'Create COD Management', 'admin', 6, 'Create', 11, 22, 0, '2021-09-14 23:10:12', '2021-09-14 23:10:12'),
(165, 'View COD Management', 'admin', 7, 'View', 11, 22, 0, '2021-09-14 23:10:12', '2021-09-14 23:10:12'),
(166, 'Update COD Management', 'admin', 8, 'Update', 11, 22, 0, '2021-09-14 23:10:12', '2021-09-14 23:10:12'),
(167, 'Delete COD Management', 'admin', 9, 'Delete', 11, 22, 0, '2021-09-14 23:10:14', '2021-09-14 23:10:14'),
(172, 'Create External Users', 'admin', 6, 'Create', 22, 24, 0, '2021-09-14 23:43:36', '2021-09-14 23:44:11'),
(173, 'View External Users', 'admin', 7, 'View', 22, 24, 0, '2021-09-14 23:43:36', '2021-09-14 23:44:11'),
(174, 'Update External Users', 'admin', 8, 'Update', 22, 24, 0, '2021-09-14 23:43:38', '2021-09-14 23:44:11'),
(175, 'Delete External Users', 'admin', 9, 'Delete', 22, 24, 0, '2021-09-14 23:43:39', '2021-09-14 23:44:11'),
(176, 'Create Suggestions', 'admin', 6, 'Create', 24, NULL, 0, '2021-09-14 23:44:44', '2021-09-14 23:44:44'),
(177, 'View Suggestions', 'admin', 7, 'View', 24, NULL, 0, '2021-09-14 23:44:44', '2021-09-14 23:44:44'),
(178, 'Update Suggestions', 'admin', 8, 'Update', 24, NULL, 0, '2021-09-14 23:44:45', '2021-09-14 23:44:45'),
(179, 'Delete Suggestions', 'admin', 9, 'Delete', 24, NULL, 0, '2021-09-14 23:44:46', '2021-09-14 23:44:46'),
(180, 'Create Special Deals', 'admin', 6, 'Create', 11, 25, 0, '2021-09-15 20:39:49', '2021-09-15 20:39:49'),
(181, 'View Special Deals', 'admin', 7, 'View', 11, 25, 0, '2021-09-15 20:39:49', '2021-09-15 20:39:49'),
(182, 'Update Special Deals', 'admin', 8, 'Update', 11, 25, 0, '2021-09-15 20:39:51', '2021-09-15 20:39:51'),
(183, 'Delete Special Deals', 'admin', 9, 'Delete', 11, 25, 0, '2021-09-15 20:39:51', '2021-09-15 20:39:51'),
(184, 'Create Report', 'admin', 6, 'Create', 25, NULL, 0, '2021-09-15 20:56:17', '2021-09-15 20:56:17'),
(185, 'View Report', 'admin', 7, 'View', 25, NULL, 0, '2021-09-15 20:56:17', '2021-09-15 20:56:17'),
(186, 'Update Report', 'admin', 8, 'Update', 25, NULL, 0, '2021-09-15 20:56:19', '2021-09-15 20:56:19'),
(187, 'Delete Report', 'admin', 9, 'Delete', 25, NULL, 0, '2021-09-15 20:56:19', '2021-09-15 20:56:19'),
(192, 'Create Company Master', 'admin', 6, 'Create', 11, 101, 0, '2021-10-14 02:47:52', '2023-10-10 08:06:47'),
(193, 'View Company Master', 'admin', 7, 'View', 11, 101, 0, '2021-10-14 02:47:52', '2023-10-10 08:06:47'),
(194, 'Update Company Master', 'admin', 8, 'Update', 11, 101, 0, '2021-10-14 02:47:54', '2023-10-10 08:06:47'),
(195, 'Delete Company Master', 'admin', 9, 'Delete', 11, 101, 0, '2021-10-14 02:47:54', '2023-10-10 08:06:47'),
(196, 'Create GST', 'admin', 6, 'Create', 27, NULL, 0, '2021-10-14 03:42:25', '2021-10-14 03:42:25'),
(197, 'View GST', 'admin', 7, 'View', 27, NULL, 0, '2021-10-14 03:42:25', '2021-10-14 03:42:25'),
(198, 'Update GST', 'admin', 8, 'Update', 27, NULL, 0, '2021-10-14 03:42:27', '2021-10-14 03:42:27'),
(199, 'Delete GST', 'admin', 9, 'Delete', 27, NULL, 0, '2021-10-14 03:42:27', '2021-10-14 03:42:27'),
(204, 'Create HSN Codes', 'admin', 6, 'Create', 28, NULL, 0, '2021-11-02 02:23:43', '2021-11-02 02:57:11'),
(205, 'View HSN Codes', 'admin', 7, 'View', 28, NULL, 0, '2021-11-02 02:23:44', '2021-11-02 02:57:11'),
(206, 'Update HSN Codes', 'admin', 8, 'Update', 28, NULL, 0, '2021-11-02 02:23:46', '2021-11-02 02:57:11'),
(207, 'Delete HSN Codes', 'admin', 9, 'Delete', 28, NULL, 0, '2021-11-02 02:23:46', '2021-11-02 02:57:11'),
(208, 'Create Materials', 'admin', 6, 'Create', 11, 30, 0, '2021-11-02 02:25:30', '2021-11-02 02:25:30'),
(209, 'View Materials', 'admin', 7, 'View', 11, 30, 0, '2021-11-02 02:25:32', '2021-11-02 02:25:32'),
(210, 'Update Materials', 'admin', 8, 'Update', 11, 30, 0, '2021-11-02 02:25:32', '2021-11-02 02:25:32'),
(211, 'Delete Materials', 'admin', 9, 'Delete', 11, 30, 0, '2021-11-02 02:25:33', '2021-11-02 02:25:33'),
(212, 'Create Shiping Charges', 'admin', 6, 'Create', 11, 31, 0, '2021-11-02 07:51:46', '2021-11-02 07:51:46'),
(213, 'View Shiping Charges', 'admin', 7, 'View', 11, 31, 0, '2021-11-02 07:51:47', '2021-11-02 07:51:47'),
(214, 'Update Shiping Charges', 'admin', 8, 'Update', 11, 31, 0, '2021-11-02 07:51:48', '2021-11-02 07:51:48'),
(215, 'Delete Shiping Charges', 'admin', 9, 'Delete', 11, 31, 0, '2021-11-02 07:51:48', '2021-11-02 07:51:48'),
(216, 'Create Filter Assign', 'admin', 6, 'Create', 29, 33, 0, '2021-11-03 00:37:36', '2022-02-08 04:37:56'),
(217, 'View Filter Assign', 'admin', 7, 'View', 29, 33, 0, '2021-11-03 00:37:37', '2022-02-08 04:37:56'),
(218, 'Update Filter Assign', 'admin', 8, 'Update', 29, 33, 0, '2021-11-03 00:37:38', '2022-02-08 04:37:56'),
(219, 'Delete Filter Assign', 'admin', 9, 'Delete', 29, 33, 0, '2021-11-03 00:37:38', '2022-02-08 04:37:56'),
(220, 'Create Filters & Values', 'admin', 6, 'Create', 29, 11, 0, '2022-02-08 04:38:10', '2022-02-08 04:38:10'),
(221, 'View Filters & Values', 'admin', 7, 'View', 29, 11, 0, '2022-02-08 04:38:11', '2022-02-08 04:38:11'),
(222, 'Update Filters & Values', 'admin', 8, 'Update', 29, 11, 0, '2022-02-08 04:38:11', '2022-02-08 04:38:11'),
(223, 'Delete Filters & Values', 'admin', 9, 'Delete', 29, 11, 0, '2022-02-08 04:38:15', '2022-02-08 04:38:15'),
(232, 'Create Frontend Images', 'admin', 6, 'Create', 11, 36, 0, '2022-03-09 07:12:48', '2022-03-09 07:19:05'),
(233, 'View Frontend Images', 'admin', 7, 'View', 11, 36, 0, '2022-03-09 07:12:49', '2022-03-09 07:19:05'),
(234, 'Update Frontend Images', 'admin', 8, 'Update', 11, 36, 0, '2022-03-09 07:12:49', '2022-03-09 07:19:05'),
(235, 'Delete Frontend Images', 'admin', 9, 'Delete', 11, 36, 0, '2022-03-09 07:12:52', '2022-03-09 07:19:05'),
(236, 'Create Hot Offers', 'admin', 6, 'Create', 31, NULL, 0, '2022-04-07 00:21:16', '2022-04-07 00:21:16'),
(237, 'View Hot Offers', 'admin', 7, 'View', 31, NULL, 0, '2022-04-07 00:21:16', '2022-04-07 00:21:16'),
(238, 'Update Hot Offers', 'admin', 8, 'Update', 31, NULL, 0, '2022-04-07 00:21:19', '2022-04-07 00:21:19'),
(239, 'Delete Hot Offers', 'admin', 9, 'Delete', 31, NULL, 0, '2022-04-07 00:21:19', '2022-04-07 00:21:19'),
(240, 'Create Download App', 'admin', 6, 'Create', 11, 37, 0, '2022-05-24 02:14:47', '2022-05-24 02:14:47'),
(241, 'View Download App', 'admin', 7, 'View', 11, 37, 0, '2022-05-24 02:14:48', '2022-05-24 02:14:48'),
(242, 'Update Download App', 'admin', 8, 'Update', 11, 37, 0, '2022-05-24 02:14:48', '2022-05-24 02:14:48'),
(243, 'Delete Download App', 'admin', 9, 'Delete', 11, 37, 0, '2022-05-24 02:14:52', '2022-05-24 02:14:52'),
(244, 'Create Login Management', 'admin', 6, 'Create', 11, 38, 0, '2022-06-30 00:56:06', '2022-06-30 00:56:06'),
(245, 'View Login Management', 'admin', 7, 'View', 11, 38, 0, '2022-06-30 00:56:07', '2022-06-30 00:56:07'),
(246, 'Update Login Management', 'admin', 8, 'Update', 11, 38, 0, '2022-06-30 00:56:08', '2022-06-30 00:56:08'),
(247, 'Delete Login Management', 'admin', 9, 'Delete', 11, 38, 0, '2022-06-30 00:56:09', '2022-06-30 00:56:09'),
(250, 'View Down', 'admin', 7, 'View', 32, 39, 0, '2022-07-07 07:11:18', '2022-07-07 07:11:18'),
(251, 'Update Down', 'admin', 8, 'Update', 32, 39, 0, '2022-07-07 07:11:20', '2022-07-07 07:11:20'),
(252, 'View Up', 'admin', 7, 'View', 32, 40, 0, '2022-07-07 07:11:47', '2022-07-07 07:11:47'),
(253, 'Update Up', 'admin', 8, 'Update', 32, 40, 0, '2022-07-07 07:11:48', '2022-07-07 07:11:48'),
(254, 'Create Products 33', 'admin', 6, 'Create', 33, NULL, 0, '2022-09-12 07:10:48', '2022-09-12 07:10:48'),
(255, 'View Products 33', 'admin', 7, 'View', 33, NULL, 0, '2022-09-12 07:10:48', '2022-09-12 07:10:48'),
(256, 'Update Products 33', 'admin', 8, 'Update', 33, NULL, 0, '2022-09-12 07:10:48', '2022-09-12 07:10:48'),
(257, 'Delete Products 33', 'admin', 9, 'Delete', 33, NULL, 0, '2022-09-12 07:10:48', '2022-09-12 07:10:48'),
(258, 'Create Pricings', 'admin', 6, 'Create', 34, NULL, 0, '2022-09-13 07:54:40', '2022-09-13 07:55:58'),
(259, 'View Pricings', 'admin', 7, 'View', 34, NULL, 0, '2022-09-13 07:54:40', '2022-09-13 07:55:58'),
(260, 'Update Pricings', 'admin', 8, 'Update', 34, NULL, 0, '2022-09-13 07:54:40', '2022-09-13 07:55:58'),
(261, 'Delete Pricings', 'admin', 9, 'Delete', 34, NULL, 0, '2022-09-13 07:54:40', '2022-09-13 07:55:58'),
(262, 'Create Expenses', 'admin', 6, 'Create', 11, 95, 0, '2022-09-13 11:03:12', '2023-12-02 05:53:46'),
(263, 'View Expenses', 'admin', 7, 'View', 11, 95, 0, '2022-09-13 11:03:13', '2023-12-02 05:53:46'),
(264, 'Update Expenses', 'admin', 8, 'Update', 11, 95, 0, '2022-09-13 11:03:13', '2023-12-02 05:53:46'),
(265, 'Delete Expenses', 'admin', 9, 'Delete', 11, 95, 0, '2022-09-13 11:03:13', '2023-12-02 05:53:47'),
(266, 'Create Brands', 'admin', 6, 'Create', 11, 44, 0, '2022-09-13 11:08:55', '2022-09-13 11:08:55'),
(267, 'View Brands', 'admin', 7, 'View', 11, 44, 0, '2022-09-13 11:08:55', '2022-09-13 11:08:55'),
(268, 'Update Brands', 'admin', 8, 'Update', 11, 44, 0, '2022-09-13 11:08:55', '2022-09-13 11:08:55'),
(269, 'Delete Brands', 'admin', 9, 'Delete', 11, 44, 0, '2022-09-13 11:08:55', '2022-09-13 11:08:55'),
(270, 'Create Expense Catgories', 'admin', 6, 'Create', 11, 45, 0, '2022-09-13 11:13:03', '2022-09-13 11:13:03'),
(271, 'View Expense Catgories', 'admin', 7, 'View', 11, 45, 0, '2022-09-13 11:13:03', '2022-09-13 11:13:03'),
(272, 'Update Expense Catgories', 'admin', 8, 'Update', 11, 45, 0, '2022-09-13 11:13:04', '2022-09-13 11:13:04'),
(273, 'Delete Expense Catgories', 'admin', 9, 'Delete', 11, 45, 0, '2022-09-13 11:13:04', '2022-09-13 11:13:04'),
(274, 'Create Expense Sub Catgories', 'admin', 6, 'Create', 11, 46, 0, '2022-09-13 11:13:49', '2022-09-13 11:13:49'),
(275, 'View Expense Sub Catgories', 'admin', 7, 'View', 11, 46, 0, '2022-09-13 11:13:49', '2022-09-13 11:13:49'),
(276, 'Update Expense Sub Catgories', 'admin', 8, 'Update', 11, 46, 0, '2022-09-13 11:13:49', '2022-09-13 11:13:49'),
(277, 'Delete Expense Sub Catgories', 'admin', 9, 'Delete', 11, 46, 0, '2022-09-13 11:13:49', '2022-09-13 11:13:49'),
(282, 'Create Purchase Order', 'admin', 6, 'Create', 44, 56, 0, '2022-10-27 10:35:34', '2023-11-27 12:42:50'),
(283, 'View Purchase Order', 'admin', 7, 'View', 44, 56, 0, '2022-10-27 10:35:34', '2023-11-27 12:42:50'),
(284, 'Update Purchase Order', 'admin', 8, 'Update', 44, 56, 0, '2022-10-27 10:35:34', '2023-11-27 12:42:50'),
(285, 'Delete Purchase Order', 'admin', 9, 'Delete', 44, 56, 0, '2022-10-27 10:35:34', '2023-11-27 12:42:50'),
(287, 'View Goods Receipt PO', 'admin', 7, 'View', 44, 57, 0, '2023-01-30 11:22:28', '2023-11-28 04:57:50'),
(288, 'Update Goods Receipt PO', 'admin', 8, 'Update', 44, 57, 0, '2023-01-30 11:22:42', '2023-11-28 04:57:50'),
(289, 'Delete Goods Receipt PO', 'admin', 9, 'Delete', 44, 57, 0, '2023-01-30 11:22:42', '2023-11-28 04:57:50'),
(290, 'Create Route', 'admin', 6, 'Create', 11, 77, 0, '2023-05-23 06:50:45', '2023-05-23 06:55:35'),
(291, 'View Route', 'admin', 7, 'View', 11, 77, 0, '2023-05-23 06:50:45', '2023-05-23 06:55:35'),
(292, 'Update Route', 'admin', 8, 'Update', 50, NULL, 0, '2023-05-23 06:50:45', '2023-05-23 06:50:45'),
(293, 'Delete Route', 'admin', 9, 'Delete', 11, 77, 0, '2023-05-23 06:55:35', '2023-05-23 06:55:35'),
(294, 'Create Beat', 'admin', 6, 'Create', 11, 78, 0, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(295, 'View Beat', 'admin', 7, 'View', 11, 78, 0, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(296, 'Update Beat', 'admin', 8, 'Update', 11, 78, 0, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(297, 'Delete Beat', 'admin', 9, 'Delete', 11, 78, 0, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(298, 'Create Beat Calender Master', 'admin', 6, 'Create', 11, 79, 0, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(299, 'View Beat Calender Master', 'admin', 7, 'View', 11, 79, 0, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(300, 'Update Beat Calender Master', 'admin', 8, 'Update', 11, 79, 0, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(301, 'Delete Beat Calender Master', 'admin', 9, 'Delete', 11, 79, 0, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(302, 'Create Bill Booking Form', 'admin', 6, 'Create', 11, 80, 0, '2023-05-24 05:57:42', '2023-05-24 05:57:42'),
(303, 'View Bill Booking Form', 'admin', 7, 'View', 11, 80, 0, '2023-05-24 05:57:42', '2023-05-24 05:57:42'),
(304, 'Update Bill Booking Form', 'admin', 8, 'Update', 11, 80, 0, '2023-05-24 05:57:42', '2023-05-24 05:57:42'),
(305, 'Delete Bill Booking Form', 'admin', 9, 'Delete', 11, 80, 0, '2023-05-24 05:57:43', '2023-05-24 05:57:43'),
(306, 'Create Banking Payment Reciept', 'admin', 6, 'Create', 11, 81, 0, '2023-05-24 06:33:24', '2023-05-24 06:33:24'),
(307, 'View Banking Payment Reciept', 'admin', 7, 'View', 11, 81, 0, '2023-05-24 06:33:24', '2023-05-24 06:33:24'),
(308, 'Update Banking Payment Reciept', 'admin', 8, 'Update', 11, 81, 0, '2023-05-24 06:33:24', '2023-05-24 06:33:24'),
(309, 'Delete Banking Payment Reciept', 'admin', 9, 'Delete', 11, 81, 0, '2023-05-24 06:33:24', '2023-05-24 06:33:24'),
(310, 'Create BSPL Category', 'admin', 6, 'Create', 49, 83, 0, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(311, 'View BSPL Category', 'admin', 7, 'View', 49, 83, 0, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(312, 'Update BSPL Category', 'admin', 8, 'Update', 49, 83, 0, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(313, 'Delete BSPL Category', 'admin', 9, 'Delete', 49, 83, 0, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(318, 'Create Order Booking', 'admin', 6, 'Create', 43, 48, 0, '2023-06-02 12:35:41', '2023-06-02 12:35:41'),
(319, 'View Order Booking', 'admin', 7, 'View', 43, 48, 0, '2023-06-02 12:35:41', '2023-06-02 12:35:41'),
(320, 'Update Order Booking', 'admin', 8, 'Update', 43, 48, 0, '2023-06-02 12:35:41', '2023-06-02 12:35:41'),
(321, 'Delete Order Booking', 'admin', 9, 'Delete', 43, 48, 0, '2023-06-02 12:35:41', '2023-06-02 12:35:41'),
(322, 'Create Order Fulfillment', 'admin', 6, 'Create', 43, 87, 0, '2023-06-02 12:52:40', '2023-06-02 13:00:37'),
(323, 'View Order Fulfillment', 'admin', 7, 'View', 43, 87, 0, '2023-06-02 12:52:40', '2023-06-02 13:00:37'),
(324, 'Update Order Fulfillment', 'admin', 8, 'Update', 43, 87, 0, '2023-06-02 12:52:40', '2023-06-02 13:00:37'),
(325, 'Delete Order Fulfillment', 'admin', 9, 'Delete', 43, 87, 0, '2023-06-02 12:52:40', '2023-06-02 13:00:37'),
(326, 'Create Proforma', 'admin', 6, 'Create', 43, 48, 0, '2023-06-03 04:31:12', '2023-06-07 09:04:44'),
(327, 'View Proforma', 'admin', 7, 'View', 43, 48, 0, '2023-06-03 04:31:12', '2023-06-07 09:04:44'),
(328, 'Update Proforma', 'admin', 8, 'Update', 43, 48, 0, '2023-06-03 04:31:12', '2023-06-07 09:04:44'),
(329, 'Delete Proforma', 'admin', 9, 'Delete', 43, 48, 0, '2023-06-03 04:31:12', '2023-06-07 09:04:44'),
(338, 'Create BSPL Sub-Category', 'admin', 6, 'Create', 49, 84, 0, '2023-06-05 05:45:34', '2023-10-09 09:05:39'),
(339, 'View BSPL Sub-Category', 'admin', 7, 'View', 49, 84, 0, '2023-06-05 05:45:34', '2023-10-09 09:05:39'),
(340, 'Update BSPL Sub-Category', 'admin', 8, 'Update', 49, 84, 0, '2023-06-05 05:45:34', '2023-10-09 09:05:39'),
(341, 'Delete BSPL Sub-Category', 'admin', 9, 'Delete', 49, 84, 0, '2023-06-05 05:45:35', '2023-10-09 09:05:39'),
(342, 'Create BSPL Heads', 'admin', 6, 'Create', 49, 82, 0, '2023-06-05 06:37:17', '2023-10-09 09:04:01'),
(343, 'View BSPL Heads', 'admin', 7, 'View', 49, 82, 0, '2023-06-05 06:37:17', '2023-10-09 09:04:01'),
(344, 'Update BSPL Heads', 'admin', 8, 'Update', 49, 82, 0, '2023-06-05 06:37:17', '2023-10-09 09:04:01'),
(345, 'Delete BSPL Heads', 'admin', 9, 'Delete', 49, 82, 0, '2023-06-05 06:37:17', '2023-10-09 09:04:01'),
(346, 'Create Type', 'admin', 6, 'Create', 49, 93, 0, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(347, 'View Type', 'admin', 7, 'View', 49, 93, 0, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(348, 'Update Type', 'admin', 8, 'Update', 49, 93, 0, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(349, 'Delete Type', 'admin', 9, 'Delete', 49, 93, 0, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(350, 'Create Banking Payments', 'admin', 6, 'Create', 49, 94, 0, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(351, 'View Banking Payments', 'admin', 7, 'View', 49, 94, 0, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(352, 'Update Banking Payments', 'admin', 8, 'Update', 49, 94, 0, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(353, 'Delete Banking Payments', 'admin', 9, 'Delete', 49, 94, 0, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(354, 'Create Expense Master', 'admin', 6, 'Create', 11, 95, 0, '2023-06-05 11:40:25', '2023-06-05 11:40:25'),
(355, 'View Expense Master', 'admin', 7, 'View', 11, 95, 0, '2023-06-05 11:40:25', '2023-06-05 11:40:25'),
(356, 'Update Expense Master', 'admin', 8, 'Update', 11, 95, 0, '2023-06-05 11:40:25', '2023-06-05 11:40:25'),
(357, 'Delete Expense Master', 'admin', 9, 'Delete', 11, 95, 0, '2023-06-05 11:40:25', '2023-06-05 11:40:25'),
(358, 'Create Banking Receipts', 'admin', 6, 'Create', 49, 96, 0, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(359, 'View Banking Receipts', 'admin', 7, 'View', 49, 96, 0, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(360, 'Update Banking Receipts', 'admin', 8, 'Update', 49, 96, 0, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(361, 'Delete Banking Receipts', 'admin', 9, 'Delete', 49, 96, 0, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(362, 'Create Bill Booking', 'admin', 6, 'Create', 49, 97, 0, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(363, 'View Bill Booking', 'admin', 7, 'View', 49, 97, 0, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(364, 'Update Bill Booking', 'admin', 8, 'Update', 49, 97, 0, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(365, 'Delete Bill Booking', 'admin', 9, 'Delete', 49, 97, 0, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(370, 'Create A/R Invoice', 'admin', 6, 'Create', 43, 98, 0, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(371, 'View A/R Invoice', 'admin', 7, 'View', 43, 98, 0, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(372, 'Update A/R Invoice', 'admin', 8, 'Update', 43, 98, 0, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(373, 'Delete A/R Invoice', 'admin', 9, 'Delete', 43, 98, 0, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(374, 'Create Return', 'admin', 6, 'Create', 43, 70, 0, '2023-06-07 09:03:53', '2023-06-07 09:03:53'),
(375, 'View Return', 'admin', 7, 'View', 43, 70, 0, '2023-06-07 09:03:53', '2023-06-07 09:03:53'),
(376, 'Update Return', 'admin', 8, 'Update', 43, 70, 0, '2023-06-07 09:03:53', '2023-06-07 09:03:53'),
(377, 'Delete Return', 'admin', 9, 'Delete', 43, 70, 0, '2023-06-07 09:03:53', '2023-06-07 09:03:53'),
(378, 'Create Incoming Payments', 'admin', 6, 'Create', 43, 69, 0, '2023-06-07 09:04:12', '2023-06-07 09:04:12'),
(379, 'View Incoming Payments', 'admin', 7, 'View', 43, 69, 0, '2023-06-07 09:04:12', '2023-06-07 09:04:12'),
(380, 'Update Incoming Payments', 'admin', 8, 'Update', 43, 69, 0, '2023-06-07 09:04:12', '2023-06-07 09:04:12'),
(381, 'Delete Incoming Payments', 'admin', 9, 'Delete', 43, 69, 0, '2023-06-07 09:04:12', '2023-06-07 09:04:12'),
(382, 'Create A/R Credit Memo', 'admin', 6, 'Create', 43, 71, 0, '2023-06-07 09:04:24', '2023-06-07 09:04:24'),
(383, 'View A/R Credit Memo', 'admin', 7, 'View', 43, 71, 0, '2023-06-07 09:04:24', '2023-06-07 09:04:24'),
(384, 'Update A/R Credit Memo', 'admin', 8, 'Update', 43, 71, 0, '2023-06-07 09:04:24', '2023-06-07 09:04:24'),
(385, 'Delete A/R Credit Memo', 'admin', 9, 'Delete', 43, 71, 0, '2023-06-07 09:04:24', '2023-06-07 09:04:24'),
(386, 'Create Sales Order/Order Booking', 'admin', 6, 'Create', 43, 67, 0, '2023-06-07 09:05:14', '2023-06-07 09:05:14'),
(387, 'View Sales Order/Order Booking', 'admin', 7, 'View', 43, 67, 0, '2023-06-07 09:05:14', '2023-06-07 09:05:14'),
(388, 'Update Sales Order/Order Booking', 'admin', 8, 'Update', 43, 67, 0, '2023-06-07 09:05:14', '2023-06-07 09:05:14'),
(389, 'Delete Sales Order/Order Booking', 'admin', 9, 'Delete', 43, 67, 0, '2023-06-07 09:05:14', '2023-06-07 09:05:14'),
(390, 'Create Order Fulfilment/Dispatch', 'admin', 6, 'Create', 43, 68, 0, '2023-06-07 10:34:44', '2023-06-07 10:34:44'),
(391, 'View Order Fulfilment/Dispatch', 'admin', 7, 'View', 43, 68, 0, '2023-06-07 10:34:44', '2023-06-07 10:34:44'),
(392, 'Update Order Fulfilment/Dispatch', 'admin', 8, 'Update', 43, 68, 0, '2023-06-07 10:34:44', '2023-06-07 10:34:44'),
(393, 'Delete Order Fulfilment/Dispatch', 'admin', 9, 'Delete', 43, 68, 0, '2023-06-07 10:34:44', '2023-06-07 10:34:44'),
(394, 'Delete Roles', 'admin', 9, 'Delete', 6, NULL, 0, '2023-07-05 11:36:28', '2023-07-05 11:37:37'),
(395, 'Update Roles', 'admin', 8, 'Update', 6, NULL, 0, '2023-07-05 11:37:37', '2023-07-05 11:37:37'),
(396, 'Create Series Master', 'admin', 6, 'Create', 11, 100, 0, '2023-10-09 11:40:59', '2023-10-09 12:02:01'),
(397, 'View Series Master', 'admin', 7, 'View', 11, 100, 0, '2023-10-09 11:40:59', '2023-10-09 12:02:01'),
(398, 'Update Series Master', 'admin', 8, 'Update', 11, 100, 0, '2023-10-09 11:40:59', '2023-10-09 12:02:01'),
(399, 'Delete Series Master', 'admin', 9, 'Delete', 11, 100, 0, '2023-10-09 11:40:59', '2023-10-09 12:02:01'),
(400, 'Create Logs', 'admin', 6, 'Create', 50, 102, 0, '2023-11-15 11:55:38', '2023-11-15 11:56:18'),
(401, 'View Logs', 'admin', 7, 'View', 50, 102, 0, '2023-11-15 11:55:38', '2023-11-15 11:56:18'),
(402, 'Update Logs', 'admin', 8, 'Update', 50, 102, 0, '2023-11-15 11:55:38', '2023-11-15 11:56:18'),
(403, 'Delete Logs', 'admin', 9, 'Delete', 50, 102, 0, '2023-11-15 11:55:38', '2023-11-15 11:56:18'),
(404, 'Create Products History', 'admin', 6, 'Create', 50, 103, 0, '2023-11-16 08:00:33', '2023-11-16 08:00:33'),
(405, 'View Products History', 'admin', 7, 'View', 50, 103, 0, '2023-11-16 08:00:34', '2023-11-16 08:00:34'),
(406, 'Update Products History', 'admin', 8, 'Update', 50, 103, 0, '2023-11-16 08:00:34', '2023-11-16 08:00:34'),
(407, 'Delete Products History', 'admin', 9, 'Delete', 50, 103, 0, '2023-11-16 08:00:34', '2023-11-16 08:00:34'),
(408, 'View Traffic Source', 'admin', 7, 'View', 50, 104, 0, '2023-11-17 04:48:38', '2023-11-17 04:48:38'),
(409, 'Clone Purchase Order', 'admin', 10, 'Clone', 44, 56, 0, '2023-11-27 12:39:09', '2023-11-27 12:42:50'),
(410, 'Clone Goods Receipt PO', 'admin', 10, 'Clone', 44, 57, 0, '2023-11-27 12:52:26', '2023-11-28 04:57:50'),
(411, 'Create Goods/Service Receipts', 'admin', 6, 'Create', 40, NULL, 0, '2023-11-28 04:54:52', '2023-11-28 04:54:52'),
(412, 'View Goods/Service Receipts', 'admin', 7, 'View', 40, NULL, 0, '2023-11-28 04:54:53', '2023-11-28 04:54:53'),
(413, 'Update Goods/Service Receipts', 'admin', 8, 'Update', 40, NULL, 0, '2023-11-28 04:54:53', '2023-11-28 04:54:53'),
(414, 'Delete Goods/Service Receipts', 'admin', 9, 'Delete', 40, NULL, 0, '2023-11-28 04:54:53', '2023-11-28 04:54:53'),
(415, 'Clone Goods/Service Receipts', 'admin', 10, 'Clone', 40, NULL, 0, '2023-11-28 04:54:53', '2023-11-28 04:54:53'),
(416, 'Create A/P Invoice', 'admin', 6, 'Create', 44, 73, 0, '2023-11-28 04:59:01', '2023-11-28 05:33:18'),
(417, 'View A/P Invoice', 'admin', 7, 'View', 44, 73, 0, '2023-11-28 04:59:01', '2023-11-28 05:33:18'),
(418, 'Update A/P Invoice', 'admin', 8, 'Update', 44, 73, 0, '2023-11-28 04:59:01', '2023-11-28 05:33:18'),
(419, 'Delete A/P Invoice', 'admin', 9, 'Delete', 44, 73, 0, '2023-11-28 04:59:01', '2023-11-28 05:33:18'),
(421, 'Create Storage Locations', 'admin', 6, 'Create', 47, 53, 0, '2023-12-02 05:53:59', '2023-12-02 05:55:21'),
(422, 'View Storage Locations', 'admin', 7, 'View', 47, 53, 0, '2023-12-02 05:53:59', '2023-12-02 05:55:21'),
(423, 'Update Storage Locations', 'admin', 8, 'Update', 47, 53, 0, '2023-12-02 05:53:59', '2023-12-02 05:55:21'),
(424, 'Delete Storage Locations', 'admin', 9, 'Delete', 47, 53, 0, '2023-12-02 05:53:59', '2023-12-02 05:55:21'),
(425, 'Create Warehouses', 'admin', 6, 'Create', 11, 117, 0, '2023-12-02 07:05:38', '2023-12-20 07:01:06'),
(426, 'View Warehouses', 'admin', 7, 'View', 11, 117, 0, '2023-12-02 07:05:38', '2023-12-20 07:01:06'),
(427, 'Update Warehouses', 'admin', 8, 'Update', 11, 117, 0, '2023-12-02 07:05:38', '2023-12-20 07:01:06'),
(428, 'Delete Warehouses', 'admin', 9, 'Delete', 11, 117, 0, '2023-12-02 07:05:38', '2023-12-20 07:01:06'),
(429, 'Create Stock On Hand', 'admin', 6, 'Create', 47, 58, 0, '2023-12-02 07:10:11', '2023-12-02 07:24:07'),
(430, 'View Stock On Hand', 'admin', 7, 'View', 47, 58, 0, '2023-12-02 07:10:11', '2023-12-02 07:24:07'),
(431, 'Update Stock On Hand', 'admin', 8, 'Update', 47, 58, 0, '2023-12-02 07:10:12', '2023-12-02 07:24:07'),
(432, 'Delete Stock On Hand', 'admin', 9, 'Delete', 47, 58, 0, '2023-12-02 07:10:12', '2023-12-02 07:24:07'),
(433, 'Create Stock Management', 'admin', 6, 'Create', 47, 105, 0, '2023-12-02 07:22:59', '2023-12-02 07:22:59'),
(434, 'View Stock Management', 'admin', 7, 'View', 47, 105, 0, '2023-12-02 07:22:59', '2023-12-02 07:22:59'),
(435, 'Update Stock Management', 'admin', 8, 'Update', 47, 105, 0, '2023-12-02 07:22:59', '2023-12-02 07:22:59'),
(436, 'Delete Stock Management', 'admin', 9, 'Delete', 47, 105, 0, '2023-12-02 07:23:00', '2023-12-02 07:23:00'),
(437, 'Create Stock Count Adjustment', 'admin', 6, 'Create', 47, 55, 0, '2023-12-02 07:23:45', '2023-12-02 07:23:45'),
(438, 'View Stock Count Adjustment', 'admin', 7, 'View', 47, 55, 0, '2023-12-02 07:23:45', '2023-12-02 07:23:45'),
(439, 'Update Stock Count Adjustment', 'admin', 8, 'Update', 47, 55, 0, '2023-12-02 07:23:45', '2023-12-02 07:23:45'),
(440, 'Delete Stock Count Adjustment', 'admin', 9, 'Delete', 47, 55, 0, '2023-12-02 07:23:45', '2023-12-02 07:23:45'),
(441, 'Create Bin Type', 'admin', 6, 'Create', 11, 106, 0, '2023-12-04 04:33:52', '2023-12-04 04:33:52'),
(442, 'View Bin Type', 'admin', 7, 'View', 11, 106, 0, '2023-12-04 04:33:52', '2023-12-04 04:33:52'),
(443, 'Update Bin Type', 'admin', 8, 'Update', 11, 106, 0, '2023-12-04 04:33:52', '2023-12-04 04:33:52'),
(444, 'Delete Bin Type', 'admin', 9, 'Delete', 11, 106, 0, '2023-12-04 04:33:52', '2023-12-04 04:33:52'),
(445, 'Create Bin Transfer', 'admin', 6, 'Create', 47, 105, 0, '2023-12-05 06:29:15', '2023-12-05 06:29:15'),
(446, 'View Bin Transfer', 'admin', 7, 'View', 47, 105, 0, '2023-12-05 06:29:16', '2023-12-05 06:29:16'),
(447, 'Update Bin Transfer', 'admin', 8, 'Update', 47, 105, 0, '2023-12-05 06:29:16', '2023-12-05 06:29:16'),
(448, 'Delete Bin Transfer', 'admin', 9, 'Delete', 47, 105, 0, '2023-12-05 06:29:17', '2023-12-05 06:29:17'),
(449, 'Create Academic Year', 'admin', 6, 'Create', 11, 107, 0, '2023-12-06 10:41:14', '2023-12-06 11:40:15'),
(450, 'View Academic Year', 'admin', 7, 'View', 11, 107, 0, '2023-12-06 10:41:14', '2023-12-06 11:40:15'),
(451, 'Update Academic Year', 'admin', 8, 'Update', 11, 107, 0, '2023-12-06 10:41:14', '2023-12-06 11:40:15'),
(452, 'Delete Academic Year', 'admin', 9, 'Delete', 11, 107, 0, '2023-12-06 10:41:14', '2023-12-06 11:40:15'),
(453, 'Create Inventory Rectification', 'admin', 6, 'Create', 47, 108, 0, '2023-12-08 04:47:44', '2023-12-08 04:47:44'),
(454, 'View Inventory Rectification', 'admin', 7, 'View', 47, 108, 0, '2023-12-08 04:47:44', '2023-12-08 04:47:44'),
(455, 'Update Inventory Rectification', 'admin', 8, 'Update', 47, 108, 0, '2023-12-08 04:47:45', '2023-12-08 04:47:45'),
(456, 'Delete Inventory Rectification', 'admin', 9, 'Delete', 47, 108, 0, '2023-12-08 04:47:45', '2023-12-08 04:47:45'),
(457, 'Create Goods Receipt', 'admin', 6, 'Create', 47, 109, 0, '2023-12-08 04:49:48', '2023-12-08 04:49:48'),
(458, 'View Goods Receipt', 'admin', 7, 'View', 47, 109, 0, '2023-12-08 04:49:48', '2023-12-08 04:49:48'),
(459, 'Update Goods Receipt', 'admin', 8, 'Update', 47, 109, 0, '2023-12-08 04:49:49', '2023-12-08 04:49:49'),
(460, 'Delete Goods Receipt', 'admin', 9, 'Delete', 47, 109, 0, '2023-12-08 04:49:49', '2023-12-08 04:49:49'),
(461, 'Create Inventory', 'admin', 6, 'Create', 51, 111, 0, '2023-12-08 08:02:20', '2023-12-08 08:02:20'),
(462, 'View Inventory', 'admin', 7, 'View', 51, 111, 0, '2023-12-08 08:02:20', '2023-12-08 08:02:20'),
(463, 'Update Inventory', 'admin', 8, 'Update', 51, 111, 0, '2023-12-08 08:02:21', '2023-12-08 08:02:21'),
(464, 'Delete Inventory', 'admin', 9, 'Delete', 51, 111, 0, '2023-12-08 08:02:21', '2023-12-08 08:02:21'),
(465, 'Create Pricing', 'admin', 6, 'Create', 52, 114, 0, '2023-12-11 04:53:22', '2023-12-11 04:53:42'),
(466, 'View Pricing', 'admin', 7, 'View', 52, 114, 0, '2023-12-11 04:53:22', '2023-12-11 04:53:42'),
(467, 'Update Pricing', 'admin', 8, 'Update', 52, 114, 0, '2023-12-11 04:53:22', '2023-12-11 04:53:42'),
(468, 'Delete Pricing', 'admin', 9, 'Delete', 52, 114, 0, '2023-12-11 04:53:22', '2023-12-11 04:53:42'),
(469, 'Create Inventory (Report)', 'admin', 6, 'Create', 47, 115, 0, '2023-12-11 10:43:30', '2023-12-12 05:08:53'),
(470, 'View Inventory (Report)', 'admin', 7, 'View', 47, 115, 0, '2023-12-11 10:43:30', '2023-12-12 05:08:53'),
(471, 'Update Inventory (Report)', 'admin', 8, 'Update', 47, 115, 0, '2023-12-11 10:43:30', '2023-12-12 05:08:53'),
(472, 'Delete Inventory (Report)', 'admin', 9, 'Delete', 47, 115, 0, '2023-12-11 10:43:30', '2023-12-12 05:08:53'),
(473, 'Create Goods Issue', 'admin', 6, 'Create', 47, 110, 0, '2023-12-12 12:51:29', '2023-12-12 12:51:29'),
(474, 'View Goods Issue', 'admin', 7, 'View', 47, 110, 0, '2023-12-12 12:51:29', '2023-12-12 12:51:29'),
(475, 'Update Goods Issue', 'admin', 8, 'Update', 47, 110, 0, '2023-12-12 12:51:29', '2023-12-12 12:51:29'),
(476, 'Delete Goods Issue', 'admin', 9, 'Delete', 47, 110, 0, '2023-12-12 12:51:29', '2023-12-12 12:51:29'),
(477, 'Create Outlet Addition', 'admin', 6, 'Create', 53, 116, 0, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(478, 'View Outlet Addition', 'admin', 7, 'View', 53, 116, 0, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(479, 'Update Outlet Addition', 'admin', 8, 'Update', 53, 116, 0, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(480, 'Delete Outlet Addition', 'admin', 9, 'Delete', 53, 116, 0, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(481, 'Create Warehouse Management', 'admin', 6, 'Create', 11, 53, 0, '2023-12-20 07:00:35', '2023-12-20 07:00:35'),
(482, 'View Warehouse Management', 'admin', 7, 'View', 11, 53, 0, '2023-12-20 07:00:35', '2023-12-20 07:00:35'),
(483, 'Update Warehouse Management', 'admin', 8, 'Update', 11, 53, 0, '2023-12-20 07:00:35', '2023-12-20 07:00:35'),
(484, 'Delete Warehouse Management', 'admin', 9, 'Delete', 11, 53, 0, '2023-12-20 07:00:35', '2023-12-20 07:00:35'),
(485, 'Create Bin Management', 'admin', 6, 'Create', 11, 118, 0, '2023-12-20 07:09:59', '2023-12-20 07:09:59'),
(486, 'View Bin Management', 'admin', 7, 'View', 11, 118, 0, '2023-12-20 07:09:59', '2023-12-20 07:09:59'),
(487, 'Update Bin Management', 'admin', 8, 'Update', 11, 118, 0, '2023-12-20 07:09:59', '2023-12-20 07:09:59'),
(488, 'Delete Bin Management', 'admin', 9, 'Delete', 11, 118, 0, '2023-12-20 07:09:59', '2023-12-20 07:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `per_day_inventory`
--

DROP TABLE IF EXISTS `per_day_inventory`;
CREATE TABLE IF NOT EXISTS `per_day_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `bin_id` int(11) NOT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `sku` varchar(50) NOT NULL,
  `item_code` varchar(110) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `unit_price` varchar(50) DEFAULT NULL,
  `remarks` varchar(210) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `per_day_inventory`
--

INSERT INTO `per_day_inventory` (`id`, `warehouse_id`, `bin_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `unit_price`, `remarks`, `fy_year`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 12, '435', '2023-01-05', '2024-01-10', '27-18-32-28', '00012', '30', '125', NULL, '2023-24', 6, 1, '2024-01-02 10:39:12', '2024-01-02 10:39:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
CREATE TABLE IF NOT EXISTS `pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pricing_master_id` int(11) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `selling_price` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `pricing_master_id`, `sku`, `item_code`, `selling_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '25-17-30-27', '67983439', '60', '2023-12-11 07:42:26', '2023-12-11 09:32:26', NULL),
(2, 1, '25-17-28-27', '654654', '100', '2023-12-11 07:42:26', '2023-12-11 07:42:26', NULL),
(6, 2, '25-17-30-27', '67983439', '750', '2023-12-11 10:08:43', '2023-12-11 10:09:49', NULL),
(7, 2, '25-17-28-27', '654654', '550', '2023-12-11 10:08:43', '2023-12-11 10:08:43', NULL),
(12, 5, '25-17-30-27', '67983439', '300', '2023-12-11 10:18:06', '2023-12-11 10:18:09', '2023-12-11 10:18:09'),
(13, 5, '25-17-28-27', '654654', '200', '2023-12-11 10:18:06', '2023-12-11 10:18:09', '2023-12-11 10:18:09'),
(14, 1, '25-17-30-27', '68603592', '200', '2023-12-13 10:14:00', '2023-12-13 10:14:00', NULL),
(15, 6, '25-17-30-27', '67983439', '200', '2023-12-14 02:18:09', '2023-12-14 02:18:09', NULL),
(16, 6, '26-17-31-27', '68603592', '676', '2023-12-14 02:18:29', '2023-12-14 02:18:29', NULL),
(17, 6, '25-17-28-27', '654654', '877', '2023-12-14 02:18:48', '2023-12-14 02:18:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_master`
--

DROP TABLE IF EXISTS `pricing_master`;
CREATE TABLE IF NOT EXISTS `pricing_master` (
  `pricing_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `pricing_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pricing_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing_master`
--

INSERT INTO `pricing_master` (`pricing_master_id`, `pricing_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dummy Data', '2023-12-11 06:20:21', '2023-12-11 06:20:21', NULL),
(2, 'Test Data', '2023-12-11 08:01:35', '2023-12-11 08:01:35', NULL),
(5, 'ertd', '2023-12-11 10:18:01', '2023-12-11 10:18:09', '2023-12-11 10:18:09'),
(6, 'Akshay\'s Pricing', '2023-12-14 02:00:54', '2023-12-14 02:00:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_revision`
--

DROP TABLE IF EXISTS `products_revision`;
CREATE TABLE IF NOT EXISTS `products_revision` (
  `product_revision_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `item_code` varchar(200) DEFAULT NULL,
  `item_description` text,
  `consumer_description` text,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `buom_pack_size` varchar(200) DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `unit_case` varchar(255) DEFAULT NULL,
  `hsncode_id` int(11) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `expiry_date` varchar(200) DEFAULT NULL,
  `shelf_life_number` int(11) DEFAULT NULL,
  `shelf_life` varchar(200) DEFAULT NULL,
  `sourcing` varchar(200) DEFAULT NULL,
  `case_pallet` varchar(200) DEFAULT NULL,
  `layer_pallet` varchar(200) DEFAULT NULL,
  `dimensions` varchar(200) DEFAULT NULL,
  `dimensions_unit_pack` varchar(200) DEFAULT NULL,
  `dimensions_length` varchar(200) DEFAULT NULL,
  `dimensions_width` varchar(200) DEFAULT NULL,
  `dimensions_height` varchar(200) DEFAULT NULL,
  `dimensions_net_weight` varchar(255) DEFAULT NULL,
  `dimensions_gross_weight` varchar(255) DEFAULT NULL,
  `dimensions_length_uom_id` int(11) DEFAULT NULL,
  `dimensions_width_uom_id` int(11) DEFAULT NULL,
  `dimensions_height_uom_id` int(11) DEFAULT NULL,
  `dimensions_net_uom_id` int(11) DEFAULT NULL,
  `dimensions_gross_weight_uom_id` int(11) DEFAULT NULL,
  `ean_barcode` varchar(255) DEFAULT NULL,
  `mrp` varchar(100) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT '1',
  `product_thumb` text,
  `product_desc` text,
  `consumer_desc` text,
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_revision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_revision`
--

INSERT INTO `products_revision` (`product_revision_id`, `product_item_id`, `item_name`, `item_type_id`, `item_code`, `item_description`, `consumer_description`, `brand_id`, `category_id`, `sub_category_id`, `variant`, `buom_pack_size`, `uom_id`, `unit_case`, `hsncode_id`, `batch`, `expiry_date`, `shelf_life_number`, `shelf_life`, `sourcing`, `case_pallet`, `layer_pallet`, `dimensions`, `dimensions_unit_pack`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_net_weight`, `dimensions_gross_weight`, `dimensions_length_uom_id`, `dimensions_width_uom_id`, `dimensions_height_uom_id`, `dimensions_net_uom_id`, `dimensions_gross_weight_uom_id`, `ean_barcode`, `mrp`, `gst_id`, `visibility`, `product_thumb`, `product_desc`, `consumer_desc`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, 'Multigrain 200 gms', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '6', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-11-16 11:47:24', '2023-11-16 11:47:24', NULL),
(2, 24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, 'Achari Masti 130 Gms', '130', 2, '96', 876547, 'Batch 2', '2024-08-10', 9, 'month', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '2023-11-16 11:47:36', '2023-11-16 11:47:36', NULL),
(3, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, 'Multigrain 200 gms', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-11-16 11:53:42', '2023-11-16 11:53:42', NULL),
(4, 28, NULL, 3, 'Culpa omnis eligend', NULL, NULL, 26, 17, 30, 'Asperiores fugit mi', 'Est magni odit conse', 9, 'Debitis tenetur cons', 876548, 'Deleniti adipisci qu', '1989-08-28', 266, 'days', 'Esse est eveniet ha', 'Recusandae Nesciunt', 'Dolorum sequi quaera', NULL, 'Quasi omnis molestia', 'Doloremque odit corp', 'Nostrum qui mollit o', 'Consequatur Reicien', 'Deserunt rerum dolor', 'Deserunt repellendus', NULL, NULL, NULL, NULL, NULL, 'Rem minus est in ani', 'In iste consectetur', 4, 1, NULL, 'In nisi numquam maio', 'Martin David', NULL, '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(5, 24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, '27', '130', 2, '96', 876547, 'Batch 2', '2024-08-10', 9, 'month', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '2023-12-04 05:21:22', '2023-12-04 05:21:22', NULL),
(6, 24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, '27', '130', 2, '96', 876547, 'Batch 2', '2024-08-10', 9, 'month', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '2023-12-04 05:22:50', '2023-12-04 05:22:50', NULL),
(7, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:23:08', '2023-12-04 05:23:08', NULL),
(8, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:32:38', '2023-12-04 05:32:38', NULL),
(9, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:32:55', '2023-12-04 05:32:55', NULL),
(10, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:32:58', '2023-12-04 05:32:58', NULL),
(11, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:33:35', '2023-12-04 05:33:35', NULL),
(12, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:34:09', '2023-12-04 05:34:09', NULL),
(13, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:34:40', '2023-12-04 05:34:40', NULL),
(14, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:34:48', '2023-12-04 05:34:48', NULL),
(15, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:35:16', '2023-12-04 05:35:16', NULL),
(16, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:35:30', '2023-12-04 05:35:30', NULL),
(17, 24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, '27', '130', 2, '96', 876547, 'Batch 2', '2024-08-10', 9, 'month', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '2023-12-04 05:35:34', '2023-12-04 05:35:34', NULL),
(18, 23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', 876546, 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '2023-12-04 05:35:36', '2023-12-04 05:35:36', NULL),
(19, 25, NULL, 1, 'Consequat Ea iste c', NULL, NULL, 24, 17, 30, '27', 'Velit quam labore ni', 8, 'Explicabo Assumenda', 876543, 'Labore qui molestiae', '1975-01-01', 368, 'month', 'Id accusamus sint ha', 'Soluta fugit quae v', 'Do est alias cillum', NULL, 'Anim modi sit dolor', 'Est sapiente qui ha', 'Est quis in aut haru', 'Quia natus qui aute', 'Suscipit excepturi c', 'Sequi sit est sapie', NULL, NULL, NULL, NULL, NULL, 'Excepteur ratione ut', 'Ea non obcaecati har', 2, 1, NULL, 'Qui error dolore qui', 'Kirsten Moran', NULL, '2023-12-04 05:39:35', '2023-12-04 05:39:35', NULL),
(20, 26, NULL, 1, 'Consequat Ea iste c', NULL, NULL, 24, 17, 30, '27', 'Velit quam labore ni', 8, 'Explicabo Assumenda', 876543, 'Labore qui molestiae', '1975-01-01', 368, 'month', 'Id accusamus sint ha', 'Soluta fugit quae v', 'Do est alias cillum', NULL, 'Anim modi sit dolor', 'Est sapiente qui ha', 'Est quis in aut haru', 'Quia natus qui aute', 'Suscipit excepturi c', 'Sequi sit est sapie', NULL, NULL, NULL, NULL, NULL, 'Excepteur ratione ut', 'Ea non obcaecati har', 2, 1, NULL, 'Qui error dolore qui', 'Kirsten Moran', NULL, '2023-12-04 05:41:12', '2023-12-04 05:41:12', NULL),
(21, 27, NULL, 2, 'Nisi aliquip dolor d', NULL, NULL, 24, 16, 28, '27', 'Illum atque lorem u', 1, 'Rerum ipsum eveniet', 876548, 'Rerum earum velit c', '1988-10-03', 537, 'month', 'Velit blanditiis of', 'Ratione minus dolor', 'Non eum non ducimus', NULL, 'Enim fuga In error', 'Perspiciatis enim o', 'Ea magni officia tem', 'Nisi blanditiis ut a', 'Corporis ea sint omn', 'Magnam eum reprehend', NULL, NULL, NULL, NULL, NULL, 'Blanditiis ab maxime', 'Corporis culpa ex s', 1, 1, NULL, 'Doloremque lorem cil', 'India Ingram', NULL, '2023-12-04 05:41:18', '2023-12-04 05:41:18', NULL),
(22, 27, NULL, 2, 'Nisi aliquip dolor d', NULL, NULL, 24, 16, 28, '27', 'Illum atque lorem u', 1, 'Rerum ipsum eveniet', 876548, 'Rerum earum velit c', '1988-10-03', 537, 'month', 'Velit blanditiis of', 'Ratione minus dolor', 'Non eum non ducimus', NULL, 'Enim fuga In error', 'Perspiciatis enim o', 'Ea magni officia tem', 'Nisi blanditiis ut a', 'Corporis ea sint omn', 'Magnam eum reprehend', NULL, NULL, NULL, NULL, NULL, 'Blanditiis ab maxime', 'Corporis culpa ex s', 1, 1, NULL, 'Doloremque lorem cil', 'India Ingram', NULL, '2023-12-04 05:42:11', '2023-12-04 05:42:11', NULL),
(23, 28, NULL, 1, 'Et consequuntur in o', NULL, NULL, 24, 17, 28, '27', 'Est officiis id dolo', 10, 'Ea amet modi sit c', 876547, 'Quidem reprehenderit', '1973-09-27', 357, 'days', 'Irure eos atque et', 'Hic rem quo consequa', 'Voluptatum optio pe', NULL, 'Officiis asperiores', 'Labore iusto enim pa', 'Amet officiis quae', 'Voluptatem Sunt lab', 'Incidunt ratione re', 'Consequatur omnis vo', NULL, NULL, NULL, NULL, NULL, 'Doloribus a at dicta', 'Delectus est dolore', 3, 1, '1701668544.png', 'Est officiis optio', 'Rigel Sandoval', NULL, '2023-12-04 05:42:24', '2023-12-04 05:42:24', NULL),
(24, 29, NULL, 2, 'Itaque modi quas ea', NULL, NULL, 24, 16, 31, '27', 'Quo amet assumenda', 8, 'Et quasi amet enim', 876548, 'Accusamus reiciendis', '2008-05-28', 677, 'month', 'Alias cillum volupta', 'Consequatur eum eiu', 'Dolores tempore cor', NULL, 'Quae est aliquam lau', 'Et ut ducimus aut f', 'Ipsam perferendis ei', 'Ut voluptatem sint', 'Suscipit quidem ut m', 'Natus ipsum ut dolor', NULL, NULL, NULL, NULL, NULL, 'Autem id ut facere q', 'Amet quidem quod es', 2, 1, NULL, 'Veniam laboriosam', 'Orla Harrington', NULL, '2023-12-04 05:42:30', '2023-12-04 05:42:30', NULL),
(25, 30, NULL, 2, 'Fugit porro quis in', NULL, NULL, 25, 17, 28, '27', 'Odio sunt do evenie', 6, 'Nisi ducimus facere', 876545, 'In non vel nulla mag', '1990-04-18', 890, 'month', 'Facere in aut tempor', 'Est inventore exerci', 'Cupidatat earum elig', NULL, 'Autem quo anim amet', 'Fugit voluptas sed', 'Labore rerum sapient', 'Ut cumque saepe eum', 'Exercitationem sint', 'Autem quaerat ut dol', NULL, NULL, NULL, NULL, NULL, 'Enim veritatis excep', 'Architecto doloribus', 3, 1, NULL, 'Laboriosam eum aut', 'Herrod Hahn', NULL, '2023-12-04 05:43:08', '2023-12-04 05:43:08', NULL),
(26, 30, NULL, 2, 'Fugit porro quis in', NULL, NULL, 25, 17, 28, '27', 'Odio sunt do evenie', 6, 'Nisi ducimus facere', 876545, 'In non vel nulla mag', '1990-04-18', 890, 'month', 'Facere in aut tempor', 'Est inventore exerci', 'Cupidatat earum elig', NULL, 'Autem quo anim amet', 'Fugit voluptas sed', 'Labore rerum sapient', 'Ut cumque saepe eum', 'Exercitationem sint', 'Autem quaerat ut dol', NULL, NULL, NULL, NULL, NULL, 'Enim veritatis excep', 'Architecto doloribus', 3, 1, '1701668599.png', 'Laboriosam eum aut', 'Herrod Hahn', NULL, '2023-12-04 05:43:19', '2023-12-04 05:43:19', NULL),
(27, 24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, '27', '130', 2, '96', 876547, 'Batch 2', '2024-08-10', 180, 'days', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '2023-12-08 11:22:51', '2023-12-08 11:22:51', NULL),
(28, 30, NULL, 2, '654654', NULL, NULL, 25, 17, 28, '27', 'Odio sunt do evenie', 6, 'Nisi ducimus facere', 876545, 'In non vel nulla mag', '1990-04-18', 890, 'month', 'Facere in aut tempor', 'Est inventore exerci', 'Cupidatat earum elig', NULL, 'Autem quo anim amet', 'Fugit voluptas sed', 'Labore rerum sapient', 'Ut cumque saepe eum', 'Exercitationem sint', 'Autem quaerat ut dol', NULL, NULL, NULL, NULL, NULL, 'Enim veritatis excep', 'Architecto doloribus', 3, 1, '1701668599.png', 'Laboriosam eum aut', 'Herrod Hahn', NULL, '2023-12-11 07:15:42', '2023-12-11 07:15:42', NULL),
(29, 31, NULL, 3, '00011', NULL, NULL, 27, 18, 32, '28', '25', 2, '5', 876549, NULL, NULL, 10, 'month', 'not getting', '50', '5', NULL, '1', '5.5', '3.5', '122', '1.2', '2.5', NULL, NULL, NULL, NULL, NULL, '0011020405', '100', 1, 1, '1702534366.jpg', 'Testy Choco combopack  10 x 15gm', 'Testy Choco mg old 10 x 15gm', NULL, '2023-12-14 03:42:46', '2023-12-14 03:42:46', NULL),
(30, 32, NULL, 2, '00012', NULL, NULL, 27, 18, 32, '28', '30', 4, '3', 876551, NULL, NULL, 50, 'days', 'no Idea', '40', '3', NULL, '4', '3.3', '4.5', '118', '5.8', '4.3', NULL, NULL, NULL, NULL, NULL, '0011020406', '125', 1, 1, '1702535595.jpg', 'Testy Choco1 combopack  15 x 50gm', 'Testy Choco1 mg old 15 x 50gm', NULL, '2023-12-14 04:03:15', '2023-12-14 04:03:15', NULL),
(31, 32, NULL, 2, '00012', NULL, NULL, 27, 18, 32, '28', '30', 4, '3', 876551, NULL, NULL, 50, 'days', 'no Idea', '40', '3', NULL, '4', '3.3', '4.5', '118', '5.8', '4.3', NULL, NULL, NULL, NULL, NULL, '0011020406', '125', 1, 1, '1702535595.jpg', 'Testy Choco1 combopack  15 x 50gm', 'Testy Choco1 mg old 15 x 50gm', NULL, '2023-12-14 04:04:02', '2023-12-14 04:04:02', NULL),
(32, 33, NULL, 3, '000145', NULL, NULL, 28, 19, 31, '29', '25', 2, '5', 876548, NULL, NULL, 10, 'month', 'abcdef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1702535721.jpg', 'Cream N Onion Lays 10 x 15gm', 'Cream N Onion Lays 10 x 15gm', NULL, '2023-12-14 04:05:21', '2023-12-14 04:05:21', NULL),
(33, 33, NULL, 3, '000145', NULL, NULL, 28, 19, 31, '29', '25', 2, '5', 876550, NULL, NULL, 10, 'month', 'abcdef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1702535721.jpg', 'Cream N Onion Lays 10 x 15gm', 'Cream N Onion Lays 10 x 15gm', NULL, '2023-12-14 04:54:29', '2023-12-14 04:54:29', NULL),
(34, 34, NULL, 3, '000263', NULL, NULL, 25, 18, 30, '27', '100', 2, '20', NULL, NULL, NULL, 30, 'month', 'hiiii', NULL, '5', NULL, '1', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '002345', '100', 1, 1, '1702539945.jpg', 'Ragi Bytes 10 x 15', 'Ragi Bytes', NULL, '2023-12-14 05:15:45', '2023-12-14 05:15:45', NULL),
(35, 35, NULL, 1, '00013', NULL, NULL, 27, 18, 32, '28', '35', 2, '5', 100101, NULL, NULL, 27, 'days', 'no Idea.', '35', '4', NULL, '20', '8.7', '7.5', '98', '3.5', '4', NULL, NULL, NULL, NULL, NULL, '00110204067', '120', 1, 1, '1702539946.png', 'Testy Choco2 combo pack  20 x 55gm', 'Testy Choco2 mg old/new 20 x 55 gm', NULL, '2023-12-14 05:15:46', '2023-12-14 05:15:46', NULL),
(36, 35, NULL, 1, '00013', NULL, NULL, 27, 18, 32, '28', '35', 2, '5', NULL, NULL, NULL, 27, 'days', 'no Idea.', '35', '4', NULL, '20', '8.7', '7.5', '98', '3.5', '4', NULL, NULL, NULL, NULL, NULL, '00110204067', '120', 1, 1, '1702539946.png', 'Testy Choco2 combo pack  20 x 55gm', 'Testy Choco2 mg old/new 20 x 55 gm', NULL, '2023-12-14 05:16:25', '2023-12-14 05:16:25', NULL),
(37, 35, NULL, 1, '00013', NULL, NULL, 27, 18, 32, '28', '35', 2, '5', NULL, NULL, NULL, 27, 'days', 'no Idea.', '35', '4', NULL, '20', '8.7', '7.5', '98', '3.5', '4', NULL, NULL, NULL, NULL, NULL, '00110204067', '120', 1, 1, '1702539946.png', 'Testy Choco2 combo pack  20 x 55gm', 'Testy Choco2 mg old/new 20 x 55 gm', NULL, '2023-12-14 05:18:23', '2023-12-14 05:18:23', NULL),
(38, 36, NULL, 3, '4560', NULL, NULL, 25, 18, 30, '27', '25', 2, '5', 123400, NULL, NULL, 10, 'month', 'hiiii', '50', '5', NULL, '1', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '7890', '100', 1, 1, NULL, 'Ragi Bytes 10 x 15', 'Ragi Bytes', NULL, '2023-12-14 05:22:21', '2023-12-14 05:22:21', NULL),
(39, 32, NULL, 2, '00012', NULL, NULL, 27, 18, 32, '28', '30', 4, '3', 876551, NULL, NULL, 50, 'days', 'no Idea', '40', '3', NULL, '4', '3.3', '4.5', '118', '5.8', '4.3', NULL, NULL, NULL, NULL, NULL, '0011020406', '125', 1, 1, '1702535595.jpg', 'Testy Choco1 combopack  15 x 50gm', 'Testy Choco1 mg old 15 x 50gm', NULL, '2023-12-14 06:49:29', '2023-12-14 06:49:29', NULL),
(40, 32, NULL, 2, '00012', NULL, NULL, 27, 18, 32, '28', '30', 4, '3', 876551, NULL, NULL, 50, 'days', 'no Idea', '40', '3', NULL, '4', '3.3', '4.5', '118', '5.8', '4.3', NULL, NULL, NULL, NULL, NULL, '0011020406', '125', 1, 1, '1702535595.jpg', 'Testy Choco1 combopack  15 x 50gm', 'Testy Choco1 mg old 15 x 50gm', NULL, '2023-12-14 07:22:19', '2023-12-14 07:22:19', NULL),
(41, 37, NULL, 2, '000789', NULL, NULL, 24, 16, 33, '31', '100', 4, '50', 789123456, NULL, NULL, 1, 'month', 'Testing', '50', '10', NULL, '5', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '002314', '5000', 1, 1, '1702555750.jpg', 'Papermaking 10g', 'Papermaking', NULL, '2023-12-14 09:39:10', '2023-12-14 09:39:10', NULL),
(42, 38, NULL, 3, '2001', NULL, NULL, 27, 18, 32, '28', '5', 2, '10', 10908789, NULL, NULL, 10, 'days', 'checking', '10', '5', NULL, '5', '3.6', '2.5', '8.8', '5', '6', NULL, NULL, NULL, NULL, NULL, '01040708', '250', 1, 1, '1702557115.jpg', 'Haldiram chips 1 x 25gm', 'Haldiram 1 x 25gm', NULL, '2023-12-14 10:01:55', '2023-12-14 10:01:55', NULL),
(43, 37, NULL, 2, '000789', NULL, NULL, 24, 16, 33, '31', '100', 4, '50', 876545, NULL, NULL, 1, 'month', 'Testing', '50', '10', NULL, '5', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '002314', '5000', 1, 1, '1702555750.jpg', 'Papermaking 10g', 'Papermaking', NULL, '2023-12-14 10:10:12', '2023-12-14 10:10:12', NULL),
(44, 39, NULL, 2, '2002', NULL, NULL, 30, 21, 34, '32', '10', 2, '25', 232323, NULL, NULL, 7, 'days', '50', '5', '3', NULL, '5', '9.8', '8.9', '7.9', '15', '16', NULL, NULL, NULL, NULL, NULL, '0011020477', '250', 1, 1, '1702615101.jpg', 'Dabar Born Vita 1 x 200gm', 'Born Vita 1 x 200gm', NULL, '2023-12-15 02:08:21', '2023-12-15 02:08:21', NULL),
(45, 35, NULL, 1, '00013', NULL, NULL, 27, 18, 32, '28', '35', 2, '5', 876543, NULL, NULL, 27, 'days', 'no Idea.', '35', '4', NULL, '20', '8.7', '7.5', '98', '3.5', '4', NULL, NULL, NULL, NULL, NULL, '00110204067', '120', 1, 1, '1702539946.png', 'Testy Choco2 combo pack  20 x 55gm', 'Testy Choco2 mg old/new 20 x 55 gm', NULL, '2023-12-16 07:57:33', '2023-12-16 07:57:33', NULL),
(46, 40, NULL, 2, '9763', NULL, NULL, 31, 22, 35, '33', '1', 4, '48', 9811, NULL, NULL, 12, 'days', '1010', '23', '10', NULL, '10', '5', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '1010101010', '1250', 1, 1, '1702899716.jpg', 'house product one 1 x 48', 'house one 1 x 48', NULL, '2023-12-18 09:11:56', '2023-12-18 09:11:56', NULL),
(47, 41, NULL, 2, '8766', NULL, NULL, 27, 18, 32, '28', '10', 1, '30', 998989, NULL, NULL, 2, 'days', '30', '30', '30', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '87668766', '350', 1, 1, '1702987760.jpg', 'New Icecream 1 x 30', 'Icecream 1 x 30', NULL, '2023-12-19 09:39:20', '2023-12-19 09:39:20', NULL),
(48, 42, NULL, 3, '12300', NULL, NULL, 31, 17, 31, '29', 'Quo sunt similique o', 1, 'Dolorem velit corpor', 7890, NULL, NULL, 427, 'month', 'Eum et repudiandae s', 'Ut omnis sit velit i', 'Accusantium nemo com', NULL, 'Ut sunt commodo lore', 'Itaque voluptas qui', 'Placeat est recusa', 'Consequatur nisi eu', 'Commodo natus omnis', 'Dolores distinctio', NULL, NULL, NULL, NULL, NULL, 'Consectetur eos mo', 'Elit tempor ad odio', 2, 1, NULL, 'Eveniet quo distinc', 'Kimberley Walsh', NULL, '2023-12-21 05:46:58', '2023-12-21 05:46:58', NULL),
(49, 42, NULL, 3, '12300', NULL, NULL, 31, 17, 31, '29', 'Quo sunt similique o', 1, 'Dolorem velit corpor', 7890, NULL, NULL, 427, 'month', 'Eum et repudiandae s', 'Ut omnis sit velit i', 'Accusantium nemo com', NULL, 'Ut sunt commodo lore', 'Itaque voluptas qui', 'Placeat est recusa', 'Consequatur nisi eu', 'Commodo natus omnis', 'Dolores distinctio', NULL, NULL, NULL, NULL, NULL, 'Consectetur eos mo', '854', 2, 1, NULL, 'Eveniet quo distinc', 'Kimberley Walsh', NULL, '2023-12-21 05:48:19', '2023-12-21 05:48:19', NULL),
(50, 42, NULL, 3, '12300', NULL, NULL, 31, 17, 31, '29', 'Quo sunt similique o', 1, 'Dolorem velit corpor', 7890, NULL, NULL, 427, 'month', 'Eum et repudiandae s', 'Ut omnis sit velit i', 'Accusantium nemo com', NULL, 'Ut sunt commodo lore', 'Itaque voluptas qui', 'Placeat est recusa', 'Consequatur nisi eu', 'Commodo natus omnis', 'Dolores distinctio', NULL, NULL, NULL, NULL, NULL, 'Consectetur eos mo', '854', 2, 1, NULL, 'Eveniet quo distinc', 'Kimberley Walsh', NULL, '2023-12-21 06:12:23', '2023-12-21 06:12:23', NULL),
(51, 42, NULL, 3, '12300', NULL, NULL, 31, 17, 31, '29', 'Quo sunt similique o', 1, '56', 7890, NULL, NULL, 427, 'month', 'Eum et repudiandae s', 'Ut omnis sit velit i', 'Accusantium nemo com', NULL, 'Ut sunt commodo lore', 'Itaque voluptas qui', 'Placeat est recusa', 'Consequatur nisi eu', 'Commodo natus omnis', 'Dolores distinctio', NULL, NULL, NULL, NULL, NULL, 'Consectetur eos mo', '854', 2, 1, NULL, 'Eveniet quo distinc', 'Kimberley Walsh', NULL, '2023-12-21 06:47:34', '2023-12-21 06:47:34', NULL),
(52, 43, NULL, 3, '310', NULL, NULL, 32, 23, 36, '27', '10', 4, '10', 331100, NULL, NULL, 2, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '310310310', '200', 1, 1, '1703220942.webp', 'Para Product one Desc 5 x 5', 'Para Product one  5 x 5', NULL, '2023-12-22 02:25:42', '2023-12-22 02:25:42', NULL),
(53, 43, NULL, 3, '310', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', 310310, NULL, NULL, 2, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '310310310', '200', 1, 1, '1703220942.webp', 'Para Product one Desc 5 x 5', 'Para Product one  5 x 5', NULL, '2023-12-22 02:28:27', '2023-12-22 02:28:27', NULL),
(54, 43, NULL, 3, '310', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', 310310, NULL, NULL, 2, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '310310310', '200', 1, 1, '1703220942.webp', 'Para Product one Desc 5 x 5', 'Para Product one  5 x 5', NULL, '2023-12-22 02:28:40', '2023-12-22 02:28:40', NULL),
(55, 44, NULL, 3, '311', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', 310310, NULL, NULL, 3, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '311311311', '250', 1, 1, '1703221222.jpg', 'Para Product two Desc 6 x 6', 'Para Product two  6 x 6', NULL, '2023-12-22 02:30:22', '2023-12-22 02:30:22', NULL),
(56, 45, NULL, 3, '312', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', 3123, NULL, NULL, 4, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '312312312', '300', 1, 1, '1703223164.jpg', 'Para Product three  Desc 7 x 7', 'Para Product three  7 x 7', NULL, '2023-12-22 03:02:44', '2023-12-22 03:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_item_sku_master`
--

DROP TABLE IF EXISTS `product_item_sku_master`;
CREATE TABLE IF NOT EXISTS `product_item_sku_master` (
  `product_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(200) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `item_code` varchar(200) DEFAULT NULL,
  `item_description` text,
  `consumer_description` text,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `buom_pack_size` varchar(200) DEFAULT NULL,
  `uom_id` int(11) DEFAULT NULL,
  `unit_case` varchar(255) DEFAULT NULL,
  `hsncode_id` varchar(100) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `expiry_date` varchar(200) DEFAULT NULL,
  `shelf_life_number` int(11) DEFAULT NULL,
  `shelf_life` varchar(200) DEFAULT NULL,
  `sourcing` varchar(200) DEFAULT NULL,
  `case_pallet` varchar(200) DEFAULT NULL,
  `layer_pallet` varchar(200) DEFAULT NULL,
  `dimensions` varchar(200) DEFAULT NULL,
  `dimensions_unit_pack` varchar(200) DEFAULT NULL,
  `dimensions_length` varchar(200) DEFAULT NULL,
  `dimensions_width` varchar(200) DEFAULT NULL,
  `dimensions_height` varchar(200) DEFAULT NULL,
  `dimensions_net_weight` varchar(255) DEFAULT NULL,
  `dimensions_gross_weight` varchar(255) DEFAULT NULL,
  `dimensions_length_uom_id` int(11) DEFAULT NULL,
  `dimensions_width_uom_id` int(11) DEFAULT NULL,
  `dimensions_height_uom_id` int(11) DEFAULT NULL,
  `dimensions_net_uom_id` int(11) DEFAULT NULL,
  `dimensions_gross_weight_uom_id` int(11) DEFAULT NULL,
  `ean_barcode` varchar(255) DEFAULT NULL,
  `mrp` varchar(100) DEFAULT NULL,
  `gst_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT '1',
  `product_thumb` text,
  `product_desc` text,
  `consumer_desc` text,
  `storage_location_id` varchar(50) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_item_sku_master`
--

INSERT INTO `product_item_sku_master` (`product_item_id`, `item_name`, `item_type_id`, `item_code`, `item_description`, `consumer_description`, `brand_id`, `category_id`, `sub_category_id`, `variant`, `buom_pack_size`, `uom_id`, `unit_case`, `hsncode_id`, `batch`, `expiry_date`, `shelf_life_number`, `shelf_life`, `sourcing`, `case_pallet`, `layer_pallet`, `dimensions`, `dimensions_unit_pack`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_net_weight`, `dimensions_gross_weight`, `dimensions_length_uom_id`, `dimensions_width_uom_id`, `dimensions_height_uom_id`, `dimensions_net_uom_id`, `dimensions_gross_weight_uom_id`, `ean_barcode`, `mrp`, `gst_id`, `visibility`, `product_thumb`, `product_desc`, `consumer_desc`, `storage_location_id`, `sku`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, NULL, 3, '67983439', NULL, NULL, 25, 17, 30, '27', '200', 2, '12', '876546', 'Batch 2', '2024-09-11', 12, 'month', 'Kandla', '240', '10', NULL, '1', '17.5', '13.5', '16', '2.4', '2.5', NULL, NULL, NULL, NULL, NULL, '9713740297299', '149', 1, 1, '1698159530.jpg', 'Kellogs Chocos Multigrain 12X200 gms', 'Kellogs Chocos MG new 12 x 200g', NULL, '25-17-30-27', '2023-10-24 14:58:51', '2023-12-04 05:32:38', NULL),
(24, NULL, 3, '68603592', NULL, NULL, 26, 17, 31, '27', '130', 2, '96', '876547', 'Batch 2', '2024-08-10', 180, 'days', 'UEBV', '240', '6', NULL, '1', '15.5', '13.5', '15', '12.48', '13.5', NULL, NULL, NULL, NULL, NULL, '67349827399', '20', 1, 1, '1698500446.jpg', 'Bingo Mad Angles Achari Masti 96 X 130 Gms', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', NULL, '26-17-31-27', '2023-10-28 13:40:47', '2023-12-08 11:22:51', NULL),
(29, NULL, 2, 'Itaque modi quas ea', NULL, NULL, 24, 16, 31, '27', 'Quo amet assumenda', 8, 'Et quasi amet enim', '876548', 'Accusamus reiciendis', '2008-05-28', 677, 'month', 'Alias cillum volupta', 'Consequatur eum eiu', 'Dolores tempore cor', NULL, 'Quae est aliquam lau', 'Et ut ducimus aut f', 'Ipsam perferendis ei', 'Ut voluptatem sint', 'Suscipit quidem ut m', 'Natus ipsum ut dolor', NULL, NULL, NULL, NULL, NULL, 'Autem id ut facere q', 'Amet quidem quod es', 2, 1, NULL, 'Veniam laboriosam', 'Orla Harrington', NULL, '24-16-31-27', '2023-12-04 05:42:30', '2023-12-04 05:43:06', '2023-12-04 05:43:06'),
(30, NULL, 2, '654654', NULL, NULL, 25, 17, 28, '27', 'Odio sunt do evenie', 6, 'Nisi ducimus facere', '876545', 'In non vel nulla mag', '1990-04-18', 890, 'month', 'Facere in aut tempor', 'Est inventore exerci', 'Cupidatat earum elig', NULL, 'Autem quo anim amet', 'Fugit voluptas sed', 'Labore rerum sapient', 'Ut cumque saepe eum', 'Exercitationem sint', 'Autem quaerat ut dol', NULL, NULL, NULL, NULL, NULL, 'Enim veritatis excep', 'Architecto doloribus', 3, 1, '1701668599.png', 'Laboriosam eum aut', 'Herrod Hahn', NULL, '25-17-28-27', '2023-12-04 05:43:08', '2023-12-11 07:15:42', NULL),
(31, NULL, 3, '00011', NULL, NULL, 27, 18, 32, '28', '25', 2, '5', '876549', NULL, NULL, 10, 'month', 'not getting', '50', '5', NULL, '1', '5.5', '3.5', '122', '1.2', '2.5', NULL, NULL, NULL, NULL, NULL, '0011020405', '100', 1, 1, '1702534366.jpg', 'Testy Choco combopack  10 x 15gm', 'Testy Choco mg old 10 x 15gm', NULL, '27-18-32-28', '2023-12-14 03:42:46', '2023-12-14 03:42:46', NULL),
(32, NULL, 2, '00012', NULL, NULL, 27, 18, 32, '28', '30', 4, '3', '876551', NULL, NULL, 50, 'days', 'no Idea', '40', '3', NULL, '4', '3.3', '4.5', '118', '5.8', '4.3', NULL, NULL, NULL, NULL, NULL, '0011020406', '125', 1, 1, '1702535595.jpg', 'Testy Choco1 combopack  15 x 50gm', 'Testy Choco1 mg old 15 x 50gm', NULL, '27-18-32-28', '2023-12-14 04:03:15', '2023-12-14 04:03:15', NULL),
(33, NULL, 3, '000145', NULL, NULL, 28, 19, 31, '29', '25', 2, '5', '876550', NULL, NULL, 10, 'month', 'abcdef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1702535721.jpg', 'Cream N Onion Lays 10 x 15gm', 'Cream N Onion Lays 10 x 15gm', NULL, '28-19-31-29', '2023-12-14 04:05:21', '2023-12-14 04:54:29', NULL),
(34, NULL, 3, '000263', NULL, NULL, 25, 18, 30, '27', '100', 2, '20', NULL, NULL, NULL, 30, 'month', 'hiiii', NULL, '5', NULL, '1', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '002345', '100', 1, 1, '1702539945.jpg', 'Ragi Bytes 10 x 15', 'Ragi Bytes', NULL, '25-18-30-27', '2023-12-14 05:15:45', '2023-12-14 05:15:55', '2023-12-14 05:15:55'),
(35, NULL, 1, '00013', NULL, NULL, 27, 18, 32, '28', '35', 2, '5', '876543', NULL, NULL, 27, 'days', 'no Idea.', '35', '4', NULL, '20', '8.7', '7.5', '98', '3.5', '4', NULL, NULL, NULL, NULL, NULL, '00110204067', '120', 1, 1, '1702539946.png', 'Testy Choco2 combo pack  20 x 55gm', 'Testy Choco2 mg old/new 20 x 55 gm', NULL, '27-18-32-28', '2023-12-14 05:15:46', '2023-12-16 07:57:33', NULL),
(36, NULL, 3, '4560', NULL, NULL, 25, 18, 30, '27', '25', 2, '5', '123400', NULL, NULL, 10, 'month', 'hiiii', '50', '5', NULL, '1', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '7890', '100', 1, 1, NULL, 'Ragi Bytes 10 x 15', 'Ragi Bytes', NULL, '25-18-30-27', '2023-12-14 05:22:21', '2023-12-14 05:22:21', NULL),
(37, NULL, 2, '000789', NULL, NULL, 24, 16, 33, '31', '100', 4, '50', '876545', NULL, NULL, 1, 'month', 'Testing', '50', '10', NULL, '5', '5.5', '3.5', '122', '1.5', '2.5', NULL, NULL, NULL, NULL, NULL, '002314', '5000', 1, 1, '1702555750.jpg', 'Papermaking 10g', 'Papermaking', NULL, '24-16-33-31', '2023-12-14 09:39:10', '2023-12-14 10:10:12', NULL),
(38, NULL, 3, '2001', NULL, NULL, 27, 18, 32, '28', '5', 2, '10', '010908789', NULL, NULL, 10, 'days', 'checking', '10', '5', NULL, '5', '3.6', '2.5', '8.8', '5', '6', NULL, NULL, NULL, NULL, NULL, '01040708', '250', 1, 1, '1702557115.jpg', 'Haldiram chips 1 x 25gm', 'Haldiram 1 x 25gm', NULL, '27-18-32-28', '2023-12-14 10:01:55', '2023-12-14 10:01:55', NULL),
(39, NULL, 2, '2002', NULL, NULL, 30, 21, 34, '32', '10', 2, '25', '232323', NULL, NULL, 7, 'days', '50', '5', '3', NULL, '5', '9.8', '8.9', '7.9', '15', '16', NULL, NULL, NULL, NULL, NULL, '0011020477', '250', 1, 1, '1702615101.jpg', 'Dabar Born Vita 1 x 200gm', 'Born Vita 1 x 200gm', NULL, '30-21-34-32', '2023-12-15 02:08:21', '2023-12-15 02:08:21', NULL),
(40, NULL, 2, '9763', NULL, NULL, 31, 22, 35, '33', '1', 4, '48', '09811', NULL, NULL, 12, 'days', '1010', '23', '10', NULL, '10', '5', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '1010101010', '1250', 1, 1, '1702899716.jpg', 'house product one 1 x 48', 'house one 1 x 48', NULL, '31-22-35-33', '2023-12-18 09:11:56', '2023-12-18 09:11:56', NULL),
(41, NULL, 2, '8766', NULL, NULL, 27, 18, 32, '28', '10', 1, '30', '0998989', NULL, NULL, 2, 'days', '30', '30', '30', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '87668766', '350', 1, 1, '1702987760.jpg', 'New Icecream 1 x 30', 'Icecream 1 x 30', NULL, '27-18-32-28', '2023-12-19 09:39:20', '2023-12-19 09:39:20', NULL),
(42, NULL, 3, '12300', NULL, NULL, 31, 17, 31, '29', 'Quo sunt similique o', 1, '56', '7890', NULL, NULL, 427, 'month', 'Eum et repudiandae s', 'Ut omnis sit velit i', 'Accusantium nemo com', NULL, 'Ut sunt commodo lore', 'Itaque voluptas qui', 'Placeat est recusa', 'Consequatur nisi eu', 'Commodo natus omnis', 'Dolores distinctio', NULL, NULL, NULL, NULL, NULL, 'Consectetur eos mo', '854', 2, 1, NULL, 'Eveniet quo distinc', 'Kimberley Walsh', NULL, '31173129', '2023-12-21 05:46:58', '2023-12-21 06:47:34', NULL),
(43, NULL, 3, '310', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', '310310', NULL, NULL, 2, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '310310310', '200', 1, 1, '1703220942.webp', 'Para Product one Desc 5 x 5', 'Para Product one  5 x 5', NULL, '32233634', '2023-12-22 02:25:42', '2023-12-22 02:28:27', NULL),
(44, NULL, 3, '311', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', '310310', NULL, NULL, 3, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '311311311', '250', 1, 1, '1703221222.jpg', 'Para Product two Desc 6 x 6', 'Para Product two  6 x 6', NULL, '32233634', '2023-12-22 02:30:22', '2023-12-22 02:30:22', NULL),
(45, NULL, 3, '312', NULL, NULL, 32, 23, 36, '34', '10', 4, '10', '3123', NULL, NULL, 4, 'days', '10', '10', '10', NULL, '10', '10', '10', '10', '10', '10', NULL, NULL, NULL, NULL, NULL, '312312312', '300', 1, 1, '1703223164.jpg', 'Para Product three  Desc 7 x 7', 'Para Product three  7 x 7', NULL, '32233634', '2023-12-22 03:02:44', '2023-12-22 03:02:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_qty_storage`
--

DROP TABLE IF EXISTS `product_qty_storage`;
CREATE TABLE IF NOT EXISTS `product_qty_storage` (
  `product_qty_storage_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_id` int(11) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `storage_location_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_qty_storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_qty_storage`
--

INSERT INTO `product_qty_storage` (`product_qty_storage_id`, `product_item_id`, `item_code`, `qty`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(104, 22, NULL, 1, '2', '2023-09-06 06:06:07', '2023-09-06 06:06:07', NULL),
(116, 25, NULL, 1, '2', '2023-11-16 11:20:40', '2023-11-16 11:20:40', NULL),
(118, 26, 'Odit ad dolorem sunt', NULL, '2', '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(119, 27, 'Fugiat qui non cons', NULL, '2', '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(127, 28, 'Culpa omnis eligend', NULL, '2', '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(133, 24, NULL, 1, '', '2023-12-04 05:35:34', '2023-12-04 05:35:34', NULL),
(134, 23, NULL, 1, '', '2023-12-04 05:35:36', '2023-12-04 05:35:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_qty_storage_revision`
--

DROP TABLE IF EXISTS `product_qty_storage_revision`;
CREATE TABLE IF NOT EXISTS `product_qty_storage_revision` (
  `product_qty_storage_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_id` int(11) DEFAULT NULL,
  `item_code` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `storage_location_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_qty_storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_qty_storage_revision`
--

INSERT INTO `product_qty_storage_revision` (`product_qty_storage_id`, `product_item_id`, `item_code`, `qty`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 28, 'Culpa omnis eligend', NULL, '2', '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(9, 24, NULL, 1, '', '2023-12-04 05:35:34', '2023-12-04 05:35:34', NULL),
(10, 23, NULL, 1, '', '2023-12-04 05:35:36', '2023-12-04 05:35:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proforma`
--

DROP TABLE IF EXISTS `proforma`;
CREATE TABLE IF NOT EXISTS `proforma` (
  `proforma_id` int(11) NOT NULL AUTO_INCREMENT,
  `proforma_counter` int(11) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `discount` varchar(110) DEFAULT NULL,
  `status` varchar(110) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `delivery_date` varchar(110) DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `ship_from` int(11) DEFAULT NULL,
  `customer_ref_no` varchar(110) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `vessel` varchar(200) DEFAULT NULL,
  `port` varchar(200) DEFAULT NULL,
  `date_of_arrival` date DEFAULT NULL,
  `date_of_departure` date DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`proforma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proforma`
--

INSERT INTO `proforma` (`proforma_id`, `proforma_counter`, `bill_no`, `bill_date`, `job_id`, `party_id`, `discount`, `status`, `posting_date`, `document_date`, `delivery_date`, `contact_person`, `ship_from`, `customer_ref_no`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `vessel`, `port`, `date_of_arrival`, `date_of_departure`, `place_of_supply`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, NULL, NULL, '2023-06-02', NULL, 123, '6', 'open', '1988-06-17', '1983-04-11', '1981-05-18', 76, 125, '287', NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, NULL, 'Amet consequuntur q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-02 12:37:43', '2023-06-02 12:39:37', '2023-06-02 12:39:37'),
(7, NULL, NULL, '2023-06-02', NULL, 123, '3', 'open', '2023-02-24', '2018-12-31', '1972-10-16', 76, 125, '602', NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, NULL, 'Amet consequuntur q', '18', 'Three Lakhs Fourty-Nine Thousand Three Hundred and Three Only', 'Fifty-Two Thousand Nine Hundred and Fourty-Five Only', '307162', '0', '0', '52945.1712', '52945.1712', NULL, '349303.79', NULL, NULL, '2023-06-02 12:39:57', '2023-06-02 12:40:57', '2023-06-02 12:40:57'),
(8, 1, 'RMS/22-23/1', '2023-06-02', NULL, 123, '5', 'open', '1988-06-22', '1975-05-14', '1996-03-23', 76, 125, '837', NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, NULL, 'Amet consequuntur q', '18', 'Three Lakhs Ninety-Four Thousand Three Hundred and Seventy-Four Only', 'Sixty Thousand Six Hundred and Twenty-One Only', '354510', '0', '0', '60621.21', '60621.21', NULL, '394374.45', NULL, NULL, '2023-06-02 12:41:14', '2023-06-02 12:41:50', '2023-06-02 12:41:50'),
(9, 32, 'RMS/22-23/32', '2023-06-02', NULL, 123, '5', 'open', '2015-06-30', '1985-09-30', '1993-10-30', 76, 125, '483', NULL, NULL, '22-23', NULL, NULL, NULL, NULL, NULL, NULL, 'Amet consequuntur q', '18', 'Five Lakhs Fourteen Thousand Eight Hundred and Seventy-Seven Only', 'Fifty-Four Thousand Six Hundred and Eigthy-One Only', '460196', '0', '0', '54680.7888', '54680.7888', NULL, '514877', NULL, NULL, '2023-06-02 12:42:03', '2023-06-07 09:02:00', '2023-06-07 09:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `proforma_items`
--

DROP TABLE IF EXISTS `proforma_items`;
CREATE TABLE IF NOT EXISTS `proforma_items` (
  `invoice_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `proforma_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proforma_items`
--

INSERT INTO `proforma_items` (`invoice_item_id`, `proforma_id`, `item_name`, `hsn_sac`, `qty`, `gst_rate`, `gst_amount`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(13, 7, 'Emma Pate', 'Voluptates sint con', '547', 1, '52743.05', '4', '535.68', '345760.01', '558', '0', '0', '0', '0', '18', '52743.05279999999', '293016.96', '2023-06-02 12:39:57', '2023-06-02 12:39:57', NULL),
(14, 7, 'sdgds', 'gsdf', '44', 1, '202.12', '42', '25.52', '1325.00', '44', NULL, '0', NULL, '0', '18', '202.11839999999995', '1122.88', '2023-06-02 12:39:57', '2023-06-02 12:39:57', NULL),
(15, 8, 'Nissim Harmon', 'Quia qui nemo volupt', '702', 1, '60621.21', '5', '479.75', '397405.71', '505', '0', '0', '0', '0', '18', '60621.21', '336784.50', '2023-06-02 12:41:14', '2023-06-02 12:41:14', NULL),
(16, 9, 'Alec Whitehead', 'Consectetur dolores', '820', 1, '54650.38', '34', '370.26', '358263.58', '561', '0', '0', '0', '0', '18', '54650.376000000004', '303613.20', '2023-06-02 12:42:03', '2023-06-02 12:42:03', NULL),
(17, 9, 'fgdf', 'fdgg', '44', 1, '30.41', '4', '3.84', '199.37', '4', NULL, '0', NULL, '0', '18', '30.412799999999997', '168.96', '2023-06-02 12:42:17', '2023-06-02 12:42:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
CREATE TABLE IF NOT EXISTS `purchase_order` (
  `purchase_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_counter` int(11) DEFAULT NULL,
  `series_no` varchar(100) DEFAULT NULL,
  `fy_year` varchar(110) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `receipt_type` varchar(110) DEFAULT NULL,
  `vendor_ref_no` varchar(110) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `party_id` int(11) DEFAULT NULL,
  `party_name` varchar(200) DEFAULT NULL,
  `party_details` text,
  `financial_year` varchar(20) DEFAULT NULL,
  `company_gstin` varchar(100) DEFAULT NULL,
  `ship_from` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `contact_person` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `bill_to_gst_no` varchar(100) DEFAULT NULL,
  `gst_rate` varchar(50) DEFAULT NULL,
  `amount_in_words` varchar(500) DEFAULT NULL,
  `tax_in_words` varchar(200) DEFAULT NULL,
  `sub_total` varchar(100) DEFAULT NULL,
  `cgst_total` varchar(100) DEFAULT NULL,
  `sgst_utgst_total` varchar(100) DEFAULT NULL,
  `igst_total` varchar(100) DEFAULT NULL,
  `gst_grand_total` varchar(100) DEFAULT NULL,
  `rounded_off` varchar(50) DEFAULT NULL,
  `grand_total` varchar(100) DEFAULT NULL,
  `remarks` varchar(600) DEFAULT NULL,
  `split_invoice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`purchase_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `purchase_order_counter`, `series_no`, `fy_year`, `company_id`, `receipt_type`, `vendor_ref_no`, `bill_no`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `ship_from`, `status`, `posting_date`, `delivery_date`, `document_date`, `contact_person`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '2023-24', 6, NULL, '5345', 'PO-2023-24-1', '2024-01-02', 121, 'USAMA SHAIKH', NULL, NULL, NULL, '123', 'open', '2024-01-02', '2024-01-02', '2024-01-10', 73, 0, 'JH435BB444', '18', 'Seven Thousand Three Hundred and Seventy-Five Only', 'One Thousand One Hundred and Twenty-Five Only', '6250', '562.5', '562.5', '0', '1125', NULL, '7375', NULL, NULL, '2024-01-02 05:08:26', '2024-01-02 05:08:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_batches`
--

DROP TABLE IF EXISTS `purchase_order_batches`;
CREATE TABLE IF NOT EXISTS `purchase_order_batches` (
  `purchase_order_batches_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) DEFAULT NULL,
  `purchase_order_item_id` int(11) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `manufacturing_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`purchase_order_batches_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_order_batches`
--

INSERT INTO `purchase_order_batches` (`purchase_order_batches_id`, `purchase_order_id`, `purchase_order_item_id`, `storage_location_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(93, NULL, 122, 2, 'fgdfg fdgdf', '2023-06-16', '2023-06-17', '2023-06-09 11:02:47', '2023-06-09 11:02:47', NULL),
(94, NULL, 122, 3, 'fgdfg', '2023-06-10', '2023-06-16', '2023-06-09 11:03:00', '2023-06-09 11:03:00', NULL),
(95, NULL, 122, 3, 'fgdfg fdgdf updated', '2023-06-16', '2023-06-17', '2023-06-09 11:03:00', '2023-06-09 11:03:00', NULL),
(100, 114, 126, 3, 'tes 1 updated', '2023-06-10', '2023-06-29', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(101, 114, 127, 3, 'test 2', '2023-06-11', '2023-06-28', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(102, 114, 127, 3, 'test 2 A', '2023-06-03', '2023-06-25', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(103, 114, 128, 3, 'test 3', '2023-06-09', '2023-06-03', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(104, 114, 128, 3, 'test 3 A', '2023-06-10', '2023-06-11', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(105, 114, 128, 3, 'test 3B', '2023-06-22', '2023-06-21', '2023-06-09 11:11:47', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(106, 114, 128, 3, 'test 3 C', '2023-06-10', '2023-06-10', '2023-06-09 11:12:25', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(107, 114, 127, 3, 'test 2 B new', '2023-06-15', NULL, '2023-06-09 11:12:50', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(108, 114, 129, 3, 'test last check', '2023-06-10', '2023-06-16', '2023-06-09 11:14:23', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(109, 114, 129, 3, 'sdgsdf', '2023-06-10', '2023-06-22', '2023-06-09 11:14:23', '2023-06-12 04:46:09', '2023-06-12 04:46:09'),
(110, 115, 130, 2, 'DXGSDF', '2023-06-13', '2023-06-14', '2023-06-12 04:54:31', '2023-06-12 06:33:36', '2023-06-12 06:33:36'),
(111, 115, 130, 2, 'GDFGFDSG', '2023-06-29', '2023-06-30', '2023-06-12 04:54:31', '2023-06-12 06:34:27', '2023-06-12 06:34:27'),
(112, 115, 131, 3, 'FSDGDFG', '2023-06-13', '2023-06-28', '2023-06-12 04:54:31', '2023-06-12 06:34:27', '2023-06-12 06:34:27'),
(113, 116, 132, 3, 'dffg', '2023-06-13', '2023-06-13', '2023-06-12 06:35:22', '2023-06-12 12:05:57', '2023-06-12 12:05:57'),
(114, 116, 132, 3, 'hfgh', '2023-06-22', '2023-06-27', '2023-06-12 06:35:22', '2023-06-12 12:05:57', '2023-06-12 12:05:57'),
(115, 116, 133, 2, '34eryrtuy', '2023-06-13', '2023-06-13', '2023-06-12 06:38:48', '2023-06-12 12:05:57', '2023-06-12 12:05:57'),
(116, 116, 133, 2, '43esdef nice', '2023-06-28', '2023-06-28', '2023-06-12 06:38:48', '2023-06-12 12:05:57', '2023-06-12 12:05:57'),
(117, 117, 134, 2, 'dfhxdfhdfgh', NULL, NULL, '2023-06-12 12:06:12', '2023-11-22 10:55:12', '2023-11-22 10:55:12'),
(118, 117, 134, 2, 'dfghfg', NULL, NULL, '2023-06-12 12:06:12', '2023-11-22 10:55:12', '2023-11-22 10:55:12'),
(119, 117, 134, 2, 'sfghsfgh', NULL, NULL, '2023-06-12 12:06:12', '2023-11-22 10:55:12', '2023-11-22 10:55:12'),
(120, 117, 135, 2, 'new test', NULL, NULL, '2023-06-13 10:35:58', '2023-11-22 10:55:12', '2023-11-22 10:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items`
--

DROP TABLE IF EXISTS `purchase_order_items`;
CREATE TABLE IF NOT EXISTS `purchase_order_items` (
  `purchase_order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_id` int(11) DEFAULT NULL,
  `item_code` varchar(110) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `discount_item` varchar(110) DEFAULT NULL,
  `price_af_discount` varchar(110) DEFAULT NULL,
  `gross_total` varchar(110) DEFAULT NULL,
  `storage_location_id` int(11) DEFAULT NULL,
  `taxable_amount` varchar(100) DEFAULT NULL,
  `cgst_rate` varchar(50) DEFAULT NULL,
  `cgst_amount` varchar(100) DEFAULT NULL,
  `sgst_utgst_rate` varchar(50) DEFAULT NULL,
  `sgst_utgst_amount` varchar(100) DEFAULT NULL,
  `igst_rate` varchar(50) DEFAULT NULL,
  `igst_amount` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `gst_rate` int(11) DEFAULT NULL,
  `gst_amount` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`purchase_order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`purchase_order_item_id`, `purchase_order_id`, `item_code`, `sku`, `item_name`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `storage_location_id`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `gst_rate`, `gst_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '00012', '27-18-32-28', 'Testy Choco1 mg old 15 x 50gm', '876551', '50', NULL, '125.00', '7375.00', 7, '125', '9', '562.5', '9', '562.5', '0', '0', '6250.00', 1, '1125.00', '2024-01-02 05:08:26', '2024-01-02 05:08:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rental_deposits_banking`
--

DROP TABLE IF EXISTS `rental_deposits_banking`;
CREATE TABLE IF NOT EXISTS `rental_deposits_banking` (
  `rental_deposits_banking_id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_deposits_banking` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rental_deposits_banking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `retailer_master`
--

DROP TABLE IF EXISTS `retailer_master`;
CREATE TABLE IF NOT EXISTS `retailer_master` (
  `retailer_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_partner_type` varchar(200) DEFAULT NULL,
  `bp_code` varchar(100) DEFAULT NULL,
  `bp_name` varchar(255) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  `contact_details` int(11) DEFAULT NULL,
  `bp_organisation_type` int(11) DEFAULT NULL,
  `bp_category` varchar(200) DEFAULT NULL,
  `bp_group` varchar(200) DEFAULT NULL,
  `regional_sales_manager` varchar(255) DEFAULT NULL,
  `area_sales_manager` varchar(255) DEFAULT NULL,
  `area_sales_exec` varchar(255) DEFAULT NULL,
  `sales_officer` varchar(255) DEFAULT NULL,
  `salesman` varchar(255) DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `credit_limit` int(11) DEFAULT NULL,
  `gst_details` int(11) DEFAULT NULL,
  `banking_details` int(11) DEFAULT NULL,
  `beat_master` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`retailer_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `parent_roles` varchar(220) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL,
  `menu_ids` varchar(300) DEFAULT NULL,
  `submenu_ids` varchar(300) DEFAULT NULL,
  `is_sub` tinyint(4) DEFAULT NULL,
  `readonly` varchar(50) DEFAULT NULL,
  `readwrite` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `department_id`, `parent_roles`, `guard_name`, `menu_ids`, `submenu_ids`, `is_sub`, `readonly`, `readwrite`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', NULL, '', 'admin', '43,44,47,49,50,51,52,53,11,22', '48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,114,116,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24,54', 1, NULL, 'on', '2023-12-27 09:20:02', '2023-12-27 09:20:02'),
(33, 'Admin', 2, NULL, 'admin', '43,44,47,49,50,51,11,22', '48,67,68,69,70,71,98,56,57,73,74,89,55,58,105,108,109,110,111,82,83,84,93,94,96,97,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24', 1, NULL, 'on', '2024-01-02 12:17:48', '2024-01-02 12:30:24'),
(34, 'ASM', 5, NULL, 'admin', NULL, NULL, 0, NULL, NULL, '2024-01-02 12:30:50', '2024-01-02 12:30:50'),
(35, 'ASE', 4, '34', 'admin', NULL, NULL, 0, NULL, NULL, '2024-01-02 12:32:10', '2024-01-02 12:33:00'),
(36, 'Sales Executive', 9, '35', 'admin', NULL, NULL, 0, NULL, NULL, '2024-01-02 12:33:15', '2024-01-02 12:34:58'),
(37, 'Salesman', 8, '36', 'admin', '53', '116', 1, NULL, NULL, '2024-01-02 12:34:40', '2024-01-02 12:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `submenu_id` bigint(20) DEFAULT NULL,
  `is_sub` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`, `menu_id`, `submenu_id`, `is_sub`) VALUES
(12, 33, NULL, NULL, NULL),
(13, 33, NULL, NULL, NULL),
(16, 33, NULL, NULL, NULL),
(17, 33, NULL, NULL, NULL),
(49, 33, NULL, NULL, NULL),
(50, 33, NULL, NULL, NULL),
(53, 33, NULL, NULL, NULL),
(54, 33, NULL, NULL, NULL),
(172, 33, NULL, NULL, NULL),
(173, 33, NULL, NULL, NULL),
(174, 33, NULL, NULL, NULL),
(175, 33, NULL, NULL, NULL),
(192, 33, NULL, NULL, NULL),
(193, 33, NULL, NULL, NULL),
(194, 33, NULL, NULL, NULL),
(195, 33, NULL, NULL, NULL),
(244, 33, NULL, NULL, NULL),
(245, 33, NULL, NULL, NULL),
(246, 33, NULL, NULL, NULL),
(247, 33, NULL, NULL, NULL),
(266, 33, NULL, NULL, NULL),
(267, 33, NULL, NULL, NULL),
(268, 33, NULL, NULL, NULL),
(269, 33, NULL, NULL, NULL),
(270, 33, NULL, NULL, NULL),
(271, 33, NULL, NULL, NULL),
(272, 33, NULL, NULL, NULL),
(273, 33, NULL, NULL, NULL),
(274, 33, NULL, NULL, NULL),
(275, 33, NULL, NULL, NULL),
(276, 33, NULL, NULL, NULL),
(277, 33, NULL, NULL, NULL),
(282, 33, NULL, NULL, NULL),
(283, 33, NULL, NULL, NULL),
(284, 33, NULL, NULL, NULL),
(285, 33, NULL, NULL, NULL),
(287, 33, NULL, NULL, NULL),
(288, 33, NULL, NULL, NULL),
(289, 33, NULL, NULL, NULL),
(290, 33, NULL, NULL, NULL),
(291, 33, NULL, NULL, NULL),
(293, 33, NULL, NULL, NULL),
(294, 33, NULL, NULL, NULL),
(295, 33, NULL, NULL, NULL),
(296, 33, NULL, NULL, NULL),
(297, 33, NULL, NULL, NULL),
(298, 33, NULL, NULL, NULL),
(299, 33, NULL, NULL, NULL),
(300, 33, NULL, NULL, NULL),
(301, 33, NULL, NULL, NULL),
(310, 33, NULL, NULL, NULL),
(311, 33, NULL, NULL, NULL),
(312, 33, NULL, NULL, NULL),
(313, 33, NULL, NULL, NULL),
(326, 33, NULL, NULL, NULL),
(327, 33, NULL, NULL, NULL),
(328, 33, NULL, NULL, NULL),
(329, 33, NULL, NULL, NULL),
(338, 33, NULL, NULL, NULL),
(339, 33, NULL, NULL, NULL),
(340, 33, NULL, NULL, NULL),
(341, 33, NULL, NULL, NULL),
(342, 33, NULL, NULL, NULL),
(343, 33, NULL, NULL, NULL),
(344, 33, NULL, NULL, NULL),
(345, 33, NULL, NULL, NULL),
(346, 33, NULL, NULL, NULL),
(347, 33, NULL, NULL, NULL),
(348, 33, NULL, NULL, NULL),
(349, 33, NULL, NULL, NULL),
(350, 33, NULL, NULL, NULL),
(351, 33, NULL, NULL, NULL),
(352, 33, NULL, NULL, NULL),
(353, 33, NULL, NULL, NULL),
(354, 33, NULL, NULL, NULL),
(355, 33, NULL, NULL, NULL),
(356, 33, NULL, NULL, NULL),
(357, 33, NULL, NULL, NULL),
(358, 33, NULL, NULL, NULL),
(359, 33, NULL, NULL, NULL),
(360, 33, NULL, NULL, NULL),
(361, 33, NULL, NULL, NULL),
(362, 33, NULL, NULL, NULL),
(363, 33, NULL, NULL, NULL),
(364, 33, NULL, NULL, NULL),
(365, 33, NULL, NULL, NULL),
(370, 33, NULL, NULL, NULL),
(371, 33, NULL, NULL, NULL),
(372, 33, NULL, NULL, NULL),
(373, 33, NULL, NULL, NULL),
(374, 33, NULL, NULL, NULL),
(375, 33, NULL, NULL, NULL),
(376, 33, NULL, NULL, NULL),
(377, 33, NULL, NULL, NULL),
(378, 33, NULL, NULL, NULL),
(379, 33, NULL, NULL, NULL),
(380, 33, NULL, NULL, NULL),
(381, 33, NULL, NULL, NULL),
(382, 33, NULL, NULL, NULL),
(383, 33, NULL, NULL, NULL),
(384, 33, NULL, NULL, NULL),
(385, 33, NULL, NULL, NULL),
(386, 33, NULL, NULL, NULL),
(387, 33, NULL, NULL, NULL),
(388, 33, NULL, NULL, NULL),
(389, 33, NULL, NULL, NULL),
(390, 33, NULL, NULL, NULL),
(391, 33, NULL, NULL, NULL),
(392, 33, NULL, NULL, NULL),
(393, 33, NULL, NULL, NULL),
(396, 33, NULL, NULL, NULL),
(397, 33, NULL, NULL, NULL),
(398, 33, NULL, NULL, NULL),
(399, 33, NULL, NULL, NULL),
(400, 33, NULL, NULL, NULL),
(401, 33, NULL, NULL, NULL),
(402, 33, NULL, NULL, NULL),
(403, 33, NULL, NULL, NULL),
(404, 33, NULL, NULL, NULL),
(405, 33, NULL, NULL, NULL),
(406, 33, NULL, NULL, NULL),
(407, 33, NULL, NULL, NULL),
(408, 33, NULL, NULL, NULL),
(409, 33, NULL, NULL, NULL),
(410, 33, NULL, NULL, NULL),
(416, 33, NULL, NULL, NULL),
(417, 33, NULL, NULL, NULL),
(418, 33, NULL, NULL, NULL),
(419, 33, NULL, NULL, NULL),
(425, 33, NULL, NULL, NULL),
(426, 33, NULL, NULL, NULL),
(427, 33, NULL, NULL, NULL),
(428, 33, NULL, NULL, NULL),
(429, 33, NULL, NULL, NULL),
(430, 33, NULL, NULL, NULL),
(431, 33, NULL, NULL, NULL),
(432, 33, NULL, NULL, NULL),
(437, 33, NULL, NULL, NULL),
(438, 33, NULL, NULL, NULL),
(439, 33, NULL, NULL, NULL),
(440, 33, NULL, NULL, NULL),
(441, 33, NULL, NULL, NULL),
(442, 33, NULL, NULL, NULL),
(443, 33, NULL, NULL, NULL),
(444, 33, NULL, NULL, NULL),
(445, 33, NULL, NULL, NULL),
(446, 33, NULL, NULL, NULL),
(447, 33, NULL, NULL, NULL),
(448, 33, NULL, NULL, NULL),
(449, 33, NULL, NULL, NULL),
(450, 33, NULL, NULL, NULL),
(451, 33, NULL, NULL, NULL),
(452, 33, NULL, NULL, NULL),
(453, 33, NULL, NULL, NULL),
(454, 33, NULL, NULL, NULL),
(455, 33, NULL, NULL, NULL),
(456, 33, NULL, NULL, NULL),
(457, 33, NULL, NULL, NULL),
(458, 33, NULL, NULL, NULL),
(459, 33, NULL, NULL, NULL),
(460, 33, NULL, NULL, NULL),
(473, 33, NULL, NULL, NULL),
(474, 33, NULL, NULL, NULL),
(475, 33, NULL, NULL, NULL),
(476, 33, NULL, NULL, NULL),
(477, 37, NULL, NULL, NULL),
(478, 37, NULL, NULL, NULL),
(479, 37, NULL, NULL, NULL),
(480, 37, NULL, NULL, NULL),
(481, 33, NULL, NULL, NULL),
(482, 33, NULL, NULL, NULL),
(483, 33, NULL, NULL, NULL),
(484, 33, NULL, NULL, NULL),
(485, 33, NULL, NULL, NULL),
(486, 33, NULL, NULL, NULL),
(487, 33, NULL, NULL, NULL),
(488, 33, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
CREATE TABLE IF NOT EXISTS `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) NOT NULL,
  `route_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `area_id`, `route_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(67, 48, 'Lal Naka', '2023-09-06 13:30:28', '2023-09-06 13:30:28', NULL),
(68, 47, 'Shreeji Solution', '2023-09-06 13:30:42', '2023-09-06 13:30:42', NULL),
(69, 47, 'Vayle', '2023-09-06 13:30:59', '2023-09-06 13:30:59', NULL),
(70, 48, 'Lal Baugh', '2023-09-06 14:26:31', '2023-09-06 14:26:31', NULL),
(71, 48, 'Lal Nagar', '2023-09-06 14:32:14', '2023-09-06 14:32:14', NULL),
(72, 47, 'MAcd', '2023-09-06 14:34:51', '2023-09-06 14:34:51', NULL),
(73, 50, 'Saki Vihar Road', '2023-10-14 15:28:44', '2023-10-14 15:28:44', NULL),
(74, 51, 'Nirmal Vagh Road', '2023-10-14 15:40:46', '2023-10-14 15:40:46', NULL),
(75, 52, 'Test Route', '2023-12-14 13:20:00', '2023-12-14 13:20:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `series_master`
--

DROP TABLE IF EXISTS `series_master`;
CREATE TABLE IF NOT EXISTS `series_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `series_number` varchar(110) DEFAULT NULL,
  `module` varchar(110) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_master`
--

INSERT INTO `series_master` (`id`, `series_number`, `module`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'PO', '1', '2023-12-06 17:51:08', '2023-12-06 17:56:42', NULL),
(9, 'GR', '2', '2023-12-06 17:56:49', '2023-12-06 17:56:49', NULL),
(10, 'AP', '3', '2023-12-07 14:47:26', '2023-12-07 14:47:26', NULL),
(11, 'BB', '4', '2023-12-07 15:45:34', '2023-12-07 15:45:34', NULL),
(12, 'BP', '5', '2023-12-07 17:51:33', '2023-12-07 17:51:33', NULL),
(14, 'GRR', '6', '2024-01-02 10:43:04', '2024-01-02 10:43:04', NULL),
(15, 'GIR', '7', '2024-01-02 10:43:41', '2024-01-02 10:43:41', NULL),
(16, 'AR', '8', '2024-01-02 10:44:20', '2024-01-02 10:44:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_expense`
--

DROP TABLE IF EXISTS `service_expense`;
CREATE TABLE IF NOT EXISTS `service_expense` (
  `service_expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_expense` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`service_expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 'Andaman and Nicobar Islands', 101, '2021-05-25 13:03:46', NULL, NULL),
(2, 'Andhra Pradesh', 101, '2021-05-25 13:03:46', NULL, NULL),
(3, 'Arunachal Pradesh', 101, '2021-05-25 13:03:46', NULL, NULL),
(4, 'Assam', 101, '2021-05-25 13:03:46', NULL, NULL),
(5, 'Bihar', 101, '2021-05-25 13:03:46', NULL, NULL),
(6, 'Chandigarh', 101, '2021-05-25 13:03:46', NULL, NULL),
(7, 'Chhattisgarh', 101, '2021-05-25 13:03:46', NULL, NULL),
(8, 'Dadra and Nagar Haveli', 101, '2021-05-25 13:03:46', NULL, NULL),
(9, 'Daman and Diu', 101, '2021-05-25 13:03:46', NULL, NULL),
(10, 'Delhi', 101, '2021-05-25 13:03:46', NULL, NULL),
(11, 'Goa', 101, '2021-05-25 13:03:46', NULL, NULL),
(12, 'Gujarat', 101, '2021-05-25 13:03:46', NULL, NULL),
(13, 'Haryana', 101, '2021-05-25 13:03:46', NULL, NULL),
(14, 'Himachal Pradesh', 101, '2021-05-25 13:03:46', NULL, NULL),
(15, 'Jammu and Kashmir', 101, '2021-05-25 13:03:46', NULL, NULL),
(16, 'Jharkhand', 101, '2021-05-25 13:03:46', NULL, NULL),
(17, 'Karnataka', 101, '2021-05-25 13:03:46', NULL, NULL),
(19, 'Kerala', 101, '2021-05-25 13:03:46', NULL, NULL),
(20, 'Lakshadweep', 101, '2021-05-25 13:03:46', NULL, NULL),
(21, 'Madhya Pradesh', 101, '2021-05-25 13:03:46', NULL, NULL),
(22, 'Maharashtra', 101, '2021-05-25 13:03:46', NULL, NULL),
(23, 'Manipur', 101, '2021-05-25 13:03:46', NULL, NULL),
(24, 'Meghalaya', 101, '2021-05-25 13:03:46', NULL, NULL),
(25, 'Mizoram', 101, '2021-05-25 13:03:46', NULL, NULL),
(26, 'Nagaland', 101, '2021-05-25 13:03:46', NULL, NULL),
(29, 'Odisha', 101, '2021-05-25 13:03:46', NULL, NULL),
(31, 'Pondicherry', 101, '2021-05-25 13:03:46', NULL, NULL),
(32, 'Punjab', 101, '2021-05-25 13:03:46', NULL, NULL),
(33, 'Rajasthan', 101, '2021-05-25 13:03:46', NULL, NULL),
(34, 'Sikkim', 101, '2021-05-25 13:03:46', NULL, NULL),
(35, 'Tamil Nadu', 101, '2021-05-25 13:03:46', NULL, NULL),
(36, 'Telangana', 101, '2021-05-25 13:03:46', NULL, NULL),
(37, 'Tripura', 101, '2021-05-25 13:03:46', NULL, NULL),
(38, 'Uttar Pradesh', 101, '2021-05-25 13:03:46', NULL, NULL),
(39, 'Uttarakhand', 101, '2021-05-25 13:03:46', NULL, NULL),
(41, 'West Bengal', 101, '2021-05-25 13:03:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `storage_locations`
--

DROP TABLE IF EXISTS `storage_locations`;
CREATE TABLE IF NOT EXISTS `storage_locations` (
  `storage_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_location_name` varchar(200) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `warehouse_address` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`storage_location_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage_locations`
--

INSERT INTO `storage_locations` (`storage_location_id`, `storage_location_name`, `location`, `address`, `zip_code`, `country`, `state`, `city`, `warehouse_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'WH02', NULL, NULL, NULL, NULL, NULL, NULL, 185, '2023-12-02 06:17:25', '2023-12-02 06:17:25', NULL),
(7, 'WH01', NULL, NULL, NULL, NULL, NULL, NULL, 184, '2023-12-02 06:30:31', '2023-12-02 06:30:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `subcategory_description` text,
  `has_sub_subcategories` tinyint(4) DEFAULT '0',
  `sub_category_slug` varchar(200) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` varchar(50) DEFAULT NULL,
  `deleted_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `category_id`, `subcategory_name`, `subcategory_description`, `has_sub_subcategories`, `sub_category_slug`, `visibility`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, NULL, 'asds', NULL, 0, 'asds', 1, '2023-09-05 11:44:21', '2023-09-05 17:14:21', NULL),
(29, NULL, 'test sub-cat', NULL, 0, 'test-sub-cat', 1, '2023-09-05 12:22:03', '2023-09-05 17:52:03', NULL),
(30, NULL, 'Cereals', NULL, 0, 'cereals', 1, '2023-10-24 14:52:48', '2023-10-24 20:22:48', NULL),
(31, NULL, 'Chips', NULL, 0, 'chips', 1, '2023-10-28 13:35:03', '2023-10-28 19:05:03', NULL),
(32, NULL, 'Akshy\'s Sub CAtegory', NULL, 0, 'akshy-s-sub-category', 1, '2023-12-14 02:49:36', '2023-12-14 10:49:36', NULL),
(33, NULL, 'Test', NULL, 0, 'test', 1, '2023-12-14 09:35:35', '2023-12-14 17:35:35', NULL),
(34, NULL, 'dabar Sub Category', NULL, 0, 'dabar-sub-category', 1, '2023-12-15 01:50:09', '2023-12-15 09:50:09', NULL),
(35, NULL, 'house subcategory', NULL, 0, 'house-subcategory', 1, '2023-12-18 09:04:20', '2023-12-18 17:04:20', NULL),
(36, NULL, 'Para Sub Category', NULL, 0, 'para-sub-category', 1, '2023-12-22 02:21:12', '2023-12-22 10:21:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_group`
--

DROP TABLE IF EXISTS `sub_group`;
CREATE TABLE IF NOT EXISTS `sub_group` (
  `sub_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `gl_particulars_id` int(11) DEFAULT NULL,
  `sub_group` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sub_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `traffic source`
--

DROP TABLE IF EXISTS `traffic source`;
CREATE TABLE IF NOT EXISTS `traffic source` (
  `trafficsource_id` int(11) NOT NULL AUTO_INCREMENT,
  `traffic_source` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `REMOTE_ADDR` varchar(255) DEFAULT NULL,
  `HTTP_USER_AGENT` varchar(255) DEFAULT NULL,
  `user_os` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`trafficsource_id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traffic source`
--

INSERT INTO `traffic source` (`trafficsource_id`, `traffic_source`, `id`, `email`, `REMOTE_ADDR`, `HTTP_USER_AGENT`, `user_os`, `device`, `browser`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-17 04:59:50', '2023-11-17 04:59:50', NULL),
(2, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2023-11-17 05:02:24', '2023-11-17 05:02:24', NULL),
(3, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-17 06:21:53', '2023-11-17 06:21:53', NULL),
(4, 'email', 1, 'admin@gmail.com', '::1', 'PostmanRuntime/7.35.0', 'Unknown OS Platform', 'desktop', 'Unknow Browser', '2023-11-17 06:31:53', '2023-11-17 06:31:53', NULL),
(5, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2023-11-17 07:07:54', '2023-11-17 07:07:54', NULL),
(6, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-17 07:10:01', '2023-11-17 07:10:01', NULL),
(7, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-17 09:36:25', '2023-11-17 09:36:25', NULL),
(8, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-18 04:31:16', '2023-11-18 04:31:16', NULL),
(9, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-18 07:08:29', '2023-11-18 07:08:29', NULL),
(10, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-20 04:21:55', '2023-11-20 04:21:55', NULL),
(11, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-20 10:05:11', '2023-11-20 10:05:11', NULL),
(12, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-21 04:45:20', '2023-11-21 04:45:20', NULL),
(13, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 OPR/104.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-11-21 11:52:16', '2023-11-21 11:52:16', NULL),
(14, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-22 04:48:28', '2023-11-22 04:48:28', NULL),
(15, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-22 12:44:11', '2023-11-22 12:44:11', NULL),
(16, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 04:22:44', '2023-11-23 04:22:44', NULL),
(17, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 08:57:43', '2023-11-23 08:57:43', NULL),
(18, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 08:58:49', '2023-11-23 08:58:49', NULL),
(19, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 10:43:42', '2023-11-23 10:43:42', NULL),
(20, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 10:58:05', '2023-11-23 10:58:05', NULL),
(21, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 11:13:03', '2023-11-23 11:13:03', NULL),
(22, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 11:13:10', '2023-11-23 11:13:10', NULL),
(23, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 11:54:16', '2023-11-23 11:54:16', NULL),
(24, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-23 11:54:25', '2023-11-23 11:54:25', NULL),
(25, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-24 04:24:59', '2023-11-24 04:24:59', NULL),
(26, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-24 04:25:12', '2023-11-24 04:25:12', NULL),
(27, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-24 07:25:05', '2023-11-24 07:25:05', NULL),
(28, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-24 07:38:40', '2023-11-24 07:38:40', NULL),
(29, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-27 04:25:24', '2023-11-27 04:25:24', NULL),
(30, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-27 07:06:22', '2023-11-27 07:06:22', NULL),
(31, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-27 07:06:28', '2023-11-27 07:06:28', NULL),
(32, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-28 04:33:41', '2023-11-28 04:33:41', NULL),
(33, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-29 04:25:23', '2023-11-29 04:25:23', NULL),
(34, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-29 11:43:56', '2023-11-29 11:43:56', NULL),
(35, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-30 04:25:28', '2023-11-30 04:25:28', NULL),
(36, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-30 08:43:59', '2023-11-30 08:43:59', NULL),
(37, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-11-30 08:44:16', '2023-11-30 08:44:16', NULL),
(38, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-02 04:57:09', '2023-12-02 04:57:09', NULL),
(39, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-04 04:22:55', '2023-12-04 04:22:55', NULL),
(40, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-04 08:47:27', '2023-12-04 08:47:27', NULL),
(41, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-04 08:49:15', '2023-12-04 08:49:15', NULL),
(42, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-05 04:28:39', '2023-12-05 04:28:39', NULL),
(43, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-06 04:40:09', '2023-12-06 04:40:09', NULL),
(44, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-07 04:29:44', '2023-12-07 04:29:44', NULL),
(45, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-07 10:41:39', '2023-12-07 10:41:39', NULL),
(46, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-08 04:42:06', '2023-12-08 04:42:06', NULL),
(47, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-11 04:32:07', '2023-12-11 04:32:07', NULL),
(48, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-12 04:26:47', '2023-12-12 04:26:47', NULL),
(49, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-12 12:50:44', '2023-12-12 12:50:44', NULL),
(50, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-13 04:27:05', '2023-12-13 04:27:05', NULL),
(51, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-13 06:53:09', '2023-12-13 06:53:09', NULL),
(52, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-13 06:56:46', '2023-12-13 06:56:46', NULL),
(53, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 01:49:42', '2023-12-14 01:49:42', NULL),
(54, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 01:56:49', '2023-12-14 01:56:49', NULL),
(55, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 01:57:15', '2023-12-14 01:57:15', NULL),
(56, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 01:57:22', '2023-12-14 01:57:22', NULL),
(57, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 02:17:43', '2023-12-14 02:17:43', NULL),
(58, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 04:38:57', '2023-12-14 04:38:57', NULL),
(59, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 04:49:32', '2023-12-14 04:49:32', NULL),
(60, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 05:30:12', '2023-12-14 05:30:12', NULL),
(61, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-14 06:35:43', '2023-12-14 06:35:43', NULL),
(62, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-14 08:32:47', '2023-12-14 08:32:47', NULL),
(63, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 11:01:07', '2023-12-14 11:01:07', NULL),
(64, 'email', 47, 'shady@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 11:05:56', '2023-12-14 11:05:56', NULL),
(65, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-14 11:08:06', '2023-12-14 11:08:06', NULL),
(66, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-15 01:46:37', '2023-12-15 01:46:37', NULL),
(67, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-15 01:53:37', '2023-12-15 01:53:37', NULL),
(68, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-15 01:53:48', '2023-12-15 01:53:48', NULL),
(69, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 CCleaner/119.0.0.0', 'Windows 10', 'desktop', 'Safari', '2023-12-15 01:57:26', '2023-12-15 01:57:26', NULL),
(70, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/120.0.6099.101 Mobile/15E148 Safari/604.1', 'iPhone', 'mobile', 'Safari', '2023-12-15 02:15:55', '2023-12-15 02:15:55', NULL),
(71, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-15 02:34:38', '2023-12-15 02:34:38', NULL),
(72, 'email', 47, 'shady@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-15 02:34:51', '2023-12-15 02:34:51', NULL),
(73, 'email', 47, 'shady@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 CCleaner/119.0.0.0', 'Windows 10', 'desktop', 'Safari', '2023-12-15 02:36:16', '2023-12-15 02:36:16', NULL),
(74, 'email', 49, 'riya@patil.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-15 02:46:13', '2023-12-15 02:46:13', NULL),
(75, 'email', 49, 'riya@patil.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-15 02:46:14', '2023-12-15 02:46:14', NULL),
(76, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-15 02:47:03', '2023-12-15 02:47:03', NULL),
(77, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-15 03:51:18', '2023-12-15 03:51:18', NULL),
(78, 'email', 1, 'admin@gmail.com', '150.242.204.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-15 06:42:49', '2023-12-15 06:42:49', NULL),
(79, 'email', 1, 'admin@gmail.com', '150.242.204.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-16 03:21:45', '2023-12-16 03:21:45', NULL),
(80, 'email', 1, 'admin@gmail.com', '150.242.204.163', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-16 03:24:16', '2023-12-16 03:24:16', NULL),
(81, 'email', 1, 'admin@gmail.com', '150.242.204.163', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-16 05:09:30', '2023-12-16 05:09:30', NULL),
(82, 'email', 1, 'admin@gmail.com', '45.127.45.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Windows 10', 'desktop', 'Firefox', '2023-12-16 06:31:25', '2023-12-16 06:31:25', NULL),
(83, 'email', 47, 'shady@gmail.com', '45.127.45.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Windows 10', 'desktop', 'Firefox', '2023-12-16 08:32:26', '2023-12-16 08:32:26', NULL),
(84, 'email', 1, 'admin@gmail.com', '117.99.245.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-18 07:17:34', '2023-12-18 07:17:34', NULL),
(85, 'email', 1, 'admin@gmail.com', '27.57.248.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-19 01:39:42', '2023-12-19 01:39:42', NULL),
(86, 'email', 1, 'admin@gmail.com', '43.252.101.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-19 07:16:17', '2023-12-19 07:16:17', NULL),
(87, 'email', 1, 'admin@gmail.com', '27.57.248.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-19 07:19:36', '2023-12-19 07:19:36', NULL),
(88, 'email', 1, 'admin@gmail.com', '150.242.204.200', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-19 08:25:46', '2023-12-19 08:25:46', NULL),
(89, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-20 04:37:58', '2023-12-20 04:37:58', NULL),
(90, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 04:20:40', '2023-12-21 04:20:40', NULL),
(91, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 12:02:26', '2023-12-21 12:02:26', NULL),
(92, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 09:43:24', '2023-12-21 09:43:24', NULL),
(93, 'email', 47, 'shady@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 CCleaner/119.0.0.0', 'Windows 10', 'desktop', 'Safari', '2023-12-21 09:43:52', '2023-12-21 09:43:52', NULL),
(94, 'email', 1, 'admin@gmail.com', '106.216.240.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 09:44:02', '2023-12-21 09:44:02', NULL),
(95, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 09:52:53', '2023-12-21 09:52:53', NULL),
(96, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 09:56:31', '2023-12-21 09:56:31', NULL),
(97, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 09:57:23', '2023-12-21 09:57:23', NULL),
(98, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-21 09:57:26', '2023-12-21 09:57:26', NULL),
(99, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 09:57:50', '2023-12-21 09:57:50', NULL),
(100, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 09:59:49', '2023-12-21 09:59:49', NULL),
(101, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 10:03:12', '2023-12-21 10:03:12', NULL),
(102, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 10:06:48', '2023-12-21 10:06:48', NULL),
(103, 'email', 1, 'admin@gmail.com', '106.216.240.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 10:07:50', '2023-12-21 10:07:50', NULL),
(104, 'email', 1, 'admin@gmail.com', '106.216.240.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 10:09:32', '2023-12-21 10:09:32', NULL),
(105, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-21 10:14:27', '2023-12-21 10:14:27', NULL),
(106, 'email', 1, 'admin@gmail.com', '150.242.204.180', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36', 'Android', 'mobile', 'Safari', '2023-12-21 10:27:19', '2023-12-21 10:27:19', NULL),
(107, 'email', 1, 'admin@gmail.com', '106.216.248.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-22 01:22:00', '2023-12-22 01:22:00', NULL),
(108, 'email', 1, 'admin@gmail.com', '106.216.248.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', 'desktop', 'Safari', '2023-12-22 02:01:07', '2023-12-22 02:01:07', NULL),
(109, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-22 09:40:25', '2023-12-22 09:40:25', NULL),
(110, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2023-12-22 11:57:23', '2023-12-22 11:57:23', NULL),
(111, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-22 12:08:47', '2023-12-22 12:08:47', NULL),
(112, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 04:20:19', '2023-12-26 04:20:19', NULL),
(113, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 09:41:11', '2023-12-26 09:41:11', NULL),
(114, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 09:43:17', '2023-12-26 09:43:17', NULL),
(115, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 09:52:12', '2023-12-26 09:52:12', NULL),
(116, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 09:59:09', '2023-12-26 09:59:09', NULL),
(117, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 10:14:26', '2023-12-26 10:14:26', NULL),
(118, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-26 10:30:52', '2023-12-26 10:30:52', NULL),
(119, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 04:44:20', '2023-12-27 04:44:20', NULL),
(120, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 04:46:03', '2023-12-27 04:46:03', NULL),
(121, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 04:53:41', '2023-12-27 04:53:41', NULL),
(122, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 04:53:49', '2023-12-27 04:53:49', NULL),
(123, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 06:39:39', '2023-12-27 06:39:39', NULL),
(124, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 06:42:20', '2023-12-27 06:42:20', NULL),
(125, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 06:57:24', '2023-12-27 06:57:24', NULL),
(126, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 07:11:30', '2023-12-27 07:11:30', NULL),
(127, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 07:13:57', '2023-12-27 07:13:57', NULL),
(128, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 07:14:39', '2023-12-27 07:14:39', NULL),
(129, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 07:14:53', '2023-12-27 07:14:53', NULL),
(130, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 07:57:20', '2023-12-27 07:57:20', NULL),
(131, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:38:18', '2023-12-27 09:38:18', NULL),
(132, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:38:57', '2023-12-27 09:38:57', NULL),
(133, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:39:09', '2023-12-27 09:39:09', NULL),
(134, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:39:45', '2023-12-27 09:39:45', NULL),
(135, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:39:55', '2023-12-27 09:39:55', NULL),
(136, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 09:40:16', '2023-12-27 09:40:16', NULL),
(137, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:11:21', '2023-12-27 10:11:21', NULL),
(138, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:13:17', '2023-12-27 10:13:17', NULL),
(139, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:15:00', '2023-12-27 10:15:00', NULL),
(140, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:31:28', '2023-12-27 10:31:28', NULL),
(141, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:34:03', '2023-12-27 10:34:03', NULL),
(142, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:34:09', '2023-12-27 10:34:09', NULL),
(143, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:34:51', '2023-12-27 10:34:51', NULL),
(144, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:35:58', '2023-12-27 10:35:58', NULL),
(145, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:36:06', '2023-12-27 10:36:06', NULL),
(146, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:36:20', '2023-12-27 10:36:20', NULL),
(147, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:36:35', '2023-12-27 10:36:35', NULL),
(148, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:39:40', '2023-12-27 10:39:40', NULL),
(149, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:40:39', '2023-12-27 10:40:39', NULL),
(150, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:40:54', '2023-12-27 10:40:54', NULL),
(151, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:41:02', '2023-12-27 10:41:02', NULL),
(152, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:54:09', '2023-12-27 10:54:09', NULL),
(153, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:59:46', '2023-12-27 10:59:46', NULL),
(154, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 10:59:54', '2023-12-27 10:59:54', NULL),
(155, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:00:14', '2023-12-27 11:00:14', NULL),
(156, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:05:42', '2023-12-27 11:05:42', NULL),
(157, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:10:53', '2023-12-27 11:10:53', NULL),
(158, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:17:23', '2023-12-27 11:17:23', NULL),
(159, 'email', 53, 'hemraj@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:20:27', '2023-12-27 11:20:27', NULL),
(160, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:21:44', '2023-12-27 11:21:44', NULL),
(161, 'email', 54, 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:22:17', '2023-12-27 11:22:17', NULL),
(162, 'email', 54, 'superadmin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:22:48', '2023-12-27 11:22:48', NULL),
(163, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:23:24', '2023-12-27 11:23:24', NULL),
(164, 'email', 1, 'admin@gmail.com', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Ubuntu', 'desktop', 'Firefox', '2023-12-27 11:24:01', '2023-12-27 11:24:01', NULL),
(165, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2023-12-28 04:26:51', '2023-12-28 04:26:51', NULL),
(166, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 04:38:48', '2024-01-02 04:38:48', NULL),
(167, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 05:05:39', '2024-01-02 05:05:39', NULL),
(168, 'email', 1, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 05:07:41', '2024-01-02 05:07:41', NULL),
(169, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 05:47:49', '2024-01-02 05:47:49', NULL),
(170, 'email', 55, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 06:50:06', '2024-01-02 06:50:06', NULL),
(171, 'email', 55, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 06:53:26', '2024-01-02 06:53:26', NULL),
(172, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 06:54:21', '2024-01-02 06:54:21', NULL),
(173, 'email', 55, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 07:04:57', '2024-01-02 07:04:57', NULL),
(174, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 07:15:20', '2024-01-02 07:15:20', NULL),
(175, 'email', 61, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 07:16:09', '2024-01-02 07:16:09', NULL),
(176, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 07:18:10', '2024-01-02 07:18:10', NULL),
(177, 'email', 61, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 07:34:29', '2024-01-02 07:34:29', NULL),
(178, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 08:14:54', '2024-01-02 08:14:54', NULL),
(179, 'email', 66, 'manager@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 08:22:39', '2024-01-02 08:22:39', NULL),
(180, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2024-01-02 08:25:10', '2024-01-02 08:25:10', NULL),
(181, 'email', 66, 'manager@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 08:35:47', '2024-01-02 08:35:47', NULL),
(182, 'email', 66, 'manager@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 09:08:59', '2024-01-02 09:08:59', NULL),
(183, 'email', 61, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 09:27:11', '2024-01-02 09:27:11', NULL),
(184, 'email', 66, 'manager@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 09:29:19', '2024-01-02 09:29:19', NULL),
(185, 'email', 66, 'manager@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 10:40:14', '2024-01-02 10:40:14', NULL),
(186, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2024-01-02 11:06:26', '2024-01-02 11:06:26', NULL),
(187, 'email', 67, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 11:08:17', '2024-01-02 11:08:17', NULL),
(188, 'email', 68, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 11:23:03', '2024-01-02 11:23:03', NULL),
(189, 'email', 68, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 11:51:47', '2024-01-02 11:51:47', NULL),
(190, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:18:53', '2024-01-02 12:18:53', NULL),
(191, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:19:29', '2024-01-02 12:19:29', NULL),
(192, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:21:35', '2024-01-02 12:21:35', NULL),
(193, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:25:34', '2024-01-02 12:25:34', NULL),
(194, 'email', 54, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:30:05', '2024-01-02 12:30:05', NULL),
(195, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:31:51', '2024-01-02 12:31:51', NULL),
(196, 'email', 73, 'shady@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:36:08', '2024-01-02 12:36:08', NULL),
(197, 'email', 69, 'admin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-01-02 12:36:38', '2024-01-02 12:36:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `bin_id` int(11) NOT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `manufacturing_date` varchar(110) DEFAULT NULL,
  `expiry_date` varchar(110) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `item_code` varchar(110) NOT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `updated_qty` varchar(50) DEFAULT NULL,
  `final_qty` varchar(50) DEFAULT NULL,
  `unit_price` varchar(50) NOT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `warehouse_id`, `bin_id`, `transaction_type`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `updated_qty`, `final_qty`, `unit_price`, `fy_year`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 12, 'GR', '435', '2023-01-05', '2024-01-10', '27-18-32-28', '00012', '0', '30', '30', '125', '2023-24', 6, 1, '2024-01-02 10:39:12', '2024-01-02 10:39:12', NULL),
(2, 7, 12, 'GRR', '435', '2023-01-05', '2024-01-10', '27-18-32-28', '00012', '30', '5', '35', '125', '2023-24', 6, 1, '2024-01-02 10:46:18', '2024-01-02 10:46:18', NULL),
(3, 7, 12, 'GIR', '435', '2023-01-05', '2024-01-10', '27-18-32-28', '00012', '35', '-5', '30', '125', '2023-24', 6, 1, '2024-01-02 10:46:52', '2024-01-02 10:46:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uoms`
--

DROP TABLE IF EXISTS `uoms`;
CREATE TABLE IF NOT EXISTS `uoms` (
  `uom_id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uoms`
--

INSERT INTO `uoms` (`uom_id`, `uom_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ml', NULL, NULL, NULL),
(2, 'Gm', NULL, NULL, NULL),
(3, 'Litre', NULL, NULL, NULL),
(4, 'Kg', NULL, '2022-10-03 05:17:36', NULL),
(5, 'mm', '2022-10-03 05:18:05', '2022-10-03 05:18:05', NULL),
(6, 'cm', '2022-10-03 05:37:13', '2022-10-03 05:37:13', NULL),
(7, 'M', '2022-10-03 06:41:48', '2022-10-03 06:41:48', NULL),
(8, 'Km', '2022-10-03 06:45:05', '2022-10-03 06:45:05', NULL),
(9, 'zxdfhg', '2023-05-24 10:21:01', '2023-05-24 10:21:01', NULL),
(10, 'KK', '2023-05-24 11:31:39', '2023-05-24 11:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_group`
--

DROP TABLE IF EXISTS `uom_group`;
CREATE TABLE IF NOT EXISTS `uom_group` (
  `uom_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_id` int(11) DEFAULT NULL,
  `at_qty` int(11) DEFAULT NULL,
  `at_uom` int(11) DEFAULT NULL,
  `base_qty` int(11) DEFAULT NULL,
  `base_uom` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uom_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uom_group`
--

INSERT INTO `uom_group` (`uom_group_id`, `product_item_id`, `at_qty`, `at_uom`, `base_qty`, `base_uom`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 13, 2, 2, 8, 1, 1, '2023-01-09 07:44:59', '2023-01-09 07:44:59', NULL),
(2, 13, 2, 2, 1, 1, 0, '2023-01-09 07:44:59', '2023-01-09 07:44:59', NULL),
(3, 13, 2, 2, NULL, 1, 0, '2023-01-09 07:44:59', '2023-01-09 07:44:59', NULL),
(4, 13, 2, 2, NULL, 1, 0, '2023-01-09 07:45:00', '2023-01-09 07:45:00', NULL),
(5, 3, 2, 2, 69, 1, 1, '2023-01-11 09:59:13', '2023-01-11 09:59:13', NULL),
(6, 3, 2, 2, 570, 2, 1, '2023-01-11 09:59:13', '2023-01-11 09:59:13', NULL),
(7, 3, 1, 1, 860, 1, 0, '2023-01-11 09:59:13', '2023-01-11 09:59:13', NULL),
(8, 3, 1, 1, 832, 2, 0, '2023-01-11 09:59:13', '2023-01-11 09:59:13', NULL),
(9, 4, 2, 2, 387, 1, 1, '2023-01-11 10:00:12', '2023-01-11 10:00:12', NULL),
(10, 4, 2, 2, 75, 2, 1, '2023-01-11 10:00:12', '2023-01-11 10:00:12', NULL),
(11, 4, 1, 1, 401, 1, 1, '2023-01-11 10:00:12', '2023-01-11 10:00:12', NULL),
(12, 4, 2, 2, 951, 2, 0, '2023-01-11 10:00:12', '2023-01-11 10:00:12', NULL),
(13, 5, 1, 1, 498, 2, 1, '2023-09-05 12:25:49', '2023-09-05 12:25:49', NULL),
(14, 5, 2, 2, 624, 1, 1, '2023-09-05 12:25:49', '2023-09-05 12:25:49', NULL),
(15, 5, 1, 1, 347, 1, 0, '2023-09-05 12:25:49', '2023-09-05 12:25:49', NULL),
(16, 5, 2, 2, 728, 1, 0, '2023-09-05 12:25:49', '2023-09-05 12:25:49', NULL),
(17, 10, 2, 2, 290, 1, 1, '2023-09-05 12:37:54', '2023-09-05 12:37:54', NULL),
(18, 10, 1, 1, 306, 1, 1, '2023-09-05 12:37:54', '2023-09-05 12:37:54', NULL),
(19, 10, 2, 2, 816, 2, 1, '2023-09-05 12:37:54', '2023-09-05 12:37:54', NULL),
(20, 10, 1, 1, 814, 1, 0, '2023-09-05 12:37:54', '2023-09-05 12:37:54', NULL),
(21, 11, 1, 1, 350, 1, 1, '2023-09-05 12:39:03', '2023-09-05 12:39:03', NULL),
(22, 11, 1, 1, 750, 1, 1, '2023-09-05 12:39:03', '2023-09-05 12:39:03', NULL),
(23, 11, 2, 2, 420, 2, 1, '2023-09-05 12:39:03', '2023-09-05 12:39:03', NULL),
(24, 11, 2, 2, 913, 2, 0, '2023-09-05 12:39:03', '2023-09-05 12:39:03', NULL),
(25, 12, 2, 2, 347, 2, 1, '2023-09-05 12:39:16', '2023-09-05 12:39:16', NULL),
(26, 12, 2, 2, 173, 2, 0, '2023-09-05 12:39:16', '2023-09-05 12:39:16', NULL),
(27, 12, 1, 1, 207, 1, 0, '2023-09-05 12:39:16', '2023-09-05 12:39:16', NULL),
(28, 12, 1, 1, 200, 2, 0, '2023-09-05 12:39:16', '2023-09-05 12:39:16', NULL),
(29, 13, 2, 2, 518, 2, 1, '2023-09-05 12:39:52', '2023-09-05 12:39:52', NULL),
(30, 13, 1, 1, 465, 2, 1, '2023-09-05 12:39:52', '2023-09-05 12:39:52', NULL),
(31, 13, 2, 2, 123, 1, 1, '2023-09-05 12:39:52', '2023-09-05 12:39:52', NULL),
(32, 13, 1, 1, 322, 1, 0, '2023-09-05 12:39:52', '2023-09-05 12:39:52', NULL),
(33, 14, 2, 2, 930, 1, 1, '2023-09-05 12:40:13', '2023-09-05 12:40:13', NULL),
(34, 14, 1, 1, 82, 1, 1, '2023-09-05 12:40:13', '2023-09-05 12:40:13', NULL),
(35, 14, 2, 2, 146, 2, 0, '2023-09-05 12:40:13', '2023-09-05 12:40:13', NULL),
(36, 14, 2, 2, 644, 1, 0, '2023-09-05 12:40:13', '2023-09-05 12:40:13', NULL),
(37, 15, 1, 1, 948, 2, 1, '2023-09-05 12:40:30', '2023-09-05 12:40:30', NULL),
(38, 15, 2, 2, 947, 2, 1, '2023-09-05 12:40:30', '2023-09-05 12:40:30', NULL),
(39, 15, 1, 1, 501, 2, 0, '2023-09-05 12:40:30', '2023-09-05 12:40:30', NULL),
(40, 15, 2, 2, 308, 2, 0, '2023-09-05 12:40:30', '2023-09-05 12:40:30', NULL),
(41, 16, 1, 1, 751, 1, 0, '2023-09-05 12:42:58', '2023-09-05 12:42:58', NULL),
(42, 16, 2, 2, 822, 2, 0, '2023-09-05 12:42:58', '2023-09-05 12:42:58', NULL),
(43, 16, 2, 2, 66, 1, 0, '2023-09-05 12:42:58', '2023-09-05 12:42:58', NULL),
(44, 16, 2, 2, 102, 2, 0, '2023-09-05 12:42:58', '2023-09-05 12:42:58', NULL),
(45, 17, 1, 1, 873, 2, 1, '2023-09-05 12:50:30', '2023-09-05 12:50:30', NULL),
(46, 17, 2, 2, 255, 1, 1, '2023-09-05 12:50:30', '2023-09-05 12:50:30', NULL),
(47, 17, 1, 1, 338, 1, 0, '2023-09-05 12:50:30', '2023-09-05 12:50:30', NULL),
(48, 17, 2, 2, 802, 2, 0, '2023-09-05 12:50:30', '2023-09-05 12:50:30', NULL),
(49, 18, 2, 2, 831, 1, 0, '2023-09-05 12:54:44', '2023-09-05 12:54:44', NULL),
(50, 18, 1, 1, 762, 1, 0, '2023-09-05 12:54:44', '2023-09-05 12:54:44', NULL),
(51, 18, 1, 1, 492, 1, 0, '2023-09-05 12:54:44', '2023-09-05 12:54:44', NULL),
(52, 18, 2, 2, 997, 1, 0, '2023-09-05 12:54:44', '2023-09-05 12:54:44', NULL),
(53, 19, 1, 1, 875, 2, 1, '2023-09-05 12:55:34', '2023-09-05 12:55:34', NULL),
(54, 19, 2, 2, 126, 2, 1, '2023-09-05 12:55:34', '2023-09-05 12:55:34', NULL),
(55, 19, 1, 1, 496, 1, 0, '2023-09-05 12:55:34', '2023-09-05 12:55:34', NULL),
(56, 19, 2, 2, 798, 2, 0, '2023-09-05 12:55:34', '2023-09-05 12:55:34', NULL),
(57, 20, 1, 1, 971, 2, 1, '2023-09-05 12:56:43', '2023-09-05 12:56:43', NULL),
(58, 20, 2, 2, 286, 2, 1, '2023-09-05 12:56:43', '2023-09-05 12:56:43', NULL),
(59, 20, 2, 2, 638, 1, 1, '2023-09-05 12:56:43', '2023-09-05 12:56:43', NULL),
(60, 20, 2, 2, 6, 1, 0, '2023-09-05 12:56:43', '2023-09-05 12:56:43', NULL),
(61, 21, 1, 1, 167, 2, 1, '2023-09-05 12:56:47', '2023-09-05 12:56:47', NULL),
(62, 21, 2, 2, 518, 2, 0, '2023-09-05 12:56:47', '2023-09-05 12:56:47', NULL),
(63, 21, 2, 2, 230, 2, 0, '2023-09-05 12:56:47', '2023-09-05 12:56:47', NULL),
(64, 21, 1, 1, 897, 1, 0, '2023-09-05 12:56:47', '2023-09-05 12:56:47', NULL),
(65, 22, 1, 1, 430, 1, 1, '2023-09-06 04:55:48', '2023-09-06 04:55:48', NULL),
(66, 22, 1, 1, 680, 2, 1, '2023-09-06 04:55:48', '2023-09-06 04:55:48', NULL),
(67, 22, 2, 2, 556, 2, 1, '2023-09-06 04:55:48', '2023-09-06 04:55:48', NULL),
(68, 22, 2, 2, 27, 2, 0, '2023-09-06 04:55:48', '2023-09-06 04:55:48', NULL),
(69, 23, 1, 1, 1, 2, 1, '2023-10-24 14:58:51', '2023-10-24 14:58:51', NULL),
(70, 23, NULL, NULL, NULL, NULL, 0, '2023-10-24 14:58:51', '2023-10-24 14:58:51', NULL),
(71, 23, NULL, NULL, NULL, NULL, 0, '2023-10-24 14:58:51', '2023-10-24 14:58:51', NULL),
(72, 23, NULL, NULL, NULL, NULL, 0, '2023-10-24 14:58:51', '2023-10-24 14:58:51', NULL),
(73, 24, 1, 1, 1, 2, 1, '2023-10-28 13:40:47', '2023-10-28 13:40:47', NULL),
(74, 24, 2, 2, 96, 1, 1, '2023-10-28 13:40:47', '2023-10-28 13:40:47', NULL),
(75, 24, NULL, NULL, NULL, NULL, 0, '2023-10-28 13:40:47', '2023-10-28 13:40:47', NULL),
(76, 24, NULL, NULL, NULL, NULL, 0, '2023-10-28 13:40:47', '2023-10-28 13:40:47', NULL),
(77, 25, 2, 2, 171, 1, 1, '2023-11-16 11:20:24', '2023-11-16 11:20:24', NULL),
(78, 25, 2, 2, 908, 2, 1, '2023-11-16 11:20:24', '2023-11-16 11:20:24', NULL),
(79, 25, 2, 2, 824, 2, 1, '2023-11-16 11:20:24', '2023-11-16 11:20:24', NULL),
(80, 25, 2, 2, 500, 2, 0, '2023-11-16 11:20:24', '2023-11-16 11:20:24', NULL),
(81, 26, 1, 1, 67, 1, 1, '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(82, 26, 1, 1, 538, 2, 1, '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(83, 26, 2, 2, 653, 2, 0, '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(84, 26, 1, 1, 205, 1, 0, '2023-11-16 11:38:13', '2023-11-16 11:38:13', NULL),
(85, 27, 1, 1, 715, 2, 1, '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(86, 27, 1, 1, 838, 2, 0, '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(87, 27, 1, 1, 551, 1, 0, '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(88, 27, 1, 1, 393, 2, 0, '2023-11-16 11:39:38', '2023-11-16 11:39:38', NULL),
(89, 28, 1, 1, 373, 1, 1, '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(90, 28, 1, 1, 872, 2, 1, '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(91, 28, 2, 2, 500, 2, 0, '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL),
(92, 28, 2, 2, 687, 1, 0, '2023-11-16 12:16:50', '2023-11-16 12:16:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uom_types`
--

DROP TABLE IF EXISTS `uom_types`;
CREATE TABLE IF NOT EXISTS `uom_types` (
  `uom_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `uom_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uom_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uom_types`
--

INSERT INTO `uom_types` (`uom_type_id`, `uom_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PCS', '2023-01-09 07:11:48', '2023-01-09 07:11:48', '2023-01-09 07:11:48'),
(2, 'Cases', '2023-01-09 07:11:48', '2023-01-09 07:11:48', '2023-01-09 07:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `authKey` varchar(100) DEFAULT NULL,
  `master_admin` tinyint(4) DEFAULT NULL,
  `location_admin` tinyint(4) DEFAULT NULL,
  `show_dashboard` tinyint(4) DEFAULT '0',
  `staff_designation` varchar(100) DEFAULT NULL,
  `staff_qualification` varchar(100) DEFAULT NULL,
  `staff_address` varchar(500) DEFAULT NULL,
  `staff_phone_no` varchar(20) DEFAULT NULL,
  `staff_res_no` varchar(20) DEFAULT NULL,
  `staff_father_no` varchar(20) DEFAULT NULL,
  `staff_aadhar_no` varchar(20) DEFAULT NULL,
  `staff_pan_no` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `staff_marital_status` varchar(20) DEFAULT NULL,
  `staff_caste` varchar(30) DEFAULT NULL,
  `staff_sub_caste` varchar(30) DEFAULT NULL,
  `staff_type` varchar(30) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `password_text` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `fullname`, `username`, `password`, `profile_pic`, `role_id`, `authKey`, `master_admin`, `location_admin`, `show_dashboard`, `staff_designation`, `staff_qualification`, `staff_address`, `staff_phone_no`, `staff_res_no`, `staff_father_no`, `staff_aadhar_no`, `staff_pan_no`, `dob`, `staff_marital_status`, `staff_caste`, `staff_sub_caste`, `staff_type`, `user_type`, `password_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ut similique.', 'Et.', 'Quis corporis tempore.', 'Ipsum et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(2, 'Dolores mollitia nihil.', 'Aut.', 'Laudantium ut in.', 'Veniam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(3, 'Quae magnam.', 'Laborum.', 'Velit molestiae.', 'Nulla.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(4, 'Nam aut hic.', 'Est deserunt.', 'Tenetur dolore molestiae.', 'Dolor.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(5, 'Commodi excepturi omnis.', 'Assumenda distinctio.', 'Reiciendis voluptatem adipisci.', 'Officiis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(6, 'Reprehenderit numquam.', 'Ullam ipsum.', 'Tempora error in.', 'Illum reprehenderit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(7, 'Culpa vel.', 'Quidem reprehenderit.', 'Aut sed suscipit.', 'Provident error.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(8, 'Aperiam nemo.', 'Et et.', 'Neque voluptatem.', 'Hic suscipit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(9, 'Reiciendis mollitia.', 'Sed.', 'Numquam tempora nihil.', 'Perspiciatis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(10, 'Illo porro voluptas.', 'Ut necessitatibus.', 'Ab excepturi.', 'Et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(11, 'Adipisci voluptate praesentium.', 'Ut eum.', 'Necessitatibus aut error.', 'Nobis corrupti.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(12, 'Dolorem ducimus odit.', 'Doloribus.', 'Impedit eveniet est.', 'Officia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(13, 'Et et iusto.', 'Ut.', 'Natus facilis.', 'Consequuntur.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(14, 'Earum nihil et.', 'Ut.', 'Nostrum totam.', 'Voluptatem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(15, 'Minima aut.', 'Dolorem autem.', 'Veritatis blanditiis quisquam.', 'Ut est.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(16, 'Qui quia ut.', 'Veniam eius.', 'Quia exercitationem.', 'Et quae.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(17, 'Alias sit illum.', 'Vero.', 'Natus sunt.', 'Soluta.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(18, 'Amet ipsa.', 'Pariatur rerum.', 'Sapiente molestiae.', 'Eum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(19, 'Et eveniet quia.', 'Consequatur voluptas.', 'Eveniet culpa.', 'Voluptas.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(20, 'Et vitae.', 'Dolor aut.', 'Fugit consequuntur.', 'Dolorum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(21, 'Quo quia.', 'Officiis.', 'Nemo deleniti.', 'Non.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(22, 'Sequi nisi accusantium.', 'Quos.', 'Aut nisi.', 'Quia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(23, 'Cum eos eum.', 'Facilis quae.', 'Est id.', 'Quia reprehenderit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(24, 'Assumenda neque accusantium.', 'Cumque culpa.', 'Ullam nostrum deleniti.', 'Est.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(25, 'Architecto ut.', 'Sequi.', 'Ut nesciunt.', 'Voluptatum quia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(26, 'Inventore consequatur dolorem.', 'In.', 'Placeat similique.', 'Dolores.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(27, 'Quia dolor.', 'Quaerat.', 'Quibusdam delectus ut.', 'Cupiditate.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(28, 'At et.', 'Amet.', 'Et minima harum.', 'Occaecati.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(29, 'Ipsa consequatur blanditiis.', 'Debitis.', 'Aliquam reprehenderit.', 'Maiores iure.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(30, 'Ad sunt.', 'Non.', 'In consequatur dolorem.', 'Impedit qui.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 05:41:06', '2023-11-17 05:41:06', NULL),
(31, 'Consequatur ad.', 'Quis voluptatum.', 'Exercitationem neque non.', 'Libero voluptatem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(32, 'Mollitia eum rerum.', 'Qui.', 'Eveniet qui optio.', 'Quia eligendi.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(33, 'Non qui quis.', 'Et aut.', 'Dolorem dolorem atque.', 'Eius.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(34, 'Voluptatem aspernatur aliquam.', 'Labore.', 'Mollitia odio.', 'Rerum et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(35, 'Tempore ut.', 'Provident.', 'Ad nisi.', 'Sit odio.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(36, 'Eligendi qui commodi.', 'Maiores modi.', 'Id odio.', 'Et voluptatem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(37, 'Adipisci similique.', 'Sint autem.', 'Doloribus et ex.', 'Et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(38, 'Doloremque ut.', 'Blanditiis harum.', 'Eligendi iusto nobis.', 'Unde.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(39, 'Sequi accusamus.', 'Consequatur eius.', 'Et consequuntur voluptatem.', 'Doloremque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(40, 'Dolor officiis voluptatem.', 'Iste in.', 'Non ut repudiandae.', 'Eos.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(41, 'Corrupti ullam.', 'Repellendus fuga.', 'Placeat iusto.', 'Quasi.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(42, 'Quasi et quo.', 'Nam in.', 'Est cumque harum.', 'Ut neque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(43, 'Itaque dolorem.', 'Dolores quo.', 'Qui et.', 'Iusto sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(44, 'Et illum.', 'Qui iusto.', 'Neque sequi voluptas.', 'Omnis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(45, 'Dolores id tempora.', 'Vel tenetur.', 'Ut perferendis.', 'Est omnis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(46, 'Quam est atque.', 'Asperiores maxime.', 'Omnis quia.', 'Architecto distinctio.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(47, 'Ab reiciendis facilis.', 'Cum ea.', 'Aut vitae.', 'Minima odio.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(48, 'Fuga eius natus.', 'Atque.', 'Placeat vero commodi.', 'Dolorem cum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(49, 'Dolorum sit reprehenderit.', 'Omnis.', 'Deleniti molestiae mollitia.', 'Mollitia assumenda.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(50, 'Est unde.', 'Eum.', 'Hic perspiciatis.', 'Vero harum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(51, 'Id quisquam dolorem.', 'Est.', 'Pariatur non in.', 'Quia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(52, 'Odio qui.', 'Saepe.', 'Sed magni.', 'Deleniti.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(53, 'Ipsa omnis ratione.', 'Est.', 'Optio illum adipisci.', 'Reiciendis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:51', '2023-11-17 06:47:51', NULL),
(54, 'Ut eius.', 'Omnis.', 'Et voluptatem consequatur.', 'Cumque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(55, 'Aliquam occaecati.', 'Nulla.', 'Vel aliquid.', 'Nisi molestias.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(56, 'Expedita distinctio.', 'Quis et.', 'Unde laudantium nostrum.', 'Mollitia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(57, 'Voluptas ab.', 'Dolor ut.', 'Delectus et in.', 'Minima.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(58, 'Quos doloribus expedita.', 'Voluptas dolor.', 'Voluptas illo.', 'Eum atque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(59, 'Atque recusandae.', 'Molestiae.', 'Delectus reprehenderit itaque.', 'Molestias.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(60, 'Adipisci architecto repudiandae.', 'Eaque.', 'Incidunt officia.', 'Voluptatem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:47:52', '2023-11-17 06:47:52', NULL),
(61, 'Quaerat aut.', 'Nulla numquam.', 'Cupiditate nesciunt tempore.', 'Vel.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(62, 'Voluptate accusantium.', 'Nihil.', 'Doloribus voluptates officia.', 'Velit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(63, 'Facere eligendi.', 'Ipsum voluptate.', 'Tenetur magni excepturi.', 'Officia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(64, 'Neque officiis.', 'Eius.', 'At accusantium.', 'Totam quidem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(65, 'Corporis minus quis.', 'Reiciendis.', 'Qui fugiat.', 'Totam distinctio.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(66, 'Maxime voluptas porro.', 'Quis sint.', 'Voluptatem vitae nihil.', 'Rem nihil.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(67, 'Eveniet aut id.', 'Dignissimos.', 'Officia perferendis dolorem.', 'Voluptatibus sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(68, 'Natus illo explicabo.', 'Nostrum exercitationem.', 'Impedit nobis sed.', 'Quam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(69, 'Odio deserunt.', 'Optio perspiciatis.', 'Omnis adipisci praesentium.', 'Modi.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(70, 'Quia aliquid est.', 'Reprehenderit doloribus.', 'Et reiciendis velit.', 'Voluptas.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(71, 'Soluta eos exercitationem.', 'Aspernatur.', 'Debitis consequuntur eligendi.', 'Ratione.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(72, 'Iure quasi.', 'Omnis quam.', 'Deleniti libero.', 'Animi qui.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(73, 'Voluptatem qui enim.', 'Inventore et.', 'Ea amet.', 'Et labore.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(74, 'Dicta repellendus.', 'Rerum.', 'Repudiandae ea ut.', 'Consequatur et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(75, 'Est illum sit.', 'Inventore quis.', 'Tempore quis.', 'Ut dolores.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(76, 'Aut sed doloremque.', 'Id.', 'Enim voluptatem iusto.', 'Sed itaque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(77, 'Enim incidunt delectus.', 'Ratione.', 'Et assumenda quibusdam.', 'Dolorem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(78, 'Ut minus reprehenderit.', 'Eos.', 'Earum necessitatibus autem.', 'Deserunt.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(79, 'Eius facere nulla.', 'Eum dolores.', 'Laboriosam et.', 'Unde.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(80, 'Adipisci enim et.', 'Aspernatur et.', 'Iste reiciendis.', 'Ipsa tenetur.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(81, 'Accusamus animi corrupti.', 'Nam ut.', 'Id et voluptatem.', 'Ex.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(82, 'Ut fugiat qui.', 'Eius hic.', 'Sit quia animi.', 'Aut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(83, 'Ab earum.', 'Porro.', 'Quod esse.', 'Est.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(84, 'Consequatur omnis soluta.', 'Occaecati distinctio.', 'Exercitationem aut.', 'Voluptatem.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(85, 'Eos mollitia expedita.', 'In.', 'Natus fugiat ut.', 'Eius unde.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(86, 'Nihil repellat et.', 'Quidem.', 'Possimus non est.', 'Perferendis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(87, 'Labore voluptatum.', 'Accusamus.', 'Rem laudantium.', 'Quae.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(88, 'Aut suscipit eligendi.', 'Quos.', 'Beatae eaque.', 'Aut non.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(89, 'Sit sapiente.', 'Odit.', 'Nam eos laborum.', 'Est quos.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(90, 'Magni fugiat molestias.', 'Distinctio.', 'Omnis reiciendis.', 'Laboriosam sint.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:26', '2023-11-17 06:48:26', NULL),
(91, 'Reiciendis sint.', 'Blanditiis.', 'Et illum.', 'Quos tempora.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:27', '2023-11-17 06:48:27', NULL),
(92, 'Quis quo voluptas.', 'Ad.', 'Quaerat voluptas.', 'Magni.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:27', '2023-11-17 06:48:27', NULL),
(93, 'Repellat error quo.', 'Quam.', 'Culpa inventore quam.', 'Ducimus nemo.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:27', '2023-11-17 06:48:27', NULL),
(94, 'Numquam ut unde.', 'Sed.', 'Laboriosam necessitatibus ut.', 'Ex dicta.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:27', '2023-11-17 06:48:27', NULL),
(95, 'Omnis architecto id.', 'Ut non.', 'Beatae qui.', 'Culpa amet.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:27', '2023-11-17 06:48:27', NULL),
(96, 'Nemo laudantium impedit.', 'Quis ut.', 'Recusandae sit corporis.', 'Optio.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(97, 'Totam quia.', 'Est a.', 'Est vel cumque.', 'Quibusdam et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(98, 'Necessitatibus vel.', 'Minima.', 'Reiciendis laudantium.', 'Dolor.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(99, 'Ipsa rerum.', 'Ducimus iusto.', 'Incidunt corrupti.', 'Repellat et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(100, 'Ducimus ut ut.', 'Assumenda.', 'Excepturi quia.', 'Maiores sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(101, 'Quo quos.', 'In.', 'Adipisci necessitatibus.', 'Quia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(102, 'Nesciunt dolor.', 'Rem.', 'Ipsam voluptates architecto.', 'Tenetur.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(103, 'Quaerat recusandae est.', 'Totam.', 'Ipsam sed.', 'Est dolores.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(104, 'Delectus distinctio.', 'Magnam adipisci.', 'Facere suscipit velit.', 'Aliquid.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(105, 'Placeat non.', 'Consectetur libero.', 'Quam sunt recusandae.', 'Ad.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(106, 'Esse sit et.', 'Et harum.', 'Doloremque aut architecto.', 'Officiis officia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(107, 'Tempore dolores.', 'Maxime.', 'Voluptas praesentium voluptas.', 'Rerum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(108, 'Perferendis et sunt.', 'Corporis.', 'Aut reiciendis aut.', 'Unde.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(109, 'Dolorem reiciendis.', 'Quos quas.', 'Repudiandae officia autem.', 'Praesentium veritatis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(110, 'Quis qui expedita.', 'At laboriosam.', 'Provident animi.', 'Et eaque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(111, 'Sint similique qui.', 'Fugit voluptatibus.', 'Ut aut molestiae.', 'In.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(112, 'Ut sint et.', 'Rem et.', 'Inventore repudiandae veritatis.', 'Numquam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(113, 'Nulla quaerat.', 'Deserunt quia.', 'Et dicta.', 'Tempora.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(114, 'Voluptatum at.', 'Culpa.', 'Eligendi nostrum.', 'Inventore non.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(115, 'Nulla pariatur itaque.', 'Architecto iure.', 'Accusantium facere.', 'Veritatis nisi.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(116, 'Nihil eum atque.', 'Placeat reprehenderit.', 'Ullam sed porro.', 'Molestias.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(117, 'Rerum est dolorem.', 'Qui.', 'Reprehenderit quae necessitatibus.', 'Officiis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(118, 'Non neque.', 'Eaque laborum.', 'Fugit quasi placeat.', 'Quibusdam ut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(119, 'Ipsum perspiciatis quos.', 'Rerum sit.', 'Illum ea.', 'Voluptas.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(120, 'Aut et qui.', 'Optio dolorem.', 'Eos iusto ipsa.', 'Omnis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:28', '2023-11-17 06:48:28', NULL),
(121, 'Dolorem veritatis qui.', 'Et consequatur.', 'Est repudiandae ab.', 'Delectus.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(122, 'Et exercitationem.', 'Facilis nihil.', 'Qui eligendi omnis.', 'Qui eius.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(123, 'Recusandae fuga quasi.', 'Ipsam rem.', 'Officiis repudiandae.', 'Nostrum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(124, 'Non officia eos.', 'Dolor.', 'Soluta dolores.', 'Quo similique.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(125, 'Id animi architecto.', 'Dicta.', 'Dignissimos at.', 'Delectus.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(126, 'Enim sint dolorem.', 'Suscipit.', 'Aspernatur et.', 'Veniam qui.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(127, 'Incidunt dolor.', 'Placeat.', 'Repellendus ducimus aut.', 'Ipsa.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(128, 'Consequatur natus.', 'Nam.', 'Laborum velit cum.', 'Rerum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(129, 'Sunt voluptas unde.', 'Magni perferendis.', 'Neque quis animi.', 'Vero.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(130, 'Dicta velit dolore.', 'Voluptas.', 'Quo eligendi.', 'Voluptatum sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(131, 'Ratione ab.', 'Voluptas.', 'Vel rerum.', 'In saepe.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(132, 'Reiciendis porro.', 'Voluptatibus aut.', 'Veritatis nobis est.', 'Harum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(133, 'Et in.', 'Temporibus.', 'Modi itaque et.', 'Aut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(134, 'Placeat nisi.', 'Tempora.', 'Vel qui hic.', 'Vel.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(135, 'Ab explicabo esse.', 'Est et.', 'Error omnis.', 'Et.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(136, 'Tenetur eveniet dolorem.', 'Eum maxime.', 'Doloremque neque.', 'Porro accusantium.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(137, 'Harum eum accusamus.', 'Vero soluta.', 'Vitae soluta.', 'Corrupti ut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(138, 'Unde nam molestiae.', 'Natus.', 'Non soluta.', 'Repellendus minima.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(139, 'A atque cumque.', 'Quibusdam sint.', 'Qui officia laboriosam.', 'Perspiciatis est.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(140, 'Eos eius.', 'Reprehenderit.', 'Porro neque perferendis.', 'Ut eaque.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(141, 'Iusto odio.', 'Est sequi.', 'Quas quo.', 'Nam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(142, 'Assumenda occaecati.', 'Et quae.', 'Consequatur et.', 'Assumenda qui.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(143, 'Consequuntur possimus aut.', 'Beatae.', 'Consequatur et vel.', 'Accusantium maxime.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(144, 'Voluptas corporis.', 'Minus.', 'Explicabo asperiores.', 'At.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(145, 'Quam sint ex.', 'Laborum.', 'Eius nisi.', 'Possimus at.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(146, 'Voluptas qui.', 'Dolorem.', 'Laudantium dignissimos consequatur.', 'Sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(147, 'Eaque consequuntur.', 'Quis.', 'Exercitationem occaecati.', 'Quod.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(148, 'Rerum vitae.', 'Aliquam.', 'Optio et odio.', 'Qui sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(149, 'Corporis perferendis.', 'Ipsam in.', 'Et quia.', 'Consequatur at.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(150, 'Omnis et dolores.', 'Sed minus.', 'Suscipit maxime ex.', 'In.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:48:29', '2023-11-17 06:48:29', NULL),
(151, 'Amet voluptatum.', 'Pariatur sint.', 'Velit aspernatur consequatur.', 'Possimus.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(152, 'Voluptatem repellat.', 'Quod.', 'Aut commodi reprehenderit.', 'Sit maiores.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(153, 'Eius sequi eius.', 'Rerum.', 'Dignissimos doloremque.', 'Sed.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(154, 'Sint quos rerum.', 'Ad.', 'Corporis quisquam.', 'Dignissimos.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(155, 'Laudantium dolorem.', 'Omnis ducimus.', 'Numquam officiis molestias.', 'Aut sunt.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(156, 'Distinctio est.', 'Sunt.', 'Est recusandae.', 'Itaque delectus.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(157, 'Eum ea.', 'Delectus.', 'Dicta unde neque.', 'Voluptas.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(158, 'Temporibus voluptas suscipit.', 'Voluptatem.', 'Asperiores et et.', 'Aliquam.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(159, 'Amet a tempora.', 'Quis.', 'Ratione labore et.', 'Debitis.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(160, 'Quis veniam earum.', 'Eligendi praesentium.', 'Aspernatur aspernatur distinctio.', 'Maxime quaerat.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(161, 'Ullam voluptatem.', 'Nemo.', 'Et voluptatem ipsam.', 'Est.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(162, 'Voluptates enim.', 'Ipsa aut.', 'Aperiam fuga iste.', 'Laudantium.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(163, 'Modi labore dolore.', 'Asperiores velit.', 'Rerum ex quia.', 'Officiis nihil.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(164, 'Qui quos.', 'Ut.', 'Et nulla exercitationem.', 'Ab inventore.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(165, 'Sit aut.', 'Vel quia.', 'Aperiam dolorem.', 'Pariatur.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(166, 'Error temporibus ab.', 'Possimus.', 'Exercitationem blanditiis quisquam.', 'Quae consequatur.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(167, 'Rem qui nobis.', 'Vitae.', 'Voluptatem earum hic.', 'Quia.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(168, 'Et officia.', 'Laborum.', 'Nihil libero.', 'Repudiandae.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(169, 'Eum animi.', 'Odio quisquam.', 'Laboriosam expedita vitae.', 'Rerum ut.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(170, 'Reprehenderit sequi aut.', 'Quo aut.', 'Repellendus ab aut.', 'Voluptates.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(171, 'Libero tempora.', 'Ullam nam.', 'Id et aut.', 'Non in.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(172, 'Dolorem id deleniti.', 'Laboriosam.', 'Non error sed.', 'Expedita voluptate.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(173, 'Consequatur itaque voluptas.', 'Qui sit.', 'Error earum.', 'Sint suscipit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(174, 'Cupiditate hic.', 'Aut iusto.', 'Totam magni.', 'Iure.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(175, 'Voluptas qui labore.', 'Accusamus.', 'Voluptatum eum.', 'Sint sit.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(176, 'Quod minus consectetur.', 'Possimus.', 'Vitae est.', 'Eos.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(177, 'Eum maiores.', 'Error.', 'Omnis id dolores.', 'Dignissimos.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(178, 'Labore sit aut.', 'Consequatur minima.', 'Molestiae voluptatem magnam.', 'Et laborum.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(179, 'Fugit vel aspernatur.', 'Repudiandae et.', 'Veritatis aut eos.', 'Ea.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL),
(180, 'Quia culpa delectus.', 'Ut dolore.', 'Ratione sed.', 'Praesentium.', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:04', '2023-11-17 06:49:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
CREATE TABLE IF NOT EXISTS `variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `variant_desc` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `name`, `variant_desc`, `created_at`, `updated_at`) VALUES
(27, 'Multigrain 200 gms', NULL, '2023-12-04 05:17:23', '2023-12-04 05:17:23'),
(28, 'Chocolate', NULL, '2023-12-14 02:49:52', '2023-12-14 02:49:52'),
(29, 'Snacks', NULL, '2023-12-14 03:54:13', '2023-12-14 03:54:13'),
(30, 'Snacks', NULL, '2023-12-14 04:01:31', '2023-12-14 04:01:31'),
(31, 'Manufactuerer', NULL, '2023-12-14 09:36:04', '2023-12-14 09:36:04'),
(32, 'Dabar Varient', NULL, '2023-12-15 01:51:22', '2023-12-15 01:51:22'),
(33, 'house varient', NULL, '2023-12-18 09:04:43', '2023-12-18 09:04:43'),
(34, 'Para Varient', NULL, '2023-12-22 02:21:36', '2023-12-22 02:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE IF NOT EXISTS `warehouse` (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

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
