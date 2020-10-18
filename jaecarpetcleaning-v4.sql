-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2020 at 11:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaecarpetcleaning`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-01 15:40:47', '2020-04-01 15:40:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://jae-carpet-cleaning:8888/', 'yes'),
(2, 'home', 'http://jae-carpet-cleaning:8888/', 'yes'),
(3, 'blogname', 'Carpet Cleaning NZ Wide | Carpet Cleaner | Pest Control | JAE', 'yes'),
(4, 'blogdescription', 'Carpet cleaning, pest control, flood, fire &amp; smoke restoration, rug &amp; upholstery cleaning; 36 branches NZ wide - JAE are just a call away 0800 225 552.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yourname@yourdomain.mamp', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:128:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"slide/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"slide/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"slide/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"slide/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"slide/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"slide/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"slide/([^/]+)/embed/?$\";s:38:\"index.php?slide=$matches[1]&embed=true\";s:26:\"slide/([^/]+)/trackback/?$\";s:32:\"index.php?slide=$matches[1]&tb=1\";s:34:\"slide/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&paged=$matches[2]\";s:41:\"slide/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?slide=$matches[1]&cpage=$matches[2]\";s:30:\"slide/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?slide=$matches[1]&page=$matches[2]\";s:22:\"slide/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"slide/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"slide/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"slide/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"slide/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"slide/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"service/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"service/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"service/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"service/([^/]+)/embed/?$\";s:40:\"index.php?service=$matches[1]&embed=true\";s:28:\"service/([^/]+)/trackback/?$\";s:34:\"index.php?service=$matches[1]&tb=1\";s:36:\"service/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&paged=$matches[2]\";s:43:\"service/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?service=$matches[1]&cpage=$matches[2]\";s:32:\"service/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?service=$matches[1]&page=$matches[2]\";s:24:\"service/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"service/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"service/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:95:\"/Applications/MAMP/htdocs/jae-carpet-cleaning/wp-content/themes/jaecarpetcleaning/functions.php\";i:1;s:91:\"/Applications/MAMP/htdocs/jae-carpet-cleaning/wp-content/themes/jaecarpetcleaning/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'jaecarpetcleaning', 'yes'),
(41, 'stylesheet', 'jaecarpetcleaning', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Pacific/Auckland', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1618348381', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1603060848;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1603078848;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1603122048;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603122426;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603122427;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603381248;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602799479;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(142, 'WPLANG', 'en_NZ', 'yes'),
(143, 'new_admin_email', 'yourname@yourdomain.mamp', 'yes'),
(172, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"yourname@yourdomain.mamp\";s:7:\"version\";s:5:\"5.4.2\";s:9:\"timestamp\";i:1602796360;}', 'no'),
(173, '_site_transient_timeout_php_check_09014c84783552a9b699e7274e96a72d', '1603401162', 'no'),
(174, '_site_transient_php_check_09014c84783552a9b699e7274e96a72d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(175, '_transient_health-check-site-status-result', '{\"good\":\"9\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(176, '_site_transient_timeout_browser_d4172e5c9a84c48be851975559482132', '1603401182', 'no'),
(177, '_site_transient_browser_d4172e5c9a84c48be851975559482132', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(191, 'disallowed_keys', '', 'no'),
(192, 'comment_previously_approved', '1', 'yes'),
(193, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(194, 'finished_updating_comment_type', '1', 'yes'),
(195, 'db_upgraded', '', 'yes'),
(200, 'can_compress_scripts', '1', 'no'),
(235, 'current_theme', 'Jae Carpet Cleaning', 'yes'),
(236, 'theme_mods_jaecarpetcleaning', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(237, 'theme_switched', '', 'yes'),
(238, 'logged_in_key', 'jj6qL*61BEF]:!mTD|U;^@tA&ucH*`9:6eh,478HJxtVc)~**f,6;;NcC?uS{?G}', 'no'),
(239, 'logged_in_salt', 'GBvw7QQ8EO}[O}&zrVa#-;VSLY@[}99u/sexZ^gEIC 4Gl{65<K8kuVOUtOT CB%', 'no'),
(240, 'nonce_key', '8;>BA=RU#Kc^]g8b09pz64!v. l-;Lud(#aYG|ajt.dS>ote(3irJq#q&!]AN[a1', 'no'),
(241, 'nonce_salt', 'HZ5sOqB1ymJ&RKG&)<k:(A6.=I6_vL/h<6}eWHp5:2Bf.HqKLsV`3T- ;$ .q>Dx', 'no'),
(243, 'auth_key', 'b2a}4$l_[A>IX_!>rh,zeZ4QG!T*Oo%778AF;/Y7rCAacZhWOy0@x<IBHuBYa#P!', 'no'),
(244, 'auth_salt', 'n^s5D_]+/]$v>v% ^}#fOI[hR{VsB4s+QYtpRmrur@Bau^F#l7_>Qr%N(2JIbJc7', 'no'),
(245, '_site_transient_timeout_browser_40bcd8631a6cfad4b9f36dc6b4aca869', '1603414229', 'no'),
(246, '_site_transient_browser_40bcd8631a6cfad4b9f36dc6b4aca869', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.80\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(247, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1603414230', 'no'),
(248, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(255, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(257, 'recovery_mode_email_last_sent', '1602812858', 'yes'),
(261, 'recently_activated', 'a:0:{}', 'yes'),
(262, 'acf_version', '5.9.1', 'yes'),
(310, 'bodhi_svgs_plugin_version', '2.3.18', 'yes'),
(347, '_transient_timeout_oembed_b47c96e149217bedf270713fbe344573', '1603080848', 'no'),
(348, '_transient_oembed_b47c96e149217bedf270713fbe344573', 'O:8:\"stdClass\":13:{s:15:\"thumbnail_width\";i:480;s:10:\"author_url\";s:56:\"https://www.youtube.com/channel/UCvOBZI2nYiTHIiSz1rEXSzQ\";s:4:\"html\";s:273:\"<iframe title=\"Taking Care of it for 50 Years\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/JCC4j_YrCms?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\";s:11:\"author_name\";s:14:\"JAE Group Inc.\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:30:\"Taking Care of it for 50 Years\";s:13:\"thumbnail_url\";s:48:\"https://i.ytimg.com/vi/JCC4j_YrCms/hqdefault.jpg\";s:5:\"width\";i:600;s:13:\"provider_name\";s:7:\"YouTube\";s:4:\"type\";s:5:\"video\";s:12:\"provider_url\";s:24:\"https://www.youtube.com/\";s:16:\"thumbnail_height\";i:360;s:6:\"height\";i:338;}', 'no'),
(351, '_site_transient_timeout_theme_roots', '1603056601', 'no'),
(352, '_site_transient_theme_roots', 'a:4:{s:17:\"jaecarpetcleaning\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(353, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_NZ\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1603054803;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(354, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603054804;s:7:\"checked\";a:4:{s:17:\"jaecarpetcleaning\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(355, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1603054805;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:6:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.9.1\";s:7:\"updated\";s:19:\"2020-08-26 20:23:44\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.1/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.9.1\";s:7:\"updated\";s:19:\"2020-08-18 12:38:20\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.1\";s:7:\"updated\";s:19:\"2020-05-01 16:25:33\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/5.9.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"svg-support\";s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:6:\"2.3.18\";s:7:\"updated\";s:19:\"2018-05-11 23:26:32\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/svg-support/2.3.18/en_NZ.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"svg-support\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:6:\"2.3.18\";s:7:\"updated\";s:19:\"2020-04-05 05:38:59\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/svg-support/2.3.18/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"svg-support\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"2.3.18\";s:7:\"updated\";s:19:\"2019-04-25 13:31:06\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/svg-support/2.3.18/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1602809418:1'),
(4, 7, '_edit_lock', '1602809458:1'),
(5, 8, '_edit_lock', '1602907699:1'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1602809642'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 3, '_wp_trash_meta_status', 'draft'),
(10, 3, '_wp_trash_meta_time', '1602809644'),
(11, 3, '_wp_desired_post_slug', 'privacy-policy'),
(12, 12, '_edit_lock', '1603055688:1'),
(13, 14, '_edit_lock', '1602994210:1'),
(14, 16, '_edit_lock', '1602810470:1'),
(15, 18, '_edit_lock', '1602810495:1'),
(16, 21, '_menu_item_type', 'post_type'),
(17, 21, '_menu_item_menu_item_parent', '0'),
(18, 21, '_menu_item_object_id', '8'),
(19, 21, '_menu_item_object', 'page'),
(20, 21, '_menu_item_target', ''),
(21, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 21, '_menu_item_xfn', ''),
(23, 21, '_menu_item_url', ''),
(24, 22, '_menu_item_type', 'post_type'),
(25, 22, '_menu_item_menu_item_parent', '0'),
(26, 22, '_menu_item_object_id', '18'),
(27, 22, '_menu_item_object', 'page'),
(28, 22, '_menu_item_target', ''),
(29, 22, '_menu_item_classes', 'a:3:{i:0;s:7:\"mr-lg-3\";i:1;s:4:\"pb-2\";i:2;s:7:\"pb-lg-0\";}'),
(30, 22, '_menu_item_xfn', ''),
(31, 22, '_menu_item_url', ''),
(32, 23, '_menu_item_type', 'post_type'),
(33, 23, '_menu_item_menu_item_parent', '0'),
(34, 23, '_menu_item_object_id', '16'),
(35, 23, '_menu_item_object', 'page'),
(36, 23, '_menu_item_target', ''),
(37, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 23, '_menu_item_xfn', ''),
(39, 23, '_menu_item_url', ''),
(40, 24, '_menu_item_type', 'post_type'),
(41, 24, '_menu_item_menu_item_parent', '0'),
(42, 24, '_menu_item_object_id', '14'),
(43, 24, '_menu_item_object', 'page'),
(44, 24, '_menu_item_target', ''),
(45, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 24, '_menu_item_xfn', ''),
(47, 24, '_menu_item_url', ''),
(48, 25, '_menu_item_type', 'post_type'),
(49, 25, '_menu_item_menu_item_parent', '0'),
(50, 25, '_menu_item_object_id', '12'),
(51, 25, '_menu_item_object', 'page'),
(52, 25, '_menu_item_target', ''),
(53, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 25, '_menu_item_xfn', ''),
(55, 25, '_menu_item_url', ''),
(56, 20, '_wp_trash_meta_status', 'publish'),
(57, 20, '_wp_trash_meta_time', '1602811257'),
(58, 26, '_edit_lock', '1602811278:1'),
(59, 27, '_menu_item_type', 'custom'),
(60, 27, '_menu_item_menu_item_parent', '0'),
(61, 27, '_menu_item_object_id', '27'),
(62, 27, '_menu_item_object', 'custom'),
(63, 27, '_menu_item_target', ''),
(64, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 27, '_menu_item_xfn', ''),
(66, 27, '_menu_item_url', 'tel:0800%20225%20552'),
(67, 26, '_wp_trash_meta_status', 'publish'),
(68, 26, '_wp_trash_meta_time', '1602811319'),
(69, 30, '_edit_last', '1'),
(70, 30, '_edit_lock', '1602819593:1'),
(71, 35, '_edit_last', '1'),
(72, 35, '_edit_lock', '1602820357:1'),
(73, 36, '_wp_attached_file', '2020/10/slide-1.jpg'),
(74, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:650;s:4:\"file\";s:19:\"2020/10/slide-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-1-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-1-1024x347.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-1-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slide-1-1536x520.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 35, 'background_image', '36'),
(76, 35, '_background_image', 'field_5f89105495e7f'),
(77, 35, 'headline', ''),
(78, 35, '_headline', 'field_5f89108895e80'),
(79, 35, 'subtitle', ''),
(80, 35, '_subtitle', 'field_5f89109395e81'),
(81, 35, 'button_link', 'Get a Quote Today'),
(82, 35, '_button_link', 'field_5f8910e295e82'),
(83, 35, 'url', 'a:3:{s:5:\"title\";s:17:\"Get a Quote Today\";s:3:\"url\";s:49:\"http://localhost/jae-carpet-cleaning/get-a-quote/\";s:6:\"target\";s:0:\"\";}'),
(84, 35, '_url', 'field_5f8910e295e82'),
(85, 37, '_edit_last', '1'),
(86, 37, '_edit_lock', '1602896325:1'),
(87, 38, '_wp_attached_file', '2020/10/slide-2.jpg'),
(88, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:650;s:4:\"file\";s:19:\"2020/10/slide-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-2-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-2-1024x347.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-2-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slide-2-1536x520.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 39, '_wp_attached_file', '2020/10/slide-3.jpg'),
(90, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:650;s:4:\"file\";s:19:\"2020/10/slide-3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-3-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-3-1024x347.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:347;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-3-768x260.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slide-3-1536x520.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 37, 'background_image', '38'),
(92, 37, '_background_image', 'field_5f89105495e7f'),
(93, 37, 'url', 'a:3:{s:5:\"title\";s:24:\"Find a Location near you\";s:3:\"url\";s:41:\"http://jae-carpet-cleaning:8888/location/\";s:6:\"target\";s:0:\"\";}'),
(94, 37, '_url', 'field_5f8910e295e82'),
(95, 40, '_edit_last', '1'),
(96, 40, '_edit_lock', '1602897369:1'),
(97, 40, 'background_image', '39'),
(98, 40, '_background_image', 'field_5f89105495e7f'),
(99, 40, 'url', 'a:3:{s:5:\"title\";s:17:\"Get a Quote Today\";s:3:\"url\";s:44:\"http://jae-carpet-cleaning:8888/get-a-quote/\";s:6:\"target\";s:0:\"\";}'),
(100, 40, '_url', 'field_5f8910e295e82'),
(101, 40, '_wp_trash_meta_status', 'publish'),
(102, 40, '_wp_trash_meta_time', '1602897819'),
(103, 40, '_wp_desired_post_slug', 'upholstery-leather-cleaning'),
(104, 41, '_edit_last', '1'),
(105, 41, '_edit_lock', '1602897802:1'),
(106, 41, 'background_image', '39'),
(107, 41, '_background_image', 'field_5f89105495e7f'),
(108, 41, 'url', 'a:3:{s:5:\"title\";s:17:\"Get a Quote Today\";s:3:\"url\";s:44:\"http://jae-carpet-cleaning:8888/get-a-quote/\";s:6:\"target\";s:0:\"\";}'),
(109, 41, '_url', 'field_5f8910e295e82'),
(110, 41, '_wp_trash_meta_status', 'publish'),
(111, 41, '_wp_trash_meta_time', '1602897952'),
(112, 41, '_wp_desired_post_slug', 'upholstery-leather-cleaning'),
(113, 42, '_edit_last', '1'),
(114, 42, '_edit_lock', '1602899369:1'),
(115, 42, 'background_image', '39'),
(116, 42, '_background_image', 'field_5f89105495e7f'),
(117, 42, 'url', 'a:3:{s:5:\"title\";s:17:\"Get a Quote Today\";s:3:\"url\";s:44:\"http://jae-carpet-cleaning:8888/get-a-quote/\";s:6:\"target\";s:0:\"\";}'),
(118, 42, '_url', 'field_5f8910e295e82'),
(119, 44, '_edit_last', '1'),
(120, 44, '_edit_lock', '1602899790:1'),
(121, 48, '_edit_last', '1'),
(122, 48, '_edit_lock', '1602901891:1'),
(123, 49, '_wp_attached_file', '2020/10/5d02d11f7c256530260f3883_jae-carpet-cleaning.jpg'),
(124, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:56:\"2020/10/5d02d11f7c256530260f3883_jae-carpet-cleaning.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"5d02d11f7c256530260f3883_jae-carpet-cleaning-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"5d02d11f7c256530260f3883_jae-carpet-cleaning-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 50, '_edit_last', '1'),
(126, 50, '_edit_lock', '1602901990:1'),
(127, 50, 'summary', 'Our local JAE carpet cleaners offer a total care package that cleans, sanitises, deodorises and protects your carpet.'),
(128, 50, '_summary', 'field_5f8a4e537e021'),
(129, 50, 'photo', '49'),
(130, 50, '_photo', 'field_5f8a4e6c7e022'),
(131, 50, 'icon', '51'),
(132, 50, '_icon', 'field_5f8a4edeea562'),
(133, 51, '_wp_attached_file', '2020/10/5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg'),
(134, 51, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:66:\"/2020/10/5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(135, 52, '_wp_attached_file', '2020/10/5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg'),
(136, 52, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:66:\"/2020/10/5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(137, 53, '_wp_attached_file', '2020/10/5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg'),
(138, 53, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:70:\"/2020/10/5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:61:\"5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(139, 54, '_wp_attached_file', '2020/10/5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg'),
(140, 54, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:63:\"/2020/10/5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(141, 55, '_wp_attached_file', '2020/10/5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg'),
(142, 55, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:68:\"/2020/10/5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(143, 56, '_wp_attached_file', '2020/10/5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg'),
(144, 56, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:66:\"/2020/10/5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:57:\"5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(145, 57, '_wp_attached_file', '2020/10/5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg'),
(146, 57, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:68:\"/2020/10/5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:59:\"5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(147, 58, '_wp_attached_file', '2020/10/5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg'),
(148, 58, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:73:\"/2020/10/5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:64:\"5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(149, 59, '_wp_attached_file', '2020/10/5dd5f18e01833c7048ab449f_jae-services-pest-control.svg'),
(150, 59, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:63:\"/2020/10/5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:54:\"5dd5f18e01833c7048ab449f_jae-services-pest-control.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(151, 48, '_wp_trash_meta_status', 'draft'),
(152, 48, '_wp_trash_meta_time', '1602902041'),
(153, 48, '_wp_desired_post_slug', ''),
(154, 60, '_edit_last', '1'),
(155, 60, '_edit_lock', '1602902277:1'),
(156, 61, '_wp_attached_file', '2020/10/5d02d113a41f6d1e0edb61e1_jae-stain-treatments.jpg'),
(157, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:57:\"2020/10/5d02d113a41f6d1e0edb61e1_jae-stain-treatments.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"5d02d113a41f6d1e0edb61e1_jae-stain-treatments-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"5d02d113a41f6d1e0edb61e1_jae-stain-treatments-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 60, 'summary', 'At JAE we\'ve put years of training and research into developing many of our own products and processes for tackling the toughest of stains.'),
(159, 60, '_summary', 'field_5f8a4e537e021'),
(160, 60, 'photo', '61'),
(161, 60, '_photo', 'field_5f8a4e6c7e022'),
(162, 60, 'icon', '52'),
(163, 60, '_icon', 'field_5f8a4edeea562'),
(164, 62, '_edit_last', '1'),
(165, 62, '_edit_lock', '1602904145:1'),
(166, 63, '_wp_attached_file', '2020/10/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning.jpg'),
(167, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:60:\"2020/10/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"5d02d10193e4a885d1a7440e_jae-upholstery-cleaning-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"5d02d10193e4a885d1a7440e_jae-upholstery-cleaning-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 62, 'summary', ' With decades of experience in cleaning delicate fabrics and leather, JAE can help revive and enhance their appearance.'),
(169, 62, '_summary', 'field_5f8a4e537e021'),
(170, 62, 'photo', '63'),
(171, 62, '_photo', 'field_5f8a4e6c7e022'),
(172, 62, 'icon', '53'),
(173, 62, '_icon', 'field_5f8a4edeea562'),
(174, 62, '_wp_trash_meta_status', 'publish'),
(175, 62, '_wp_trash_meta_time', '1602906673'),
(176, 62, '_wp_desired_post_slug', 'upholstery-leather-cleaning'),
(177, 60, '_wp_trash_meta_status', 'publish'),
(178, 60, '_wp_trash_meta_time', '1602906673'),
(179, 60, '_wp_desired_post_slug', 'stain-treatment'),
(180, 50, '_wp_trash_meta_status', 'publish'),
(181, 50, '_wp_trash_meta_time', '1602906673'),
(182, 50, '_wp_desired_post_slug', 'carpet-cleaning'),
(183, 64, '_edit_last', '1'),
(184, 64, '_edit_lock', '1602906607:1'),
(185, 65, '_wp_attached_file', '2020/10/5d02d07cc253edfebbd078fc_jae-fire-restoration.jpg'),
(186, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:57:\"2020/10/5d02d07cc253edfebbd078fc_jae-fire-restoration.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"5d02d07cc253edfebbd078fc_jae-fire-restoration-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"5d02d07cc253edfebbd078fc_jae-fire-restoration-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 64, 'summary', ' Our technicians are trained to recognise the unique behaviour of smoke and the various types of smoke damage.'),
(188, 64, '_summary', 'field_5f8a4e537e021'),
(189, 64, 'photo', '65'),
(190, 64, '_photo', 'field_5f8a4e6c7e022'),
(191, 64, 'icon', '58'),
(192, 64, '_icon', 'field_5f8a4edeea562'),
(193, 66, '_edit_last', '1'),
(194, 66, '_edit_lock', '1602906672:1'),
(195, 67, '_wp_attached_file', '2020/10/5d02ca66b9a7fd424eb9748c_jae-flood-restoration.jpg'),
(196, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:58:\"2020/10/5d02ca66b9a7fd424eb9748c_jae-flood-restoration.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"5d02ca66b9a7fd424eb9748c_jae-flood-restoration-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"5d02ca66b9a7fd424eb9748c_jae-flood-restoration-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 66, 'summary', ' Utilising our innovative drying technology, we can often dry on-site in most cases, restoring and reviving saturated carpets and fabrics.'),
(198, 66, '_summary', 'field_5f8a4e537e021'),
(199, 66, 'photo', '67'),
(200, 66, '_photo', 'field_5f8a4e6c7e022'),
(201, 66, 'icon', '57'),
(202, 66, '_icon', 'field_5f8a4edeea562'),
(203, 68, '_edit_last', '1'),
(204, 68, '_edit_lock', '1602906783:1'),
(205, 69, '_wp_attached_file', '2020/10/5d02d064c253ed073dd078b7_jae-pest-control.jpg'),
(206, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:53:\"2020/10/5d02d064c253ed073dd078b7_jae-pest-control.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"5d02d064c253ed073dd078b7_jae-pest-control-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"5d02d064c253ed073dd078b7_jae-pest-control-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 68, 'summary', 'Our pest control teams are committed to the correct and safe application of pest management agents.'),
(208, 68, '_summary', 'field_5f8a4e537e021'),
(209, 68, 'photo', '69'),
(210, 68, '_photo', 'field_5f8a4e6c7e022'),
(211, 68, 'icon', '59'),
(212, 68, '_icon', 'field_5f8a4edeea562'),
(213, 70, '_edit_last', '1'),
(214, 70, '_edit_lock', '1602906849:1'),
(215, 71, '_wp_attached_file', '2020/10/5d02d0c793e4a87e70a743af_jae-odour-treatments.jpg'),
(216, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:57:\"2020/10/5d02d0c793e4a87e70a743af_jae-odour-treatments.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"5d02d0c793e4a87e70a743af_jae-odour-treatments-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"5d02d0c793e4a87e70a743af_jae-odour-treatments-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 70, 'summary', 'JAE offer a variety of odour treatments that can eliminate, not just mask, strong and offensive odours.'),
(218, 70, '_summary', 'field_5f8a4e537e021'),
(219, 70, 'photo', '71'),
(220, 70, '_photo', 'field_5f8a4e6c7e022'),
(221, 70, 'icon', '56'),
(222, 70, '_icon', 'field_5f8a4edeea562'),
(223, 72, '_edit_last', '1'),
(224, 72, '_edit_lock', '1602906914:1'),
(225, 72, 'summary', 'With our fabric protection products, you can relax and enjoy your home and furnishings with peace of mind, knowing they are well protected.'),
(226, 72, '_summary', 'field_5f8a4e537e021'),
(227, 72, 'photo', '67'),
(228, 72, '_photo', 'field_5f8a4e6c7e022'),
(229, 72, 'icon', '55'),
(230, 72, '_icon', 'field_5f8a4edeea562'),
(231, 73, '_edit_last', '1'),
(232, 73, '_edit_lock', '1602906978:1'),
(233, 74, '_wp_attached_file', '2020/10/5d88266808e53e95dff7ff72_oriental-rug-cleaning.jpg'),
(234, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:300;s:4:\"file\";s:58:\"2020/10/5d88266808e53e95dff7ff72_oriental-rug-cleaning.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"5d88266808e53e95dff7ff72_oriental-rug-cleaning-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"5d88266808e53e95dff7ff72_oriental-rug-cleaning-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 73, 'summary', 'JAE offers highly specialised and delicate cleaning and stain treatments to revive and enhance most rugs.'),
(236, 73, '_summary', 'field_5f8a4e537e021'),
(237, 73, 'photo', '74'),
(238, 73, '_photo', 'field_5f8a4e6c7e022'),
(239, 73, 'icon', '54'),
(240, 73, '_icon', 'field_5f8a4edeea562'),
(241, 75, '_edit_last', '1'),
(242, 75, '_edit_lock', '1602907030:1'),
(243, 75, 'summary', 'With decades of experience in cleaning delicate fabrics and leather, JAE can help revive and enhance their appearance.'),
(244, 75, '_summary', 'field_5f8a4e537e021'),
(245, 75, 'photo', '63'),
(246, 75, '_photo', 'field_5f8a4e6c7e022'),
(247, 75, 'icon', '53'),
(248, 75, '_icon', 'field_5f8a4edeea562'),
(249, 76, '_edit_last', '1'),
(250, 76, '_edit_lock', '1602907080:1'),
(251, 76, 'summary', 'At JAE we\'ve put years of training and research into developing many of our own products and processes for tackling the toughest of stains.'),
(252, 76, '_summary', 'field_5f8a4e537e021'),
(253, 76, 'photo', '61'),
(254, 76, '_photo', 'field_5f8a4e6c7e022'),
(255, 76, 'icon', '52'),
(256, 76, '_icon', 'field_5f8a4edeea562'),
(257, 77, '_edit_last', '1'),
(258, 77, '_edit_lock', '1602907303:1'),
(259, 77, 'summary', 'Our local JAE carpet cleaners offer a total care package that cleans, sanitises, deodorises and protects your carpet.'),
(260, 77, '_summary', 'field_5f8a4e537e021'),
(261, 77, 'photo', '49'),
(262, 77, '_photo', 'field_5f8a4e6c7e022'),
(263, 77, 'icon', '51'),
(264, 77, '_icon', 'field_5f8a4edeea562'),
(265, 8, 'inline_featured_image', '0'),
(266, 87, '_wp_trash_meta_status', 'publish'),
(267, 87, '_wp_trash_meta_time', '1602907875'),
(268, 14, 'inline_featured_image', '0'),
(269, 12, 'inline_featured_image', '0'),
(270, 12, '_oembed_96f7dc3eab2eed6570420c4baf5d120f', '<iframe title=\"Taking Care of it for 50 Years\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/JCC4j_YrCms?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(271, 12, '_oembed_time_96f7dc3eab2eed6570420c4baf5d120f', '1602996708'),
(272, 101, '_edit_last', '1'),
(273, 101, '_edit_lock', '1603056562:1'),
(274, 104, '_edit_last', '1'),
(275, 104, '_edit_lock', '1603056942:1'),
(276, 104, 'button', 'a:3:{s:5:\"title\";s:24:\"Find a Location near you\";s:3:\"url\";s:41:\"http://jae-carpet-cleaning:8888/location/\";s:6:\"target\";s:0:\"\";}'),
(277, 104, '_button', 'field_5f8cb116a99f4'),
(278, 104, '_', 'field_5f8cb130a99f5'),
(279, 105, '_edit_last', '1'),
(280, 105, '_edit_lock', '1603057455:1'),
(281, 105, 'button', ''),
(282, 105, '_button', 'field_5f8cb116a99f4'),
(283, 105, '_wp_trash_meta_status', 'publish'),
(284, 105, '_wp_trash_meta_time', '1603057606'),
(285, 105, '_wp_desired_post_slug', 'this-is-a-test'),
(286, 106, '_edit_last', '1'),
(287, 106, '_edit_lock', '1603057952:1'),
(288, 109, '_wp_attached_file', '2020/10/5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor.png'),
(289, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:72:\"2020/10/5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 110, '_wp_attached_file', '2020/10/5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner.png'),
(291, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:67:\"2020/10/5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 111, '_wp_attached_file', '2020/10/5d5f3385e064ab4a036de527_jae-cleaning-state-partner.png'),
(293, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:63:\"2020/10/5d5f3385e064ab4a036de527_jae-cleaning-state-partner.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"5d5f3385e064ab4a036de527_jae-cleaning-state-partner-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 112, '_wp_attached_file', '2020/10/5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner.png'),
(295, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:63:\"2020/10/5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 113, '_wp_attached_file', '2020/10/5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner.png'),
(297, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:67:\"2020/10/5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:67:\"5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 114, '_wp_attached_file', '2020/10/5dd603c0cd567c93ae602628_jae-partner-ray-white.png'),
(299, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:100;s:4:\"file\";s:58:\"2020/10/5dd603c0cd567c93ae602628_jae-partner-ray-white.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"5dd603c0cd567c93ae602628_jae-partner-ray-white-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 108, '_edit_last', '1'),
(301, 108, 'logo', '112'),
(302, 108, '_logo', 'field_5f8cb8eddbe04'),
(303, 108, '_edit_lock', '1603058056:1'),
(304, 115, '_edit_last', '1'),
(305, 115, 'logo', '114'),
(306, 115, '_logo', 'field_5f8cb8eddbe04'),
(307, 115, '_edit_lock', '1603058076:1'),
(308, 116, '_edit_last', '1'),
(309, 116, 'logo', '111'),
(310, 116, '_logo', 'field_5f8cb8eddbe04'),
(311, 116, '_edit_lock', '1603058088:1'),
(312, 117, '_edit_last', '1'),
(313, 117, 'logo', '113'),
(314, 117, '_logo', 'field_5f8cb8eddbe04'),
(315, 117, '_edit_lock', '1603058100:1'),
(316, 118, '_edit_last', '1'),
(317, 118, 'logo', '110'),
(318, 118, '_logo', 'field_5f8cb8eddbe04'),
(319, 118, '_edit_lock', '1603058108:1'),
(320, 119, '_edit_last', '1'),
(321, 119, 'logo', '109'),
(322, 119, '_logo', 'field_5f8cb8eddbe04'),
(323, 119, '_edit_lock', '1603058262:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-01 15:40:47', '2020-04-01 15:40:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-01 15:40:47', '2020-04-01 15:40:47', '', 0, 'http://jae-carpet-cleaning:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-01 15:40:47', '2020-04-01 15:40:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jae-carpet-cleaning:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-10-16 13:54:02', '2020-10-16 00:54:02', '', 0, 'http://jae-carpet-cleaning:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-01 15:40:47', '2020-04-01 15:40:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://jae-carpet-cleaning:8888/.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-10-16 13:54:04', '2020-10-16 00:54:04', '', 0, 'http://jae-carpet-cleaning:8888/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-10-15 21:13:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-15 21:13:02', '0000-00-00 00:00:00', '', 0, 'http://jae-carpet-cleaning:8888/?p=5', 0, 'post', '', 0),
(6, 1, '2020-10-16 13:51:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 13:51:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-10-16 13:52:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-16 13:52:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-10-16 13:55:02', '2020-10-16 00:55:02', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":29} -->\n<div style=\"height:29px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services Include</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-17 17:10:28', '2020-10-17 04:10:28', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-10-16 13:54:02', '2020-10-16 00:54:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://jae-carpet-cleaning:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-10-16 13:54:02', '2020-10-16 00:54:02', '', 2, 'http://localhost/jae-carpet-cleaning/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-10-16 13:54:04', '2020-10-16 00:54:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://jae-carpet-cleaning:8888/.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-16 13:54:04', '2020-10-16 00:54:04', '', 3, 'http://localhost/jae-carpet-cleaning/3-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-10-16 13:55:02', '2020-10-16 00:55:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-16 13:55:02', '2020-10-16 00:55:02', '', 8, 'http://localhost/jae-carpet-cleaning/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-10-16 14:09:21', '2020-10-16 01:09:21', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-18 18:49:14', '2020-10-18 05:49:14', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-10-16 14:09:21', '2020-10-16 01:09:21', '<!-- wp:paragraph -->\n<p>This is about page</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-16 14:09:21', '2020-10-16 01:09:21', '', 12, 'http://localhost/jae-carpet-cleaning/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-10-16 14:09:42', '2020-10-16 01:09:42', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include expert and specialised carpet cleaning, rug and drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-10-18 17:11:41', '2020-10-18 04:11:41', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-10-16 14:09:42', '2020-10-16 01:09:42', '<!-- wp:paragraph -->\n<p>This is services page</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-10-16 14:09:42', '2020-10-16 01:09:42', '', 14, 'http://localhost/jae-carpet-cleaning/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-10-16 14:10:11', '2020-10-16 01:10:11', '<!-- wp:paragraph -->\n<p>This is location page</p>\n<!-- /wp:paragraph -->', 'Location', '', 'publish', 'closed', 'closed', '', 'location', '', '', '2020-10-16 14:10:11', '2020-10-16 01:10:11', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-10-16 14:10:11', '2020-10-16 01:10:11', '<!-- wp:paragraph -->\n<p>This is location page</p>\n<!-- /wp:paragraph -->', 'Location', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-10-16 14:10:11', '2020-10-16 01:10:11', '', 16, 'http://localhost/jae-carpet-cleaning/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-10-16 14:10:38', '2020-10-16 01:10:38', '<!-- wp:paragraph -->\n<p>This is a quote page</p>\n<!-- /wp:paragraph -->', 'Get a Quote', '', 'publish', 'closed', 'closed', '', 'get-a-quote', '', '', '2020-10-16 14:10:38', '2020-10-16 01:10:38', '', 0, 'http://localhost/jae-carpet-cleaning/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-10-16 14:10:38', '2020-10-16 01:10:38', '<!-- wp:paragraph -->\n<p>This is a quote page</p>\n<!-- /wp:paragraph -->', 'Get a Quote', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-10-16 14:10:38', '2020-10-16 01:10:38', '', 18, 'http://localhost/jae-carpet-cleaning/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-10-16 14:20:56', '2020-10-16 01:20:56', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"page_on_front\": {\n        \"value\": \"8\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu[-4249445453260497000]\": {\n        \"value\": {\n            \"name\": \"main\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu_item[-6622843705041107000]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -4249445453260497000,\n            \"_invalid\": false,\n            \"type_label\": \"Front Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu_item[-7676448797241666000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Get a Quote\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/get-a-quote/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Get a Quote\",\n            \"nav_menu_term_id\": -4249445453260497000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu_item[-6192046830679966000]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Location\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/location/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Location\",\n            \"nav_menu_term_id\": -4249445453260497000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu_item[-3919599601262393300]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Services\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/services/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Services\",\n            \"nav_menu_term_id\": -4249445453260497000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    },\n    \"nav_menu_item[-6630482271986440000]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -4249445453260497000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:20:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7914a450-594c-4563-8ace-100b3d54d3a0', '', '', '2020-10-16 14:20:56', '2020-10-16 01:20:56', '', 0, 'http://localhost/jae-carpet-cleaning/7914a450-594c-4563-8ace-100b3d54d3a0/', 0, 'customize_changeset', '', 0),
(21, 1, '2020-10-16 14:20:57', '2020-10-16 01:20:57', '', 'Home', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-10-17 17:11:14', '2020-10-17 04:11:14', '', 0, 'http://localhost/jae-carpet-cleaning/21/', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-10-16 14:20:57', '2020-10-16 01:20:57', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-10-16 14:55:34', '2020-10-16 01:55:34', '', 0, 'http://localhost/jae-carpet-cleaning/22/', 5, 'nav_menu_item', '', 0),
(23, 1, '2020-10-16 14:20:57', '2020-10-16 01:20:57', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-10-16 14:55:34', '2020-10-16 01:55:34', '', 0, 'http://localhost/jae-carpet-cleaning/23/', 4, 'nav_menu_item', '', 0),
(24, 1, '2020-10-16 14:20:57', '2020-10-16 01:20:57', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-10-16 14:55:34', '2020-10-16 01:55:34', '', 0, 'http://localhost/jae-carpet-cleaning/24/', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-10-16 14:20:57', '2020-10-16 01:20:57', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-10-16 14:55:34', '2020-10-16 01:55:34', '', 0, 'http://localhost/jae-carpet-cleaning/25/', 2, 'nav_menu_item', '', 0),
(26, 1, '2020-10-16 14:21:59', '2020-10-16 01:21:59', '{\n    \"nav_menu_item[22]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Get a Quote\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/get-a-quote/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Get a Quote\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:21:18\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": {\n            \"object_id\": 16,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Location\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/location/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Location\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:21:18\"\n    },\n    \"nav_menu_item[24]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Services\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/services/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Services\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:21:18\"\n    },\n    \"nav_menu_item[25]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"http://localhost/jae-carpet-cleaning/about/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:21:18\"\n    },\n    \"nav_menu_item[-4407798885944371000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"0800 225 552\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"0800 225 552\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-16 01:21:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19886707-6950-4c4d-b981-c4962a1e7fe4', '', '', '2020-10-16 14:21:59', '2020-10-16 01:21:59', '', 0, 'http://localhost/jae-carpet-cleaning/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2020-10-16 14:21:59', '2020-10-16 01:21:59', 'Phone link', '<i class=\"fas fa-phone mr-2\"></i>0800 225 552', 'Phone link', 'publish', 'closed', 'closed', '', '0800-225-552', '', '', '2020-10-16 14:55:34', '2020-10-16 01:55:34', '', 0, 'http://localhost/jae-carpet-cleaning/0800-225-552/', 6, 'nav_menu_item', '', 0),
(28, 1, '2020-10-16 15:49:17', '2020-10-16 02:49:17', '<!-- wp:paragraph -->\n<p>This is a home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-16 15:49:17', '2020-10-16 02:49:17', '', 8, 'http://localhost/jae-carpet-cleaning/8-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-16 15:54:58', '2020-10-16 02:54:58', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-16 15:54:58', '2020-10-16 02:54:58', '', 8, 'http://localhost/jae-carpet-cleaning/8-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-10-16 16:18:37', '2020-10-16 03:18:37', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"slide\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider Group', 'slider-group', 'publish', 'closed', 'closed', '', 'group_5f891047afaa1', '', '', '2020-10-16 16:37:32', '2020-10-16 03:37:32', '', 0, 'http://localhost/jae-carpet-cleaning/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2020-10-16 16:18:37', '2020-10-16 03:18:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background Image', 'background_image', 'publish', 'closed', 'closed', '', 'field_5f89105495e7f', '', '', '2020-10-16 16:18:37', '2020-10-16 03:18:37', '', 30, 'http://localhost/jae-carpet-cleaning/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(34, 1, '2020-10-16 16:18:37', '2020-10-16 03:18:37', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Url', 'url', 'publish', 'closed', 'closed', '', 'field_5f8910e295e82', '', '', '2020-10-16 16:37:32', '2020-10-16 03:37:32', '', 30, 'http://localhost/jae-carpet-cleaning/?post_type=acf-field&#038;p=34', 1, 'acf-field', '', 0),
(35, 1, '2020-10-16 16:23:55', '2020-10-16 03:23:55', '<h5 class=\"slide-text animated fadeIn\">- Since 1967 -</h5>', 'Taking care of New Zealand homes and businesses for over 50 years', '', 'publish', 'closed', 'closed', '', 'taking-care-of-new-zealand-homes-and-businesses-for-over-50-years', '', '', '2020-10-16 16:52:37', '2020-10-16 03:52:37', '', 0, 'http://localhost/jae-carpet-cleaning/?post_type=slide&#038;p=35', 0, 'slide', '', 0),
(36, 1, '2020-10-16 16:23:26', '2020-10-16 03:23:26', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2020-10-16 16:23:26', '2020-10-16 03:23:26', '', 35, 'http://localhost/jae-carpet-cleaning/wp-content/uploads/2020/10/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-10-17 14:01:07', '2020-10-17 01:01:07', '<h5 class=\"slide-text animated fadeIn\">We are the Experts in Stain Treatment</h5>', 'Stain Treatment', '', 'publish', 'closed', 'closed', '', 'stain-treatment', '', '', '2020-10-17 14:01:07', '2020-10-17 01:01:07', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=slide&#038;p=37', 0, 'slide', '', 0),
(38, 1, '2020-10-17 14:00:06', '2020-10-17 01:00:06', '', 'slide-2', '', 'inherit', 'open', 'closed', '', 'slide-2', '', '', '2020-10-17 14:00:06', '2020-10-17 01:00:06', '', 37, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/slide-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-10-17 14:00:07', '2020-10-17 01:00:07', '', 'slide-3', '', 'inherit', 'open', 'closed', '', 'slide-3', '', '', '2020-10-17 14:00:07', '2020-10-17 01:00:07', '', 37, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/slide-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-10-17 14:02:00', '2020-10-17 01:02:00', '<div class=\"carousel-inner\" role=\"listbox\">\r\n<div class=\"carousel-item active\">\r\n<div class=\"carousel-caption\">\r\n<h5 class=\"slide-text animated fadeIn\">We are Experts in Upholstery and Leather Cleaning</h5>\r\n</div>\r\n</div>\r\n</div>', 'Upholstery & Leather Cleaning', '', 'trash', 'closed', 'closed', '', 'upholstery-leather-cleaning__trashed', '', '', '2020-10-17 14:23:39', '2020-10-17 01:23:39', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=slide&#038;p=40', 0, 'slide', '', 0),
(41, 1, '2020-10-17 14:25:12', '2020-10-17 01:25:12', '<div class=\"carousel-inner\" role=\"listbox\">\r\n<div class=\"carousel-item active\">\r\n<div class=\"carousel-caption\">\r\n<h5 class=\"slide-text animated fadeIn\">We are Experts in Upholstery and Leather Cleaning</h5>\r\n</div>\r\n</div>\r\n</div>', 'Upholstery & Leather Cleaning', '', 'trash', 'closed', 'closed', '', 'upholstery-leather-cleaning__trashed-2', '', '', '2020-10-17 14:25:52', '2020-10-17 01:25:52', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=slide&#038;p=41', 0, 'slide', '', 0),
(42, 1, '2020-10-17 14:26:27', '2020-10-17 01:26:27', '<h5>We are the Experts in Upholstery and Leather Cleaning</h5>', 'Upholstery & Leather Cleaning', '', 'publish', 'closed', 'closed', '', 'this-is-a-test', '', '', '2020-10-17 14:28:04', '2020-10-17 01:28:04', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=slide&#038;p=42', 0, 'slide', '', 0),
(43, 1, '2020-10-17 14:27:28', '2020-10-17 01:27:28', '<h5>We are the Exper</h5>', 'Upholstery & Leather Cleaning', '', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2020-10-17 14:27:28', '2020-10-17 01:27:28', '', 42, 'http://jae-carpet-cleaning:8888/42-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-17 14:53:52', '2020-10-17 01:53:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Services Group', 'services-group', 'publish', 'closed', 'closed', '', 'group_5f8a4e4376313', '', '', '2020-10-17 14:58:27', '2020-10-17 01:58:27', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2020-10-17 14:53:52', '2020-10-17 01:53:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_5f8a4e537e021', '', '', '2020-10-17 14:53:52', '2020-10-17 01:53:52', '', 44, 'http://jae-carpet-cleaning:8888/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2020-10-17 14:53:52', '2020-10-17 01:53:52', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5f8a4e6c7e022', '', '', '2020-10-17 14:58:27', '2020-10-17 01:58:27', '', 44, 'http://jae-carpet-cleaning:8888/?post_type=acf-field&#038;p=46', 1, 'acf-field', '', 0),
(47, 1, '2020-10-17 14:57:53', '2020-10-17 01:57:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5f8a4edeea562', '', '', '2020-10-17 14:57:53', '2020-10-17 01:57:53', '', 44, 'http://jae-carpet-cleaning:8888/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2020-10-17 15:34:01', '2020-10-17 02:34:01', '<h2 class=\"section-heading\">The Carpet Cleaning Professionals</h2>\nFor over 50 years JAE has been a trusted service provider for New Zealand insurance companies, property managers, businesses, and homeowners, delivering the very best professional carpet cleaning services. Protecting and maintaining your carpet will not only extend its life, but also provides a healthier home for your family.\n\n‍\nEvery day your carpet is subject to more wear and tear than any other item in your home. To keep your carpet free from allergens and dirt, your carpet needs to be cleaned every 6 to 12 months. JAE offer a total Carpet Care package that cleans, sanitises, deodorises and protects your carpet, helping to combat allergens', 'Carpeting Cleaning', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-10-17 15:34:01', '2020-10-17 02:34:01', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=48', 0, 'service', '', 0),
(49, 1, '2020-10-17 15:02:01', '2020-10-17 02:02:01', '', '5d02d11f7c256530260f3883_jae-carpet-cleaning', '', 'inherit', 'open', 'closed', '', '5d02d11f7c256530260f3883_jae-carpet-cleaning', '', '', '2020-10-17 15:02:01', '2020-10-17 02:02:01', '', 48, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d11f7c256530260f3883_jae-carpet-cleaning.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-10-17 15:03:35', '2020-10-17 02:03:35', '<h2 class=\"section-heading\">The Carpet Cleaning Professionals</h2>\r\n<div class=\"w-richtext\">\r\n\r\nFor over 50 years JAE has been a trusted service provider for New Zealand insurance companies, property managers, businesses, and homeowners, delivering the very best professional carpet cleaning services. Protecting and maintaining your carpet will not only extend its life, but also provides a healthier home for your family.\r\n\r\n‍\r\nEvery day your carpet is subject to more wear and tear than any other item in your home. To keep your carpet free from allergens and dirt, your carpet needs to be cleaned every 6 to 12 months. JAE offer a total Carpet Care package that cleans, sanitises, deodorises and protects your carpet, helping to combat allergens.\r\n\r\n</div>', 'Carpet Cleaning', '', 'trash', 'closed', 'closed', '', 'carpet-cleaning__trashed', '', '', '2020-10-17 16:51:13', '2020-10-17 03:51:13', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=50', 0, 'service', '', 0),
(51, 1, '2020-10-17 15:32:59', '2020-10-17 02:32:59', '', '5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning', '', 'inherit', 'open', 'closed', '', '5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning', '', '', '2020-10-17 15:34:59', '2020-10-17 02:34:59', '', 50, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1f2bfa29002a3c539f6_jae-services-carpet-cleaning.svg', 0, 'attachment', 'image/svg+xml', 0),
(52, 1, '2020-10-17 15:33:20', '2020-10-17 02:33:20', '', '5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment', '', 'inherit', 'open', 'closed', '', '5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment', '', '', '2020-10-17 15:37:43', '2020-10-17 02:37:43', '', 60, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1e9b06ce80f78e305f9_jae-services-stain-treatment.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 1, '2020-10-17 15:33:20', '2020-10-17 02:33:20', '', '5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning', '', 'inherit', 'open', 'closed', '', '5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning', '', '', '2020-10-17 15:45:20', '2020-10-17 02:45:20', '', 62, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1e1bfa29063cdc539d0_jae-services-upholstery-cleaning.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2020-10-17 15:33:21', '2020-10-17 02:33:21', '', '5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning', '', 'inherit', 'open', 'closed', '', '5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning', '', '', '2020-10-17 16:58:34', '2020-10-17 03:58:34', '', 73, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1d3b06ce8158de305dc_jae-services-rug-cleaning.svg', 0, 'attachment', 'image/svg+xml', 0),
(55, 1, '2020-10-17 15:33:21', '2020-10-17 02:33:21', '', '5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection', '', 'inherit', 'open', 'closed', '', '5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection', '', '', '2020-10-17 16:57:31', '2020-10-17 03:57:31', '', 72, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1c9bfa29090d1c539ad_jae-services-fabric-protection.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2020-10-17 15:33:22', '2020-10-17 02:33:22', '', '5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment', '', 'inherit', 'open', 'closed', '', '5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment', '', '', '2020-10-17 16:56:26', '2020-10-17 03:56:26', '', 70, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1bf8990fd65f60c72ef_jae-services-odour-treatment.svg', 0, 'attachment', 'image/svg+xml', 0),
(57, 1, '2020-10-17 15:33:22', '2020-10-17 02:33:22', '', '5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration', '', 'inherit', 'open', 'closed', '', '5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration', '', '', '2020-10-17 16:53:33', '2020-10-17 03:53:33', '', 66, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f1b5cd567c018e5fce1f_jae-services-flood-restoration.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2020-10-17 15:33:22', '2020-10-17 02:33:22', '', '5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration', '', 'inherit', 'open', 'closed', '', '5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration', '', '', '2020-10-17 16:52:29', '2020-10-17 03:52:29', '', 64, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f19fcd567c82805fcdf0_jae-services-fire-smoke-restoration.svg', 0, 'attachment', 'image/svg+xml', 0),
(59, 1, '2020-10-17 15:33:23', '2020-10-17 02:33:23', '', '5dd5f18e01833c7048ab449f_jae-services-pest-control', '', 'inherit', 'open', 'closed', '', '5dd5f18e01833c7048ab449f_jae-services-pest-control', '', '', '2020-10-17 16:55:13', '2020-10-17 03:55:13', '', 68, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd5f18e01833c7048ab449f_jae-services-pest-control.svg', 0, 'attachment', 'image/svg+xml', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2020-10-17 15:37:43', '2020-10-17 02:37:43', '<h2 class=\"section-heading\">Experts in Stain Treatment</h2>\r\n<div class=\"w-richtext\">\r\n\r\nAdvanced stain treatment is a very specialised field involving understanding the chemistry of stains and cleaning products. Different techniques are often needed for wool versus synthetic carpets, and our technicians are trained in choosing the right solution for your individual needs.\r\n\r\nAt JAE we\'ve put years of training and research into developing many of our own products and processes for tackling stains. We can successfully treat some of the toughest stains such as red wine, coffee, orange juice, food and animal stains.\r\n\r\n</div>', 'Stain Treatment', '', 'trash', 'closed', 'closed', '', 'stain-treatment__trashed', '', '', '2020-10-17 16:51:13', '2020-10-17 03:51:13', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=60', 0, 'service', '', 0),
(61, 1, '2020-10-17 15:37:26', '2020-10-17 02:37:26', '', '5d02d113a41f6d1e0edb61e1_jae-stain-treatments', '', 'inherit', 'open', 'closed', '', '5d02d113a41f6d1e0edb61e1_jae-stain-treatments', '', '', '2020-10-17 15:37:26', '2020-10-17 02:37:26', '', 60, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d113a41f6d1e0edb61e1_jae-stain-treatments.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-10-17 15:45:20', '2020-10-17 02:45:20', '<h2 class=\"section-heading\">Experts in Upholstery and Leather Cleaning</h2>\r\n<div class=\"w-richtext\">\r\n\r\nWith decades of experience in cleaning delicate fabrics and leather, JAE can help revive and enhance their appearance. Our international tannery endorsed leather care process cleans and revives the softness and suppleness of leather furniture.\r\n\r\nOur specialised technicians pretest each job to ensure the safest method possible is used to treat your particular fabric. Most fabrics can be revived with our modern equipment and special cleaning formulas.\r\n\r\n</div>', 'Upholstery & Leather Cleaning', '', 'trash', 'closed', 'closed', '', 'upholstery-leather-cleaning__trashed', '', '', '2020-10-17 16:51:13', '2020-10-17 03:51:13', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=62', 0, 'service', '', 0),
(63, 1, '2020-10-17 15:41:30', '2020-10-17 02:41:30', '', '5d02d10193e4a885d1a7440e_jae-upholstery-cleaning', '', 'inherit', 'open', 'closed', '', '5d02d10193e4a885d1a7440e_jae-upholstery-cleaning', '', '', '2020-10-17 15:41:30', '2020-10-17 02:41:30', '', 62, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-10-17 16:52:29', '2020-10-17 03:52:29', '<h2 class=\"section-heading\">Experts in Fire &amp; Smoke Restoration</h2>\r\n<div class=\"w-richtext\">\r\n\r\nOur technicians are trained to recognise the unique behaviour of smoke and the various types of smoke damage such as Protein, Natural and Synthetic.  We can then identify the most effective cleaning method to be applied in each instance.\r\n\r\nWe can help treat floor coverings, walls, ceilings, upholstery, soft furnishings, mattresses, drapery, even household contents.\r\n\r\nJAE use experienced, qualified fire technicians who maintain certification to international standards.\r\n\r\n</div>', 'Fire & Smoke Restoration', '', 'publish', 'closed', 'closed', '', 'fire-smoke-restoration', '', '', '2020-10-17 16:52:29', '2020-10-17 03:52:29', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=64', 0, 'service', '', 0),
(65, 1, '2020-10-17 16:52:15', '2020-10-17 03:52:15', '', '5d02d07cc253edfebbd078fc_jae-fire-restoration', '', 'inherit', 'open', 'closed', '', '5d02d07cc253edfebbd078fc_jae-fire-restoration', '', '', '2020-10-17 16:52:15', '2020-10-17 03:52:15', '', 64, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d07cc253edfebbd078fc_jae-fire-restoration.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-10-17 16:53:33', '2020-10-17 03:53:33', '<h2 class=\"section-heading\">24/7 Nationwide Emergency Flood Restoration</h2>\r\n<div class=\"w-richtext\">\r\n\r\nIn the event of a flood, JAE can act quickly to remedy affected carpets and furnishings. Utilising our innovative drying technology, we can often dry onsite in most cases. We restore saturated carpets and fabrics to their pre-loss condition wherever possible. JAE are also specialists in structural drying.\r\n\r\nWe’ve had years of experience restoring flooded buildings and we understand just how stressful these situations can be.\r\n\r\n</div>', 'Flood Restoration', '', 'publish', 'closed', 'closed', '', 'flood-restoration', '', '', '2020-10-17 16:53:33', '2020-10-17 03:53:33', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=66', 0, 'service', '', 0),
(67, 1, '2020-10-17 16:53:05', '2020-10-17 03:53:05', '', '5d02ca66b9a7fd424eb9748c_jae-flood-restoration', '', 'inherit', 'open', 'closed', '', '5d02ca66b9a7fd424eb9748c_jae-flood-restoration', '', '', '2020-10-17 16:53:05', '2020-10-17 03:53:05', '', 66, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02ca66b9a7fd424eb9748c_jae-flood-restoration.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-10-17 16:55:13', '2020-10-17 03:55:13', '<h2 class=\"section-heading\">Experts in Pest Control</h2>\r\n<div class=\"w-richtext\">\r\n\r\nInfestations of rodents and insects can not only threaten personal health and hygiene, but can also cause extensive damage inside and outside your home or business. Our pest control teams are committed to the correct and safe application of pest management agents.\r\n\r\nOur pest control technicians can not only treat pests that invade our homes and businesses, but can also offer preventative solutions to pro-actively control them.\r\n\r\n</div>', 'Pest Control', '', 'publish', 'closed', 'closed', '', 'pest-control', '', '', '2020-10-17 16:55:13', '2020-10-17 03:55:13', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=68', 0, 'service', '', 0),
(69, 1, '2020-10-17 16:54:44', '2020-10-17 03:54:44', '', '5d02d064c253ed073dd078b7_jae-pest-control', '', 'inherit', 'open', 'closed', '', '5d02d064c253ed073dd078b7_jae-pest-control', '', '', '2020-10-17 16:54:44', '2020-10-17 03:54:44', '', 68, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d064c253ed073dd078b7_jae-pest-control.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-10-17 16:56:25', '2020-10-17 03:56:25', '<h2 class=\"section-heading\">Experts in Odour Treatment</h2>\r\n<div class=\"w-richtext\">\r\n\r\nJAE offer a variety of treatments that can remediate odours.  Not just mask strong odours caused by tobacco smoke, pets, fire and smoke residue and offensive food odours.\r\n\r\nOur technicians are trained to identify the factors that contribute to odour problems.  They look at how the surface texture and porosity of different materials relates to the retention of odours.  They can then provide various options to help you solve these problems.\r\n\r\n</div>', 'Odour Treatments', '', 'publish', 'closed', 'closed', '', 'odour-treatments', '', '', '2020-10-17 16:56:25', '2020-10-17 03:56:25', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=70', 0, 'service', '', 0),
(71, 1, '2020-10-17 16:56:20', '2020-10-17 03:56:20', '', '5d02d0c793e4a87e70a743af_jae-odour-treatments', '', 'inherit', 'open', 'closed', '', '5d02d0c793e4a87e70a743af_jae-odour-treatments', '', '', '2020-10-17 16:56:20', '2020-10-17 03:56:20', '', 70, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d0c793e4a87e70a743af_jae-odour-treatments.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-10-17 16:57:31', '2020-10-17 03:57:31', '<h2 class=\"section-heading\">Experts in Fabric Protection</h2>\r\n<div class=\"w-richtext\">\r\n\r\nEven the most fussy housecleaning cannot eliminate the risk of accidental spillages which can cause permanent damage to your furniture.\r\n\r\nWith our fabric protection products you can relax and enjoy your home and furnishings with peace of mind, knowing they are well protected. Our technicians are highly trained in upholstery cleaning and will select the correct product and application method for every type of fabric.\r\n\r\n</div>', 'Fabric Protection', '', 'publish', 'closed', 'closed', '', 'fabric-protection', '', '', '2020-10-17 16:57:31', '2020-10-17 03:57:31', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=72', 0, 'service', '', 0),
(73, 1, '2020-10-17 16:58:34', '2020-10-17 03:58:34', '<h2 class=\"section-heading\">Experts in Oriental &amp; Area Rug Cleaning</h2>\r\n<div class=\"w-richtext\">\r\n\r\nFrom precious orientals through to more contemporary styles, JAE offers highly specialised and delicate cleaning and stain treatments to revive and enhance most rugs. JAE are industry experts in rugs of both natural and synthetic fibres, including oriental, custom design, shag pile, flat weave, antique or nostalgic and specialty rugs.Most rugs require delicate in-plant cleaning for best results. Our technicians receive specialised training in rug cleaning to internationally recognised standards.\r\n\r\nWe are also experts in drapes and blinds. We use a similar process to revitalise, refresh, and thoroughly clean your curtains, drapes, and blinds.\r\n\r\n</div>', 'Rug Cleaning', '', 'publish', 'closed', 'closed', '', 'rug-cleaning', '', '', '2020-10-17 16:58:34', '2020-10-17 03:58:34', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=73', 0, 'service', '', 0),
(74, 1, '2020-10-17 16:58:22', '2020-10-17 03:58:22', '', '5d88266808e53e95dff7ff72_oriental rug cleaning', '', 'inherit', 'open', 'closed', '', '5d88266808e53e95dff7ff72_oriental-rug-cleaning', '', '', '2020-10-17 16:58:22', '2020-10-17 03:58:22', '', 73, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d88266808e53e95dff7ff72_oriental-rug-cleaning.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-10-17 16:59:31', '2020-10-17 03:59:31', '<h2 class=\"section-heading\">Experts in Upholstery and Leather Cleaning</h2>\r\n<div class=\"w-richtext\">\r\n\r\nWith decades of experience in cleaning delicate fabrics and leather, JAE can help revive and enhance their appearance. Our international tannery endorsed leather care process cleans and revives the softness and suppleness of leather furniture.\r\n\r\nOur specialised technicians pretest each job to ensure the safest method possible is used to treat your particular fabric. Most fabrics can be revived with our modern equipment and special cleaning formulas.\r\n\r\n</div>', 'Upholstery & Leather Cleaning', '', 'publish', 'closed', 'closed', '', 'upholstery-leather-cleaning', '', '', '2020-10-17 16:59:31', '2020-10-17 03:59:31', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=75', 0, 'service', '', 0),
(76, 1, '2020-10-17 17:00:23', '2020-10-17 04:00:23', '<h2 class=\"section-heading\">Experts in Stain Treatment</h2>\r\n<div class=\"w-richtext\">\r\n\r\nAdvanced stain treatment is a very specialised field involving understanding the chemistry of stains and cleaning products. Different techniques are often needed for wool versus synthetic carpets, and our technicians are trained in choosing the right solution for your individual needs.\r\n\r\nAt JAE we\'ve put years of training and research into developing many of our own products and processes for tackling stains. We can successfully treat some of the toughest stains such as red wine, coffee, orange juice, food and animal stains.\r\n\r\n</div>', 'Stain Treatment', '', 'publish', 'closed', 'closed', '', 'stain-treatment', '', '', '2020-10-17 17:00:23', '2020-10-17 04:00:23', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=76', 0, 'service', '', 0),
(77, 1, '2020-10-17 17:01:14', '2020-10-17 04:01:14', '<h2 class=\"section-heading\">The Carpet Cleaning Professionals</h2>\r\n<div class=\"w-richtext\">\r\n\r\nFor over 50 years JAE has been a trusted service provider for New Zealand insurance companies, property managers, businesses, and homeowners, delivering the very best professional carpet cleaning services. Protecting and maintaining your carpet will not only extend its life, but also provides a healthier home for your family.\r\n\r\n‍\r\nEvery day your carpet is subject to more wear and tear than any other item in your home. To keep your carpet free from allergens and dirt, your carpet needs to be cleaned every 6 to 12 months. JAE offer a total Carpet Care package that cleans, sanitises, deodorises and protects your carpet, helping to combat allergens.\r\n\r\n</div>', 'Carpet Cleaning', '', 'publish', 'closed', 'closed', '', 'carpet-cleaning', '', '', '2020-10-17 17:01:14', '2020-10-17 04:01:14', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=service&#038;p=77', 0, 'service', '', 0),
(78, 1, '2020-10-17 17:05:28', '2020-10-17 04:05:28', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Our Services</h2>\n<!-- /wp:heading -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:05:28', '2020-10-17 04:05:28', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-10-17 17:06:08', '2020-10-17 04:06:08', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:06:08', '2020-10-17 04:06:08', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-10-17 17:06:40', '2020-10-17 04:06:40', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:06:40', '2020-10-17 04:06:40', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-10-17 17:07:12', '2020-10-17 04:07:12', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:07:12', '2020-10-17 04:07:12', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-10-17 17:08:37', '2020-10-17 04:08:37', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2020-10-17 17:08:37', '2020-10-17 04:08:37', '', 8, 'http://jae-carpet-cleaning:8888/8-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2020-10-17 17:08:43', '2020-10-17 04:08:43', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:08:43', '2020-10-17 04:08:43', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-10-17 17:09:31', '2020-10-17 04:09:31', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services Include</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:09:31', '2020-10-17 04:09:31', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-10-17 17:09:58', '2020-10-17 04:09:58', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":29} -->\n<div style=\"height:29px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services Include</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:09:58', '2020-10-17 04:09:58', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-10-17 17:10:28', '2020-10-17 04:10:28', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include carpet cleaners who are expert and specialised in steam cleaning, carpet cleaning, rug cleaning, drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":29} -->\n<div style=\"height:29px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\">Our Services Include</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Jae Carpet Cleaning', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-10-17 17:10:28', '2020-10-17 04:10:28', '', 8, 'http://jae-carpet-cleaning:8888/8-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-10-17 17:11:14', '2020-10-17 04:11:14', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://jae-carpet-cleaning:8888/\",\n            \"title\": \"Home\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Welcome to Jae Carpet Cleaning\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-17 04:11:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0e667db-c83e-43de-9a3e-f13b41c1c536', '', '', '2020-10-17 17:11:14', '2020-10-17 04:11:14', '', 0, 'http://jae-carpet-cleaning:8888/e0e667db-c83e-43de-9a3e-f13b41c1c536/', 0, 'customize_changeset', '', 0),
(88, 1, '2020-10-18 17:11:41', '2020-10-18 04:11:41', '<!-- wp:paragraph -->\n<p>For more than 50 years JAE have been helping New Zealand families take care of their homes. We offer a wide range of cleaning and restoration services, and we take great pride in being a recognised market leader for these solutions. Our solutions include expert and specialised carpet cleaning, rug and drapes cleaning, stain treatment, upholstery cleaning and restoration, fabric protection, odour treatments, flood restoration, fire and smoke damage, and pest control.</p>\n<!-- /wp:paragraph -->', 'Services', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-10-18 17:11:41', '2020-10-18 04:11:41', '', 14, 'http://jae-carpet-cleaning:8888/14-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-10-18 17:12:48', '2020-10-18 04:12:48', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:12:48', '2020-10-18 04:12:48', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-10-18 17:14:11', '2020-10-18 04:14:11', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:14:11', '2020-10-18 04:14:11', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-10-18 17:15:10', '2020-10-18 04:15:10', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"center\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube aligncenter wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:15:10', '2020-10-18 04:15:10', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-10-18 17:16:07', '2020-10-18 04:16:07', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:16:07', '2020-10-18 04:16:07', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-10-18 17:44:28', '2020-10-18 04:44:28', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:44:28', '2020-10-18 04:44:28', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-10-18 17:45:01', '2020-10-18 04:45:01', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:gallery {\"ids\":[null,null],\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.5/don-quixote-05.jpg\" alt=\"An old pencil drawing of Don Quixote and Sancho Panza sitting on their horses, by Wilhelm Marstrand.\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.5/don-quixote-01.jpg\" alt=\"An old pencil drawing of Don Quixote and Sancho Panza sitting on their horses, by Wilhelm Marstrand.\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:45:01', '2020-10-18 04:45:01', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-10-18 17:47:27', '2020-10-18 04:47:27', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:gallery {\"ids\":[74,71,69,67,65,63,61]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d88266808e53e95dff7ff72_oriental-rug-cleaning.jpg\" alt=\"\" data-id=\"74\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d88266808e53e95dff7ff72_oriental-rug-cleaning.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/rug-cleaning/5d88266808e53e95dff7ff72_oriental-rug-cleaning/\" class=\"wp-image-74\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d0c793e4a87e70a743af_jae-odour-treatments.jpg\" alt=\"\" data-id=\"71\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d0c793e4a87e70a743af_jae-odour-treatments.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/odour-treatments/5d02d0c793e4a87e70a743af_jae-odour-treatments/\" class=\"wp-image-71\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d064c253ed073dd078b7_jae-pest-control.jpg\" alt=\"\" data-id=\"69\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d064c253ed073dd078b7_jae-pest-control.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/pest-control/5d02d064c253ed073dd078b7_jae-pest-control/\" class=\"wp-image-69\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02ca66b9a7fd424eb9748c_jae-flood-restoration.jpg\" alt=\"\" data-id=\"67\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02ca66b9a7fd424eb9748c_jae-flood-restoration.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/flood-restoration/5d02ca66b9a7fd424eb9748c_jae-flood-restoration/\" class=\"wp-image-67\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d07cc253edfebbd078fc_jae-fire-restoration.jpg\" alt=\"\" data-id=\"65\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d07cc253edfebbd078fc_jae-fire-restoration.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/fire-smoke-restoration/5d02d07cc253edfebbd078fc_jae-fire-restoration/\" class=\"wp-image-65\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning.jpg\" alt=\"\" data-id=\"63\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/upholstery-leather-cleaning__trashed/5d02d10193e4a885d1a7440e_jae-upholstery-cleaning/\" class=\"wp-image-63\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d113a41f6d1e0edb61e1_jae-stain-treatments.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d02d113a41f6d1e0edb61e1_jae-stain-treatments.jpg\" data-link=\"http://jae-carpet-cleaning:8888/service/stain-treatment__trashed/5d02d113a41f6d1e0edb61e1_jae-stain-treatments/\" class=\"wp-image-61\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:47:27', '2020-10-18 04:47:27', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-10-18 17:49:27', '2020-10-18 04:49:27', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">this is a button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 17:49:27', '2020-10-18 04:49:27', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2020-10-18 17:51:48', '2020-10-18 04:51:48', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">this is a button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">this is another button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2020-10-18 17:51:48', '2020-10-18 04:51:48', '', 12, 'http://jae-carpet-cleaning:8888/12-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2020-10-18 18:45:35', '2020-10-18 05:45:35', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">this is a button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">this is another button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 18:45:35', '2020-10-18 05:45:35', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(99, 1, '2020-10-18 18:47:00', '2020-10-18 05:47:00', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":8,\"backgroundColor\":\"vivid-red\",\"textColor\":\"white\"} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-white-color has-vivid-red-background-color has-text-color has-background\" style=\"border-radius:8px\">this is a button</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 18:47:00', '2020-10-18 05:47:00', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-10-18 18:49:14', '2020-10-18 05:49:14', '<!-- wp:heading -->\n<h2>The JAE Legacy</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Our first JAE branch was opened in Auckland in 1967, offering carpet and upholstery cleaning, flood restoration and pest control to New Zealanders. From the beginning, we invested in the latest industry developments, to ensure we offered our customers the very latest in technology and expertise, along with the best customer service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Today as then, our mission as a group is still to give all our customers a high quality experience, no matter which of our services they use. Now with 35 branches across New Zealand, operating more than 130 fully equipped vans, we combine the best technology and expertise to drive results.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":33} -->\n<div style=\"height:33px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/JCC4j_YrCms\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://youtu.be/JCC4j_YrCms\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-10-18 18:49:14', '2020-10-18 05:49:14', '', 12, 'http://jae-carpet-cleaning:8888/12-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-10-19 10:18:43', '2020-10-18 21:18:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"jumbotron\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Jumbotron Group', 'jumbotron-group', 'publish', 'closed', 'closed', '', 'group_5f8cb0eb06b94', '', '', '2020-10-19 10:31:44', '2020-10-18 21:31:44', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=acf-field-group&#038;p=101', 0, 'acf-field-group', '', 0),
(102, 1, '2020-10-19 10:18:43', '2020-10-18 21:18:43', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_5f8cb116a99f4', '', '', '2020-10-19 10:31:44', '2020-10-18 21:31:44', '', 101, 'http://jae-carpet-cleaning:8888/?post_type=acf-field&#038;p=102', 0, 'acf-field', '', 0),
(104, 1, '2020-10-19 10:20:21', '2020-10-18 21:20:21', 'With 35 JAE Branches throughout New Zealand, we\'re just down the road! No matter where you are in New Zealand, from Cape Reinga to the Bluff, JAE can take care of all your cleaning needs. Whether it\'s caring for valuable oriental rugs, removing difficult stains, providing solutions for pest control, odours, upholstery and leather, or providing flood or fire assistance, we are your local experts.', 'Nationwide Coverage', '', 'publish', 'closed', 'closed', '', 'nationwide-coverage', '', '', '2020-10-19 10:38:05', '2020-10-18 21:38:05', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron&#038;p=104', 0, 'jumbotron', '', 0),
(105, 1, '2020-10-19 10:38:22', '2020-10-18 21:38:22', 'thius is adkhasdfg fafdgdf', 'This is a test', '', 'trash', 'closed', 'closed', '', 'this-is-a-test__trashed', '', '', '2020-10-19 10:46:46', '2020-10-18 21:46:46', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron&#038;p=105', 0, 'jumbotron', '', 0),
(106, 1, '2020-10-19 10:52:19', '2020-10-18 21:52:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"jumbotron-brand\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Brands Group', 'brands-group', 'publish', 'closed', 'closed', '', 'group_5f8cb8aa3071c', '', '', '2020-10-19 10:52:19', '2020-10-18 21:52:19', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(107, 1, '2020-10-19 10:52:19', '2020-10-18 21:52:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5f8cb8eddbe04', '', '', '2020-10-19 10:52:19', '2020-10-18 21:52:19', '', 106, 'http://jae-carpet-cleaning:8888/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2020-10-19 10:56:18', '2020-10-18 21:56:18', '', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2020-10-19 10:56:18', '2020-10-18 21:56:18', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=108', 0, 'jumbotron-brand', '', 0),
(109, 1, '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', '5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor', '', 'inherit', 'open', 'closed', '', '5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor', '', '', '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d5f3384f12523b907bc3364_jae-cleaning-ami-partner-compressor.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', '5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner', '', 'inherit', 'open', 'closed', '', '5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner', '', '', '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d5f3385dd44a27599bc022e_jae-cleaning-summerset-partner.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', '5d5f3385e064ab4a036de527_jae-cleaning-state-partner', '', 'inherit', 'open', 'closed', '', '5d5f3385e064ab4a036de527_jae-cleaning-state-partner', '', '', '2020-10-19 10:56:03', '2020-10-18 21:56:03', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d5f3385e064ab4a036de527_jae-cleaning-state-partner.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', '5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner', '', 'inherit', 'open', 'closed', '', '5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner', '', '', '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d5f33850fc43d59ea6d7f5f_jae-cleaning-tower-partner.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', '5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner', '', 'inherit', 'open', 'closed', '', '5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner', '', '', '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5d6c89fdb1503342c2050c03_jae-cleaning-mike-pero-partner.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', '5dd603c0cd567c93ae602628_jae-partner-ray-white', '', 'inherit', 'open', 'closed', '', '5dd603c0cd567c93ae602628_jae-partner-ray-white', '', '', '2020-10-19 10:56:04', '2020-10-18 21:56:04', '', 108, 'http://jae-carpet-cleaning:8888/wp-content/uploads/2020/10/5dd603c0cd567c93ae602628_jae-partner-ray-white.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2020-10-19 10:56:59', '2020-10-18 21:56:59', '', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2020-10-19 10:56:59', '2020-10-18 21:56:59', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=115', 0, 'jumbotron-brand', '', 0),
(116, 1, '2020-10-19 10:57:11', '2020-10-18 21:57:11', '', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2020-10-19 10:57:11', '2020-10-18 21:57:11', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=116', 0, 'jumbotron-brand', '', 0),
(117, 1, '2020-10-19 10:57:19', '2020-10-18 21:57:19', '', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2020-10-19 10:57:19', '2020-10-18 21:57:19', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=117', 0, 'jumbotron-brand', '', 0),
(118, 1, '2020-10-19 10:57:31', '2020-10-18 21:57:31', '', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2020-10-19 10:57:31', '2020-10-18 21:57:31', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=118', 0, 'jumbotron-brand', '', 0),
(119, 1, '2020-10-19 10:57:42', '2020-10-18 21:57:42', '', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2020-10-19 10:57:42', '2020-10-18 21:57:42', '', 0, 'http://jae-carpet-cleaning:8888/?post_type=jumbotron-brand&#038;p=119', 0, 'jumbotron-brand', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(27, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"b329dc5ab8168671ec533c27984151450e8fcd695404a5807ae195fb7dc8f832\";a:4:{s:10:\"expiration\";i:1603166956;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1602994156;}}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:3:\"xfn\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1602818630');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B9E5t7oDLs7y0QcN164K4BHiZyOosM/', 'admin', 'yourname@yourdomain.mamp', 'http://jae-carpet-cleaning:8888/', '2020-04-01 15:40:47', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
