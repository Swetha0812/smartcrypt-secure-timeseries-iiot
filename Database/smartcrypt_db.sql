-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2022 at 02:13 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `book_my_cars`
--
CREATE DATABASE IF NOT EXISTS `book_my_cars` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `book_my_cars`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user register model', 7, 'add_userregistermodel'),
(26, 'Can change user register model', 7, 'change_userregistermodel'),
(27, 'Can delete user register model', 7, 'delete_userregistermodel'),
(28, 'Can view user register model', 7, 'view_userregistermodel'),
(29, 'Can add owner register model', 8, 'add_ownerregistermodel'),
(30, 'Can change owner register model', 8, 'change_ownerregistermodel'),
(31, 'Can delete owner register model', 8, 'delete_ownerregistermodel'),
(32, 'Can view owner register model', 8, 'view_ownerregistermodel'),
(33, 'Can add upload vehicle model', 9, 'add_uploadvehiclemodel'),
(34, 'Can change upload vehicle model', 9, 'change_uploadvehiclemodel'),
(35, 'Can delete upload vehicle model', 9, 'delete_uploadvehiclemodel'),
(36, 'Can view upload vehicle model', 9, 'view_uploadvehiclemodel'),
(37, 'Can add rent vehicle model', 10, 'add_rentvehiclemodel'),
(38, 'Can change rent vehicle model', 10, 'change_rentvehiclemodel'),
(39, 'Can delete rent vehicle model', 10, 'delete_rentvehiclemodel'),
(40, 'Can view rent vehicle model', 10, 'view_rentvehiclemodel'),
(41, 'Can add user feedback model', 11, 'add_userfeedbackmodel'),
(42, 'Can change user feedback model', 11, 'change_userfeedbackmodel'),
(43, 'Can delete user feedback model', 11, 'delete_userfeedbackmodel'),
(44, 'Can view user feedback model', 11, 'view_userfeedbackmodel'),
(45, 'Can add contact us model', 12, 'add_contactusmodel'),
(46, 'Can change contact us model', 12, 'change_contactusmodel'),
(47, 'Can delete contact us model', 12, 'delete_contactusmodel'),
(48, 'Can view contact us model', 12, 'view_contactusmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `usercontact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `query` longtext NOT NULL,
  `contact` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `posted_date` date DEFAULT NULL,
  PRIMARY KEY (`usercontact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`usercontact_id`, `name`, `email`, `query`, `contact`, `message`, `posted_date`) VALUES
(1, 'saddamoddin', 'saddamoddin19@gmail.com', 'OTP issue.', 9573970379, 'I am not able to receive an OTP in my registered mobile number while registering for neet phase 2. what should I do now ?', '2022-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'mainapp', 'contactusmodel'),
(8, 'ownerapp', 'ownerregistermodel'),
(9, 'ownerapp', 'uploadvehiclemodel'),
(6, 'sessions', 'session'),
(10, 'userapp', 'rentvehiclemodel'),
(11, 'userapp', 'userfeedbackmodel'),
(7, 'userapp', 'userregistermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-08 11:18:19.946897'),
(2, 'auth', '0001_initial', '2022-04-08 11:18:20.945317'),
(3, 'admin', '0001_initial', '2022-04-08 11:18:21.181143'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-08 11:18:21.197090'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-08 11:18:21.213055'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-08 11:18:21.366743'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-08 11:18:21.433543'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-08 11:18:21.504400'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-08 11:18:21.515302'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-08 11:18:21.594095'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-08 11:18:21.599691'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-08 11:18:21.612647'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-08 11:18:21.681380'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-08 11:18:21.748663'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-08 11:18:21.824592'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-08 11:18:21.837550'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-08 11:18:21.905507'),
(18, 'sessions', '0001_initial', '2022-04-08 11:18:21.972855'),
(19, 'userapp', '0001_initial', '2022-04-12 10:27:31.997830'),
(20, 'ownerapp', '0001_initial', '2022-04-13 03:58:43.795432'),
(21, 'ownerapp', '0002_uploadvehiclemodel_and_more', '2022-04-13 06:14:47.655169'),
(22, 'ownerapp', '0003_alter_uploadvehiclemodel_isgeared', '2022-04-14 10:19:53.811261'),
(23, 'userapp', '0002_rentvehiclemodel', '2022-04-14 17:00:27.437737'),
(24, 'userapp', '0003_rentvehiclemodel_user_contact', '2022-04-14 17:03:38.259153'),
(25, 'userapp', '0004_rentvehiclemodel_user_address', '2022-04-14 17:19:50.227731'),
(26, 'ownerapp', '0004_uploadvehiclemodel_vehicle_image3', '2022-04-19 01:40:52.199149'),
(27, 'userapp', '0005_userfeedbackmodel', '2022-04-20 14:33:56.188178'),
(28, 'ownerapp', '0005_ownerregistermodel_status', '2022-04-21 10:39:00.717435'),
(29, 'userapp', '0006_rentvehiclemodel_user_license', '2022-04-25 01:35:26.310626'),
(30, 'userapp', '0007_alter_rentvehiclemodel_user_license', '2022-04-25 01:39:41.157841'),
(31, 'mainapp', '0001_initial', '2022-04-26 18:32:49.433603'),
(32, 'mainapp', '0002_contactusmodel_posted_date', '2022-04-26 23:55:56.210374'),
(33, 'userapp', '0008_userfeedbackmodel_vehicle_plate_number', '2022-04-27 02:14:22.369443');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0p8ss5h9dv58w0ffec4fw64arh1rmh5y', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1noJ6A:s6-PV7w1HM_JLD9wMuk7dG54EVyNpBG23Iyzyc2afKE', '2022-05-24 06:11:54.856624'),
('1aoc7d38o3uq8klqbyoq0u4k2lw0elpe', 'eyJ1c2VyX2lkIjoxfQ:1neg41:qOOPvLCBrgyKgeLzU7IfOI3s724N4mKfk5qzc5YfMbY', '2022-04-27 16:41:53.220602'),
('28z8ty86ba1uz50zyelzro0i4j7w5jf8', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1ngTRP:bqxuNvS4QYVlzdtsHp-ZEkCDz-XNKNnyTHjl_xCVViQ', '2022-05-02 15:37:27.793002'),
('44pdlxv4kwozvufasxf3nrycpdprrml4', 'eyJ1c2VyX2lkIjoxfQ:1nfJZS:EcyJ-slpP-NT8fPUpOgZ1yZn9TpuoyLNzXWz0ESJjGk', '2022-04-29 10:52:58.719936'),
('4eb53vtzhuphnpv3aketknrgdhsk4dps', 'eyJ1c2VyX2lkIjoxfQ:1nfaqT:hKr8eGTUJl9t7IKC2rCMi3zLi1isum0z6Kg-2RCLMzk', '2022-04-30 05:19:41.151403'),
('7eysml1i8fokxpzlqn8xe1vkvud5m1uw', 'eyJ1c2VyX2lkIjoxfQ:1nfHts:KC59B_P50UdPaVDYXg9eZGvfKkW8tmy0gGdPe6agQR0', '2022-04-29 09:05:56.005644'),
('7jezv9725scfgfzg9zbxwxkydq01wiks', 'eyJ1c2VyX2lkIjoxfQ:1ng3en:bga3tVp51GeaEpV_dhko8jNQDvvDxTyJvlFt-l7Vcr4', '2022-05-01 12:05:33.764601'),
('7jvbeeh4f7ru9wzjsz2r3t06d7a4ob6s', 'eyJ1c2VyX2lkIjoxfQ:1nfOwe:iScRYheXnk1Vvt92nnbBdaVD-DuC2jXJ56MY0dlgQKk', '2022-04-29 16:37:16.832651'),
('8pu3s66k7v6gqijnw2g1aqhon9je9ed6', 'eyJvd25lcl9pZCI6MiwidXNlcl9pZCI6MX0:1nnes3:ptjYx_vum3eU0RwHrB-ebj9c5ravVfE6cooP1dGpRNU', '2022-05-22 11:14:39.897558'),
('98x7r4ro59o8469k7orjlkk7yjqqrmqv', 'eyJ1c2VyX2lkIjoxfQ:1ngLTF:umyCVkXrs-l2cKgEmsGd2Tx9ai4o2fV8z-_N6SHc2H0', '2022-05-02 07:06:49.098569'),
('ax8fnz2v2opp45y36u7jvur6qsnxhu5c', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1nhSPC:2NRBYOL4FElVX5g8i9zTMu9dHC2IP-fMxqLVEcgyXFU', '2022-05-05 08:43:14.217477'),
('b3nl973ku1bre111cbbb74eq2wwgvoae', 'eyJ1c2VyX2lkIjoxfQ:1ngHPa:a9ajYFSnDIeY11lnorOl6mMyloOxTUsT-5y6abwb-Ag', '2022-05-02 02:46:46.408178'),
('d01bqoh4jehvjle5qnowoxs4ns2osbbm', 'eyJvd25lcl9pZCI6MiwidXNlcl9pZCI6MX0:1ngkpZ:8Oi7fb-lCkZ2-wMseSAdK9miqdqBa6ELiWxw_9PXZ20', '2022-05-03 10:11:33.059937'),
('dyaotv4zdc0wkde5qutqtkg4xl4nz7qe', 'eyJ1c2VyX2lkIjoxfQ:1nfFt7:CJvqiQIBnCzUGzgYhHLd39FtcTlIF4GmbsE_pEDQS84', '2022-04-29 06:57:01.518280'),
('ehv7250zj6m5yl1hjfdc5a236t36psm2', 'eyJ1c2VyX2lkIjozLCJvd25lcl9pZCI6Mn0:1njuGV:1NA2_4008_rnbbdJVphle5H3RMjU87xFpCHZQ33t80A', '2022-05-12 02:52:23.372613'),
('fg3xaqsyhpe3kmgyhz0s718yxkuso1j5', 'eyJ1c2VyX2lkIjoxfQ:1ng7Hl:ySDvNewEO-VK8wIeO_udoMfNTUJKTEKfQfemqQkp5v4', '2022-05-01 15:58:01.961361'),
('iidli3twgeh43qfcflbhrhz58yc1mlto', 'eyJvd25lcl9pZCI6MiwidXNlcl9pZCI6MX0:1nkjuV:rj3_y8Fns2TWSy4vwADTGIt05Ea6e74qMdPVleFbujw', '2022-05-14 10:01:07.986464'),
('jc4zzug3h5ckpgdt7uunxtbfsnbu2gao', 'eyJ1c2VyX2lkIjoxfQ:1nfGIh:DRWLZyRusZ4mvsFH2i5dsiclqBoLzY8Y86yvkAagPQg', '2022-04-29 07:23:27.000106'),
('jickz3vq59gui9119la67p0g209f2v5x', 'eyJ1c2VyX2lkIjoxfQ:1nerlm:oADrKbKe_6X5fG9CImcLu78CF-IjwQrQfoeC4QKighk', '2022-04-28 05:11:50.379827'),
('k8v7pk3epek117oec7muukre766udsst', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1ngygN:u2WtaGFzQX-soJaHcXXNRlUKL7dTacBB9CNWqOKr5Nc', '2022-05-04 00:58:59.902994'),
('kc0fuirczfdhc63u4m9jnngzkg4zlaxo', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1non7R:SHPpHf5iJExND45mgUbZR53PNc-QwSl18RaJbqGZ3dA', '2022-05-25 14:15:13.426632'),
('mcm1n0kbn6eu74am2xyjfmiadgj0naqu', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1ng6jZ:bV3jLYnn5GxHvKaFBBrgr4hryosGDa_IK3GOdkO7T0k', '2022-05-01 15:22:41.421812'),
('nrqs8nyzo3pcu34bs9ufr07fvo9m8o7m', 'eyJvd25lcl9pZCI6NCwidXNlcl9pZCI6MX0:1nkcUN:x3EDYIisGO9dfvpID5d2IaIXfVDUnwlkhdPW4TN7aJo', '2022-05-14 02:05:39.767455'),
('rcnp1e33gg9db3rhbfugfq8dgqrcxv26', 'eyJvd25lcl9pZCI6MiwidXNlcl9pZCI6MX0:1niCyd:wZg_blwCspdZFQO7t-hUBmRNRpeZYcBhVy9WKED3-SI', '2022-05-07 10:26:55.430756'),
('rzpxozrs5k8ppetluxor4d0d1kjhcvtj', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1nef6e:Udes9XorZ_6IZH5ywZ_l-N6EWopSH0Xm_7OQ3XL8pdE', '2022-04-27 15:40:32.070658'),
('shvdnosy9xnyv88sruc40nkhbsed0ubh', 'eyJ1c2VyX2lkIjoxfQ:1nefeR:kaoa4gN9LgKVAv1a6US9cf99pgu-ozGQUhHzBtrRPBc', '2022-04-27 16:15:27.601800'),
('ucvn679kps5k0gfiopppdbsfqz5lxcsr', 'eyJvd25lcl9pZCI6MiwidXNlcl9pZCI6MX0:1nl4ZB:hJKPESNOFzpb7Mibc97Z8TZKyZRHEoFjmTu4yMDsfB8', '2022-05-15 08:04:29.391934'),
('urpts498l1pptgg38wf489k9y90brz4z', 'eyJ1c2VyX2lkIjoxfQ:1ngO87:_AyYT_y4qJ21pJnDSoNUqR-TTCNUEN-AKNInW-MmW10', '2022-05-02 09:57:11.713637'),
('uwlyfpd8shomwc1u57gmabgjmwy3c00t', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1nkSJM:LSm4XMdpcccs8C4QL4Bx9p8MQUQ3cMU8mb8Ej2eqg7A', '2022-05-13 15:13:36.926936'),
('v7clcm920q2csx3qcmvxlw087vnw9zy1', 'eyJ1c2VyX2lkIjoxfQ:1nentZ:3c-ohlNQ0fwYKyltIZngpeFpjNlDJVUxgZmcz2yIk44', '2022-04-28 01:03:37.869964'),
('w6vw6m0zpaxw01qhg109jlxa4hr81lcg', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1ng0Qj:I_GitccKEK3fvEvQZCh4izssn9qE0mvI2rEQQchBkJw', '2022-05-01 08:38:49.122302'),
('xm2mdiaem32mvq9sues8f9ubhgw1yava', 'eyJvd25lcl9pZCI6Mn0:1nhU2Y:QAV58rD2nx-TeXnaa_vPmrhNU3wDWRVRqB89J3re7NQ', '2022-05-05 10:27:58.391502'),
('zzorzpb19nfkaqzm68ienlb5f975db14', 'eyJ1c2VyX2lkIjoxLCJvd25lcl9pZCI6Mn0:1nfDkw:ejnS4PH5E-tVNWK7bRDC-ODy7aAfLi0jqXO2_8P6D-Q', '2022-04-29 04:40:26.812211');

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

CREATE TABLE IF NOT EXISTS `owner_details` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(90) NOT NULL,
  `owner_email` varchar(254) NOT NULL,
  `owner_adhar` varchar(120) NOT NULL,
  `owner_address` varchar(90) NOT NULL,
  `owner_contact` bigint(20) NOT NULL,
  `owner_dob` date NOT NULL,
  `owner_profile` varchar(100) DEFAULT NULL,
  `owner_license` varchar(100) DEFAULT NULL,
  `owner_password` varchar(200) NOT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`owner_id`, `owner_name`, `owner_email`, `owner_adhar`, `owner_address`, `owner_contact`, `owner_dob`, `owner_profile`, `owner_license`, `owner_password`, `reg_date`, `status`) VALUES
(1, 'Mubeen', 'Mubeen18@gmail.com', '3345 7343 3899', 'Hyderabad', 9573970371, '2022-04-14', 'user/images/avatar-5.jpg', 'user/images/breadcrumb-bg.jpg', 'Mubeen@18', '2022-05-10', 'Rejected'),
(2, 'Afridi', 'Afridi18@gmail.com', '334573431234', 'Hyderabad', 9573970371, '2022-04-20', 'owner/images/face3_oxPbgXv.jpg', 'owner/images/circle_3N9uuDM.svg', 'Afridi@18', '2022-05-06', 'Accepted'),
(3, 'Harish', 'Harish18@gmail.com', '334573433899', 'Hyderabad', 8573970370, '2013-08-28', 'owner/images/face8_W8JlDEz.jpg', 'owner/images/circle_iYLPDP6.svg', 'Harish@18', '2022-05-10', 'Accepted'),
(4, 'Naizamuddin', 'naizam18@gamil.com', '334573433892', 'Hyderabad', 8573970376, '2022-08-29', 'owner/images/face5_puOR1BT.jpg', 'owner/images/circle_FB5Skk3.svg', 'Naizam@18', '2022-04-30', 'Accepted'),
(5, 'Abhinav', 'abhinav18@gmail.com', '334573433898', 'Hyderabad', 9573970376, '2022-04-15', 'owner/images/face9_rPdCB8b.jpg', 'owner/images/circle_tIaFQsc.svg', 'Abhi@18', '2022-04-30', 'pending'),
(6, 'Manoj', 'Manoj18@gmail.com', '334573433899', 'Hyderabad', 9573970378, '2022-04-10', 'owner/images/face9_MLnHc6b.jpg', 'owner/images/circle_XakGyad.svg', 'Manoj@18', '2022-04-30', 'Accepted'),
(7, 'saddam', 'saddamoddin18@gmail.com', '334573433890', 'Hyderabad', 9573970379, '2022-04-28', 'owner/images/face9_PxTZzpl.jpg', 'owner/images/circle_FdbY0LZ.svg', 'Saddam@18', '2022-04-30', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `rent_vehicle`
--

CREATE TABLE IF NOT EXISTS `rent_vehicle` (
  `RentVehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) NOT NULL,
  `RentVehicle_Date_of_Booking` date NOT NULL,
  `RentVehicle_Date_of_Return` date NOT NULL,
  `Total_days` int(11) NOT NULL,
  `RentVehicle_Total_amount` int(11) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `Vehicle_license_plate` varchar(30) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `request_status` varchar(30) NOT NULL,
  `Booking_date` date NOT NULL,
  `user_contact` bigint(20) DEFAULT NULL,
  `user_address` longtext,
  `user_license` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RentVehicle_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `rent_vehicle`
--

INSERT INTO `rent_vehicle` (`RentVehicle_id`, `vehicle_id`, `RentVehicle_Date_of_Booking`, `RentVehicle_Date_of_Return`, `Total_days`, `RentVehicle_Total_amount`, `isAvailable`, `Vehicle_license_plate`, `owner_id`, `user_id`, `user_name`, `user_email`, `request_status`, `Booking_date`, `user_contact`, `user_address`, `user_license`) VALUES
(1, 1, '2022-04-17', '2022-04-18', 1, 2000, 0, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Accepted', '2022-04-30', 9573970379, 'Hyderabad', 'user/images/face3.jpg'),
(13, 1, '2022-04-19', '2022-04-25', 6, 12000, 0, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Accepted', '2022-04-18', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(24, 3, '2022-04-21', '2022-04-24', 3, 6000, 1, 'Ts-1239', 2, 2, 'samadh', 'samadh18@gmail.com', 'Accepted', '2022-05-10', 9573970370, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(30, 1, '2022-04-26', '2022-04-28', 2, 4000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Rejected', '2022-04-19', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(43, 1, '2022-04-26', '2022-04-27', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Accepted', '2022-05-10', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(44, 1, '2022-04-26', '2022-04-27', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-22', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(45, 1, '2022-05-01', '2022-05-02', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-22', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(47, 1, '2022-06-01', '2022-06-02', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-22', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(48, 1, '2022-04-26', '2022-04-27', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-22', 9573970379, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(49, 1, '2022-04-30', '2022-05-01', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-24', 9573970378, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(50, 1, '2022-05-03', '2022-05-04', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-24', 9573970378, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(51, 1, '2022-05-02', '2022-05-03', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-25', 9573970378, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(52, 1, '2022-05-02', '2022-05-03', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-25', 9573970378, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(53, 1, '2022-05-02', '2022-05-03', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Accepted', '2022-04-25', 9573970378, 'Hyderabad', 'user/images/circle_k5As3RV.svg'),
(54, 1, '2022-05-10', '2022-05-11', 1, 2000, 1, 'Ts-1234', 2, 1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Pending', '2022-04-28', 9573970378, 'Hyderabad', 'user/images/10_lScGO6a.webp');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(90) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_adhar` varchar(120) NOT NULL,
  `user_address` varchar(90) NOT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_dob` date NOT NULL,
  `user_profile` varchar(100) DEFAULT NULL,
  `user_license` varchar(100) DEFAULT NULL,
  `user_password` varchar(200) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_adhar`, `user_address`, `user_contact`, `user_dob`, `user_profile`, `user_license`, `user_password`, `reg_date`) VALUES
(1, 'saddam', 'saddamoddin18@gmail.com', '334573433890', 'Hyderabad', 9573970379, '2022-04-18', 'user/images/face18_hxucdww.jpg', 'user/images/details_open.png', 'Saddam@18', '2022-05-07'),
(2, 'samadh', 'samadh18@gmail.com', '3345 7343 4444', 'Hyderabad', 9573970370, '2022-04-18', 'user/images/images123.png', 'user/images/mCSB_buttons_AHmLY4h.png', 'Samadh@18', '2022-04-12'),
(3, 'raju', 'raju18@gmail.com', '3345 7343 3897', 'Hyderabad', 9573970379, '2019-03-27', 'user/images/face5_o8GX3hz.jpg', 'user/images/explorer-logo_whdd82P.png', 'raju@18', '2022-04-26'),
(4, 'saddam', 'saddamoddin20@gmail.com', '334573498903', 'Hyderabad', 9573970379, '2022-04-21', 'user/images/avatar-5_qHSJnzr.jpg', 'user/images/favicon.ico', 'Saddam@18', '2022-04-27'),
(5, 'saddam', 'saddamoddin20@gmail.com', '334573498903', 'Hyderabad', 9573970379, '2022-04-21', 'user/images/avatar-5_bG7PSPr.jpg', 'user/images/favicon_LxcXNoW.ico', 'Saddam@18', '2022-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `userfeedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_feedback` longtext NOT NULL,
  `RentVehicle_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `posted_date` date NOT NULL,
  `vehicle_plate_number` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`userfeedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`userfeedback_id`, `user_name`, `user_email`, `user_feedback`, `RentVehicle_id`, `vehicle_id`, `owner_id`, `user_profile`, `posted_date`, `vehicle_plate_number`) VALUES
(1, 'saddamoddin', 'saddamoddin18@gmail.com', 'Book car rental at affordable prices in 20+ Indian cities. Rent a car for a day, week or month with Revv, best car rental service provider company in India. Hire a car from various self drive cars available online and get best offers on car rentals for daily commute, shopping and outstation travel in India.', 13, 1, 2, 'user/images/images123.png', '2022-04-20', 'Ts-1234'),
(2, 'saddamoddin', 'saddamoddin18@gmail.com', 'It takes more than a beautiful car to provide a first class experience. We believe it takes a perfect blend of skilled people, backed up with leading edge IT and communications to provide you a unique brand of courteous, efficient service.', 13, 2, 2, 'user/images/images.png', '2022-04-20', 'Ts-1245');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE IF NOT EXISTS `vehicle_details` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `vehicle_name` varchar(90) NOT NULL,
  `vehicle_company` varchar(120) NOT NULL,
  `vehicle_model` varchar(90) NOT NULL,
  `Vehicle_fuel` varchar(20) NOT NULL,
  `Vehicle_No_of_Seats` int(11) NOT NULL,
  `Vehicle_color` varchar(30) NOT NULL,
  `Vehicle_license_plate` varchar(30) NOT NULL,
  `Vehicle_image1` varchar(100) NOT NULL,
  `Vehicle_image2` varchar(100) NOT NULL,
  `isGeared` varchar(30) NOT NULL,
  `Vehicle_description` varchar(1500) NOT NULL,
  `Vehicle_price` int(11) NOT NULL,
  `vehicle_uploaded_date` date NOT NULL,
  `Vehicle_image3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `vehicle_details`
--

INSERT INTO `vehicle_details` (`vehicle_id`, `owner_id`, `vehicle_name`, `vehicle_company`, `vehicle_model`, `Vehicle_fuel`, `Vehicle_No_of_Seats`, `Vehicle_color`, `Vehicle_license_plate`, `Vehicle_image1`, `Vehicle_image2`, `isGeared`, `Vehicle_description`, `Vehicle_price`, `vehicle_uploaded_date`, `Vehicle_image3`) VALUES
(1, 2, 'Tata', 'Tata', 'Nano', 'Petrol', 8, 'Blue', 'Ts-12389', 'vehicle/Vehicle_images/car-6_beUAVkV.jpg', 'vehicle/Vehicle_images/bg_1_429hlg9.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 3000, '2022-05-10', 'vehicle/Vehicle_images/car-9_8DVtaLX.jpg'),
(4, 2, 'Mahindra', 'Mahindra', 'Xylo', 'Petrol', 4, 'orange', 'Ts-4567', 'vehicle/Vehicle_images/car-8.jpg', 'vehicle/Vehicle_images/car-8_iU1JvmL.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 2500, '2022-05-10', 'vehicle/Vehicle_images/car-8_iU1JvmL.jpg'),
(8, 2, 'Honda Amaze', 'Honda', 'Amaze', 'CNG', 6, 'yellow', 'Ts-9090', 'vehicle/Vehicle_images/car-2_0a2XE1i.jpg', 'vehicle/Vehicle_images/car-2_2rFKHST.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 1200, '2022-04-13', 'vehicle/Vehicle_images/car-2_2rFKHST.jpg'),
(11, 2, 'Honda Jazz', 'Honda', 'Jazz', 'CNG', 6, 'yellow', 'Ts-9090', 'vehicle/Vehicle_images/car-2_iSywnfb.jpg', 'vehicle/Vehicle_images/car-2_LjHUeUM.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 1500, '2022-04-25', 'vehicle/Vehicle_images/car-2_LjHUeUM.jpg'),
(12, 2, 'Honda Civic', 'Honda', 'Civic', 'Petrol', 3, 'yellow', 'Ts-9090', 'vehicle/Vehicle_images/45748_9YeLMN3.jpg', 'vehicle/Vehicle_images/45748_jYPzkZR.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 1000, '2022-04-13', 'vehicle/Vehicle_images/45748_jYPzkZR.jpg'),
(16, 2, 'Mahindra Scorpio', 'Mahindra', 'Scorpio', 'Petrol', 4, 'yellow', 'MX-124', 'vehicle/Vehicle_images/car-10_NX3yfZh.jpg', 'vehicle/Vehicle_images/car-9.jpg', 'Manual', 'iaiasias', 2000, '2022-04-28', 'vehicle/Vehicle_images/car-10_A3reY9i.jpg'),
(17, 3, 'Maruti 800', 'Maruti', '800', 'Petrol', 4, 'White', 'TS-2345', 'vehicle/Vehicle_images/car-2_n81l8qZ.jpg', 'vehicle/Vehicle_images/car-3_B130xEa.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 2000, '2022-04-30', 'vehicle/Vehicle_images/car-3_hw2aV6Q.jpg'),
(18, 3, 'Mahindra Bolero', 'Mahindra', 'Bolero', 'Diesel', 6, 'Red', 'TS-2450', 'vehicle/Vehicle_images/car-1_lbrYqDR.jpg', 'vehicle/Vehicle_images/car-6_snvtkqT.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 4000, '2022-04-30', 'vehicle/Vehicle_images/car-1_00vp48j.jpg'),
(19, 3, 'Tata Zest', 'Tata', 'Zest', 'Diesel', 6, 'Blue', 'Ts-4356', 'vehicle/Vehicle_images/car-5_MFkBqpF.jpg', 'vehicle/Vehicle_images/bg_2_lrY61qZ.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 3000, '2022-04-30', 'vehicle/Vehicle_images/car-4_En57TkL.jpg'),
(20, 4, 'Maruti Brezza', 'Maruti', 'Brezza', 'Diesel', 4, 'Blue', 'Ts-1239', 'vehicle/Vehicle_images/car-5_2CQ12T0.jpg', 'vehicle/Vehicle_images/car-4_6IlbWJD.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 3000, '2022-04-30', 'vehicle/Vehicle_images/car-4_ZeCuG67.jpg'),
(21, 4, 'Maruti Swift', 'Maruti', 'Swift', 'Diesel', 6, 'yellow', 'MX-1209', 'vehicle/Vehicle_images/car-10_LCvZslO.jpg', 'vehicle/Vehicle_images/car-9_dMdbv9o.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 4000, '2022-04-30', 'vehicle/Vehicle_images/car-10_aqJOUb0.jpg'),
(22, 4, 'Maruti Alto', 'Maruti', 'Alto', 'Diesel', 5, 'white', 'Ts-9091', 'vehicle/Vehicle_images/car-2_OJfubf8.jpg', 'vehicle/Vehicle_images/car-3_utxZS0e.jpg', 'Manual', 'All Types Of Cars Available At Low PricesLarge Range Of VarietiesSelf Drive CarsCall Us For Further Details:B,0,9,9,5,9,7,6,2,4Cars Available:FortunerHexaXuv 500CrystaLodgyInnovaHonda BR VSafariBrezzaVolkswagen PoloVolkswagen AmeoVerna FluidicBalenoSwiftSwift AutomaticDzirei 20CorollaGrand i 10Eon& Many Other Cars Available.Door Step Delivery Also Available.We Are Having LEGAL SELF DRIVEN CAR RENTAL SERVICES LICENCE Which Is Not Available With Most Of The Service Providers.Please Avoid Taking Illegal Cars And Do Not Face Troubles.For More Details You Can reach us 24\\7:B,0,9,9,5,9,7,6,2,4', 2000, '2022-04-30', 'vehicle/Vehicle_images/car-2_lItXYHx.jpg'),
(23, 2, 'Maruti 800', 'Maruti ', '800', 'Petrol', 4, 'blue', 'MX-1298', 'vehicle/Vehicle_images/car-5_NmxapJ6.jpg', 'vehicle/Vehicle_images/car-11_6saRgiJ.jpg', 'Manual', 'kjljkkjkj', 3000, '2022-04-30', 'vehicle/Vehicle_images/car-5_ds2QuoQ.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `cloudhost`
--
CREATE DATABASE IF NOT EXISTS `cloudhost` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloudhost`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add file_upload model', 7, 'add_file_uploadmodel'),
(26, 'Can change file_upload model', 7, 'change_file_uploadmodel'),
(27, 'Can delete file_upload model', 7, 'delete_file_uploadmodel'),
(28, 'Can view file_upload model', 7, 'view_file_uploadmodel'),
(29, 'Can add user model', 8, 'add_usermodel'),
(30, 'Can change user model', 8, 'change_usermodel'),
(31, 'Can delete user model', 8, 'delete_usermodel'),
(32, 'Can view user model', 8, 'view_usermodel'),
(33, 'Can add file_download model', 9, 'add_file_downloadmodel'),
(34, 'Can change file_download model', 9, 'change_file_downloadmodel'),
(35, 'Can delete file_download model', 9, 'delete_file_downloadmodel'),
(36, 'Can view file_download model', 9, 'view_file_downloadmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'userapp', 'file_downloadmodel'),
(7, 'userapp', 'file_uploadmodel'),
(8, 'userapp', 'usermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'userapp', '0001_initial', '2022-05-12 15:05:26.998307'),
(2, 'userapp', '0002_alter_file_uploadmodel_file_size', '2022-05-12 15:07:54.604701'),
(3, 'contenttypes', '0001_initial', '2022-05-12 15:14:26.117862'),
(4, 'auth', '0001_initial', '2022-05-12 15:14:27.262533'),
(5, 'admin', '0001_initial', '2022-05-12 15:14:27.529537'),
(6, 'admin', '0002_logentry_remove_auto_add', '2022-05-12 15:14:27.542884'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-12 15:14:27.562002'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-05-12 15:14:27.757629'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-05-12 15:14:27.859809'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-05-12 15:14:27.954104'),
(11, 'auth', '0004_alter_user_username_opts', '2022-05-12 15:14:27.972974'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-05-12 15:14:28.062184'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-05-12 15:14:28.071385'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-05-12 15:14:28.091866'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-05-12 15:14:28.203059'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-05-12 15:14:28.306359'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-05-12 15:14:28.406529'),
(18, 'auth', '0011_update_proxy_permissions', '2022-05-12 15:14:28.429717'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-05-12 15:14:28.556236'),
(20, 'sessions', '0001_initial', '2022-05-12 15:14:28.684922'),
(21, 'userapp', '0003_remove_file_uploadmodel_file_uploaded_date_and_more', '2022-05-12 15:17:47.739829'),
(22, 'userapp', '0004_file_uploadmodel_status', '2022-05-12 17:02:38.706837'),
(23, 'userapp', '0005_usermodel_status', '2022-05-12 17:06:27.934075'),
(24, 'userapp', '0006_usermodel_otp', '2022-05-13 06:01:45.837132'),
(25, 'userapp', '0007_file_uploadmodel_otp', '2022-05-13 10:32:40.323559'),
(26, 'userapp', '0008_alter_file_uploadmodel_user_id', '2022-05-13 13:30:18.373994'),
(27, 'userapp', '0009_alter_file_uploadmodel_file_size', '2022-05-13 13:31:26.195166'),
(28, 'userapp', '0010_file_uploadmodel_file_download', '2022-05-14 11:41:32.236030'),
(29, 'userapp', '0011_remove_file_uploadmodel_file_download', '2022-05-14 11:53:33.177844'),
(30, 'userapp', '0012_file_downloadmodel', '2022-05-14 11:55:34.419677'),
(31, 'userapp', '0013_rename_file_uploded_date_file_downloadmodel_file_download_date', '2022-05-14 11:56:51.026210'),
(32, 'userapp', '0014_delete_file_downloadmodel', '2022-05-14 12:11:01.337718');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3iqq2jrvoz71u88i6t0og5neoyy6ui3r', 'eyJ1c2VyX2lkIjozfQ:1nqPMU:EnrarNtyMh-XqVag5asuRsdz-ho7N-itmLiTvKkLB3E', '2022-05-30 01:17:26.021885'),
('72new91vxa0i9rn43f3zqowezvjif7rs', 'eyJ1c2VyX2lkIjoxLCJmaWxlX2lkIjoxfQ:1nptJ1:r6bsDgBSe7jNYgcY2C9685qKTEWfzqTGgXRc7tcpW98', '2022-05-28 15:03:43.638553'),
('xfabifws26d75shzdic97i1ryna8thh9', 'eyJ1c2VyX2lkIjozfQ:1nq9EM:3d8ylEFVIS3vNPEg1vHi0vShuHfeWByzE-lY3Z0z1qQ', '2022-05-29 08:03:58.844626');

-- --------------------------------------------------------

--
-- Table structure for table `file_details`
--

CREATE TABLE IF NOT EXISTS `file_details` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `file_uploded_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `file_details`
--

INSERT INTO `file_details` (`file_id`, `user_id`, `file`, `file_name`, `file_size`, `file_type`, `file_uploded_date`, `status`, `otp`) VALUES
(1, 1, 'user_image/face23_SoiKyrf.jpg', 'face23.jpg', 13581, 'image/jpeg', '2022-05-12', 'Accepted', 287408),
(2, 1, 'user_image/face7.jpg', 'face7.jpg', 10400, 'image/jpeg', '2022-05-12', 'Accepted', 549923),
(3, 1, 'user_image/leave_letter.pdf', 'leave letter.pdf', 302908, 'application/pdf', '2022-05-13', 'Accepted', 111301),
(4, 1, 'user_image/leave_letter.doc', 'leave letter.doc', 179200, 'application/msword', '2022-05-13', 'Accepted', 890318),
(12, 1, 'user_image/pexels-pixabay-460376.jpg', 'pexels-pixabay-460376.jpg', 5722897, 'image/jpeg', '2022-05-14', 'Accepted', 886644),
(13, 1, 'user_image/pexels-sevenstorm-juhaszimrus-439391.jpg', 'pexels-sevenstorm-juhaszimrus-439391.jpg', 3606761, 'image/jpeg', '2022-05-14', 'Accepted', NULL),
(14, 1, 'user_image/pexels-pixabay-53610.jpg', 'pexels-pixabay-53610.jpg', 548243, 'image/jpeg', '2022-05-14', 'Rejected', NULL),
(15, 1, 'user_image/pexels-pixabay-53610_8xMbYEv.jpg', 'pexels-pixabay-53610.jpg', 548243, 'image/jpeg', '2022-05-14', 'Rejected', NULL),
(16, 1, 'user_image/pexels-pixabay-53610_Q86EtKJ.jpg', 'pexels-pixabay-53610.jpg', 548243, 'image/jpeg', '2022-05-14', 'Accepted', NULL),
(17, 1, 'user_image/face23_SoiKyrf_vftKdsX.jpg', 'face23_SoiKyrf.jpg', 13581, 'image/jpeg', '2022-05-14', 'Accepted', 228105),
(18, 1, 'user_image/face23_SoiKyrf_y5q67GI.jpg', 'face23_SoiKyrf.jpg', 13581, 'image/jpeg', '2022-05-14', 'Accepted', NULL),
(19, 1, 'user_image/face23_SoiKyrf_F5wG6Vy.jpg', 'face23_SoiKyrf.jpg', 13581, 'image/jpeg', '2022-05-14', 'Accepted', 521672),
(20, 1, 'user_image/face23_SoiKyrf_1_aEd5e6B.jpg', 'face23_SoiKyrf (1).jpg', 13581, 'image/jpeg', '2022-05-14', 'pending', 601991),
(21, 1, 'user_image/face23_SoiKyrf_PoIP3A4.jpg', 'face23_SoiKyrf.jpg', 13581, 'image/jpeg', '2022-05-14', 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `email`, `password`, `mobile`, `location`, `dob`, `user_image`, `reg_date`, `status`, `otp`) VALUES
(1, 'sravani', 'chanuchiramana1800@gmail.com', '1800', 9059501800, 'Nellore', '2022-05-13', 'user_image/face23_SoiKyrf_1.jpg', '2022-05-12', 'Accepted', NULL),
(2, 'srinu', 'srinu@gmail.com', 'srinu', 1234567890, 'Nellore', '2022-05-12', 'user_image/face3.jpg', '2022-05-12', 'Accepted', NULL),
(3, 'saddam', 'saddam@gmail.com', 'saddam', 9573970379, 'hyderabad', '2022-05-12', 'user_image/face7_5wbeKFX.jpg', '2022-05-12', 'Accepted', NULL),
(4, 'srinad', 'srinad@gmail.com', 'srinad', 123456789, 'Bangalore', '2022-05-12', 'user_image/face28.jpg', '2022-05-12', 'Rejected', NULL),
(5, 'Narendra Naidu', 'naninaidu91822@gmail.com', 'nani', 7989464593, 'Nellore', '2022-05-13', 'user_image/face16.jpg', '2022-05-13', 'pending', 9901),
(6, 'ramesh', 'ramesh@gmail.com', 'ramesh', 9059501800, 'Bangalore', '2022-05-20', 'user_image/face20.jpg', '2022-05-13', 'pending', 9181),
(7, 'abhi', 'abhistone98@gmail.com', 'abhi', 8686876108, 'hyderabad', '2022-05-14', 'user_image/face23_SoiKyrf_1_DKmYcP5.jpg', '2022-05-14', 'pending', 5576);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `cloudmanagement`
--
CREATE DATABASE IF NOT EXISTS `cloudmanagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloudmanagement`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user register model', 7, 'add_userregistermodel'),
(26, 'Can change user register model', 7, 'change_userregistermodel'),
(27, 'Can delete user register model', 7, 'delete_userregistermodel'),
(28, 'Can view user register model', 7, 'view_userregistermodel'),
(29, 'Can add file upload model', 8, 'add_fileuploadmodel'),
(30, 'Can change file upload model', 8, 'change_fileuploadmodel'),
(31, 'Can delete file upload model', 8, 'delete_fileuploadmodel'),
(32, 'Can view file upload model', 8, 'view_fileuploadmodel'),
(33, 'Can add access control model', 9, 'add_accesscontrolmodel'),
(34, 'Can change access control model', 9, 'change_accesscontrolmodel'),
(35, 'Can delete access control model', 9, 'delete_accesscontrolmodel'),
(36, 'Can view access control model', 9, 'view_accesscontrolmodel'),
(37, 'Can add user request right model', 10, 'add_userrequestrightmodel'),
(38, 'Can change user request right model', 10, 'change_userrequestrightmodel'),
(39, 'Can delete user request right model', 10, 'delete_userrequestrightmodel'),
(40, 'Can view user request right model', 10, 'view_userrequestrightmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cloud_access_control`
--

CREATE TABLE IF NOT EXISTS `cloud_access_control` (
  `access_control_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_upload` varchar(120) NOT NULL,
  `user_download` varchar(120) NOT NULL,
  `user_update` varchar(120) NOT NULL,
  `posted_date` date NOT NULL,
  PRIMARY KEY (`access_control_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cloud_access_control`
--

INSERT INTO `cloud_access_control` (`access_control_id`, `user_id`, `user_name`, `user_email`, `user_upload`, `user_download`, `user_update`, `posted_date`) VALUES
(8, 9, 'Abhi', 'Abhistone98@gmail.com', 'YES', 'YES', 'YES', '2022-05-16'),
(9, 10, 'saddamoddin', 'saddamoddin18@gmail.com', 'YES', 'NO', 'YES', '2022-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'userapp', 'accesscontrolmodel'),
(8, 'userapp', 'fileuploadmodel'),
(7, 'userapp', 'userregistermodel'),
(10, 'userapp', 'userrequestrightmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-14 11:25:37.502721'),
(2, 'auth', '0001_initial', '2022-05-14 11:25:38.230286'),
(3, 'admin', '0001_initial', '2022-05-14 11:25:38.390751'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-14 11:25:38.405700'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-14 11:25:38.421646'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-14 11:25:38.558191'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-14 11:25:38.634933'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-14 11:25:38.717657'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-14 11:25:38.730614'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-14 11:25:38.806360'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-14 11:25:38.811344'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-14 11:25:38.824300'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-14 11:25:38.900047'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-14 11:25:38.965826'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-14 11:25:39.040576'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-14 11:25:39.055527'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-14 11:25:39.129283'),
(18, 'sessions', '0001_initial', '2022-05-14 11:25:39.199046'),
(19, 'userapp', '0001_initial', '2022-05-14 11:26:53.973202'),
(20, 'userapp', '0002_userrequestrightmodel', '2022-05-14 13:00:32.115135'),
(21, 'userapp', '0003_remove_accesscontrolmodel_token_no_and_more', '2022-05-15 09:21:43.111243'),
(22, 'userapp', '0004_fileuploadmodel_user_name', '2022-05-15 12:56:31.568951'),
(23, 'userapp', '0005_alter_fileuploadmodel_file_and_more', '2022-05-16 07:04:20.984492');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4rbd968t58iffc4qkltp7uvxt7fhm6ee', 'eyJ1c2VyX2lkIjoxfQ:1nqOLG:vPRxe9psqxZesM7gAmIP5lQZjwNv7HINoBYCEWLm8oQ', '2022-05-30 00:12:06.574513'),
('nkeotv6nx67ey7cx2lv508884khzstlw', 'eyJ1c2VyX2lkIjoxLCJ1c2VyIjoyfQ:1nq91t:ngeGQEFGjhJz-nG1p7gNge720X-82vNNNG2ZsR6BIPY', '2022-05-29 07:51:05.535255'),
('vu8rac4pxn68p51npapfn76o3w6lb9cc', 'eyJ1c2VyX2lkIjoxMCwidXNlciI6MTB9:1nqbNW:Vo1HzyNRNpW6H5N29gh0Q8y-7pIAupCaBrALHPqdRIo', '2022-05-30 14:07:18.912253');

-- --------------------------------------------------------

--
-- Table structure for table `file_details`
--

CREATE TABLE IF NOT EXISTS `file_details` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `file_uploded_date` date NOT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `file_details`
--

INSERT INTO `file_details` (`file_id`, `user_id`, `file`, `file_name`, `file_size`, `file_type`, `file_uploded_date`, `user_name`) VALUES
(7, 10, 'files/test.txt', 'test.txt', 36, 'text/plain', '2022-05-16', 'saddamoddin'),
(8, 9, 'saddam.txt', 'saddam.txt', 39, 'text/plain', '2022-05-16', 'Abhi '),
(9, 9, 'files/popup.txt', 'popup.txt', 9090, 'text/plain', '2022-05-16', 'Abhi ');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_state` varchar(120) NOT NULL,
  `user_dob` date NOT NULL,
  `user_profile` varchar(100) DEFAULT NULL,
  `user_password` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `token_no` int(11) DEFAULT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_contact`, `user_state`, `user_dob`, `user_profile`, `user_password`, `status`, `otp`, `token_no`, `reg_date`) VALUES
(9, 'Abhi ', 'Abhistone98@gmail.com', 9573970379, 'Madhya Pradesh', '1999-04-18', 'images/face5_GWB60SM.jpg', 'Abhi@18', 'Accepted', 1982, 31595438, '2022-05-16'),
(10, 'saddamoddin', 'saddamoddin18@gmail.com', 9573970379, 'Andhra Pradesh', '2022-05-11', 'images/face8_ON0fHr1.jpg', 'Saddam@18', 'Accepted', 2279, 58586393, '2022-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_rights`
--

CREATE TABLE IF NOT EXISTS `user_request_rights` (
  `rights_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_request` varchar(120) NOT NULL,
  `status` varchar(50) NOT NULL,
  `posted_date` date NOT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`rights_request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user_request_rights`
--

INSERT INTO `user_request_rights` (`rights_request_id`, `user_id`, `user_name`, `user_request`, `status`, `posted_date`, `user_email`) VALUES
(12, 10, 'saddamoddin', 'UPDATE', 'Accepted', '2022-05-16', 'saddamoddin18@gmail.com'),
(13, 9, 'Abhi ', 'UPDATE', 'Pending', '2022-05-16', 'Abhistone98@gmail.com'),
(14, 10, 'saddamoddin', 'DOWNLOAD', 'Pending', '2022-05-16', 'saddamoddin18@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `doctor_appointment`
--
CREATE DATABASE IF NOT EXISTS `doctor_appointment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `doctor_appointment`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_details`
--

CREATE TABLE IF NOT EXISTS `appointment_details` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_from_time` time(6) NOT NULL,
  `appointment_to_time` time(6) NOT NULL,
  `slots` int(11) NOT NULL,
  `available_slots` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `appointment_type` varchar(90) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `appointment_details`
--

INSERT INTO `appointment_details` (`appointment_id`, `doctor_id`, `appointment_date`, `appointment_from_time`, `appointment_to_time`, `slots`, `available_slots`, `date_added`, `appointment_type`, `payment`) VALUES
(1, 1, '2022-03-25', '08:44:00.000000', '09:44:00.000000', 10, NULL, '2022-03-28', 'In-clinic', 250),
(2, 1, '2022-03-25', '21:44:00.000000', '22:44:00.000000', 10, NULL, '2022-03-28', NULL, 250),
(3, 2, '2022-03-26', '10:04:00.000000', '11:04:00.000000', 12, NULL, '2022-03-28', 'In-clinic', 250),
(4, 2, '2022-03-26', '10:04:00.000000', '11:04:00.000000', 12, NULL, '2022-03-28', 'In-clinic', 250),
(5, 1, '2022-03-25', '22:11:00.000000', '23:11:00.000000', 20, NULL, '2022-03-28', NULL, 250),
(6, 1, '2022-03-01', '17:41:00.000000', '18:41:00.000000', 10, NULL, '2022-03-28', NULL, 250),
(7, 1, '2022-03-27', '17:44:00.000000', '18:44:00.000000', 15, NULL, '2022-03-28', NULL, 250),
(13, 25, '2022-04-02', '10:18:00.000000', '11:21:00.000000', 9, 0, '2022-03-30', 'In-clinic', 250),
(14, 25, '2022-04-03', '10:19:00.000000', '11:20:00.000000', 10, 9, '2022-03-30', 'Video Consult', 550),
(15, 2, '2022-03-25', '08:36:00.000000', '09:36:00.000000', 10, 10, '2022-03-30', 'In-clinic', 250),
(16, 27, '2022-03-05', '10:50:00.000000', '11:50:00.000000', 12, 9, '2022-03-30', 'In-clinic', 250),
(17, 29, '2022-04-01', '09:04:00.000000', '10:04:00.000000', 10, 9, '2022-03-31', 'In-clinic', 250),
(19, 31, '2022-04-02', '13:39:00.000000', '14:39:00.000000', 12, 10, '2022-03-31', 'In-clinic', 250),
(20, 31, '2022-04-18', '10:06:00.000000', '11:07:00.000000', 10, 10, '2022-04-03', 'Video Consult', 550),
(21, 35, '2022-04-04', '07:33:00.000000', '08:33:00.000000', 10, 7, '2022-04-03', 'In-clinic', 550),
(22, 25, '2022-04-03', '10:32:00.000000', '10:33:00.000000', 8, 8, '2022-04-03', 'Video Consult', 550),
(23, 25, '2022-04-07', '06:41:00.000000', '06:41:00.000000', 12, 12, '2022-04-06', 'Video Consult', 550);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user register model', 7, 'add_userregistermodel'),
(26, 'Can change user register model', 7, 'change_userregistermodel'),
(27, 'Can delete user register model', 7, 'delete_userregistermodel'),
(28, 'Can view user register model', 7, 'view_userregistermodel'),
(29, 'Can add user appointment', 8, 'add_userappointment'),
(30, 'Can change user appointment', 8, 'change_userappointment'),
(31, 'Can delete user appointment', 8, 'delete_userappointment'),
(32, 'Can view user appointment', 8, 'view_userappointment'),
(33, 'Can add user feedback model', 9, 'add_userfeedbackmodel'),
(34, 'Can change user feedback model', 9, 'change_userfeedbackmodel'),
(35, 'Can delete user feedback model', 9, 'delete_userfeedbackmodel'),
(36, 'Can view user feedback model', 9, 'view_userfeedbackmodel'),
(37, 'Can add doctor registerment model', 10, 'add_doctorregistermentmodel'),
(38, 'Can change doctor registerment model', 10, 'change_doctorregistermentmodel'),
(39, 'Can delete doctor registerment model', 10, 'delete_doctorregistermentmodel'),
(40, 'Can view doctor registerment model', 10, 'view_doctorregistermentmodel'),
(41, 'Can add doctor profile model', 11, 'add_doctorprofilemodel'),
(42, 'Can change doctor profile model', 11, 'change_doctorprofilemodel'),
(43, 'Can delete doctor profile model', 11, 'delete_doctorprofilemodel'),
(44, 'Can view doctor profile model', 11, 'view_doctorprofilemodel'),
(45, 'Can add appointment date time model', 12, 'add_appointmentdatetimemodel'),
(46, 'Can change appointment date time model', 12, 'change_appointmentdatetimemodel'),
(47, 'Can delete appointment date time model', 12, 'delete_appointmentdatetimemodel'),
(48, 'Can view appointment date time model', 12, 'view_appointmentdatetimemodel'),
(49, 'Can add contact us model', 13, 'add_contactusmodel'),
(50, 'Can change contact us model', 13, 'change_contactusmodel'),
(51, 'Can delete contact us model', 13, 'delete_contactusmodel'),
(52, 'Can view contact us model', 13, 'view_contactusmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `usercontact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `query` longtext NOT NULL,
  `contact` bigint(20) NOT NULL,
  `feedback` longtext NOT NULL,
  PRIMARY KEY (`usercontact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`usercontact_id`, `name`, `email`, `query`, `contact`, `feedback`) VALUES
(1, 'saddamoddin', 'saddamoddin18@gmail.com', 'dfkldkfm', 9573970379, 'klsclnsldczsdxxcmk'),
(3, 'saddamoddin', 'saddamoddin18@gmail.com', 'jksdj', 9573970379, 'djksjdjs'),
(4, 'saddamoddin', 'saddamoddin18@gmail.com', 'jksdj', 9573970379, 'djksjdjs'),
(5, 'saddamoddin', 'saddamoddin18@gmail.com', 'iuihihihhu', 9573970379, 'gyugghvvjgvgyugyugyu hu'),
(6, 'saddamoddin', 'saddamoddin18@gmail.com', 'sdcsdcs', 9573970379, 'scddscdscdsc');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'doctorapp', 'appointmentdatetimemodel'),
(11, 'doctorapp', 'doctorprofilemodel'),
(10, 'doctorapp', 'doctorregistermentmodel'),
(13, 'mainapp', 'contactusmodel'),
(6, 'sessions', 'session'),
(8, 'userapp', 'userappointment'),
(9, 'userapp', 'userfeedbackmodel'),
(7, 'userapp', 'userregistermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-23 18:06:05.923886'),
(2, 'auth', '0001_initial', '2022-03-23 18:06:06.785420'),
(3, 'admin', '0001_initial', '2022-03-23 18:06:06.979358'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-23 18:06:06.996341'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-23 18:06:07.015278'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-23 18:06:07.258465'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-23 18:06:07.332757'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-23 18:06:07.416681'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-23 18:06:07.432629'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-23 18:06:07.518570'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-23 18:06:07.524551'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-23 18:06:07.539487'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-23 18:06:07.617396'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-23 18:06:07.689996'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-23 18:06:07.765163'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-23 18:06:07.791311'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-23 18:06:07.869792'),
(18, 'sessions', '0001_initial', '2022-03-23 18:06:07.947588'),
(19, 'doctorapp', '0001_initial', '2022-03-23 18:07:38.494073'),
(20, 'userapp', '0001_initial', '2022-03-23 18:08:50.045659'),
(21, 'mainapp', '0001_initial', '2022-03-23 18:10:31.283052'),
(22, 'doctorapp', '0002_doctorprofilemodel_status', '2022-03-24 12:42:18.212011'),
(23, 'doctorapp', '0003_appointmentdatetimemodel_doctor_name', '2022-03-24 15:11:20.425326'),
(24, 'doctorapp', '0004_remove_appointmentdatetimemodel_doctor_name_and_more', '2022-03-24 16:59:43.090084'),
(25, 'doctorapp', '0005_doctorprofilemodel_doctor_email', '2022-03-24 18:12:44.837612'),
(26, 'userapp', '0002_userappointment_doctor_id', '2022-03-25 17:25:45.483597'),
(27, 'doctorapp', '0006_remove_doctorregistermentmodel_status_and_more', '2022-03-26 01:49:46.489036'),
(28, 'doctorapp', '0007_doctorprofilemodel_id', '2022-03-26 06:57:02.638858'),
(29, 'doctorapp', '0008_alter_doctorprofilemodel_id', '2022-03-26 06:58:37.820935'),
(30, 'doctorapp', '0009_alter_doctorprofilemodel_id', '2022-03-26 07:02:49.508569'),
(31, 'doctorapp', '0010_remove_doctorprofilemodel_id_doctorprofilemodel_demo', '2022-03-26 07:06:03.021037'),
(32, 'doctorapp', '0011_alter_doctorprofilemodel_demo', '2022-03-26 07:06:03.030977'),
(33, 'doctorapp', '0012_doctorprofilemodel_obj', '2022-03-26 07:12:26.070129'),
(34, 'doctorapp', '0013_remove_doctorprofilemodel_demo', '2022-03-26 07:41:38.880433'),
(35, 'doctorapp', '0014_remove_doctorprofilemodel_obj', '2022-03-26 08:06:45.751717'),
(36, 'userapp', '0003_remove_userappointment_doctor_id_and_more', '2022-03-28 11:06:41.757931'),
(37, 'doctorapp', '0015_appointmentdatetimemodel_available_slots_and_more', '2022-03-28 15:00:03.134277'),
(38, 'doctorapp', '0016_appointmentdatetimemodel_appointment_type_and_more', '2022-03-30 10:52:28.223933'),
(39, 'userapp', '0004_userappointment_price', '2022-03-31 05:49:41.872200'),
(40, 'doctorapp', '0017_doctorprofilemodel_disease', '2022-03-31 09:40:02.356133'),
(41, 'doctorapp', '0018_doctorprofilemodel_doctors', '2022-04-01 07:26:24.445048'),
(42, 'doctorapp', '0019_alter_doctorprofilemodel_doctors', '2022-04-01 11:49:58.660223'),
(43, 'doctorapp', '0020_remove_doctorprofilemodel_doctors', '2022-04-01 11:51:33.912957'),
(44, 'userapp', '0005_userappointment_user_details', '2022-04-03 16:20:13.622299'),
(45, 'userapp', '0006_alter_userappointment_user_details', '2022-04-04 05:05:08.008953'),
(46, 'userapp', '0007_userfeedbackmodel_appointment', '2022-04-04 06:03:42.478243'),
(47, 'userapp', '0008_alter_userfeedbackmodel_appointment', '2022-04-04 08:23:21.001160'),
(48, 'userapp', '0009_alter_userfeedbackmodel_appointment', '2022-04-04 08:23:21.153414'),
(49, 'userapp', '0010_alter_userfeedbackmodel_appointment', '2022-04-04 08:23:21.165075'),
(50, 'userapp', '0011_remove_userfeedbackmodel_appointment_and_more', '2022-04-04 14:45:50.415897'),
(51, 'userapp', '0012_userfeedbackmodel_appointment', '2022-04-04 14:57:42.697748'),
(52, 'userapp', '0013_remove_userfeedbackmodel_appointment_and_more', '2022-04-04 15:49:05.387523'),
(53, 'doctorapp', '0021_alter_doctorprofilemodel_doctor_email', '2022-04-05 06:08:15.432342'),
(54, 'userapp', '0014_remove_userfeedbackmodel_user', '2022-04-05 11:30:04.933848'),
(55, 'userapp', '0015_remove_userappointment_user_details', '2022-04-05 14:25:37.806262'),
(56, 'userapp', '0016_userappointment_user', '2022-04-06 01:23:40.035832'),
(57, 'userapp', '0017_alter_userappointment_user', '2022-04-06 01:29:06.501778'),
(58, 'userapp', '0018_remove_userappointment_user', '2022-04-06 01:35:19.797459'),
(59, 'userapp', '0019_userappointment_user', '2022-04-06 05:59:32.171726'),
(60, 'userapp', '0020_remove_userappointment_user', '2022-04-06 06:21:45.089326');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1sl43ysb8rw8rqm4beuc9cy9wzhk4ry8', 'eyJkb2N0b3JfaWQiOjI1fQ:1ngUH5:QXitbtQoqwoLPg-WXP20pA6ZHdo0Bphkzn1KLAoew8I', '2022-05-02 16:30:51.576823'),
('3d3r4y7sst0iirceu6w1slkkfjk0ccp3', 'eyJ1c2VyX2lkIjoxLCJlbWFpbCI6IkFmcmlkaTE4QGdtYWlsLmNvbSJ9:1nesV6:0fRt33pNNjQYWHJjGpyy8EwrMheAC-9xSWyQ0KbqEQU', '2022-04-28 05:58:40.283020'),
('4l1urwng1skdpj62rsn3f7c01rd8e6jf', 'eyJkb2N0b3JfaWQiOjM3fQ:1nkfgh:czc6rqon0hzv7-YsZFHu9rhOiueKG3ZfJxZq5szCXYk', '2022-05-14 05:30:35.869698'),
('8y846ot2015ev0mi6sc4ofme7j76m08q', 'eyJ1c2VyX2lkIjoxLCJlbWFpbCI6IkFmcmlkaTE4QGdtYWlsLmNvbSJ9:1nfayR:iX4lg7xRn7j3cbuo0Fd4ZdYQAlgFVDv8Xqb1uLczQgE', '2022-04-30 05:27:55.448997'),
('9610jjep7jljtpl37qzlfhfmod7sf0wg', 'eyJkb2N0b3JfaWQiOjI1fQ:1nfIFR:UvHMUEP5WVsjOER1as7LgCDD2Y1dD92R6fgijxJcxZM', '2022-04-29 09:28:13.880551'),
('c7egmtrn4b5lg9fqihtnt59w1viokaxt', 'eyJ1c2VyX2lkIjoyLCJlbWFpbCI6InNhZGRhbW9kZGluMThAZ21haWwuY29tIn0:1nhTZR:NwEDUSLayXP6qH5akU1rHHldJ9VuzMoK2wmgIjbyfpY', '2022-05-05 09:57:53.163549'),
('cv5ignujbgd85wnweu39guwp6cz6p3bj', 'eyJ1c2VyX2lkIjoxLCJlbWFpbCI6IkFmcmlkaTE4QGdtYWlsLmNvbSJ9:1ngOfy:IF55AksQjn4m_20H3IGSYGPkh2K4o3zeqeTGP3E9uzk', '2022-05-02 10:32:10.705703'),
('eucr55ue68q3s0szwzdq4b72u9njqbi0', 'eyJkb2N0b3JfaWQiOjI1fQ:1niDyB:lUi0roejC1ZAOTvTFg0XRApqJzF6ive7MFNs6cMWziA', '2022-05-07 11:30:31.503790'),
('icbtlev4nynspr8ucpynue9x1w4zaa1v', 'eyJkb2N0b3JfaWQiOjI1fQ:1ne9dP:VOLrVXpstNBk5yaGAO62vLr2oSeP_GiKws7Gk5mhTIw', '2022-04-26 06:04:15.546853'),
('lk9nfuh7uw9j7nec539th278cvnfytk6', 'eyJkb2N0b3JfaWQiOjIxLCJ1c2VyX2lkIjoxfQ:1nY8Uc:obtbOqdZFflFMTjXx5V_qcc2kW8Z4MRRTGW51OYez-0', '2022-04-09 15:38:18.046095'),
('m3n5nju5c666af8gyj1rg5e3uj3u62oa', 'eyJ1c2VyX2lkIjoyLCJlbWFpbCI6InNhZGRhbW9kZGluMThAZ21haWwuY29tIn0:1noKWm:_LNMXb_FKOAAfYsdwxA_NiKxZaC_hqGyPqZ8JpuShe0', '2022-05-24 07:43:28.879506'),
('mjuknvz6b3v25b9kgnmtfzlpz828njk7', 'eyJ1c2VyX2lkIjoxLCJlbWFpbCI6IkFmcmlkaTE4QGdtYWlsLmNvbSJ9:1ngKlE:PTnjgHgY9UTBXRpaw_EDviMlU6w4arahpF2-wKJO9lU', '2022-05-02 06:21:20.827243'),
('njuncgkgq2mt97ckzqj0nxacpv1ytji5', 'eyJ1c2VyX2lkIjoyLCJlbWFpbCI6InNhZGRhbW9kZGluMThAZ21haWwuY29tIn0:1nkkCy:dMedo9NkRD9IEnS3vb24UdkFBoE-9Gg3j0MOl3ibGdc', '2022-05-14 10:20:12.170180'),
('qb14a3aodh41vadj771qpcky7k58z4xc', 'eyJ1c2VyX2lkIjoyLCJlbWFpbCI6InNhZGRhbW9kZGluMThAZ21haWwuY29tIn0:1noFLo:jMWxUs0m6LU2hJNWipLFnqQBtU3cHAxkJmfZoO1AOCY', '2022-05-24 02:11:48.596905'),
('s2k21g1qneqk5fhni0ol9mlyflz2qnpb', 'eyJkb2N0b3JfaWQiOjI1fQ:1nhUsj:Ao8KR98fRiVARrOOzDjwPSAr3KrO9BY6ITIldRyOAxc', '2022-05-05 11:21:53.255221'),
('spi7psd5zbeq53fpxhrondamk75h6vqh', 'eyJ1c2VyX2lkIjo0LCJlbWFpbCI6Im5pemFtMThAZ21haWwuY29tIn0:1ngytr:op9OQ49Rk6lefGHzD4XTyfTJgYVAN1SRsw-2VD2LV3g', '2022-05-04 01:12:55.099892'),
('yocgo54h5okxqwxos0ragfa6geyjvfkf', 'eyJ1c2VyX2lkIjoyLCJlbWFpbCI6InNhZGRhbW9kZGluMThAZ21haWwuY29tIn0:1nm8Bp:W_sUnJmlXaEchXpaukvMhlfljjUqopFpHtZcJyLnPk4', '2022-05-18 06:08:45.346332'),
('z4qfg1661jx0dc6rsbxorsrmuk2aprql', 'eyJ1c2VyX2lkIjozLCJlbWFpbCI6InNhbWFkaDkwQGdtYWlsLmNvbSIsImRvY3Rvcl9pZCI6MjV9:1ncnlP:CM__07tm-PTOE9ranJoqYBRrneUk4ePREDqDwukUqzs', '2022-04-22 12:30:55.953402'),
('z7j7t9b17gfvs9s57cas68561cu1j9th', 'eyJ1c2VyX2lkIjozLCJkb2N0b3JfaWQiOjI1LCJlbWFpbCI6InNhbWFkaDkwQGdtYWlsLmNvbSJ9:1nc9in:T0B4Z6oMi_c6r_isTUhg55pQXFMD1KPZP-E6by5L6yw', '2022-04-20 17:45:33.418556'),
('zxd7ed51mmq8y5nwhyet63mmtk3753t7', 'eyJkb2N0b3JfaWQiOjF9:1nY5pi:Ei2QN8njKUfntzHzOt6JXS2by_3hPWs62_wWnXtMiDs', '2022-04-09 12:47:54.964733');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE IF NOT EXISTS `doctor_details` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `gmail` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`doctor_id`, `name`, `gmail`, `password`, `reg_date`) VALUES
(2, 'Mubeen', 'Mubeen19@gmail.com', 'Mubeen18', '2022-03-24'),
(3, 'Rahul Kumar', 'Rahul18@gmail.com', 'Rahul@1567', '2022-03-24'),
(4, 'Abhilash', 'Abhilash18@gmail.com', 'Abhilash@76', '2022-03-24'),
(5, 'Rajesh', 'Rajesh@gmail.com', 'Rajesh@18', '2022-03-24'),
(6, 'Naveen', 'Naveen49@gmail.com', 'Naveen@18', '2022-03-24'),
(7, 'Akhil', 'Akhil18@gmail.com', 'Akhil1234', '2022-03-24'),
(8, 'saideep', 'saideep18@gmail.com', 'Saideep@18', '2022-03-24'),
(9, 'yeshwanth', 'yeshwanth@gmail.com', 'Yeshu@18', '2022-03-24'),
(10, 'samadh', 'samadh649@gmail.com', 'Samadh@1323', '2022-03-24'),
(11, 'Karthik kumar', 'Karthik18@gmail.com', 'Karthik@18', '2022-03-24'),
(12, 'Mahesh', 'Mahesh@gmail.com', 'Mahesh@18', '2022-03-25'),
(13, 'Ramesh', 'Ramesh18@gmail.com', 'Ramesh1234', '2022-03-25'),
(14, 'surya', 'surya456@gmail.com', 'Anand@123', '2022-03-26'),
(15, 'srinath', 'anand123@gmail.com', 'Anand@123', '2022-03-26'),
(16, 'srivani', 'suryaand123@gmail.com', 'Anand@123', '2022-03-26'),
(17, 'srimana', 'surya987@gmail.com', 'Anand@123', '2022-03-26'),
(18, 'some', 'something@123gmail.com', 'Anand@123', '2022-03-26'),
(19, 'mark selby', 'mark@gmail.com', 'Mark@123', '2022-03-26'),
(20, 'srikanth', 'srikanth18@gmail.com', 'Srikanth@18', '2022-03-26'),
(21, 'Nizam', 'Nizam@gmail.com', 'Nizam@18', '2022-03-26'),
(22, 'Arun', 'Arun10@gmail.com', 'Arun12345', '2022-03-27'),
(23, 'AjayKumar', 'Ajay18@gmail.com', 'Ajaykmar12', '2022-03-27'),
(24, 'Manohar', 'Manohar12@gmail.com', 'Manohar@18', '2022-03-27'),
(25, 'Tarun', 'Tarun18@gmail.com', 'Tarun123456', '2022-03-28'),
(26, 'Galib', 'Galib18@gmail.com', 'Galib123456', '2022-03-30'),
(27, 'srinath', 'srinath10@gmail.com', 'Srinath@18', '2022-03-30'),
(28, 'Ganesh', 'ganesh18@gmail.com', 'Ganesh@18', '2022-03-31'),
(29, 'Naveen', 'Naveen18@gmail.com', 'Naveen@18', '2022-03-31'),
(30, 'Arunkumar', 'arun18@gmail.com', 'Arun123456', '2022-03-31'),
(31, 'Sai Teja', 'saiteja18@gmail.com', 'Saiteja18', '2022-04-02'),
(32, 'kirankumar', 'kiran18@gmail.com', 'Kiran123456', '2022-03-31'),
(33, 'Akhilkumar', 'Akhil20@gmail.com', 'Akhil123456', '2022-03-31'),
(35, 'Raghu ', 'raghu18@gmail.com', 'Raghu12345', '2022-04-03'),
(36, 'Pavan', 'pavan18@gmail.com', 'Pavan@18', '2022-04-03'),
(37, 'akhil', 'akhil123@gmail.com', 'Akhil@18', '2022-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profile_details`
--

CREATE TABLE IF NOT EXISTS `doctor_profile_details` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_contact` bigint(20) NOT NULL,
  `doctor_experience` varchar(90) NOT NULL,
  `doctor_specialization` varchar(90) NOT NULL,
  `doctor_qualification` varchar(90) NOT NULL,
  `doctor_city` varchar(90) NOT NULL,
  `doctor_address` longtext NOT NULL,
  `doctor_licence` varchar(100) DEFAULT NULL,
  `doctor_profile` varchar(100) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `doctor_email` varchar(100) DEFAULT NULL,
  `Disease` longtext,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `doctor_profile_details`
--

INSERT INTO `doctor_profile_details` (`doctor_id`, `doctor_contact`, `doctor_experience`, `doctor_specialization`, `doctor_qualification`, `doctor_city`, `doctor_address`, `doctor_licence`, `doctor_profile`, `reg_date`, `status`, `doctor_name`, `doctor_email`, `Disease`) VALUES
(2, 8573970379, '8', 'Dermatologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/safari-logo.png', 'doctor/images/test-thumb4_freXK7e.jpg', '2022-04-29', 'Accepted', 'Mubeen', 'abhistone98@gmail.com', 'acne , itchy skin , skin cancer , skin infections'),
(3, 9583970379, '12', 'Dermatologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/circle.svg', 'doctor/images/test-thumb1_tVCcCg5.jpg', '2022-04-05', 'Accepted', 'Rahul Kumar\n', 'Rahul18@gmail.com', NULL),
(4, 9573970379, '8', 'Dermatologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/circle_ih6SrVT.svg', 'doctor/images/test-thumb3_7nmb31s.jpg', '2022-04-29', 'Accepted', 'Abhilash', 'Abhilash18@gmail.com', NULL),
(5, 9503970379, '13', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/netscape-logo.png', 'doctor/images/test-thumb1_VIXVkuQ.jpg', '2022-04-05', 'Accepted', 'Rajesh', 'Rajesh@gmail.com', 'chest pain , high blood pressure '),
(6, 9578970379, '8', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/safari-logo_bY8Ilag.png', 'doctor/images/test-thumb1_2rvxgxq.jpg', '2022-04-18', 'Accepted', 'Naveen', 'Naveen49@gmail.com', NULL),
(7, 8573970370, '13', 'Dentist', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/Group_4.jpg', 'doctor/images/test-thumb3_j3BqEg9.jpg', '2022-04-18', 'Accepted', 'Akhil', 'abhijakka98@gmail.com', 'cavities , gum disease , oral cancer'),
(8, 9573970373, '8', 'Neurologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/opera-logo.png', 'doctor/images/test-thumb3_SJmnYVV.jpg', '2022-04-05', 'Accepted', 'saideep', 'saideep18@gmail.com', 'back pain , headache .brain tumor'),
(9, 9573970376, '8', 'Ophthalmologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/img_3.jpg', 'doctor/images/test-thumb4_R4JngHr.jpg', '2022-04-05', 'Accepted', 'yeshwanth\n', 'yeshwanth@gmail.com', 'dry eyes , injuries and trauma'),
(11, 9573970371, '12', 'Dentist', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/circle_vLLgvBf.svg', 'doctor/images/test-thumb3_j3BqEg9.jpg', '2022-04-05', 'Accepted', 'Karthik kumar', 'Karthik18@gmail.com', NULL),
(25, 9573970379, '14', 'Dentist', 'MBBS', 'Hyderabad', 'hyderabad', 'doctor/images/circle_E0PmFUm.svg', 'doctor/images/face8_WF8Fo8i.jpg', '2022-03-28', 'Accepted', 'Tarun', 'Tarun20@gmail.com', 'skin'),
(27, 9573970379, '8', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/firefox-logo_r23YtbM.png', 'doctor/images/1.jpg', '2022-03-30', 'Accepted', 'srinath', 'srinath10@gmail.com', NULL),
(29, 9573970379, '', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/face22.jpg', 'doctor/images/face16.jpg', '2022-04-05', 'Accepted', 'Naveen', 'Naveen18@gmail.com', NULL),
(31, 9573970379, '13', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/face8_SQ8M2GK.jpg', 'doctor/images/face5_RtVeQs2.jpg', '2022-03-31', 'Accepted', 'Sai Teja', 'saiteja18@gmail.com', NULL),
(33, 9573970379, '12', 'Dermatologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/circle_f9Kr2nT.svg', 'doctor/images/face27.jpg', '2022-04-05', 'Rejected', 'Akhilkumar', 'saddamoddin18@gmail.com', 'Skin infections , cold , Skin Cancer'),
(35, 9573970370, '8', 'Cardiologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/circle_63igmJp.svg', 'doctor/images/face18_MD4WGHR.jpg', '2022-04-03', 'Accepted', 'Raghu ', 'raghu18@gmail.com', 'cold , fever'),
(36, 9573970379, '12', 'Dermatologists', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/face8_i38VgIf.jpg', 'doctor/images/face5_nq2e7Pj.jpg', '2022-04-03', 'Accepted', 'Pavan', 'pavan18@gmail.com', 'skin'),
(37, 9573970379, '12', 'Dentist', 'MBBS', 'Hyderabad', 'Hyderabad', 'doctor/images/avatar-blank.jpg', 'doctor/images/avatar-3.jpg', '2022-04-30', 'Rejected', 'akhil', 'akhil123@gmail.com', 'fever');

-- --------------------------------------------------------

--
-- Table structure for table `user_appointment_details`
--

CREATE TABLE IF NOT EXISTS `user_appointment_details` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `departement` varchar(90) NOT NULL,
  `doctor_name` varchar(90) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time(6) NOT NULL,
  `user_fullname` varchar(90) NOT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `appointment_type` varchar(90) NOT NULL,
  `Booking_date` date NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `user_appointment_det_doctor_id_7f9c168d_fk_doctor_Pr` (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `user_appointment_details`
--

INSERT INTO `user_appointment_details` (`appointment_id`, `departement`, `doctor_name`, `appointment_date`, `appointment_time`, `user_fullname`, `user_contact`, `user_email`, `appointment_type`, `Booking_date`, `status`, `doctor_id`, `price`) VALUES
(6, 'Dentist', 'Tarun', '2022-03-29', '05:44:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-31', 'completed', 25, NULL),
(7, 'Dentist', 'Tarun', '2022-03-29', '05:58:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-31', 'completed', 25, NULL),
(8, 'Dentist', 'Tarun', '2022-03-29', '05:58:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(9, 'Dentist', 'Tarun', '2022-03-29', '05:58:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(10, 'Dentist', 'Tarun', '2022-03-29', '05:58:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(11, 'Dentist', 'Tarun', '2022-03-29', '05:58:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(12, 'Dentist', 'Tarun', '2022-03-29', '06:04:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(13, 'Dentist', 'Tarun', '2022-03-29', '06:04:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(14, 'Dentist', 'Tarun', '2022-03-29', '06:04:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(15, 'Dentist', 'Tarun', '2022-03-29', '06:04:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(16, 'Dentist', 'Tarun', '2022-03-29', '06:04:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(17, 'Dentist', 'Tarun', '2022-03-29', '05:43:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-28', 'pending', 25, NULL),
(18, 'Dentist', 'Tarun', '2022-03-29', '04:48:00.000000', 'raju', 9573970379, 'Raju18@gmail.com', 'In-clinic', '2022-03-28', 'pending', 25, NULL),
(19, 'Dentist', 'Tarun', '2022-03-29', '05:06:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(20, 'Dentist', 'Tarun', '2022-03-29', '23:57:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(21, 'Dentist', 'Tarun', '2022-03-29', '07:28:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'In-clinic', '2022-03-28', 'pending', 25, NULL),
(22, 'Dentist', 'Tarun', '2022-03-29', '09:43:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(23, 'Dentist', 'Tarun', '2022-03-29', '09:43:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-28', 'pending', 25, NULL),
(25, 'Dentist', 'Tarun', '2022-03-29', '17:56:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(26, 'Dentist', 'Tarun', '2022-03-29', '20:35:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(27, 'Dentist', 'Tarun', '2022-03-29', '17:35:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(28, 'Dentist', 'Tarun', '2022-03-29', '17:28:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(29, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(30, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(31, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(32, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(33, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(35, 'Dentist', 'Tarun', '2022-03-29', '18:00:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(36, 'Dentist', 'Tarun', '2022-03-29', '08:00:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(37, 'Dentist', 'Tarun', '2022-03-29', '15:06:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(38, 'Dentist', 'Tarun', '2022-03-29', '07:09:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(39, 'Dentist', 'Tarun', '2022-03-29', '18:00:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(40, 'Dentist', 'Tarun', '2022-03-29', '15:00:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(41, 'Dentist', 'Tarun', '2022-03-29', '13:09:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(42, 'Dentist', 'Tarun', '2022-03-29', '20:10:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(43, 'Dentist', 'Tarun', '2022-03-29', '17:44:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(45, 'Dentist', 'Tarun', '2022-03-29', '18:11:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(48, 'Dentist', 'Tarun', '2022-03-29', '18:16:00.000000', 'Abdul Hameed', 9573970379, 'saddamoddin18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(49, 'Dentist', 'Tarun', '2022-03-29', '18:19:00.000000', 'raju', 9573970379, 'Raju18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(50, 'Dentist', 'Tarun', '2022-03-29', '18:19:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(51, 'Dentist', 'Tarun', '2022-03-29', '22:19:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(52, 'Dentist', 'Tarun', '2022-03-29', '16:19:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(53, 'Dentist', 'Tarun', '2022-03-29', '17:44:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(54, 'Dentist', 'Tarun', '2022-03-29', '18:45:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(55, 'Dentist', 'Tarun', '2022-03-29', '18:44:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(59, 'Dentist', 'Tarun', '2022-03-30', '08:35:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(60, 'Dentist', 'Tarun', '2022-03-30', '09:36:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(61, 'Dentist', 'Tarun', '2022-03-30', '09:35:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(62, 'Dentist', 'Tarun', '2022-03-30', '08:02:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(63, 'Dentist', 'Tarun', '2022-03-30', '08:37:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(64, 'Dentist', 'Tarun', '2022-03-29', '16:10:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(66, 'Dentist', 'Tarun', '2022-03-29', '18:45:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(67, 'Dentist', 'Tarun', '2022-03-30', '08:40:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(68, 'Dentist', 'Tarun', '2022-03-30', '08:40:00.000000', 'saddamoddin Oddin shaik', 9573970379, 'saddamoddin649@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(69, 'Dentist', 'Tarun', '2022-03-30', '08:50:00.000000', 'Afridi', 8573970379, 'Afridi18@gmail.com', 'Online video consult', '2022-03-29', 'pending', 25, NULL),
(75, 'Dentist', 'Tarun', '2022-03-30', '07:45:00.000000', 'raju', 9573970379, 'Raju18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(76, 'Dentist', 'saddamoddin', '2022-03-30', '09:27:00.000000', 'saddamoddin', 9573970379, 'saddamoddin18@gmail.com', 'In-clinic', '2022-03-29', 'pending', 25, NULL),
(77, 'Dentist', 'saddamoddin', '2022-03-30', '08:37:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'In-clinic', '2022-03-30', 'pending', 25, NULL),
(78, 'Dentist', 'saddamoddin', '2022-03-29', '08:03:00.000000', 'saddamoddin oddin shaik', 9573970379, 'saddamoddin19@gmail.com', 'In-clinic', '2022-03-30', 'pending', 25, NULL),
(79, 'Dentist', 'Tarun', '2022-03-29', '07:40:00.000000', 'saddamoddin', 9573970379, 'saddamoddin18@gmail.com', 'In-clinic', '2022-03-30', 'pending', 25, NULL),
(80, 'Dentist', 'Tarun', '2022-03-29', '07:45:00.000000', 'saddamoddin', 9573970379, 'saddamoddin18@gmail.com', 'In-clinic', '2022-03-30', 'pending', 25, NULL),
(81, 'Dentist', 'Tarun', '2022-03-29', '18:32:00.000000', 'saddamoddin', 9573970379, 'saddamoddin18@gmail.com', 'In-clinic', '2022-03-30', 'pending', 25, NULL),
(82, 'Dentist', 'Tarun', '2022-04-01', '08:40:00.000000', 'rakesh', 8573970379, 'Afridi18@gmail.com', 'Video Consult', '2022-03-30', 'pending', 25, NULL),
(84, 'Dentist', 'samadh', '2022-04-02', '10:21:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, NULL),
(85, 'Dentist', 'Afridi', '2022-04-02', '10:25:00.000000', 'Afridi', 9573970312, 'Afridi18@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, NULL),
(86, 'Dentist', 'Tarun', '2022-03-29', '07:40:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, NULL),
(87, 'Dentist', 'Tarun', '2022-03-29', '07:40:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, 0),
(88, 'Dentist', 'Tarun', '2022-03-29', '07:35:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, 250),
(89, 'Dentist', 'Tarun', '2022-04-02', '10:36:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, 250),
(90, 'Cardiologists', 'shaik', '2022-04-01', '12:36:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'completed', 31, 300),
(91, 'Cardiologists', 'shaik', '2022-04-02', '13:50:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'Video Consult', '2022-03-31', 'cancelled', 31, 300),
(92, 'Cardiologists', 'shaik', '2022-04-02', '13:47:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'Video Consult', '2022-03-31', 'pending', 31, 250),
(93, 'Dentist', 'samadh', '2022-03-29', '07:44:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-03-31', 'pending', 25, 250),
(94, 'Dentist', 'Tarun', '2022-04-03', '10:20:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'Video Consult', '2022-03-31', 'pending', 25, 550),
(95, 'Dentist', 'Tarun', '2022-03-29', '17:53:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'Video Consult', '2022-03-31', 'pending', 25, 550),
(96, 'Cardiologists', 'Raghu', '2022-04-04', '07:35:00.000000', 'Nizam uddin', 8573970379, 'nizam18@gmail.com', 'In-clinic', '2022-04-04', 'cancelled', 35, 550),
(97, 'Dentist', 'Tarun', '2022-04-01', '08:36:00.000000', 'Yeshu', 9573970379, 'yeshu19@gmail.com', 'In-clinic', '2022-04-04', 'pending', 25, 550),
(98, 'Cardiologists', 'srinath', '2022-03-05', '10:55:00.000000', 'Yeshu', 9573970379, 'yeshu19@gmail.com', 'In-clinic', '2022-04-04', 'pending', 27, 250),
(99, 'Cardiologists', 'Naveen', '2022-04-01', '09:15:00.000000', 'nizam uddin', 8573970379, 'nizam18@gmail.com', 'In-clinic', '2022-04-04', 'pending', 29, 250),
(100, 'Dentist', 'Tarun', '2022-04-01', '08:40:00.000000', 'nizam uddin', 8573970379, 'nizam18@gmail.com', 'In-clinic', '2022-04-04', 'pending', 25, 550),
(101, 'Dentist', 'Tarun', '2022-04-01', '08:40:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-04-04', 'pending', 25, 550),
(102, 'Dentist', 'Tarun', '2022-04-01', '08:40:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-04-04', 'pending', 25, 550),
(103, 'Cardiologists', 'Raghu', '2022-04-04', '07:35:00.000000', 'nizam uddin', 8573970379, 'nizam18@gmail.com', 'In-clinic', '2022-04-04', 'completed', 35, 550),
(104, 'Dentist', 'Tarun', '2022-04-01', '08:40:00.000000', 'samadh', 9573970777, 'samadh90@gmail.com', 'In-clinic', '2022-04-04', 'completed', 25, 550),
(105, 'Dentist', 'Tarun', '2022-04-01', '08:50:00.000000', 'nizam uddin', 8573970379, 'nizam18@gmail.com', 'In-clinic', '2022-04-05', 'pending', 25, 550),
(106, 'Cardiologists', 'Afridi', '2022-04-04', '07:36:00.000000', 'Afridi', 9573970312, 'Afridi18@gmail.com', 'In-clinic', '2022-04-06', 'pending', 35, 550),
(109, 'Dentist', 'Afridi', '2022-04-02', '10:52:00.000000', 'Afridi', 9573970312, 'Afridi18@gmail.com', 'In-clinic', '2022-04-06', 'pending', 25, 550),
(110, 'Dentist', 'Tarun', '2022-04-01', '08:36:00.000000', 'Afridi', 9573970312, 'Afridi18@gmail.com', 'In-clinic', '2022-04-06', 'pending', 25, 550),
(111, 'Cardiologists', 'srinath', '2022-03-05', '10:55:00.000000', 'Afridi', 9573970312, 'Afridi18@gmail.com', 'In-clinic', '2022-04-16', 'pending', 27, 250),
(112, 'Cardiologists', 'sammer', '2022-03-05', '10:55:00.000000', 'sammer', 9573970379, 'saddamoddin18@gmail.com', 'In-clinic', '2022-05-10', 'pending', 27, 250);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(90) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_contact` bigint(20) NOT NULL,
  `user_emergency_contact` bigint(20) NOT NULL,
  `user_profile` varchar(100) DEFAULT NULL,
  `blood_group` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `user_email`, `user_contact`, `user_emergency_contact`, `user_profile`, `blood_group`, `marital_status`, `state`, `user_password`, `reg_date`) VALUES
(1, 'Afridi', 'Afridi18@gmail.com', 9573970312, 9073970370, 'user/images/face3.jpg', 'B+', 'Single', 'Andhra Pradesh', 'Afridi18', '2022-03-24'),
(2, 'sammer', 'saddamoddin18@gmail.com', 9573970379, 8573970379, 'user/images/face5.jpg', 'B+', 'Single', 'Maharashtra', 'Saddam@18', '2022-03-27'),
(3, 'samadh', 'samadh90@gmail.com', 9573970777, 8573970379, 'user/images/face18_5j05wST.jpg', 'A+', 'Single', 'Telangana', 'Samadh', '2022-03-31'),
(4, 'nizam uddin', 'nizam18@gmail.com', 8573970379, 9573970379, 'user/images/face8.jpg', 'B+', 'Married', 'delhi', 'nizam@18', '2022-04-03'),
(5, 'Yeshu', 'yeshu19@gmail.com', 9573970379, 9573970398, 'user/images/face5_okyr78J.jpg', 'A+', 'Single', 'Gujarat', 'yeshu', '2022-04-04'),
(6, 'Naveen kumar', 'naveen18@gmail.com', 8909089076, 8909845678, 'user/images/face5_sYUMmEi.jpg', 'A+', 'Single', 'Madhya Pradesh', 'assdsdasas2222AA', '2022-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE IF NOT EXISTS `user_feedback` (
  `userfeedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_feedback` longtext NOT NULL,
  `posted_date` date NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`userfeedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`userfeedback_id`, `user_name`, `user_email`, `user_feedback`, `posted_date`, `doctor_id`) VALUES
(16, 'nizam', 'nizam18@gmail.com', '1) Doctor sir listed to my problem properly and explained the cause in simple words.2) The medicine written was effective.3) The only issue faced was things and procedures were not clear at reception. I had to task multiple time to people at reception. The procedure at reception can be improved .', '2022-04-04', 35),
(17, 'samadh', 'samadh90@gmail.com', '1) Doctor sir listed to my problem properly and explained the cause in simple words.2) The medicine written was effective.3) The only issue faced was things and procedures were not clear at reception. I had to task multiple time to people at reception. The procedure at reception can be improved .', '2022-04-04', 25),
(18, 'Afridi', 'Afridi18@gmail.com', '1) Doctor sir listed to my problem properly and explained the cause in simple words.2) The medicine written was effective.3) The only issue faced was things and procedures were not clear at reception. I had to task multiple time to people at reception. The procedure at reception can be improved .', '2022-04-05', 25),
(19, 'nizam', 'nizam18@gmail.com', '1) Doctor sir listed to my problem properly and explained the cause in simple words.2) The medicine written was effective.3) The only issue faced was things and procedures were not clear at reception. I had to task multiple time to people at reception. The procedure at reception can be improved .', '2022-04-05', 25),
(20, 'nizam', 'nizam18@gmail.com', '1) Doctor sir listed to my problem properly and explained the cause in simple words.2) The medicine written was effective.3) The only issue faced was things and procedures were not clear at reception. I had to task multiple time to people at reception. The procedure at reception can be improved .', '2022-04-05', 35);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `user_appointment_details`
--
ALTER TABLE `user_appointment_details`
  ADD CONSTRAINT `user_appointment_det_doctor_id_7f9c168d_fk_doctor_Pr` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_profile_details` (`doctor_id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `vehicle_booking`
--
CREATE DATABASE IF NOT EXISTS `vehicle_booking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vehicle_booking`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add customer', 1, 'add_customer'),
(2, 'Can change customer', 1, 'change_customer'),
(3, 'Can delete customer', 1, 'delete_customer'),
(4, 'Can view customer', 1, 'view_customer'),
(5, 'Can add owner', 2, 'add_owner'),
(6, 'Can change owner', 2, 'change_owner'),
(7, 'Can delete owner', 2, 'delete_owner'),
(8, 'Can view owner', 2, 'view_owner'),
(9, 'Can add manager', 3, 'add_manager'),
(10, 'Can change manager', 3, 'change_manager'),
(11, 'Can delete manager', 3, 'delete_manager'),
(12, 'Can view manager', 3, 'view_manager'),
(13, 'Can add rent vehicle', 4, 'add_rentvehicle'),
(14, 'Can change rent vehicle', 4, 'change_rentvehicle'),
(15, 'Can delete rent vehicle', 4, 'delete_rentvehicle'),
(16, 'Can view rent vehicle', 4, 'view_rentvehicle'),
(17, 'Can add vehicle', 5, 'add_vehicle'),
(18, 'Can change vehicle', 5, 'change_vehicle'),
(19, 'Can delete vehicle', 5, 'delete_vehicle'),
(20, 'Can view vehicle', 5, 'view_vehicle'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customerhome_customer`
--

CREATE TABLE IF NOT EXISTS `customerhome_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_firstname` varchar(60) NOT NULL,
  `customer_lastname` varchar(60) NOT NULL,
  `customer_address` varchar(600) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_dob` date NOT NULL,
  `customer_mobileno` varchar(10) NOT NULL,
  `customer_license` varchar(100) NOT NULL,
  `customer_city` varchar(30) NOT NULL,
  `customer_country` varchar(30) NOT NULL,
  `customer_pincode` int(11) NOT NULL,
  `customer_state` varchar(30) NOT NULL,
  `customer_gender` varchar(15) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customerhome_customer`
--

INSERT INTO `customerhome_customer` (`id`, `customer_firstname`, `customer_lastname`, `customer_address`, `customer_email`, `customer_dob`, `customer_mobileno`, `customer_license`, `customer_city`, `customer_country`, `customer_pincode`, `customer_state`, `customer_gender`, `customer_password`) VALUES
(1, 'mamatha', 'boyapally', 'Hyderabad', 'saddamoddin19@gmail.com', '0200-06-03', '0987654432', 'img/Customer_License/10.webp', 'Hyderabad', 'india', 890890, 'Select State', 'Female', '@123'),
(2, 'saddamoddin', 'shaik', 'Hyderabad', 'saddamoddin18@gmail.com', '2022-04-14', '9573970379', 'img/Customer_License/images.png', 'Hyderabad', 'india', 500039, 'Choose...', 'Male', 'Saddam@18'),
(3, 'saddamoddin', 'shaik', 'Hyderabad', 'saddamoddin20@gmail.com', '2022-04-20', '9573970379', 'img/Customer_License/avatar-2.jpg', 'Hyderabad', 'India', 500039, 'Choose...', 'Male', 'Saddam@18'),
(4, 'saddamoddin', 'shaik', 'Hyderabad', 'saddamoddin100@gmail.com', '2022-04-29', '9573970379', 'img/Customer_License/face13.jpg', 'Hyderabad', 'India', 500039, 'Choose...', 'Male', 'Saddam@18');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(9, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(1, 'CustomerHome', 'customer'),
(3, 'Manager', 'manager'),
(2, 'Owner', 'owner'),
(4, 'RentVehicle', 'rentvehicle'),
(11, 'sessions', 'session'),
(5, 'Vehicles', 'vehicle');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'CustomerHome', '0001_initial', '2022-04-11 06:13:19.832954'),
(2, 'CustomerHome', '0002_auto_20201221_1435', '2022-04-11 06:13:20.063324'),
(3, 'CustomerHome', '0003_customer_customer_gender', '2022-04-11 06:13:20.131718'),
(4, 'CustomerHome', '0004_customer_customer_password', '2022-04-11 06:13:20.197498'),
(5, 'CustomerHome', '0005_auto_20210129_1237', '2022-04-11 06:13:20.342375'),
(6, 'Manager', '0001_initial', '2022-04-11 06:13:20.384028'),
(7, 'Manager', '0002_auto_20210302_1202', '2022-04-11 06:13:20.478404'),
(8, 'Manager', '0003_auto_20210302_1243', '2022-04-11 06:13:20.542190'),
(9, 'Manager', '0004_auto_20210303_1314', '2022-04-11 06:13:20.653935'),
(10, 'Owner', '0001_initial', '2022-04-11 06:13:20.692738'),
(11, 'Owner', '0002_auto_20201221_1435', '2022-04-11 06:13:20.924748'),
(12, 'Owner', '0003_owner_isowner', '2022-04-11 06:13:20.987849'),
(13, 'Owner', '0004_owner_owner_password', '2022-04-11 06:13:21.048091'),
(14, 'Owner', '0005_auto_20210207_1321', '2022-04-11 06:13:21.229641'),
(15, 'Vehicles', '0001_initial', '2022-04-11 06:13:21.288589'),
(16, 'RentVehicle', '0001_initial', '2022-04-11 06:13:21.678695'),
(17, 'RentVehicle', '0002_auto_20210307_1505', '2022-04-11 06:13:22.604190'),
(18, 'RentVehicle', '0003_auto_20210307_2350', '2022-04-11 06:13:22.719867'),
(19, 'RentVehicle', '0004_auto_20210309_1223', '2022-04-11 06:13:22.874910'),
(20, 'Vehicles', '0002_auto_20210303_1137', '2022-04-11 06:13:22.881889'),
(21, 'Vehicles', '0003_auto_20210303_1145', '2022-04-11 06:13:22.890858'),
(22, 'Vehicles', '0004_auto_20210303_1148', '2022-04-11 06:13:22.902817'),
(23, 'Vehicles', '0005_auto_20210303_1150', '2022-04-11 06:13:23.029458'),
(24, 'Vehicles', '0006_auto_20210303_1151', '2022-04-11 06:13:23.038429'),
(25, 'Vehicles', '0007_auto_20210307_1437', '2022-04-11 06:13:23.144240'),
(26, 'contenttypes', '0001_initial', '2022-04-11 06:13:23.212785'),
(27, 'auth', '0001_initial', '2022-04-11 06:13:24.092827'),
(28, 'admin', '0001_initial', '2022-04-11 06:13:24.291081'),
(29, 'admin', '0002_logentry_remove_auto_add', '2022-04-11 06:13:24.315316'),
(30, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-11 06:13:24.334251'),
(31, 'contenttypes', '0002_remove_content_type_name', '2022-04-11 06:13:24.477248'),
(32, 'auth', '0002_alter_permission_name_max_length', '2022-04-11 06:13:24.543849'),
(33, 'auth', '0003_alter_user_email_max_length', '2022-04-11 06:13:24.613883'),
(34, 'auth', '0004_alter_user_username_opts', '2022-04-11 06:13:24.631466'),
(35, 'auth', '0005_alter_user_last_login_null', '2022-04-11 06:13:24.698241'),
(36, 'auth', '0006_require_contenttypes_0002', '2022-04-11 06:13:24.703092'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2022-04-11 06:13:24.718928'),
(38, 'auth', '0008_alter_user_username_max_length', '2022-04-11 06:13:24.804002'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2022-04-11 06:13:24.869676'),
(40, 'auth', '0010_alter_group_name_max_length', '2022-04-11 06:13:24.971337'),
(41, 'auth', '0011_update_proxy_permissions', '2022-04-11 06:13:24.989276'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2022-04-11 06:13:25.059253'),
(43, 'sessions', '0001_initial', '2022-04-11 06:13:25.124909');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('11cb2yr75ndcyt6nycwbrf2ti5k3elrm', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1nfOF8:JOA0AotfopIop5HWmkzhoom_UV41VQgrp70ReJ8vr-A', '2022-04-29 15:52:18.770692'),
('2zwxozj4i86phtba2q9ps4ahy1oa3f2c', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ne8va:7SY2B89VWnntj3lQHiwGPNrdkIy6046smS6s4Ymh9p0', '2022-04-26 05:18:58.296071'),
('58e6y644za00u4mi51kmpw22w6ohrqje', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ng7Rw:vx2dL6u5_9jqNNTMGlbB-nut-bmYiGx3WslZfhOj67k', '2022-05-01 16:08:32.873239'),
('87hmwijzhgix0gflc3jzvk9fe9uyk1bs', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1nfHMB:31wYG5YZ9jCHHwd1c6c7W4SyS73kGHKpg68PVCBfbRs', '2022-04-29 08:31:07.149655'),
('coas647zep8hmo5r4cpm3trxqu2htad7', 'e30:1ne81C:Akr56RuHAP03dtyIYEY7Xdprhb-CkXagecPIKDeKqv0', '2022-04-26 04:20:42.294055'),
('de1fzqjb5reyxfm8ij0jjd7dyx8ercna', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1nepV0:_LqnQXy95G4I6YImvE_kQwDSmjSGiIYSdpAi_azN4Ho', '2022-04-28 02:46:22.567473'),
('eecthn2k5ixbt2yhzbm7580yhlyjqa6s', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1nfDvA:6gVQQeHt7vpC1NcDkXwVn2UxricLgMaw9GIn9YIbKYI', '2022-04-29 04:51:00.764202'),
('ena0s01xzz8qfzazcamh1w2zqqhkf6ul', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ngLr9:IqLD0J8BHGvT2PJJni_lJHyj46cAtFMLp_oRrpa9IiQ', '2022-05-02 07:31:31.239048'),
('fniutf74jhsr9qud3g1gwlo1cyungnyd', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1nfPVe:C5xF56MSgVY8M0WakZYNrePnpu6MGV_eXUKevat9mj0', '2022-04-29 17:13:26.965505'),
('g78tuz6cleahjnctiasodo5db96fsvw3', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ngkx9:gJhJa9f0c2ufYnagdlflNtGUAv4eohb4_4oHs_71C4Q', '2022-05-03 10:19:23.874396'),
('ia9fmf8vz1b01yz8nj08kfy6e8cikgq4', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ng3Wm:XEubConn4sUqzlUA0wzc-bhif3V5b4rRRZxhQuM-ipE', '2022-05-01 11:57:16.630675'),
('nd1h2m4jlp3fob1spmageh2vdcws9st9', 'e30:1ndrWI:Xo7bVCAcHxivbEL3EPhWe8m_SXq2w7T3bRTUdXsmU00', '2022-04-25 10:43:42.343443'),
('s74yrnu8ajjeblnwy8f2svjzn286srr2', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ng41I:IJhtCWDKVX0v_sfd7ctHvzPP0BbfQJLj7sIm-UMP8M8', '2022-05-01 12:28:48.537000'),
('sef04egjp1skhf6e3zi03ih0b6rj5yqp', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ng6yM:LS9YxzGwrxcxbrNMi0dqYKUlxDpMFYGkY13JmmIpon0', '2022-05-01 15:37:58.960924'),
('ti5pl3bvffic4vvcuol7zhs1jr0mt3j2', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xMDBAZ21haWwuY29tIn0:1njuN6:iUb1aFhZdw0QYCrZs0xHuASrerWdFPwdodsdobgv1r0', '2022-05-12 02:59:12.857026'),
('vp8scdd59uv5vp7vvoqq38eiis10tn7m', 'eyJ1c2VyX2VtYWlsIjoic2FkZGFtb2RkaW4xOEBnbWFpbC5jb20ifQ:1ngIAp:WyoPKUvqQhz6viFrGYQMNVRxWeTXSQQkXJQ7j_yNyHE', '2022-05-02 03:35:35.544815');

-- --------------------------------------------------------

--
-- Table structure for table `manager_manager`
--

CREATE TABLE IF NOT EXISTS `manager_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Manager_firstname` varchar(60) NOT NULL,
  `Manager_lastname` varchar(60) NOT NULL,
  `Manager_address` varchar(600) NOT NULL,
  `Manager_email` varchar(100) NOT NULL,
  `Manager_password` varchar(32) NOT NULL,
  `Manager_dob` date NOT NULL,
  `Manager_mobileno` varchar(10) NOT NULL,
  `Manager_license` varchar(100) NOT NULL,
  `Manager_agency` varchar(100) NOT NULL,
  `Manager_city` varchar(30) NOT NULL,
  `Manager_state` varchar(30) NOT NULL,
  `Manager_country` varchar(30) NOT NULL,
  `Manager_pincode` int(11) NOT NULL,
  `Manager_gender` varchar(15) NOT NULL,
  `isOwner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `manager_manager`
--

INSERT INTO `manager_manager` (`id`, `Manager_firstname`, `Manager_lastname`, `Manager_address`, `Manager_email`, `Manager_password`, `Manager_dob`, `Manager_mobileno`, `Manager_license`, `Manager_agency`, `Manager_city`, `Manager_state`, `Manager_country`, `Manager_pincode`, `Manager_gender`, `isOwner`) VALUES
(3, 'sammer', 'iqbal', 'hyderabad', 'sammer18@gmail.com\r\n', 'sammer@18', '2022-04-18', '9573970378', 'mnm', 'mmm', 'Hyderabad', 'India', 'India', 123456, 'male', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owner_owner`
--

CREATE TABLE IF NOT EXISTS `owner_owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Owner_firstname` varchar(60) NOT NULL,
  `Owner_lastname` varchar(60) NOT NULL,
  `Owner_address` varchar(600) NOT NULL,
  `Owner_email` varchar(100) NOT NULL,
  `Owner_dob` date NOT NULL,
  `Owner_mobileno` varchar(10) NOT NULL,
  `Owner_license` varchar(100) NOT NULL,
  `Owner_agency` varchar(100) NOT NULL,
  `Owner_city` varchar(30) NOT NULL,
  `Owner_country` varchar(30) NOT NULL,
  `Owner_pincode` int(11) NOT NULL,
  `Owner_state` varchar(30) NOT NULL,
  `isOwner` tinyint(1) NOT NULL,
  `Owner_password` varchar(32) NOT NULL,
  `Owner_gender` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `owner_owner`
--

INSERT INTO `owner_owner` (`id`, `Owner_firstname`, `Owner_lastname`, `Owner_address`, `Owner_email`, `Owner_dob`, `Owner_mobileno`, `Owner_license`, `Owner_agency`, `Owner_city`, `Owner_country`, `Owner_pincode`, `Owner_state`, `isOwner`, `Owner_password`, `Owner_gender`) VALUES
(2, '\0', '\0', '\0', 'surya18@gmail.com', '2022-04-18', '9573970378', 'jsdkj', 'asssa', 'India', 'india', 123456, 'India', 0, 'surya@18', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `rentvehicle_rentvehicle`
--

CREATE TABLE IF NOT EXISTS `rentvehicle_rentvehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RentVehicle_Date_of_Return` date DEFAULT NULL,
  `RentVehicle_Total_amount` int(11) DEFAULT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `RentVehicle_Date_of_Booking` date DEFAULT NULL,
  `Vehicle_license_plate` varchar(30) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `isBillPaid` tinyint(1) NOT NULL,
  `request_responded_by` varchar(100) DEFAULT NULL,
  `Advance_amount` int(11) DEFAULT NULL,
  `Total_days` int(11) NOT NULL,
  `request_status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `rentvehicle_rentvehicle`
--

INSERT INTO `rentvehicle_rentvehicle` (`id`, `RentVehicle_Date_of_Return`, `RentVehicle_Total_amount`, `isAvailable`, `RentVehicle_Date_of_Booking`, `Vehicle_license_plate`, `customer_email`, `isBillPaid`, `request_responded_by`, `Advance_amount`, `Total_days`, `request_status`) VALUES
(8, '2022-04-17', 2466, 0, '2022-04-16', 'MX-124', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(10, '2022-04-25', 7000, 0, '2022-04-19', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'surya18@gmail.com', NULL, 7, 'Accepted'),
(11, '2022-04-25', 7000, 0, '2022-04-19', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'surya18@gmail.com', NULL, 7, 'Accepted'),
(12, '2022-04-25', 7000, 0, '2022-04-19', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'surya18@gmail.com', NULL, 7, 'Accepted'),
(13, '2022-04-25', 7000, 0, '2022-04-19', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 7, 'Accepted'),
(14, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(15, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(16, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'Surya18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(17, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'Surya18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(18, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'Surya18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(19, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'Surya18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(20, '2022-04-28', 3000, 1, '2022-04-26', 'Mx-123', 'Surya18@gmail.com', 0, 'Surya18@gmail.com', NULL, 3, 'Accepted'),
(21, '2022-04-18', 2000, 0, '2022-04-17', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 2, 'Accepted'),
(22, '2022-04-30', 5000, 0, '2022-04-26', 'Mx-123', 'saddamoddin18@gmail.com', 0, 'Surya18@gmail.com', NULL, 5, 'Accepted'),
(24, '2022-05-04', 4000, 1, '2022-05-01', 'Mx-123', 'saddamoddin18@gmail.com', 0, NULL, NULL, 4, 'Pending'),
(25, '2022-04-29', 3000, 1, '2022-04-27', 'Mx-123', 'saddamoddin18@gmail.com', 0, NULL, NULL, 3, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicles_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_name` varchar(60) NOT NULL,
  `Vehicle_company` varchar(60) NOT NULL,
  `Vehicle_model` varchar(60) NOT NULL,
  `Vehicle_type` varchar(20) NOT NULL,
  `Vehicle_fuel` varchar(10) NOT NULL,
  `Vehicle_No_of_Seats` int(11) NOT NULL,
  `Vehicle_color` varchar(20) NOT NULL,
  `Vehicle_license_plate` varchar(30) NOT NULL,
  `Vehicle_uploaded_by` varchar(100) NOT NULL,
  `Vehicle_image1` varchar(100) NOT NULL,
  `Vehicle_image2` varchar(100) NOT NULL,
  `Vehicle_image3` varchar(100) NOT NULL,
  `isGeared` tinyint(1) NOT NULL,
  `Vehicle_description` varchar(1500) NOT NULL,
  `Vehicle_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vehicles_vehicle`
--

INSERT INTO `vehicles_vehicle` (`id`, `Vehicle_name`, `Vehicle_company`, `Vehicle_model`, `Vehicle_type`, `Vehicle_fuel`, `Vehicle_No_of_Seats`, `Vehicle_color`, `Vehicle_license_plate`, `Vehicle_uploaded_by`, `Vehicle_image1`, `Vehicle_image2`, `Vehicle_image3`, `isGeared`, `Vehicle_description`, `Vehicle_price`) VALUES
(1, 'Audi', 'Audi', 'suv', 'Car', 'Diesel', 4, 'red', 'Mx-123', 'Surya18@gmail.com', 'img/Vehicle_images/45748.jpg', 'img/Vehicle_images/bg_1.jpg', 'img/Vehicle_images/car-2.jpg', 1, 'jcjsdcszdlc', 1000),
(2, 'ggggggg', 'jjjjjj', 'kkkkkkkk', 'Car', 'Diesel', 4, 'red', 'MX-124', 'Surya18@gmail.com', 'img/Vehicle_images/car-1.jpg', 'img/Vehicle_images/car-6.jpg', 'img/Vehicle_images/car-11.jpg', 0, 'refere', 1233);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
