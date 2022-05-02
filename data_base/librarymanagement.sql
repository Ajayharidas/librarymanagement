-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 09:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add author', 7, 'add_author'),
(26, 'Can change author', 7, 'change_author'),
(27, 'Can delete author', 7, 'delete_author'),
(28, 'Can view author', 7, 'view_author'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add user member', 9, 'add_usermember'),
(34, 'Can change user member', 9, 'change_usermember'),
(35, 'Can delete user member', 9, 'delete_usermember'),
(36, 'Can view user member', 9, 'view_usermember'),
(37, 'Can add book', 10, 'add_book'),
(38, 'Can change book', 10, 'change_book'),
(39, 'Can delete book', 10, 'delete_book'),
(40, 'Can view book', 10, 'view_book'),
(41, 'Can add issue', 11, 'add_issue'),
(42, 'Can change issue', 11, 'change_issue'),
(43, 'Can delete issue', 11, 'delete_issue'),
(44, 'Can view issue', 11, 'view_issue'),
(45, 'Can add fine', 12, 'add_fine'),
(46, 'Can change fine', 12, 'change_fine'),
(47, 'Can delete fine', 12, 'delete_fine'),
(48, 'Can view fine', 12, 'view_fine');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$8Ya9z5RLcbbGPxZqFEVYb2$4+ZLgvXKdUA7Dm2mZZa13iVLPPAzbGrifmWxr3dwQlE=', '2022-05-02 07:10:46.099329', 1, 'adminlb', '', '', 'admin@gmail.com', 1, 1, '2022-04-26 10:45:42.192371'),
(2, 'pbkdf2_sha256$320000$BkYkdhU9ysVkixqxTtOJRI$gAdHepsoGgMJanDp6VpI3MHRed+l5Jt2j2N+owSNPPc=', '2022-05-02 07:00:13.410993', 0, 'ajayaji', 'Ajay', 'Haridas', 'ajayharidas77@gmail.com', 0, 1, '2022-04-26 11:49:30.040632'),
(5, 'pbkdf2_sha256$320000$gT4aB2YGGnfFbpbmgEoj0s$gBDDuD1evfuSJEdElWxVvBcDyw96sz0AFb0QVsd2u8M=', '2022-05-02 07:10:16.078733', 0, 'nithin', 'nithin', 'raj', 'nithin@gmail.com', 0, 1, '2022-04-28 06:00:02.501972'),
(6, 'pbkdf2_sha256$320000$uF0drwFybGKH6OZN3D2OgP$bwKEBILarU+PkO5zGgyDLgUTRH7lE8WGnfd4UjO1Uys=', '2022-04-28 10:09:39.128757', 0, 'deevendu', 'deevendu', 'dileep', 'deevendu@gmail.com', 0, 1, '2022-04-28 10:09:24.743734'),
(7, 'pbkdf2_sha256$320000$cJygkfKMNWynS7v7qQEwfZ$5VsgjvPrWC2maNeu0Hl5W79rmeghgcXV2LBL2padG0k=', '2022-04-28 20:51:21.094121', 0, 'ajayhari', 'Ajay', 'Haridas', 'ajayharidas77@gmail.com', 0, 1, '2022-04-28 19:46:15.019651');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-04-27 19:58:14.840095', '1', 'ajay_Khasakkinte Ithihasam book issue request', 2, '[{\"changed\": {\"fields\": [\"Issued at\", \"Return date\"]}}]', 11, 1),
(2, '2022-04-27 19:58:49.005953', '1', 'ajay_Khasakkinte Ithihasam book issue request fine ->10', 1, '[{\"added\": {}}]', 12, 1),
(3, '2022-04-27 20:05:19.174515', '3', 'ajay_Ente Katha book issue request', 2, '[{\"changed\": {\"fields\": [\"Issued at\", \"Return date\"]}}]', 11, 1),
(4, '2022-04-27 20:12:38.276317', '1', 'ajay_Khasakkinte Ithihasam book issue request', 2, '[{\"changed\": {\"fields\": [\"Returned\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'LibraryApp', 'author'),
(10, 'LibraryApp', 'book'),
(8, 'LibraryApp', 'category'),
(12, 'LibraryApp', 'fine'),
(11, 'LibraryApp', 'issue'),
(9, 'LibraryApp', 'usermember'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-26 10:37:37.403780'),
(2, 'auth', '0001_initial', '2022-04-26 10:37:38.132375'),
(3, 'LibraryApp', '0001_initial', '2022-04-26 10:37:38.450078'),
(4, 'admin', '0001_initial', '2022-04-26 10:37:38.627318'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-04-26 10:37:38.642891'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-26 10:37:38.664524'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-04-26 10:37:38.764903'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-04-26 10:37:38.832372'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-04-26 10:37:38.864377'),
(10, 'auth', '0004_alter_user_username_opts', '2022-04-26 10:37:38.880381'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-04-26 10:37:38.952387'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-04-26 10:37:38.963400'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-04-26 10:37:38.977092'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-04-26 10:37:39.009111'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-04-26 10:37:39.041114'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-04-26 10:37:39.073106'),
(17, 'auth', '0011_update_proxy_permissions', '2022-04-26 10:37:39.089106'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-04-26 10:37:39.121111'),
(19, 'sessions', '0001_initial', '2022-04-26 10:37:39.177114'),
(20, 'LibraryApp', '0002_alter_book_book_description', '2022-04-26 11:12:43.954451'),
(21, 'LibraryApp', '0003_issue_fine', '2022-04-27 09:29:32.747043'),
(22, 'LibraryApp', '0004_alter_fine_user', '2022-04-27 09:31:28.958632');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('e0z0dlvwdcsu9yth3trizyr8pj47w2b8', '.eJxVjEEOwiAQRe_C2pCBgQIu3XsGMgxUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxyuIslDj9bon4UdoO8p3abZY8t3WZktwVedAur3Muz8vh_h1U6vVbu4EDpsIOWGdGAk_JFRxHVJiDCpaNNQQBCRMV52wgA16R1doPDkC8P-35N2U:1nlQCk:XAVHmoEeH8MqR_ddKCkf09-7ixLvSOXsEeTa91tZGz0', '2022-05-16 07:10:46.100933');

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_author`
--

CREATE TABLE `libraryapp_author` (
  `id` bigint(20) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `author_article` longtext NOT NULL,
  `author_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_author`
--

INSERT INTO `libraryapp_author` (`id`, `author_name`, `author_article`, `author_image`) VALUES
(2, 'O.V. Vijayan', '<p><strong>Ottupulackal Velukkuty Vijayan</strong>&nbsp;(2 July 1930 &ndash; 30 March 2005), commonly known as&nbsp;<strong>O. V. Vijayan</strong>, was an Indian author and cartoonist, who was an important figure in modern&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam_language\" title=\"Malayalam language\">Malayalam language</a>&nbsp;literature. Best known for his&nbsp;<a href=\"https://en.wikipedia.org/wiki/Debut_novel\" title=\"Debut novel\">first novel</a>&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam\" title=\"Khasakkinte Itihasam\">Khasakkinte Itihasam</a></em>&nbsp;(1969), Vijayan was the author of six novels, nine short-story collections, and nine collections of essays, memoirs and reflections.</p>\r\n\r\n<p>Born in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Palakkad\" title=\"Palakkad\">Palakkad</a>&nbsp;in 1930, Vijayan graduated from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Government_Victoria_College,_Palakkad\" title=\"Government Victoria College, Palakkad\">Victoria College</a>&nbsp;in Palakkad and obtained a master&#39;s degree in English literature from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Presidency_College,_Chennai\" title=\"Presidency College, Chennai\">Presidency College, Madras</a>. He wrote his first short story, &quot;Tell Father Gonsalves&quot;, in 1953.&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam\" title=\"Khasakkinte Itihasam\">Khasakkinte Itihasam</a></em>&nbsp;(<em>The Legends of Khasak</em>), Vijayan&#39;s first novel, appeared in 1969.<a href=\"https://en.wikipedia.org/wiki/O._V._Vijayan#cite_note-Njattupura_recreates_Thasrak_magic-1\">[1]</a>&nbsp;It set off a great literary revolution and cleaved the history of Malayalam fiction into pre-Khasak and post-Khasak. While&nbsp;<em>Khasakkinte Itihasam</em>&nbsp;continues to be his best-known work as an angry young man, his later works,&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Gurusagaram\" title=\"Gurusagaram\">Gurusagaram</a></em>&nbsp;(<em>The Infinity of Grace</em>),&nbsp;<em>Pravachakante Vazhi</em>&nbsp;(<em>The Path of the Prophet</em>) and&nbsp;<em>Thalamurakal</em>&nbsp;(<em>Generations</em>) bespeak a mature transcendentalist.</p>', 'author/image/Vijayan_SAZl8gA.jpg'),
(3, 'Kamala Surayya', '<p><strong>Kamala Surayya&nbsp;</strong>(born&nbsp;<strong>Kamala</strong>; 31 March 1934 &ndash; 31 May 2009), popularly known by her one-time pen name&nbsp;<strong>Madhavikutty</strong>&nbsp;and married name&nbsp;<strong>Kamala Das</strong>, was an Indian poet in&nbsp;<a href=\"https://en.wikipedia.org/wiki/English_language\" title=\"English language\">English</a>&nbsp;as well as an author in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam\" title=\"Malayalam\">Malayalam</a>&nbsp;from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kerala\" title=\"Kerala\">Kerala</a>, India. Her popularity in Kerala is based chiefly on her short stories and autobiography, while her oeuvre (works) in English, written under the name Kamala Das, is noted for the poems and explicit autobiography. She was also a widely read columnist and wrote on diverse topics including women&#39;s issues, child care, politics among others etc.</p>\r\n\r\n<p>Her liberal treatment of female sexuality, marked her as an&nbsp;<a href=\"https://en.wikipedia.org/wiki/Iconoclasm\" title=\"Iconoclasm\">iconoclast</a>&nbsp;in popular culture of her generation.<a href=\"https://en.wikipedia.org/wiki/Kamala_Surayya#cite_note-1\">[1]</a>&nbsp;On 31 May 2009 , aged 75, she died at a hospital in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pune\" title=\"Pune\">Pune</a>.<a href=\"https://en.wikipedia.org/wiki/Kamala_Surayya#cite_note-2\">[2]</a></p>', 'author/image/kamala.jpg'),
(4, 'M. T. Vasudevan Nair', '<p><strong>Madath Thekkepaattu Vasudevan Nair</strong>&nbsp;(born 1933), popularly known as&nbsp;<strong>MT</strong>, is an Indian author,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Screenplay_writer\" title=\"Screenplay writer\">screenplay writer</a>&nbsp;and film director.<a href=\"https://en.wikipedia.org/wiki/M._T._Vasudevan_Nair#cite_note-profile1-1\">[1]</a>&nbsp;He is a prolific and versatile writer in modern&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam_literature\" title=\"Malayalam literature\">Malayalam literature</a>, and is one of the masters of post-Independence Indian literature.<a href=\"https://en.wikipedia.org/wiki/M._T._Vasudevan_Nair#cite_note-Master-2\">[2]</a><a href=\"https://en.wikipedia.org/wiki/M._T._Vasudevan_Nair#cite_note-3\">[3]</a>&nbsp;He shot into fame at the age of 20 when, as a chemistry undergraduate, he won the prize for the best short story in Malayalam at World Short Story Competition conducted by&nbsp;<em>The New York Herald Tribune</em>. His&nbsp;<a href=\"https://en.wikipedia.org/wiki/Debut_novel\" title=\"Debut novel\">debut novel</a>&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Naalukettu_(novel)\" title=\"Naalukettu (novel)\">Naalukettu</a></em>&nbsp;(<em>Ancestral Home</em>- translated to English as&nbsp;<em>The Legacy</em>), written at the age of 23, won the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kerala_Sahitya_Akademi_Award\" title=\"Kerala Sahitya Akademi Award\">Kerala Sahitya Akademi Award</a>&nbsp;in 1958. His other novels include&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Manju_(novel)\" title=\"Manju (novel)\">Manju</a></em>&nbsp;(<em>Mist</em>),&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Kaalam_(novel)\" title=\"Kaalam (novel)\">Kaalam</a></em>&nbsp;(<em>Time</em>),&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Asuravithu_(novel)\" title=\"Asuravithu (novel)\">Asuravithu</a></em>&nbsp;(<em>The Prodigal Son</em>&nbsp;- translated to English as&nbsp;<em>The Demon Seed</em>) and&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Randamoozham\" title=\"Randamoozham\">Randamoozham</a></em>&nbsp;(<em>The Second Turn</em>). The deep emotional experiences of his early days have gone into the making of MT&#39;s novels. Most of his works are oriented towards the basic Malayalam family structure and culture and many of them were path-breaking in the history of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam_literature\" title=\"Malayalam literature\">Malayalam literature</a>. His three seminal novels on life in the matriarchal family in Kerala are&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Naalukettu_(novel)\" title=\"Naalukettu (novel)\">Naalukettu</a></em>,&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Asuravithu_(novel)\" title=\"Asuravithu (novel)\">Asuravithu</a></em>, and&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Kaalam_(novel)\" title=\"Kaalam (novel)\">Kaalam</a></em>.&nbsp;<em>Randamoozham</em>, which retells the story of the&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Mahabharatha\" title=\"Mahabharatha\">Mahabharatha</a></em>&nbsp;from the point of view of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bhima\" title=\"Bhima\">Bhimasena</a>, is widely credited as his masterpiece</p>', 'author/image/MT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_book`
--

CREATE TABLE `libraryapp_book` (
  `id` bigint(20) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_description` longtext NOT NULL,
  `book_publish_date` date NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `book_author_id` bigint(20) DEFAULT NULL,
  `book_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_book`
--

INSERT INTO `libraryapp_book` (`id`, `book_name`, `book_description`, `book_publish_date`, `book_image`, `book_author_id`, `book_category_id`) VALUES
(2, 'Khasakkinte Ithihasam', '<p><em><strong>Khasakkinte Itihasam</strong></em>&nbsp;(transl.&thinsp;The Legend of Khasak&nbsp;or&nbsp;transl.&thinsp;The Saga of Khasak,<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:2-1\">[1]</a>&nbsp;generally referred to as&nbsp;<em><strong>Khasak</strong></em>&nbsp;in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam\" title=\"Malayalam\">Malayalam</a>&nbsp;literary circles) is the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Malayalam\" title=\"Malayalam\">Malayalam</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Debut_novel\" title=\"Debut novel\">debut novel</a>&nbsp;by Indian writer&nbsp;<a href=\"https://en.wikipedia.org/wiki/O._V._Vijayan\" title=\"O. V. Vijayan\">O. V. Vijayan</a>&nbsp;(1930&ndash;2005). It was first serialised in 1968 and published as a single edition in 1969.<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:5-2\">[2]</a><a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-Njattupura_recreates_Thasrak_magic-3\">[3]</a>&nbsp;The novel has been translated from Malayalam into&nbsp;<a href=\"https://en.wikipedia.org/wiki/French_language\" title=\"French language\">French</a>&nbsp;by Dominique Vitalyos.<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:1-4\">[4]</a></p>\r\n\r\n<p>The novel tells the story of a young university student, who leaves a promising future to take up a primary school teacher&rsquo;s job in the remote village of Khasak. Little by little, the village reveals its secrets. The protagonist is soon bewitched by this ancient village where dreams and legends intermingle. He immerses himself in the &quot;bewitching sensuousness&quot; of the new &quot;rustic, amoral world&quot;, only to emerge as an &quot;involved outsider&quot;.<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:3-5\">[5]</a>&nbsp;He finds rational inquiry meaningless and begins a metaphorical journey inwards.<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:4-6\">[6]</a>&nbsp;The novel is often associated with the general disillusionment with the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Communism\" title=\"Communism\">communist</a>&nbsp;movement in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kerala\" title=\"Kerala\">Kerala</a>&nbsp;in the 1960s.<a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam#cite_note-:4-6\">[6]</a></p>', '2022-04-28', 'book/image/khasakk_O0u6EQR.jpg', 2, 2),
(3, 'Gurusagaram', '<p><em><strong>Gurusagaram</strong></em>&nbsp;(<em>Eternity of Grace</em>) is a 1987 novel written by&nbsp;<a href=\"https://en.wikipedia.org/wiki/O._V._Vijayan\" title=\"O. V. Vijayan\">O. V. Vijayan</a>. The novel is a spiritual odyssey into the human psyche. It differs in language, vision and characterisation from Vijayan&#39;s earlier works such as&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Khasakkinte_Itihasam\" title=\"Khasakkinte Itihasam\">Khasakkinte Itihasam</a></em>&nbsp;and&nbsp;<em>Dharmapuranam</em>. It won many major awards including the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sahitya_Akademi_Award\" title=\"Sahitya Akademi Award\">Kendra Sahitya Akademi Award</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kerala_Sahitya_Akademi_Award\" title=\"Kerala Sahitya Akademi Award\">Kerala Sahitya Akademi Award</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vayalar_Award\" title=\"Vayalar Award\">Vayalar Award</a>.</p>', '1987-04-02', 'book/image/guru.jpg', 2, 2),
(4, 'Ente Katha', '<p><em><strong>Ente Kadha</strong></em>&nbsp;(<em>My Story</em>) is an autobiography written by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Kamala_Surayya\" title=\"Kamala Surayya\">Kamala Surayya</a>&nbsp;(Madhavikutty) in the year 1973. She was motivated to write this as she became ill and thought will not survive. The book was controversial and outspoken and had her critics gunning her after it was published in 1973; often shocking her readers with her for conventions and expression of her opinions on subjects in society- more often on the hypocrisy of it. Though&nbsp;<em>My Story</em>&nbsp;was supposed to be an autobiography, Das later admitted that there was plenty of fiction in it.<a href=\"https://en.wikipedia.org/wiki/Ente_Katha#cite_note-1\">[1]</a></p>', '1973-05-04', 'book/image/Ente_Katha.jpg', 3, 4),
(5, 'Randamoozham', '<p><em>Randamoozham</em>&nbsp;(<em>The Second Turn</em>; 1984), widely regarded as the author&#39;s masterpiece, retells the story of the&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Mahabharatha\" title=\"Mahabharatha\">Mahabharatha</a></em>&nbsp;from the point of view of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bhima\" title=\"Bhima\">Bhimasena</a>, supposed to be the son of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vayu\" title=\"Vayu\">Vayu</a>; this is demystified or demythified in the novel. In this novel, Bhima gains, through the author&#39;s ironic undertones, a new psychological depth. &quot;I have not changed the framework of the story by the first Vyasa, Krishna-Dwaipayana. I have read between his lines and expanded on his pregnant silences,&quot; says the author.</p>', '1984-02-10', 'book/image/Randamoozham.jpg', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_category`
--

CREATE TABLE `libraryapp_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_category`
--

INSERT INTO `libraryapp_category` (`id`, `category_name`) VALUES
(2, 'novel'),
(3, 'short story'),
(4, 'autobiography');

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_fine`
--

CREATE TABLE `libraryapp_fine` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `issue_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_fine`
--

INSERT INTO `libraryapp_fine` (`id`, `amount`, `issue_id`, `user_id`) VALUES
(1, '10.00', 1, 1),
(2, '20.00', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_issue`
--

CREATE TABLE `libraryapp_issue` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `issued` tinyint(1) NOT NULL,
  `issued_at` datetime(6) DEFAULT NULL,
  `returned` tinyint(1) NOT NULL,
  `return_date` datetime(6) DEFAULT NULL,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_issue`
--

INSERT INTO `libraryapp_issue` (`id`, `created_at`, `issued`, `issued_at`, `returned`, `return_date`, `book_id`, `user_id`) VALUES
(1, '2022-04-27 20:12:38.263097', 1, '2022-04-07 18:25:13.000000', 1, '2022-05-22 18:25:13.000000', 2, 1),
(5, '2022-05-02 06:40:38.373601', 1, '2022-04-28 20:53:12.544307', 1, '2022-05-13 20:53:12.544307', 3, 1),
(6, '2022-04-28 10:12:48.769402', 1, '2022-04-28 10:12:48.757042', 0, '2022-05-13 10:12:48.757042', 4, 5),
(7, '2022-04-28 20:03:33.222917', 0, NULL, 0, NULL, 4, 6),
(8, '2022-05-02 06:57:01.606532', 1, '2022-04-29 07:44:13.944692', 1, '2022-04-30 07:44:13.944692', 5, 1),
(9, '2022-05-02 07:10:56.101842', 1, '2022-05-02 07:10:56.101842', 0, '2022-05-03 07:10:56.101842', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `libraryapp_usermember`
--

CREATE TABLE `libraryapp_usermember` (
  `id` bigint(20) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_gender` varchar(150) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libraryapp_usermember`
--

INSERT INTO `libraryapp_usermember` (`id`, `user_address`, `user_gender`, `user_mobile`, `user_photo`, `user_id`) VALUES
(1, 'Pachoor h', 'male', '9877', 'user/photo/default_rfpFxm8.png', 2),
(4, 'aaakk', 'male', '657838', 'user/photo/default_wQFHXuK.png', 5),
(5, 'aaa', 'male', '7654', 'user/photo/default_dlzUbCH.png', 6),
(6, 'dnkej', 'male', '76544', 'user/photo/default_ElK9zfL.png', 7);

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
-- Indexes for table `libraryapp_author`
--
ALTER TABLE `libraryapp_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraryapp_book`
--
ALTER TABLE `libraryapp_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LibraryApp_book_book_author_id_7d532d87_fk_LibraryApp_author_id` (`book_author_id`),
  ADD KEY `LibraryApp_book_book_category_id_2e26d131_fk_LibraryAp` (`book_category_id`);

--
-- Indexes for table `libraryapp_category`
--
ALTER TABLE `libraryapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraryapp_fine`
--
ALTER TABLE `libraryapp_fine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LibraryApp_fine_issue_id_d27968b7_fk_LibraryApp_issue_id` (`issue_id`),
  ADD KEY `LibraryApp_fine_user_id_16b66a3d_fk_LibraryApp_usermember_id` (`user_id`);

--
-- Indexes for table `libraryapp_issue`
--
ALTER TABLE `libraryapp_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LibraryApp_issue_book_id_488947d9_fk_LibraryApp_book_id` (`book_id`),
  ADD KEY `LibraryApp_issue_user_id_aa5f479a_fk_LibraryApp_usermember_id` (`user_id`);

--
-- Indexes for table `libraryapp_usermember`
--
ALTER TABLE `libraryapp_usermember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LibraryApp_usermember_user_id_509aa889_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `libraryapp_author`
--
ALTER TABLE `libraryapp_author`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `libraryapp_book`
--
ALTER TABLE `libraryapp_book`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `libraryapp_category`
--
ALTER TABLE `libraryapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `libraryapp_fine`
--
ALTER TABLE `libraryapp_fine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `libraryapp_issue`
--
ALTER TABLE `libraryapp_issue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `libraryapp_usermember`
--
ALTER TABLE `libraryapp_usermember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `libraryapp_book`
--
ALTER TABLE `libraryapp_book`
  ADD CONSTRAINT `LibraryApp_book_book_author_id_7d532d87_fk_LibraryApp_author_id` FOREIGN KEY (`book_author_id`) REFERENCES `libraryapp_author` (`id`),
  ADD CONSTRAINT `LibraryApp_book_book_category_id_2e26d131_fk_LibraryAp` FOREIGN KEY (`book_category_id`) REFERENCES `libraryapp_category` (`id`);

--
-- Constraints for table `libraryapp_fine`
--
ALTER TABLE `libraryapp_fine`
  ADD CONSTRAINT `LibraryApp_fine_issue_id_d27968b7_fk_LibraryApp_issue_id` FOREIGN KEY (`issue_id`) REFERENCES `libraryapp_issue` (`id`),
  ADD CONSTRAINT `LibraryApp_fine_user_id_16b66a3d_fk_LibraryApp_usermember_id` FOREIGN KEY (`user_id`) REFERENCES `libraryapp_usermember` (`id`);

--
-- Constraints for table `libraryapp_issue`
--
ALTER TABLE `libraryapp_issue`
  ADD CONSTRAINT `LibraryApp_issue_book_id_488947d9_fk_LibraryApp_book_id` FOREIGN KEY (`book_id`) REFERENCES `libraryapp_book` (`id`),
  ADD CONSTRAINT `LibraryApp_issue_user_id_aa5f479a_fk_LibraryApp_usermember_id` FOREIGN KEY (`user_id`) REFERENCES `libraryapp_usermember` (`id`);

--
-- Constraints for table `libraryapp_usermember`
--
ALTER TABLE `libraryapp_usermember`
  ADD CONSTRAINT `LibraryApp_usermember_user_id_509aa889_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
