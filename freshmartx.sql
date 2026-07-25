-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2025 at 07:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshmartx`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart item', 9, 'add_cartitem'),
(34, 'Can change cart item', 9, 'change_cartitem'),
(35, 'Can delete cart item', 9, 'delete_cartitem'),
(36, 'Can view cart item', 9, 'view_cartitem'),
(37, 'Can add order', 10, 'add_order'),
(38, 'Can change order', 10, 'change_order'),
(39, 'Can delete order', 10, 'delete_order'),
(40, 'Can view order', 10, 'view_order'),
(41, 'Can add order item', 11, 'add_orderitem'),
(42, 'Can change order item', 11, 'change_orderitem'),
(43, 'Can delete order item', 11, 'delete_orderitem'),
(44, 'Can view order item', 11, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$iZ6ceUwYBputqiG0muHZdT$9xiio0RDZDq13VX5AcZEy4Fr5LqTPJCd6bniYBPMb/0=', '2025-10-11 05:28:45.071510', 1, 'admin', '', '', 'freshmartx@gmail.com', 1, 1, '2025-09-08 04:41:24.080862');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-09-10 05:51:36.804878', '46', 'parth', 1, '[{\"added\": {}}]', 8, 1),
(2, '2025-10-11 05:43:37.833764', '4', 'Order #4 - daksh', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(3, '2025-10-11 05:43:52.569894', '1', 'Order #1 - rudra', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(4, '2025-10-11 05:43:58.562469', '1', 'Order #1 - rudra', 2, '[]', 10, 1),
(5, '2025-10-11 05:44:03.227211', '3', 'Order #3 - Jatin parmar', 2, '[]', 10, 1),
(6, '2025-10-11 05:44:09.049942', '3', 'Order #3 - Jatin parmar', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(7, '2025-10-11 05:44:14.908516', '2', 'Order #2 - Piyush', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(8, '2025-10-11 05:44:19.991019', '4', 'Order #4 - daksh', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1),
(9, '2025-10-11 05:47:07.312585', '4', 'Order #4 - daksh', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, 'store', 'cart'),
(9, 'store', 'cartitem'),
(10, 'store', 'order'),
(11, 'store', 'orderitem'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-09-08 04:36:16.571396'),
(2, 'auth', '0001_initial', '2025-09-08 04:36:17.460393'),
(3, 'admin', '0001_initial', '2025-09-08 04:36:17.792361'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-09-08 04:36:17.823405'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-09-08 04:36:17.853860'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-09-08 04:36:18.059261'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-09-08 04:36:18.196774'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-09-08 04:36:18.245341'),
(9, 'auth', '0004_alter_user_username_opts', '2025-09-08 04:36:18.277666'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-09-08 04:36:18.455726'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-09-08 04:36:18.465085'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-09-08 04:36:18.498123'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-09-08 04:36:18.544651'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-09-08 04:36:18.588458'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-09-08 04:36:18.627296'),
(16, 'auth', '0011_update_proxy_permissions', '2025-09-08 04:36:18.658876'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-09-08 04:36:18.703151'),
(18, 'sessions', '0001_initial', '2025-09-08 04:36:18.797125'),
(19, 'store', '0001_initial', '2025-09-08 04:36:19.409545'),
(20, 'store', '0002_alter_product_image', '2025-10-03 05:00:06.196082'),
(21, 'store', '0003_product_description_alter_product_image_and_more', '2025-10-03 05:00:06.255906'),
(22, 'store', '0004_remove_product_description_cart_session_key_and_more', '2025-10-08 15:56:28.156878'),
(23, 'store', '0005_order_orderitem', '2025-10-11 05:07:52.753397'),
(24, 'store', '0006_alter_order_user', '2025-10-11 05:27:46.994251'),
(25, 'store', '0007_order_status', '2025-10-11 05:41:12.757466');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8us55ooelm0cxejhmj3cqj58r2fbnm9k', '.eJxVjMEOwiAQRP-FsyEU3LZ49O43kF12kaqBpLQn47_bJj3obTLvzbxVwHXJYW0yh4nVRXXq9NsRxqeUHfADy73qWMsyT6R3RR-06VtleV0P9-8gY8vbOgqB7Vl8MlsCy-KcjWQMMzjyPRgwMg5ofYrDyACY-IwdkPEeIov6fAH_JTiR:1uvThL:WwXNlyQlnGoiwIK0zwTADAnyy5ZRy6C7O8vgteTXGrA', '2025-09-22 04:41:47.809542'),
('fi1bn6zodb0y95fsaznz4b0mn9sh3rs1', '.eJxVjMEOwiAQRP-FsyEU3LZ49O43kF12kaqBpLQn47_bJj3obTLvzbxVwHXJYW0yh4nVRXXq9NsRxqeUHfADy73qWMsyT6R3RR-06VtleV0P9-8gY8vbOgqB7Vl8MlsCy-KcjWQMMzjyPRgwMg5ofYrDyACY-IwdkPEeIov6fAH_JTiR:1v7S9t:wYQOYO5gOWdq4xr5-KQZhJcclBNaqoq7XMBGCza8blc', '2025-10-25 05:28:45.082127'),
('lt5ri76rzziij4ie77988z1zqor2rbee', '.eJxVjMEOwiAQRP-FsyEU3LZ49O43kF12kaqBpLQn47_bJj3obTLvzbxVwHXJYW0yh4nVRXXq9NsRxqeUHfADy73qWMsyT6R3RR-06VtleV0P9-8gY8vbOgqB7Vl8MlsCy-KcjWQMMzjyPRgwMg5ofYrDyACY-IwdkPEeIov6fAH_JTiR:1v4XuT:lI-v51l12NAeYCyzXfLEMK7zE28Ijlsh3FsBuB5bmlw', '2025-10-17 05:00:49.769009');

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_key` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `user_id`, `session_key`) VALUES
(1, 1, NULL),
(2, NULL, '726gvidk8kdz46j5fq99gynmob93ipg2');

