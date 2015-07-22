-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-07-2015 a las 04:23:19
-- Versión del servidor: 5.6.24-log
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dbredac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_access_collections`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_access_collection_membership`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_annotations`
--

CREATE TABLE IF NOT EXISTS `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `elgg_annotations`
--

INSERT INTO `elgg_annotations` (`id`, `entity_guid`, `name_id`, `value_id`, `value_type`, `owner_guid`, `access_id`, `time_created`, `enabled`) VALUES
(1, 46, 33, 32, 'text', 45, 0, 1437483192, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_api_users`
--

CREATE TABLE IF NOT EXISTS `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_config`
--

CREATE TABLE IF NOT EXISTS `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_config`
--

INSERT INTO `elgg_config` (`name`, `value`, `site_guid`) VALUES
('view', 's:7:"default";', 1),
('language', 's:2:"en";', 1),
('default_access', 's:1:"2";', 1),
('allow_registration', 'b:1;', 1),
('walled_garden', 'b:0;', 1),
('allow_user_default_access', 's:0:"";', 1),
('default_limit', 'i:10;', 1),
('search_ft_min_word_len', 's:1:"4";', 1),
('search_ft_max_word_len', 's:2:"84";', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_datalists`
--

CREATE TABLE IF NOT EXISTS `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_datalists`
--

INSERT INTO `elgg_datalists` (`name`, `value`) VALUES
('installed', '1437235277'),
('dataroot', 'C:/xampp/htdocs/elggdata/'),
('default_site', '1'),
('version', '2015041400'),
('simplecache_enabled', '1'),
('system_cache_enabled', '1'),
('simplecache_lastupdate', '1437364986'),
('path', 'C:\\xampp\\htdocs\\RedAc/'),
('processed_upgrades', 'a:62:{i:0;s:14:"2008100701.php";i:1;s:14:"2008101303.php";i:2;s:14:"2009022701.php";i:3;s:14:"2009041701.php";i:4;s:14:"2009070101.php";i:5;s:14:"2009102801.php";i:6;s:14:"2010010501.php";i:7;s:14:"2010033101.php";i:8;s:14:"2010040201.php";i:9;s:14:"2010052601.php";i:10;s:14:"2010060101.php";i:11;s:14:"2010060401.php";i:12;s:14:"2010061501.php";i:13;s:14:"2010062301.php";i:14;s:14:"2010062302.php";i:15;s:14:"2010070301.php";i:16;s:14:"2010071001.php";i:17;s:14:"2010071002.php";i:18;s:14:"2010111501.php";i:19;s:14:"2010121601.php";i:20;s:14:"2010121602.php";i:21;s:14:"2010121701.php";i:22;s:14:"2010123101.php";i:23;s:14:"2011010101.php";i:24;s:61:"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php";i:25;s:61:"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php";i:26;s:60:"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php";i:27;s:51:"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php";i:28;s:57:"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php";i:29;s:61:"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php";i:30;s:59:"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php";i:31;s:14:"2011052801.php";i:32;s:60:"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php";i:33;s:62:"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php";i:34;s:54:"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php";i:35;s:53:"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php";i:36;s:50:"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php";i:37;s:50:"2012012100-1.8.3-system_cache-93100e7d55a24a11.php";i:38;s:59:"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php";i:39;s:58:"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php";i:40;s:59:"2013010200-1.9.0_dev-river_target_guid-66cbcae057cfa3ad.php";i:41;s:62:"2013010400-1.9.0_dev-comments_to_entities-faba94768b055b08.php";i:42;s:61:"2013021000-1.9.0_dev-web_services_plugin-85a61b4884b9b9e3.php";i:43;s:60:"2013022000-1.9.0-datadir_dates_to_guids-efb02ff11b9d6444.php";i:44;s:59:"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php";i:45;s:62:"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php";i:46;s:53:"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php";i:47;s:50:"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php";i:48;s:63:"2013062200-1.9.0_dev-new_remember_me_table-da1bfc6f36c7952e.php";i:49;s:54:"2013062700-1.9.0_dev-add_db_queue-e6af82afc6d3eee3.php";i:50;s:50:"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php";i:51;s:61:"2014031100-1.9.0_dev-elgg_upgrade_object-5577af53c93abd1a.php";i:52;s:55:"2014032200-1.9.0_dev-tinymce_to_ck-bbd2daa1912deaef.php";i:53;s:60:"2014042500-1.9.0_dev-site-notifications-0aae171afb7a00d8.php";i:54;s:61:"2014050600-1.9.0_dev-replies_to_entities-094ea0e36bc027d3.php";i:55;s:60:"2014070600-1.9.0_rc.3-river_enabled_col-bef9e6f0533ac338.php";i:56;s:60:"2014090900-1.9.0-fix_processed_upgrades-183ad189c71872d8.php";i:57;s:62:"2014111600-1.9.4-recheck_comments_upgrade-9da270072a5b0cad.php";i:58;s:58:"2014111800-1.10.0-add_new_hash_column-536087bbb2dbc82b.php";i:59;s:56:"2014130300-1.10.0-add_default_limit-fcef9e7ce01e26a4.php";i:60;s:62:"2015031300-1.11.0_dev-comment-access-sync-50c9764e5845315c.php";i:61;s:59:"2015041400-1.11.0_dev-trim_metastrings-d9a9fdfa28a981a3.php";}'),
('admin_registered', '1'),
('__site_secret__', 'zcjXjhCuxML-I203B02mU2Prs9qSiIhF');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_entities`
--

CREATE TABLE IF NOT EXISTS `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `elgg_entities`
--

INSERT INTO `elgg_entities` (`guid`, `type`, `subtype`, `owner_guid`, `site_guid`, `container_guid`, `access_id`, `time_created`, `time_updated`, `last_action`, `enabled`) VALUES
(1, 'site', 0, 0, 1, 0, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(2, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(3, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(4, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(5, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(6, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(7, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(8, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(9, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(10, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(11, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(12, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(13, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(14, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(15, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(16, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(17, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(18, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(19, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(20, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(21, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(22, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(23, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(24, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(25, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(26, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(27, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(28, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(29, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(30, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(31, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(32, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(33, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(34, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(35, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(36, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(37, 'object', 1, 1, 1, 1, 2, 1437235277, 1437235277, 1437235277, 'yes'),
(38, 'user', 0, 0, 1, 0, 2, 1437235299, 1437483868, 1437482807, 'yes'),
(39, 'object', 3, 38, 1, 38, 0, 1437235299, 1437235299, 1437235299, 'yes'),
(40, 'object', 3, 38, 1, 38, 0, 1437235299, 1437235299, 1437235299, 'yes'),
(41, 'object', 3, 38, 1, 38, 0, 1437235299, 1437235299, 1437235299, 'yes'),
(42, 'object', 3, 38, 1, 38, 0, 1437235299, 1437235299, 1437235299, 'yes'),
(43, 'object', 3, 38, 1, 38, 0, 1437235299, 1437235299, 1437235299, 'yes'),
(44, 'object', 3, 38, 1, 38, 2, 1437236762, 1437236762, 1437236762, 'yes'),
(45, 'user', 0, 0, 1, 0, 2, 1437482939, 1437484911, 1437489258, 'yes'),
(46, 'object', 6, 45, 1, 45, 0, 1437483192, 1437483192, 1437483192, 'yes'),
(47, 'object', 6, 45, 1, 45, 2, 1437483237, 1437483237, 1437483237, 'yes'),
(48, 'user', 0, 0, 1, 0, 2, 1437483359, 1437483359, 1437483359, 'yes'),
(49, 'object', 2, 48, 1, 48, 2, 1437485181, 1437485181, 1437485181, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_entity_relationships`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `elgg_entity_relationships`
--

INSERT INTO `elgg_entity_relationships` (`id`, `guid_one`, `relationship`, `guid_two`, `time_created`) VALUES
(25, 2, 'active_plugin', 1, 1437237141),
(2, 3, 'active_plugin', 1, 1437235277),
(26, 45, 'member_of_site', 1, 1437482939),
(4, 6, 'active_plugin', 1, 1437235277),
(5, 13, 'active_plugin', 1, 1437235277),
(6, 14, 'active_plugin', 1, 1437235277),
(7, 15, 'active_plugin', 1, 1437235277),
(8, 16, 'active_plugin', 1, 1437235278),
(9, 17, 'active_plugin', 1, 1437235278),
(10, 19, 'active_plugin', 1, 1437235278),
(11, 20, 'active_plugin', 1, 1437235278),
(12, 22, 'active_plugin', 1, 1437235278),
(13, 23, 'active_plugin', 1, 1437235278),
(14, 24, 'active_plugin', 1, 1437235278),
(15, 25, 'active_plugin', 1, 1437235278),
(16, 26, 'active_plugin', 1, 1437235278),
(17, 27, 'active_plugin', 1, 1437235278),
(18, 28, 'active_plugin', 1, 1437235278),
(19, 29, 'active_plugin', 1, 1437235278),
(20, 30, 'active_plugin', 1, 1437235278),
(27, 48, 'member_of_site', 1, 1437483359),
(22, 35, 'active_plugin', 1, 1437235278),
(23, 37, 'active_plugin', 1, 1437235278),
(24, 38, 'member_of_site', 1, 1437235299),
(28, 48, 'friend', 45, 1437489257);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_entity_subtypes`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `elgg_entity_subtypes`
--

INSERT INTO `elgg_entity_subtypes` (`id`, `type`, `subtype`, `class`) VALUES
(1, 'object', 'plugin', 'ElggPlugin'),
(2, 'object', 'file', 'ElggFile'),
(3, 'object', 'widget', 'ElggWidget'),
(4, 'object', 'comment', 'ElggComment'),
(5, 'object', 'elgg_upgrade', 'ElggUpgrade'),
(6, 'object', 'blog', 'ElggBlog'),
(7, 'object', 'discussion_reply', 'ElggDiscussionReply'),
(8, 'object', 'thewire', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_geocode_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_groups_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_hmac_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_metadata`
--

CREATE TABLE IF NOT EXISTS `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `elgg_metadata`
--

INSERT INTO `elgg_metadata` (`id`, `entity_guid`, `name_id`, `value_id`, `value_type`, `owner_guid`, `access_id`, `time_created`, `enabled`) VALUES
(1, 1, 1, 2, 'text', 0, 2, 1437235277, 'yes'),
(2, 38, 3, 4, 'text', 38, 2, 1437235299, 'yes'),
(3, 38, 5, 4, 'text', 0, 2, 1437235299, 'yes'),
(4, 38, 6, 7, 'text', 0, 2, 1437235299, 'yes'),
(11, 38, 13, 20, 'integer', 38, 2, 1437482807, 'yes'),
(12, 38, 14, 21, 'integer', 38, 2, 1437482807, 'yes'),
(13, 38, 15, 22, 'integer', 38, 2, 1437482807, 'yes'),
(14, 38, 16, 23, 'integer', 38, 2, 1437482807, 'yes'),
(10, 38, 17, 19, 'integer', 38, 2, 1437482807, 'yes'),
(15, 45, 3, 4, 'text', 45, 2, 1437482939, 'yes'),
(16, 45, 24, 4, 'text', 45, 2, 1437482939, 'yes'),
(17, 45, 25, 9, 'integer', 45, 2, 1437482939, 'yes'),
(18, 46, 27, 28, 'text', 45, 0, 1437483192, 'yes'),
(19, 46, 29, 30, 'text', 45, 0, 1437483192, 'yes'),
(20, 46, 31, 4, 'text', 45, 0, 1437483192, 'yes'),
(21, 47, 27, 34, 'text', 45, 2, 1437483237, 'yes'),
(22, 47, 35, 36, 'text', 45, 2, 1437483237, 'yes'),
(23, 47, 29, 37, 'text', 45, 2, 1437483237, 'yes'),
(24, 47, 38, 39, 'text', 45, 2, 1437483237, 'yes'),
(25, 48, 3, 4, 'text', 48, 2, 1437483359, 'yes'),
(26, 48, 24, 4, 'text', 48, 2, 1437483359, 'yes'),
(27, 48, 25, 9, 'integer', 48, 2, 1437483359, 'yes'),
(28, 49, 38, 41, 'text', 48, 2, 1437485181, 'yes'),
(29, 49, 42, 43, 'text', 48, 2, 1437485181, 'yes'),
(30, 49, 44, 45, 'text', 48, 2, 1437485181, 'yes'),
(31, 49, 46, 47, 'text', 48, 2, 1437485181, 'yes'),
(32, 49, 48, 49, 'text', 48, 2, 1437485181, 'yes'),
(33, 49, 50, 51, 'text', 48, 2, 1437485181, 'yes'),
(34, 49, 52, 53, 'text', 48, 2, 1437485181, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_metastrings`
--

CREATE TABLE IF NOT EXISTS `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Volcado de datos para la tabla `elgg_metastrings`
--

INSERT INTO `elgg_metastrings` (`id`, `string`) VALUES
(1, 'email'),
(2, 'alejo.yerena@gmail.com'),
(3, 'notification:method:email'),
(4, '1'),
(5, 'validated'),
(6, 'validated_method'),
(7, 'admin_user'),
(8, 'toId'),
(9, '38'),
(10, 'readYet'),
(11, '0'),
(12, 'msg'),
(13, 'x1'),
(14, 'x2'),
(15, 'y1'),
(16, 'y2'),
(17, 'icontime'),
(18, '1437482749'),
(19, '1437482807'),
(20, '89'),
(21, '278'),
(22, '66'),
(23, '255'),
(24, 'admin_created'),
(25, 'created_by_guid'),
(26, '45'),
(27, 'status'),
(28, 'unsaved_draft'),
(29, 'excerpt'),
(30, 'Buenos Dias,\r\n\r\nAlguien tiene algun&nbsp;'),
(31, 'new_post'),
(32, '<p>Buenos Dias,</p>\r\n\r\n<p>Alguien tiene algun&nbsp;</p>'),
(33, 'blog_auto_save'),
(34, 'published'),
(35, 'comments_on'),
(36, 'On'),
(37, ''),
(38, 'tags'),
(39, 'Gestion'),
(40, '48'),
(41, 'Fisica'),
(42, 'filename'),
(43, 'file/14374851813-vectores.pdf'),
(44, 'originalfilename'),
(45, '3-vectores.pdf'),
(46, 'mimetype'),
(47, 'application/pdf'),
(48, 'simpletype'),
(49, 'document'),
(50, 'filestore::dir_root'),
(51, 'C:/xampp/htdocs/elggdata/'),
(52, 'filestore::filestore'),
(53, 'ElggDiskFilestore');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_objects_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_objects_entity`
--

INSERT INTO `elgg_objects_entity` (`guid`, `title`, `description`) VALUES
(2, 'aalborg_theme', ''),
(3, 'blog', ''),
(4, 'bookmarks', ''),
(5, 'categories', ''),
(6, 'ckeditor', ''),
(7, 'custom_index', ''),
(8, 'dashboard', ''),
(9, 'developers', ''),
(10, 'diagnostics', ''),
(11, 'embed', ''),
(12, 'externalpages', ''),
(13, 'file', ''),
(14, 'garbagecollector', ''),
(15, 'groups', ''),
(16, 'htmlawed', ''),
(17, 'invitefriends', ''),
(18, 'legacy_urls', ''),
(19, 'likes', ''),
(20, 'logbrowser', ''),
(21, 'login_as', ''),
(22, 'logrotate', ''),
(23, 'members', ''),
(24, 'messageboard', ''),
(25, 'messages', ''),
(26, 'notifications', ''),
(27, 'pages', ''),
(28, 'profile', ''),
(29, 'reportedcontent', ''),
(30, 'search', ''),
(31, 'site_notifications', ''),
(32, 'tagcloud', ''),
(33, 'thewire', ''),
(34, 'twitter_api', ''),
(35, 'uservalidationbyemail', ''),
(36, 'web_services', ''),
(37, 'zaudio', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, '', ''),
(43, '', ''),
(44, '', ''),
(46, 'Pregunta Gestion de Proyectos', '<p>Buenos Dias,</p>\r\n\r\n<p>Alguien tiene algun&nbsp;</p>'),
(47, 'Pregunta Gestion de Proyectos', '<p>Buenos D&iacute;as,</p>\r\n\r\n<p>Alguien tiene alguna plantilla de cierre para el curso Gesti&oacute;n de Proyectos</p>'),
(49, 'Fisica Tomo I Alonso Finn - Modulo 3 Vectores', '<p>Modulo 3 alonso finn vectores</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_private_settings`
--

CREATE TABLE IF NOT EXISTS `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `elgg_private_settings`
--

INSERT INTO `elgg_private_settings` (`id`, `entity_guid`, `name`, `value`) VALUES
(1, 2, 'elgg:internal:priority', '36'),
(2, 3, 'elgg:internal:priority', '1'),
(3, 4, 'elgg:internal:priority', '2'),
(4, 5, 'elgg:internal:priority', '3'),
(5, 6, 'elgg:internal:priority', '4'),
(6, 7, 'elgg:internal:priority', '5'),
(7, 8, 'elgg:internal:priority', '6'),
(8, 9, 'elgg:internal:priority', '7'),
(9, 10, 'elgg:internal:priority', '8'),
(10, 11, 'elgg:internal:priority', '9'),
(11, 12, 'elgg:internal:priority', '10'),
(12, 13, 'elgg:internal:priority', '11'),
(13, 14, 'elgg:internal:priority', '12'),
(14, 15, 'elgg:internal:priority', '13'),
(15, 16, 'elgg:internal:priority', '14'),
(16, 17, 'elgg:internal:priority', '15'),
(17, 18, 'elgg:internal:priority', '16'),
(18, 19, 'elgg:internal:priority', '17'),
(19, 20, 'elgg:internal:priority', '18'),
(20, 21, 'elgg:internal:priority', '19'),
(21, 22, 'elgg:internal:priority', '20'),
(22, 23, 'elgg:internal:priority', '21'),
(23, 24, 'elgg:internal:priority', '22'),
(24, 25, 'elgg:internal:priority', '23'),
(25, 26, 'elgg:internal:priority', '24'),
(26, 27, 'elgg:internal:priority', '25'),
(27, 28, 'elgg:internal:priority', '26'),
(28, 29, 'elgg:internal:priority', '27'),
(29, 30, 'elgg:internal:priority', '28'),
(30, 31, 'elgg:internal:priority', '29'),
(31, 32, 'elgg:internal:priority', '30'),
(32, 33, 'elgg:internal:priority', '31'),
(33, 34, 'elgg:internal:priority', '32'),
(34, 35, 'elgg:internal:priority', '33'),
(35, 36, 'elgg:internal:priority', '34'),
(36, 37, 'elgg:internal:priority', '35'),
(37, 33, 'limit', '140'),
(38, 39, 'handler', 'control_panel'),
(39, 39, 'context', 'admin'),
(40, 39, 'column', '1'),
(41, 39, 'order', '0'),
(42, 40, 'handler', 'admin_welcome'),
(43, 40, 'context', 'admin'),
(44, 40, 'order', '10'),
(45, 40, 'column', '1'),
(46, 41, 'handler', 'online_users'),
(47, 41, 'context', 'admin'),
(48, 41, 'column', '2'),
(49, 41, 'order', '0'),
(50, 42, 'handler', 'new_users'),
(51, 42, 'context', 'admin'),
(52, 42, 'order', '10'),
(53, 42, 'column', '2'),
(54, 43, 'handler', 'content_stats'),
(55, 43, 'context', 'admin'),
(56, 43, 'order', '20'),
(57, 43, 'column', '2'),
(58, 44, 'handler', 'banned_users'),
(59, 44, 'context', 'admin'),
(60, 44, 'order', '-10'),
(61, 44, 'column', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_queue`
--

CREATE TABLE IF NOT EXISTS `elgg_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` mediumblob NOT NULL,
  `timestamp` int(11) NOT NULL,
  `worker` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `retrieve` (`timestamp`,`worker`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `elgg_queue`
--

INSERT INTO `elgg_queue` (`id`, `name`, `data`, `timestamp`, `worker`) VALUES
(1, 'notifications', 0x4f3a32343a22456c67675c4e6f74696669636174696f6e735c4576656e74223a353a7b733a393a22002a00616374696f6e223b733a373a227075626c697368223b733a31343a22002a006f626a6563745f74797065223b733a363a226f626a656374223b733a31373a22002a006f626a6563745f73756274797065223b733a343a22626c6f67223b733a31323a22002a006f626a6563745f6964223b693a34373b733a31333a22002a006163746f725f67756964223b693a34353b7d, 1437483237, NULL),
(2, 'notifications', 0x4f3a32343a22456c67675c4e6f74696669636174696f6e735c4576656e74223a353a7b733a393a22002a00616374696f6e223b733a363a22637265617465223b733a31343a22002a006f626a6563745f74797065223b733a363a226f626a656374223b733a31373a22002a006f626a6563745f73756274797065223b733a343a2266696c65223b733a31323a22002a006f626a6563745f6964223b693a34393b733a31333a22002a006163746f725f67756964223b693a34383b7d, 1437485181, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_river`
--

CREATE TABLE IF NOT EXISTS `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `target_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `target_guid` (`target_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `elgg_river`
--

INSERT INTO `elgg_river` (`id`, `type`, `subtype`, `action_type`, `access_id`, `view`, `subject_guid`, `object_guid`, `target_guid`, `annotation_id`, `posted`, `enabled`) VALUES
(2, 'user', '', 'update', 2, 'river/user/default/profileiconupdate', 38, 38, 0, 0, 1437482807, 'yes'),
(3, 'object', 'blog', 'create', 2, 'river/object/blog/create', 45, 47, 0, 0, 1437483237, 'yes'),
(4, 'object', 'file', 'create', 2, 'river/object/file/create', 48, 49, 0, 0, 1437485181, 'yes'),
(5, 'user', '', 'friend', 2, 'river/relationship/friend/create', 48, 45, 0, 0, 1437489258, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_sites_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_sites_entity`
--

INSERT INTO `elgg_sites_entity` (`guid`, `name`, `description`, `url`) VALUES
(1, 'RedAc', '', 'http://localhost/RedAc/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_system_log`
--

CREATE TABLE IF NOT EXISTS `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Volcado de datos para la tabla `elgg_system_log`
--

INSERT INTO `elgg_system_log` (`id`, `object_id`, `object_class`, `object_type`, `object_subtype`, `event`, `performed_by_guid`, `owner_guid`, `access_id`, `enabled`, `time_created`, `ip_address`) VALUES
(1, 2, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(2, 3, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(3, 4, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(4, 5, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(5, 6, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(6, 7, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(7, 8, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(8, 9, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(9, 10, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(10, 11, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(11, 12, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(12, 13, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(13, 14, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(14, 15, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(15, 16, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(16, 17, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(17, 18, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(18, 19, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(19, 20, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(20, 21, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(21, 22, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(22, 23, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(23, 24, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(24, 25, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(25, 26, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(26, 27, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(27, 28, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(28, 29, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(29, 30, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(30, 31, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(31, 32, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(32, 33, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(33, 34, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(34, 35, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(35, 36, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(36, 37, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1437235277, '::1'),
(37, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235277, '::1'),
(38, 8, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(39, 9, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(40, 10, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(41, 11, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(42, 12, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(43, 13, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(44, 14, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(45, 15, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(46, 16, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(47, 17, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(48, 18, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(49, 19, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(50, 20, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(51, 21, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(52, 22, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(53, 23, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1437235278, '::1'),
(54, 24, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 0, 0, 2, 'yes', 1437235299, '::1'),
(55, 38, 'ElggUser', 'user', '', 'create', 0, 0, 2, 'yes', 1437235299, '::1'),
(56, 2, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(57, 39, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(58, 40, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(59, 41, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(60, 42, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(61, 43, 'ElggWidget', 'object', 'widget', 'create', 0, 38, 2, 'yes', 1437235299, '::1'),
(62, 38, 'ElggUser', 'user', '', 'make_admin', 0, 0, 2, 'yes', 1437235299, '::1'),
(63, 3, 'ElggMetadata', 'metadata', 'validated', 'create', 0, 0, 2, 'yes', 1437235299, '::1'),
(64, 4, 'ElggMetadata', 'metadata', 'validated_method', 'create', 0, 0, 2, 'yes', 1437235299, '::1'),
(65, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437235299, '::1'),
(66, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437235299, '::1'),
(67, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437235299, '::1'),
(68, 44, 'ElggWidget', 'object', 'widget', 'create', 38, 38, 2, 'yes', 1437236762, '::1'),
(69, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1437237100, '::1'),
(70, 25, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 38, 0, 2, 'yes', 1437237141, '::1'),
(71, 21, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1437237190, '::1'),
(72, 3, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 38, 0, 2, 'yes', 1437237201, '::1'),
(73, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437238531, '::1'),
(74, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437238531, '::1'),
(75, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437238531, '::1'),
(76, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437358047, '::1'),
(77, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437358047, '::1'),
(78, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437358047, '::1'),
(79, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437364908, '::1'),
(80, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437364908, '::1'),
(81, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437364908, '::1'),
(82, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437481163, '::1'),
(83, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437481163, '::1'),
(84, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437481163, '::1'),
(85, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437481211, '::1'),
(86, 38, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437481211, '::1'),
(87, 38, 'ElggUser', 'user', '', 'logout:before', 38, 0, 2, 'yes', 1437481609, '::1'),
(88, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1437481609, '::1'),
(89, 38, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437481609, '::1'),
(90, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437481644, '::1'),
(91, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437481644, '::1'),
(92, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437481644, '::1'),
(93, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437482509, '::1'),
(94, 38, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437482509, '::1'),
(95, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437482555, '::1'),
(96, 38, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437482555, '::1'),
(97, 5, 'ElggMetadata', 'metadata', 'x1', 'create', 38, 38, 2, 'yes', 1437482749, '::1'),
(98, 6, 'ElggMetadata', 'metadata', 'x2', 'create', 38, 38, 2, 'yes', 1437482749, '::1'),
(99, 7, 'ElggMetadata', 'metadata', 'y1', 'create', 38, 38, 2, 'yes', 1437482749, '::1'),
(100, 8, 'ElggMetadata', 'metadata', 'y2', 'create', 38, 38, 2, 'yes', 1437482749, '::1'),
(101, 9, 'ElggMetadata', 'metadata', 'icontime', 'create', 38, 38, 2, 'yes', 1437482749, '::1'),
(102, 38, 'ElggUser', 'user', '', 'profileiconupdate', 38, 0, 2, 'yes', 1437482749, '::1'),
(103, 9, 'ElggMetadata', 'metadata', 'icontime', 'delete', 38, 38, 2, 'yes', 1437482807, '::1'),
(104, 10, 'ElggMetadata', 'metadata', 'icontime', 'create', 38, 38, 2, 'yes', 1437482807, '::1'),
(105, 5, 'ElggMetadata', 'metadata', 'x1', 'delete', 38, 38, 2, 'yes', 1437482807, '::1'),
(106, 11, 'ElggMetadata', 'metadata', 'x1', 'create', 38, 38, 2, 'yes', 1437482807, '::1'),
(107, 6, 'ElggMetadata', 'metadata', 'x2', 'delete', 38, 38, 2, 'yes', 1437482807, '::1'),
(108, 12, 'ElggMetadata', 'metadata', 'x2', 'create', 38, 38, 2, 'yes', 1437482807, '::1'),
(109, 7, 'ElggMetadata', 'metadata', 'y1', 'delete', 38, 38, 2, 'yes', 1437482807, '::1'),
(110, 13, 'ElggMetadata', 'metadata', 'y1', 'create', 38, 38, 2, 'yes', 1437482807, '::1'),
(111, 8, 'ElggMetadata', 'metadata', 'y2', 'delete', 38, 38, 2, 'yes', 1437482807, '::1'),
(112, 14, 'ElggMetadata', 'metadata', 'y2', 'create', 38, 38, 2, 'yes', 1437482807, '::1'),
(113, 26, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 38, 0, 2, 'yes', 1437482939, '::1'),
(114, 45, 'ElggUser', 'user', '', 'create', 38, 0, 2, 'yes', 1437482939, '::1'),
(115, 15, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 38, 45, 2, 'yes', 1437482939, '::1'),
(116, 45, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437482939, '::1'),
(117, 45, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437482939, '::1'),
(118, 16, 'ElggMetadata', 'metadata', 'admin_created', 'create', 38, 45, 2, 'yes', 1437482939, '::1'),
(119, 17, 'ElggMetadata', 'metadata', 'created_by_guid', 'create', 38, 45, 2, 'yes', 1437482939, '::1'),
(120, 38, 'ElggUser', 'user', '', 'logout:before', 38, 0, 2, 'yes', 1437482948, '::1'),
(121, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1437482948, '::1'),
(122, 38, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437482948, '::1'),
(123, 45, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437482961, '::1'),
(124, 45, 'ElggUser', 'user', '', 'login', 45, 0, 2, 'yes', 1437482961, '::1'),
(125, 45, 'ElggUser', 'user', '', 'login:after', 45, 0, 2, 'yes', 1437482961, '::1'),
(126, 18, 'ElggMetadata', 'metadata', 'status', 'create', 45, 45, 0, 'yes', 1437483192, '::1'),
(127, 19, 'ElggMetadata', 'metadata', 'excerpt', 'create', 45, 45, 0, 'yes', 1437483192, '::1'),
(128, 20, 'ElggMetadata', 'metadata', 'new_post', 'create', 45, 45, 0, 'yes', 1437483192, '::1'),
(129, 46, 'ElggBlog', 'object', 'blog', 'create', 45, 45, 0, 'yes', 1437483192, '::1'),
(130, 46, 'ElggBlog', 'object', 'blog', 'annotate', 45, 45, 0, 'yes', 1437483192, '::1'),
(131, 1, 'ElggAnnotation', 'annotation', 'blog_auto_save', 'create', 45, 45, 0, 'yes', 1437483192, '::1'),
(132, 21, 'ElggMetadata', 'metadata', 'status', 'create', 45, 45, 2, 'yes', 1437483237, '::1'),
(133, 22, 'ElggMetadata', 'metadata', 'comments_on', 'create', 45, 45, 2, 'yes', 1437483237, '::1'),
(134, 23, 'ElggMetadata', 'metadata', 'excerpt', 'create', 45, 45, 2, 'yes', 1437483237, '::1'),
(135, 24, 'ElggMetadata', 'metadata', 'tags', 'create', 45, 45, 2, 'yes', 1437483237, '::1'),
(136, 47, 'ElggBlog', 'object', 'blog', 'create', 45, 45, 2, 'yes', 1437483237, '::1'),
(137, 47, 'ElggBlog', 'object', 'blog', 'publish', 45, 45, 2, 'yes', 1437483237, '::1'),
(138, 45, 'ElggUser', 'user', '', 'logout:before', 45, 0, 2, 'yes', 1437483270, '::1'),
(139, 45, 'ElggUser', 'user', '', 'logout', 45, 0, 2, 'yes', 1437483270, '::1'),
(140, 45, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437483270, '::1'),
(141, 38, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437483297, '::1'),
(142, 38, 'ElggUser', 'user', '', 'login', 38, 0, 2, 'yes', 1437483297, '::1'),
(143, 38, 'ElggUser', 'user', '', 'login:after', 38, 0, 2, 'yes', 1437483297, '::1'),
(144, 27, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 38, 0, 2, 'yes', 1437483359, '::1'),
(145, 48, 'ElggUser', 'user', '', 'create', 38, 0, 2, 'yes', 1437483359, '::1'),
(146, 25, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 38, 48, 2, 'yes', 1437483359, '::1'),
(147, 48, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437483359, '::1'),
(148, 48, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437483359, '::1'),
(149, 26, 'ElggMetadata', 'metadata', 'admin_created', 'create', 38, 48, 2, 'yes', 1437483359, '::1'),
(150, 38, 'ElggUser', 'user', '', 'update', 38, 0, 2, 'yes', 1437483868, '::1'),
(151, 38, 'ElggUser', 'user', '', 'update:after', 38, 0, 2, 'yes', 1437483868, '::1'),
(152, 38, 'ElggUser', 'user', '', 'logout:before', 38, 0, 2, 'yes', 1437484888, '::1'),
(153, 38, 'ElggUser', 'user', '', 'logout', 38, 0, 2, 'yes', 1437484888, '::1'),
(154, 38, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437484888, '::1'),
(155, 45, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437484897, '::1'),
(156, 45, 'ElggUser', 'user', '', 'login', 45, 0, 2, 'yes', 1437484897, '::1'),
(157, 45, 'ElggUser', 'user', '', 'login:after', 45, 0, 2, 'yes', 1437484897, '::1'),
(158, 45, 'ElggUser', 'user', '', 'update', 45, 0, 2, 'yes', 1437484911, '::1'),
(159, 45, 'ElggUser', 'user', '', 'update:after', 45, 0, 2, 'yes', 1437484911, '::1'),
(160, 45, 'ElggUser', 'user', '', 'logout:before', 45, 0, 2, 'yes', 1437485109, '::1'),
(161, 45, 'ElggUser', 'user', '', 'logout', 45, 0, 2, 'yes', 1437485109, '::1'),
(162, 45, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437485109, '::1'),
(163, 48, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437485117, '::1'),
(164, 48, 'ElggUser', 'user', '', 'login', 48, 0, 2, 'yes', 1437485117, '::1'),
(165, 48, 'ElggUser', 'user', '', 'login:after', 48, 0, 2, 'yes', 1437485117, '::1'),
(166, 28, 'ElggMetadata', 'metadata', 'tags', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(167, 29, 'ElggMetadata', 'metadata', 'filename', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(168, 30, 'ElggMetadata', 'metadata', 'originalfilename', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(169, 31, 'ElggMetadata', 'metadata', 'mimetype', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(170, 32, 'ElggMetadata', 'metadata', 'simpletype', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(171, 49, 'FilePluginFile', 'object', 'file', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(172, 33, 'ElggMetadata', 'metadata', 'filestore::dir_root', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(173, 34, 'ElggMetadata', 'metadata', 'filestore::filestore', 'create', 48, 48, 2, 'yes', 1437485181, '::1'),
(174, 48, 'ElggUser', 'user', '', 'logout:before', 48, 0, 2, 'yes', 1437489184, '::1'),
(175, 48, 'ElggUser', 'user', '', 'logout', 48, 0, 2, 'yes', 1437489184, '::1'),
(176, 48, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437489184, '::1'),
(177, 48, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437489223, '::1'),
(178, 48, 'ElggUser', 'user', '', 'login', 48, 0, 2, 'yes', 1437489223, '::1'),
(179, 48, 'ElggUser', 'user', '', 'login:after', 48, 0, 2, 'yes', 1437489223, '::1'),
(180, 28, 'ElggRelationship', 'relationship', 'friend', 'create', 48, 0, 2, 'yes', 1437489258, '::1'),
(181, 48, 'ElggUser', 'user', '', 'logout:before', 48, 0, 2, 'yes', 1437489354, '::1'),
(182, 48, 'ElggUser', 'user', '', 'logout', 48, 0, 2, 'yes', 1437489354, '::1'),
(183, 48, 'ElggUser', 'user', '', 'logout:after', 0, 0, 2, 'yes', 1437489354, '::1'),
(184, 45, 'ElggUser', 'user', '', 'login:before', 0, 0, 2, 'yes', 1437530004, '::1'),
(185, 45, 'ElggUser', 'user', '', 'login', 45, 0, 2, 'yes', 1437530004, '::1'),
(186, 45, 'ElggUser', 'user', '', 'login:after', 45, 0, 2, 'yes', 1437530004, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_users_apisessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_users_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT 'Legacy password hashes',
  `salt` varchar(8) NOT NULL DEFAULT '' COMMENT 'Legacy password salts',
  `password_hash` varchar(255) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_users_entity`
--

INSERT INTO `elgg_users_entity` (`guid`, `name`, `username`, `password`, `salt`, `password_hash`, `email`, `language`, `banned`, `admin`, `last_action`, `prev_last_action`, `last_login`, `prev_last_login`) VALUES
(38, 'Administrador', 'Yerena', '', '', '$2y$10$ZovxqGD3CkOwQbl/oFWPaeu1K9.kQ7HEzN6P1V.pnbCQJnsPXjTRq', 'alejo.yerena@gmail.com', 'es', 'no', 'yes', 1437484888, 1437483872, 1437483297, 1437481644),
(45, 'David Montoya', 'David_Montoya', '', '', '$2y$10$at4P0Q6Qmmne0z7dFq0FWuN087EuRLs3x1WPCQTN4tvh5BbkXE9su', 'jdml645@gmail.com', 'es', 'no', 'no', 1437531638, 1437531638, 1437530004, 1437484897),
(48, 'Alejandro Yerena', 'alejo.yerena', '', '', '$2y$10$sTkTVr2qM944ofljVBWhsuK9OF/p9Ai7egG71HhqgkHZ6vHig1isK', 'alejo.yerena@hotmail.com', 'en', 'no', 'no', 1437489354, 1437489322, 1437489223, 1437485117);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_users_remember_me_cookies`
--

CREATE TABLE IF NOT EXISTS `elgg_users_remember_me_cookies` (
  `code` varchar(32) NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`code`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elgg_users_sessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `elgg_users_sessions`
--

INSERT INTO `elgg_users_sessions` (`session`, `ts`, `data`) VALUES
('6okj1p8cufbipnrudn286slnu4', 1437237785, 0x5f7366325f617474726962757465737c613a333a7b733a343a2267756964223b693a33383b733a333a226d7367223b613a303a7b7d733a31343a225f5f656c67675f73657373696f6e223b733a33323a226162666235616266323661333838353133646563623665633963363135313132223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373233373738353b733a313a2263223b693a313433373233353239393b733a313a226c223b733a313a2230223b7d),
('udhudf4fuj47ffuc59pcir1fg1', 1437238516, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226563633633383935383534356136363937646336366335343661616361313163223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373233383531363b733a313a2263223b693a313433373233373830373b733a313a226c223b733a313a2230223b7d),
('f53nb21v014hed9mssvocol145', 1437244417, 0x5f7366325f617474726962757465737c613a333a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226563633633383935383534356136363937646336366335343661616361313163223b733a343a2267756964223b693a33383b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373234343431373b733a313a2263223b693a313433373233373830373b733a313a226c223b733a313a2230223b7d),
('c9apreqb1qqu0jsib4uefm7k91', 1437358026, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226364643631333633373661646264323635626136633062613761386535306465223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373335383032363b733a313a2263223b693a313433373335383032343b733a313a226c223b733a313a2230223b7d),
('dkhgn3ejdhm6vob7tqk593pc43', 1437359058, 0x5f7366325f617474726962757465737c613a333a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226364643631333633373661646264323635626136633062613761386535306465223b733a343a2267756964223b693a33383b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373335393035383b733a313a2263223b693a313433373335383032343b733a313a226c223b733a313a2230223b7d),
('r3dvqv2cd8qj387en1a71ukk90', 1437359258, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226564363437613162353638343534346461653531333864356436323536643938223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373335393235383b733a313a2263223b693a313433373335393038353b733a313a226c223b733a313a2230223b7d),
('2bftsda3d9dga7eh8houmbbic7', 1437364900, 0x5f7366325f617474726962757465737c613a333a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223064616338646633306664373938393737633339353764353934333566636236223b733a31373a226c6173745f666f72776172645f66726f6d223b733a32383a22687474703a2f2f6c6f63616c686f73742f52656441632f61646d696e223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373336343930303b733a313a2263223b693a313433373335393237323b733a313a226c223b733a313a2230223b7d),
('l94ig9olotit25mdgcofkp0vl1', 1437365101, 0x5f7366325f617474726962757465737c613a333a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223064616338646633306664373938393737633339353764353934333566636236223b733a333a226d7367223b613a303a7b7d733a343a2267756964223b693a33383b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373336353130313b733a313a2263223b693a313433373335393237323b733a313a226c223b733a313a2230223b7d),
('tp88me7oh7gjpjq8mdb35aeom1', 1437365125, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223731636565326535616533373064646438343131343639613963343735323765223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373336353132343b733a313a2263223b693a313433373336353131353b733a313a226c223b733a313a2230223b7d),
('806agrdhilm35fmjmc8qit64p0', 1437445291, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226166626538666263316663373236323231343038333630353739313334666464223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373434353239313b733a313a2263223b693a313433373434353239313b733a313a226c223b733a313a2230223b7d),
('gsc6jd2pb3psc9htn8nedf3h46', 1437480400, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223539346633343839326634666164373962626464333936646264393762363437223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438303430303b733a313a2263223b693a313433373438303339373b733a313a226c223b733a313a2230223b7d),
('6vljic3l2pal87ni6pbg6g03q3', 1437531638, 0x5f7366325f617474726962757465737c613a343a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223736633762326337633937353165623235376430626437613865313935383931223b733a343a2267756964223b693a34353b733a333a226d7367223b613a303a7b7d733a31323a22737469636b795f666f726d73223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373533313633383b733a313a2263223b693a313433373532393831303b733a313a226c223b733a313a2230223b7d),
('jc054b5id598rq3bc2jvq1nqe5', 1437481627, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223062316239306630306438616538633330633563333836393563636630666136223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438313632373b733a313a2263223b693a313433373438313630393b733a313a226c223b733a313a2230223b7d),
('m2qdop76c25aooqqpqerub2ei6', 1437482948, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223865633235373764376434616265336332313635343861336530393065333962223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438323934383b733a313a2263223b693a313433373438323934383b733a313a226c223b733a313a2230223b7d),
('cgq1bcdmiuecv3gd4vkp9c7011', 1437483290, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a226235343236636132613637646263306562356138343835333437626639383736223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438333239303b733a313a2263223b693a313433373438333237303b733a313a226c223b733a313a2230223b7d),
('0q4ca1ubu0rub370em2no1d0b6', 1437484889, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223535333939373532343166653639316664373132343262393866376139313662223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438343838383b733a313a2263223b693a313433373438343838383b733a313a226c223b733a313a2230223b7d),
('fsenem582g1f4spalchin5it76', 1437485110, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223061613332653934663064653538666466353161303966333833346562616365223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438353130393b733a313a2263223b693a313433373438353130393b733a313a226c223b733a313a2230223b7d),
('p5bmj5dfq6jpufurpjps4jvr74', 1437489184, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223163306465316137346239326531353439616131373065363464366130653432223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438393138343b733a313a2263223b693a313433373438393138343b733a313a226c223b733a313a2230223b7d),
('c1pj8jq9o1r6v83jqddlddekj5', 1437489378, 0x5f7366325f617474726962757465737c613a323a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223161636538343039633164626464376632366337316263666238383230613764223b733a333a226d7367223b613a303a7b7d7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373438393337383b733a313a2263223b693a313433373438393335343b733a313a226c223b733a313a2230223b7d),
('p1r5qhccu5mkl1vdnh6ljruj80', 1437529995, 0x5f7366325f617474726962757465737c613a313a7b733a31343a225f5f656c67675f73657373696f6e223b733a33323a223736633762326337633937353165623235376430626437613865313935383931223b7d5f7366325f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313433373532393939353b733a313a2263223b693a313433373532393831303b733a313a226c223b733a313a2230223b7d);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
