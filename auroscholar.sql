-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 08:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auroscholar`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_authentication`
--

CREATE TABLE `api_authentication` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `server_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretkey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_authentication`
--

INSERT INTO `api_authentication` (`id`, `server_ip`, `secretid`, `secretkey`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '45.64.104.64', '2198f0011288666d3694ccf4e7d16c29', 'f7115915ae4efc1bdab7ae9fc686348848f8cc2e7bf4a9', 0, 0, NULL, NULL),
(2, '::1', '2198f0011288666d3694ccf4e7d16c29', 'f7115915ae4efc1bdab7ae9fc686348848f8cc2e7bf4a9', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_key_master`
--

CREATE TABLE `api_key_master` (
  `api_key_id` bigint(20) UNSIGNED NOT NULL,
  `api_id` bigint(20) UNSIGNED NOT NULL,
  `ip_add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 -> Inactive 1 -> Active 2 ->Disable',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_master`
--

INSERT INTO `api_key_master` (`api_key_id`, `api_id`, `ip_add`, `secret_id`, `secret_key`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, 6, '112', '90a146ef0af4b03c4a482080aa3c54fc9046b067', 'c91e978fc0c150ffea5a7ea5969a9bc91c57bf8ff419b121fb023b224792147b', 1, NULL, NULL, '2021-09-02 13:52:39', '2021-09-02 13:52:39'),
(11, 6, '1', 'ccd7d1197cfd07de0459b488d2fffa8079537094', '466b95f82ec807ed0b6be9d781966c7eb7f287cb4bc6d2f0e0a7f31cf92e5c6a', 1, NULL, NULL, '2021-09-02 13:53:49', '2021-09-02 13:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `api_master`
--

CREATE TABLE `api_master` (
  `api_id` bigint(20) UNSIGNED NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 -> Inactive 1 -> Active',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_master`
--

INSERT INTO `api_master` (`api_id`, `api_name`, `api_url`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Raban', 'github.com', 1, NULL, NULL, '2021-09-02 06:40:36', '2021-09-02 06:40:36'),
(12, 'Ram', 'wikipedia.com', 1, NULL, NULL, '2021-09-14 03:48:11', '2021-09-14 03:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `auro_partner_master`
--

CREATE TABLE `auro_partner_master` (
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `partner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_date` datetime NOT NULL,
  `feature` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Yes 1 -> No',
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `partner_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_internal_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no_verified` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 -> Not Verified 1 -> Verified',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auro_partner_master`
--

INSERT INTO `auro_partner_master` (`partner_id`, `partner_name`, `partner_source`, `registration_date`, `feature`, `status`, `partner_logo`, `partner_website`, `partner_internal_url`, `required_params`, `mobile_no_verified`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'Ram', 'sd', '2021-09-04 06:53:40', '', '', '', 'wikipedia.com', 'wikipedia.com', 'wikipedia.com', '', 0, 0, '2021-09-04 03:23:40', '2021-09-04 03:23:40'),
(15, 'Rahul', 'lorem ipsum', '2021-09-14 07:26:49', '', '', '', 'wikipedia.com', 'wikipedia.com', 'wikipedia.com', '', 0, 0, '2021-09-14 03:56:49', '2021-09-14 03:56:49'),
(16, 'Raban', 'lorem ipsum', '2021-09-14 07:35:06', '', '', '', 'wikipedia.com', 'wikipedia.com', 'wikipedia.com', '', 0, 0, '2021-09-14 04:05:06', '2021-09-14 04:05:06'),
(18, 'sdf', 'ddfdf', '2021-09-29 10:26:31', '', '', '', 'sd.com', 'sd.com', 'sdscs', '', 0, 0, '2021-09-29 06:56:31', '2021-09-29 06:56:31'),
(19, 'qwe', 'ddfdf', '2021-09-29 11:02:39', '', '', '', 'github.com', 'github.com', 'gffh', '', 0, 0, '2021-09-29 07:32:39', '2021-09-29 07:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `cert_issuer_mapping`
--

CREATE TABLE `cert_issuer_mapping` (
  `issuer_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `cert_template_id` bigint(20) UNSIGNED NOT NULL,
  `issuer_user_id` bigint(20) UNSIGNED NOT NULL,
  `cert_i_html` blob NOT NULL,
  `auth_status` enum('A','D','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'P' COMMENT 'A -> Approved D -> Disapproved P -> Pending',
  `auth_remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_by_id` bigint(20) UNSIGNED NOT NULL,
  `date_of_auth` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_template_master`
--

CREATE TABLE `cert_template_master` (
  `cert_template_id` bigint(20) UNSIGNED NOT NULL,
  `cert_template_html` blob NOT NULL,
  `issued_by_type` bigint(20) UNSIGNED NOT NULL,
  `issued_to_type` bigint(20) UNSIGNED NOT NULL,
  `cert_language_id` bigint(20) UNSIGNED NOT NULL,
  `no_of_variable_s` int(11) NOT NULL,
  `no_of_variable_u` int(11) NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_user_master`
--

CREATE TABLE `cert_user_master` (
  `cert_id` bigint(20) UNSIGNED NOT NULL,
  `issued_to_user_id` bigint(20) UNSIGNED NOT NULL,
  `issued_to_type` bigint(20) UNSIGNED NOT NULL,
  `issuer_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `issued_by_id` bigint(20) UNSIGNED NOT NULL,
  `issued_by_type` bigint(20) UNSIGNED NOT NULL,
  `cert_u_html` blob NOT NULL,
  `total_downloads` int(11) NOT NULL,
  `total_share` int(11) NOT NULL,
  `status` enum('I','A') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'I' COMMENT 'I -> Inactive A -> Active',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_variable_master`
--

CREATE TABLE `cert_variable_master` (
  `cert_variable_id` bigint(20) UNSIGNED NOT NULL,
  `cert_template_id` bigint(20) UNSIGNED NOT NULL,
  `variable_number` int(11) NOT NULL,
  `variable_type` enum('U','S') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'U',
  `variable_type_id` bigint(20) UNSIGNED NOT NULL,
  `variable_mandatory` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 -> Non Mandatory 1 -> Mandatory',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_variable_type_master`
--

CREATE TABLE `cert_variable_type_master` (
  `variable_type_id` bigint(20) UNSIGNED NOT NULL,
  `variable_input_type` enum('U','S') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'U',
  `object_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_variable_type_translation_master`
--

CREATE TABLE `cert_variable_type_translation_master` (
  `variable_translation_id` bigint(20) UNSIGNED NOT NULL,
  `variable_type_id` bigint(20) UNSIGNED NOT NULL,
  `variable_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_response_code_master`
--

CREATE TABLE `com_response_code_master` (
  `com_error_code_id` bigint(20) UNSIGNED NOT NULL,
  `com_vendor_id` bigint(20) UNSIGNED NOT NULL,
  `response_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_status_id` bigint(20) UNSIGNED NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_status_master`
--

CREATE TABLE `com_status_master` (
  `com_status_id` bigint(20) UNSIGNED NOT NULL,
  `status_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_type` enum('Delivery','Action') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `com_template_master`
--

CREATE TABLE `com_template_master` (
  `com_template_id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_type` enum('SMS','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `com_template_master`
--

INSERT INTO `com_template_master` (`com_template_id`, `template_name`, `com_type`, `template_text`, `status`, `partner_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'lorem', 'Email', 'lorem', '1', 8, 1, 1, '2021-09-14 03:43:45', '2021-09-14 03:43:45'),
(7, 'lorem ipsum', 'SMS', 'lorem ipsum', '1', 16, 1, 9, '2021-09-14 04:03:07', '2021-09-30 07:15:08'),
(8, 'asd', 'SMS', 'hghh', '1', 15, 1, 1, '2021-09-14 04:22:43', '2021-09-14 04:22:43'),
(9, 'cxcxc', 'SMS', 'ddvdv', '1', 16, 1, 9, '2021-09-29 04:32:25', '2021-09-29 04:38:01'),
(10, 'cxcxcvhh', 'Email', 'ggvgh', '1', 8, 1, 1, '2021-09-29 04:41:15', '2021-09-29 04:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `com_vendor_master`
--

CREATE TABLE `com_vendor_master` (
  `com_vendor_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `vendor_remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `com_vendor_master`
--

INSERT INTO `com_vendor_master` (`com_vendor_id`, `vendor_name`, `service_name`, `vendor_contact_name`, `vendor_contact_no`, `vendor_contact_email`, `status`, `vendor_remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sudipta', 'Sms', 'sdsdsd', '1234567890', 'sd@mail.com', '1', 'dcdvdv', 1, 1, NULL, '2021-09-07 02:53:32'),
(10, 'hghgbhhbh', 'gvgv', 'sccfdf', '1234567890', 'sd', '1', 'hhbjb', 0, 1, '2021-09-07 02:51:56', '2021-09-07 03:18:34'),
(11, 'hghgbgrg', 'vcvcv', 'fgfgfg', '1234567890', 'sd@mail.com', '1', 'hhbjb', 0, 0, '2021-09-07 03:17:54', '2021-09-07 03:17:54'),
(12, 'hghgbhdvdvg', 'vcvcv', '', '', 'sd@m.c', '1', '', 0, 0, '2021-09-07 06:30:54', '2021-09-07 06:30:54'),
(13, 'fg', 'vcvcv', '', '', 'sd@m.c', '1', '', 0, 0, '2021-09-07 06:46:21', '2021-09-07 06:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `country_master`
--

CREATE TABLE `country_master` (
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `official_language_id` bigint(20) UNSIGNED NOT NULL,
  `country_flag` blob NOT NULL,
  `mobile_prefix` int(11) NOT NULL,
  `mobile_max_length` int(11) NOT NULL,
  `mobile_min_length` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_master`
--

CREATE TABLE `currency_master` (
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_master`
--

INSERT INTO `currency_master` (`currency_id`, `currency_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'INR', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

CREATE TABLE `district_master` (
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `official_language_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_type_master`
--

CREATE TABLE `document_type_master` (
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_user_type` bigint(20) UNSIGNED NOT NULL,
  `both_side_required` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_individual_details`
--

CREATE TABLE `donor_individual_details` (
  `individual_donor_id` bigint(20) UNSIGNED NOT NULL,
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile_no_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 -> Yes 1 -> No',
  `whatsapp_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_country_code` bigint(20) UNSIGNED DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 -> Yes 1 -> No',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_line1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_card_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_master`
--

CREATE TABLE `donor_master` (
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `donor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_type` enum('Individual','Institutional') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Individual',
  `preferred_language` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_stream_geography_mapping`
--

CREATE TABLE `donor_stream_geography_mapping` (
  `donor_geography_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_stream_grade_mapping`
--

CREATE TABLE `donor_stream_grade_mapping` (
  `donor_grade_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_stream_master`
--

CREATE TABLE `donor_stream_master` (
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `donation_frequency` enum('Onetime','Monthly','Querterly','Halfyearly','Yearly') COLLATE utf8mb4_unicode_ci NOT NULL,
  `scholarship_currency` bigint(20) UNSIGNED NOT NULL,
  `stream_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_payment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_payment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `grade_preference` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_preference` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `geographic_preference` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_stream_subject_mapping`
--

CREATE TABLE `donor_stream_subject_mapping` (
  `donor_subject_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_transaction_log`
--

CREATE TABLE `donor_transaction_log` (
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Success','Fail','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `transaction_type` enum('Debit','Credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_transaction_quiz_mapping`
--

CREATE TABLE `donor_transaction_quiz_mapping` (
  `donor_transaction_quiz_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `registration_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor_transaction_type_master`
--

CREATE TABLE `donor_transaction_type_master` (
  `donor_transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `grade_master`
--

CREATE TABLE `grade_master` (
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `priority` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_master`
--

INSERT INTO `grade_master` (`grade_id`, `grade_name`, `status`, `priority`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'One', '1', 0, 0, 0, NULL, NULL),
(2, 'Two', '1', 0, 0, 0, NULL, NULL),
(3, 'Three', '1', 0, 0, 0, NULL, NULL),
(4, 'Four', '1', 0, 0, 0, NULL, NULL),
(5, 'Five', '1', 0, 0, 0, NULL, NULL),
(6, 'Six', '1', 0, 0, 0, NULL, NULL),
(7, 'Seven', '1', 0, 0, 0, NULL, NULL),
(8, 'Eight', '1', 0, 0, 0, NULL, NULL),
(9, 'Nine', '1', 0, 0, 0, NULL, NULL),
(10, 'Ten', '1', 0, 0, 0, NULL, NULL),
(11, 'Eleven', '1', 0, 0, 0, NULL, NULL),
(12, 'Twelve', '1', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grade_subject_mapping`
--

CREATE TABLE `grade_subject_mapping` (
  `gsm_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> With Validity Active 3 -> With Validity Inactive',
  `validity` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_master`
--

CREATE TABLE `language_master` (
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_language_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_type` int(11) NOT NULL,
  `main_menu_id` int(11) NOT NULL,
  `menu_icon` blob NOT NULL,
  `menu_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation_master`
--

CREATE TABLE `menu_translation_master` (
  `menu_translation_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_30_134326_create_auroone_table', 1),
(6, '2021_08_30_134434_create_aurotwo_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_log`
--

CREATE TABLE `otp_log` (
  `otp_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_type` enum('Email','SMS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp_log_history`
--

CREATE TABLE `otp_log_history` (
  `otp_history_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_type` enum('Email','SMS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_com_master`
--

CREATE TABLE `partner_com_master` (
  `partner_com_id` bigint(20) UNSIGNED NOT NULL,
  `partner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_com_master`
--

INSERT INTO `partner_com_master` (`partner_com_id`, `partner_name`, `partner_logo`, `partner_description`, `partner_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 'refef', 'dvdv', 'dfdvdvdv', 15, '1', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner_com_sender_master`
--

CREATE TABLE `partner_com_sender_master` (
  `com_sender_id` bigint(20) UNSIGNED NOT NULL,
  `sendered_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_vendor_id` bigint(20) UNSIGNED NOT NULL,
  `com_type` enum('SMS','Email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `partner_com_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_filter_master`
--

CREATE TABLE `partner_filter_master` (
  `partner_filter_id` bigint(20) UNSIGNED NOT NULL,
  `partner_com_id` bigint(20) UNSIGNED NOT NULL,
  `filter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_data_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `field_value_sequence` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_filter_master`
--

INSERT INTO `partner_filter_master` (`partner_filter_id`, `partner_com_id`, `filter_name`, `filter_data_type`, `status`, `field_value_sequence`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 15, 'scscsf', 'xsscsxc', '1', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner_user_mapping`
--

CREATE TABLE `partner_user_mapping` (
  `partner_user_id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_user_mapping`
--

INSERT INTO `partner_user_mapping` (`partner_user_id`, `partner_id`, `user_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(12, 8, 11, 0, 8, '2021-09-04 03:23:40', '2021-09-04 06:34:01'),
(56, 11, 55, 11, 11, '2021-09-05 13:14:21', '2021-09-05 13:14:21'),
(66, 15, 65, 0, 0, '2021-09-14 03:56:49', '2021-09-14 03:56:49'),
(67, 16, 66, 0, 0, '2021-09-14 04:05:06', '2021-09-14 04:05:06'),
(69, 18, 67, 0, 0, '2021-09-29 06:56:31', '2021-09-29 06:56:31'),
(70, 19, 68, 0, 0, '2021-09-29 07:32:39', '2021-09-29 07:32:39');

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
-- Table structure for table `pre_registration_master`
--

CREATE TABLE `pre_registration_master` (
  `pre_registration_id` bigint(20) UNSIGNED NOT NULL,
  `user_type_id` bigint(20) UNSIGNED NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`role_id`, `role_name`, `user_type_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 1, 1, '2021-03-26 00:05:44', '2021-03-26 00:05:44'),
(2, 'Sub Admin', 1, 1, 1, '2021-03-26 00:06:04', '2021-03-26 00:06:04'),
(3, 'Users', 4, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_menu_mapping`
--

CREATE TABLE `role_menu_mapping` (
  `role_menu_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_master`
--

CREATE TABLE `school_master` (
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `udise_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `village_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `official_language_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

CREATE TABLE `subject_master` (
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_type_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `priority` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`subject_id`, `subject_type_id`, `status`, `priority`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 0, 0, 0, NULL, NULL),
(2, 1, '1', 0, 0, 0, NULL, NULL),
(3, 2, '1', 0, 0, 0, NULL, NULL),
(4, 2, '1', 0, 0, 0, NULL, NULL),
(5, 3, '1', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_translation_master`
--

CREATE TABLE `subject_translation_master` (
  `subject_translation_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_type_master`
--

CREATE TABLE `subject_type_master` (
  `subject_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_type_master`
--

INSERT INTO `subject_type_master` (`subject_type_id`, `subject_type_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'subtype1', 1, 1, '2021-03-24 19:32:38', '2021-03-24 19:38:45'),
(2, 'subtype2', 1, 1, '2021-03-24 19:38:52', '2021-03-24 19:38:53'),
(3, 'subtype3', 1, 1, '2021-04-14 18:34:00', '2021-04-14 18:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_text_master`
--

CREATE TABLE `system_text_master` (
  `stm_id` bigint(20) UNSIGNED NOT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_text_translation_master`
--

CREATE TABLE `system_text_translation_master` (
  `stt_id` bigint(20) UNSIGNED NOT NULL,
  `stm_id` bigint(20) UNSIGNED NOT NULL,
  `system_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_kyc_docs`
--

CREATE TABLE `teacher_kyc_docs` (
  `teacher_kyc_docs_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `document_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_side` enum('Front','Back') COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_verified` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_master`
--

CREATE TABLE `teacher_master` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 -> Not Verified 1 -> Verified',
  `email_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id_verified` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 -> Not Verified 1 -> Verified',
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `school_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_mapping`
--

CREATE TABLE `teacher_student_mapping` (
  `teacher_student_mapping_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `accepted_status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 -> Sent 1 -> Accepted 2 -> Rejected',
  `accepted_date` datetime NOT NULL,
  `sent_by_type` bigint(20) UNSIGNED NOT NULL,
  `student_referral_status` enum('Created by Teacher','Referred by Teacher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject_grade_mapping`
--

CREATE TABLE `teacher_subject_grade_mapping` (
  `grade_subject_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_type_id`, `user_name`, `password`, `role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 'admin_partner_sd', 'daf87bf266a75ba095d9a8175611605c', 1, '', 0, 0, '2021-09-29 06:52:28', '2021-09-29 06:52:28'),
(11, 3, 'admin_partner_ram', '5b87d25d120e4fb5ac13e0e83fdcebe2', 1, '', 0, 8, '2021-09-04 03:23:40', '2021-09-04 06:34:01'),
(57, 1, 'ram_sa', '4aa71243f4f0e1d9b354f9b04d9cd9a5', 3, '1', 8, 8, '2021-09-05 13:18:36', '2021-09-05 13:18:36'),
(59, 3, 'admin_partner_raha', '5aeb3679386a8a21fc597feeb3a1c18b', 1, '', 0, 0, '2021-09-05 13:20:18', '2021-09-05 13:20:18'),
(65, 3, 'admin_partner_rahul', '7f832a221126361addb3b8e55315bbcb', 1, '', 0, 0, '2021-09-14 03:56:49', '2021-09-14 03:56:49'),
(66, 3, 'admin_partner_raban', '5ee5ebb6f8ceb94d39bd5d8cf625e5cf', 1, '', 0, 0, '2021-09-14 04:05:06', '2021-09-14 04:05:06'),
(67, 3, 'admin_partner_sdf', '24410748313c6b28459b3537f15ca383', 1, '', 0, 0, '2021-09-29 06:56:31', '2021-09-29 06:56:31'),
(68, 3, 'admin_partner_qwe', 'ef3ff2f2f7f93480bfe1840be3ac0fbd', 1, '', 0, 0, '2021-09-29 07:32:39', '2021-09-29 07:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_master`
--

CREATE TABLE `user_type_master` (
  `user_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_type_master`
--

INSERT INTO `user_type_master` (`user_type_id`, `user_type_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Student', 0, 0, '2021-06-09 03:54:59', '2021-06-09 03:55:00'),
(2, 'Teacher', 0, 0, '2021-06-09 03:54:59', '2021-06-09 03:55:00'),
(3, 'Corporate', 0, 0, '2021-06-09 03:54:59', '2021-06-09 03:55:00'),
(4, 'Donor', 0, 0, '2021-06-09 03:54:59', '2021-06-09 03:55:00'),
(5, 'Admin', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_template_master`
--

CREATE TABLE `vendor_template_master` (
  `vendor_template_id` bigint(20) UNSIGNED NOT NULL,
  `com_vendor_id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `template_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Inactive 1 -> Active 2 -> Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_booking_master`
--

CREATE TABLE `webinar_booking_master` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `webinar_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 -> Attended 1 -> Not Attended',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webinar_master`
--

CREATE TABLE `webinar_master` (
  `webinar_id` bigint(20) UNSIGNED NOT NULL,
  `webinar_by_type` bigint(20) UNSIGNED NOT NULL,
  `webinar_for_type` bigint(20) UNSIGNED NOT NULL,
  `webinar_start_time` datetime NOT NULL,
  `webinar_end_time` datetime NOT NULL,
  `max_participants` int(11) NOT NULL,
  `webinar_topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_language` bigint(20) UNSIGNED NOT NULL,
  `webinar_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_authentication`
--
ALTER TABLE `api_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_key_master`
--
ALTER TABLE `api_key_master`
  ADD PRIMARY KEY (`api_key_id`),
  ADD KEY `api_key_master_api_id_foreign` (`api_id`);

--
-- Indexes for table `api_master`
--
ALTER TABLE `api_master`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `auro_partner_master`
--
ALTER TABLE `auro_partner_master`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `cert_issuer_mapping`
--
ALTER TABLE `cert_issuer_mapping`
  ADD PRIMARY KEY (`issuer_mapping_id`),
  ADD KEY `cert_issuer_mapping_cert_template_id_foreign` (`cert_template_id`),
  ADD KEY `cert_issuer_mapping_issuer_user_id_foreign` (`issuer_user_id`),
  ADD KEY `cert_issuer_mapping_auth_by_id_foreign` (`auth_by_id`);

--
-- Indexes for table `cert_template_master`
--
ALTER TABLE `cert_template_master`
  ADD PRIMARY KEY (`cert_template_id`),
  ADD KEY `cert_template_master_issued_by_type_foreign` (`issued_by_type`),
  ADD KEY `cert_template_master_issued_to_type_foreign` (`issued_to_type`),
  ADD KEY `cert_template_master_cert_language_id_foreign` (`cert_language_id`);

--
-- Indexes for table `cert_user_master`
--
ALTER TABLE `cert_user_master`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `cert_user_master_issued_to_user_id_foreign` (`issued_to_user_id`),
  ADD KEY `cert_user_master_issued_to_type_foreign` (`issued_to_type`),
  ADD KEY `cert_user_master_issuer_mapping_id_foreign` (`issuer_mapping_id`),
  ADD KEY `cert_user_master_issued_by_id_foreign` (`issued_by_id`),
  ADD KEY `cert_user_master_issued_by_type_foreign` (`issued_by_type`);

--
-- Indexes for table `cert_variable_master`
--
ALTER TABLE `cert_variable_master`
  ADD PRIMARY KEY (`cert_variable_id`),
  ADD KEY `cert_variable_master_cert_template_id_foreign` (`cert_template_id`),
  ADD KEY `cert_variable_master_variable_type_id_foreign` (`variable_type_id`);

--
-- Indexes for table `cert_variable_type_master`
--
ALTER TABLE `cert_variable_type_master`
  ADD PRIMARY KEY (`variable_type_id`);

--
-- Indexes for table `cert_variable_type_translation_master`
--
ALTER TABLE `cert_variable_type_translation_master`
  ADD PRIMARY KEY (`variable_translation_id`),
  ADD KEY `cert_variable_type_translation_master_variable_type_id_foreign` (`variable_type_id`),
  ADD KEY `cert_variable_type_translation_master_language_id_foreign` (`language_id`);

--
-- Indexes for table `com_response_code_master`
--
ALTER TABLE `com_response_code_master`
  ADD PRIMARY KEY (`com_error_code_id`),
  ADD KEY `com_response_code_master_com_vendor_id_foreign` (`com_vendor_id`),
  ADD KEY `com_response_code_master_com_status_id_foreign` (`com_status_id`);

--
-- Indexes for table `com_status_master`
--
ALTER TABLE `com_status_master`
  ADD PRIMARY KEY (`com_status_id`);

--
-- Indexes for table `com_template_master`
--
ALTER TABLE `com_template_master`
  ADD PRIMARY KEY (`com_template_id`),
  ADD KEY `com_template_master_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `com_vendor_master`
--
ALTER TABLE `com_vendor_master`
  ADD PRIMARY KEY (`com_vendor_id`);

--
-- Indexes for table `country_master`
--
ALTER TABLE `country_master`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_master_official_language_id_foreign` (`official_language_id`);

--
-- Indexes for table `currency_master`
--
ALTER TABLE `currency_master`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `district_master`
--
ALTER TABLE `district_master`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `district_master_state_id_foreign` (`state_id`),
  ADD KEY `district_master_official_language_id_foreign` (`official_language_id`);

--
-- Indexes for table `document_type_master`
--
ALTER TABLE `document_type_master`
  ADD PRIMARY KEY (`document_type_id`),
  ADD KEY `document_type_master_document_user_type_foreign` (`document_user_type`);

--
-- Indexes for table `donor_individual_details`
--
ALTER TABLE `donor_individual_details`
  ADD PRIMARY KEY (`individual_donor_id`),
  ADD KEY `donor_individual_details_donor_id_foreign` (`donor_id`),
  ADD KEY `donor_individual_details_country_code_foreign` (`country_code`),
  ADD KEY `donor_individual_details_whatsapp_country_code_foreign` (`whatsapp_country_code`),
  ADD KEY `donor_individual_details_country_id_foreign` (`country_id`),
  ADD KEY `donor_individual_details_state_id_foreign` (`state_id`),
  ADD KEY `donor_individual_details_district_id_foreign` (`district_id`);

--
-- Indexes for table `donor_master`
--
ALTER TABLE `donor_master`
  ADD PRIMARY KEY (`donor_id`),
  ADD KEY `donor_master_preferred_language_foreign` (`preferred_language`);

--
-- Indexes for table `donor_stream_geography_mapping`
--
ALTER TABLE `donor_stream_geography_mapping`
  ADD PRIMARY KEY (`donor_geography_mapping_id`),
  ADD KEY `donor_stream_geography_mapping_stream_id_foreign` (`stream_id`),
  ADD KEY `donor_stream_geography_mapping_state_id_foreign` (`state_id`),
  ADD KEY `donor_stream_geography_mapping_district_id_foreign` (`district_id`),
  ADD KEY `donor_stream_geography_mapping_country_id_foreign` (`country_id`);

--
-- Indexes for table `donor_stream_grade_mapping`
--
ALTER TABLE `donor_stream_grade_mapping`
  ADD PRIMARY KEY (`donor_grade_mapping_id`),
  ADD KEY `donor_stream_grade_mapping_stream_id_foreign` (`stream_id`),
  ADD KEY `donor_stream_grade_mapping_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `donor_stream_master`
--
ALTER TABLE `donor_stream_master`
  ADD PRIMARY KEY (`stream_id`),
  ADD KEY `donor_stream_master_donor_id_foreign` (`donor_id`),
  ADD KEY `donor_stream_master_scholarship_currency_foreign` (`scholarship_currency`);

--
-- Indexes for table `donor_stream_subject_mapping`
--
ALTER TABLE `donor_stream_subject_mapping`
  ADD PRIMARY KEY (`donor_subject_mapping_id`),
  ADD KEY `donor_stream_subject_mapping_stream_id_foreign` (`stream_id`),
  ADD KEY `donor_stream_subject_mapping_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `donor_transaction_log`
--
ALTER TABLE `donor_transaction_log`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `donor_transaction_log_donor_id_foreign` (`donor_id`),
  ADD KEY `donor_transaction_log_stream_id_foreign` (`stream_id`),
  ADD KEY `donor_transaction_log_currency_id_foreign` (`currency_id`),
  ADD KEY `donor_transaction_log_transaction_type_id_foreign` (`transaction_type_id`);

--
-- Indexes for table `donor_transaction_quiz_mapping`
--
ALTER TABLE `donor_transaction_quiz_mapping`
  ADD PRIMARY KEY (`donor_transaction_quiz_mapping_id`),
  ADD KEY `donor_transaction_quiz_mapping_transaction_id_foreign` (`transaction_id`),
  ADD KEY `donor_transaction_quiz_mapping_subject_id_foreign` (`subject_id`),
  ADD KEY `donor_transaction_quiz_mapping_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `donor_transaction_type_master`
--
ALTER TABLE `donor_transaction_type_master`
  ADD PRIMARY KEY (`donor_transaction_type_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grade_master`
--
ALTER TABLE `grade_master`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `grade_subject_mapping`
--
ALTER TABLE `grade_subject_mapping`
  ADD PRIMARY KEY (`gsm_id`),
  ADD KEY `grade_subject_mapping_subject_id_foreign` (`subject_id`),
  ADD KEY `grade_subject_mapping_grade_id_foreign` (`grade_id`),
  ADD KEY `grade_subject_mapping_language_id_foreign` (`language_id`);

--
-- Indexes for table `language_master`
--
ALTER TABLE `language_master`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `language_master_created_by_foreign` (`created_by`),
  ADD KEY `language_master_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_translation_master`
--
ALTER TABLE `menu_translation_master`
  ADD PRIMARY KEY (`menu_translation_id`),
  ADD KEY `menu_translation_master_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_translation_master_language_id_foreign` (`language_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_log`
--
ALTER TABLE `otp_log`
  ADD PRIMARY KEY (`otp_id`),
  ADD KEY `otp_log_country_id_foreign` (`country_id`);

--
-- Indexes for table `otp_log_history`
--
ALTER TABLE `otp_log_history`
  ADD PRIMARY KEY (`otp_history_id`),
  ADD KEY `otp_log_history_country_id_foreign` (`country_id`);

--
-- Indexes for table `partner_com_master`
--
ALTER TABLE `partner_com_master`
  ADD PRIMARY KEY (`partner_com_id`),
  ADD KEY `partner_com_master_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `partner_com_sender_master`
--
ALTER TABLE `partner_com_sender_master`
  ADD PRIMARY KEY (`com_sender_id`),
  ADD KEY `partner_com_sender_master_com_vendor_id_foreign` (`com_vendor_id`),
  ADD KEY `partner_com_sender_master_partner_com_id_foreign` (`partner_com_id`);

--
-- Indexes for table `partner_filter_master`
--
ALTER TABLE `partner_filter_master`
  ADD PRIMARY KEY (`partner_filter_id`),
  ADD KEY `partner_filter_master_partner_com_id_foreign` (`partner_com_id`);

--
-- Indexes for table `partner_user_mapping`
--
ALTER TABLE `partner_user_mapping`
  ADD PRIMARY KEY (`partner_user_id`),
  ADD KEY `partner_user_mapping_partner_id_foreign` (`partner_id`),
  ADD KEY `partner_user_mapping_user_id_foreign` (`user_id`);

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
-- Indexes for table `pre_registration_master`
--
ALTER TABLE `pre_registration_master`
  ADD PRIMARY KEY (`pre_registration_id`),
  ADD KEY `pre_registration_master_user_type_id_foreign` (`user_type_id`),
  ADD KEY `pre_registration_master_country_id_foreign` (`country_id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_master_user_type_id_foreign` (`user_type_id`);

--
-- Indexes for table `role_menu_mapping`
--
ALTER TABLE `role_menu_mapping`
  ADD PRIMARY KEY (`role_menu_id`),
  ADD KEY `role_menu_mapping_role_id_foreign` (`role_id`),
  ADD KEY `role_menu_mapping_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `school_master`
--
ALTER TABLE `school_master`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `school_master_country_id_foreign` (`country_id`),
  ADD KEY `school_master_state_id_foreign` (`state_id`),
  ADD KEY `school_master_district_id_foreign` (`district_id`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `state_master_country_id_foreign` (`country_id`),
  ADD KEY `state_master_official_language_id_foreign` (`official_language_id`);

--
-- Indexes for table `subject_master`
--
ALTER TABLE `subject_master`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subject_master_subject_type_id_foreign` (`subject_type_id`);

--
-- Indexes for table `subject_translation_master`
--
ALTER TABLE `subject_translation_master`
  ADD PRIMARY KEY (`subject_translation_id`),
  ADD KEY `subject_translation_master_subject_id_foreign` (`subject_id`),
  ADD KEY `subject_translation_master_language_id_foreign` (`language_id`);

--
-- Indexes for table `subject_type_master`
--
ALTER TABLE `subject_type_master`
  ADD PRIMARY KEY (`subject_type_id`);

--
-- Indexes for table `system_text_master`
--
ALTER TABLE `system_text_master`
  ADD PRIMARY KEY (`stm_id`);

--
-- Indexes for table `system_text_translation_master`
--
ALTER TABLE `system_text_translation_master`
  ADD PRIMARY KEY (`stt_id`),
  ADD KEY `system_text_translation_master_stm_id_foreign` (`stm_id`),
  ADD KEY `system_text_translation_master_language_id_foreign` (`language_id`);

--
-- Indexes for table `teacher_kyc_docs`
--
ALTER TABLE `teacher_kyc_docs`
  ADD PRIMARY KEY (`teacher_kyc_docs_id`),
  ADD KEY `teacher_kyc_docs_user_id_foreign` (`user_id`),
  ADD KEY `teacher_kyc_docs_document_type_id_foreign` (`document_type_id`);

--
-- Indexes for table `teacher_master`
--
ALTER TABLE `teacher_master`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teacher_master_user_id_foreign` (`user_id`),
  ADD KEY `teacher_master_school_id_foreign` (`school_id`),
  ADD KEY `teacher_master_country_id_foreign` (`country_id`),
  ADD KEY `teacher_master_state_id_foreign` (`state_id`),
  ADD KEY `teacher_master_district_id_foreign` (`district_id`);

--
-- Indexes for table `teacher_student_mapping`
--
ALTER TABLE `teacher_student_mapping`
  ADD PRIMARY KEY (`teacher_student_mapping_id`),
  ADD KEY `teacher_student_mapping_student_id_foreign` (`student_id`),
  ADD KEY `teacher_student_mapping_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_student_mapping_subject_id_foreign` (`subject_id`),
  ADD KEY `teacher_student_mapping_sent_by_type_foreign` (`sent_by_type`);

--
-- Indexes for table `teacher_subject_grade_mapping`
--
ALTER TABLE `teacher_subject_grade_mapping`
  ADD PRIMARY KEY (`grade_subject_id`),
  ADD KEY `teacher_subject_grade_mapping_user_id_foreign` (`user_id`),
  ADD KEY `teacher_subject_grade_mapping_grade_id_foreign` (`grade_id`),
  ADD KEY `teacher_subject_grade_mapping_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_master_user_type_id_foreign` (`user_type_id`),
  ADD KEY `user_master_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_type_master`
--
ALTER TABLE `user_type_master`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `vendor_template_master`
--
ALTER TABLE `vendor_template_master`
  ADD PRIMARY KEY (`vendor_template_id`),
  ADD KEY `vendor_template_master_com_vendor_id_foreign` (`com_vendor_id`),
  ADD KEY `vendor_template_master_partner_id_foreign` (`partner_id`),
  ADD KEY `vendor_template_master_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `webinar_booking_master`
--
ALTER TABLE `webinar_booking_master`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `webinar_booking_master_webinar_id_foreign` (`webinar_id`),
  ADD KEY `webinar_booking_master_user_id_foreign` (`user_id`);

--
-- Indexes for table `webinar_master`
--
ALTER TABLE `webinar_master`
  ADD PRIMARY KEY (`webinar_id`),
  ADD KEY `webinar_master_webinar_by_type_foreign` (`webinar_by_type`),
  ADD KEY `webinar_master_webinar_for_type_foreign` (`webinar_for_type`),
  ADD KEY `webinar_master_webinar_language_foreign` (`webinar_language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_authentication`
--
ALTER TABLE `api_authentication`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_key_master`
--
ALTER TABLE `api_key_master`
  MODIFY `api_key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `api_master`
--
ALTER TABLE `api_master`
  MODIFY `api_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auro_partner_master`
--
ALTER TABLE `auro_partner_master`
  MODIFY `partner_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cert_issuer_mapping`
--
ALTER TABLE `cert_issuer_mapping`
  MODIFY `issuer_mapping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_template_master`
--
ALTER TABLE `cert_template_master`
  MODIFY `cert_template_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_user_master`
--
ALTER TABLE `cert_user_master`
  MODIFY `cert_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_variable_master`
--
ALTER TABLE `cert_variable_master`
  MODIFY `cert_variable_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_variable_type_master`
--
ALTER TABLE `cert_variable_type_master`
  MODIFY `variable_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_variable_type_translation_master`
--
ALTER TABLE `cert_variable_type_translation_master`
  MODIFY `variable_translation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `com_response_code_master`
--
ALTER TABLE `com_response_code_master`
  MODIFY `com_error_code_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `com_status_master`
--
ALTER TABLE `com_status_master`
  MODIFY `com_status_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `com_template_master`
--
ALTER TABLE `com_template_master`
  MODIFY `com_template_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `com_vendor_master`
--
ALTER TABLE `com_vendor_master`
  MODIFY `com_vendor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `country_master`
--
ALTER TABLE `country_master`
  MODIFY `country_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `currency_master`
--
ALTER TABLE `currency_master`
  MODIFY `currency_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `district_master`
--
ALTER TABLE `district_master`
  MODIFY `district_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT for table `document_type_master`
--
ALTER TABLE `document_type_master`
  MODIFY `document_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_individual_details`
--
ALTER TABLE `donor_individual_details`
  MODIFY `individual_donor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_master`
--
ALTER TABLE `donor_master`
  MODIFY `donor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_stream_geography_mapping`
--
ALTER TABLE `donor_stream_geography_mapping`
  MODIFY `donor_geography_mapping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_stream_grade_mapping`
--
ALTER TABLE `donor_stream_grade_mapping`
  MODIFY `donor_grade_mapping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_stream_master`
--
ALTER TABLE `donor_stream_master`
  MODIFY `stream_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_stream_subject_mapping`
--
ALTER TABLE `donor_stream_subject_mapping`
  MODIFY `donor_subject_mapping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_transaction_log`
--
ALTER TABLE `donor_transaction_log`
  MODIFY `transaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_transaction_quiz_mapping`
--
ALTER TABLE `donor_transaction_quiz_mapping`
  MODIFY `donor_transaction_quiz_mapping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor_transaction_type_master`
--
ALTER TABLE `donor_transaction_type_master`
  MODIFY `donor_transaction_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_master`
--
ALTER TABLE `grade_master`
  MODIFY `grade_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `grade_subject_mapping`
--
ALTER TABLE `grade_subject_mapping`
  MODIFY `gsm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_master`
--
ALTER TABLE `language_master`
  MODIFY `language_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_translation_master`
--
ALTER TABLE `menu_translation_master`
  MODIFY `menu_translation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otp_log`
--
ALTER TABLE `otp_log`
  MODIFY `otp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_log_history`
--
ALTER TABLE `otp_log_history`
  MODIFY `otp_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner_com_master`
--
ALTER TABLE `partner_com_master`
  MODIFY `partner_com_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `partner_com_sender_master`
--
ALTER TABLE `partner_com_sender_master`
  MODIFY `com_sender_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner_filter_master`
--
ALTER TABLE `partner_filter_master`
  MODIFY `partner_filter_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partner_user_mapping`
--
ALTER TABLE `partner_user_mapping`
  MODIFY `partner_user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_registration_master`
--
ALTER TABLE `pre_registration_master`
  MODIFY `pre_registration_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_menu_mapping`
--
ALTER TABLE `role_menu_mapping`
  MODIFY `role_menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_master`
--
ALTER TABLE `school_master`
  MODIFY `school_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `state_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subject_master`
--
ALTER TABLE `subject_master`
  MODIFY `subject_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject_translation_master`
--
ALTER TABLE `subject_translation_master`
  MODIFY `subject_translation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_type_master`
--
ALTER TABLE `subject_type_master`
  MODIFY `subject_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_text_master`
--
ALTER TABLE `system_text_master`
  MODIFY `stm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_text_translation_master`
--
ALTER TABLE `system_text_translation_master`
  MODIFY `stt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_kyc_docs`
--
ALTER TABLE `teacher_kyc_docs`
  MODIFY `teacher_kyc_docs_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_master`
--
ALTER TABLE `teacher_master`
  MODIFY `teacher_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