-- --------------------------------------------------------

--
-- Table structure for table `store_cartitem`
--

CREATE TABLE `store_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `full_name`, `email`, `address`, `city`, `zip_code`, `phone_number`, `total`, `created_at`, `payment_method`, `user_id`, `status`) VALUES
(1, 'rudra', 'bhattirudra89@gmail.com', 'rajkot', 'rajkot', '360004', '6356419637', 1050.00, '2025-10-11 05:28:33.069929', 'Cash on Delivery', NULL, 'Delivered'),
(2, 'Piyush', 'parmarpiyush12@gmail.com', 'pardi', 'shapar, Rajkot', '360024', '1234567890', 860.00, '2025-10-11 05:32:52.628958', 'Cash on Delivery', 1, 'Delivered'),
(3, 'Jatin parmar', 'jatinparmar1905@gmail.com', 'shitla mandir', 'shapar, Rajkot', '360024', '8128170626', 470.00, '2025-10-11 05:34:47.918099', 'Cash on Delivery', 1, 'Delivered'),
(4, 'daksh', 'vadodariyadaksh1208@gmail.com', 'mulila', 'kalavd', '361160', '7574821345', 2525.00, '2025-10-11 05:42:14.630322', 'Cash on Delivery', 1, 'Delivered'),
(5, 'daksh', 'vadodariyadaksh1208@gmail.com', 'mulila', 'kalavd', '361160', '7574821345', 280.00, '2025-10-11 05:45:15.729132', 'Cash on Delivery', 1, 'Pending'),
(6, 'Jatin parmar', 'jatinparmar1905@gmail.com', 'shitla mandir', 'shapar, Rajkot', '360024', '8128170626', 535.00, '2025-10-11 05:46:48.928498', 'Cash on Delivery', 1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `store_orderitem`
--

CREATE TABLE `store_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_orderitem`
--

INSERT INTO `store_orderitem` (`id`, `quantity`, `price`, `order_id`, `product_id`) VALUES
(1, 4, 180.00, 1, 1),
(2, 2, 165.00, 1, 2),
(3, 2, 40.00, 2, 35),
(4, 3, 180.00, 2, 36),
(5, 2, 120.00, 2, 38),
(6, 1, 350.00, 3, 43),
(7, 1, 70.00, 3, 45),
(8, 1, 50.00, 3, 42),
(9, 1, 1250.00, 4, 11),
(10, 1, 1275.00, 4, 12),
(11, 1, 165.00, 5, 2),
(12, 1, 115.00, 5, 3),
(13, 1, 175.00, 6, 29),
(14, 1, 180.00, 6, 30),
(15, 1, 180.00, 6, 32);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `price`, `image`) VALUES
(1, 'toor-dal', 180.00, 'products/toor-dal.png'),
(2, 'moong-dal', 165.00, 'products/moong-dal.png'),
(3, 'chana-dal', 115.00, 'products/chana-dal.png'),
(4, 'kala-chana', 120.00, 'products/kala-chana.png'),
(5, 'rice', 120.00, 'products/rice.png'),
(6, 'besan', 200.00, 'products/besan.png'),
(7, 'tea', 450.00, 'products/tea.png'),
(8, 'sugar', 68.00, 'products/sugar.png'),
(9, 'salt', 54.00, 'products/salt.png'),
(10, 'oil', 475.00, 'products/oil.png'),
(11, 'badam', 1250.00, 'products/badam.png'),
(12, 'kaju', 1275.00, 'products/kaju.png'),
(13, 'tomato', 40.00, 'products/tomato.png'),
(14, 'potato', 30.00, 'products/potato.png'),
(15, 'bitroot', 60.00, 'products/bitroot.png'),
(16, 'onion', 50.00, 'products/onion.png'),
(17, 'brinjal', 20.00, 'products/brinjal.png'),
(18, 'capsicum', 40.00, 'products/capsicum.png'),
(19, 'apple', 90.00, 'products/apple.png'),
(20, 'orange', 100.00, 'products/orange.png'),
(21, 'mango', 250.00, 'products/mango.png'),
(22, 'pineapple', 130.00, 'products/pineapple.png'),
(23, 'banana', 120.00, 'products/banana.png'),
(24, 'avocado', 350.00, 'products/avocado.png'),
(25, 'strawberry', 180.00, 'products/strawberry.png'),
(26, 'grapes', 120.00, 'products/grapes.png'),
(27, 'papaya', 120.00, 'products/papaya.png'),
(28, 'milk', 60.00, 'products/milk.png'),
(29, 'cheese', 175.00, 'products/cheese.png'),
(30, 'butter', 180.00, 'products/butter.png'),
(31, 'curd', 75.00, 'products/curd.png'),
(32, 'paneer', 180.00, 'products/paneer.png'),
(33, 'ghee', 450.00, 'products/ghee.png'),
(34, 'chips', 20.00, 'products/chips.png'),
(35, 'biscuits', 40.00, 'products/biscuits.png'),
(36, 'chocolate', 180.00, 'products/chocolate.png'),
(37, 'cola', 70.00, 'products/cola.png'),
(38, 'juice', 120.00, 'products/juice.png'),
(39, 'coffee', 180.00, 'products/coffee.png'),
(40, 'bread', 60.00, 'products/bread.png'),
(41, 'croissant', 250.00, 'products/croissant.png'),
(42, 'muffin', 50.00, 'products/muffin.png'),
(43, 'cake', 350.00, 'products/cake.png'),
(44, 'bun', 50.00, 'products/bun.png'),
(45, 'pastry', 70.00, 'products/pastry.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_user_id_99e99107` (`user_id`);

--
-- Indexes for table `store_cartitem`
--
ALTER TABLE `store_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cartitem_cart_id_4f60ac05_fk_store_cart_id` (`cart_id`),
  ADD KEY `store_cartitem_product_id_4238d443_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  ADD KEY `store_orderitem_product_id_f2b098d4_fk_store_product_id` (`product_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_cartitem`
--
ALTER TABLE `store_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cartitem`
--
ALTER TABLE `store_cartitem`
  ADD CONSTRAINT `store_cartitem_cart_id_4f60ac05_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  ADD CONSTRAINT `store_cartitem_product_id_4238d443_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_orderitem`
--
ALTER TABLE `store_orderitem`
  ADD CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  ADD CONSTRAINT `store_orderitem_product_id_f2b098d4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
