-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2024 at 01:16 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `user_name`, `session_id`, `module`, `action`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Internal User Management', 'Internal User Created', 'Internal User Created: Test ASM', '2024-03-14 07:28:38', '2024-03-14 07:28:38', NULL),
(2, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Internal User Management', 'Internal User Created', 'Internal User Created: test ASM', '2024-03-14 07:34:40', '2024-03-14 07:34:40', NULL),
(3, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Internal User Management', 'Internal User Created', 'Internal User Created: test ASE', '2024-03-14 07:35:06', '2024-03-14 07:35:06', NULL),
(4, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Internal User Management', 'Internal User Created', 'Internal User Created: test officer', '2024-03-14 07:41:24', '2024-03-14 07:41:24', NULL),
(5, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Internal User Management', 'Internal User Created', 'Internal User Created: test salesman', '2024-03-14 07:42:15', '2024-03-14 07:42:15', NULL),
(6, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Area Master', 'Area Created', 'Area Created: Test Area', '2024-03-14 07:42:33', '2024-03-14 07:42:33', NULL),
(7, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Route Master', 'Route Created', 'Route Created: Test Route', '2024-03-14 07:42:44', '2024-03-14 07:42:44', NULL),
(8, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Beat Master', 'Beat Created', 'Beat Created: Test Beat', '2024-03-14 07:42:56', '2024-03-14 07:42:56', NULL),
(9, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'BeatCalender Master', 'BeatCalender Created', 'BeatCalender Created: ', '2024-03-14 07:43:25', '2024-03-14 07:43:25', NULL),
(10, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>test oulett Change=> residential_status=\"1\" bp_organisation_type=\"3\" bp_channel=\"3\" bp_category=\"2\" bp_group=\"3\" sales_manager=\"389\" ase=\"390\" sales_officer=\"392\" payment_terms_id=\"1\" gst_details=\"BVHJ4534\" gst_reg_type=\"2\" rcm_app=\"1\" msme_reg=\"1\" is_converted=\"1\" company_id=\"18\"', '2024-03-14 07:53:35', '2024-03-14 07:53:35', NULL),
(11, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Products', 'Product Created', 'Product Created: 000111', '2024-03-14 07:56:24', '2024-03-14 07:56:24', NULL),
(12, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Products', 'Product Updated', 'Product Updated: Name=>000111 Change=> product_desc=\"test In veniam ut reicie\" consumer_desc=\"test Zeph Coleman\"', '2024-03-14 07:59:00', '2024-03-14 07:59:00', NULL),
(13, '75', 'super admin', 'UF778YITBpKSiHD6XIhKXwQvf1YT79oSM6ulujkb', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>test oulett Change=> pricing_profile=\"2\"', '2024-03-14 07:59:49', '2024-03-14 07:59:49', NULL),
(14, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>test oulett Change=> bp_channel=\"4\" bp_group=\"7\"', '2024-03-15 06:43:29', '2024-03-15 06:43:29', NULL),
(15, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Roles Management', 'Role Updated', 'Role Updated: Name=>Super Admin Change=> menu_ids=\"43,44,47,50,51,52,54,11,22\" submenu_ids=\"48,67,68,69,70,71,98,121,56,57,73,74,89,55,58,105,108,109,110,111,102,103,104,112,113,115,114,120,122,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,119,24,54\"', '2024-03-15 07:33:47', '2024-03-15 07:33:47', NULL),
(16, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Series Number Master', 'Series Number Updated', 'Series Number Updated: Name=>PO Change=> transaction_type=\"PO\"', '2024-03-15 09:34:30', '2024-03-15 09:34:30', NULL),
(17, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Bussiness Partner Master', 'Bussiness Partner Updated', 'Bussiness Partner Updated: Name=>test oulett Change=> sales_officer=\"391\"', '2024-03-15 09:46:36', '2024-03-15 09:46:36', NULL),
(18, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Bussiness Partner Master', 'Bussiness Partner Created', 'Bussiness Partner Created: test Vendor', '2024-03-15 09:47:56', '2024-03-15 09:47:56', NULL),
(19, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Bussiness Partner Address', 'Bussiness Partner Address Deleted', 'Bussiness Partner Address Deleted: test', '2024-03-15 09:48:48', '2024-03-15 09:48:48', NULL),
(20, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Bussiness Partner Address', 'Bussiness Partner Address Deleted', 'Bussiness Partner Address Deleted: test', '2024-03-15 09:48:53', '2024-03-15 09:48:53', NULL),
(21, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'PurchaseOrder', 'PurchaseOrder Created', 'PurchaseOrder Created: PO-2023-24-15', '2024-03-15 09:53:34', '2024-03-15 09:53:34', NULL),
(22, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'PurchaseOrder', 'PurchaseOrder Updated', 'PurchaseOrder Updated: Name=>PO-2023-24-15 Change=> financial_year=\"2023-24\" posting_date=\"2024-03-15\"', '2024-03-15 09:53:51', '2024-03-15 09:53:51', NULL),
(23, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'GR Receipt', 'GR Receipt Created', 'GR Receipt Created: GR-2023-24-21', '2024-03-15 09:53:55', '2024-03-15 09:53:55', NULL),
(24, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'GoodsServiceReceipts', 'GoodsServiceReceipts Updated', 'GoodsServiceReceipts Updated: Name=>GR-2023-24-21 Change=> vendor_inv_no=\"324324\"', '2024-03-15 09:54:54', '2024-03-15 09:54:54', NULL),
(25, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Sales Order', 'Sales Order Updated', 'Sales Order Updated: Name=>SO-2023-24-20 Change=> customer_ref_no=\"23535\" bill_to=\"1\" ship_from=\"2\" bill_date=\"2024-03-15\" party_name=\"test oulett\" financial_year=\"2023-24\" delivery_date=\"2024-03-31\" document_date=\"2024-03-15\" contact_person=\"10\" bill_to_gst_no=\"BVHJ4534\" is_updated=\"1\"', '2024-03-15 10:08:02', '2024-03-15 10:08:02', NULL),
(26, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Sales Order', 'Sales Order Updated', 'Sales Order Updated: Name=>SO-2023-24-20 Change=> party_name=\"test oulett\"', '2024-03-15 10:08:11', '2024-03-15 10:08:11', NULL),
(27, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Order Fulfillment', 'Order Fulfillment Created', 'Order Fulfillment Created: OF-2023-24-16', '2024-03-15 10:08:15', '2024-03-15 10:08:15', NULL),
(28, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'A/R Invoice', 'A/R Invoice Created', 'A/R Invoice Created: AR-2023-24-17', '2024-03-15 10:18:53', '2024-03-15 10:18:53', NULL),
(29, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Series Number Master', 'Series Number Updated', 'Series Number Updated: Name=>PO Change=> company_id=\"18\"', '2024-03-15 12:31:29', '2024-03-15 12:31:29', NULL),
(30, '75', 'super admin', 'eKNDzWhbATTsLvfn2OS29ohqhQ8r6P0DNbtGKC7f', 'Series Number Master', 'Series Number Created', 'Series Number Created: Brenda-GR', '2024-03-15 12:34:13', '2024-03-15 12:34:13', NULL);

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
  `beat_id` varchar(110) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`admin_user_id`, `first_name`, `last_name`, `email`, `password`, `mobile_no`, `profile_pic`, `role_id`, `company_id`, `account_status`, `remember_token`, `location_id`, `is_admin`, `user_type`, `role`, `parent_users`, `beat_id`, `zone_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(75, 'super', 'admin', 'superadmin@gmail.com', '$2y$10$S/cyEWcJLinaGY55Xo3Ybuv3/qi5QpEi7vX1zVb2xljMnEiTWmVHu', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '17', '', NULL, NULL, '2024-01-03 06:59:05', '2024-01-03 06:59:05', NULL),
(360, 'admin', NULL, 'admin@gmail.com', '$2y$10$Z9ZpSZdgs2FcB1BQK7suYei/q0DN.hdXG8/SUTEzZ5Iu4oFvF8k/y', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '33', '', '', NULL, '2024-02-21 09:21:20', '2024-02-21 09:24:54', NULL),
(389, 'test', 'ASM', 'testasm@gmail.com', '$2y$10$N7A/i/My3nbGzvdBuijKuOTrBqF4lbVNMzrGc09UtEm2mm86.a3IC', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '34', '', NULL, 2, '2024-03-14 07:34:40', '2024-03-14 07:34:40', NULL),
(390, 'test', 'ASE', 'testase@gmail.com', '$2y$10$adKhTwGugqeHuRz6EeByTOBDza2KSF.sjoCfEnL3gnsgfBnohrno6', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '35', '389', NULL, 2, '2024-03-14 07:35:06', '2024-03-14 07:35:06', NULL),
(391, 'Brenda Anthony', NULL, 'cyve@mailinator.com', '$2y$10$cnmsBhb.lLgh4ZqEDlHZ1OdkHOtS91c0yTSqbPTgCP6./fVhf6wC6', '9999999999', NULL, NULL, 18, 1, NULL, NULL, NULL, NULL, '41', '390', NULL, 3, '2024-03-14 07:36:01', '2024-03-14 07:36:01', NULL),
(392, 'test', 'officer', 'testofficer@gmail.com', '$2y$10$IwpTGCa2MVH1mCb4AiRjo.J7HmetjQ8kpHwTPDD.Bl6Smj.M04W3i', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '40', '390', NULL, 2, '2024-03-14 07:41:24', '2024-03-14 07:41:24', NULL),
(393, 'test', 'salesman', 'salesman@gmail.com', '$2y$10$FiMHCCYWBxpL.sZLV2QfCusmJ20pWIZe5W27Y6rr6SNIjv6svguUm', NULL, NULL, NULL, 18, 1, NULL, NULL, NULL, NULL, '37', '392', NULL, 2, '2024-03-14 07:42:15', '2024-03-14 07:42:15', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test Area', '2024-03-14 13:12:33', '2024-03-14 13:12:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ar_invoice`
--

DROP TABLE IF EXISTS `ar_invoice`;
CREATE TABLE IF NOT EXISTS `ar_invoice` (
  `order_fulfillment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `of_id` int(11) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `order_booking_counter` int(11) DEFAULT NULL,
  `customer_ref_no` varchar(110) DEFAULT NULL,
  `customer_inv_no` varchar(100) DEFAULT NULL,
  `ar_inv_no` varchar(100) DEFAULT NULL,
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
  `is_bill_booking_done` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_invoice`
--

INSERT INTO `ar_invoice` (`order_fulfillment_id`, `order_booking_id`, `of_id`, `fy_year`, `company_id`, `order_booking_counter`, `customer_ref_no`, `customer_inv_no`, `ar_inv_no`, `trans_type`, `place_of_supply`, `total_down_payment`, `applied_amount`, `balance_due`, `bill_no`, `bill_to`, `receipt_type`, `po_document`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `ship_from`, `contact_person`, `status`, `posting_date`, `due_date`, `document_date`, `discount`, `bill_to_gst_no`, `gst_rate`, `t_down_pmnt`, `applied_amt`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `storage_location_id`, `is_bill_booking_done`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-24', 18, NULL, '23535', '345345', '234324', 'regular', NULL, NULL, NULL, NULL, 'AR-2023-24-17', '1', NULL, NULL, '2024-03-15', 1, NULL, NULL, '2023-24', NULL, '2', 10, 'open', NULL, '2024-03-31', '2024-03-15', NULL, 'BVHJ4534', '18', NULL, NULL, 'Five Thousand Four Hundred and Sixteen Only', 'Eight Hundred and Twenty-Six Only', '4590', '413.1', '413.1', '0', '826.2', NULL, '5416', NULL, NULL, NULL, NULL, '2024-03-15 10:18:53', '2024-03-15 10:46:38', NULL);

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
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_invoice_items`
--

INSERT INTO `ar_invoice_items` (`order_fulfillment_item_id`, `order_fulfillment_id`, `party_id`, `order_booking_id`, `item_name`, `item_code`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '6', NULL, '350.00', '2478.00', '350', 1, '378.00', '9', '189', '9', '189', '0', '0', '2100.00', '1865-Batch-1314338', 8, '2024-03-15 10:18:53', '2024-03-15 10:18:53', NULL),
(2, 1, NULL, 1, NULL, '69991611', '10375577', NULL, '10', NULL, '249.00', '2938.20', '249', 1, '448.20', '9', '224.1', '9', '224.1', '0', '0', '2490.00', '1866-Batch-10375577', 8, '2024-03-15 10:18:53', '2024-03-15 10:18:53', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

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
(49, 'Finance & Banking', '#', NULL, 1, 'layers', NULL, 0, 0, '2022-09-13 11:03:12', '2024-02-21 09:33:56'),
(50, 'Logs & History', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-11-15 11:42:54', '2023-11-15 11:42:54'),
(51, 'Reports', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-12-08 07:56:15', '2023-12-08 07:56:15'),
(52, 'Pricing', '#', NULL, 1, 'layers', NULL, 1, 0, '2023-12-11 04:42:29', '2023-12-11 04:42:29'),
(53, 'Outlet', '#', NULL, 1, 'layers', NULL, 0, 0, '2023-12-14 11:04:01', '2024-02-03 05:29:37'),
(54, 'Sales Pricing', '#', NULL, 1, 'layers', NULL, 1, 0, '2024-03-15 07:28:58', '2024-03-15 07:37:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_submenubar`
--

INSERT INTO `backend_submenubar` (`submenu_id`, `submenu_name`, `submenu_controller_name`, `submenu_action_name`, `menu_id`, `sub_parent_id`, `has_sub_submenu`, `submenu_permissions`, `visibility`, `sort_order`, `created_at`, `updated_at`) VALUES
(24, 'Internal Users', 'admin.users', 'grid', 22, NULL, NULL, '6,7,8,9', 1, NULL, '2021-09-14 23:44:11', '2022-09-06 12:53:48'),
(38, 'Business Master', 'admin.bussinesspartner', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2024-02-17 10:11:01'),
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
(67, 'Sales Order', 'admin.orderbooking', NULL, 43, NULL, NULL, '6,7,8,9,10', 1, NULL, '2022-06-30 00:56:06', '2024-01-08 05:32:01'),
(68, 'Order Fulfilment/Dispatch', 'admin.orderfulfilment', NULL, 43, NULL, NULL, '6,7,8,9,10', 1, NULL, '2022-06-30 00:56:06', '2024-01-05 10:35:36'),
(69, 'Incoming Payments', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:04:12'),
(70, 'Return', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:03:53'),
(71, 'A/R Credit Memo', '#', NULL, 43, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2023-06-07 09:04:24'),
(73, 'A/P Invoice', 'admin.apinvoice', NULL, 44, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2024-02-21 09:35:35'),
(74, 'Goods Return', '#', NULL, 44, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2024-01-03 07:10:53'),
(76, 'Area', 'admin.area', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2022-06-30 00:56:06', '2023-05-23 05:43:38'),
(77, 'Route', 'admin.route', NULL, 11, NULL, NULL, '6,7,9', 1, NULL, '2023-05-23 06:55:35', '2023-05-23 06:55:35'),
(78, 'Beat', 'admin.beat', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-05-23 07:11:58', '2023-05-23 07:11:58'),
(79, 'Beat Calender Master', 'admin.beatcalender', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-05-24 05:14:30', '2023-05-24 05:14:30'),
(82, 'BSPL Heads', 'admin.bsplheads', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 06:37:17', '2023-10-09 09:03:43'),
(83, 'BSPL Category', 'admin.bsplcat', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-05-24 12:27:17', '2023-10-09 09:05:26'),
(84, 'BSPL Sub-Category', 'admin.bsplsubcat', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 05:45:34', '2023-10-09 09:05:39'),
(89, 'Outgoing Payments', '#', NULL, 44, NULL, NULL, '6,7,8,9', 0, NULL, '2022-06-30 00:56:06', '2024-01-03 06:24:51'),
(93, 'Type', 'admin.bspltype', NULL, 49, NULL, NULL, '6,7,8,9', 0, NULL, '2023-06-05 07:05:15', '2023-10-09 09:05:52'),
(94, 'Banking Payments', 'admin.bankingpayment', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-05 11:27:57', '2023-06-05 11:27:57'),
(95, 'Expenses', '#', NULL, 11, '99,82,83,84,93', 1, '6,7,8,9', 0, NULL, '2023-06-05 11:40:25', '2024-02-21 09:34:26'),
(96, 'Banking Receipts', 'admin.bankingreceipt', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-06 09:48:54', '2023-06-06 09:48:54'),
(97, 'Bill Booking', 'admin.billbooking', NULL, 49, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-06 10:26:48', '2023-06-06 10:26:48'),
(98, 'A/R Invoice', 'admin.arinvoice', NULL, 43, NULL, NULL, '6,7,8,9', 1, NULL, '2023-06-07 09:03:19', '2023-06-07 11:26:28'),
(99, 'Expense Master', 'admin.expensemaster', NULL, 11, NULL, 1, '6,7,8,9', 0, NULL, '2023-06-05 11:40:25', '2024-01-02 05:50:26'),
(100, 'Series Master', 'admin.seriesmaster', NULL, 11, NULL, NULL, '6,7,8,9', 1, NULL, '2023-10-09 11:40:59', '2023-10-09 11:40:59'),
(101, 'Company Master', 'admin.company', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-10-10 08:06:47', '2024-02-21 09:34:50'),
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
(114, 'Purchase Pricelist', 'admin.pricings', NULL, 52, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-11 04:53:22', '2024-02-21 09:24:12'),
(115, 'Inventory', 'admin.inventory', NULL, 51, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-11 10:43:30', '2023-12-20 12:07:03'),
(116, 'Outlet Addition', 'admin.outlet', NULL, 53, NULL, NULL, '6,7,8,9', 1, NULL, '2023-12-14 11:04:21', '2023-12-14 11:04:21'),
(117, 'Warehouses', 'admin.storagelocations', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-20 07:01:06', '2023-12-20 07:10:54'),
(118, 'Bin Management', 'admin.bin', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2023-12-20 07:01:06', '2023-12-20 07:10:51'),
(119, 'Country-State-City', 'admin.country', NULL, 11, NULL, NULL, '6,7,8,9', 0, NULL, '2024-02-17 08:58:53', '2024-02-21 10:36:13'),
(120, 'Sale Pricelist', 'admin.sellingpricing', NULL, 52, NULL, NULL, '6,7,8,9', 1, NULL, '2024-02-20 11:51:22', '2024-02-21 09:24:28'),
(121, 'Sales Returns / Credit Notes', 'admin.returninvoice', NULL, 43, NULL, NULL, '6,7,8,9', 1, NULL, '2024-03-13 11:54:52', '2024-03-15 10:48:56'),
(122, 'Margin', 'admin.margin', NULL, 54, NULL, NULL, '6,7,8,9', 1, NULL, '2024-03-15 07:31:58', '2024-03-15 07:31:58'),
(123, 'Scheme', 'admin.scheme', NULL, 54, NULL, NULL, '6,7,8,9', 1, NULL, '2024-03-15 07:32:46', '2024-03-15 07:32:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banking_details`
--

INSERT INTO `banking_details` (`banking_details_id`, `bussiness_partner_id`, `bank_name`, `acc_holdername`, `bank_branch`, `ifsc`, `ac_number`, `bank_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'BOB', 'Hemraj Naidu', 'station bob', 'BOBDFSAF5454', '653698745214', 'Hyderabad Metro Station', '2024-02-21 10:03:59', '2024-02-21 10:03:59', NULL),
(2, '44', 'Maharashtra Bank', 'Naresh Dhumal', 'Andheri Branch', 'MAHASDGSDG654', '6589415246514', 'Andheri', '2024-02-22 06:57:20', '2024-02-22 06:57:20', NULL),
(3, '45', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:37:29', '2024-02-23 05:39:42', '2024-02-23 05:39:42'),
(4, '46', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:37:29', '2024-02-23 05:39:12', '2024-02-23 05:39:12'),
(5, '47', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:37:29', '2024-02-23 05:39:30', '2024-02-23 05:39:30'),
(6, '48', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:40:06', '2024-02-23 05:44:50', '2024-02-23 05:44:50'),
(7, '49', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:40:06', '2024-02-23 05:44:26', '2024-02-23 05:44:26'),
(8, '50', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 05:40:06', '2024-02-23 05:44:38', '2024-02-23 05:44:38'),
(9, '51', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:23:06', '2024-02-23 06:29:40', '2024-02-23 06:29:40'),
(10, '52', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:23:06', '2024-02-23 06:25:38', '2024-02-23 06:25:38'),
(11, '53', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:30:10', '2024-02-23 06:33:29', '2024-02-23 06:33:29'),
(12, '54', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:30:10', '2024-02-23 06:32:33', '2024-02-23 06:32:33'),
(13, '55', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:36:17', '2024-02-23 06:38:49', '2024-02-23 06:38:49'),
(14, '56', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'Test Address', '2024-02-23 06:36:17', '2024-02-23 06:38:13', '2024-02-23 06:38:13'),
(15, '57', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 06:39:02', '2024-02-23 06:41:14', '2024-02-23 06:41:14'),
(16, '58', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 06:39:02', '2024-02-23 06:40:53', '2024-02-23 06:40:53'),
(17, '59', 'BoB', 'Hemraj Naidu', 'Kalyan BoB', 'BOBJHJK54', '69746545465514', 'Khadakpada, Kalyan', '2024-02-23 06:39:02', '2024-02-23 06:41:05', '2024-02-23 06:41:05'),
(18, '9', 'BOB', 'Manas Jadhav', 'Mumbra BOB', 'BOBAJDAGHD7656', '6127482384632', 'Mumbra, Station', '2024-02-23 10:12:23', '2024-02-23 10:12:23', NULL),
(19, '61', 'adsf', 'adsf', 'adf', 'asdf', '23232323', 'asdf', '2024-02-28 10:11:24', '2024-02-28 10:11:24', NULL),
(20, '62', 'adf', 'adsf', 'asf', '32adsf', '32323', '2323sdf', '2024-02-28 10:18:52', '2024-02-28 10:18:52', NULL),
(21, '63', 'Axis Bank', 'Reliance Retail Limited', 'MUMBAI', 'AXIS0000657', '12100000901234', 'test', '2024-03-11 09:58:38', '2024-03-11 10:35:45', NULL),
(22, '64', 'test', 'test', 'test', 'test', '9384385348548', 'test', '2024-03-12 05:15:43', '2024-03-12 05:15:43', NULL),
(23, '65', 'test', 'test', 'test', 'test', '7687687678', 'test', '2024-03-13 06:54:00', '2024-03-13 06:54:00', NULL),
(24, '2', 'test', 'test', 'test', 'tets', '8348358345', 'test', '2024-03-15 09:47:56', '2024-03-15 09:47:56', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banking_payment`
--

INSERT INTO `banking_payment` (`banking_payment_id`, `transaction_type`, `vendor_id`, `bill_date`, `overdue_range`, `payment_type`, `fy_year`, `company_id`, `doc_no`, `posting_date`, `bill_booking_item_ids`, `net_total`, `tax_total`, `gorss_total`, `bank`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'neft', 210, '2024-02-07', 'test', 'regular', '2023-24', 6, 'BP-2023-24-7', '2024-02-07', '2', '73514.00', NULL, NULL, 125, '2024-02-07 12:16:50', NULL, '2024-02-07 12:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `banking_receipt`
--

DROP TABLE IF EXISTS `banking_receipt`;
CREATE TABLE IF NOT EXISTS `banking_receipt` (
  `banking_receipt_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`banking_receipt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banking_receipt`
--

INSERT INTO `banking_receipt` (`banking_receipt_id`, `transaction_type`, `vendor_id`, `bill_date`, `overdue_range`, `payment_type`, `fy_year`, `company_id`, `doc_no`, `posting_date`, `bill_booking_item_ids`, `net_total`, `tax_total`, `gorss_total`, `bank`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'neft', 211, '2024-02-07', 'none', 'regular', '2023-24', 6, 'BR-2023-24-8', '2024-02-07', '4', '27435.00', NULL, NULL, 126, '2024-02-07 12:22:51', NULL, '2024-02-07 12:22:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beat`
--

INSERT INTO `beat` (`beat_id`, `route_id`, `area_id`, `beat_number`, `beat_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '11EAT2176', 'Test Beat', '2024-03-14 13:12:56', '2024-03-14 13:12:56', NULL);

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
(1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Week 3', 'Thursday', 'March', '2024', '2024-03-14 13:13:25', '2024-03-14 13:13:25', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_booking`
--

INSERT INTO `bill_booking` (`bill_booking_id`, `vendor_id`, `bill_date`, `invoice_ref_date`, `fy_year`, `company_id`, `doc_no`, `posting_date`, `type`, `is_bb_updated`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 210, '2024-02-07', '2024-02-07', '2023-24', 6, 'BB-2023-24-5', '2024-02-07', 'Invoice', 1, 'close', '2024-02-07 12:12:33', NULL, '2024-02-07 12:16:50'),
(2, 211, '2024-02-07', '2024-02-07', '2023-24', 6, 'BB-2023-24-6', '2024-02-07', 'Invoice', 1, 'close', '2024-02-07 12:21:39', NULL, '2024-02-07 12:22:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_booking_items`
--

INSERT INTO `bill_booking_items` (`bill_booking_item_id`, `bill_booking_id`, `description`, `invoice_ref_no`, `expense_id`, `bsplstype_id`, `bsplsubcat_id`, `bsplcat_id`, `bsplheads_id`, `gl_code`, `amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total_value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '35345', NULL, NULL, NULL, NULL, NULL, NULL, '73514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-07 06:42:33', '2024-02-07 06:46:03', '2024-02-07 06:46:03'),
(2, 1, 'TEST today', '35345', '4', '9', '50', '54', '7', '456', '73514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-07 06:46:03', '2024-02-07 06:46:03', NULL),
(3, 2, NULL, '6787', NULL, NULL, NULL, NULL, NULL, NULL, '27435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-07 06:51:39', '2024-02-07 06:51:58', '2024-02-07 06:51:58'),
(4, 2, 'test 2nd today', '6787', '5', '9', '50', '54', '7', '123', '27435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-07 06:51:58', '2024-02-07 06:51:58', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bin_mangement`
--

INSERT INTO `bin_mangement` (`bin_id`, `bin_name`, `bin_type`, `warehouse_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, NULL, '14', '7', '2023-12-04 05:02:38', '2023-12-04 05:02:38', NULL),
(13, NULL, '15', '7', '2023-12-04 05:04:30', '2023-12-04 05:04:30', NULL),
(14, NULL, '14', '6', '2023-12-04 05:04:52', '2023-12-04 05:04:52', NULL),
(15, NULL, '17', '6', '2023-12-05 12:34:23', '2023-12-05 12:34:23', NULL),
(16, NULL, '14', '8', '2024-03-11 13:10:15', '2024-03-11 13:10:15', NULL),
(17, NULL, '15', '8', '2024-03-13 05:18:00', '2024-03-13 05:18:00', NULL);

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
(14, 'Good', '2023-12-04 04:58:33', '2024-02-22 07:11:49', NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_address`
--

INSERT INTO `bp_address` (`bp_address_id`, `bussiness_partner_id`, `address_type`, `bp_address_name`, `building_no_name`, `street_name`, `landmark`, `city`, `pin_code`, `district`, `state`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bill-To/ Bill-From', 'test', 'test', 'test', 'test', 'test', 400613, '344', '12', '1', '2024-02-21 09:06:49', '2024-03-14 07:53:35', NULL),
(2, 1, 'Ship-To/ Ship-From', 'test', 'test', 'test', 'test', 'test', 400613, '344', '12', '1', '2024-02-21 09:06:49', '2024-03-14 07:53:35', NULL),
(3, 2, 'Bill-To/ Bill-From', 'Sawan Agencies', 'I-2', 'Kirti Nagar', '', 'HULBI', 580028, NULL, '25', '1', '2024-02-21 09:06:49', '2024-02-21 09:06:49', NULL),
(4, 2, 'Ship-To/ Ship-From', 'Akshat Enterprises', 'Abhinandan Distributions', 'Ground Floor; Shop No 10; Plot No-316,', '', 'HULBI', 580028, NULL, '9', '1', '2024-02-21 09:06:49', '2024-02-21 09:06:49', NULL),
(5, 3, 'Bill-To/ Bill-From', 'Parashar Distributors', '6,', 'Canal Street ,', '', 'Hyderabad', 500012, NULL, '24', '1', '2024-02-21 09:06:49', '2024-02-21 09:06:49', NULL),
(6, 3, 'Ship-To/ Ship-From', 'B. R. Agencies', 'Akshat Enterprises', 'Water Works Road', '', 'Hyderabad', 500012, NULL, '38', '1', '2024-02-21 09:06:49', '2024-02-21 09:06:49', NULL),
(7, 4, 'Bill-To/ Bill-From', 'Unilever Asia Private Limited', '18 Nepal Park,', '', '', '', 0, NULL, NULL, '4', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(8, 4, 'Ship-To/ Ship-From', 'Mahavir Marketing', 'Bombay Store Trading', 'Charkop Good People Chs,', '', 'Mumbai', 400001, NULL, '12', '4', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(9, 5, 'Bill-To/ Bill-From', 'RAMA VISION LIMITED', 'RAMA HOUSE, 23 - NAJAFGARH ROAD IND AREA, SHIVAJI MARG', '', '', 'NAGRATHPET Â', 560002, NULL, '25', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(10, 5, 'Ship-To/ Ship-From', 'Icon International', 'Hasti Enterprise', 'Floor -6;M-11 Wing -C ;603,', '', 'NAGRATHPET Â', 560002, NULL, '9', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(11, 6, 'Bill-To/ Bill-From', 'Sawariya Futureworks Limited', 'S NO 299A-2, PLOT NO 5,', '', '', 'Mysore', 570001, NULL, '12', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(12, 6, 'Ship-To/ Ship-From', 'Kalash Agency', 'Icon International', 'Gogal Margao', '', 'Mysore', 570001, NULL, '9', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(13, 7, 'Bill-To/ Bill-From', 'Unilever India Eports', 'Unilever House,', 'BD sawant marg,', '', 'Tumkur', 572102, NULL, '12', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(14, 7, 'Ship-To/ Ship-From', 'Khodiyar Agencies', 'Kanhaiya Agencies Private Limited', 'Sector 10', '', 'Tumkur', 572102, NULL, '9', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(15, 8, 'Bill-To/ Bill-From', 'HARISHIV ENTERPRISE LLP', 'H-7 BHUMI ESTATE,', 'NR SARKHEJ', '', 'Shivamoga', 577205, NULL, '5', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(16, 8, 'Ship-To/ Ship-From', 'Krishna Enterprises', 'Khodiyar Agencies', 'T.J. Road', '', 'Shivamoga', 577205, NULL, '9', '1', '2024-02-21 09:06:50', '2024-02-21 09:06:50', NULL),
(17, 9, 'Bill-To/ Bill-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', NULL, 'Mumbai', 400080, '329', '12', '1', '2024-02-21 09:18:32', '2024-02-23 10:12:23', NULL),
(18, 9, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'Wh No. 2 Uno Logistics Park', 'Village Kochariya Bavla', NULL, 'Mumbai', 400080, '329', '12', '1', '2024-02-21 09:18:32', '2024-02-23 10:12:23', NULL),
(19, 10, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'MUMBAI', 400001, '329', '12', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(20, 10, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '329', '12', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(21, 11, 'Bill-To/ Bill-From', 'Abhinandan Distributions', 'Ground Floor; Shop No 10; Plot No-316,', 'Anees Chambers; Lokmanya Tilak Marg; Crawford Market - Fort', '', 'Hyderabad', 500001, '9', '38', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(22, 11, 'Ship-To/ Ship-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Hyderabad', 500001, '9', '38', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(23, 12, 'Bill-To/ Bill-From', 'Akshat Enterprises', 'Water Works Road', 'H.No.310;1;2; Dhobighat', '', 'HULBI', 580028, '659', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(24, 12, 'Ship-To/ Ship-From', 'Abhinandan Distributions', 'Ground Floor; Shop No 10; Plot No-316,', 'Anees Chambers; Lokmanya Tilak Marg; Crawford Market - Fort', '', 'HULBI', 580028, '659', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(25, 13, 'Bill-To/ Bill-From', 'B. R. Agencies', 'Nr. Varacahha Police Station,', 'Varachha Rd.', '', 'Hyderabad', 500012, '9', '38', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(26, 13, 'Ship-To/ Ship-From', 'Akshat Enterprises', 'Water Works Road', 'H.No.310;1;2; Dhobighat', '', 'Hyderabad', 500012, '9', '38', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(27, 14, 'Bill-To/ Bill-From', 'Bombay Store Trading', 'Charkop Good People Chs,', ',', '', 'Thrissur', 680001, '260', '10', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(28, 14, 'Ship-To/ Ship-From', 'B. R. Agencies', 'Nr. Varacahha Police Station,', 'Varachha Rd.', '', 'Thrissur', 680001, '260', '10', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(29, 15, 'Bill-To/ Bill-From', 'Hasti Enterprise', 'Floor -6;M-11 Wing -C ;603,', 'Om Co-Opera - Sion East', '', 'NA', 560094, NULL, '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(30, 15, 'Ship-To/ Ship-From', 'Bombay Store Trading', 'Charkop Good People Chs,', ',', '', 'NA', 560094, NULL, '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(31, 16, 'Bill-To/ Bill-From', 'Icon International', 'Gogal Margao', ',', '', 'Nagarathpete', 560002, '660', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(32, 16, 'Ship-To/ Ship-From', 'Hasti Enterprise', 'Floor -6;M-11 Wing -C ;603,', 'Om Co-Opera - Sion East', '', 'Nagarathpete', 560002, '660', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(33, 17, 'Bill-To/ Bill-From', 'Kalash Agency', '141;15F;3Rd Floor,', 'Halai Lohana Niwas - Chira Bazar', '', 'Mysore', 570001, '240', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(34, 17, 'Ship-To/ Ship-From', 'Icon International', 'Gogal Margao', ',', '', 'Mysore', 570001, '240', '9', '1', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(35, 43, 'Bill-To/ Bill-From', 'test', 'test', 'test', 'test', 'test', 400612, '344', '12', '1', '2024-02-22 06:42:43', '2024-02-22 06:42:43', NULL),
(36, 43, 'Ship-To/ Ship-From', 'test', 'test', 'test', 'test', 'test', 400612, '344', '12', '1', '2024-02-22 06:42:43', '2024-02-22 06:42:43', NULL),
(37, 44, 'Bill-To/ Bill-From', 'tilak naka', '402/kpari building', 'tilak naka', 'Andheri station', 'Andheri', 400614, '329', '12', '1', '2024-02-22 06:45:00', '2024-02-22 06:57:20', NULL),
(38, 44, 'Ship-To/ Ship-From', 'tilak naka', '402/kpari building', 'tilak naka', 'Andheri station', 'Andheri', 400614, '329', '12', '1', '2024-02-22 06:45:00', '2024-02-22 06:57:20', NULL),
(39, 45, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:42', '2024-02-23 05:39:42'),
(40, 45, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:42', '2024-02-23 05:39:42'),
(41, 46, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:11', '2024-02-23 05:39:11'),
(42, 46, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:11', '2024-02-23 05:39:11'),
(43, 47, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:30', '2024-02-23 05:39:30'),
(44, 47, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:37:29', '2024-02-23 05:39:30', '2024-02-23 05:39:30'),
(45, 48, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:50', '2024-02-23 05:44:50'),
(46, 48, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:50', '2024-02-23 05:44:50'),
(47, 49, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:26', '2024-02-23 05:44:26'),
(48, 49, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:26', '2024-02-23 05:44:26'),
(49, 50, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:38', '2024-02-23 05:44:38'),
(50, 50, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 05:40:06', '2024-02-23 05:44:38', '2024-02-23 05:44:38'),
(51, 51, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:23:06', '2024-02-23 06:29:40', '2024-02-23 06:29:40'),
(52, 51, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:23:06', '2024-02-23 06:29:40', '2024-02-23 06:29:40'),
(53, 52, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:23:06', '2024-02-23 06:25:38', '2024-02-23 06:25:38'),
(54, 52, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:23:06', '2024-02-23 06:25:38', '2024-02-23 06:25:38'),
(55, 53, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:30:10', '2024-02-23 06:33:29', '2024-02-23 06:33:29'),
(56, 53, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:30:10', '2024-02-23 06:33:29', '2024-02-23 06:33:29'),
(57, 54, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:30:10', '2024-02-23 06:32:33', '2024-02-23 06:32:33'),
(58, 54, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:30:10', '2024-02-23 06:32:33', '2024-02-23 06:32:33'),
(59, 55, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:36:17', '2024-02-23 06:38:49', '2024-02-23 06:38:49'),
(60, 55, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:36:17', '2024-02-23 06:38:49', '2024-02-23 06:38:49'),
(61, 56, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', '', 'Ghatkopar', 400001, '675', '12', '1', '2024-02-23 06:36:17', '2024-02-23 06:38:13', '2024-02-23 06:38:13'),
(62, 56, 'Ship-To/ Ship-From', 'Reliance Retail Limited', 'S No 472473474476, Vill Khumari', 'Tapovan Road', '', 'MUMBAI', 400001, '675', '12', '1', '2024-02-23 06:36:17', '2024-02-23 06:38:13', '2024-02-23 06:38:13'),
(63, 57, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:41:14', '2024-02-23 06:41:14'),
(64, 57, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:41:14', '2024-02-23 06:41:14'),
(65, 58, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:40:53', '2024-02-23 06:40:53'),
(66, 58, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:40:53', '2024-02-23 06:40:53'),
(67, 59, 'Bill-To/ Bill-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:41:05', '2024-02-23 06:41:05'),
(68, 59, 'Ship-To/ Ship-From', 'Khadakpada, Kalyan', '310, Shreeji Solitaire', 'Khadakpada', '', 'Kalyan', 421301, '329', '12', '1', '2024-02-23 06:39:02', '2024-02-23 06:41:05', '2024-02-23 06:41:05'),
(69, 60, 'Bill-To/ Bill-From', 'test', 'st', 'test', '', 'test', 615, '178', '7', '1', '2024-02-23 13:05:31', '2024-02-23 13:05:31', NULL),
(70, 60, 'Ship-To/ Ship-From', 'test', 'st', 'test', '', 'test', 615, '178', '7', '1', '2024-02-23 13:05:31', '2024-02-23 13:05:31', NULL),
(71, 61, 'Bill-To/ Bill-From', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 123456, '344', '12', '1', '2024-02-28 10:11:24', '2024-02-28 10:11:24', NULL),
(72, 61, 'Ship-To/ Ship-From', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 123456, '344', '12', '1', '2024-02-28 10:11:24', '2024-02-28 10:11:24', NULL),
(73, 62, 'Bill-To/ Bill-From', 'adsf', 'adsf', 'adsf', 'asdf', 'asdf', 232323, '344', '12', '1', '2024-02-28 10:18:52', '2024-02-28 10:18:52', NULL),
(74, 62, 'Ship-To/ Ship-From', 'adsf', 'adsf', 'adsf', 'asdf', 'asdf', 232323, '344', '12', '1', '2024-02-28 10:18:52', '2024-02-28 10:18:52', NULL),
(75, 63, 'Bill-To/ Bill-From', 'Ravray Cosmetic', 'R.No.9, J S Bhatt Chawl No.1,', 'Bhatwadi, Ghatkopar (W)', NULL, 'Ghatkopar', 400001, '675', '12', '1', '2024-03-11 09:58:38', '2024-03-11 10:35:45', NULL),
(76, 63, 'Ship-To/ Ship-From', 'Ravray Cosmetic', 'S No 472473474476, Vill Khumari', 'Tapovan Road', NULL, 'MUMBAI', 400001, '675', '12', '1', '2024-03-11 09:58:38', '2024-03-11 10:35:45', NULL),
(77, 64, 'Bill-To/ Bill-From', 'test', 'test', 'tesy', 'test', 'test', 400781, '344', '12', '1', '2024-03-12 05:15:43', '2024-03-12 07:00:50', NULL),
(78, 64, 'Ship-To/ Ship-From', 'test', 'test', 'tesy', 'test', 'test', 400781, '344', '12', '1', '2024-03-12 05:15:43', '2024-03-12 05:15:43', NULL),
(79, 65, 'Bill-To/ Bill-From', 'test', 'test', 'test', 'test', 'test', 400614, '329', '12', '1', '2024-03-13 06:54:00', '2024-03-13 06:54:00', NULL),
(80, 65, 'Ship-To/ Ship-From', 'test', 'test', 'test', 'test', 'test', 400614, '329', '12', '1', '2024-03-13 06:54:00', '2024-03-13 06:54:00', NULL),
(81, 2, 'Bill-To/ Bill-From', 'test', 'test', 'test', 'test', 'test', 40031, '344', '12', '1', '2024-03-15 09:47:56', '2024-03-15 09:48:53', '2024-03-15 09:48:53'),
(82, 2, 'Ship-To/ Ship-From', 'test', 'test', 'test', 'test', 'test', 40031, '344', '12', '1', '2024-03-15 09:47:56', '2024-03-15 09:48:48', '2024-03-15 09:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `bp_category`
--

DROP TABLE IF EXISTS `bp_category`;
CREATE TABLE IF NOT EXISTS `bp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bp_category`
--

INSERT INTO `bp_category` (`id`, `name`) VALUES
(1, 'Sub Distributor'),
(2, 'Retailer');

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_contact_details`
--

INSERT INTO `bp_contact_details` (`contact_details_id`, `bussiness_partner_id`, `contact_person`, `type`, `email_id`, `mobile_no`, `landline`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'Manas Jadhav', 'Bill-To/ Bill-From', 'ajith.abraham@hp.com', '966749398', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(2, 10, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(3, 11, 'Aditya', 'Bill-To/ Bill-From', 'career.scs@siemens.com', '984536455', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(4, 12, 'Akshat', 'Bill-To/ Bill-From', 'Careers@aricent.com', '768593045', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(5, 13, 'Amanpreet', 'Bill-To/ Bill-From', 'careers@iteamic.com', '985463230', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(6, 14, 'Amitava', 'Bill-To/ Bill-From', 'careers@picopeta.com', '983245601', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(7, 15, 'Angad', 'Bill-To/ Bill-From', 'consultant@miracleindia.com', '983450932', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(8, 16, 'Aniruddh', 'Bill-To/ Bill-From', 'freshers@lntinfotech.com', '987435206', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(9, 17, 'Anubhav', 'Bill-To/ Bill-From', 'gsrprasad@7hillsbiz.com', '789533434', '', '2024-02-21 09:18:32', '2024-02-21 09:18:32', NULL),
(10, 1, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hem@gmail.com', '9136393964', NULL, '2024-02-21 10:03:27', '2024-02-21 10:03:27', NULL),
(11, 1, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hem@gmail.com', '9136393964', NULL, '2024-02-21 10:03:27', '2024-02-21 10:04:19', '2024-02-21 10:04:19'),
(12, 1, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hem@gmail.com', '9136393964', NULL, '2024-02-21 10:03:59', '2024-03-14 07:53:35', NULL),
(13, 44, 'Naresh Dhumal', 'Bill-To/ Bill-From', 'naresd@gmail.com', '9136393964', NULL, '2024-02-22 06:57:20', '2024-02-22 06:57:20', NULL),
(14, 44, 'Naresh Dhumal', 'Bill-To/ Bill-From', 'naresd@gmail.com', '9136393964', NULL, '2024-02-22 06:57:20', '2024-02-23 10:03:37', NULL),
(15, 45, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:37:29', '2024-02-23 05:39:42', '2024-02-23 05:39:42'),
(16, 45, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:37:29', '2024-02-23 05:39:42', '2024-02-23 05:39:42'),
(17, 46, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:37:29', '2024-02-23 05:39:12', '2024-02-23 05:39:12'),
(18, 46, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:37:29', '2024-02-23 05:39:12', '2024-02-23 05:39:12'),
(19, 47, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:37:29', '2024-02-23 05:39:30', '2024-02-23 05:39:30'),
(20, 47, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:37:29', '2024-02-23 05:39:30', '2024-02-23 05:39:30'),
(21, 48, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:40:06', '2024-02-23 05:44:50', '2024-02-23 05:44:50'),
(22, 48, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:40:06', '2024-02-23 05:44:50', '2024-02-23 05:44:50'),
(23, 49, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:40:06', '2024-02-23 05:44:26', '2024-02-23 05:44:26'),
(24, 49, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:40:06', '2024-02-23 05:44:26', '2024-02-23 05:44:26'),
(25, 50, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 05:40:06', '2024-02-23 05:44:38', '2024-02-23 05:44:38'),
(26, 50, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 05:40:06', '2024-02-23 05:44:38', '2024-02-23 05:44:38'),
(27, 51, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:23:06', '2024-02-23 06:29:40', '2024-02-23 06:29:40'),
(28, 51, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:23:06', '2024-02-23 06:29:40', '2024-02-23 06:29:40'),
(29, 52, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:23:06', '2024-02-23 06:25:38', '2024-02-23 06:25:38'),
(30, 52, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:23:06', '2024-02-23 06:25:38', '2024-02-23 06:25:38'),
(31, 53, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:30:10', '2024-02-23 06:33:29', '2024-02-23 06:33:29'),
(32, 53, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:30:10', '2024-02-23 06:33:29', '2024-02-23 06:33:29'),
(33, 54, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:30:10', '2024-02-23 06:32:33', '2024-02-23 06:32:33'),
(34, 54, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:30:10', '2024-02-23 06:32:33', '2024-02-23 06:32:33'),
(35, 55, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:36:17', '2024-02-23 06:38:49', '2024-02-23 06:38:49'),
(36, 55, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:36:17', '2024-02-23 06:38:49', '2024-02-23 06:38:49'),
(37, 56, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:36:17', '2024-02-23 06:38:13', '2024-02-23 06:38:13'),
(38, 56, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', '', '2024-02-23 06:36:17', '2024-02-23 06:38:13', '2024-02-23 06:38:13'),
(39, 57, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 06:39:02', '2024-02-23 06:41:14', '2024-02-23 06:41:14'),
(40, 57, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 06:39:02', '2024-02-23 06:41:14', '2024-02-23 06:41:14'),
(41, 58, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 06:39:02', '2024-02-23 06:40:53', '2024-02-23 06:40:53'),
(42, 58, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 06:39:02', '2024-02-23 06:40:53', '2024-02-23 06:40:53'),
(43, 59, 'Hemraj Naidu', 'Bill-To/ Bill-From', 'hemrajn@gmail.com', '9136343465', '', '2024-02-23 06:39:02', '2024-02-23 06:41:05', '2024-02-23 06:41:05'),
(44, 59, 'Test 1 contact', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '', '2024-02-23 06:39:02', '2024-02-23 06:41:05', '2024-02-23 06:41:05'),
(45, 44, 'Naresh Dhumal', 'Ship-To/ Ship-From', 'naresd@gmail.com', '9136393964', NULL, '2024-02-23 10:03:37', '2024-02-23 10:03:37', NULL),
(46, 9, 'Manas Jadhav', 'Bill-To/ Bill-From', 'ajith.abraham@hp.com', '966749398', NULL, '2024-02-23 10:12:23', '2024-02-23 10:12:23', NULL),
(47, 9, 'Manas Jadhav', 'Bill-To/ Bill-From', 'ajith.abraham@hp.com', '966749398', NULL, '2024-02-23 10:12:23', '2024-02-23 10:13:10', NULL),
(48, 9, 'Manas Jadhav', 'Bill-To/ Bill-From', 'ajith.abraham@hp.com', '966749398', NULL, '2024-02-23 10:13:10', '2024-03-01 09:43:13', NULL),
(49, 61, 'adf', 'Bill-To/ Bill-From', 'asdf@asdfasdf', '232323', '322323', '2024-02-28 10:11:24', '2024-02-28 10:11:24', NULL),
(50, 61, 'adf', 'Ship-To/ Ship-From', 'asdf@asdfasdf', '232323', '322323', '2024-02-28 10:11:24', '2024-02-28 10:11:24', NULL),
(51, 62, 'adsf', 'Bill-To/ Bill-From', 'asdf@asgfasdf', '2345678914', 'adsf', '2024-02-28 10:18:52', '2024-02-28 10:18:52', NULL),
(52, 62, 'adsf', 'Ship-To/ Ship-From', 'asdf@asgfasdf', '2345678914', 'adsf', '2024-02-28 10:18:52', '2024-02-28 10:18:52', NULL),
(53, 9, 'Manas Jadhav', 'Ship-To/ Ship-From', 'ajith.abraham@hp.com', '966749398', NULL, '2024-03-01 09:43:13', '2024-03-01 09:43:13', NULL),
(54, 63, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', '', '2024-03-11 09:58:38', '2024-03-11 09:58:38', NULL),
(55, 63, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-11 09:58:38', '2024-03-12 07:56:53', '2024-03-12 07:56:53'),
(56, 63, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-11 10:35:45', '2024-03-12 07:56:51', '2024-03-12 07:56:51'),
(57, 63, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-11 11:55:47', '2024-03-12 07:43:15', '2024-03-12 07:43:15'),
(58, 64, 'test', 'Bill-To/ Bill-From', 'test@gmail.com', '9999999999', '034324', '2024-03-12 05:15:43', '2024-03-12 05:15:43', NULL),
(59, 64, 'test', 'Bill-To/ Bill-From', 'test@gmail.com', '9999999999', '034324', '2024-03-12 05:15:43', '2024-03-13 04:54:29', '2024-03-13 04:54:29'),
(60, 64, 'test', 'Bill-To/ Bill-From', 'test@gmail.com', '9999999999', '034324', '2024-03-12 06:59:58', '2024-03-13 04:54:33', '2024-03-13 04:54:33'),
(61, 64, 'test', 'Ship-To/ Ship-From', 'test@gmail.com', '9999999999', '034324', '2024-03-12 07:00:50', '2024-03-13 04:54:24', '2024-03-13 04:54:24'),
(62, 63, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-12 07:27:32', '2024-03-12 07:43:12', '2024-03-12 07:43:12'),
(63, 63, 'Abhijeet', 'Bill-To/ Bill-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-12 07:43:23', '2024-03-12 07:56:47', '2024-03-12 07:56:47'),
(64, 63, 'Abhijeet', 'Ship-To/ Ship-From', 'ali@vcentric.com', '902087654', NULL, '2024-03-12 07:43:23', '2024-03-12 07:56:43', '2024-03-12 07:56:43'),
(65, 65, 'test', 'Bill-To/ Bill-From', 'test@gmail.com', '9136363678', '02243948398', '2024-03-13 06:54:00', '2024-03-13 06:54:00', NULL),
(66, 65, 'test', 'Ship-To/ Ship-From', 'test@gmail.com', '9136363678', '02243948398', '2024-03-13 06:54:00', '2024-03-13 06:54:00', NULL),
(67, 2, 'test', 'Bill-To/ Bill-From', 'test@gmail.com', '9136363678', '02243948398', '2024-03-15 09:47:56', '2024-03-15 09:47:56', NULL),
(68, 2, 'test', 'Ship-To/ Ship-From', 'test@gmail.com', '9136363678', '02243948398', '2024-03-15 09:47:56', '2024-03-15 09:47:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bp_group`
--

DROP TABLE IF EXISTS `bp_group`;
CREATE TABLE IF NOT EXISTS `bp_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bp_channel_id` int(11) DEFAULT NULL,
  `name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_group`
--

INSERT INTO `bp_group` (`id`, `bp_channel_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 4, 'digital services', '2024-03-15 12:08:59', '2024-03-15 12:08:59', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bp_organisation_type`
--

INSERT INTO `bp_organisation_type` (`bp_organisation_type_id`, `bp_organisation_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Proprietor', '2022-08-01 10:12:32', NULL, NULL),
(3, 'Company', '2022-08-02 10:13:11', NULL, NULL),
(4, 'LLP', NULL, NULL, NULL),
(6, 'Pvt Ltd', '2024-02-19 09:53:23', '2024-02-19 09:53:23', NULL),
(7, 'Partnership', '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_desc`, `created_at`, `updated_at`) VALUES
(1, 'St. Ives', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(2, 'Toni & Guy', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(3, 'Pepsodent Kids', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(4, 'Camay', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(5, 'Dove', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(6, 'Axe', NULL, '2024-02-19 11:47:07', '2024-02-19 11:47:07'),
(7, 'Test', NULL, '2024-03-11 12:40:16', '2024-03-11 12:40:16'),
(8, 'test brand', NULL, '2024-03-11 12:53:48', '2024-03-11 12:53:48'),
(9, 'Brut', NULL, '2024-03-15 04:27:29', '2024-03-15 04:27:29'),
(10, 'CIF', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(11, 'Clear Men', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(12, 'DOMESTOS', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(13, 'Dove M+C', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(14, 'Lux', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(15, 'Pears', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_partner_category`
--

INSERT INTO `business_partner_category` (`business_partner_category_id`, `business_partner_category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Trading goods', '2024-02-19 11:48:01', '2024-02-19 11:48:01', NULL),
(3, 'MT&CnC', '2024-02-19 12:01:13', '2024-02-19 12:01:13', NULL),
(4, 'E-Com', '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(5, 'GT', '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL);

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
  `bp_channel` int(11) DEFAULT NULL,
  `bp_category` varchar(100) DEFAULT NULL,
  `bp_group` varchar(200) DEFAULT NULL,
  `sales_manager` varchar(255) DEFAULT NULL,
  `ase` int(11) DEFAULT NULL,
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
  `is_converted` tinyint(4) NOT NULL DEFAULT '1',
  `latitude` varchar(110) DEFAULT NULL,
  `longitude` varchar(110) DEFAULT NULL,
  `outlet_image` longtext,
  `company_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`business_partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_partner_master`
--

INSERT INTO `business_partner_master` (`business_partner_id`, `business_partner_type`, `residential_status`, `bp_name`, `bp_organisation_type`, `bp_channel`, `bp_category`, `bp_group`, `sales_manager`, `ase`, `sales_officer`, `salesman`, `payment_terms_id`, `credit_limit`, `gst_details`, `gst_reg_type`, `rcm_app`, `msme_reg`, `pricing_profile`, `shelf_life`, `area_id`, `route_id`, `beat_id`, `is_converted`, `latitude`, `longitude`, `outlet_image`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '1', 'test oulett', 3, 4, '2', '7', '389', 390, '391', '393', 1, NULL, 'BVHJ4534', '2', 1, 1, '2', NULL, '1', '1', '1', 1, '19.1102976', '72.8498176', NULL, 18, '2024-03-14 07:52:38', '2024-03-15 09:46:36', NULL),
(2, '3', '1', 'test Vendor', 3, 4, '2', '7', NULL, NULL, NULL, NULL, 2, NULL, '32535STREW', '2', 1, 1, '1', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 18, '2024-03-15 09:47:56', '2024-03-15 09:47:56', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(23, 'Para Category', NULL, 'para-category', NULL, 1, NULL, NULL, NULL, NULL, '2023-12-22 02:20:46', NULL, '2023-12-22 10:20:46'),
(24, 'Books Category', NULL, 'books-category', NULL, 1, NULL, NULL, NULL, NULL, '2024-01-09 05:52:02', NULL, '2024-01-09 11:22:02'),
(25, 'body lotion', NULL, 'body-lotion', NULL, 1, NULL, NULL, NULL, NULL, '2024-01-31 17:23:33', NULL, '2024-02-01 01:23:33'),
(26, 'body wash', NULL, 'body-wash', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 00:48:07', NULL, '2024-02-01 08:48:07'),
(27, 'hair care', NULL, 'hair-care', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 00:56:06', NULL, '2024-02-01 08:56:06'),
(28, 'toothpaste', NULL, 'toothpaste', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 00:59:49', NULL, '2024-02-01 08:59:49'),
(29, 'deodrant', NULL, 'deodrant', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 03:08:01', NULL, '2024-02-01 11:08:01'),
(30, 'soap', NULL, 'soap', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 12:46:15', NULL, '2024-02-01 20:46:15'),
(31, 'skin care', NULL, 'skin-care', NULL, 1, NULL, NULL, NULL, NULL, '2024-02-01 12:57:54', NULL, '2024-02-01 20:57:54'),
(32, 'Business Partner group', NULL, 'business-partner-group', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 05:34:58', NULL, '2024-02-16 11:04:58'),
(33, 'Oral Care', NULL, 'oral-care', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 05:39:16', NULL, '2024-02-16 11:09:16'),
(34, 'Soaps', NULL, 'soaps', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 05:39:17', NULL, '2024-02-16 11:09:17'),
(35, 'test categroy', NULL, 'test-categroy', NULL, 1, NULL, NULL, NULL, NULL, '2024-03-11 12:54:01', NULL, '2024-03-11 18:24:01'),
(36, 'Deodrants and Fragrances', NULL, 'deodrants-and-fragrances', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-15 05:26:16', NULL, '2024-03-15 10:56:16'),
(37, 'Household Care', NULL, 'household-care', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-15 05:26:16', NULL, '2024-03-15 10:56:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=676 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `state_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'North and Middle Andaman', 32, NULL, NULL, NULL),
(2, 'South Andaman', 32, NULL, NULL, NULL),
(3, 'Nicobar', 32, NULL, NULL, NULL),
(4, 'Adilabad', 38, NULL, NULL, NULL),
(5, 'Anantapur', 1, NULL, NULL, NULL),
(6, 'Chittoor', 1, NULL, NULL, NULL),
(7, 'East Godavari', 1, NULL, NULL, NULL),
(8, 'Guntur', 1, NULL, NULL, NULL),
(9, 'Hyderabad', 38, NULL, NULL, NULL),
(10, 'Kadapa', 1, NULL, NULL, NULL),
(11, 'Karimnagar', 1, NULL, NULL, NULL),
(12, 'Khammam', 1, NULL, NULL, NULL),
(13, 'Krishna', 1, NULL, NULL, NULL),
(14, 'Kurnool', 1, NULL, NULL, NULL),
(15, 'Mahbubnagar', 1, NULL, NULL, NULL),
(16, 'Medak', 1, NULL, NULL, NULL),
(17, 'Nalgonda', 1, NULL, NULL, NULL),
(18, 'Nellore', 1, NULL, NULL, NULL),
(19, 'Nizamabad', 1, NULL, NULL, NULL),
(20, 'Prakasam', 1, NULL, NULL, NULL),
(21, 'Rangareddi', 1, NULL, NULL, NULL),
(22, 'Srikakulam', 1, NULL, NULL, NULL),
(23, 'Vishakhapatnam', 1, NULL, NULL, NULL),
(24, 'Vizianagaram', 1, NULL, NULL, NULL),
(25, 'Warangal', 1, NULL, NULL, NULL),
(26, 'West Godavari', 1, NULL, NULL, NULL),
(27, 'Anjaw', 3, NULL, NULL, NULL),
(28, 'Changlang', 3, NULL, NULL, NULL),
(29, 'East Kameng', 3, NULL, NULL, NULL),
(30, 'Lohit', 3, NULL, NULL, NULL),
(31, 'Lower Subansiri', 3, NULL, NULL, NULL),
(32, 'Papum Pare', 3, NULL, NULL, NULL),
(33, 'Tirap', 3, NULL, NULL, NULL),
(34, 'Dibang Valley', 3, NULL, NULL, NULL),
(35, 'Upper Subansiri', 3, NULL, NULL, NULL),
(36, 'West Kameng', 3, NULL, NULL, NULL),
(37, 'Barpeta', 2, NULL, NULL, NULL),
(38, 'Bongaigaon', 2, NULL, NULL, NULL),
(39, 'Cachar', 2, NULL, NULL, NULL),
(40, 'Darrang', 2, NULL, NULL, NULL),
(41, 'Dhemaji', 2, NULL, NULL, NULL),
(42, 'Dhubri', 2, NULL, NULL, NULL),
(43, 'Dibrugarh', 2, NULL, NULL, NULL),
(44, 'Goalpara', 2, NULL, NULL, NULL),
(45, 'Golaghat', 2, NULL, NULL, NULL),
(46, 'Hailakandi', 2, NULL, NULL, NULL),
(47, 'Jorhat', 2, NULL, NULL, NULL),
(48, 'Karbi Anglong', 2, NULL, NULL, NULL),
(49, 'Karimganj', 2, NULL, NULL, NULL),
(50, 'Kokrajhar', 2, NULL, NULL, NULL),
(51, 'Lakhimpur', 2, NULL, NULL, NULL),
(52, 'Marigaon', 2, NULL, NULL, NULL),
(53, 'Nagaon', 2, NULL, NULL, NULL),
(54, 'Nalbari', 2, NULL, NULL, NULL),
(55, 'North Cachar Hills', 2, NULL, NULL, NULL),
(56, 'Sibsagar', 2, NULL, NULL, NULL),
(57, 'Sonitpur', 2, NULL, NULL, NULL),
(58, 'Tinsukia', 2, NULL, NULL, NULL),
(59, 'Araria', 4, NULL, NULL, NULL),
(60, 'Aurangabad', 4, NULL, NULL, NULL),
(61, 'Banka', 4, NULL, NULL, NULL),
(62, 'Begusarai', 4, NULL, NULL, NULL),
(63, 'Bhagalpur', 4, NULL, NULL, NULL),
(64, 'Bhojpur', 4, NULL, NULL, NULL),
(65, 'Buxar', 4, NULL, NULL, NULL),
(66, 'Darbhanga', 4, NULL, NULL, NULL),
(67, 'Purba Champaran', 4, NULL, NULL, NULL),
(68, 'Gaya', 4, NULL, NULL, NULL),
(69, 'Gopalganj', 4, NULL, NULL, NULL),
(70, 'Jamui', 4, NULL, NULL, NULL),
(71, 'Jehanabad', 4, NULL, NULL, NULL),
(72, 'Khagaria', 4, NULL, NULL, NULL),
(73, 'Kishanganj', 4, NULL, NULL, NULL),
(74, 'Kaimur', 4, NULL, NULL, NULL),
(75, 'Katihar', 4, NULL, NULL, NULL),
(76, 'Lakhisarai', 4, NULL, NULL, NULL),
(77, 'Madhubani', 4, NULL, NULL, NULL),
(78, 'Munger', 4, NULL, NULL, NULL),
(79, 'Madhepura', 4, NULL, NULL, NULL),
(80, 'Muzaffarpur', 4, NULL, NULL, NULL),
(81, 'Nalanda', 4, NULL, NULL, NULL),
(82, 'Nawada', 4, NULL, NULL, NULL),
(83, 'Patna', 4, NULL, NULL, NULL),
(84, 'Purnia', 4, NULL, NULL, NULL),
(85, 'Rohtas', 4, NULL, NULL, NULL),
(86, 'Saharsa', 4, NULL, NULL, NULL),
(87, 'Samastipur', 4, NULL, NULL, NULL),
(88, 'Sheohar', 4, NULL, NULL, NULL),
(89, 'Sheikhpura', 4, NULL, NULL, NULL),
(90, 'Saran', 4, NULL, NULL, NULL),
(91, 'Sitamarhi', 4, NULL, NULL, NULL),
(92, 'Supaul', 4, NULL, NULL, NULL),
(93, 'Siwan', 4, NULL, NULL, NULL),
(94, 'Vaishali', 4, NULL, NULL, NULL),
(95, 'Pashchim Champaran', 4, NULL, NULL, NULL),
(112, 'Diu', 29, NULL, NULL, NULL),
(113, 'Daman', 29, NULL, NULL, NULL),
(114, 'Central Delhi', 25, NULL, NULL, NULL),
(115, 'East Delhi', 25, NULL, NULL, NULL),
(116, 'New Delhi', 25, NULL, NULL, NULL),
(117, 'North Delhi', 25, NULL, NULL, NULL),
(118, 'North East Delhi', 25, NULL, NULL, NULL),
(119, 'North West Delhi', 25, NULL, NULL, NULL),
(120, 'South Delhi', 25, NULL, NULL, NULL),
(121, 'South West Delhi', 25, NULL, NULL, NULL),
(122, 'West Delhi', 25, NULL, NULL, NULL),
(123, 'North Goa', 26, NULL, NULL, NULL),
(124, 'South Goa', 26, NULL, NULL, NULL),
(125, 'Ahmedabad', 5, NULL, NULL, NULL),
(126, 'Amreli District', 5, NULL, NULL, NULL),
(127, 'Anand', 5, NULL, NULL, NULL),
(128, 'Banaskantha', 5, NULL, NULL, NULL),
(129, 'Bharuch', 5, NULL, NULL, NULL),
(130, 'Bhavnagar', 5, NULL, NULL, NULL),
(131, 'Dahod', 5, NULL, NULL, NULL),
(132, 'The Dangs', 5, NULL, NULL, NULL),
(133, 'Gandhinagar', 5, NULL, NULL, NULL),
(134, 'Jamnagar', 5, NULL, NULL, NULL),
(135, 'Junagadh', 5, NULL, NULL, NULL),
(136, 'Kutch', 5, NULL, NULL, NULL),
(137, 'Kheda', 5, NULL, NULL, NULL),
(138, 'Mehsana', 5, NULL, NULL, NULL),
(139, 'Narmada', 5, NULL, NULL, NULL),
(140, 'Navsari', 5, NULL, NULL, NULL),
(141, 'Patan', 5, NULL, NULL, NULL),
(142, 'Panchmahal', 5, NULL, NULL, NULL),
(143, 'Porbandar', 5, NULL, NULL, NULL),
(144, 'Rajkot', 5, NULL, NULL, NULL),
(145, 'Sabarkantha', 5, NULL, NULL, NULL),
(146, 'Surendranagar', 5, NULL, NULL, NULL),
(147, 'Surat', 5, NULL, NULL, NULL),
(148, 'Vadodara', 5, NULL, NULL, NULL),
(149, 'Valsad', 5, NULL, NULL, NULL),
(150, 'Ambala', 6, NULL, NULL, NULL),
(151, 'Bhiwani', 6, NULL, NULL, NULL),
(152, 'Faridabad', 6, NULL, NULL, NULL),
(153, 'Fatehabad', 6, NULL, NULL, NULL),
(154, 'Gurgaon', 6, NULL, NULL, NULL),
(155, 'Hissar', 6, NULL, NULL, NULL),
(156, 'Jhajjar', 6, NULL, NULL, NULL),
(157, 'Jind', 6, NULL, NULL, NULL),
(158, 'Karnal', 6, NULL, NULL, NULL),
(159, 'Kaithal', 6, NULL, NULL, NULL),
(160, 'Kurukshetra', 6, NULL, NULL, NULL),
(161, 'Mahendragarh', 6, NULL, NULL, NULL),
(162, 'Mewat', 6, NULL, NULL, NULL),
(163, 'Panchkula', 6, NULL, NULL, NULL),
(164, 'Panipat', 6, NULL, NULL, NULL),
(165, 'Rewari', 6, NULL, NULL, NULL),
(166, 'Rohtak', 6, NULL, NULL, NULL),
(167, 'Sirsa', 6, NULL, NULL, NULL),
(168, 'Sonepat', 6, NULL, NULL, NULL),
(169, 'Yamuna Nagar', 6, NULL, NULL, NULL),
(170, 'Palwal', 6, NULL, NULL, NULL),
(171, 'Bilaspur', 7, NULL, NULL, NULL),
(172, 'Chamba', 7, NULL, NULL, NULL),
(173, 'Hamirpur', 7, NULL, NULL, NULL),
(174, 'Kangra', 7, NULL, NULL, NULL),
(175, 'Kinnaur', 7, NULL, NULL, NULL),
(176, 'Kulu', 7, NULL, NULL, NULL),
(177, 'Lahaul and Spiti', 7, NULL, NULL, NULL),
(178, 'Mandi', 7, NULL, NULL, NULL),
(179, 'Shimla', 7, NULL, NULL, NULL),
(180, 'Sirmaur', 7, NULL, NULL, NULL),
(181, 'Solan', 7, NULL, NULL, NULL),
(182, 'Una', 7, NULL, NULL, NULL),
(183, 'Anantnag', 8, NULL, NULL, NULL),
(184, 'Badgam', 8, NULL, NULL, NULL),
(185, 'Bandipore', 8, NULL, NULL, NULL),
(186, 'Baramula', 8, NULL, NULL, NULL),
(187, 'Doda', 8, NULL, NULL, NULL),
(188, 'Jammu', 8, NULL, NULL, NULL),
(189, 'Kargil', 8, NULL, NULL, NULL),
(190, 'Kathua', 8, NULL, NULL, NULL),
(191, 'Kupwara', 8, NULL, NULL, NULL),
(192, 'Leh', 8, NULL, NULL, NULL),
(193, 'Poonch', 8, NULL, NULL, NULL),
(194, 'Pulwama', 8, NULL, NULL, NULL),
(195, 'Rajauri', 8, NULL, NULL, NULL),
(196, 'Srinagar', 8, NULL, NULL, NULL),
(197, 'Samba', 8, NULL, NULL, NULL),
(198, 'Udhampur', 8, NULL, NULL, NULL),
(199, 'Bokaro', 34, NULL, NULL, NULL),
(200, 'Chatra', 34, NULL, NULL, NULL),
(201, 'Deoghar', 34, NULL, NULL, NULL),
(202, 'Dhanbad', 34, NULL, NULL, NULL),
(203, 'Dumka', 34, NULL, NULL, NULL),
(204, 'Purba Singhbhum', 34, NULL, NULL, NULL),
(205, 'Garhwa', 34, NULL, NULL, NULL),
(206, 'Giridih', 34, NULL, NULL, NULL),
(207, 'Godda', 34, NULL, NULL, NULL),
(208, 'Gumla', 34, NULL, NULL, NULL),
(209, 'Hazaribagh', 34, NULL, NULL, NULL),
(210, 'Koderma', 34, NULL, NULL, NULL),
(211, 'Lohardaga', 34, NULL, NULL, NULL),
(212, 'Pakur', 34, NULL, NULL, NULL),
(213, 'Palamu', 34, NULL, NULL, NULL),
(214, 'Ranchi', 34, NULL, NULL, NULL),
(215, 'Sahibganj', 34, NULL, NULL, NULL),
(216, 'Seraikela and Kharsawan', 34, NULL, NULL, NULL),
(217, 'Pashchim Singhbhum', 34, NULL, NULL, NULL),
(218, 'Ramgarh', 34, NULL, NULL, NULL),
(219, 'Bidar', 9, NULL, NULL, NULL),
(220, 'Belgaum', 9, NULL, NULL, NULL),
(221, 'Bijapur', 9, NULL, NULL, NULL),
(222, 'Bagalkot', 9, NULL, NULL, NULL),
(223, 'Bellary', 9, NULL, NULL, NULL),
(224, 'Bangalore Rural District', 9, NULL, NULL, NULL),
(225, 'Bangalore Urban District', 9, NULL, NULL, NULL),
(226, 'Chamarajnagar', 9, NULL, NULL, NULL),
(227, 'Chikmagalur', 9, NULL, NULL, NULL),
(228, 'Chitradurga', 9, NULL, NULL, NULL),
(229, 'Davanagere', 9, NULL, NULL, NULL),
(230, 'Dharwad', 9, NULL, NULL, NULL),
(231, 'Dakshina Kannada', 9, NULL, NULL, NULL),
(232, 'Gadag', 9, NULL, NULL, NULL),
(233, 'Gulbarga', 9, NULL, NULL, NULL),
(234, 'Hassan', 9, NULL, NULL, NULL),
(235, 'Haveri District', 9, NULL, NULL, NULL),
(236, 'Kodagu', 9, NULL, NULL, NULL),
(237, 'Kolar', 9, NULL, NULL, NULL),
(238, 'Koppal', 9, NULL, NULL, NULL),
(239, 'Mandya', 9, NULL, NULL, NULL),
(240, 'Mysore', 9, NULL, NULL, NULL),
(241, 'Raichur', 9, NULL, NULL, NULL),
(242, 'Shimoga', 9, NULL, NULL, NULL),
(243, 'Tumkur', 9, NULL, NULL, NULL),
(244, 'Udupi', 9, NULL, NULL, NULL),
(245, 'Uttara Kannada', 9, NULL, NULL, NULL),
(246, 'Ramanagara', 9, NULL, NULL, NULL),
(247, 'Chikballapur', 9, NULL, NULL, NULL),
(248, 'Yadagiri', 9, NULL, NULL, NULL),
(249, 'Alappuzha', 10, NULL, NULL, NULL),
(250, 'Ernakulam', 10, NULL, NULL, NULL),
(251, 'Idukki', 10, NULL, NULL, NULL),
(252, 'Kollam', 10, NULL, NULL, NULL),
(253, 'Kannur', 10, NULL, NULL, NULL),
(254, 'Kasaragod', 10, NULL, NULL, NULL),
(255, 'Kottayam', 10, NULL, NULL, NULL),
(256, 'Kozhikode', 10, NULL, NULL, NULL),
(257, 'Malappuram', 10, NULL, NULL, NULL),
(258, 'Palakkad', 10, NULL, NULL, NULL),
(259, 'Pathanamthitta', 10, NULL, NULL, NULL),
(260, 'Thrissur', 10, NULL, NULL, NULL),
(261, 'Thiruvananthapuram', 10, NULL, NULL, NULL),
(262, 'Wayanad', 10, NULL, NULL, NULL),
(263, 'Alirajpur', 11, NULL, NULL, NULL),
(264, 'Anuppur', 11, NULL, NULL, NULL),
(265, 'Ashok Nagar', 11, NULL, NULL, NULL),
(266, 'Balaghat', 11, NULL, NULL, NULL),
(267, 'Barwani', 11, NULL, NULL, NULL),
(268, 'Betul', 11, NULL, NULL, NULL),
(269, 'Bhind', 11, NULL, NULL, NULL),
(270, 'Bhopal', 11, NULL, NULL, NULL),
(271, 'Burhanpur', 11, NULL, NULL, NULL),
(272, 'Chhatarpur', 11, NULL, NULL, NULL),
(273, 'Chhindwara', 11, NULL, NULL, NULL),
(274, 'Damoh', 11, NULL, NULL, NULL),
(275, 'Datia', 11, NULL, NULL, NULL),
(276, 'Dewas', 11, NULL, NULL, NULL),
(277, 'Dhar', 11, NULL, NULL, NULL),
(278, 'Dindori', 11, NULL, NULL, NULL),
(279, 'Guna', 11, NULL, NULL, NULL),
(280, 'Gwalior', 11, NULL, NULL, NULL),
(281, 'Harda', 11, NULL, NULL, NULL),
(282, 'Hoshangabad', 11, NULL, NULL, NULL),
(283, 'Indore', 11, NULL, NULL, NULL),
(284, 'Jabalpur', 11, NULL, NULL, NULL),
(285, 'Jhabua', 11, NULL, NULL, NULL),
(286, 'Katni', 11, NULL, NULL, NULL),
(287, 'Khandwa', 11, NULL, NULL, NULL),
(288, 'Khargone', 11, NULL, NULL, NULL),
(289, 'Mandla', 11, NULL, NULL, NULL),
(290, 'Mandsaur', 11, NULL, NULL, NULL),
(291, 'Morena', 11, NULL, NULL, NULL),
(292, 'Narsinghpur', 11, NULL, NULL, NULL),
(293, 'Neemuch', 11, NULL, NULL, NULL),
(294, 'Panna', 11, NULL, NULL, NULL),
(295, 'Rewa', 11, NULL, NULL, NULL),
(296, 'Rajgarh', 11, NULL, NULL, NULL),
(297, 'Ratlam', 11, NULL, NULL, NULL),
(298, 'Raisen', 11, NULL, NULL, NULL),
(299, 'Sagar', 11, NULL, NULL, NULL),
(300, 'Satna', 11, NULL, NULL, NULL),
(301, 'Sehore', 11, NULL, NULL, NULL),
(302, 'Seoni', 11, NULL, NULL, NULL),
(303, 'Shahdol', 11, NULL, NULL, NULL),
(304, 'Shajapur', 11, NULL, NULL, NULL),
(305, 'Sheopur', 11, NULL, NULL, NULL),
(306, 'Shivpuri', 11, NULL, NULL, NULL),
(307, 'Sidhi', 11, NULL, NULL, NULL),
(308, 'Singrauli', 11, NULL, NULL, NULL),
(309, 'Tikamgarh', 11, NULL, NULL, NULL),
(310, 'Ujjain', 11, NULL, NULL, NULL),
(311, 'Umaria', 11, NULL, NULL, NULL),
(312, 'Vidisha', 11, NULL, NULL, NULL),
(313, 'Ahmednagar', 12, NULL, NULL, NULL),
(314, 'Akola', 12, NULL, NULL, NULL),
(315, 'Amrawati', 12, NULL, NULL, NULL),
(316, 'Aurangabad', 12, NULL, NULL, NULL),
(317, 'Bhandara', 12, NULL, NULL, NULL),
(318, 'Beed', 12, NULL, NULL, NULL),
(319, 'Buldhana', 12, NULL, NULL, NULL),
(320, 'Chandrapur', 12, NULL, NULL, NULL),
(321, 'Dhule', 12, NULL, NULL, NULL),
(322, 'Gadchiroli', 12, NULL, NULL, NULL),
(323, 'Gondiya', 12, NULL, NULL, NULL),
(324, 'Hingoli', 12, NULL, NULL, NULL),
(325, 'Jalgaon', 12, NULL, NULL, NULL),
(326, 'Jalna', 12, NULL, NULL, NULL),
(327, 'Kolhapur', 12, NULL, NULL, NULL),
(328, 'Latur', 12, NULL, NULL, NULL),
(329, 'Mumbai', 12, NULL, '2024-02-21 07:15:37', NULL),
(330, 'Mumbai suburban', 12, NULL, NULL, NULL),
(331, 'Nandurbar', 12, NULL, NULL, NULL),
(332, 'Nanded', 12, NULL, NULL, NULL),
(333, 'Nagpur', 12, NULL, NULL, NULL),
(334, 'Nashik', 12, NULL, NULL, NULL),
(335, 'Osmanabad', 12, NULL, NULL, NULL),
(336, 'Parbhani', 12, NULL, NULL, NULL),
(337, 'Pune', 12, NULL, NULL, NULL),
(338, 'Raigad', 12, NULL, NULL, NULL),
(339, 'Ratnagiri', 12, NULL, NULL, NULL),
(340, 'Sindhudurg', 12, NULL, NULL, NULL),
(341, 'Sangli', 12, NULL, NULL, NULL),
(342, 'Solapur', 12, NULL, NULL, NULL),
(343, 'Satara', 12, NULL, NULL, NULL),
(344, 'Thane', 12, NULL, NULL, NULL),
(345, 'Wardha', 12, NULL, NULL, NULL),
(346, 'Washim', 12, NULL, NULL, NULL),
(347, 'Yavatmal', 12, NULL, NULL, NULL),
(348, 'Bishnupur', 13, NULL, NULL, NULL),
(349, 'Churachandpur', 13, NULL, NULL, NULL),
(350, 'Chandel', 13, NULL, NULL, NULL),
(351, 'Imphal East', 13, NULL, NULL, NULL),
(352, 'Senapati', 13, NULL, NULL, NULL),
(353, 'Tamenglong', 13, NULL, NULL, NULL),
(354, 'Thoubal', 13, NULL, NULL, NULL),
(355, 'Ukhrul', 13, NULL, NULL, NULL),
(356, 'Imphal West', 13, NULL, NULL, NULL),
(357, 'East Garo Hills', 14, NULL, NULL, NULL),
(358, 'East Khasi Hills', 14, NULL, NULL, NULL),
(359, 'Jaintia Hills', 14, NULL, NULL, NULL),
(360, 'Ri-Bhoi', 14, NULL, NULL, NULL),
(361, 'South Garo Hills', 14, NULL, NULL, NULL),
(362, 'West Garo Hills', 14, NULL, NULL, NULL),
(363, 'West Khasi Hills', 14, NULL, NULL, NULL),
(364, 'Aizawl', 15, NULL, NULL, NULL),
(365, 'Champhai', 15, NULL, NULL, NULL),
(366, 'Kolasib', 15, NULL, NULL, NULL),
(367, 'Lawngtlai', 15, NULL, NULL, NULL),
(368, 'Lunglei', 15, NULL, NULL, NULL),
(369, 'Mamit', 15, NULL, NULL, NULL),
(370, 'Saiha', 15, NULL, NULL, NULL),
(371, 'Serchhip', 15, NULL, NULL, NULL),
(372, 'Dimapur', 16, NULL, NULL, NULL),
(373, 'Kohima', 16, NULL, NULL, NULL),
(374, 'Mokokchung', 16, NULL, NULL, NULL),
(375, 'Mon', 16, NULL, NULL, NULL),
(376, 'Phek', 16, NULL, NULL, NULL),
(377, 'Tuensang', 16, NULL, NULL, NULL),
(378, 'Wokha', 16, NULL, NULL, NULL),
(379, 'Zunheboto', 16, NULL, NULL, NULL),
(380, 'Angul', 17, NULL, NULL, NULL),
(381, 'Boudh', 17, NULL, NULL, NULL),
(382, 'Bhadrak', 17, NULL, NULL, NULL),
(383, 'Bolangir', 17, NULL, NULL, NULL),
(384, 'Bargarh', 17, NULL, NULL, NULL),
(385, 'Baleswar', 17, NULL, NULL, NULL),
(386, 'Cuttack', 17, NULL, NULL, NULL),
(387, 'Debagarh', 17, NULL, NULL, NULL),
(388, 'Dhenkanal', 17, NULL, NULL, NULL),
(389, 'Ganjam', 17, NULL, NULL, NULL),
(390, 'Gajapati', 17, NULL, NULL, NULL),
(391, 'Jharsuguda', 17, NULL, NULL, NULL),
(392, 'Jajapur', 17, NULL, NULL, NULL),
(393, 'Jagatsinghpur', 17, NULL, NULL, NULL),
(394, 'Khordha', 17, NULL, NULL, NULL),
(395, 'Kendujhar', 17, NULL, NULL, NULL),
(396, 'Kalahandi', 17, NULL, NULL, NULL),
(397, 'Kandhamal', 17, NULL, NULL, NULL),
(398, 'Koraput', 17, NULL, NULL, NULL),
(399, 'Kendrapara', 17, NULL, NULL, NULL),
(400, 'Malkangiri', 17, NULL, NULL, NULL),
(401, 'Mayurbhanj', 17, NULL, NULL, NULL),
(402, 'Nabarangpur', 17, NULL, NULL, NULL),
(403, 'Nuapada', 17, NULL, NULL, NULL),
(404, 'Nayagarh', 17, NULL, NULL, NULL),
(405, 'Puri', 17, NULL, NULL, NULL),
(406, 'Rayagada', 17, NULL, NULL, NULL),
(407, 'Sambalpur', 17, NULL, NULL, NULL),
(408, 'Subarnapur', 17, NULL, NULL, NULL),
(409, 'Sundargarh', 17, NULL, NULL, NULL),
(410, 'Karaikal', 27, NULL, NULL, NULL),
(411, 'Mahe', 27, NULL, NULL, NULL),
(412, 'Puducherry', 27, NULL, NULL, NULL),
(413, 'Yanam', 27, NULL, NULL, NULL),
(414, 'Amritsar', 18, NULL, NULL, NULL),
(415, 'Bathinda', 18, NULL, NULL, NULL),
(416, 'Firozpur', 18, NULL, NULL, NULL),
(417, 'Faridkot', 18, NULL, NULL, NULL),
(418, 'Fatehgarh Sahib', 18, NULL, NULL, NULL),
(419, 'Gurdaspur', 18, NULL, NULL, NULL),
(420, 'Hoshiarpur', 18, NULL, NULL, NULL),
(421, 'Jalandhar', 18, NULL, NULL, NULL),
(422, 'Kapurthala', 18, NULL, NULL, NULL),
(423, 'Ludhiana', 18, NULL, NULL, NULL),
(424, 'Mansa', 18, NULL, NULL, NULL),
(425, 'Moga', 18, NULL, NULL, NULL),
(426, 'Mukatsar', 18, NULL, NULL, NULL),
(427, 'Nawan Shehar', 18, NULL, NULL, NULL),
(428, 'Patiala', 18, NULL, NULL, NULL),
(429, 'Rupnagar', 18, NULL, NULL, NULL),
(430, 'Sangrur', 18, NULL, NULL, NULL),
(431, 'Ajmer', 19, NULL, NULL, NULL),
(432, 'Alwar', 19, NULL, NULL, NULL),
(433, 'Bikaner', 19, NULL, NULL, NULL),
(434, 'Barmer', 19, NULL, NULL, NULL),
(435, 'Banswara', 19, NULL, NULL, NULL),
(436, 'Bharatpur', 19, NULL, NULL, NULL),
(437, 'Baran', 19, NULL, NULL, NULL),
(438, 'Bundi', 19, NULL, NULL, NULL),
(439, 'Bhilwara', 19, NULL, NULL, NULL),
(440, 'Churu', 19, NULL, NULL, NULL),
(441, 'Chittorgarh', 19, NULL, NULL, NULL),
(442, 'Dausa', 19, NULL, NULL, NULL),
(443, 'Dholpur', 19, NULL, NULL, NULL),
(444, 'Dungapur', 19, NULL, NULL, NULL),
(445, 'Ganganagar', 19, NULL, NULL, NULL),
(446, 'Hanumangarh', 19, NULL, NULL, NULL),
(447, 'Juhnjhunun', 19, NULL, NULL, NULL),
(448, 'Jalore', 19, NULL, NULL, NULL),
(449, 'Jodhpur', 19, NULL, NULL, NULL),
(450, 'Jaipur', 19, NULL, NULL, NULL),
(451, 'Jaisalmer', 19, NULL, NULL, NULL),
(452, 'Jhalawar', 19, NULL, NULL, NULL),
(453, 'Karauli', 19, NULL, NULL, NULL),
(454, 'Kota', 19, NULL, NULL, NULL),
(455, 'Nagaur', 19, NULL, NULL, NULL),
(456, 'Pali', 19, NULL, NULL, NULL),
(457, 'Pratapgarh', 19, NULL, NULL, NULL),
(458, 'Rajsamand', 19, NULL, NULL, NULL),
(459, 'Sikar', 19, NULL, NULL, NULL),
(460, 'Sawai Madhopur', 19, NULL, NULL, NULL),
(461, 'Sirohi', 19, NULL, NULL, NULL),
(462, 'Tonk', 19, NULL, NULL, NULL),
(463, 'Udaipur', 19, NULL, NULL, NULL),
(464, 'East Sikkim', 20, NULL, NULL, NULL),
(465, 'North Sikkim', 20, NULL, NULL, NULL),
(466, 'South Sikkim', 20, NULL, NULL, NULL),
(467, 'West Sikkim', 20, NULL, NULL, NULL),
(468, 'Ariyalur', 21, NULL, NULL, NULL),
(469, 'Chennai', 21, NULL, NULL, NULL),
(470, 'Coimbatore', 21, NULL, NULL, NULL),
(471, 'Cuddalore', 21, NULL, NULL, NULL),
(472, 'Dharmapuri', 21, NULL, NULL, NULL),
(473, 'Dindigul', 21, NULL, NULL, NULL),
(474, 'Erode', 21, NULL, NULL, NULL),
(475, 'Kanchipuram', 21, NULL, NULL, NULL),
(476, 'Kanyakumari', 21, NULL, NULL, NULL),
(477, 'Karur', 21, NULL, NULL, NULL),
(478, 'Madurai', 21, NULL, NULL, NULL),
(479, 'Nagapattinam', 21, NULL, NULL, NULL),
(480, 'The Nilgiris', 21, NULL, NULL, NULL),
(481, 'Namakkal', 21, NULL, NULL, NULL),
(482, 'Perambalur', 21, NULL, NULL, NULL),
(483, 'Pudukkottai', 21, NULL, NULL, NULL),
(484, 'Ramanathapuram', 21, NULL, NULL, NULL),
(485, 'Salem', 21, NULL, NULL, NULL),
(486, 'Sivagangai', 21, NULL, NULL, NULL),
(487, 'Tiruppur', 21, NULL, NULL, NULL),
(488, 'Tiruchirappalli', 21, NULL, NULL, NULL),
(489, 'Theni', 21, NULL, NULL, NULL),
(490, 'Tirunelveli', 21, NULL, NULL, NULL),
(491, 'Thanjavur', 21, NULL, NULL, NULL),
(492, 'Thoothukudi', 21, NULL, NULL, NULL),
(493, 'Thiruvallur', 21, NULL, NULL, NULL),
(494, 'Thiruvarur', 21, NULL, NULL, NULL),
(495, 'Tiruvannamalai', 21, NULL, NULL, NULL),
(496, 'Vellore', 21, NULL, NULL, NULL),
(497, 'Villupuram', 21, NULL, NULL, NULL),
(498, 'Dhalai', 22, NULL, NULL, NULL),
(499, 'North Tripura', 22, NULL, NULL, NULL),
(500, 'South Tripura', 22, NULL, NULL, NULL),
(501, 'West Tripura', 22, NULL, NULL, NULL),
(502, 'Almora', 33, NULL, NULL, NULL),
(503, 'Bageshwar', 33, NULL, NULL, NULL),
(504, 'Chamoli', 33, NULL, NULL, NULL),
(505, 'Champawat', 33, NULL, NULL, NULL),
(506, 'Dehradun', 33, NULL, NULL, NULL),
(507, 'Haridwar', 33, NULL, NULL, NULL),
(508, 'Nainital', 33, NULL, NULL, NULL),
(509, 'Pauri Garhwal', 33, NULL, NULL, NULL),
(510, 'Pithoragharh', 33, NULL, NULL, NULL),
(511, 'Rudraprayag', 33, NULL, NULL, NULL),
(512, 'Tehri Garhwal', 33, NULL, NULL, NULL),
(513, 'Udham Singh Nagar', 33, NULL, NULL, NULL),
(514, 'Uttarkashi', 33, NULL, NULL, NULL),
(515, 'Agra', 23, NULL, NULL, NULL),
(516, 'Allahabad', 23, NULL, NULL, NULL),
(517, 'Aligarh', 23, NULL, NULL, NULL),
(518, 'Ambedkar Nagar', 23, NULL, NULL, NULL),
(519, 'Auraiya', 23, NULL, NULL, NULL),
(520, 'Azamgarh', 23, NULL, NULL, NULL),
(521, 'Barabanki', 23, NULL, NULL, NULL),
(522, 'Badaun', 23, NULL, NULL, NULL),
(523, 'Bagpat', 23, NULL, NULL, NULL),
(524, 'Bahraich', 23, NULL, NULL, NULL),
(525, 'Bijnor', 23, NULL, NULL, NULL),
(526, 'Ballia', 23, NULL, NULL, NULL),
(527, 'Banda', 23, NULL, NULL, NULL),
(528, 'Balrampur', 23, NULL, NULL, NULL),
(529, 'Bareilly', 23, NULL, NULL, NULL),
(530, 'Basti', 23, NULL, NULL, NULL),
(531, 'Bulandshahr', 23, NULL, NULL, NULL),
(532, 'Chandauli', 23, NULL, NULL, NULL),
(533, 'Chitrakoot', 23, NULL, NULL, NULL),
(534, 'Deoria', 23, NULL, NULL, NULL),
(535, 'Etah', 23, NULL, NULL, NULL),
(536, 'Kanshiram Nagar', 23, NULL, NULL, NULL),
(537, 'Etawah', 23, NULL, NULL, NULL),
(538, 'Firozabad', 23, NULL, NULL, NULL),
(539, 'Farrukhabad', 23, NULL, NULL, NULL),
(540, 'Fatehpur', 23, NULL, NULL, NULL),
(541, 'Faizabad', 23, NULL, NULL, NULL),
(542, 'Gautam Buddha Nagar', 23, NULL, NULL, NULL),
(543, 'Gonda', 23, NULL, NULL, NULL),
(544, 'Ghazipur', 23, NULL, NULL, NULL),
(545, 'Gorkakhpur', 23, NULL, NULL, NULL),
(546, 'Ghaziabad', 23, NULL, NULL, NULL),
(547, 'Hamirpur', 23, NULL, NULL, NULL),
(548, 'Hardoi', 23, NULL, NULL, NULL),
(549, 'Mahamaya Nagar', 23, NULL, NULL, NULL),
(550, 'Jhansi', 23, NULL, NULL, NULL),
(551, 'Jalaun', 23, NULL, NULL, NULL),
(552, 'Jyotiba Phule Nagar', 23, NULL, NULL, NULL),
(553, 'Jaunpur District', 23, NULL, NULL, NULL),
(554, 'Kanpur Dehat', 23, NULL, NULL, NULL),
(555, 'Kannauj', 23, NULL, NULL, NULL),
(556, 'Kanpur Nagar', 23, NULL, NULL, NULL),
(557, 'Kaushambi', 23, NULL, NULL, NULL),
(558, 'Kushinagar', 23, NULL, NULL, NULL),
(559, 'Lalitpur', 23, NULL, NULL, NULL),
(560, 'Lakhimpur Kheri', 23, NULL, NULL, NULL),
(561, 'Lucknow', 23, NULL, NULL, NULL),
(562, 'Mau', 23, NULL, NULL, NULL),
(563, 'Meerut', 23, NULL, NULL, NULL),
(564, 'Maharajganj', 23, NULL, NULL, NULL),
(565, 'Mahoba', 23, NULL, NULL, NULL),
(566, 'Mirzapur', 23, NULL, NULL, NULL),
(567, 'Moradabad', 23, NULL, NULL, NULL),
(568, 'Mainpuri', 23, NULL, NULL, NULL),
(569, 'Mathura', 23, NULL, NULL, NULL),
(570, 'Muzaffarnagar', 23, NULL, NULL, NULL),
(571, 'Pilibhit', 23, NULL, NULL, NULL),
(572, 'Pratapgarh', 23, NULL, NULL, NULL),
(573, 'Rampur', 23, NULL, NULL, NULL),
(574, 'Rae Bareli', 23, NULL, NULL, NULL),
(575, 'Saharanpur', 23, NULL, NULL, NULL),
(576, 'Sitapur', 23, NULL, NULL, NULL),
(577, 'Shahjahanpur', 23, NULL, NULL, NULL),
(578, 'Sant Kabir Nagar', 23, NULL, NULL, NULL),
(579, 'Siddharthnagar', 23, NULL, NULL, NULL),
(580, 'Sonbhadra', 23, NULL, NULL, NULL),
(581, 'Sant Ravidas Nagar', 23, NULL, NULL, NULL),
(582, 'Sultanpur', 23, NULL, NULL, NULL),
(583, 'Shravasti', 23, NULL, NULL, NULL),
(584, 'Unnao', 23, NULL, NULL, NULL),
(585, 'Varanasi', 23, NULL, NULL, NULL),
(586, 'Birbhum', 24, NULL, NULL, NULL),
(587, 'Bankura', 24, NULL, NULL, NULL),
(588, 'Bardhaman', 24, NULL, NULL, NULL),
(589, 'Darjeeling', 24, NULL, NULL, NULL),
(590, 'Dakshin Dinajpur', 24, NULL, NULL, NULL),
(591, 'Hooghly', 24, NULL, NULL, NULL),
(592, 'Howrah', 24, NULL, NULL, NULL),
(593, 'Jalpaiguri', 24, NULL, NULL, NULL),
(594, 'Cooch Behar', 24, NULL, NULL, NULL),
(595, 'Kolkata', 24, NULL, NULL, NULL),
(596, 'Malda', 24, NULL, NULL, NULL),
(597, 'Midnapore', 24, NULL, NULL, NULL),
(598, 'Murshidabad', 24, NULL, NULL, NULL),
(599, 'Nadia', 24, NULL, NULL, NULL),
(600, 'North 24 Parganas', 24, NULL, NULL, NULL),
(601, 'South 24 Parganas', 24, NULL, NULL, NULL),
(602, 'Purulia', 24, NULL, NULL, NULL),
(603, 'Uttar Dinajpur', 24, NULL, NULL, NULL),
(604, 'Raipur', 35, '2023-09-20 10:02:32', NULL, NULL),
(605, 'Bhilai (Bhilai Nagar)', 35, '2023-09-20 10:02:32', NULL, NULL),
(606, 'Durg', 35, '2023-09-20 10:02:32', NULL, NULL),
(607, 'Bilaspur', 35, '2023-09-20 10:02:32', NULL, NULL),
(608, 'Korba', 35, '2023-09-20 10:02:32', NULL, NULL),
(609, 'Raj Nandgaon', 35, '2023-09-20 10:02:32', NULL, NULL),
(610, 'Raigarh', 35, '2023-09-20 10:02:32', NULL, NULL),
(611, 'Jagdalpur', 35, '2023-09-20 10:02:32', NULL, NULL),
(612, 'Bastar', 35, '2023-09-20 10:02:32', NULL, NULL),
(613, 'Ambikapur', 35, '2023-09-20 10:02:32', NULL, NULL),
(614, 'Surguja', 35, '2023-09-20 10:02:32', NULL, NULL),
(615, 'Dhamtari', 35, '2023-09-20 10:02:32', NULL, NULL),
(616, 'Chirmiri', 35, '2023-09-20 10:02:32', NULL, NULL),
(617, 'Koriya', 35, '2023-09-20 10:02:32', NULL, NULL),
(618, 'Bhatapara', 35, '2023-09-20 10:02:32', NULL, NULL),
(619, 'Mahasamund', 35, '2023-09-20 10:02:32', NULL, NULL),
(620, 'Dalli-Rajhara', 35, '2023-09-20 10:02:32', NULL, NULL),
(621, 'Balod', 35, '2023-09-20 10:02:32', NULL, NULL),
(622, 'Kawardha', 35, '2023-09-20 10:02:32', NULL, NULL),
(623, 'Kabirdham', 35, '2023-09-20 10:02:32', NULL, NULL),
(624, 'Champa', 35, '2023-09-20 10:02:32', NULL, NULL),
(625, 'Naila Janjgir', 35, '2023-09-20 10:02:32', NULL, NULL),
(626, 'Kanker', 35, '2023-09-20 10:02:32', NULL, NULL),
(627, 'Dongragarh', 35, '2023-09-20 10:02:32', NULL, NULL),
(628, 'Rajnandgaon', 35, '2023-09-20 10:02:32', NULL, NULL),
(629, 'Tilda Neora', 35, '2023-09-20 10:02:32', NULL, NULL),
(630, 'Mungeli', 35, '2023-09-20 10:02:32', NULL, NULL),
(631, 'Manendragarh', 35, '2023-09-20 10:02:32', NULL, NULL),
(632, 'Kondagaon', 35, '2023-09-20 10:02:32', NULL, NULL),
(633, 'Gobranawapara', 35, '2023-09-20 10:02:32', NULL, NULL),
(634, 'Bemetara', 35, '2023-09-20 10:02:32', NULL, NULL),
(635, 'Baikunthpur', 35, '2023-09-20 10:02:32', NULL, NULL),
(636, 'ABCDpi', 36, '2023-09-20 12:36:27', '2023-09-20 12:38:33', '2023-09-20 12:38:33'),
(637, 'PQRS', 36, '2023-09-20 12:36:34', '2023-09-20 12:38:38', '2023-09-20 12:38:38'),
(638, '963', 36, '2023-09-20 12:37:12', '2023-09-20 12:38:41', '2023-09-20 12:38:41'),
(639, 'Asdsa', 36, '2023-09-20 12:37:16', '2023-09-20 12:38:44', '2023-09-20 12:38:44'),
(640, 'Abcd', 36, '2023-09-20 12:38:19', '2023-09-20 12:38:46', '2023-09-20 12:38:46'),
(641, 'Amini', 28, '2023-09-20 12:43:03', '2023-09-20 12:43:03', NULL),
(642, 'Andrott', 28, '2023-09-20 12:43:10', '2023-09-20 12:43:10', NULL),
(643, 'Kadmat', 28, '2023-09-20 12:43:16', '2023-09-20 12:43:16', NULL),
(644, 'Kalpeni', 28, '2023-09-20 12:43:23', '2023-09-20 12:43:23', NULL),
(645, 'Kavaratti', 28, '2023-09-20 12:43:29', '2023-09-20 12:43:29', NULL),
(646, 'Minicoy', 28, '2023-09-20 12:43:38', '2023-09-20 12:43:38', NULL),
(647, 'Silvassa Municipal Council', 30, '2023-09-20 12:45:32', '2023-09-20 12:47:03', NULL),
(648, 'Naroli Census Town', 30, '2023-09-20 12:45:38', '2023-09-20 12:47:17', NULL),
(649, 'Dadra Census Town', 30, '2023-09-20 12:45:44', '2023-09-20 12:47:36', NULL),
(650, 'Samarvarni Census Town', 30, '2023-09-20 12:45:51', '2023-09-20 12:47:48', NULL),
(651, 'Masat Census Town', 30, '2023-09-20 12:47:58', '2023-09-20 12:47:58', NULL),
(652, 'Rakholi Census Town', 30, '2023-09-20 12:48:06', '2023-09-20 12:48:06', NULL),
(653, 'Chandigarh', 31, '2023-09-20 12:53:10', '2023-09-20 12:53:10', NULL),
(654, 'DHAMPUR', 23, '2023-11-13 22:47:08', '2023-11-13 22:47:08', NULL),
(655, 'GUWAHATI', 2, '2023-11-15 12:08:55', '2023-11-15 12:08:55', NULL),
(656, '', 37, '2024-02-19 06:21:05', '2024-02-19 06:21:05', NULL),
(657, 'Shivamoga', 5, '2024-02-19 07:59:16', '2024-02-19 07:59:16', NULL),
(658, 'HULBI', 9, '2024-02-19 11:55:24', '2024-02-19 11:57:34', '2024-02-19 11:57:34'),
(659, 'HULBI', 9, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(660, 'Nagarathpete', 9, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(661, 'Bangalore', 9, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(662, 'Jungalpur', 24, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(663, 'Delhi', 25, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(664, 'Visakhapatnam', 1, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(665, 'Vijayawada', 1, '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL),
(666, 'Kochi', 10, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(667, 'MANGALORE', 9, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(668, 'TRICHY', 21, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(669, 'Pondicherry', 40, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(670, 'MEDCHAL', 38, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(671, 'KARWAR', 9, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(672, 'Dwarka', 25, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(673, 'South West', 25, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(674, 'Bhiwandi', 12, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(675, 'Mumabi', 12, '2024-02-23 06:23:06', '2024-02-23 06:23:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments_orders`
--

DROP TABLE IF EXISTS `comments_orders`;
CREATE TABLE IF NOT EXISTS `comments_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comments` longtext,
  `date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments_orders`
--

INSERT INTO `comments_orders` (`id`, `customer_id`, `comments`, `date`, `created_at`) VALUES
(9, 164, 'testing first comment', '2024-01-18 15:15:03', '2024-01-18 15:15:03'),
(10, 164, 'this is against new company and user name is sachin', '2024-01-18 15:15:35', '2024-01-18 15:15:35'),
(11, 164, 'test', '2024-01-18 16:13:36', '2024-01-18 16:13:36'),
(12, 162, 'first comment test here', '2024-01-19 09:50:25', '2024-01-19 09:50:25'),
(13, 162, 'nice try ', '2024-01-19 09:50:36', '2024-01-19 09:50:36'),
(14, 162, 'hello', '2024-01-19 10:43:00', '2024-01-19 10:43:00'),
(15, 162, 'please upload these data', '2024-01-19 11:55:22', '2024-01-19 11:55:22'),
(16, 164, 'from real device commented this', '2024-01-19 13:31:30', '2024-01-19 13:31:30'),
(17, 164, 'commenting today', '2024-01-25 11:24:17', '2024-01-25 13:54:17'),
(18, 162, 'test co', '2024-01-25 15:13:00', '2024-01-25 17:43:00'),
(19, 165, 'test first comment', '2024-01-25 16:07:00', '2024-01-25 18:37:00'),
(20, 165, 'test first comment', '2024-01-25 16:07:00', '2024-01-25 18:37:00'),
(21, 44, 'first test comments', '2024-02-22 12:29:25', '2024-02-22 12:29:25');

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
  `parent_users` varchar(50) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `company_logo` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `name`, `email`, `mobile_no`, `address_line1`, `gst_no`, `state`, `cin`, `pan`, `tan`, `account_name`, `account_no`, `bank_name`, `ifsc_code`, `branch`, `account_name_1`, `account_no_1`, `bank_name_1`, `ifsc_code_1`, `branch_1`, `type`, `logo`, `signature`, `address`, `landmark`, `address_line2`, `gstno`, `city`, `district`, `country`, `pincode`, `batch_system`, `db_type`, `ay_type`, `ac_start_date`, `ac_end_date`, `is_backdated_date`, `parent_users`, `zone_id`, `company_logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(18, 'Brenda Anthony', 'cyve@mailinator.com', '9999999999', '667 Rocky Hague Extension', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ipsum autem ratione', 'Temporibus porro und', '32432H4GJHG', 'Et voluptas aliquip', '344', '1', '400613', 0, 'Distributor', 'fi_year', NULL, NULL, 0, '390', 3, NULL, '2024-03-14 07:36:01', '2024-03-14 07:36:01', NULL);

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'India', '2024-02-17 10:26:06', '2024-02-19 04:39:44', NULL),
(4, 'Singapore', '2024-02-19 06:27:25', '2024-02-19 06:27:25', NULL);

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
-- Table structure for table `daily_plans`
--

DROP TABLE IF EXISTS `daily_plans`;
CREATE TABLE IF NOT EXISTS `daily_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beat_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `days_plan`
--

DROP TABLE IF EXISTS `days_plan`;
CREATE TABLE IF NOT EXISTS `days_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beat_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_start` tinyint(4) NOT NULL DEFAULT '0',
  `is_skip` tinyint(4) NOT NULL DEFAULT '0',
  `skip_reason` varchar(220) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `days_plan`
--

INSERT INTO `days_plan` (`id`, `user_id`, `beat_id`, `date`, `is_start`, `is_skip`, `skip_reason`, `updated_at`) VALUES
(83, 143, 47, '2024-01-18', 0, 1, 'testing skip', '2024-01-18 18:08:12'),
(84, 143, 47, '2024-01-19', 1, 0, '', '2024-01-19 09:48:24'),
(85, 143, 46, '2024-01-19', 1, 0, '', '2024-01-19 09:49:15'),
(86, 73, 49, '2024-01-19', 1, 0, '', '2024-01-19 11:27:46'),
(87, 143, 46, '2024-01-24', 1, 0, '', '2024-01-24 19:03:37'),
(88, 143, 47, '2024-01-25', 1, 0, '', '2024-01-25 12:39:12'),
(89, 143, 46, '2024-01-25', 1, 0, '', '2024-01-25 13:24:58'),
(90, 143, 49, '2024-01-25', 1, 0, '', '2024-01-25 18:31:07'),
(91, 143, 45, '2024-02-03', 1, 0, '', '2024-02-03 16:25:07'),
(92, 153, 46, '2024-02-03', 1, 0, '', '2024-02-03 17:42:25'),
(93, 359, 45, '2024-02-22', 1, 0, '', '2024-02-22 12:23:52'),
(94, 359, 45, '2024-02-23', 1, 0, '', '2024-02-23 13:04:54'),
(95, 393, 1, '2024-03-14', 1, 0, '', '2024-03-14 13:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `deapartment`
--

DROP TABLE IF EXISTS `deapartment`;
CREATE TABLE IF NOT EXISTS `deapartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deapartment`
--

INSERT INTO `deapartment` (`id`, `name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Manager'),
(4, 'ASE'),
(5, 'ASM'),
(6, 'Sales Officer'),
(7, 'Sales Manager'),
(8, 'Salesman'),
(9, 'Sales Executive'),
(10, 'Distributor');

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
(1, 1867, '2023-12-05 11:11:50');

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
  `order_booking_counter` int(11) DEFAULT '0',
  `order_fulfilment_counter` int(11) DEFAULT '0',
  `ar_invoice_counter` int(11) DEFAULT '0',
  `invoice_return_counter` int(11) DEFAULT '0',
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`financial_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_year`
--

INSERT INTO `financial_year` (`financial_year_id`, `year`, `billoflading_counter`, `proforma_counter`, `delivery_order_counter`, `gatepass_counter`, `manifest_counter`, `job_counter`, `purchase_order_counter`, `goods_servie_receipt_counter`, `ap_invoice_counter`, `bill_booking_counter`, `banking_payment_counter`, `order_booking_counter`, `order_fulfilment_counter`, `ar_invoice_counter`, `invoice_return_counter`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-24', 0, 0, 0, 0, 0, 0, 15, 22, 23, 6, 8, 20, 17, 17, 0, 1, '2024-01-19 12:30:23', '2024-03-15 10:18:53', NULL),
(3, '2024', 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 6, 12, 22, 0, 0, '2024-02-27 06:57:15', '2024-03-14 04:23:05', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 1, '2023-24', 18, 15, '535', '324324', 'GR-2023-24-21', NULL, NULL, NULL, '2024-03-15', 2, NULL, NULL, '2023-24', NULL, NULL, '4', 67, 'open', '2024-03-15', '2024-03-30', '2024-03-15', 0, '32535STREW', '18', 'Twenty-Eight Thousand Eight Hundred and Sixty-Three Only', 'Four Thousand Four Hundred and Three Only', '24460', '0', '0', '4402.8', '4402.8', NULL, '28863', NULL, NULL, NULL, 1, 1, '2024-03-15 09:53:55', '2024-03-15 09:54:54', NULL),
(2, 1, '2023-24', 18, 15, '535', '', 'GR-2023-24-22', NULL, NULL, NULL, '2024-03-15', 2, NULL, NULL, '2023-24', NULL, NULL, '4', 67, 'open', '2024-03-15', '2024-03-30', '2024-03-15', 0, '32535STREW', NULL, 'Sixty-Three Thousand Six Hundred and Two Only', 'Nine Thousand Seven Hundred and Two Only', '53900', '0', '0', '9702', '9702', NULL, '63602', NULL, NULL, NULL, 0, 0, '2024-03-15 09:54:54', '2024-03-15 09:54:54', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods_service_receipts_items`
--

INSERT INTO `goods_service_receipts_items` (`goods_service_receipts_item_id`, `goods_service_receipt_id`, `party_id`, `purchase_order_id`, `item_name`, `item_code`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `manufacturing_date`, `expiry_date`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '50', NULL, '290.00', '17110.00', '290', 1, '2610.00', '0', '0', '0', '0', '18', '2610', '14500.00', '1854-Batch-1314338', NULL, NULL, 8, '2024-03-15 09:53:55', '2024-03-15 09:54:54', NULL),
(2, 1, NULL, 1, NULL, '69991611', '10375577', NULL, '40', NULL, '249.00', '11752.80', '249', 1, '1792.80', '0', '0', '0', '0', '18', '1792.8', '9960.00', '1855-Batch-10375577', NULL, NULL, 8, '2024-03-15 09:53:55', '2024-03-15 09:54:54', NULL),
(3, 2, NULL, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '50', NULL, '290.00', '17110.00', '290', 1, '2610.00', '0', '0', '0', '0', '18', '2610', '14500.00', '1854-Batch-1314338', NULL, NULL, 8, '2024-03-15 09:54:54', '2024-03-15 09:54:54', NULL),
(4, 2, NULL, 1, NULL, '69991611', '10375577', NULL, '60', NULL, '249.00', '11752.80', '249', 1, '1792.80', '0', '0', '0', '0', '18', '1792.8', '9960.00', '1855-Batch-10375577', NULL, NULL, 8, '2024-03-15 09:54:54', '2024-03-15 09:54:54', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`gst_id`, `gst_name`, `gst_percent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '18%', 18, '2024-02-16 08:54:41', '2024-02-16 08:54:41', NULL),
(2, '28%', 28, '2021-05-27 11:34:58', '2021-06-21 00:58:03', NULL),
(3, '5%', 5, '2021-06-21 00:58:29', '2021-06-21 00:58:29', NULL),
(4, 'No GST', 0, '2021-06-21 00:58:50', '2021-06-21 00:58:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gst_reg_type`
--

DROP TABLE IF EXISTS `gst_reg_type`;
CREATE TABLE IF NOT EXISTS `gst_reg_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gst_reg_type`
--

INSERT INTO `gst_reg_type` (`id`, `name`, `created_at`) VALUES
(1, 'Composite', '2024-02-17 07:11:31'),
(2, 'Regular', '2024-02-17 07:11:37');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
(27, '3123', '312312', '2023-12-22 03:01:22', '2023-12-22 03:01:22'),
(28, '00909', '90909090', '2024-01-09 05:53:12', '2024-01-09 05:53:12'),
(29, 'idk', '3304.9910', '2024-01-31 17:25:23', '2024-01-31 17:25:23'),
(30, 'idk', '3401.3019', '2024-02-01 00:49:08', '2024-02-01 00:49:08'),
(31, 'idkkk', '33051090', '2024-02-01 02:45:13', '2024-02-01 02:45:13'),
(32, 'idkkkkk', '3301090', '2024-02-01 02:58:55', '2024-02-01 02:58:55');

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
  `blocked_qty` varchar(50) DEFAULT NULL,
  `doc_no` varchar(110) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `warehouse_id`, `bin_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `unit_price`, `remarks`, `fy_year`, `company_id`, `user_id`, `blocked_qty`, `doc_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 16, '1852-Batch-1314338', '', '', '1314338', '000111', '44', '290', NULL, '2023-24', 18, 75, '0', 'AR-2023-24-17', '2024-03-15 15:24:54', '2024-03-15 16:16:38', NULL),
(2, 8, 16, '1853-Batch-10375577', '', '', '10375577', '69991611', '30', '249', NULL, '2023-24', 18, 75, '0', 'AR-2023-24-17', '2024-03-15 15:24:54', '2024-03-15 16:16:38', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_types`
--

INSERT INTO `item_types` (`item_type_id`, `item_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Raw Material', '2022-09-12 08:06:20', NULL),
(2, 'Production Material', '2022-09-12 08:06:20', NULL),
(3, 'Finished Goods', '2022-09-12 08:06:20', NULL),
(4, 'Business Partner Type', '2024-02-16 05:34:58', '2024-02-16 05:34:58'),
(5, 'FG', '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(6, 'GT', '2024-03-15 04:27:29', '2024-03-15 04:27:29');

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
(37, 'App\\Models\\backend\\AdminUsers', 73),
(38, 'App\\Models\\backend\\AdminUsers', 74),
(17, 'App\\Models\\backend\\AdminUsers', 75),
(37, 'App\\Models\\backend\\AdminUsers', 76),
(39, 'App\\Models\\backend\\AdminUsers', 132),
(40, 'App\\Models\\backend\\AdminUsers', 133),
(39, 'App\\Models\\backend\\AdminUsers', 141),
(37, 'App\\Models\\backend\\AdminUsers', 142),
(37, 'App\\Models\\backend\\AdminUsers', 143),
(34, 'App\\Models\\backend\\AdminUsers', 150),
(35, 'App\\Models\\backend\\AdminUsers', 151),
(40, 'App\\Models\\backend\\AdminUsers', 152),
(37, 'App\\Models\\backend\\AdminUsers', 153),
(33, 'App\\Models\\backend\\AdminUsers', 349),
(37, 'App\\Models\\backend\\AdminUsers', 359),
(33, 'App\\Models\\backend\\AdminUsers', 360),
(41, 'App\\Models\\backend\\AdminUsers', 373),
(34, 'App\\Models\\backend\\AdminUsers', 374),
(34, 'App\\Models\\backend\\AdminUsers', 375),
(41, 'App\\Models\\backend\\AdminUsers', 376),
(41, 'App\\Models\\backend\\AdminUsers', 377),
(41, 'App\\Models\\backend\\AdminUsers', 378),
(41, 'App\\Models\\backend\\AdminUsers', 379),
(37, 'App\\Models\\backend\\AdminUsers', 380),
(41, 'App\\Models\\backend\\AdminUsers', 381),
(33, 'App\\Models\\backend\\AdminUsers', 385),
(41, 'App\\Models\\backend\\AdminUsers', 386),
(41, 'App\\Models\\backend\\AdminUsers', 387),
(33, 'App\\Models\\backend\\AdminUsers', 388),
(34, 'App\\Models\\backend\\AdminUsers', 389),
(35, 'App\\Models\\backend\\AdminUsers', 390),
(41, 'App\\Models\\backend\\AdminUsers', 391),
(40, 'App\\Models\\backend\\AdminUsers', 392),
(37, 'App\\Models\\backend\\AdminUsers', 393);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(110) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

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
(8, 'A/R INVOICE'),
(9, 'ORDER BOOKING'),
(10, 'ORDER FULFILMENT'),
(12, 'Banking Receipt'),
(13, 'Return Invoice');

-- --------------------------------------------------------

--
-- Table structure for table `order_booking`
--

DROP TABLE IF EXISTS `order_booking`;
CREATE TABLE IF NOT EXISTS `order_booking` (
  `order_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_counter` int(11) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `receipt_type` varchar(110) DEFAULT NULL,
  `customer_ref_no` varchar(110) DEFAULT NULL,
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
  `created_by` int(11) DEFAULT NULL,
  `from_app` tinyint(4) NOT NULL DEFAULT '0',
  `is_updated` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_booking`
--

INSERT INTO `order_booking` (`order_booking_id`, `order_booking_counter`, `fy_year`, `company_id`, `receipt_type`, `customer_ref_no`, `bill_to`, `ship_from`, `bill_no`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `place_of_supply`, `status`, `posting_date`, `delivery_date`, `document_date`, `contact_person`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_by`, `from_app`, `is_updated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '2023-24', 18, NULL, '23535', '1', '2', 'SO-2023-24-20', '2024-03-15', 1, NULL, NULL, '2023-24', NULL, NULL, 'open', NULL, '2024-03-31', '2024-03-15', 10, NULL, 'BVHJ4534', '18', 'Seven Thousand and Sixty-Eight Only', 'One Thousand and Seventy-Eight Only', '5990', '539.1', '539.1', '0', '1078.2', NULL, '7068', NULL, NULL, NULL, 0, 1, '2024-03-14 02:34:24', '2024-03-15 10:08:11', NULL);

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
  `sku` varchar(110) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_booking_items`
--

INSERT INTO `order_booking_items` (`order_booking_item_id`, `order_booking_id`, `item_name`, `item_code`, `sku`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `storage_location_id`, `total`, `gst_rate`, `gst_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '10', NULL, NULL, '4130', '350', '9', '315', '9', '315', '0', '0', 8, '3500.0', 1, '630', '2024-03-14 08:17:40', '2024-03-15 10:08:02', NULL),
(2, 1, NULL, '69991611', '10375577', NULL, '10', NULL, '249.00', '2938.20', '249', '9', '224.1', '9', '224.1', '0', '0', 8, '2490.00', 1, '448.20', '2024-03-15 10:08:02', '2024-03-15 10:08:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_booking_items_temp`
--

DROP TABLE IF EXISTS `order_booking_items_temp`;
CREATE TABLE IF NOT EXISTS `order_booking_items_temp` (
  `order_booking_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `item_name` varchar(1000) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_booking_temp`
--

DROP TABLE IF EXISTS `order_booking_temp`;
CREATE TABLE IF NOT EXISTS `order_booking_temp` (
  `order_booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_counter` int(11) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `receipt_type` varchar(110) DEFAULT NULL,
  `customer_ref_no` varchar(110) DEFAULT NULL,
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
  `created_by` int(11) DEFAULT NULL,
  `from_app` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_fulfilment`
--

DROP TABLE IF EXISTS `order_fulfilment`;
CREATE TABLE IF NOT EXISTS `order_fulfilment` (
  `order_fulfillment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_booking_id` int(11) DEFAULT NULL,
  `order_booking_counter` int(11) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `customer_ref_no` varchar(110) NOT NULL,
  `customer_inv_no` varchar(100) DEFAULT NULL,
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
  `is_of_done` tinyint(1) NOT NULL DEFAULT '0',
  `is_inventory_updated` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_fulfilment`
--

INSERT INTO `order_fulfilment` (`order_fulfillment_id`, `order_booking_id`, `order_booking_counter`, `fy_year`, `company_id`, `customer_ref_no`, `customer_inv_no`, `bill_no`, `bill_to`, `receipt_type`, `po_document`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `place_of_supply`, `ship_from`, `contact_person`, `status`, `posting_date`, `due_date`, `document_date`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `storage_location_id`, `is_of_done`, `is_inventory_updated`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '2023-24', 18, '23535', '345345', 'OF-2023-24-16', '1', NULL, NULL, '2024-03-15', 1, NULL, NULL, '2023-24', NULL, NULL, '2', 10, 'open', NULL, '2024-03-31', '2024-03-15', NULL, 'BVHJ4534', '18', 'Five Thousand Four Hundred and Sixteen Only', 'Eight Hundred and Twenty-Six Only', '4590', '413.1', '413.1', '0', '826.2', NULL, '5416', NULL, NULL, NULL, 1, 1, '2024-03-15 10:08:15', '2024-03-15 10:18:40', NULL),
(2, 1, NULL, '2023-24', 18, '23535', '', 'OF-2023-24-17', '1', NULL, NULL, '2024-03-15', 1, NULL, NULL, '2023-24', NULL, NULL, '2', 10, 'open', NULL, '2024-03-31', '2024-03-15', NULL, 'BVHJ4534', NULL, 'Seven Thousand and Sixty-Eight Only', 'One Thousand and Seventy-Eight Only', '5990', '539.1', '539.1', '0', '1078.2', NULL, '7068', NULL, NULL, NULL, 0, 0, '2024-03-15 10:18:40', '2024-03-15 10:18:40', NULL);

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
  `sku` varchar(110) DEFAULT NULL,
  `hsn_sac` varchar(100) DEFAULT NULL,
  `og_qty` varchar(100) DEFAULT NULL,
  `fulfil_qty` varchar(100) DEFAULT NULL,
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
  `storage_location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_fulfillment_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_fulfilment_items`
--

INSERT INTO `order_fulfilment_items` (`order_fulfillment_item_id`, `order_fulfillment_id`, `party_id`, `order_booking_id`, `item_name`, `item_code`, `sku`, `hsn_sac`, `og_qty`, `fulfil_qty`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `taxable_amount`, `gst_rate`, `gst_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `batch_no`, `storage_location_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '10', '0', '6', NULL, '350.00', '2478.00', '350', 1, '378.00', '9', '189', '9', '189', '0', '0', '2100.00', '1865-Batch-1314338', 8, '2024-03-15 10:08:15', '2024-03-15 10:18:40', NULL),
(2, 1, NULL, 1, NULL, '69991611', '10375577', NULL, '10', '0', '10', NULL, '249.00', '2938.20', '249', 1, '448.20', '9', '224.1', '9', '224.1', '0', '0', '2490.00', '1866-Batch-10375577', 8, '2024-03-15 10:08:15', '2024-03-15 10:18:40', NULL),
(3, 2, NULL, 1, 'test Zeph Coleman', '000111', '1314338', 'Adipisicing ex quas', '10', '6', '4', NULL, '350.00', '2478.00', '350', 1, '378.00', '9', '189', '9', '189', '0', '0', '2100.00', '1865-Batch-1314338', 8, '2024-03-15 10:18:40', '2024-03-15 10:18:40', NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outlet_selection`
--

DROP TABLE IF EXISTS `outlet_selection`;
CREATE TABLE IF NOT EXISTS `outlet_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `beat_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_start` tinyint(4) NOT NULL DEFAULT '0',
  `is_skip` tinyint(4) NOT NULL DEFAULT '0',
  `is_submit` tinyint(4) NOT NULL DEFAULT '0',
  `skip_reason` varchar(220) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outlet_selection`
--

INSERT INTO `outlet_selection` (`id`, `user_id`, `beat_id`, `outlet_id`, `date`, `is_start`, `is_skip`, `is_submit`, `skip_reason`, `updated_at`) VALUES
(65, 73, 46, 163, '2024-01-17', 0, 1, 0, 'test', '2024-01-17 12:44:12'),
(66, 73, 45, 124, '2024-01-17', 1, 0, 0, '', '2024-01-17 12:44:28'),
(67, 73, 45, 124, '2024-01-18', 1, 0, 0, '', '2024-01-18 10:17:32'),
(68, 73, 47, 162, '2024-01-18', 1, 0, 0, '', '2024-01-18 14:21:35'),
(69, 143, 47, 164, '2024-01-18', 0, 0, 1, '', '2024-01-18 14:22:57'),
(70, 143, 46, 162, '2024-01-19', 0, 0, 1, '', '2024-01-19 09:49:20'),
(71, 73, 49, 156, '2024-01-19', 1, 0, 0, '', '2024-01-19 11:27:48'),
(72, 143, 47, 164, '2024-01-19', 1, 0, 0, '', '2024-01-19 11:40:42'),
(73, 143, 46, 162, '2024-01-24', 1, 0, 0, '', '2024-01-24 19:03:47'),
(74, 143, 47, 164, '2024-01-25', 1, 0, 0, '', '2024-01-25 12:39:17'),
(75, 143, 47, 124, '2024-01-25', 0, 1, 0, 'no time', '2024-01-25 13:24:01'),
(76, 143, 46, 162, '2024-01-25', 1, 0, 0, '', '2024-01-25 13:25:00'),
(77, 143, 49, 165, '2024-01-25', 0, 0, 1, '', '2024-01-25 18:31:26'),
(78, 153, 46, 216, '2024-02-03', 1, 0, 0, '', '2024-02-03 17:43:02'),
(79, 359, 45, 44, '2024-02-22', 1, 0, 0, '', '2024-02-22 12:27:24'),
(80, 359, 45, 44, '2024-02-23', 1, 0, 0, '', '2024-02-23 15:34:47'),
(81, 359, 45, 9, '2024-02-23', 1, 0, 0, '', '2024-02-23 15:44:04'),
(82, 393, 1, 1, '2024-03-14', 1, 0, 0, '', '2024-03-14 13:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `outstanding_pay`
--

DROP TABLE IF EXISTS `outstanding_pay`;
CREATE TABLE IF NOT EXISTS `outstanding_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `payment_option` varchar(100) DEFAULT NULL,
  `cheque_image` longtext,
  `payment_date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outstanding_pay`
--

INSERT INTO `outstanding_pay` (`id`, `customer_id`, `amount`, `payment_option`, `cheque_image`, `payment_date`, `created_at`) VALUES
(34, 124, '455', 'cheque', '65a8adddd2d6b_IMG_20240118_101828.jpg,65a8adddd3ea7_IMG_20240118_101840.jpg', '2024-01-18', '2024-01-18 10:19:33'),
(35, 164, '877', 'cash', '', '2024-01-18', '2024-01-18 15:14:06'),
(36, 164, '9000', 'cheque', '65a8f30547471_ec579b63-fa4e-428b-91f6-c4d845593aa7300426801661202145.jpg', '2024-01-18', '2024-01-18 15:14:37'),
(37, 162, '899', 'cheque', '65aa15ec3b273_IMG_20240119_104222.jpg', '2024-01-19', '2024-01-19 11:55:48'),
(38, 162, '5767', 'cheque', '65aa161e7a8ff_80606b68-3ee0-49e2-bf6a-461830c105b53974303592951238134.jpg', '2024-01-19', '2024-01-19 11:56:38'),
(39, 164, '5000', 'cash', '', '2024-01-19', '2024-01-19 13:30:55'),
(40, 164, '63', 'upi', '', '2024-01-19', '2024-01-19 15:30:06'),
(41, 162, '5407', 'cheque', '65b1f25251ff4_IMG_20240117_133846.jpg', '2024-01-25', '2024-01-25 13:32:02'),
(42, 162, '700', 'cash', '', '2024-01-25', '2024-01-25 17:42:46'),
(43, 165, '450', 'cash', '', '2024-01-25', '2024-01-25 18:37:29'),
(44, 44, '540', 'cash', '', '2024-02-22', '2024-02-22 12:29:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`payment_terms_id`, `term_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LC', '2022-08-01 10:14:12', NULL, NULL),
(2, 'Advance/ Pre-Payment', '2022-08-01 10:35:58', NULL, NULL),
(3, 'PDC', '2022-08-10 10:15:14', NULL, NULL),
(4, 'On Credit', '2022-09-01 10:16:06', NULL, NULL),
(8, '30 days Credit', '2024-02-21 08:12:40', '2024-02-21 08:12:40', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4;

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
(192, 'Create Company Master', 'admin', 6, 'Create', 11, 101, 0, '2021-10-14 02:47:52', '2024-02-21 09:34:50'),
(193, 'View Company Master', 'admin', 7, 'View', 11, 101, 0, '2021-10-14 02:47:52', '2024-02-21 09:34:50'),
(194, 'Update Company Master', 'admin', 8, 'Update', 11, 101, 0, '2021-10-14 02:47:54', '2024-02-21 09:34:50'),
(195, 'Delete Company Master', 'admin', 9, 'Delete', 11, 101, 0, '2021-10-14 02:47:54', '2024-02-21 09:34:50'),
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
(262, 'Create Expenses', 'admin', 6, 'Create', 11, 95, 0, '2022-09-13 11:03:12', '2024-02-21 09:34:26'),
(263, 'View Expenses', 'admin', 7, 'View', 11, 95, 0, '2022-09-13 11:03:13', '2024-02-21 09:34:26'),
(264, 'Update Expenses', 'admin', 8, 'Update', 11, 95, 0, '2022-09-13 11:03:13', '2024-02-21 09:34:26'),
(265, 'Delete Expenses', 'admin', 9, 'Delete', 11, 95, 0, '2022-09-13 11:03:13', '2024-02-21 09:34:26'),
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
(386, 'Create Sales Order/Order Booking', 'admin', 6, 'Create', 43, 67, 0, '2023-06-07 09:05:14', '2024-01-05 07:39:35'),
(387, 'View Sales Order/Order Booking', 'admin', 7, 'View', 43, 67, 0, '2023-06-07 09:05:14', '2024-01-05 07:39:35'),
(388, 'Update Sales Order/Order Booking', 'admin', 8, 'Update', 43, 67, 0, '2023-06-07 09:05:14', '2024-01-05 07:39:35'),
(389, 'Delete Sales Order/Order Booking', 'admin', 9, 'Delete', 43, 67, 0, '2023-06-07 09:05:14', '2024-01-05 07:39:35'),
(390, 'Create Order Fulfilment/Dispatch', 'admin', 6, 'Create', 43, 68, 0, '2023-06-07 10:34:44', '2024-01-05 10:35:36'),
(391, 'View Order Fulfilment/Dispatch', 'admin', 7, 'View', 43, 68, 0, '2023-06-07 10:34:44', '2024-01-05 10:35:36'),
(392, 'Update Order Fulfilment/Dispatch', 'admin', 8, 'Update', 43, 68, 0, '2023-06-07 10:34:44', '2024-01-05 10:35:36'),
(393, 'Delete Order Fulfilment/Dispatch', 'admin', 9, 'Delete', 43, 68, 0, '2023-06-07 10:34:44', '2024-01-05 10:35:36'),
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
(416, 'Create A/P Invoice', 'admin', 6, 'Create', 44, 73, 0, '2023-11-28 04:59:01', '2024-02-21 09:35:35'),
(417, 'View A/P Invoice', 'admin', 7, 'View', 44, 73, 0, '2023-11-28 04:59:01', '2024-02-21 09:35:35'),
(418, 'Update A/P Invoice', 'admin', 8, 'Update', 44, 73, 0, '2023-11-28 04:59:01', '2024-02-21 09:35:35'),
(419, 'Delete A/P Invoice', 'admin', 9, 'Delete', 44, 73, 0, '2023-11-28 04:59:01', '2024-02-21 09:35:35'),
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
(488, 'Delete Bin Management', 'admin', 9, 'Delete', 11, 118, 0, '2023-12-20 07:09:59', '2023-12-20 07:09:59'),
(489, 'Clone Sales Order/Order Booking', 'admin', 10, 'Clone', 43, 67, 0, '2024-01-05 07:39:35', '2024-01-05 07:39:35'),
(490, 'Clone Order Fulfilment/Dispatch', 'admin', 10, 'Clone', 43, 68, 0, '2024-01-05 10:35:36', '2024-01-05 10:35:36'),
(491, 'Create Sales Order', 'admin', 6, 'Create', 43, 67, 0, '2024-01-08 05:32:00', '2024-01-08 05:32:00'),
(492, 'View Sales Order', 'admin', 7, 'View', 43, 67, 0, '2024-01-08 05:32:01', '2024-01-08 05:32:01'),
(493, 'Update Sales Order', 'admin', 8, 'Update', 43, 67, 0, '2024-01-08 05:32:01', '2024-01-08 05:32:01'),
(494, 'Delete Sales Order', 'admin', 9, 'Delete', 43, 67, 0, '2024-01-08 05:32:01', '2024-01-08 05:32:01'),
(495, 'Clone Sales Order', 'admin', 10, 'Clone', 43, 67, 0, '2024-01-08 05:32:01', '2024-01-08 05:32:01'),
(496, 'Create Country', 'admin', 6, 'Create', 11, 119, 0, '2024-02-17 08:58:53', '2024-02-17 08:58:53'),
(497, 'View Country', 'admin', 7, 'View', 11, 119, 0, '2024-02-17 08:58:53', '2024-02-17 08:58:53'),
(498, 'Update Country', 'admin', 8, 'Update', 11, 119, 0, '2024-02-17 08:58:53', '2024-02-17 08:58:53'),
(499, 'Delete Country', 'admin', 9, 'Delete', 11, 119, 0, '2024-02-17 08:58:53', '2024-02-17 08:58:53'),
(500, 'Create Business Master', 'admin', 6, 'Create', 11, 38, 0, '2024-02-17 10:11:01', '2024-02-20 12:18:54'),
(501, 'View Business Master', 'admin', 7, 'View', 11, 38, 0, '2024-02-17 10:11:01', '2024-02-20 12:18:54'),
(502, 'Update Business Master', 'admin', 8, 'Update', 11, 38, 0, '2024-02-17 10:11:01', '2024-02-20 12:18:54'),
(503, 'Delete Business Master', 'admin', 9, 'Delete', 11, 38, 0, '2024-02-17 10:11:01', '2024-02-20 12:18:54'),
(504, 'Create Country-State-City', 'admin', 6, 'Create', 11, 119, 0, '2024-02-19 05:12:49', '2024-02-21 10:36:13'),
(505, 'View Country-State-City', 'admin', 7, 'View', 11, 119, 0, '2024-02-19 05:12:49', '2024-02-21 10:36:13'),
(506, 'Update Country-State-City', 'admin', 8, 'Update', 11, 119, 0, '2024-02-19 05:12:50', '2024-02-21 10:36:13'),
(507, 'Delete Country-State-City', 'admin', 9, 'Delete', 11, 119, 0, '2024-02-19 05:12:50', '2024-02-21 10:36:13'),
(508, 'Create Purchase Pricing', 'admin', 6, 'Create', 52, 114, 0, '2024-02-20 11:39:29', '2024-02-20 11:39:29'),
(509, 'View Purchase Pricing', 'admin', 7, 'View', 52, 114, 0, '2024-02-20 11:39:31', '2024-02-20 11:39:31'),
(510, 'Update Purchase Pricing', 'admin', 8, 'Update', 52, 114, 0, '2024-02-20 11:39:31', '2024-02-20 11:39:31'),
(511, 'Delete Purchase Pricing', 'admin', 9, 'Delete', 52, 114, 0, '2024-02-20 11:39:32', '2024-02-20 11:39:32'),
(512, 'Create Sale Pricing', 'admin', 6, 'Create', 52, 120, 0, '2024-02-20 11:51:22', '2024-02-20 11:51:22'),
(513, 'View Sale Pricing', 'admin', 7, 'View', 52, 120, 0, '2024-02-20 11:51:23', '2024-02-20 11:51:23'),
(514, 'Update Sale Pricing', 'admin', 8, 'Update', 52, 120, 0, '2024-02-20 11:51:24', '2024-02-20 11:51:24'),
(515, 'Delete Sale Pricing', 'admin', 9, 'Delete', 52, 120, 0, '2024-02-20 11:51:25', '2024-02-20 11:51:25'),
(516, 'Create Purchase Pricelist', 'admin', 6, 'Create', 52, 114, 0, '2024-02-21 09:24:12', '2024-02-21 09:24:12'),
(517, 'View Purchase Pricelist', 'admin', 7, 'View', 52, 114, 0, '2024-02-21 09:24:12', '2024-02-21 09:24:12'),
(518, 'Update Purchase Pricelist', 'admin', 8, 'Update', 52, 114, 0, '2024-02-21 09:24:12', '2024-02-21 09:24:12'),
(519, 'Delete Purchase Pricelist', 'admin', 9, 'Delete', 52, 114, 0, '2024-02-21 09:24:12', '2024-02-21 09:24:12'),
(520, 'Create Sale Pricelist', 'admin', 6, 'Create', 52, 120, 0, '2024-02-21 09:24:28', '2024-02-21 09:24:28'),
(521, 'View Sale Pricelist', 'admin', 7, 'View', 52, 120, 0, '2024-02-21 09:24:28', '2024-02-21 09:24:28'),
(522, 'Update Sale Pricelist', 'admin', 8, 'Update', 52, 120, 0, '2024-02-21 09:24:28', '2024-02-21 09:24:28'),
(523, 'Delete Sale Pricelist', 'admin', 9, 'Delete', 52, 120, 0, '2024-02-21 09:24:28', '2024-02-21 09:24:28'),
(524, 'Create Returns', 'admin', 6, 'Create', 43, 121, 0, '2024-03-13 11:54:52', '2024-03-13 11:54:52'),
(525, 'View Returns', 'admin', 7, 'View', 43, 121, 0, '2024-03-13 11:54:52', '2024-03-13 11:54:52'),
(526, 'Update Returns', 'admin', 8, 'Update', 43, 121, 0, '2024-03-13 11:54:53', '2024-03-13 11:54:53'),
(527, 'Delete Returns', 'admin', 9, 'Delete', 43, 121, 0, '2024-03-13 11:54:54', '2024-03-13 11:54:54'),
(532, 'Create Margin', 'admin', 6, 'Create', 54, 122, 0, '2024-03-15 07:31:59', '2024-03-15 07:31:59'),
(533, 'View Margin', 'admin', 7, 'View', 54, 122, 0, '2024-03-15 07:31:59', '2024-03-15 07:31:59'),
(534, 'Update Margin', 'admin', 8, 'Update', 54, 122, 0, '2024-03-15 07:31:59', '2024-03-15 07:31:59'),
(535, 'Delete Margin', 'admin', 9, 'Delete', 54, 122, 0, '2024-03-15 07:31:59', '2024-03-15 07:31:59'),
(536, 'Create Scheme', 'admin', 6, 'Create', 54, 123, 0, '2024-03-15 07:32:46', '2024-03-15 07:32:46'),
(537, 'View Scheme', 'admin', 7, 'View', 54, 123, 0, '2024-03-15 07:32:46', '2024-03-15 07:32:46'),
(538, 'Update Scheme', 'admin', 8, 'Update', 54, 123, 0, '2024-03-15 07:32:47', '2024-03-15 07:32:47'),
(539, 'Delete Scheme', 'admin', 9, 'Delete', 54, 123, 0, '2024-03-15 07:32:47', '2024-03-15 07:32:47'),
(540, 'Create Sales Returns / Credit Notes', 'admin', 6, 'Create', 43, 121, 0, '2024-03-15 10:48:54', '2024-03-15 10:48:54'),
(541, 'View Sales Returns / Credit Notes', 'admin', 7, 'View', 43, 121, 0, '2024-03-15 10:48:55', '2024-03-15 10:48:55'),
(542, 'Update Sales Returns / Credit Notes', 'admin', 8, 'Update', 43, 121, 0, '2024-03-15 10:48:55', '2024-03-15 10:48:55'),
(543, 'Delete Sales Returns / Credit Notes', 'admin', 9, 'Delete', 43, 121, 0, '2024-03-15 10:48:56', '2024-03-15 10:48:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `per_day_inventory`
--

INSERT INTO `per_day_inventory` (`id`, `warehouse_id`, `bin_id`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `unit_price`, `remarks`, `fy_year`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 16, '1852-Batch-1314338', '', '', '1314338', '000111', '44', '290', NULL, '2023-24', 18, 75, '2024-03-15 15:24:54', '2024-03-15 16:16:38', NULL),
(2, 8, 16, '1853-Batch-10375577', '', '', '10375577', '69991611', '30', '249', NULL, '2023-24', 18, 75, '2024-03-15 15:24:54', '2024-03-15 16:16:38', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`id`, `pricing_master_id`, `sku`, `item_code`, `selling_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1314338', '000111', '290', '2024-03-14 07:57:08', '2024-03-14 07:58:27', NULL),
(2, 2, '1314338', '000111', '350', '2024-03-14 08:01:21', '2024-03-14 08:01:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_log`
--

DROP TABLE IF EXISTS `pricing_log`;
CREATE TABLE IF NOT EXISTS `pricing_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pricing_master_id` int(11) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `selling_price` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing_log`
--

INSERT INTO `pricing_log` (`id`, `pricing_master_id`, `sku`, `item_code`, `selling_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1314338', '000111', '200', '2024-03-14 07:57:08', '2024-03-14 07:57:08', NULL),
(2, 1, '1314338', '000111', '290', '2024-03-14 07:58:27', '2024-03-14 07:58:27', NULL),
(3, 2, '1314338', '000111', '350', '2024-03-14 08:01:21', '2024-03-14 08:01:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pricing_master`
--

DROP TABLE IF EXISTS `pricing_master`;
CREATE TABLE IF NOT EXISTS `pricing_master` (
  `pricing_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `pricing_type` varchar(50) DEFAULT NULL,
  `pricing_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pricing_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing_master`
--

INSERT INTO `pricing_master` (`pricing_master_id`, `pricing_type`, `pricing_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'purchase', 'Test P', 1, '2024-03-14 07:56:41', '2024-03-14 07:56:41', NULL),
(2, 'sale', 'Test S', 1, '2024-03-14 07:58:02', '2024-03-14 07:58:02', NULL);

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
  `hsncode_id` varchar(110) DEFAULT NULL,
  `batch` varchar(50) DEFAULT NULL,
  `expiry_date` varchar(200) DEFAULT NULL,
  `shelf_life_number` varchar(50) DEFAULT NULL,
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
  `sku` varchar(110) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_revision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_revision`
--

INSERT INTO `products_revision` (`product_revision_id`, `product_item_id`, `item_name`, `item_type_id`, `item_code`, `item_description`, `consumer_description`, `brand_id`, `category_id`, `sub_category_id`, `variant`, `buom_pack_size`, `uom_id`, `unit_case`, `hsncode_id`, `batch`, `expiry_date`, `shelf_life_number`, `shelf_life`, `sourcing`, `case_pallet`, `layer_pallet`, `dimensions`, `dimensions_unit_pack`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_net_weight`, `dimensions_gross_weight`, `dimensions_length_uom_id`, `dimensions_width_uom_id`, `dimensions_height_uom_id`, `dimensions_net_uom_id`, `dimensions_gross_weight_uom_id`, `ean_barcode`, `mrp`, `gst_id`, `visibility`, `product_thumb`, `product_desc`, `consumer_desc`, `storage_location_id`, `sku`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 2, '000111', NULL, NULL, 1, 31, 43, '38', 'Reprehenderit repre', 14, '44', 'Adipisicing ex quas', NULL, NULL, '143', 'Days', 'Est dolores sit vo', 'Quia qui eaque qui p', 'Inventore nesciunt', NULL, 'Voluptate magna culp', 'Et molestiae eos au', 'Hic necessitatibus e', 'Temporibus ut rerum', 'Ea voluptatum aperia', 'Fugiat quis et sunt', 2, NULL, NULL, 7, NULL, 'Soluta cupidatat nih', '290', 1, 1, NULL, 'In veniam ut reicie', 'Zeph Coleman', NULL, '1314338', '2024-03-14 07:56:24', '2024-03-14 07:56:24', NULL),
(2, 1, NULL, 2, '000111', NULL, NULL, 1, 31, 43, '38', 'Reprehenderit repre', 14, '44', 'Adipisicing ex quas', NULL, NULL, '143', 'Days', 'Est dolores sit vo', 'Quia qui eaque qui p', 'Inventore nesciunt', NULL, 'Voluptate magna culp', 'Et molestiae eos au', 'Hic necessitatibus e', 'Temporibus ut rerum', 'Ea voluptatum aperia', 'Fugiat quis et sunt', 2, NULL, NULL, 7, NULL, 'Soluta cupidatat nih', '290', 1, 1, NULL, 'test In veniam ut reicie', 'test Zeph Coleman', NULL, '1314338', '2024-03-14 07:59:00', '2024-03-14 07:59:00', NULL),
(3, NULL, NULL, 6, '67983439', NULL, NULL, 9, 26, 40, '65', '240', NULL, '6', '', NULL, NULL, '', '', 'Spain', '240', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'BRUT SHOWER GEL ORIGINAL 6X500ML', '', NULL, '9264065', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(4, NULL, NULL, 6, '67985115', NULL, NULL, 9, 26, 40, '66', '240', NULL, '6', '', NULL, NULL, '', '', 'Spain', '240', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'BRUT SHOWER GEL ATTRCTN TOTAL 6X500ML', '', NULL, '9264066', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(5, NULL, NULL, 6, '68879322', NULL, NULL, 9, 36, 54, '67', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS OCEANS BELM SAR 24X200ML', '', NULL, '9365467', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(6, NULL, NULL, 6, '68879321', NULL, NULL, 9, 36, 54, '68', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS ATTR TOT BEL DVR 24X200ML', '', NULL, '9365468', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(7, NULL, NULL, 6, '68879197', NULL, NULL, 9, 36, 54, '69', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS MUSK BELM DVR 24X200ML', '', NULL, '9365469', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(8, NULL, NULL, 6, '68879196', NULL, NULL, 9, 36, 54, '70', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS ORIGINAL BELMONDO EN 24X200ML', '', NULL, '9365470', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(9, NULL, NULL, 6, '68879323', NULL, NULL, 9, 36, 54, '71', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS SPOR STY BELM DVR 24X200ML', '', NULL, '9365471', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(10, NULL, NULL, 6, '68484758', NULL, NULL, 10, 37, 55, '72', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT LEMON UI 16X500ML', '', NULL, '10375572', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(11, NULL, NULL, 6, '68484760', NULL, NULL, 10, 37, 55, '73', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT PINK UI 16X500ML', '', NULL, '10375573', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(12, NULL, NULL, 6, '68484759', NULL, NULL, 10, 37, 55, '65', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT WHITE UI 16X500ML', '', NULL, '10375565', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(13, NULL, NULL, 6, '68800133', NULL, NULL, 10, 37, 55, '74', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF FLR LEMONGRASS PP BTL UI 12X1KG', '', NULL, '10375574', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(14, NULL, NULL, 6, '68773152', NULL, NULL, 10, 37, 55, '75', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF HBL PINK LILY ROSMRY UI 12X1KG', '', NULL, '10375575', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(15, NULL, NULL, 6, '68773150', NULL, NULL, 10, 37, 55, '76', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF HRBL GRN SMR FLOW MINT UI 12X1KG', '', NULL, '10375576', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(16, NULL, NULL, 6, '69991611', NULL, NULL, 10, 37, 55, '77', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF P&S KITCHEN SPRAY UI SLIPKNT 6X700ML', '', NULL, '10375577', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(17, NULL, NULL, 6, '69991612', NULL, NULL, 10, 37, 55, '78', '175', NULL, '6', '', NULL, NULL, '', '', 'Turkey', '175', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF P&S BATHRM SPRAY UI SLIPKNT 6X700ML', '', NULL, '10375578', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(18, NULL, NULL, 6, '68577915', NULL, NULL, 10, 37, 55, '79', '175', NULL, '6', '', NULL, NULL, '', '', 'Turkey', '175', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF P&S OBISPO ANTIBAC SPRAY UI 6X700ML', '', NULL, '10375579', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(19, NULL, NULL, 6, '67636280', NULL, NULL, 10, 37, 55, '80', '150', NULL, '6', '', NULL, NULL, '', '', 'UK', '150', '5', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF SPRAY 435ML ANTI MOULD', '', NULL, '10375580', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(20, NULL, NULL, 6, '68818969', NULL, NULL, 11, 27, 42, '81', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH CSM CB 8X3X310ML', '', NULL, '11274281', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(21, NULL, NULL, 6, '68681927', NULL, NULL, 11, 27, 42, '82', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH DCLN CARAT MF 8X3X320ML', '', NULL, '11274282', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(22, NULL, NULL, 6, '68681903', NULL, NULL, 11, 27, 42, '83', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH HFM CARAT MF 8X3X320ML', '', NULL, '11274283', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(23, NULL, NULL, 6, '68739893', NULL, NULL, 12, 37, 56, '84', '63', NULL, '10', '', NULL, NULL, '', '', 'UEBV', '63', '7', NULL, '10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '899', 1, 0, NULL, 'DOMESTOS RIMBLOCK OCEAN UKI 9X55G', '', NULL, '12375684', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(24, NULL, NULL, 6, '68739892', NULL, NULL, 12, 37, 56, '85', '192', NULL, '9', '', NULL, NULL, '', '', 'UEBV', '192', '8', NULL, '9', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'DOMESTOS RIMBLOCK PINK UKI CY 9X55G', '', NULL, '12375685', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(25, NULL, NULL, 6, '68745590', NULL, NULL, 5, 31, 57, '86', '192', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '192', '8', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '799', 1, 0, NULL, 'Dove BP Colloidal Oatmeal & Calendula Oil 6X10.5OZ 298 gms', '', NULL, '5315786', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(26, NULL, NULL, 6, '68869415', NULL, NULL, 5, 31, 57, '87', '260', NULL, '12', '', NULL, NULL, '', '', 'US', '260', '13', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '799', 1, 0, NULL, 'Dove BP Crushed Almond & Mango Butter 6X10.5OZ 298 gms', '', NULL, '5315787', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(27, NULL, NULL, 6, '68360332', NULL, NULL, 5, 31, 48, '88', '440', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '440', '11', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '199', 1, 0, NULL, 'DOVE LIP CARE ESSENTIAL 24X4.8G', '', NULL, '5314888', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(28, NULL, NULL, 6, '68360333', NULL, NULL, 5, 31, 48, '62', '440', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '440', '11', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '199', 1, 0, NULL, 'DOVE LIP CARE HYDRO 24X4.8G', '', NULL, '5314862', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(29, NULL, NULL, 6, '68603201', NULL, NULL, 13, 36, 54, '89', '448', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '448', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'DOVE AP CLEAN COMF DED CODE NL 6X150ML', '', NULL, '13365489', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(30, NULL, NULL, 6, '68603202', NULL, NULL, 13, 36, 54, '90', '448', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '448', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'DOVE AP INVSBL DRY DED CODE NL 6X150ML', '', NULL, '13365490', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(31, NULL, NULL, 6, '68603206', NULL, NULL, 13, 36, 54, '91', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML INVSBL DRY UI DED CODE UI NL', '', NULL, '13365491', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(32, NULL, NULL, 6, '68603204', NULL, NULL, 13, 36, 54, '92', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML CLEAN COMF UI DED CODE UI NL', '', NULL, '13365492', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(33, NULL, NULL, 6, '68603207', NULL, NULL, 13, 36, 54, '93', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML COOL FRESH UI DED CODE UI NL', '', NULL, '13365493', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(34, NULL, NULL, 6, '68603205', NULL, NULL, 13, 36, 54, '94', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML EXTR FRESH UI DED CODE UI NL', '', NULL, '13365494', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(35, NULL, NULL, 6, '68600491', NULL, NULL, 13, 36, 54, '95', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML SPO ACT+FRE UI DED COD UI NL', '', NULL, '13365495', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(36, NULL, NULL, 6, '67614733', NULL, NULL, 14, 26, 40, '96', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ BRIGHT SKIN SUNFLOWER & ALOE VERA 8X450ML', '', NULL, '14264096', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(37, NULL, NULL, 6, '67614735', NULL, NULL, 14, 26, 40, '97', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ GLOWING SKIN GARDENIA & HONEY BW 8X450ML', '', NULL, '14264097', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(38, NULL, NULL, 6, '67614731', NULL, NULL, 14, 26, 40, '98', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ SKIN DETOX FREESIA & TEA TREE OIL 8X450ML', '', NULL, '14264098', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(39, NULL, NULL, 6, '67614737', NULL, NULL, 14, 26, 40, '99', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ SKIN RENEWAL FIG & GERANIUM 8X450ML', '', NULL, '14264099', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(40, NULL, NULL, 6, '68831462', NULL, NULL, 15, 26, 40, '72', '170', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '170', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '425', 1, 0, NULL, 'PEARS BW PUR&GNTL+LEM FLW EXT UK 6X500ML', '', NULL, '15264072', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(41, NULL, NULL, 6, '68831463', NULL, NULL, 15, 26, 40, '100', '170', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '170', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '425', 1, 0, NULL, 'PEARS BW PURE&GNTL+NTRL OILS UK 6X500ML', '', NULL, '152640100', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(42, NULL, NULL, 6, '68831461', NULL, NULL, 15, 26, 40, '101', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PUR&GNTL+LEM FLW EXT UK 6X750ML', '', NULL, '152640101', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(43, NULL, NULL, 6, '68831455', NULL, NULL, 15, 26, 40, '102', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PURE&GNTL+MINT EXT UK 6X750ML', '', NULL, '152640102', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(44, NULL, NULL, 6, '68831468', NULL, NULL, 15, 26, 40, '103', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PURE&GNTL+NTRL OILS UK 6X750ML', '', NULL, '152640103', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(45, NULL, NULL, 6, '67764771', NULL, NULL, 3, 33, 51, '104', '48', NULL, '120', '', NULL, NULL, '', '', 'Vietnam', '48', '6', NULL, '120', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '79', 1, 0, NULL, 'Pepsodent TP Kids Orange 12X10X45G', '', NULL, '33351104', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(46, NULL, NULL, 6, '67764769', NULL, NULL, 3, 33, 51, '105', '48', NULL, '120', '', NULL, NULL, '', '', 'Vietnam', '48', '6', NULL, '120', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '79', 1, 0, NULL, 'Pepsodent TP Kids Strawberry 12X10X45G', '', NULL, '33351105', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(47, NULL, NULL, 6, '69559273', NULL, NULL, 1, NULL, NULL, NULL, '#N/A', NULL, '#N/A', '', NULL, NULL, '', '', '#N/A', '#N/A', '#N/A', NULL, '#N/A', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '#N/A', 1, 0, NULL, 'ST IVES BW ROSE + ALOE VERA 4X22OZ', '', NULL, '1', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(48, NULL, NULL, 6, '69559275', NULL, NULL, 1, NULL, NULL, NULL, '#N/A', NULL, '#N/A', '', NULL, NULL, '', '', '#N/A', '#N/A', '#N/A', NULL, '#N/A', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '#N/A', NULL, 0, NULL, 'STIVES BW OATMEAL & SHEA BUTTER 4X22OZ', '', NULL, '1', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL);

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
  `shelf_life_number` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_item_sku_master`
--

INSERT INTO `product_item_sku_master` (`product_item_id`, `item_name`, `item_type_id`, `item_code`, `item_description`, `consumer_description`, `brand_id`, `category_id`, `sub_category_id`, `variant`, `buom_pack_size`, `uom_id`, `unit_case`, `hsncode_id`, `batch`, `expiry_date`, `shelf_life_number`, `shelf_life`, `sourcing`, `case_pallet`, `layer_pallet`, `dimensions`, `dimensions_unit_pack`, `dimensions_length`, `dimensions_width`, `dimensions_height`, `dimensions_net_weight`, `dimensions_gross_weight`, `dimensions_length_uom_id`, `dimensions_width_uom_id`, `dimensions_height_uom_id`, `dimensions_net_uom_id`, `dimensions_gross_weight_uom_id`, `ean_barcode`, `mrp`, `gst_id`, `visibility`, `product_thumb`, `product_desc`, `consumer_desc`, `storage_location_id`, `sku`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 2, '000111', NULL, NULL, 1, 31, 43, '38', 'Reprehenderit repre', 14, '44', 'Adipisicing ex quas', NULL, NULL, '143', 'Days', 'Est dolores sit vo', 'Quia qui eaque qui p', 'Inventore nesciunt', NULL, 'Voluptate magna culp', 'Et molestiae eos au', 'Hic necessitatibus e', 'Temporibus ut rerum', 'Ea voluptatum aperia', 'Fugiat quis et sunt', 2, NULL, NULL, 7, NULL, 'Soluta cupidatat nih', '290', 1, 1, NULL, 'test In veniam ut reicie', 'test Zeph Coleman', NULL, '1314338', '2024-03-14 07:56:24', '2024-03-14 07:59:00', NULL),
(4, NULL, 6, '67983439', NULL, NULL, 9, 26, 40, '65', '240', NULL, '6', '', NULL, NULL, '', '', 'Spain', '240', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'BRUT SHOWER GEL ORIGINAL 6X500ML', '', NULL, '9264065', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(5, NULL, 6, '67985115', NULL, NULL, 9, 26, 40, '66', '240', NULL, '6', '', NULL, NULL, '', '', 'Spain', '240', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'BRUT SHOWER GEL ATTRCTN TOTAL 6X500ML', '', NULL, '9264066', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(6, NULL, 6, '68879322', NULL, NULL, 9, 36, 54, '67', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS OCEANS BELM SAR 24X200ML', '', NULL, '9365467', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(7, NULL, 6, '68879321', NULL, NULL, 9, 36, 54, '68', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS ATTR TOT BEL DVR 24X200ML', '', NULL, '9365468', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(8, NULL, 6, '68879197', NULL, NULL, 9, 36, 54, '69', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS MUSK BELM DVR 24X200ML', '', NULL, '9365469', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(9, NULL, 6, '68879196', NULL, NULL, 9, 36, 54, '70', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS ORIGINAL BELMONDO EN 24X200ML', '', NULL, '9365470', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(10, NULL, 6, '68879323', NULL, NULL, 9, 36, 54, '71', '96', NULL, '24', '', NULL, NULL, '', '', 'Barony', '96', '8', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'BRUT BS SPOR STY BELM DVR 24X200ML', '', NULL, '9365471', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(11, NULL, 6, '68484758', NULL, NULL, 10, 37, 55, '72', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT LEMON UI 16X500ML', '', NULL, '10375572', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(12, NULL, 6, '68484760', NULL, NULL, 10, 37, 55, '73', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT PINK UI 16X500ML', '', NULL, '10375573', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(13, NULL, 6, '68484759', NULL, NULL, 10, 37, 55, '65', '90', NULL, '16', '', NULL, NULL, '', '', 'UEBV', '90', '5', NULL, '16', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'CIF LAC PEARL NOBIT WHITE UI 16X500ML', '', NULL, '10375565', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(14, NULL, 6, '68800133', NULL, NULL, 10, 37, 55, '74', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF FLR LEMONGRASS PP BTL UI 12X1KG', '', NULL, '10375574', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(15, NULL, 6, '68773152', NULL, NULL, 10, 37, 55, '75', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF HBL PINK LILY ROSMRY UI 12X1KG', '', NULL, '10375575', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(16, NULL, 6, '68773150', NULL, NULL, 10, 37, 55, '76', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF HRBL GRN SMR FLOW MINT UI 12X1KG', '', NULL, '10375576', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(17, NULL, 6, '69991611', NULL, NULL, 10, 37, 55, '77', '100', NULL, '12', '', NULL, NULL, '', '', 'Vietnam', '100', '5', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'CIF P&S KITCHEN SPRAY UI SLIPKNT 6X700ML', '', NULL, '10375577', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(18, NULL, 6, '69991612', NULL, NULL, 10, 37, 55, '78', '175', NULL, '6', '', NULL, NULL, '', '', 'Turkey', '175', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF P&S BATHRM SPRAY UI SLIPKNT 6X700ML', '', NULL, '10375578', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(19, NULL, 6, '68577915', NULL, NULL, 10, 37, 55, '79', '175', NULL, '6', '', NULL, NULL, '', '', 'Turkey', '175', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF P&S OBISPO ANTIBAC SPRAY UI 6X700ML', '', NULL, '10375579', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(20, NULL, 6, '67636280', NULL, NULL, 10, 37, 55, '80', '150', NULL, '6', '', NULL, NULL, '', '', 'UK', '150', '5', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CIF SPRAY 435ML ANTI MOULD', '', NULL, '10375580', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(21, NULL, 6, '68818969', NULL, NULL, 11, 27, 42, '81', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH CSM CB 8X3X310ML', '', NULL, '11274281', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(22, NULL, 6, '68681927', NULL, NULL, 11, 27, 42, '82', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH DCLN CARAT MF 8X3X320ML', '', NULL, '11274282', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(23, NULL, 6, '68681903', NULL, NULL, 11, 27, 42, '83', '48', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '48', '4', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '349', 1, 0, NULL, 'CLEAR MEN SH HFM CARAT MF 8X3X320ML', '', NULL, '11274283', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(24, NULL, 6, '68739893', NULL, NULL, 12, 37, 56, '84', '63', NULL, '10', '', NULL, NULL, '', '', 'UEBV', '63', '7', NULL, '10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '899', 1, 0, NULL, 'DOMESTOS RIMBLOCK OCEAN UKI 9X55G', '', NULL, '12375684', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(25, NULL, 6, '68739892', NULL, NULL, 12, 37, 56, '85', '192', NULL, '9', '', NULL, NULL, '', '', 'UEBV', '192', '8', NULL, '9', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '249', 1, 0, NULL, 'DOMESTOS RIMBLOCK PINK UKI CY 9X55G', '', NULL, '12375685', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(26, NULL, 6, '68745590', NULL, NULL, 5, 31, 57, '86', '192', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '192', '8', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '799', 1, 0, NULL, 'Dove BP Colloidal Oatmeal & Calendula Oil 6X10.5OZ 298 gms', '', NULL, '5315786', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(27, NULL, 6, '68869415', NULL, NULL, 5, 31, 57, '87', '260', NULL, '12', '', NULL, NULL, '', '', 'US', '260', '13', NULL, '12', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '799', 1, 0, NULL, 'Dove BP Crushed Almond & Mango Butter 6X10.5OZ 298 gms', '', NULL, '5315787', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(28, NULL, 6, '68360332', NULL, NULL, 5, 31, 48, '88', '440', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '440', '11', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '199', 1, 0, NULL, 'DOVE LIP CARE ESSENTIAL 24X4.8G', '', NULL, '5314888', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(29, NULL, 6, '68360333', NULL, NULL, 5, 31, 48, '62', '440', NULL, '24', '', NULL, NULL, '', '', 'Thailand', '440', '11', NULL, '24', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '199', 1, 0, NULL, 'DOVE LIP CARE HYDRO 24X4.8G', '', NULL, '5314862', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(30, NULL, 6, '68603201', NULL, NULL, 13, 36, 54, '89', '448', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '448', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'DOVE AP CLEAN COMF DED CODE NL 6X150ML', '', NULL, '13365489', '2024-03-15 05:26:16', '2024-03-15 05:26:16', NULL),
(31, NULL, 6, '68603202', NULL, NULL, 13, 36, 54, '90', '448', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '448', '7', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '275', 1, 0, NULL, 'DOVE AP INVSBL DRY DED CODE NL 6X150ML', '', NULL, '13365490', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(32, NULL, 6, '68603206', NULL, NULL, 13, 36, 54, '91', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML INVSBL DRY UI DED CODE UI NL', '', NULL, '13365491', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(33, NULL, 6, '68603204', NULL, NULL, 13, 36, 54, '92', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML CLEAN COMF UI DED CODE UI NL', '', NULL, '13365492', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(34, NULL, 6, '68603207', NULL, NULL, 13, 36, 54, '93', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML COOL FRESH UI DED CODE UI NL', '', NULL, '13365493', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(35, NULL, 6, '68603205', NULL, NULL, 13, 36, 54, '94', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML EXTR FRESH UI DED CODE UI NL', '', NULL, '13365494', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(36, NULL, 6, '68600491', NULL, NULL, 13, 36, 54, '95', '330', NULL, '6', '', NULL, NULL, '', '', 'UEBV', '330', '6', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '399', 1, 0, NULL, 'DFM AP250ML SPO ACT+FRE UI DED COD UI NL', '', NULL, '13365495', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(37, NULL, 6, '67614733', NULL, NULL, 14, 26, 40, '96', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ BRIGHT SKIN SUNFLOWER & ALOE VERA 8X450ML', '', NULL, '14264096', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(38, NULL, 6, '67614735', NULL, NULL, 14, 26, 40, '97', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ GLOWING SKIN GARDENIA & HONEY BW 8X450ML', '', NULL, '14264097', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(39, NULL, 6, '67614731', NULL, NULL, 14, 26, 40, '98', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ SKIN DETOX FREESIA & TEA TREE OIL 8X450ML', '', NULL, '14264098', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(40, NULL, 6, '67614737', NULL, NULL, 14, 26, 40, '99', '60', NULL, '8', '', NULL, NULL, '', '', 'Thailand', '60', '3', NULL, '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '449', 1, 0, NULL, 'LUX BOTANICAL LQ SKIN RENEWAL FIG & GERANIUM 8X450ML', '', NULL, '14264099', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(41, NULL, 6, '68831462', NULL, NULL, 15, 26, 40, '72', '170', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '170', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '425', 1, 0, NULL, 'PEARS BW PUR&GNTL+LEM FLW EXT UK 6X500ML', '', NULL, '15264072', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(42, NULL, 6, '68831463', NULL, NULL, 15, 26, 40, '100', '170', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '170', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '425', 1, 0, NULL, 'PEARS BW PURE&GNTL+NTRL OILS UK 6X500ML', '', NULL, '152640100', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(43, NULL, 6, '68831461', NULL, NULL, 15, 26, 40, '101', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PUR&GNTL+LEM FLW EXT UK 6X750ML', '', NULL, '152640101', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(44, NULL, 6, '68831455', NULL, NULL, 15, 26, 40, '102', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PURE&GNTL+MINT EXT UK 6X750ML', '', NULL, '152640102', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(45, NULL, 6, '68831468', NULL, NULL, 15, 26, 40, '103', '150', NULL, '6', '', NULL, NULL, '', '', 'SAUDI ARABIA', '150', '10', NULL, '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '625', 1, 0, NULL, 'PEARS BW PURE&GNTL+NTRL OILS UK 6X750ML', '', NULL, '152640103', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(46, NULL, 6, '67764771', NULL, NULL, 3, 33, 51, '104', '48', NULL, '120', '', NULL, NULL, '', '', 'Vietnam', '48', '6', NULL, '120', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '79', 1, 0, NULL, 'Pepsodent TP Kids Orange 12X10X45G', '', NULL, '33351104', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(47, NULL, 6, '67764769', NULL, NULL, 3, 33, 51, '105', '48', NULL, '120', '', NULL, NULL, '', '', 'Vietnam', '48', '6', NULL, '120', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '79', 1, 0, NULL, 'Pepsodent TP Kids Strawberry 12X10X45G', '', NULL, '33351105', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(48, NULL, 6, '69559273', NULL, NULL, 1, NULL, NULL, NULL, '#N/A', NULL, '#N/A', '', NULL, NULL, '', '', '#N/A', '#N/A', '#N/A', NULL, '#N/A', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '#N/A', 1, 0, NULL, 'ST IVES BW ROSE + ALOE VERA 4X22OZ', '', NULL, '1', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL),
(49, NULL, 6, '69559275', NULL, NULL, 1, NULL, NULL, NULL, '#N/A', NULL, '#N/A', '', NULL, NULL, '', '', '#N/A', '#N/A', '#N/A', NULL, '#N/A', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '#N/A', NULL, 0, NULL, 'STIVES BW OATMEAL & SHEA BUTTER 4X22OZ', '', NULL, '1', '2024-03-15 05:26:17', '2024-03-15 05:26:17', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`purchase_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `purchase_order_counter`, `series_no`, `fy_year`, `company_id`, `receipt_type`, `vendor_ref_no`, `bill_no`, `bill_date`, `party_id`, `party_name`, `party_details`, `financial_year`, `company_gstin`, `ship_from`, `status`, `posting_date`, `delivery_date`, `document_date`, `contact_person`, `discount`, `bill_to_gst_no`, `gst_rate`, `amount_in_words`, `tax_in_words`, `sub_total`, `cgst_total`, `sgst_utgst_total`, `igst_total`, `gst_grand_total`, `rounded_off`, `grand_total`, `remarks`, `split_invoice`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15, NULL, '2023-24', 18, NULL, '535', 'PO-2023-24-15', '2024-03-15', 2, NULL, NULL, '2023-24', NULL, '4', 'open', '2024-03-15', '2024-03-30', '2024-03-15', 67, 0, '32535STREW', '18', 'Sixty-Three Thousand Six Hundred and Two Only', 'Nine Thousand Seven Hundred and Two Only', '53900', '0', '0', '9702', '9702', NULL, '63602', NULL, NULL, 75, '2024-03-15 09:53:34', '2024-03-15 09:53:51', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_items`
--

INSERT INTO `purchase_order_items` (`purchase_order_item_id`, `purchase_order_id`, `item_code`, `sku`, `item_name`, `hsn_sac`, `qty`, `discount_item`, `price_af_discount`, `gross_total`, `storage_location_id`, `taxable_amount`, `cgst_rate`, `cgst_amount`, `sgst_utgst_rate`, `sgst_utgst_amount`, `igst_rate`, `igst_amount`, `total`, `gst_rate`, `gst_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '000111', '1314338', 'test Zeph Coleman', 'Adipisicing ex quas', '100', NULL, '290.00', '34220.00', 8, '290', '0', '0', '0', '0', '18', '5220', '29000.00', 1, '5220.00', '2024-03-15 09:53:34', '2024-03-15 09:53:34', NULL),
(2, 1, '69991611', '10375577', NULL, NULL, '100', NULL, '249.00', '29382.00', 8, '249', '0', '0', '0', '0', '18', '4482', '24900.00', 1, '4482.00', '2024-03-15 09:53:34', '2024-03-15 09:53:34', NULL);

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
-- Table structure for table `residential_status`
--

DROP TABLE IF EXISTS `residential_status`;
CREATE TABLE IF NOT EXISTS `residential_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `residential_status`
--

INSERT INTO `residential_status` (`id`, `name`, `created_at`) VALUES
(1, 'Resident', NULL),
(2, 'Non Resident', NULL);

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
-- Table structure for table `return_invoice`
--

DROP TABLE IF EXISTS `return_invoice`;
CREATE TABLE IF NOT EXISTS `return_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_no` varchar(110) DEFAULT NULL,
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
  `bp_id` int(11) DEFAULT NULL,
  `return_no` varchar(110) DEFAULT NULL,
  `doc_date` date DEFAULT NULL,
  `t_type` varchar(50) DEFAULT NULL,
  `doc_no` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `department_id`, `parent_roles`, `guard_name`, `menu_ids`, `submenu_ids`, `is_sub`, `readonly`, `readwrite`, `created_at`, `updated_at`) VALUES
(17, 'Super Admin', 1, NULL, 'admin', '43,44,47,50,51,52,54,11,22', '48,67,68,69,70,71,98,121,56,57,73,74,89,55,58,105,108,109,110,111,102,103,104,112,113,115,114,120,122,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,119,24,54', 1, NULL, 'on', '2023-12-27 09:20:02', '2024-03-15 07:33:34'),
(33, 'Admin', 2, NULL, 'admin', '43,44,47,50,51,11,22', '48,67,68,69,70,71,98,121,56,57,73,74,89,55,58,105,108,109,110,111,102,103,104,112,113,115,38,42,43,44,45,46,47,53,64,76,77,78,79,95,99,100,101,106,107,117,118,24', 1, NULL, 'on', '2024-01-02 12:17:48', '2024-03-13 11:56:41'),
(34, 'ASM', 5, NULL, 'admin', '51', '112,113,115', 1, NULL, NULL, '2024-01-02 12:30:50', '2024-02-28 07:57:42'),
(35, 'ASE', 4, '34', 'admin', NULL, NULL, 0, NULL, NULL, '2024-01-02 12:32:10', '2024-01-02 12:33:00'),
(37, 'Salesman', 8, '40', 'admin', '43,53', '67,68,116', 1, NULL, NULL, '2024-01-02 12:34:40', '2024-01-22 09:57:50'),
(40, 'Sales Officer', 6, '35', 'admin', NULL, NULL, 0, NULL, NULL, '2024-01-15 05:40:57', '2024-02-03 05:47:43'),
(41, 'Distributor', 10, '35', 'admin', '43,44,47,50,51,11', '67,68,69,98,121,56,57,73,55,58,105,108,109,110,102,112,113,115,38,53,118', 1, NULL, NULL, '2024-02-27 06:48:31', '2024-03-14 04:24:21');

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
(12, 17, NULL, NULL, NULL),
(12, 33, NULL, NULL, NULL),
(13, 17, NULL, NULL, NULL),
(13, 33, NULL, NULL, NULL),
(16, 17, NULL, NULL, NULL),
(16, 33, NULL, NULL, NULL),
(17, 17, NULL, NULL, NULL),
(17, 33, NULL, NULL, NULL),
(49, 17, NULL, NULL, NULL),
(49, 33, NULL, NULL, NULL),
(50, 17, NULL, NULL, NULL),
(50, 33, NULL, NULL, NULL),
(53, 17, NULL, NULL, NULL),
(53, 33, NULL, NULL, NULL),
(54, 17, NULL, NULL, NULL),
(54, 33, NULL, NULL, NULL),
(172, 17, NULL, NULL, NULL),
(172, 33, NULL, NULL, NULL),
(173, 17, NULL, NULL, NULL),
(173, 33, NULL, NULL, NULL),
(174, 17, NULL, NULL, NULL),
(174, 33, NULL, NULL, NULL),
(175, 17, NULL, NULL, NULL),
(175, 33, NULL, NULL, NULL),
(192, 17, NULL, NULL, NULL),
(192, 33, NULL, NULL, NULL),
(193, 17, NULL, NULL, NULL),
(193, 33, NULL, NULL, NULL),
(194, 17, NULL, NULL, NULL),
(194, 33, NULL, NULL, NULL),
(195, 17, NULL, NULL, NULL),
(195, 33, NULL, NULL, NULL),
(266, 17, NULL, NULL, NULL),
(266, 33, NULL, NULL, NULL),
(267, 17, NULL, NULL, NULL),
(267, 33, NULL, NULL, NULL),
(268, 17, NULL, NULL, NULL),
(268, 33, NULL, NULL, NULL),
(269, 17, NULL, NULL, NULL),
(269, 33, NULL, NULL, NULL),
(270, 17, NULL, NULL, NULL),
(270, 33, NULL, NULL, NULL),
(271, 17, NULL, NULL, NULL),
(271, 33, NULL, NULL, NULL),
(272, 17, NULL, NULL, NULL),
(272, 33, NULL, NULL, NULL),
(273, 17, NULL, NULL, NULL),
(273, 33, NULL, NULL, NULL),
(274, 17, NULL, NULL, NULL),
(274, 33, NULL, NULL, NULL),
(275, 17, NULL, NULL, NULL),
(275, 33, NULL, NULL, NULL),
(276, 17, NULL, NULL, NULL),
(276, 33, NULL, NULL, NULL),
(277, 17, NULL, NULL, NULL),
(277, 33, NULL, NULL, NULL),
(282, 17, NULL, NULL, NULL),
(282, 33, NULL, NULL, NULL),
(282, 41, NULL, NULL, NULL),
(283, 17, NULL, NULL, NULL),
(283, 33, NULL, NULL, NULL),
(283, 41, NULL, NULL, NULL),
(284, 17, NULL, NULL, NULL),
(284, 33, NULL, NULL, NULL),
(284, 41, NULL, NULL, NULL),
(285, 17, NULL, NULL, NULL),
(285, 33, NULL, NULL, NULL),
(285, 41, NULL, NULL, NULL),
(287, 17, NULL, NULL, NULL),
(287, 33, NULL, NULL, NULL),
(287, 41, NULL, NULL, NULL),
(288, 17, NULL, NULL, NULL),
(288, 33, NULL, NULL, NULL),
(288, 41, NULL, NULL, NULL),
(289, 17, NULL, NULL, NULL),
(289, 33, NULL, NULL, NULL),
(289, 41, NULL, NULL, NULL),
(290, 17, NULL, NULL, NULL),
(290, 33, NULL, NULL, NULL),
(291, 17, NULL, NULL, NULL),
(291, 33, NULL, NULL, NULL),
(293, 17, NULL, NULL, NULL),
(293, 33, NULL, NULL, NULL),
(294, 17, NULL, NULL, NULL),
(294, 33, NULL, NULL, NULL),
(295, 17, NULL, NULL, NULL),
(295, 33, NULL, NULL, NULL),
(296, 17, NULL, NULL, NULL),
(296, 33, NULL, NULL, NULL),
(297, 17, NULL, NULL, NULL),
(297, 33, NULL, NULL, NULL),
(298, 17, NULL, NULL, NULL),
(298, 33, NULL, NULL, NULL),
(299, 17, NULL, NULL, NULL),
(299, 33, NULL, NULL, NULL),
(300, 17, NULL, NULL, NULL),
(300, 33, NULL, NULL, NULL),
(301, 17, NULL, NULL, NULL),
(301, 33, NULL, NULL, NULL),
(326, 17, NULL, NULL, NULL),
(326, 33, NULL, NULL, NULL),
(327, 17, NULL, NULL, NULL),
(327, 33, NULL, NULL, NULL),
(328, 17, NULL, NULL, NULL),
(328, 33, NULL, NULL, NULL),
(329, 17, NULL, NULL, NULL),
(329, 33, NULL, NULL, NULL),
(354, 17, NULL, NULL, NULL),
(354, 33, NULL, NULL, NULL),
(355, 17, NULL, NULL, NULL),
(355, 33, NULL, NULL, NULL),
(356, 17, NULL, NULL, NULL),
(356, 33, NULL, NULL, NULL),
(357, 17, NULL, NULL, NULL),
(357, 33, NULL, NULL, NULL),
(370, 17, NULL, NULL, NULL),
(370, 33, NULL, NULL, NULL),
(370, 41, NULL, NULL, NULL),
(371, 17, NULL, NULL, NULL),
(371, 33, NULL, NULL, NULL),
(371, 41, NULL, NULL, NULL),
(372, 17, NULL, NULL, NULL),
(372, 33, NULL, NULL, NULL),
(372, 41, NULL, NULL, NULL),
(373, 17, NULL, NULL, NULL),
(373, 33, NULL, NULL, NULL),
(373, 41, NULL, NULL, NULL),
(374, 17, NULL, NULL, NULL),
(374, 33, NULL, NULL, NULL),
(375, 17, NULL, NULL, NULL),
(375, 33, NULL, NULL, NULL),
(376, 17, NULL, NULL, NULL),
(376, 33, NULL, NULL, NULL),
(377, 17, NULL, NULL, NULL),
(377, 33, NULL, NULL, NULL),
(378, 17, NULL, NULL, NULL),
(378, 33, NULL, NULL, NULL),
(378, 41, NULL, NULL, NULL),
(379, 17, NULL, NULL, NULL),
(379, 33, NULL, NULL, NULL),
(379, 41, NULL, NULL, NULL),
(380, 17, NULL, NULL, NULL),
(380, 33, NULL, NULL, NULL),
(380, 41, NULL, NULL, NULL),
(381, 17, NULL, NULL, NULL),
(381, 33, NULL, NULL, NULL),
(381, 41, NULL, NULL, NULL),
(382, 17, NULL, NULL, NULL),
(382, 33, NULL, NULL, NULL),
(383, 17, NULL, NULL, NULL),
(383, 33, NULL, NULL, NULL),
(384, 17, NULL, NULL, NULL),
(384, 33, NULL, NULL, NULL),
(385, 17, NULL, NULL, NULL),
(385, 33, NULL, NULL, NULL),
(390, 17, NULL, NULL, NULL),
(390, 33, NULL, NULL, NULL),
(390, 37, NULL, NULL, NULL),
(390, 41, NULL, NULL, NULL),
(391, 17, NULL, NULL, NULL),
(391, 33, NULL, NULL, NULL),
(391, 37, NULL, NULL, NULL),
(391, 41, NULL, NULL, NULL),
(392, 17, NULL, NULL, NULL),
(392, 33, NULL, NULL, NULL),
(392, 37, NULL, NULL, NULL),
(392, 41, NULL, NULL, NULL),
(393, 17, NULL, NULL, NULL),
(393, 33, NULL, NULL, NULL),
(393, 37, NULL, NULL, NULL),
(393, 41, NULL, NULL, NULL),
(396, 17, NULL, NULL, NULL),
(396, 33, NULL, NULL, NULL),
(397, 17, NULL, NULL, NULL),
(397, 33, NULL, NULL, NULL),
(398, 17, NULL, NULL, NULL),
(398, 33, NULL, NULL, NULL),
(399, 17, NULL, NULL, NULL),
(399, 33, NULL, NULL, NULL),
(400, 17, NULL, NULL, NULL),
(400, 33, NULL, NULL, NULL),
(400, 41, NULL, NULL, NULL),
(401, 17, NULL, NULL, NULL),
(401, 33, NULL, NULL, NULL),
(401, 41, NULL, NULL, NULL),
(402, 17, NULL, NULL, NULL),
(402, 33, NULL, NULL, NULL),
(402, 41, NULL, NULL, NULL),
(403, 17, NULL, NULL, NULL),
(403, 33, NULL, NULL, NULL),
(403, 41, NULL, NULL, NULL),
(404, 17, NULL, NULL, NULL),
(404, 33, NULL, NULL, NULL),
(405, 17, NULL, NULL, NULL),
(405, 33, NULL, NULL, NULL),
(406, 17, NULL, NULL, NULL),
(406, 33, NULL, NULL, NULL),
(407, 17, NULL, NULL, NULL),
(407, 33, NULL, NULL, NULL),
(408, 17, NULL, NULL, NULL),
(408, 33, NULL, NULL, NULL),
(409, 17, NULL, NULL, NULL),
(409, 33, NULL, NULL, NULL),
(409, 41, NULL, NULL, NULL),
(410, 17, NULL, NULL, NULL),
(410, 33, NULL, NULL, NULL),
(410, 41, NULL, NULL, NULL),
(416, 17, NULL, NULL, NULL),
(416, 33, NULL, NULL, NULL),
(416, 41, NULL, NULL, NULL),
(417, 17, NULL, NULL, NULL),
(417, 33, NULL, NULL, NULL),
(417, 41, NULL, NULL, NULL),
(418, 17, NULL, NULL, NULL),
(418, 33, NULL, NULL, NULL),
(418, 41, NULL, NULL, NULL),
(419, 17, NULL, NULL, NULL),
(419, 33, NULL, NULL, NULL),
(419, 41, NULL, NULL, NULL),
(425, 17, NULL, NULL, NULL),
(425, 33, NULL, NULL, NULL),
(426, 17, NULL, NULL, NULL),
(426, 33, NULL, NULL, NULL),
(427, 17, NULL, NULL, NULL),
(427, 33, NULL, NULL, NULL),
(428, 17, NULL, NULL, NULL),
(428, 33, NULL, NULL, NULL),
(429, 17, NULL, NULL, NULL),
(429, 33, NULL, NULL, NULL),
(429, 41, NULL, NULL, NULL),
(430, 17, NULL, NULL, NULL),
(430, 33, NULL, NULL, NULL),
(430, 41, NULL, NULL, NULL),
(431, 17, NULL, NULL, NULL),
(431, 33, NULL, NULL, NULL),
(431, 41, NULL, NULL, NULL),
(432, 17, NULL, NULL, NULL),
(432, 33, NULL, NULL, NULL),
(432, 41, NULL, NULL, NULL),
(437, 17, NULL, NULL, NULL),
(437, 33, NULL, NULL, NULL),
(437, 41, NULL, NULL, NULL),
(438, 17, NULL, NULL, NULL),
(438, 33, NULL, NULL, NULL),
(438, 41, NULL, NULL, NULL),
(439, 17, NULL, NULL, NULL),
(439, 33, NULL, NULL, NULL),
(439, 41, NULL, NULL, NULL),
(440, 17, NULL, NULL, NULL),
(440, 33, NULL, NULL, NULL),
(440, 41, NULL, NULL, NULL),
(441, 17, NULL, NULL, NULL),
(441, 33, NULL, NULL, NULL),
(442, 17, NULL, NULL, NULL),
(442, 33, NULL, NULL, NULL),
(443, 17, NULL, NULL, NULL),
(443, 33, NULL, NULL, NULL),
(444, 17, NULL, NULL, NULL),
(444, 33, NULL, NULL, NULL),
(445, 17, NULL, NULL, NULL),
(445, 33, NULL, NULL, NULL),
(445, 41, NULL, NULL, NULL),
(446, 17, NULL, NULL, NULL),
(446, 33, NULL, NULL, NULL),
(446, 41, NULL, NULL, NULL),
(447, 17, NULL, NULL, NULL),
(447, 33, NULL, NULL, NULL),
(447, 41, NULL, NULL, NULL),
(448, 17, NULL, NULL, NULL),
(448, 33, NULL, NULL, NULL),
(448, 41, NULL, NULL, NULL),
(449, 17, NULL, NULL, NULL),
(449, 33, NULL, NULL, NULL),
(450, 17, NULL, NULL, NULL),
(450, 33, NULL, NULL, NULL),
(451, 17, NULL, NULL, NULL),
(451, 33, NULL, NULL, NULL),
(452, 17, NULL, NULL, NULL),
(452, 33, NULL, NULL, NULL),
(453, 17, NULL, NULL, NULL),
(453, 33, NULL, NULL, NULL),
(453, 41, NULL, NULL, NULL),
(454, 17, NULL, NULL, NULL),
(454, 33, NULL, NULL, NULL),
(454, 41, NULL, NULL, NULL),
(455, 17, NULL, NULL, NULL),
(455, 33, NULL, NULL, NULL),
(455, 41, NULL, NULL, NULL),
(456, 17, NULL, NULL, NULL),
(456, 33, NULL, NULL, NULL),
(456, 41, NULL, NULL, NULL),
(457, 17, NULL, NULL, NULL),
(457, 33, NULL, NULL, NULL),
(457, 41, NULL, NULL, NULL),
(458, 17, NULL, NULL, NULL),
(458, 33, NULL, NULL, NULL),
(458, 41, NULL, NULL, NULL),
(459, 17, NULL, NULL, NULL),
(459, 33, NULL, NULL, NULL),
(459, 41, NULL, NULL, NULL),
(460, 17, NULL, NULL, NULL),
(460, 33, NULL, NULL, NULL),
(460, 41, NULL, NULL, NULL),
(473, 17, NULL, NULL, NULL),
(473, 33, NULL, NULL, NULL),
(473, 41, NULL, NULL, NULL),
(474, 17, NULL, NULL, NULL),
(474, 33, NULL, NULL, NULL),
(474, 41, NULL, NULL, NULL),
(475, 17, NULL, NULL, NULL),
(475, 33, NULL, NULL, NULL),
(475, 41, NULL, NULL, NULL),
(476, 17, NULL, NULL, NULL),
(476, 33, NULL, NULL, NULL),
(476, 41, NULL, NULL, NULL),
(477, 37, NULL, NULL, NULL),
(478, 37, NULL, NULL, NULL),
(479, 37, NULL, NULL, NULL),
(480, 37, NULL, NULL, NULL),
(481, 17, NULL, NULL, NULL),
(481, 33, NULL, NULL, NULL),
(481, 41, NULL, NULL, NULL),
(482, 17, NULL, NULL, NULL),
(482, 33, NULL, NULL, NULL),
(482, 41, NULL, NULL, NULL),
(483, 17, NULL, NULL, NULL),
(483, 33, NULL, NULL, NULL),
(483, 41, NULL, NULL, NULL),
(484, 17, NULL, NULL, NULL),
(484, 33, NULL, NULL, NULL),
(484, 41, NULL, NULL, NULL),
(485, 17, NULL, NULL, NULL),
(485, 33, NULL, NULL, NULL),
(485, 41, NULL, NULL, NULL),
(486, 17, NULL, NULL, NULL),
(486, 33, NULL, NULL, NULL),
(486, 41, NULL, NULL, NULL),
(487, 17, NULL, NULL, NULL),
(487, 33, NULL, NULL, NULL),
(487, 41, NULL, NULL, NULL),
(488, 17, NULL, NULL, NULL),
(488, 33, NULL, NULL, NULL),
(488, 41, NULL, NULL, NULL),
(490, 17, NULL, NULL, NULL),
(490, 33, NULL, NULL, NULL),
(490, 37, NULL, NULL, NULL),
(490, 41, NULL, NULL, NULL),
(491, 17, NULL, NULL, NULL),
(491, 33, NULL, NULL, NULL),
(491, 37, NULL, NULL, NULL),
(491, 41, NULL, NULL, NULL),
(492, 17, NULL, NULL, NULL),
(492, 33, NULL, NULL, NULL),
(492, 37, NULL, NULL, NULL),
(492, 41, NULL, NULL, NULL),
(493, 17, NULL, NULL, NULL),
(493, 33, NULL, NULL, NULL),
(493, 41, NULL, NULL, NULL),
(494, 17, NULL, NULL, NULL),
(494, 33, NULL, NULL, NULL),
(494, 37, NULL, NULL, NULL),
(494, 41, NULL, NULL, NULL),
(495, 17, NULL, NULL, NULL),
(495, 33, NULL, NULL, NULL),
(495, 37, NULL, NULL, NULL),
(495, 41, NULL, NULL, NULL),
(500, 17, NULL, NULL, NULL),
(500, 33, NULL, NULL, NULL),
(500, 41, NULL, NULL, NULL),
(501, 17, NULL, NULL, NULL),
(501, 33, NULL, NULL, NULL),
(501, 41, NULL, NULL, NULL),
(502, 17, NULL, NULL, NULL),
(502, 33, NULL, NULL, NULL),
(502, 41, NULL, NULL, NULL),
(503, 17, NULL, NULL, NULL),
(503, 33, NULL, NULL, NULL),
(503, 41, NULL, NULL, NULL),
(504, 17, NULL, NULL, NULL),
(505, 17, NULL, NULL, NULL),
(506, 17, NULL, NULL, NULL),
(507, 17, NULL, NULL, NULL),
(516, 17, NULL, NULL, NULL),
(517, 17, NULL, NULL, NULL),
(518, 17, NULL, NULL, NULL),
(519, 17, NULL, NULL, NULL),
(520, 17, NULL, NULL, NULL),
(521, 17, NULL, NULL, NULL),
(522, 17, NULL, NULL, NULL),
(523, 17, NULL, NULL, NULL),
(524, 17, NULL, NULL, NULL),
(524, 33, NULL, NULL, NULL),
(524, 41, NULL, NULL, NULL),
(525, 17, NULL, NULL, NULL),
(525, 33, NULL, NULL, NULL),
(525, 41, NULL, NULL, NULL),
(526, 17, NULL, NULL, NULL),
(526, 33, NULL, NULL, NULL),
(526, 41, NULL, NULL, NULL),
(527, 17, NULL, NULL, NULL),
(527, 33, NULL, NULL, NULL),
(527, 41, NULL, NULL, NULL),
(532, 17, NULL, NULL, NULL),
(533, 17, NULL, NULL, NULL),
(534, 17, NULL, NULL, NULL),
(535, 17, NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `area_id`, `route_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Test Route', '2024-03-14 13:12:44', '2024-03-14 13:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

DROP TABLE IF EXISTS `schemes`;
CREATE TABLE IF NOT EXISTS `schemes` (
  `schemes_id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme_title` varchar(100) DEFAULT NULL,
  `min_product_qty` int(11) DEFAULT NULL,
  `free_product_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(20) DEFAULT NULL,
  `deleted_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`schemes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`schemes_id`, `scheme_title`, `min_product_qty`, `free_product_qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BUY 2 GET 1 FREE', 2, 1, '2024-03-14 11:00:27', '2024-03-14 16:32:31', '2024-03-14 16:32:31'),
(2, 'BUY 3 GET 1 FREE', 3, 1, '2024-03-14 11:02:49', '2024-03-14 16:32:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `series_master`
--

DROP TABLE IF EXISTS `series_master`;
CREATE TABLE IF NOT EXISTS `series_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `series_number` varchar(110) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `module` varchar(110) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series_master`
--

INSERT INTO `series_master` (`id`, `company_id`, `series_number`, `transaction_type`, `module`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 18, 'PO', 'PO', '1', '2023-12-06 17:51:08', '2024-03-15 18:01:29', NULL),
(9, NULL, 'GR', NULL, '2', '2023-12-06 17:56:49', '2023-12-06 17:56:49', NULL),
(10, NULL, 'AP', NULL, '3', '2023-12-07 14:47:26', '2023-12-07 14:47:26', NULL),
(11, NULL, 'BB', NULL, '4', '2023-12-07 15:45:34', '2023-12-07 15:45:34', NULL),
(12, NULL, 'BP', NULL, '5', '2023-12-07 17:51:33', '2023-12-07 17:51:33', NULL),
(14, NULL, 'GRR', NULL, '6', '2024-01-02 10:43:04', '2024-01-02 10:43:04', NULL),
(15, NULL, 'GIR', NULL, '7', '2024-01-02 10:43:41', '2024-01-02 10:43:41', NULL),
(16, NULL, 'AR', NULL, '8', '2024-01-02 10:44:20', '2024-01-02 10:44:20', NULL),
(17, NULL, 'SO', NULL, '9', '2024-01-05 12:57:17', '2024-01-08 12:38:32', NULL),
(18, NULL, 'OF', NULL, '10', '2024-01-05 15:42:01', '2024-01-05 15:42:01', NULL),
(19, NULL, 'BR', NULL, '12', '2024-01-22 13:11:15', '2024-01-22 13:11:15', NULL),
(20, NULL, 'IR', NULL, '13', '2024-03-13 18:27:59', '2024-03-13 18:27:59', NULL),
(21, 18, 'Brenda-GR', 'Brenda', '2', '2024-03-15 18:04:13', '2024-03-15 18:04:13', NULL);

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
-- Table structure for table `soh_app`
--

DROP TABLE IF EXISTS `soh_app`;
CREATE TABLE IF NOT EXISTS `soh_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `item_desc` varchar(220) DEFAULT NULL,
  `sku` varchar(110) DEFAULT NULL,
  `date` date NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soh_app`
--

INSERT INTO `soh_app` (`id`, `customer_id`, `quantity`, `item_desc`, `sku`, `date`, `updated_at`) VALUES
(3, 162, '6', 'Kellogs Chocos MG new 12 x 200g', '25-17-30-27', '2024-01-19', '2024-01-19 12:18:23'),
(4, 162, '6', 'Papermaking', '24-16-33-31', '2024-01-19', '2024-01-19 12:25:19'),
(5, 162, '15', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', '26-17-31-27', '2024-01-25', '2024-01-19 12:25:45'),
(6, 164, '6', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', '26-17-31-27', '2024-01-25', '2024-01-19 13:33:45'),
(7, 164, '8', 'Kellogs Chocos MG new 12 x 200g', '25-17-30-27', '2024-01-19', '2024-01-19 13:34:03'),
(8, 164, '15', 'Papermaking', '24-16-33-31', '2024-01-19', '2024-01-19 15:18:36'),
(9, 164, '6', 'Herrod Hahn', '25-17-28-27', '2024-01-19', '2024-01-19 15:19:17'),
(10, 165, '6', 'Kellogs Chocos MG new 12 x 200g', '25-17-30-27', '2024-01-25', '2024-01-25 18:33:33'),
(11, 165, '7', 'Bingo Mad Angles Achr Msti 96 pcs 130 gm', '26-17-31-27', '2024-01-25', '2024-01-25 18:34:04'),
(12, 44, '5', 'DOVE BP BROWN SUGAR&COCOABTR 6X10.5OZ', '1253936', '2024-02-22', '2024-02-22 12:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ANDHRA PRADESH', 1, '2023-09-20 12:27:07', NULL, NULL),
(2, 'ASSAM', 1, '2023-09-20 12:27:07', NULL, NULL),
(3, 'ARUNACHAL PRADESH', 1, '2023-09-20 12:27:07', NULL, NULL),
(4, 'BIHAR', 1, '2023-09-20 12:27:07', NULL, NULL),
(5, 'GUJRAT', 1, '2023-09-20 12:27:07', NULL, NULL),
(6, 'HARYANA', 1, '2023-09-20 12:27:07', NULL, NULL),
(7, 'HIMACHAL PRADESH', 1, '2023-09-20 12:27:07', NULL, NULL),
(8, 'JAMMU & KASHMIR', 1, '2023-09-20 12:27:07', NULL, NULL),
(9, 'KARNATAKA', 1, '2023-09-20 12:27:07', NULL, NULL),
(10, 'KERALA', 1, '2023-09-20 12:27:07', NULL, NULL),
(11, 'MADHYA PRADESH', 1, '2023-09-20 12:27:07', NULL, NULL),
(12, 'MAHARASHTRA', 1, '2023-09-20 12:27:07', NULL, NULL),
(13, 'MANIPUR', 1, '2023-09-20 12:27:07', NULL, NULL),
(14, 'MEGHALAYA', 1, '2023-09-20 12:27:07', NULL, NULL),
(15, 'MIZORAM', 1, '2023-09-20 12:27:07', NULL, NULL),
(16, 'NAGALAND', 1, '2023-09-20 12:27:07', NULL, NULL),
(17, 'ORISSA', 1, '2023-09-20 12:27:07', NULL, NULL),
(18, 'PUNJAB', 1, '2023-09-20 12:27:07', NULL, NULL),
(19, 'RAJASTHAN', 1, '2023-09-20 12:27:07', NULL, NULL),
(20, 'SIKKIM', 1, '2023-09-20 12:27:07', NULL, NULL),
(21, 'TAMIL NADU', 1, '2023-09-20 12:27:07', NULL, NULL),
(22, 'TRIPURA', 1, '2023-09-20 12:27:07', NULL, NULL),
(23, 'UTTAR PRADESH', 1, '2023-09-20 12:27:07', NULL, NULL),
(24, 'WEST BENGAL', 1, '2023-09-20 12:27:07', NULL, NULL),
(25, 'DELHI', 1, '2023-09-20 12:27:07', NULL, NULL),
(26, 'GOA', 1, '2023-09-20 12:27:07', NULL, NULL),
(27, 'PONDICHERY', 1, '2023-09-20 12:27:07', NULL, NULL),
(28, 'LAKSHDWEEP', 1, '2023-09-20 12:27:07', NULL, NULL),
(29, 'DAMAN & DIU', 1, '2023-09-20 12:27:07', NULL, NULL),
(30, 'DADRA & NAGAR', 1, '2023-09-20 12:27:07', NULL, NULL),
(31, 'CHANDIGARH', 1, '2023-09-20 12:27:07', NULL, NULL),
(32, 'ANDAMAN & NICOBAR', 1, '2023-09-20 12:27:07', NULL, NULL),
(33, 'UTTARANCHAL', 1, '2023-09-20 12:27:07', NULL, NULL),
(34, 'JHARKHAND', 1, '2023-09-20 12:27:07', NULL, NULL),
(35, 'CHATTISGARH', 1, '2023-09-20 12:27:07', NULL, NULL),
(36, 'TEST STATE', 1, '2023-09-20 12:27:07', NULL, NULL),
(38, 'Telangna', 1, '2024-02-19 06:27:25', '2024-02-19 06:27:25', NULL),
(40, 'PONDICHERRY', 1, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(41, 'Telangana', 1, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL),
(42, 'Gujarat', 1, '2024-02-21 08:12:41', '2024-02-21 08:12:41', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage_locations`
--

INSERT INTO `storage_locations` (`storage_location_id`, `storage_location_name`, `location`, `address`, `zip_code`, `country`, `state`, `city`, `warehouse_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'WH02', NULL, NULL, NULL, NULL, NULL, NULL, 185, '2023-12-02 06:17:25', '2023-12-02 06:17:25', NULL),
(7, 'WH01', NULL, NULL, NULL, NULL, NULL, NULL, 184, '2023-12-02 06:30:31', '2023-12-02 06:30:31', NULL),
(8, 'WH03', NULL, NULL, NULL, NULL, NULL, NULL, 12, '2024-03-11 13:09:50', '2024-03-11 13:09:50', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

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
(36, NULL, 'Para Sub Category', NULL, 0, 'para-sub-category', 1, '2023-12-22 02:21:12', '2023-12-22 10:21:12', NULL),
(37, NULL, 'Books SubCategory', NULL, 0, 'books-subcategory', 1, '2024-01-09 05:52:22', '2024-01-09 11:22:22', NULL),
(38, NULL, 'snacks', NULL, 0, 'snacks', 1, '2024-01-31 17:03:58', '2024-02-01 01:03:58', NULL),
(39, NULL, 'body lotion', NULL, 0, 'body-lotion', 1, '2024-01-31 17:23:53', '2024-02-01 01:23:53', NULL),
(40, NULL, 'body wash', NULL, 0, 'body-wash', 1, '2024-02-01 00:48:19', '2024-02-01 08:48:19', NULL),
(41, NULL, 'conditioner', NULL, 0, 'conditioner', 1, '2024-02-01 00:56:50', '2024-02-01 08:56:50', NULL),
(42, NULL, 'shampoo', NULL, 0, 'shampoo', 1, '2024-02-01 02:44:25', '2024-02-01 10:44:25', NULL),
(43, NULL, 'kids', NULL, 0, 'kids', 1, '2024-02-01 02:57:03', '2024-02-01 10:57:03', NULL),
(44, NULL, 'deo', NULL, 0, 'deo', 1, '2024-02-01 03:08:19', '2024-02-01 11:08:19', NULL),
(45, NULL, 'soap', NULL, 0, 'soap', 1, '2024-02-01 12:46:41', '2024-02-01 20:46:41', NULL),
(46, NULL, 'skin care', NULL, 0, 'skin-care', 1, '2024-02-01 12:58:09', '2024-02-01 20:58:09', NULL),
(47, NULL, 'lip care', NULL, 0, 'lip-care', 1, '2024-02-01 12:58:48', '2024-02-01 20:58:48', NULL),
(48, NULL, 'lip balm', NULL, 0, 'lip-balm', 1, '2024-02-01 12:59:04', '2024-02-01 20:59:04', NULL),
(49, NULL, 'Terms of Payment', NULL, 0, 'terms-of-payment', NULL, '2024-02-16 05:34:58', '2024-02-16 11:04:58', NULL),
(50, NULL, 'Hair Spray', NULL, 0, 'hair-spray', NULL, '2024-02-16 05:39:16', '2024-02-16 11:09:16', NULL),
(51, NULL, 'Toothpaste', NULL, 0, 'toothpaste', NULL, '2024-02-16 05:39:16', '2024-02-16 11:09:16', NULL),
(52, NULL, 'Soaps', NULL, 0, 'soaps', NULL, '2024-02-16 05:39:17', '2024-02-16 11:09:17', NULL),
(53, NULL, 'test format', NULL, 0, 'test-format', 1, '2024-03-11 12:54:15', '2024-03-11 18:24:15', NULL),
(54, NULL, 'Deos', NULL, 0, 'deos', NULL, '2024-03-15 05:26:16', '2024-03-15 10:56:16', NULL),
(55, NULL, 'Floor Cleaners', NULL, 0, 'floor-cleaners', NULL, '2024-03-15 05:26:16', '2024-03-15 10:56:16', NULL),
(56, NULL, 'Rim Blocks', NULL, 0, 'rim-blocks', NULL, '2024-03-15 05:26:16', '2024-03-15 10:56:16', NULL),
(57, NULL, 'Body Polish', NULL, 0, 'body-polish', NULL, '2024-03-15 05:26:16', '2024-03-15 10:56:16', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traffic source`
--

INSERT INTO `traffic source` (`trafficsource_id`, `traffic_source`, `id`, `email`, `REMOTE_ADDR`, `HTTP_USER_AGENT`, `user_os`, `device`, `browser`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'email', 75, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0', 'Windows 10', 'desktop', 'Microsoft Edge', '2024-03-14 06:12:30', '2024-03-14 06:12:30', NULL),
(2, 'email', 393, 'salesman@gmail.com', '192.168.95.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 OPR/108.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-03-14 07:49:01', '2024-03-14 07:49:01', NULL),
(3, 'email', 393, 'salesman@gmail.com', '192.168.95.224', 'Dart/3.1 (dart:io)', 'Unknown OS Platform', 'desktop', 'Unknow Browser', '2024-03-14 07:50:17', '2024-03-14 07:50:17', NULL),
(4, 'email', 393, 'salesman@gmail.com', '192.168.95.224', 'Dart/3.1 (dart:io)', 'Unknown OS Platform', 'desktop', 'Unknow Browser', '2024-03-14 10:10:39', '2024-03-14 10:10:39', NULL),
(5, 'email', 75, 'superadmin@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 OPR/108.0.0.0', 'Windows 10', 'desktop', 'Opera', '2024-03-15 04:24:33', '2024-03-15 04:24:33', NULL);

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
  `unit_price` varchar(50) DEFAULT NULL,
  `fy_year` varchar(50) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `warehouse_id`, `bin_id`, `transaction_type`, `batch_no`, `manufacturing_date`, `expiry_date`, `sku`, `item_code`, `qty`, `updated_qty`, `final_qty`, `unit_price`, `fy_year`, `company_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 16, 'GR', '1852-Batch-1314338', '', '', '1314338', '000111', '0', '50', '50', '290', '2023-24', 18, 75, '2024-03-15 15:24:54', '2024-03-15 15:24:54', NULL),
(2, 8, 16, 'GR', '1853-Batch-10375577', '', '', '10375577', '69991611', '0', '40', '40', '249', '2023-24', 18, 75, '2024-03-15 15:24:54', '2024-03-15 15:24:54', NULL),
(3, 8, 16, 'AR', NULL, '', '', '1314338', '000111', '50', '6', '44', NULL, NULL, NULL, 75, '2024-03-15 16:16:38', '2024-03-15 16:16:38', NULL),
(4, 8, 16, 'AR', NULL, '', '', '10375577', '69991611', '40', '10', '30', NULL, NULL, NULL, 75, '2024-03-15 16:16:38', '2024-03-15 16:16:38', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

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
(10, 'KK', '2023-05-24 11:31:39', '2023-05-24 11:31:39', NULL),
(11, 'RCM Application', '2024-02-16 05:34:58', '2024-02-16 05:34:58', NULL),
(12, 'Pin Code', '2024-02-16 05:34:58', '2024-02-16 05:34:58', NULL),
(13, 'Bldg. No. & Name', '2024-02-16 05:34:58', '2024-02-16 05:34:58', NULL),
(14, 'gms', '2024-02-16 05:39:16', '2024-02-16 05:39:16', NULL),
(15, 'Ltr', '2024-02-16 05:39:17', '2024-02-16 05:39:17', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

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
(34, 'Para Varient', NULL, '2023-12-22 02:21:36', '2023-12-22 02:21:36'),
(35, 'Books Varient', NULL, '2024-01-09 05:52:35', '2024-01-09 05:52:35'),
(36, 'Collagen Elastin 621 ml', NULL, '2024-01-31 17:24:12', '2024-01-31 17:24:12'),
(37, 'Oatmeal 400 ml', NULL, '2024-01-31 17:34:14', '2024-01-31 17:34:14'),
(38, 'Damage Repair 250 ml', NULL, '2024-02-01 00:56:29', '2024-02-01 00:56:29'),
(39, 'kids', NULL, '2024-02-01 01:00:01', '2024-02-01 01:00:01'),
(40, 'Volume 250 ml', NULL, '2024-02-01 02:44:44', '2024-02-01 02:44:44'),
(41, 'Orange 45 gms', NULL, '2024-02-01 02:58:11', '2024-02-01 02:58:11'),
(42, 'Alaska 250 ml', NULL, '2024-02-01 03:03:42', '2024-02-01 03:03:42'),
(43, 'classic red', NULL, '2024-02-01 12:47:04', '2024-02-01 12:47:04'),
(44, 'hydro', NULL, '2024-02-01 12:58:33', '2024-02-01 12:58:33'),
(45, 'GST Number', NULL, '2024-02-16 05:34:58', '2024-02-16 05:34:58'),
(46, 'Collagen Elastin 400 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(47, 'Coconut & Orchid  473ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(48, 'Oatmeal 650ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(49, 'Vanilla 650ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(50, 'Smooth 250 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(51, 'Seasalt 200 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(52, 'Heat Protect 75 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(53, 'Strawberry 45 gms', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(54, 'Deep Clean 250 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(55, 'Lavander 500 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(56, 'Hyd Vitamin E 200 ml', NULL, '2024-02-16 05:39:16', '2024-02-16 05:39:16'),
(57, 'Lavender Hydration 1 Ltr', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(58, 'Dark Temptation 250 ml', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(59, 'Chic Black 125 gm PO3', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(60, 'Classic Red 125 gm PO3', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(61, 'Natural White 125 gm PO3', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(62, 'Hydro 4.8 gms', NULL, '2024-02-16 05:39:17', '2024-02-16 05:39:17'),
(63, 'Coconut & Orchid 473ml', NULL, '2024-02-17 07:51:57', '2024-02-17 07:51:57'),
(64, 'test variant', NULL, '2024-03-11 12:54:23', '2024-03-11 12:54:23'),
(65, 'Original 500 ml', NULL, '2024-03-15 04:27:29', '2024-03-15 04:27:29'),
(66, 'Attraction 500 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(67, 'Ocean 200 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(68, 'Attraction 200 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(69, 'Musk 200 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(70, 'Original 200 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(71, 'Sport Style 200 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(72, 'Lemon 500 ML', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(73, 'Pink 500 ML', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(74, 'Lemongrass 1 Ltr', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(75, 'Rosemary 1 Ltr', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(76, 'Flow Mint 1 Ltr', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(77, 'PS Kichen 700 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(78, 'PS Bathroom 700 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(79, 'PS Anti-Bac 700 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(80, 'Anti-Mould 435 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(81, 'Cool Sport Menthol 310 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(82, 'Deep Cleanse 320 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(83, 'Anti-Hairfall 320 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(84, 'Ocean PO5 55 gms', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(85, 'Lime 55 gms', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(86, 'Colloidal Oatmeal & Calendula Oil 298 gms', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(87, 'Almond & Mango 298 gms', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(88, 'Essential 4.8 gms', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(89, 'Clean Comfort 150 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(90, 'Invisible Dry 150 ml', NULL, '2024-03-15 05:26:16', '2024-03-15 05:26:16'),
(91, 'Invisible Comfort 250 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(92, 'Clean Comfort 250 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(93, 'Cool Fresh 250 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(94, 'Extra Fresh 250 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(95, 'Sport Active 250 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(96, 'Bright Skin Sunflower & Aloe 450 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(97, 'Glowing Skin Gardenia & Honey 450 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(98, 'Skin Detox Freesia & Tea Tree 450 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(99, 'Skin Renewal Fig & Geranium 450 ml', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(100, 'Natural Oils 500 ML', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(101, 'Lemon 750 ML', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(102, 'Mint 750 ML', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(103, 'Natural Oils 750 ML', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(104, 'Orange', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17'),
(105, 'Strawberry', NULL, '2024-03-15 05:26:17', '2024-03-15 05:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `visibility_app`
--

DROP TABLE IF EXISTS `visibility_app`;
CREATE TABLE IF NOT EXISTS `visibility_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `rental_type` varchar(100) DEFAULT NULL,
  `visibility_image` longtext,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visibility_app`
--

INSERT INTO `visibility_app` (`id`, `customer_id`, `rental_type`, `visibility_image`, `date`, `created_at`) VALUES
(1, 124, 'start', '65a8b37fdcbee_9568f1a8-8be4-4170-8b0b-7be054a12b127791936682449810124.jpg', '2024-01-18', '2024-01-18 10:43:35'),
(2, 124, 'continue', '65a8b429023d0_IMG_20240118_101828.jpg,65a8b42902c41_IMG_20240118_101840.jpg', '2024-01-18', '2024-01-18 10:46:25'),
(3, 164, 'start', '65a8f2d251440_IMG_20240118_151331.jpg', '2024-01-18', '2024-01-18 15:13:46'),
(4, 162, 'start', '65aa04cbbebdd_IMG_20240119_104222.jpg', '2024-01-19', '2024-01-19 10:42:43'),
(5, 162, 'stop', '65aa160254cd3_2c96abdb-24e4-4b53-ad0e-2596780fe2764190423133095156542.jpg', '2024-01-19', '2024-01-19 11:56:10'),
(6, 164, 'continue', '', '2024-01-19', '2024-01-19 13:30:37'),
(7, 164, 'continue', '', '2024-01-19', '2024-01-19 13:31:15'),
(8, 164, 'continue', '65b1f769d0731_8bc79a76-0c5d-4111-a964-a6393ec58a867042011844916100984.jpg', '2024-01-25', '2024-01-25 13:53:45'),
(9, 162, 'continue', '65b22cfe6eb6d_12b6a79a-2e71-4ca5-bd29-e9113170e6505874317301361929203.jpg', '2024-01-25', '2024-01-25 17:42:22'),
(10, 44, 'start', '65d6f11a913b6_393bce31-fb56-4c0d-af84-bf73dd427b342463525198309790513.jpg', '2024-02-22', '2024-02-22 12:30:42');

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

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(110) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'East', '2024-02-27 15:01:38', '2024-02-27 15:01:38', NULL),
(2, 'West', '2024-02-27 15:01:48', '2024-02-27 15:01:48', NULL),
(3, 'North', '2024-02-27 15:02:23', '2024-02-27 15:02:23', NULL),
(4, 'South', '2024-02-27 15:02:30', '2024-02-27 15:02:30', NULL),
(5, 'Central', '2024-02-28 16:33:03', '2024-02-28 16:33:03', NULL);

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
